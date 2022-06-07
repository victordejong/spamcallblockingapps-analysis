# Findings

- Does not work on API <= 28

## On disk

Has an offline database with around 20 000 entries.

## Network

Makes calls over the network, likely binary encoded. Observed URLs:

- `https://app.ayamote.com/api/v1/sea.php`
- `https://app.ayamote.com/api/v1/searep.php`
- `https://ct.ayamote.com/c_n/api/v1/cnwik.php`

However, due to content-type, key is visible:

Request URLEncoded form:
```
cc:          44
uid:         25eba4914c851913d122351889968f1d
tel_number:  K0S3Rzh4RHczPmM1NC==
app_version: 1.6.5
stamp:       9eae757ee95fc7bcf3d835e2b862ab98
device:      sdk_gphone_x86_64_arm64
default_cc:  1
platform:    android
```

Response:
```
ezL2hGG2gbMjQl41NEzmdHXvb263eaJmelM6JkLwInbygm2jgJ91bZ1fcpYxYnX1MjpkLmwjdpJtaULAIjKvMmG4bbRielM6JkLwInBzdXKjgK9zKmsiJkzmdInzdSJ8LmItKqV5dIYjbHHldWxkRmIjNFNmZYowZGBognKxfp9td5giPlDwIoTsfWWhf7RidaEiPkLmLDLwg2dkRmJUbZJyZ4jkRnHsfGRkiU==
```