# SpamCallBlockingApps-Analysis

This project contains all the work needed for the following research question:

- Discover how information about blocked Caller IDs is stored in the application (external calls over the Internet, applications files, databases). Propose the techniques to extract this information that can be later automated.

## Setup for static analysis

See here how: [applications/README.md](applications/README.md)

## Dynamic analysis

See here how: [dynamic-analysis/README.md](dynamic-analysis/README.md)

# Unwanted applications

- com.tmobile.services.nameid: carrier locked
- com.vladlee.easyblacklist: manual blacklist
- com.privacystar.android.spg: carrier locked
- com.asus.contacts: crashes on startup, no advanced blocklist
- gogolook.callgogolook2: Out of date does not function
- com.mrnumber.blocker: Paid

## Possible replacements

- truecaller: https://play.google.com/store/apps/details?id=com.truecaller
- shouldIanswer: https://play.google.com/store/apps/details?id=org.mistergroup.shouldianswer
- Stop met mij te bellen: https://play.google.com/store/apps/details?id=com.mglab.scm
- telGuarder: https://play.google.com/store/apps/details?id=com.telguarder
- Call Blocker: https://play.google.com/store/apps/details?id=com.unknownphone.callblocker
- Bel Control: https://play.google.com/store/apps/details?id=com.flexaspect.android.everycallcontrol