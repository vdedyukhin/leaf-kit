// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "leaf-kit",
    products: [
        .library(name: "LeafKit", targets: ["LeafKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.2.0"),
    ],
    targets: [
        .target(name: "LeafKit", dependencies: [
            .product(name: "NIO", package: "swift-nio"),
        ]),
        .testTarget(name: "LeafKitTests", dependencies: [
            .target(name: "LeafKit"),
        ]),
    ]
)
