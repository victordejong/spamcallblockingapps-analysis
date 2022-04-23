# Applications

## Setup for static analysis

### Requirements:

static:

- `apktool` Decompile APK. Use package manager to install.
- `dex2jar` Convert *.DEX files to readable *.JAR files. Use package manager to install.
- `jadx` -> Decompile JAR. Use package manager to install.

dynamic:

- The APK you want to analyse.

### Decompiling steps:

1. Create parent directory with the APK file in it.
2. Run `apktool d --no-src <apk name>`.
3. Run `dex2jar [APK DIRECTORY]/classes*.dex`
4. Run `jadx --deobf -d decompiled-source classes*.jar`

## TODO

Decompilation failed for:

- mrnumber
- webascender

## Sources

- https://medium.com/helpshift-engineering/reverse-engineer-your-favorite-android-app-863a797042a6