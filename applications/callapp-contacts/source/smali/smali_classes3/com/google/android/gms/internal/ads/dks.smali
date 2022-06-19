.class final Lcom/google/android/gms/internal/ads/dks;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a([BI)J
    .locals 2

    .line 1
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    int-to-long p0, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method

.method private static a([BII)J
    .locals 2

    .line 2
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/dks;->a([BI)J

    move-result-wide p0

    shr-long/2addr p0, p2

    const-wide/32 v0, 0x3ffffff

    and-long/2addr p0, v0

    return-wide p0
.end method

.method private static a([BJI)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int v1, p3, v0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 4
    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x8

    shr-long/2addr p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static a([B[B)[B
    .locals 52

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 14
    invoke-static {v0, v2, v2}, Lcom/google/android/gms/internal/ads/dks;->a([BII)J

    move-result-wide v3

    const-wide/32 v5, 0x3ffffff

    and-long/2addr v3, v5

    const/4 v7, 0x3

    const/4 v8, 0x2

    .line 15
    invoke-static {v0, v7, v8}, Lcom/google/android/gms/internal/ads/dks;->a([BII)J

    move-result-wide v9

    const-wide/32 v11, 0x3ffff03

    and-long/2addr v9, v11

    const/4 v11, 0x6

    const/4 v12, 0x4

    .line 16
    invoke-static {v0, v11, v12}, Lcom/google/android/gms/internal/ads/dks;->a([BII)J

    move-result-wide v13

    const-wide/32 v15, 0x3ffc0ff

    and-long/2addr v13, v15

    const/16 v15, 0x9

    .line 17
    invoke-static {v0, v15, v11}, Lcom/google/android/gms/internal/ads/dks;->a([BII)J

    move-result-wide v16

    const-wide/32 v18, 0x3f03fff

    and-long v16, v16, v18

    const/16 v5, 0xc

    const/16 v6, 0x8

    .line 18
    invoke-static {v0, v5, v6}, Lcom/google/android/gms/internal/ads/dks;->a([BII)J

    move-result-wide v20

    const-wide/32 v22, 0xfffff

    and-long v20, v20, v22

    const-wide/16 v22, 0x5

    mul-long v24, v9, v22

    mul-long v26, v13, v22

    mul-long v28, v16, v22

    mul-long v30, v20, v22

    const/16 v5, 0x11

    new-array v6, v5, [B

    const-wide/16 v32, 0x0

    move-wide/from16 v34, v32

    move-wide/from16 v36, v34

    move-wide/from16 v38, v36

    move-wide/from16 v40, v38

    const/4 v15, 0x0

    .line 24
    :goto_0
    array-length v11, v1

    const/16 v12, 0x10

    const/16 v42, 0x1a

    if-ge v15, v11, :cond_1

    .line 26
    array-length v11, v1

    sub-int/2addr v11, v15

    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 27
    invoke-static {v1, v15, v6, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v43, 0x1

    .line 28
    aput-byte v43, v6, v11

    if-eq v11, v12, :cond_0

    add-int/lit8 v11, v11, 0x1

    .line 30
    invoke-static {v6, v11, v5, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 31
    :cond_0
    invoke-static {v6, v2, v2}, Lcom/google/android/gms/internal/ads/dks;->a([BII)J

    move-result-wide v43

    add-long v40, v40, v43

    .line 32
    invoke-static {v6, v7, v8}, Lcom/google/android/gms/internal/ads/dks;->a([BII)J

    move-result-wide v43

    add-long v32, v32, v43

    const/4 v5, 0x6

    const/4 v11, 0x4

    .line 33
    invoke-static {v6, v5, v11}, Lcom/google/android/gms/internal/ads/dks;->a([BII)J

    move-result-wide v44

    add-long v34, v34, v44

    const/16 v11, 0x9

    .line 34
    invoke-static {v6, v11, v5}, Lcom/google/android/gms/internal/ads/dks;->a([BII)J

    move-result-wide v44

    add-long v36, v36, v44

    const/16 v5, 0x8

    const/16 v7, 0xc

    .line 35
    invoke-static {v6, v7, v5}, Lcom/google/android/gms/internal/ads/dks;->a([BII)J

    move-result-wide v44

    aget-byte v5, v6, v12

    const/16 v7, 0x18

    shl-int/2addr v5, v7

    int-to-long v11, v5

    or-long v11, v44, v11

    add-long v38, v38, v11

    mul-long v11, v40, v3

    mul-long v44, v32, v30

    add-long v11, v11, v44

    mul-long v44, v34, v28

    add-long v11, v11, v44

    mul-long v44, v36, v26

    add-long v11, v11, v44

    mul-long v44, v38, v24

    add-long v11, v11, v44

    mul-long v44, v40, v9

    mul-long v46, v32, v3

    add-long v44, v44, v46

    mul-long v46, v34, v30

    add-long v44, v44, v46

    mul-long v46, v36, v28

    add-long v44, v44, v46

    mul-long v46, v38, v26

    add-long v44, v44, v46

    mul-long v46, v40, v13

    mul-long v48, v32, v9

    add-long v46, v46, v48

    mul-long v48, v34, v3

    add-long v46, v46, v48

    mul-long v48, v36, v30

    add-long v46, v46, v48

    mul-long v48, v38, v28

    add-long v46, v46, v48

    mul-long v48, v40, v16

    mul-long v50, v32, v13

    add-long v48, v48, v50

    mul-long v50, v34, v9

    add-long v48, v48, v50

    mul-long v50, v36, v3

    add-long v48, v48, v50

    mul-long v50, v38, v30

    add-long v48, v48, v50

    mul-long v40, v40, v20

    mul-long v32, v32, v16

    add-long v40, v40, v32

    mul-long v34, v34, v13

    add-long v40, v40, v34

    mul-long v36, v36, v9

    add-long v40, v40, v36

    mul-long v38, v38, v3

    add-long v40, v40, v38

    shr-long v32, v11, v42

    const-wide/32 v18, 0x3ffffff

    and-long v11, v11, v18

    add-long v44, v44, v32

    shr-long v32, v44, v42

    and-long v34, v44, v18

    add-long v46, v46, v32

    shr-long v32, v46, v42

    and-long v36, v46, v18

    add-long v48, v48, v32

    shr-long v32, v48, v42

    and-long v38, v48, v18

    add-long v40, v40, v32

    shr-long v32, v40, v42

    and-long v40, v40, v18

    mul-long v32, v32, v22

    add-long v11, v11, v32

    shr-long v32, v11, v42

    and-long v11, v11, v18

    add-long v32, v34, v32

    add-int/lit8 v15, v15, 0x10

    move-wide/from16 v34, v36

    move-wide/from16 v36, v38

    move-wide/from16 v38, v40

    const/16 v5, 0x11

    const/4 v7, 0x3

    move-wide/from16 v40, v11

    const/4 v12, 0x4

    goto/16 :goto_0

    :cond_1
    const-wide/32 v18, 0x3ffffff

    shr-long v3, v32, v42

    and-long v5, v32, v18

    add-long v34, v34, v3

    shr-long v3, v34, v42

    and-long v7, v34, v18

    add-long v36, v36, v3

    shr-long v3, v36, v42

    and-long v9, v36, v18

    add-long v38, v38, v3

    shr-long v3, v38, v42

    and-long v13, v38, v18

    mul-long v3, v3, v22

    add-long v40, v40, v3

    shr-long v3, v40, v42

    and-long v15, v40, v18

    add-long/2addr v5, v3

    add-long v22, v15, v22

    shr-long v3, v22, v42

    and-long v20, v22, v18

    add-long/2addr v3, v5

    shr-long v22, v3, v42

    and-long v3, v3, v18

    add-long v22, v7, v22

    shr-long v24, v22, v42

    and-long v22, v22, v18

    add-long v24, v9, v24

    shr-long v26, v24, v42

    and-long v17, v24, v18

    add-long v26, v13, v26

    const-wide/32 v24, 0x4000000

    sub-long v26, v26, v24

    const/16 v1, 0x3f

    move-wide/from16 v24, v3

    shr-long v2, v26, v1

    and-long/2addr v15, v2

    and-long v4, v5, v2

    and-long v6, v7, v2

    and-long v8, v9, v2

    and-long/2addr v13, v2

    not-long v1, v2

    and-long v19, v20, v1

    or-long v15, v15, v19

    and-long v19, v24, v1

    or-long v3, v4, v19

    and-long v19, v22, v1

    or-long v5, v6, v19

    and-long v17, v17, v1

    or-long v7, v8, v17

    and-long v1, v26, v1

    or-long/2addr v1, v13

    shl-long v9, v3, v42

    or-long/2addr v9, v15

    const-wide v13, 0xffffffffL

    and-long/2addr v9, v13

    const/4 v15, 0x6

    shr-long/2addr v3, v15

    const/16 v15, 0x14

    shl-long v16, v5, v15

    or-long v3, v3, v16

    and-long/2addr v3, v13

    const/16 v16, 0xc

    shr-long v5, v5, v16

    const/16 v16, 0xe

    shl-long v16, v7, v16

    or-long v5, v5, v16

    and-long/2addr v5, v13

    const/16 v16, 0x12

    shr-long v7, v7, v16

    const/16 v16, 0x8

    shl-long v1, v1, v16

    or-long/2addr v1, v7

    and-long/2addr v1, v13

    .line 104
    invoke-static {v0, v12}, Lcom/google/android/gms/internal/ads/dks;->a([BI)J

    move-result-wide v7

    add-long/2addr v9, v7

    and-long v7, v9, v13

    .line 106
    invoke-static {v0, v15}, Lcom/google/android/gms/internal/ads/dks;->a([BI)J

    move-result-wide v15

    add-long/2addr v3, v15

    const/16 v15, 0x20

    shr-long/2addr v9, v15

    add-long/2addr v3, v9

    and-long v9, v3, v13

    const/16 v11, 0x18

    .line 108
    invoke-static {v0, v11}, Lcom/google/android/gms/internal/ads/dks;->a([BI)J

    move-result-wide v16

    add-long v5, v5, v16

    shr-long/2addr v3, v15

    add-long/2addr v5, v3

    and-long v3, v5, v13

    const/16 v11, 0x1c

    .line 110
    invoke-static {v0, v11}, Lcom/google/android/gms/internal/ads/dks;->a([BI)J

    move-result-wide v16

    add-long v1, v1, v16

    shr-long/2addr v5, v15

    add-long/2addr v1, v5

    and-long v0, v1, v13

    new-array v2, v12, [B

    const/4 v5, 0x0

    .line 113
    invoke-static {v2, v7, v8, v5}, Lcom/google/android/gms/internal/ads/dks;->a([BJI)V

    const/4 v5, 0x4

    .line 114
    invoke-static {v2, v9, v10, v5}, Lcom/google/android/gms/internal/ads/dks;->a([BJI)V

    const/16 v5, 0x8

    .line 115
    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/dks;->a([BJI)V

    const/16 v3, 0xc

    .line 116
    invoke-static {v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/dks;->a([BJI)V

    return-object v2
.end method
