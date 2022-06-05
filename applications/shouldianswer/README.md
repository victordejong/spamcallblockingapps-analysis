# Findings

- app1.log contains the following url: https://aapi.shouldianswer.net/srvapp/get-database/cached?_dbVer=1991, cached db?

## On disk

`siadb6` does not seem to contain an offline list of numbers.

`cached.gzip` seems to contain the offline data (12MB) the logs mention, but when extracted does not seem to have a data structure:
```bash
[victor@victor-laptop files]$ file cached
cached: data
```

## Network

No check over the network is made when an incoming call is made.