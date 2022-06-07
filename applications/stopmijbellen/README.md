# Findings

## On disk

`DBMain.db` contains all database entries for the entire app, including around 130 000 entries of offline numbers.

## Network

Database is downloaded on startup. Observed urls:

```
https://srv22.mglabapps.host/app2/app_device.php
https://srv22.mglabapps.host/app2/app_download.php
```

No network call when incoming. No cert pinning.