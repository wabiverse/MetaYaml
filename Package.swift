// swift-tools-version: 5.10
import PackageDescription

let package = Package(
  name: "MetaYaml",
  platforms: [
    .macOS(.v14),
    .visionOS(.v1),
    .iOS(.v17),
    .tvOS(.v17),
    .watchOS(.v10),
  ],
  products: [
    .library(
      name: "Yaml",
      type: .dynamic,
      targets: ["Yaml"]
    ),
  ],
  targets: [
    .target(
      name: "Yaml",
      dependencies: [],
      exclude: [],
      publicHeadersPath: "include",
      cxxSettings: [
        .define("_ALLOW_COMPILER_AND_STL_VERSION_MISMATCH", .when(platforms: [.windows])),
        .define("_ALLOW_KEYWORD_MACROS", to: "1", .when(platforms: [.windows])),
        .define("static_assert(_conditional, ...)", to: "", .when(platforms: [.windows])),
        .define("yaml_cpp_EXPORTS", to: "1")
      ]
    ),
  ],
  cLanguageStandard: .gnu17,
  cxxLanguageStandard: .cxx17
)
