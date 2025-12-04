// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ErmisFmp4Parser",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "ErmisFmp4Parser",
            targets: ["ErmisFmp4Parser"]
        ),
    ],
    targets: [
        .target(
            name: "ErmisFmp4Parser",
            dependencies: ["ErmisFmp4ParserFFI"],
            path: "Sources/ErmisFmp4Parser"
        ),
        .binaryTarget(
            name: "ErmisFmp4ParserFFI",
            path: "ErmisFmp4ParserFFI.xcframework"
        )
    ]
)
