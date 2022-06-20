# Research Project CSE3000

This repository links to the work of students for the Research project course of the CSE bachelor at TU Delft.

Please see their projects [here](https://cse3000-research-project.github.io/).


# SpamCallBlockingApps-Analysis

This project contains all the work needed for the following research question:

- Discover how information about blocked Caller IDs is stored in the application (external calls over the Internet, applications files, databases). Propose the techniques to extract this information that can be later automated.

## HOWTO: download APKs

Use this site, support multi arch: https://apkcombo.com/nl/apk-downloader

## Setup for static analysis

See here how: [applications/README.md](applications/README.md)

## Dynamic analysis

See here how: [dynamic-analysis/README.md](dynamic-analysis/README.md)

## Applications analysis structure

```bash
app-name/
├─ extracted-data/
│  ├─ database/
│  ├─ files/
│  ├─ network/
├─ com.app.name.apk
├─ README.md
├─ source/
│  ├─ jar/
│  ├─ java/
│  ├─ raw/
│  ├─ smali/
```
- `extracted-data/database/`: Databases extracted from disk
- `extracted-data/files/`: Files extracted from disk
- `extracted-data/network/`: Network capture data from MITMproxy. Usually several captures are made (startup, incoming call)
- `com.app.name.apk`: Raw app apk (installable)
- `README.md`: readme with app specific findings
- `source/jar/`: Jar files obtained from Dex2Jar
- `source/java/`: Decompiled Java files from Jadx
- `source/raw/`: Raw extracted APK obtained from running `apktool d --no-src`
- `source/smali/`: Smali files obtained from running `apktool d`

# Unwanted applications

- com.tmobile.services.nameid: carrier locked
- com.vladlee.easyblacklist: manual blacklist
- com.privacystar.android.spg: carrier locked
- com.asus.contacts: crashes on startup, no advanced blocklist
- gogolook.callgogolook2: Out of date does not function
- com.mrnumber.blocker: Paid
- netqin-mm: manual blacklist

## Replacements

- truecaller: https://play.google.com/store/apps/details?id=com.truecaller
- shouldIanswer: https://play.google.com/store/apps/details?id=org.mistergroup.shouldianswer
- Stop met mij te bellen: https://play.google.com/store/apps/details?id=com.mglab.scm
- telGuarder: https://play.google.com/store/apps/details?id=com.telguarder
- Call Blocker: https://play.google.com/store/apps/details?id=com.unknownphone.callblocker
- Bel Control: https://play.google.com/store/apps/details?id=com.flexaspect.android.everycallcontrol
- Showcaller: Caller ID & Block: https://play.google.com/store/apps/details?id=com.allinone.callerid
