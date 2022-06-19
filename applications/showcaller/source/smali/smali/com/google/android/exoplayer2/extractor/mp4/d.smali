.class final Lcom/google/android/exoplayer2/extractor/mp4/d;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/d$e;,
        Lcom/google/android/exoplayer2/extractor/mp4/d$d;,
        Lcom/google/android/exoplayer2/extractor/mp4/d$b;,
        Lcom/google/android/exoplayer2/extractor/mp4/d$c;,
        Lcom/google/android/exoplayer2/extractor/mp4/d$f;,
        Lcom/google/android/exoplayer2/extractor/mp4/d$a;
    }
.end annotation


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "OpusHead"

    .line 1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/h0;->R(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/d;->a:[B

    return-void
.end method

.method private static a([JJJJ)Z
    .locals 7

    .line 1
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 2
    invoke-static {v2, v3, v0}, Lcom/google/android/exoplayer2/util/h0;->n(III)I

    move-result v4

    .line 3
    array-length v5, p0

    sub-int/2addr v5, v2

    .line 4
    invoke-static {v5, v3, v0}, Lcom/google/android/exoplayer2/util/h0;->n(III)I

    move-result v0

    .line 5
    aget-wide v5, p0, v3

    cmp-long v2, v5, p3

    if-gtz v2, :cond_0

    aget-wide v4, p0, v4

    cmp-long v2, p3, v4

    if-gez v2, :cond_0

    aget-wide p3, p0, v0

    cmp-long p0, p3, p5

    if-gez p0, :cond_0

    cmp-long p0, p5, p1

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static b(Lcom/google/android/exoplayer2/util/v;II)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->c()I

    move-result v0

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "childAtomSize should be positive"

    .line 4
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/e;->b(ZLjava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v2

    const v3, 0x65736473

    if-ne v2, v3, :cond_1

    return v0

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private static c(I)I
    .locals 1

    const v0, 0x736f756e

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const v0, 0x76696465

    if-ne p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const v0, 0x74657874

    if-eq p0, v0, :cond_4

    const v0, 0x7362746c

    if-eq p0, v0, :cond_4

    const v0, 0x73756274

    if-eq p0, v0, :cond_4

    const v0, 0x636c6370

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const v0, 0x6d657461

    if-ne p0, v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x3

    return p0
.end method

.method private static d(Lcom/google/android/exoplayer2/util/v;IIIILjava/lang/String;ZLcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/d$c;I)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v14, p5

    move-object/from16 v3, p7

    move-object/from16 v15, p8

    add-int/lit8 v4, v1, 0x8

    const/16 v5, 0x8

    add-int/2addr v4, v5

    .line 1
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    const/4 v4, 0x6

    const/4 v13, 0x0

    if-eqz p6, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/v;->F()I

    move-result v5

    .line 3
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x10

    const/4 v12, 0x2

    const/4 v11, 0x1

    if-eqz v5, :cond_3

    if-ne v5, v11, :cond_1

    goto :goto_1

    :cond_1
    if-ne v5, v12, :cond_2

    .line 5
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/v;->i()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v5, v4

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/v;->D()I

    move-result v4

    const/16 v6, 0x14

    .line 8
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    goto :goto_2

    :cond_2
    return-void

    .line 9
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/v;->F()I

    move-result v7

    .line 10
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/v;->A()I

    move-result v4

    if-ne v5, v11, :cond_4

    .line 12
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    :cond_4
    move v5, v4

    move v4, v7

    .line 13
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/v;->c()I

    move-result v6

    const v7, 0x656e6361

    const/16 v16, 0x0

    move/from16 v8, p1

    if-ne v8, v7, :cond_7

    .line 14
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/d;->p(Lcom/google/android/exoplayer2/util/v;II)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 15
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v3, :cond_5

    move-object/from16 v3, v16

    goto :goto_3

    .line 16
    :cond_5
    iget-object v9, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/exoplayer2/extractor/mp4/m;

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/m;->b:Ljava/lang/String;

    .line 17
    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/drm/DrmInitData;->c(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v3

    .line 18
    :goto_3
    iget-object v9, v15, Lcom/google/android/exoplayer2/extractor/mp4/d$c;->a:[Lcom/google/android/exoplayer2/extractor/mp4/m;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/exoplayer2/extractor/mp4/m;

    aput-object v7, v9, p9

    .line 19
    :cond_6
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    :cond_7
    move-object v10, v3

    const v3, 0x61632d33

    const v9, 0x616c6163

    const-string v7, "audio/raw"

    const/4 v12, -0x1

    if-ne v8, v3, :cond_8

    const-string v7, "audio/ac3"

    :goto_4
    const/16 v18, -0x1

    goto/16 :goto_7

    :cond_8
    const v3, 0x65632d33

    if-ne v8, v3, :cond_9

    const-string v7, "audio/eac3"

    goto :goto_4

    :cond_9
    const v3, 0x61632d34

    if-ne v8, v3, :cond_a

    const-string v7, "audio/ac4"

    goto :goto_4

    :cond_a
    const v3, 0x64747363

    if-ne v8, v3, :cond_b

    const-string v7, "audio/vnd.dts"

    goto :goto_4

    :cond_b
    const v3, 0x64747368

    if-eq v8, v3, :cond_19

    const v3, 0x6474736c

    if-ne v8, v3, :cond_c

    goto/16 :goto_6

    :cond_c
    const v3, 0x64747365

    if-ne v8, v3, :cond_d

    const-string v7, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_4

    :cond_d
    const v3, 0x73616d72

    if-ne v8, v3, :cond_e

    const-string v7, "audio/3gpp"

    goto :goto_4

    :cond_e
    const v3, 0x73617762

    if-ne v8, v3, :cond_f

    const-string v7, "audio/amr-wb"

    goto :goto_4

    :cond_f
    const v3, 0x6c70636d

    if-eq v8, v3, :cond_18

    const v3, 0x736f7774

    if-ne v8, v3, :cond_10

    goto :goto_5

    :cond_10
    const v3, 0x74776f73

    if-ne v8, v3, :cond_11

    const/high16 v3, 0x10000000

    const/high16 v18, 0x10000000

    goto :goto_7

    :cond_11
    const v3, 0x2e6d7033

    if-ne v8, v3, :cond_12

    const-string v7, "audio/mpeg"

    goto :goto_4

    :cond_12
    if-ne v8, v9, :cond_13

    const-string v7, "audio/alac"

    goto :goto_4

    :cond_13
    const v3, 0x616c6177

    if-ne v8, v3, :cond_14

    const-string v7, "audio/g711-alaw"

    goto :goto_4

    :cond_14
    const v3, 0x756c6177

    if-ne v8, v3, :cond_15

    const-string v7, "audio/g711-mlaw"

    goto :goto_4

    :cond_15
    const v3, 0x4f707573

    if-ne v8, v3, :cond_16

    const-string v7, "audio/opus"

    goto :goto_4

    :cond_16
    const v3, 0x664c6143

    if-ne v8, v3, :cond_17

    const-string v7, "audio/flac"

    goto/16 :goto_4

    :cond_17
    move-object/from16 v7, v16

    goto/16 :goto_4

    :cond_18
    :goto_5
    const/16 v18, 0x2

    goto :goto_7

    :cond_19
    :goto_6
    const-string v7, "audio/vnd.dts.hd"

    goto/16 :goto_4

    :goto_7
    move/from16 v20, v4

    move/from16 v21, v5

    move v8, v6

    move-object/from16 v19, v7

    move-object/from16 v22, v16

    :goto_8
    sub-int v3, v8, v1

    if-ge v3, v2, :cond_27

    .line 20
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v7

    if-lez v7, :cond_1a

    const/4 v3, 0x1

    goto :goto_9

    :cond_1a
    const/4 v3, 0x0

    :goto_9
    const-string v4, "childAtomSize should be positive"

    .line 22
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/e;->b(ZLjava/lang/Object;)V

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v3

    const v4, 0x65736473

    if-eq v3, v4, :cond_23

    if-eqz p6, :cond_1b

    const v5, 0x77617665

    if-ne v3, v5, :cond_1b

    goto/16 :goto_d

    :cond_1b
    const v4, 0x64616333

    if-ne v3, v4, :cond_1c

    add-int/lit8 v3, v8, 0x8

    .line 24
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 25
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v14, v10}, Lcom/google/android/exoplayer2/audio/g;->c(Lcom/google/android/exoplayer2/util/v;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iput-object v3, v15, Lcom/google/android/exoplayer2/extractor/mp4/d$c;->b:Lcom/google/android/exoplayer2/Format;

    :goto_a
    move v5, v7

    move v6, v8

    move-object/from16 v23, v10

    const/4 v1, 0x0

    const v7, 0x616c6163

    const/16 v17, 0x2

    const/16 v24, 0x1

    goto/16 :goto_c

    :cond_1c
    const v4, 0x64656333

    if-ne v3, v4, :cond_1d

    add-int/lit8 v3, v8, 0x8

    .line 26
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 27
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v14, v10}, Lcom/google/android/exoplayer2/audio/g;->g(Lcom/google/android/exoplayer2/util/v;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iput-object v3, v15, Lcom/google/android/exoplayer2/extractor/mp4/d$c;->b:Lcom/google/android/exoplayer2/Format;

    goto :goto_a

    :cond_1d
    const v4, 0x64616334

    if-ne v3, v4, :cond_1e

    add-int/lit8 v3, v8, 0x8

    .line 28
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 29
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v14, v10}, Lcom/google/android/exoplayer2/audio/h;->b(Lcom/google/android/exoplayer2/util/v;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iput-object v3, v15, Lcom/google/android/exoplayer2/extractor/mp4/d$c;->b:Lcom/google/android/exoplayer2/Format;

    goto :goto_a

    :cond_1e
    const v4, 0x64647473

    if-ne v3, v4, :cond_1f

    .line 30
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/16 v23, -0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v4, v19

    move/from16 v26, v7

    move/from16 v7, v23

    move/from16 v27, v8

    move/from16 v8, v20

    move/from16 v9, v21

    move-object/from16 v23, v10

    move-object/from16 v10, v24

    const/16 v24, 0x1

    move-object/from16 v11, v23

    const/16 v17, 0x2

    move/from16 v12, v25

    const/4 v1, 0x0

    move-object/from16 v13, p5

    invoke-static/range {v3 .. v13}, Lcom/google/android/exoplayer2/Format;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iput-object v3, v15, Lcom/google/android/exoplayer2/extractor/mp4/d$c;->b:Lcom/google/android/exoplayer2/Format;

    move/from16 v5, v26

    move/from16 v6, v27

    const v7, 0x616c6163

    goto/16 :goto_c

    :cond_1f
    move/from16 v26, v7

    move/from16 v27, v8

    move-object/from16 v23, v10

    const/4 v1, 0x0

    const/16 v17, 0x2

    const/16 v24, 0x1

    const v4, 0x644f7073

    if-ne v3, v4, :cond_20

    move/from16 v5, v26

    add-int/lit8 v7, v5, -0x8

    .line 31
    sget-object v3, Lcom/google/android/exoplayer2/extractor/mp4/d;->a:[B

    array-length v4, v3

    add-int/2addr v4, v7

    new-array v4, v4, [B

    .line 32
    array-length v6, v3

    invoke-static {v3, v1, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v6, v27

    add-int/lit8 v8, v6, 0x8

    .line 33
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 34
    array-length v3, v3

    invoke-virtual {v0, v4, v3, v7}, Lcom/google/android/exoplayer2/util/v;->h([BII)V

    move-object/from16 v22, v4

    :goto_b
    const/4 v3, -0x1

    const v7, 0x616c6163

    goto/16 :goto_f

    :cond_20
    move/from16 v5, v26

    move/from16 v6, v27

    const v4, 0x64664c61

    if-ne v3, v4, :cond_21

    add-int/lit8 v7, v5, -0xc

    add-int/lit8 v3, v7, 0x4

    .line 35
    new-array v3, v3, [B

    const/16 v4, 0x66

    .line 36
    aput-byte v4, v3, v1

    const/16 v4, 0x4c

    .line 37
    aput-byte v4, v3, v24

    const/16 v4, 0x61

    .line 38
    aput-byte v4, v3, v17

    const/4 v4, 0x3

    const/16 v8, 0x43

    .line 39
    aput-byte v8, v3, v4

    add-int/lit8 v8, v6, 0xc

    .line 40
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    const/4 v4, 0x4

    .line 41
    invoke-virtual {v0, v3, v4, v7}, Lcom/google/android/exoplayer2/util/v;->h([BII)V

    move-object/from16 v22, v3

    goto :goto_b

    :cond_21
    const v7, 0x616c6163

    if-ne v3, v7, :cond_22

    add-int/lit8 v3, v5, -0xc

    .line 42
    new-array v4, v3, [B

    add-int/lit8 v8, v6, 0xc

    .line 43
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 44
    invoke-virtual {v0, v4, v1, v3}, Lcom/google/android/exoplayer2/util/v;->h([BII)V

    .line 45
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/g;->h([B)Landroid/util/Pair;

    move-result-object v3

    .line 46
    iget-object v8, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 47
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v22, v4

    :cond_22
    :goto_c
    const/4 v3, -0x1

    goto :goto_f

    :cond_23
    :goto_d
    move v5, v7

    move v6, v8

    move-object/from16 v23, v10

    const/4 v1, 0x0

    const v7, 0x616c6163

    const/16 v17, 0x2

    const/16 v24, 0x1

    if-ne v3, v4, :cond_24

    move v8, v6

    goto :goto_e

    .line 48
    :cond_24
    invoke-static {v0, v6, v5}, Lcom/google/android/exoplayer2/extractor/mp4/d;->b(Lcom/google/android/exoplayer2/util/v;II)I

    move-result v8

    :goto_e
    const/4 v3, -0x1

    if-eq v8, v3, :cond_26

    .line 49
    invoke-static {v0, v8}, Lcom/google/android/exoplayer2/extractor/mp4/d;->g(Lcom/google/android/exoplayer2/util/v;I)Landroid/util/Pair;

    move-result-object v4

    .line 50
    iget-object v8, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 51
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v22, v4

    check-cast v22, [B

    const-string v4, "audio/mp4a-latm"

    .line 52
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 53
    invoke-static/range {v22 .. v22}, Lcom/google/android/exoplayer2/util/g;->g([B)Landroid/util/Pair;

    move-result-object v4

    .line 54
    iget-object v9, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 55
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v20

    :cond_25
    move-object/from16 v19, v8

    :cond_26
    :goto_f
    add-int v8, v6, v5

    move/from16 v1, p2

    move-object/from16 v10, v23

    const v9, 0x616c6163

    const/4 v11, 0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    goto/16 :goto_8

    :cond_27
    move-object/from16 v23, v10

    .line 56
    iget-object v0, v15, Lcom/google/android/exoplayer2/extractor/mp4/d$c;->b:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_29

    if-eqz v19, :cond_29

    .line 57
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    if-nez v22, :cond_28

    move-object/from16 v8, v16

    goto :goto_10

    .line 58
    :cond_28
    invoke-static/range {v22 .. v22}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v8, v1

    :goto_10
    const/4 v10, 0x0

    move-object/from16 v1, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v18

    move-object/from16 v9, v23

    move-object/from16 v11, p5

    .line 59
    invoke-static/range {v0 .. v11}, Lcom/google/android/exoplayer2/Format;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/exoplayer2/extractor/mp4/d$c;->b:Lcom/google/android/exoplayer2/Format;

    :cond_29
    return-void
.end method

.method static e(Lcom/google/android/exoplayer2/util/v;II)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/v;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/mp4/m;",
            ">;"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x8

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move-object v6, v4

    const/4 v5, -0x1

    const/4 v7, 0x0

    :goto_0
    sub-int v8, v0, p1

    if-ge v8, p2, :cond_3

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v8

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v9

    const v10, 0x66726d61

    if-ne v9, v10, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    :cond_0
    const v10, 0x7363686d

    if-ne v9, v10, :cond_1

    const/4 v4, 0x4

    .line 5
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 6
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/v;->w(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const v10, 0x73636869

    if-ne v9, v10, :cond_2

    move v5, v0

    move v7, v8

    :cond_2
    :goto_1
    add-int/2addr v0, v8

    goto :goto_0

    :cond_3
    const-string p1, "cenc"

    .line 7
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cbc1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cens"

    .line 8
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cbcs"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    return-object v2

    :cond_5
    :goto_2
    const/4 p1, 0x1

    if-eqz v6, :cond_6

    const/4 p2, 0x1

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    :goto_3
    const-string v0, "frma atom is mandatory"

    .line 9
    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/util/e;->b(ZLjava/lang/Object;)V

    if-eq v5, v1, :cond_7

    const/4 p2, 0x1

    goto :goto_4

    :cond_7
    const/4 p2, 0x0

    :goto_4
    const-string v0, "schi atom is mandatory"

    .line 10
    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/util/e;->b(ZLjava/lang/Object;)V

    .line 11
    invoke-static {p0, v5, v7, v4}, Lcom/google/android/exoplayer2/extractor/mp4/d;->q(Lcom/google/android/exoplayer2/util/v;IILjava/lang/String;)Lcom/google/android/exoplayer2/extractor/mp4/m;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 v3, 0x1

    :cond_8
    const-string p1, "tenc atom is mandatory"

    .line 12
    invoke-static {v3, p1}, Lcom/google/android/exoplayer2/util/e;->b(ZLjava/lang/Object;)V

    .line 13
    invoke-static {v6, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static f(Lcom/google/android/exoplayer2/extractor/mp4/c$a;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/mp4/c$a;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    if-eqz p0, :cond_5

    const v0, 0x656c7374

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/c$b;->b:Lcom/google/android/exoplayer2/util/v;

    const/16 v0, 0x8

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v0

    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/c;->c(I)I

    move-result v0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->D()I

    move-result v1

    .line 7
    new-array v2, v1, [J

    .line 8
    new-array v3, v1, [J

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->E()J

    move-result-wide v6

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->B()J

    move-result-wide v6

    :goto_1
    aput-wide v6, v2, v4

    if-ne v0, v5, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->s()J

    move-result-wide v6

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v6

    int-to-long v6, v6

    :goto_2
    aput-wide v6, v3, v4

    .line 11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->v()S

    move-result v6

    if-ne v6, v5, :cond_3

    const/4 v5, 0x2

    .line 12
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported media rate."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_4
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_3
    const/4 p0, 0x0

    .line 15
    invoke-static {p0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static g(Lcom/google/android/exoplayer2/util/v;I)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/v;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x4

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 3
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/d;->h(Lcom/google/android/exoplayer2/util/v;)I

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->z()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->F()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 10
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/d;->h(Lcom/google/android/exoplayer2/util/v;)I

    .line 11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->z()I

    move-result v0

    .line 12
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/r;->f(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/mpeg"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "audio/vnd.dts"

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "audio/vnd.dts.hd"

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xc

    .line 16
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 18
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/d;->h(Lcom/google/android/exoplayer2/util/v;)I

    move-result p1

    .line 19
    new-array v1, p1, [B

    const/4 v2, 0x0

    .line 20
    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/exoplayer2/util/v;->h([BII)V

    .line 21
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 22
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static h(Lcom/google/android/exoplayer2/util/v;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->z()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->z()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static i(Lcom/google/android/exoplayer2/util/v;)I
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result p0

    return p0
.end method

.method private static j(Lcom/google/android/exoplayer2/util/v;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->c()I

    move-result v1

    if-ge v1, p1, :cond_1

    .line 4
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/h;->d(Lcom/google/android/exoplayer2/util/v;)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :goto_1
    return-object p0
.end method

.method private static k(Lcom/google/android/exoplayer2/util/v;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/v;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v1

    .line 3
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/c;->c(I)I

    move-result v1

    if-nez v1, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    .line 4
    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->B()J

    move-result-wide v2

    if-nez v1, :cond_1

    const/4 v0, 0x4

    .line 6
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->F()I

    move-result p0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0xa

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 p0, p0, 0x1f

    add-int/lit8 p0, p0, 0x60

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static l(Lcom/google/android/exoplayer2/extractor/mp4/c$a;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 10

    const v0, 0x68646c72    # 4.3148E24f

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    move-result-object v0

    const v1, 0x6b657973

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    move-result-object v1

    const v2, 0x696c7374

    .line 3
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    if-eqz p0, :cond_6

    .line 4
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/c$b;->b:Lcom/google/android/exoplayer2/util/v;

    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/d;->i(Lcom/google/android/exoplayer2/util/v;)I

    move-result v0

    const v3, 0x6d647461

    if-eq v0, v3, :cond_0

    goto/16 :goto_3

    .line 6
    :cond_0
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/c$b;->b:Lcom/google/android/exoplayer2/util/v;

    const/16 v1, 0xc

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v1

    .line 9
    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x8

    if-ge v4, v1, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v6

    const/4 v7, 0x4

    .line 11
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    sub-int/2addr v6, v5

    .line 12
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/v;->w(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/c$b;->b:Lcom/google/android/exoplayer2/util/v;

    .line 14
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->a()I

    move-result v4

    if-le v4, v5, :cond_4

    .line 17
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->c()I

    move-result v4

    .line 18
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v6

    .line 19
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_2

    if-ge v7, v1, :cond_2

    .line 20
    aget-object v7, v3, v7

    add-int v8, v4, v6

    .line 21
    invoke-static {p0, v8, v7}, Lcom/google/android/exoplayer2/extractor/mp4/h;->g(Lcom/google/android/exoplayer2/util/v;ILjava/lang/String;)Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 22
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 23
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipped metadata with unknown key index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AtomParsers"

    invoke-static {v8, v7}, Lcom/google/android/exoplayer2/util/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    add-int/2addr v4, v6

    .line 24
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    goto :goto_1

    .line 25
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    new-instance v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :cond_6
    :goto_3
    return-object v2
.end method

.method private static m(Lcom/google/android/exoplayer2/util/v;)J
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v1

    .line 3
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/c;->c(I)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    .line 4
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->B()J

    move-result-wide v0

    return-wide v0
.end method

.method private static n(Lcom/google/android/exoplayer2/util/v;I)F
    .locals 0

    add-int/lit8 p1, p1, 0x8

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->D()I

    move-result p1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->D()I

    move-result p0

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method private static o(Lcom/google/android/exoplayer2/util/v;II)[B
    .locals 4

    add-int/lit8 v0, p1, 0x8

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_1

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v2

    const v3, 0x70726f6a

    if-ne v2, v3, :cond_0

    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/v;->a:[B

    add-int/2addr v1, v0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static p(Lcom/google/android/exoplayer2/util/v;II)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/v;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/mp4/m;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->c()I

    move-result v0

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "childAtomSize should be positive"

    .line 4
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/e;->b(ZLjava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v2

    const v3, 0x73696e66

    if-ne v2, v3, :cond_1

    .line 6
    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/d;->e(Lcom/google/android/exoplayer2/util/v;II)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static q(Lcom/google/android/exoplayer2/util/v;IILjava/lang/String;)Lcom/google/android/exoplayer2/extractor/mp4/m;
    .locals 11

    add-int/lit8 v0, p1, 0x8

    :goto_0
    sub-int v1, v0, p1

    const/4 v2, 0x0

    if-ge v1, p2, :cond_4

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v3

    const v4, 0x74656e63

    if-ne v3, v4, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result p1

    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/c;->c(I)I

    move-result p1

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->z()I

    move-result p1

    and-int/lit16 v1, p1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 p1, p1, 0xf

    move v9, p1

    move v8, v1

    .line 9
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->z()I

    move-result p1

    if-ne p1, p2, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 10
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->z()I

    move-result v6

    const/16 p1, 0x10

    new-array v7, p1, [B

    .line 11
    invoke-virtual {p0, v7, v0, p1}, Lcom/google/android/exoplayer2/util/v;->h([BII)V

    if-eqz v4, :cond_2

    if-nez v6, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->z()I

    move-result p1

    .line 13
    new-array v2, p1, [B

    .line 14
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/exoplayer2/util/v;->h([BII)V

    :cond_2
    move-object v10, v2

    .line 15
    new-instance p0, Lcom/google/android/exoplayer2/extractor/mp4/m;

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/extractor/mp4/m;-><init>(ZLjava/lang/String;I[BII[B)V

    return-object p0

    :cond_3
    add-int/2addr v0, v1

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method public static r(Lcom/google/android/exoplayer2/extractor/mp4/l;Lcom/google/android/exoplayer2/extractor/mp4/c$a;Lcom/google/android/exoplayer2/c1/p;)Lcom/google/android/exoplayer2/extractor/mp4/o;
    .locals 36

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const v3, 0x7374737a

    .line 1
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2
    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/d$d;

    invoke-direct {v4, v3}, Lcom/google/android/exoplayer2/extractor/mp4/d$d;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/c$b;)V

    goto :goto_0

    :cond_0
    const v3, 0x73747a32

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 4
    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/d$e;

    invoke-direct {v4, v3}, Lcom/google/android/exoplayer2/extractor/mp4/d$e;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/c$b;)V

    .line 5
    :goto_0
    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/mp4/d$b;->b()I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 6
    new-instance v9, Lcom/google/android/exoplayer2/extractor/mp4/o;

    new-array v2, v5, [J

    new-array v3, v5, [I

    const/4 v4, 0x0

    new-array v6, v5, [J

    new-array v7, v5, [I

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v6

    move-object v6, v7

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/o;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/l;[J[II[J[IJ)V

    return-object v9

    :cond_1
    const v6, 0x7374636f

    .line 7
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_2

    const v6, 0x636f3634

    .line 8
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    move-result-object v6

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 9
    :goto_1
    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/c$b;->b:Lcom/google/android/exoplayer2/util/v;

    const v9, 0x73747363

    .line 10
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/c$b;->b:Lcom/google/android/exoplayer2/util/v;

    const v10, 0x73747473

    .line 11
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    move-result-object v10

    iget-object v10, v10, Lcom/google/android/exoplayer2/extractor/mp4/c$b;->b:Lcom/google/android/exoplayer2/util/v;

    const v11, 0x73747373

    .line 12
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_3

    .line 13
    iget-object v11, v11, Lcom/google/android/exoplayer2/extractor/mp4/c$b;->b:Lcom/google/android/exoplayer2/util/v;

    goto :goto_2

    :cond_3
    move-object v11, v12

    :goto_2
    const v13, 0x63747473

    .line 14
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/c$b;->b:Lcom/google/android/exoplayer2/util/v;

    goto :goto_3

    :cond_4
    move-object v0, v12

    .line 16
    :goto_3
    new-instance v13, Lcom/google/android/exoplayer2/extractor/mp4/d$a;

    invoke-direct {v13, v9, v6, v8}, Lcom/google/android/exoplayer2/extractor/mp4/d$a;-><init>(Lcom/google/android/exoplayer2/util/v;Lcom/google/android/exoplayer2/util/v;Z)V

    const/16 v6, 0xc

    .line 17
    invoke-virtual {v10, v6}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 18
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/v;->D()I

    move-result v8

    sub-int/2addr v8, v7

    .line 19
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/v;->D()I

    move-result v9

    .line 20
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/v;->D()I

    move-result v14

    if-eqz v0, :cond_5

    .line 21
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 22
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/v;->D()I

    move-result v15

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_4
    const/16 v16, -0x1

    if-eqz v11, :cond_6

    .line 23
    invoke-virtual {v11, v6}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 24
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/v;->D()I

    move-result v6

    if-lez v6, :cond_7

    .line 25
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/v;->D()I

    move-result v12

    add-int/lit8 v16, v12, -0x1

    move-object v12, v11

    goto :goto_5

    :cond_6
    move-object v12, v11

    const/4 v6, 0x0

    .line 26
    :cond_7
    :goto_5
    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/mp4/d$b;->a()Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, v1, Lcom/google/android/exoplayer2/extractor/mp4/l;->f:Lcom/google/android/exoplayer2/Format;

    iget-object v11, v11, Lcom/google/android/exoplayer2/Format;->l:Ljava/lang/String;

    const-string v5, "audio/raw"

    .line 27
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v8, :cond_8

    if-nez v15, :cond_8

    if-nez v6, :cond_8

    const/4 v5, 0x1

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    :goto_6
    const-wide/16 v18, 0x0

    if-nez v5, :cond_18

    .line 28
    new-array v5, v3, [J

    .line 29
    new-array v11, v3, [I

    .line 30
    new-array v7, v3, [J

    move/from16 p1, v6

    .line 31
    new-array v6, v3, [I

    move-object/from16 v23, v10

    move/from16 v2, v16

    move-wide/from16 v25, v18

    move-wide/from16 v27, v25

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    move/from16 v16, v15

    move v15, v14

    move v14, v9

    move/from16 v35, v8

    move/from16 v8, p1

    :goto_7
    move/from16 p1, v35

    const-string v9, "AtomParsers"

    if-ge v1, v3, :cond_11

    move-wide/from16 v28, v27

    move/from16 v27, v22

    const/16 v22, 0x1

    :goto_8
    if-nez v27, :cond_9

    .line 32
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/extractor/mp4/d$a;->a()Z

    move-result v22

    if-eqz v22, :cond_9

    move/from16 v30, v14

    move/from16 v31, v15

    .line 33
    iget-wide v14, v13, Lcom/google/android/exoplayer2/extractor/mp4/d$a;->d:J

    move/from16 v32, v3

    .line 34
    iget v3, v13, Lcom/google/android/exoplayer2/extractor/mp4/d$a;->c:I

    move/from16 v27, v3

    move-wide/from16 v28, v14

    move/from16 v14, v30

    move/from16 v15, v31

    move/from16 v3, v32

    goto :goto_8

    :cond_9
    move/from16 v32, v3

    move/from16 v30, v14

    move/from16 v31, v15

    if-nez v22, :cond_a

    const-string v2, "Unexpected end of chunk data"

    .line 35
    invoke-static {v9, v2}, Lcom/google/android/exoplayer2/util/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    .line 37
    invoke-static {v11, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v11

    .line 38
    invoke-static {v7, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v7

    .line 39
    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    move v3, v1

    move/from16 v2, v21

    move/from16 v1, v27

    goto/16 :goto_c

    :cond_a
    if-eqz v0, :cond_c

    :goto_9
    if-nez v24, :cond_b

    if-lez v16, :cond_b

    .line 40
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/v;->D()I

    move-result v24

    .line 41
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v21

    add-int/lit8 v16, v16, -0x1

    goto :goto_9

    :cond_b
    add-int/lit8 v24, v24, -0x1

    :cond_c
    move/from16 v3, v21

    .line 42
    aput-wide v28, v5, v1

    .line 43
    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/mp4/d$b;->c()I

    move-result v9

    aput v9, v11, v1

    .line 44
    aget v9, v11, v1

    if-le v9, v10, :cond_d

    .line 45
    aget v9, v11, v1

    move v10, v9

    :cond_d
    int-to-long v14, v3

    add-long v14, v25, v14

    .line 46
    aput-wide v14, v7, v1

    if-nez v12, :cond_e

    const/4 v9, 0x1

    goto :goto_a

    :cond_e
    const/4 v9, 0x0

    .line 47
    :goto_a
    aput v9, v6, v1

    if-ne v1, v2, :cond_f

    const/4 v9, 0x1

    .line 48
    aput v9, v6, v1

    add-int/lit8 v8, v8, -0x1

    if-lez v8, :cond_f

    .line 49
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/v;->D()I

    move-result v2

    sub-int/2addr v2, v9

    :cond_f
    move v15, v2

    move v9, v3

    move/from16 v14, v31

    int-to-long v2, v14

    add-long v25, v25, v2

    add-int/lit8 v2, v30, -0x1

    if-nez v2, :cond_10

    if-lez p1, :cond_10

    .line 50
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/exoplayer2/util/v;->D()I

    move-result v2

    .line 51
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v3

    add-int/lit8 v14, p1, -0x1

    goto :goto_b

    :cond_10
    move v3, v14

    move/from16 v14, p1

    :goto_b
    move/from16 p1, v2

    .line 52
    aget v2, v11, v1

    move/from16 v21, v3

    int-to-long v2, v2

    add-long v2, v28, v2

    add-int/lit8 v22, v27, -0x1

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v27, v2

    move v2, v15

    move/from16 v15, v21

    move/from16 v3, v32

    move/from16 v21, v9

    move/from16 v35, v14

    move/from16 v14, p1

    goto/16 :goto_7

    :cond_11
    move/from16 v32, v3

    move/from16 v30, v14

    move/from16 v2, v21

    move/from16 v1, v22

    :goto_c
    int-to-long v12, v2

    add-long v25, v25, v12

    :goto_d
    if-lez v16, :cond_13

    .line 53
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/v;->D()I

    move-result v2

    if-eqz v2, :cond_12

    const/4 v0, 0x0

    goto :goto_e

    .line 54
    :cond_12
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/v;->k()I

    add-int/lit8 v16, v16, -0x1

    goto :goto_d

    :cond_13
    const/4 v0, 0x1

    :goto_e
    if-nez v8, :cond_15

    if-nez v30, :cond_15

    if-nez v1, :cond_15

    if-nez p1, :cond_15

    move/from16 v2, v24

    if-nez v2, :cond_16

    if-nez v0, :cond_14

    goto :goto_f

    :cond_14
    move-object/from16 v12, p0

    goto :goto_11

    :cond_15
    move/from16 v2, v24

    .line 55
    :cond_16
    :goto_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Inconsistent stbl box for track "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p0

    iget v13, v12, Lcom/google/android/exoplayer2/extractor/mp4/l;->a:I

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ": remainingSynchronizationSamples "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v30

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", remainingSamplesInChunk "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingTimestampDeltaChanges "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p1

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v0, :cond_17

    const-string v0, ", ctts invalid"

    goto :goto_10

    :cond_17
    const-string v0, ""

    :goto_10
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/google/android/exoplayer2/util/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    move v0, v3

    move-object v2, v5

    move-object v14, v6

    move-object v13, v7

    move v4, v10

    move-object v3, v11

    goto :goto_13

    :cond_18
    move-object v12, v1

    move/from16 v32, v3

    .line 56
    iget v0, v13, Lcom/google/android/exoplayer2/extractor/mp4/d$a;->a:I

    new-array v1, v0, [J

    .line 57
    new-array v0, v0, [I

    .line 58
    :goto_12
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/extractor/mp4/d$a;->a()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 59
    iget v2, v13, Lcom/google/android/exoplayer2/extractor/mp4/d$a;->b:I

    iget-wide v3, v13, Lcom/google/android/exoplayer2/extractor/mp4/d$a;->d:J

    aput-wide v3, v1, v2

    .line 60
    iget v3, v13, Lcom/google/android/exoplayer2/extractor/mp4/d$a;->c:I

    aput v3, v0, v2

    goto :goto_12

    .line 61
    :cond_19
    iget-object v2, v12, Lcom/google/android/exoplayer2/extractor/mp4/l;->f:Lcom/google/android/exoplayer2/Format;

    iget v3, v2, Lcom/google/android/exoplayer2/Format;->A:I

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->y:I

    .line 62
    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/util/h0;->I(II)I

    move-result v2

    int-to-long v3, v14

    .line 63
    invoke-static {v2, v1, v0, v3, v4}, Lcom/google/android/exoplayer2/extractor/mp4/f;->a(I[J[IJ)Lcom/google/android/exoplayer2/extractor/mp4/f$b;

    move-result-object v0

    .line 64
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/f$b;->a:[J

    .line 65
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/f$b;->b:[I

    .line 66
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/f$b;->c:I

    .line 67
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/f$b;->d:[J

    .line 68
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/f$b;->e:[I

    .line 69
    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/f$b;->f:J

    move-object v13, v4

    move-object v14, v5

    move-wide/from16 v25, v6

    move/from16 v0, v32

    move v4, v3

    move-object v3, v2

    move-object v2, v1

    :goto_13
    const-wide/32 v7, 0xf4240

    .line 70
    iget-wide v9, v12, Lcom/google/android/exoplayer2/extractor/mp4/l;->c:J

    move-wide/from16 v5, v25

    invoke-static/range {v5 .. v10}, Lcom/google/android/exoplayer2/util/h0;->l0(JJJ)J

    move-result-wide v7

    .line 71
    iget-object v1, v12, Lcom/google/android/exoplayer2/extractor/mp4/l;->h:[J

    const-wide/32 v10, 0xf4240

    if-nez v1, :cond_1a

    .line 72
    iget-wide v0, v12, Lcom/google/android/exoplayer2/extractor/mp4/l;->c:J

    invoke-static {v13, v10, v11, v0, v1}, Lcom/google/android/exoplayer2/util/h0;->m0([JJJ)V

    .line 73
    new-instance v9, Lcom/google/android/exoplayer2/extractor/mp4/o;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v13

    move-object v6, v14

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/o;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/l;[J[II[J[IJ)V

    return-object v9

    .line 74
    :cond_1a
    array-length v5, v1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1c

    iget v5, v12, Lcom/google/android/exoplayer2/extractor/mp4/l;->b:I

    if-ne v5, v6, :cond_1c

    array-length v5, v13

    const/4 v6, 0x2

    if-lt v5, v6, :cond_1c

    .line 75
    iget-object v5, v12, Lcom/google/android/exoplayer2/extractor/mp4/l;->i:[J

    const/4 v6, 0x0

    aget-wide v15, v5, v6

    .line 76
    aget-wide v27, v1, v6

    iget-wide v5, v12, Lcom/google/android/exoplayer2/extractor/mp4/l;->c:J

    iget-wide v7, v12, Lcom/google/android/exoplayer2/extractor/mp4/l;->d:J

    move-wide/from16 v29, v5

    move-wide/from16 v31, v7

    invoke-static/range {v27 .. v32}, Lcom/google/android/exoplayer2/util/h0;->l0(JJJ)J

    move-result-wide v5

    add-long v21, v15, v5

    move-object v5, v13

    move-wide/from16 v6, v25

    move-wide v8, v15

    move/from16 v23, v0

    move-wide v0, v10

    move-wide/from16 v10, v21

    .line 77
    invoke-static/range {v5 .. v11}, Lcom/google/android/exoplayer2/extractor/mp4/d;->a([JJJJ)Z

    move-result v5

    if-eqz v5, :cond_1d

    sub-long v6, v25, v21

    const/4 v5, 0x0

    .line 78
    aget-wide v8, v13, v5

    sub-long v27, v15, v8

    iget-object v5, v12, Lcom/google/android/exoplayer2/extractor/mp4/l;->f:Lcom/google/android/exoplayer2/Format;

    iget v5, v5, Lcom/google/android/exoplayer2/Format;->z:I

    int-to-long v8, v5

    iget-wide v10, v12, Lcom/google/android/exoplayer2/extractor/mp4/l;->c:J

    move-wide/from16 v29, v8

    move-wide/from16 v31, v10

    invoke-static/range {v27 .. v32}, Lcom/google/android/exoplayer2/util/h0;->l0(JJJ)J

    move-result-wide v10

    .line 79
    iget-object v5, v12, Lcom/google/android/exoplayer2/extractor/mp4/l;->f:Lcom/google/android/exoplayer2/Format;

    iget v5, v5, Lcom/google/android/exoplayer2/Format;->z:I

    int-to-long v8, v5

    iget-wide v0, v12, Lcom/google/android/exoplayer2/extractor/mp4/l;->c:J

    move-object/from16 p1, v14

    move-wide v14, v10

    move-wide v10, v0

    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer2/util/h0;->l0(JJJ)J

    move-result-wide v0

    cmp-long v5, v14, v18

    if-nez v5, :cond_1b

    cmp-long v5, v0, v18

    if-eqz v5, :cond_1e

    :cond_1b
    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v14, v5

    if-gtz v7, :cond_1e

    cmp-long v7, v0, v5

    if-gtz v7, :cond_1e

    long-to-int v5, v14

    move-object/from16 v6, p2

    .line 80
    iput v5, v6, Lcom/google/android/exoplayer2/c1/p;->b:I

    long-to-int v1, v0

    .line 81
    iput v1, v6, Lcom/google/android/exoplayer2/c1/p;->c:I

    .line 82
    iget-wide v0, v12, Lcom/google/android/exoplayer2/extractor/mp4/l;->c:J

    const-wide/32 v5, 0xf4240

    invoke-static {v13, v5, v6, v0, v1}, Lcom/google/android/exoplayer2/util/h0;->m0([JJJ)V

    .line 83
    iget-object v0, v12, Lcom/google/android/exoplayer2/extractor/mp4/l;->h:[J

    const/4 v1, 0x0

    aget-wide v5, v0, v1

    const-wide/32 v7, 0xf4240

    iget-wide v9, v12, Lcom/google/android/exoplayer2/extractor/mp4/l;->d:J

    .line 84
    invoke-static/range {v5 .. v10}, Lcom/google/android/exoplayer2/util/h0;->l0(JJJ)J

    move-result-wide v7

    .line 85
    new-instance v9, Lcom/google/android/exoplayer2/extractor/mp4/o;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v13

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/o;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/l;[J[II[J[IJ)V

    return-object v9

    :cond_1c
    move/from16 v23, v0

    :cond_1d
    move-object/from16 p1, v14

    .line 86
    :cond_1e
    iget-object v0, v12, Lcom/google/android/exoplayer2/extractor/mp4/l;->h:[J

    array-length v1, v0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_20

    const/4 v1, 0x0

    aget-wide v5, v0, v1

    cmp-long v7, v5, v18

    if-nez v7, :cond_20

    .line 87
    iget-object v0, v12, Lcom/google/android/exoplayer2/extractor/mp4/l;->i:[J

    aget-wide v5, v0, v1

    const/4 v0, 0x0

    .line 88
    :goto_14
    array-length v1, v13

    if-ge v0, v1, :cond_1f

    .line 89
    aget-wide v7, v13, v0

    sub-long v14, v7, v5

    const-wide/32 v16, 0xf4240

    iget-wide v7, v12, Lcom/google/android/exoplayer2/extractor/mp4/l;->c:J

    move-wide/from16 v18, v7

    .line 90
    invoke-static/range {v14 .. v19}, Lcom/google/android/exoplayer2/util/h0;->l0(JJJ)J

    move-result-wide v7

    aput-wide v7, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_1f
    sub-long v14, v25, v5

    const-wide/32 v16, 0xf4240

    .line 91
    iget-wide v0, v12, Lcom/google/android/exoplayer2/extractor/mp4/l;->c:J

    move-wide/from16 v18, v0

    .line 92
    invoke-static/range {v14 .. v19}, Lcom/google/android/exoplayer2/util/h0;->l0(JJJ)J

    move-result-wide v7

    .line 93
    new-instance v9, Lcom/google/android/exoplayer2/extractor/mp4/o;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v13

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/o;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/l;[J[II[J[IJ)V

    return-object v9

    .line 94
    :cond_20
    iget v1, v12, Lcom/google/android/exoplayer2/extractor/mp4/l;->b:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_21

    const/4 v9, 0x1

    goto :goto_15

    :cond_21
    const/4 v9, 0x0

    .line 95
    :goto_15
    array-length v1, v0

    new-array v1, v1, [I

    .line 96
    array-length v0, v0

    new-array v0, v0, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 97
    :goto_16
    iget-object v10, v12, Lcom/google/android/exoplayer2/extractor/mp4/l;->h:[J

    array-length v11, v10

    if-ge v6, v11, :cond_25

    .line 98
    iget-object v11, v12, Lcom/google/android/exoplayer2/extractor/mp4/l;->i:[J

    aget-wide v14, v11, v6

    const-wide/16 v21, -0x1

    cmp-long v11, v14, v21

    if-eqz v11, :cond_24

    .line 99
    aget-wide v24, v10, v6

    iget-wide v10, v12, Lcom/google/android/exoplayer2/extractor/mp4/l;->c:J

    move-object/from16 v16, v3

    move/from16 v21, v4

    iget-wide v3, v12, Lcom/google/android/exoplayer2/extractor/mp4/l;->d:J

    move-wide/from16 v26, v10

    move-wide/from16 v28, v3

    .line 100
    invoke-static/range {v24 .. v29}, Lcom/google/android/exoplayer2/util/h0;->l0(JJJ)J

    move-result-wide v3

    const/4 v10, 0x1

    .line 101
    invoke-static {v13, v14, v15, v10, v10}, Lcom/google/android/exoplayer2/util/h0;->d([JJZZ)I

    move-result v11

    aput v11, v1, v6

    add-long/2addr v14, v3

    const/4 v3, 0x0

    .line 102
    invoke-static {v13, v14, v15, v9, v3}, Lcom/google/android/exoplayer2/util/h0;->d([JJZZ)I

    move-result v4

    aput v4, v0, v6

    .line 103
    :goto_17
    aget v4, v1, v6

    aget v11, v0, v6

    if-ge v4, v11, :cond_22

    aget v4, v1, v6

    aget v4, p1, v4

    and-int/2addr v4, v10

    if-nez v4, :cond_22

    .line 104
    aget v4, v1, v6

    add-int/2addr v4, v10

    aput v4, v1, v6

    goto :goto_17

    .line 105
    :cond_22
    aget v4, v0, v6

    aget v11, v1, v6

    sub-int/2addr v4, v11

    add-int/2addr v7, v4

    .line 106
    aget v4, v1, v6

    if-eq v8, v4, :cond_23

    const/4 v4, 0x1

    goto :goto_18

    :cond_23
    const/4 v4, 0x0

    :goto_18
    or-int/2addr v4, v5

    .line 107
    aget v5, v0, v6

    move v8, v5

    move v5, v4

    goto :goto_19

    :cond_24
    move-object/from16 v16, v3

    move/from16 v21, v4

    const/4 v3, 0x0

    const/4 v10, 0x1

    :goto_19
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v16

    move/from16 v4, v21

    goto :goto_16

    :cond_25
    move-object/from16 v16, v3

    move/from16 v21, v4

    move/from16 v4, v23

    const/4 v3, 0x0

    const/4 v10, 0x1

    if-eq v7, v4, :cond_26

    goto :goto_1a

    :cond_26
    const/4 v10, 0x0

    :goto_1a
    or-int v4, v5, v10

    if-eqz v4, :cond_27

    .line 108
    new-array v5, v7, [J

    goto :goto_1b

    :cond_27
    move-object v5, v2

    :goto_1b
    if-eqz v4, :cond_28

    .line 109
    new-array v6, v7, [I

    goto :goto_1c

    :cond_28
    move-object/from16 v6, v16

    :goto_1c
    if-eqz v4, :cond_29

    const/16 v21, 0x0

    :cond_29
    if-eqz v4, :cond_2a

    .line 110
    new-array v8, v7, [I

    goto :goto_1d

    :cond_2a
    move-object/from16 v8, p1

    .line 111
    :goto_1d
    new-array v7, v7, [J

    const/4 v9, 0x0

    .line 112
    :goto_1e
    iget-object v10, v12, Lcom/google/android/exoplayer2/extractor/mp4/l;->h:[J

    array-length v10, v10

    if-ge v3, v10, :cond_2e

    .line 113
    iget-object v10, v12, Lcom/google/android/exoplayer2/extractor/mp4/l;->i:[J

    aget-wide v14, v10, v3

    .line 114
    aget v10, v1, v3

    .line 115
    aget v11, v0, v3

    move-object/from16 v17, v0

    if-eqz v4, :cond_2b

    sub-int v0, v11, v10

    .line 116
    invoke-static {v2, v10, v5, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v20, v1

    move-object/from16 v1, v16

    .line 117
    invoke-static {v1, v10, v6, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v16, v2

    move-object/from16 v2, p1

    .line 118
    invoke-static {v2, v10, v8, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1f

    :cond_2b
    move-object/from16 v20, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v2

    move-object/from16 v2, p1

    :goto_1f
    move/from16 v0, v21

    :goto_20
    if-ge v10, v11, :cond_2d

    const-wide/32 v24, 0xf4240

    move-object/from16 p1, v2

    move/from16 v28, v3

    .line 119
    iget-wide v2, v12, Lcom/google/android/exoplayer2/extractor/mp4/l;->d:J

    move-wide/from16 v22, v18

    move-wide/from16 v26, v2

    invoke-static/range {v22 .. v27}, Lcom/google/android/exoplayer2/util/h0;->l0(JJJ)J

    move-result-wide v2

    .line 120
    aget-wide v21, v13, v10

    sub-long v29, v21, v14

    const-wide/32 v31, 0xf4240

    move-object/from16 v22, v13

    move-wide/from16 v23, v14

    iget-wide v13, v12, Lcom/google/android/exoplayer2/extractor/mp4/l;->c:J

    move-wide/from16 v33, v13

    .line 121
    invoke-static/range {v29 .. v34}, Lcom/google/android/exoplayer2/util/h0;->l0(JJJ)J

    move-result-wide v13

    add-long/2addr v2, v13

    .line 122
    aput-wide v2, v7, v9

    if-eqz v4, :cond_2c

    .line 123
    aget v2, v6, v9

    if-le v2, v0, :cond_2c

    .line 124
    aget v0, v1, v10

    :cond_2c
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p1

    move-object/from16 v13, v22

    move-wide/from16 v14, v23

    move/from16 v3, v28

    goto :goto_20

    :cond_2d
    move-object/from16 p1, v2

    move/from16 v28, v3

    move-object/from16 v22, v13

    .line 125
    iget-object v2, v12, Lcom/google/android/exoplayer2/extractor/mp4/l;->h:[J

    aget-wide v10, v2, v28

    add-long v18, v18, v10

    add-int/lit8 v3, v28, 0x1

    move/from16 v21, v0

    move-object/from16 v2, v16

    move-object/from16 v0, v17

    move-object/from16 v16, v1

    move-object/from16 v1, v20

    goto/16 :goto_1e

    :cond_2e
    const-wide/32 v24, 0xf4240

    .line 126
    iget-wide v0, v12, Lcom/google/android/exoplayer2/extractor/mp4/l;->d:J

    move-wide/from16 v22, v18

    move-wide/from16 v26, v0

    .line 127
    invoke-static/range {v22 .. v27}, Lcom/google/android/exoplayer2/util/h0;->l0(JJJ)J

    move-result-wide v9

    .line 128
    new-instance v11, Lcom/google/android/exoplayer2/extractor/mp4/o;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v6

    move/from16 v4, v21

    move-object v5, v7

    move-object v6, v8

    move-wide v7, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/o;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/l;[J[II[J[IJ)V

    return-object v11

    .line 129
    :cond_2f
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Track has no sample table size information"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static s(Lcom/google/android/exoplayer2/util/v;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/mp4/d$c;
    .locals 17

    move-object/from16 v10, p0

    const/16 v0, 0xc

    .line 1
    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v11

    .line 3
    new-instance v12, Lcom/google/android/exoplayer2/extractor/mp4/d$c;

    invoke-direct {v12, v11}, Lcom/google/android/exoplayer2/extractor/mp4/d$c;-><init>(I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v11, :cond_8

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/v;->c()I

    move-result v15

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v16

    if-lez v16, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const-string v1, "childAtomSize should be positive"

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/e;->b(ZLjava/lang/Object;)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v1

    const v0, 0x61766331

    if-eq v1, v0, :cond_6

    const v0, 0x61766333

    if-eq v1, v0, :cond_6

    const v0, 0x656e6376

    if-eq v1, v0, :cond_6

    const v0, 0x6d703476

    if-eq v1, v0, :cond_6

    const v0, 0x68766331

    if-eq v1, v0, :cond_6

    const v0, 0x68657631

    if-eq v1, v0, :cond_6

    const v0, 0x73323633

    if-eq v1, v0, :cond_6

    const v0, 0x76703038

    if-eq v1, v0, :cond_6

    const v0, 0x76703039

    if-eq v1, v0, :cond_6

    const v0, 0x61763031

    if-eq v1, v0, :cond_6

    const v0, 0x64766176

    if-eq v1, v0, :cond_6

    const v0, 0x64766131

    if-eq v1, v0, :cond_6

    const v0, 0x64766865

    if-eq v1, v0, :cond_6

    const v0, 0x64766831

    if-ne v1, v0, :cond_1

    goto/16 :goto_4

    :cond_1
    const v0, 0x6d703461

    if-eq v1, v0, :cond_5

    const v0, 0x656e6361

    if-eq v1, v0, :cond_5

    const v0, 0x61632d33

    if-eq v1, v0, :cond_5

    const v0, 0x65632d33

    if-eq v1, v0, :cond_5

    const v0, 0x61632d34

    if-eq v1, v0, :cond_5

    const v0, 0x64747363

    if-eq v1, v0, :cond_5

    const v0, 0x64747365

    if-eq v1, v0, :cond_5

    const v0, 0x64747368

    if-eq v1, v0, :cond_5

    const v0, 0x6474736c

    if-eq v1, v0, :cond_5

    const v0, 0x73616d72

    if-eq v1, v0, :cond_5

    const v0, 0x73617762

    if-eq v1, v0, :cond_5

    const v0, 0x6c70636d

    if-eq v1, v0, :cond_5

    const v0, 0x736f7774

    if-eq v1, v0, :cond_5

    const v0, 0x74776f73

    if-eq v1, v0, :cond_5

    const v0, 0x2e6d7033

    if-eq v1, v0, :cond_5

    const v0, 0x616c6163

    if-eq v1, v0, :cond_5

    const v0, 0x616c6177

    if-eq v1, v0, :cond_5

    const v0, 0x756c6177

    if-eq v1, v0, :cond_5

    const v0, 0x4f707573

    if-eq v1, v0, :cond_5

    const v0, 0x664c6143

    if-ne v1, v0, :cond_2

    goto :goto_3

    :cond_2
    const v0, 0x54544d4c

    if-eq v1, v0, :cond_4

    const v0, 0x74783367

    if-eq v1, v0, :cond_4

    const v0, 0x77767474

    if-eq v1, v0, :cond_4

    const v0, 0x73747070

    if-eq v1, v0, :cond_4

    const v0, 0x63363038

    if-ne v1, v0, :cond_3

    goto :goto_2

    :cond_3
    const v0, 0x63616d6d

    if-ne v1, v0, :cond_7

    .line 8
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "application/x-camera-motion"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Lcom/google/android/exoplayer2/Format;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v12, Lcom/google/android/exoplayer2/extractor/mp4/d$c;->b:Lcom/google/android/exoplayer2/Format;

    goto :goto_5

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move-object v6, v12

    .line 9
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/mp4/d;->t(Lcom/google/android/exoplayer2/util/v;IIIILjava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/d$c;)V

    goto :goto_5

    :cond_5
    :goto_3
    move-object/from16 v0, p0

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p5

    move-object/from16 v7, p4

    move-object v8, v12

    move v9, v14

    .line 10
    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer2/extractor/mp4/d;->d(Lcom/google/android/exoplayer2/util/v;IIIILjava/lang/String;ZLcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/d$c;I)V

    goto :goto_5

    :cond_6
    :goto_4
    move-object/from16 v0, p0

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p4

    move-object v7, v12

    move v8, v14

    .line 11
    invoke-static/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/d;->y(Lcom/google/android/exoplayer2/util/v;IIIIILcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/d$c;I)V

    :cond_7
    :goto_5
    add-int v15, v15, v16

    .line 12
    invoke-virtual {v10, v15}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v12
.end method

.method private static t(Lcom/google/android/exoplayer2/util/v;IIIILjava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/d$c;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    add-int/lit8 v3, p2, 0x8

    add-int/lit8 v3, v3, 0x8

    .line 1
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    const-string v3, "application/ttml+xml"

    const/4 v4, 0x0

    const-wide v5, 0x7fffffffffffffffL

    const v7, 0x54544d4c

    if-ne v1, v7, :cond_0

    :goto_0
    move-object v8, v3

    move-object/from16 v17, v4

    move-wide v15, v5

    goto :goto_1

    :cond_0
    const v7, 0x74783367

    if-ne v1, v7, :cond_1

    add-int/lit8 v1, p3, -0x8

    add-int/lit8 v1, v1, -0x8

    .line 2
    new-array v3, v1, [B

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v0, v3, v4, v1}, Lcom/google/android/exoplayer2/util/v;->h([BII)V

    .line 4
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v3, "application/x-quicktime-tx3g"

    goto :goto_0

    :cond_1
    const v0, 0x77767474

    if-ne v1, v0, :cond_2

    const-string v3, "application/x-mp4-vtt"

    goto :goto_0

    :cond_2
    const v0, 0x73747070

    if-ne v1, v0, :cond_3

    const-wide/16 v5, 0x0

    goto :goto_0

    :cond_3
    const v0, 0x63363038

    if-ne v1, v0, :cond_4

    const/4 v0, 0x1

    .line 5
    iput v0, v2, Lcom/google/android/exoplayer2/extractor/mp4/d$c;->d:I

    const-string v3, "application/x-mp4-cea-608"

    goto :goto_0

    .line 6
    :goto_1
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object/from16 v12, p5

    .line 7
    invoke-static/range {v7 .. v17}, Lcom/google/android/exoplayer2/Format;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/exoplayer2/extractor/mp4/d$c;->b:Lcom/google/android/exoplayer2/Format;

    return-void

    .line 8
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private static u(Lcom/google/android/exoplayer2/util/v;)Lcom/google/android/exoplayer2/extractor/mp4/d$f;
    .locals 11

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v1

    .line 3
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/c;->c(I)I

    move-result v1

    const/16 v2, 0x10

    if-nez v1, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/16 v3, 0x10

    .line 4
    :goto_0
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v3

    const/4 v4, 0x4

    .line 6
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->c()I

    move-result v5

    if-nez v1, :cond_1

    const/4 v0, 0x4

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_3

    .line 8
    iget-object v8, p0, Lcom/google/android/exoplayer2/util/v;->a:[B

    add-int v9, v5, v7

    aget-byte v8, v8, v9

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    :goto_2
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v5, :cond_4

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    goto :goto_4

    :cond_4
    if-nez v1, :cond_5

    .line 10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->B()J

    move-result-wide v0

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->E()J

    move-result-wide v0

    :goto_3
    const-wide/16 v9, 0x0

    cmp-long v5, v0, v9

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    move-wide v7, v0

    .line 11
    :goto_4
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v1

    .line 14
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 15
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v2

    .line 16
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result p0

    const/high16 v4, 0x10000

    const/high16 v5, -0x10000

    if-nez v0, :cond_7

    if-ne v1, v4, :cond_7

    if-ne v2, v5, :cond_7

    if-nez p0, :cond_7

    const/16 v6, 0x5a

    goto :goto_5

    :cond_7
    if-nez v0, :cond_8

    if-ne v1, v5, :cond_8

    if-ne v2, v4, :cond_8

    if-nez p0, :cond_8

    const/16 v6, 0x10e

    goto :goto_5

    :cond_8
    if-ne v0, v5, :cond_9

    if-nez v1, :cond_9

    if-nez v2, :cond_9

    if-ne p0, v5, :cond_9

    const/16 v6, 0xb4

    .line 17
    :cond_9
    :goto_5
    new-instance p0, Lcom/google/android/exoplayer2/extractor/mp4/d$f;

    invoke-direct {p0, v3, v7, v8, v6}, Lcom/google/android/exoplayer2/extractor/mp4/d$f;-><init>(IJI)V

    return-object p0
.end method

.method public static v(Lcom/google/android/exoplayer2/extractor/mp4/c$a;Lcom/google/android/exoplayer2/extractor/mp4/c$b;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZ)Lcom/google/android/exoplayer2/extractor/mp4/l;
    .locals 18

    move-object/from16 v0, p0

    const v1, 0x6d646961

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->f(I)Lcom/google/android/exoplayer2/extractor/mp4/c$a;

    move-result-object v1

    const v2, 0x68646c72    # 4.3148E24f

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/c$b;->b:Lcom/google/android/exoplayer2/util/v;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/d;->i(Lcom/google/android/exoplayer2/util/v;)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/d;->c(I)I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v5, v3, :cond_0

    return-object v2

    :cond_0
    const v3, 0x746b6864

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/c$b;->b:Lcom/google/android/exoplayer2/util/v;

    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/d;->u(Lcom/google/android/exoplayer2/util/v;)Lcom/google/android/exoplayer2/extractor/mp4/d$f;

    move-result-object v3

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p2, v6

    if-nez v4, :cond_1

    .line 4
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/d$f;->a(Lcom/google/android/exoplayer2/extractor/mp4/d$f;)J

    move-result-wide v8

    move-object/from16 v4, p1

    move-wide v10, v8

    goto :goto_0

    :cond_1
    move-object/from16 v4, p1

    move-wide/from16 v10, p2

    .line 5
    :goto_0
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/c$b;->b:Lcom/google/android/exoplayer2/util/v;

    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/d;->m(Lcom/google/android/exoplayer2/util/v;)J

    move-result-wide v8

    cmp-long v4, v10, v6

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const-wide/32 v12, 0xf4240

    move-wide v14, v8

    .line 6
    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer2/util/h0;->l0(JJJ)J

    move-result-wide v6

    :goto_1
    move-wide v10, v6

    const v4, 0x6d696e66

    .line 7
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->f(I)Lcom/google/android/exoplayer2/extractor/mp4/c$a;

    move-result-object v4

    const v6, 0x7374626c

    .line 8
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->f(I)Lcom/google/android/exoplayer2/extractor/mp4/c$a;

    move-result-object v4

    const v6, 0x6d646864

    .line 9
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/c$b;->b:Lcom/google/android/exoplayer2/util/v;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/d;->k(Lcom/google/android/exoplayer2/util/v;)Landroid/util/Pair;

    move-result-object v1

    const v6, 0x73747364

    .line 10
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/c$b;

    move-result-object v4

    iget-object v12, v4, Lcom/google/android/exoplayer2/extractor/mp4/c$b;->b:Lcom/google/android/exoplayer2/util/v;

    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/d$f;->b(Lcom/google/android/exoplayer2/extractor/mp4/d$f;)I

    move-result v13

    .line 11
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/d$f;->c(Lcom/google/android/exoplayer2/extractor/mp4/d$f;)I

    move-result v14

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v15, v4

    check-cast v15, Ljava/lang/String;

    move-object/from16 v16, p4

    move/from16 v17, p6

    .line 12
    invoke-static/range {v12 .. v17}, Lcom/google/android/exoplayer2/extractor/mp4/d;->s(Lcom/google/android/exoplayer2/util/v;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/mp4/d$c;

    move-result-object v4

    if-nez p5, :cond_3

    const v6, 0x65647473

    .line 13
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/extractor/mp4/c$a;->f(I)Lcom/google/android/exoplayer2/extractor/mp4/c$a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/d;->f(Lcom/google/android/exoplayer2/extractor/mp4/c$a;)Landroid/util/Pair;

    move-result-object v0

    .line 14
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, [J

    .line 15
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [J

    move-object/from16 v17, v0

    move-object/from16 v16, v6

    goto :goto_2

    :cond_3
    move-object/from16 v16, v2

    move-object/from16 v17, v16

    .line 16
    :goto_2
    iget-object v0, v4, Lcom/google/android/exoplayer2/extractor/mp4/d$c;->b:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp4/l;

    .line 17
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/d$f;->b(Lcom/google/android/exoplayer2/extractor/mp4/d$f;)I

    move-result v0

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v12, v4, Lcom/google/android/exoplayer2/extractor/mp4/d$c;->b:Lcom/google/android/exoplayer2/Format;

    iget v13, v4, Lcom/google/android/exoplayer2/extractor/mp4/d$c;->d:I

    iget-object v14, v4, Lcom/google/android/exoplayer2/extractor/mp4/d$c;->a:[Lcom/google/android/exoplayer2/extractor/mp4/m;

    iget v15, v4, Lcom/google/android/exoplayer2/extractor/mp4/d$c;->c:I

    move-object v3, v2

    move v4, v0

    invoke-direct/range {v3 .. v17}, Lcom/google/android/exoplayer2/extractor/mp4/l;-><init>(IIJJJLcom/google/android/exoplayer2/Format;I[Lcom/google/android/exoplayer2/extractor/mp4/m;I[J[J)V

    :goto_3
    return-object v2
.end method

.method public static w(Lcom/google/android/exoplayer2/extractor/mp4/c$b;Z)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/c$b;->b:Lcom/google/android/exoplayer2/util/v;

    const/16 p1, 0x8

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->a()I

    move-result v1

    if-lt v1, p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->c()I

    move-result v1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v2

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v3

    const v4, 0x6d657461

    if-ne v3, v4, :cond_1

    .line 7
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    add-int/2addr v1, v2

    .line 8
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/d;->x(Lcom/google/android/exoplayer2/util/v;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/2addr v1, v2

    .line 9
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static x(Lcom/google/android/exoplayer2/util/v;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 4

    const/16 v0, 0xc

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->c()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->c()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v2

    const v3, 0x696c7374

    if-ne v2, v3, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    add-int/2addr v0, v1

    .line 7
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/d;->j(Lcom/google/android/exoplayer2/util/v;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/2addr v0, v1

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static y(Lcom/google/android/exoplayer2/util/v;IIIIILcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/d$c;I)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    add-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x8

    .line 1
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    const/16 v5, 0x10

    .line 2
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/v;->F()I

    move-result v11

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/v;->F()I

    move-result v12

    const/16 v5, 0x32

    .line 5
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/v;->c()I

    move-result v5

    const/4 v6, 0x0

    const v7, 0x656e6376

    move/from16 v8, p1

    if-ne v8, v7, :cond_2

    .line 7
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/d;->p(Lcom/google/android/exoplayer2/util/v;II)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 8
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v3, :cond_0

    move-object v3, v6

    goto :goto_0

    .line 9
    :cond_0
    iget-object v9, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/exoplayer2/extractor/mp4/m;

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/m;->b:Ljava/lang/String;

    .line 10
    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/drm/DrmInitData;->c(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v3

    .line 11
    :goto_0
    iget-object v9, v4, Lcom/google/android/exoplayer2/extractor/mp4/d$c;->a:[Lcom/google/android/exoplayer2/extractor/mp4/m;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/exoplayer2/extractor/mp4/m;

    aput-object v7, v9, p8

    .line 12
    :cond_1
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    :cond_2
    move-object/from16 v20, v3

    const/4 v3, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v3, v6

    move-object v9, v3

    move-object v14, v9

    move-object/from16 v17, v14

    const/4 v6, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v18, -0x1

    :goto_1
    sub-int v10, v5, v1

    if-ge v10, v2, :cond_1c

    .line 13
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/v;->c()I

    move-result v10

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v13

    if-nez v13, :cond_3

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/v;->c()I

    move-result v15

    sub-int/2addr v15, v1

    if-ne v15, v2, :cond_3

    goto/16 :goto_c

    :cond_3
    if-lez v13, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    const-string v15, "childAtomSize should be positive"

    .line 17
    invoke-static {v7, v15}, Lcom/google/android/exoplayer2/util/e;->b(ZLjava/lang/Object;)V

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/v;->k()I

    move-result v7

    const v15, 0x61766343

    const/4 v1, 0x3

    if-ne v7, v15, :cond_7

    if-nez v3, :cond_5

    const/4 v15, 0x1

    goto :goto_3

    :cond_5
    const/4 v15, 0x0

    .line 19
    :goto_3
    invoke-static {v15}, Lcom/google/android/exoplayer2/util/e;->f(Z)V

    add-int/lit8 v10, v10, 0x8

    .line 20
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 21
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/h;->b(Lcom/google/android/exoplayer2/util/v;)Lcom/google/android/exoplayer2/video/h;

    move-result-object v1

    .line 22
    iget-object v14, v1, Lcom/google/android/exoplayer2/video/h;->a:Ljava/util/List;

    .line 23
    iget v3, v1, Lcom/google/android/exoplayer2/video/h;->b:I

    iput v3, v4, Lcom/google/android/exoplayer2/extractor/mp4/d$c;->c:I

    if-nez v6, :cond_6

    .line 24
    iget v1, v1, Lcom/google/android/exoplayer2/video/h;->e:F

    move/from16 v16, v1

    :cond_6
    const-string v3, "video/avc"

    goto/16 :goto_b

    :cond_7
    const v15, 0x68766343

    if-ne v7, v15, :cond_9

    if-nez v3, :cond_8

    const/4 v15, 0x1

    goto :goto_4

    :cond_8
    const/4 v15, 0x0

    .line 25
    :goto_4
    invoke-static {v15}, Lcom/google/android/exoplayer2/util/e;->f(Z)V

    add-int/lit8 v10, v10, 0x8

    .line 26
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    .line 27
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/j;->a(Lcom/google/android/exoplayer2/util/v;)Lcom/google/android/exoplayer2/video/j;

    move-result-object v1

    .line 28
    iget-object v14, v1, Lcom/google/android/exoplayer2/video/j;->a:Ljava/util/List;

    .line 29
    iget v1, v1, Lcom/google/android/exoplayer2/video/j;->b:I

    iput v1, v4, Lcom/google/android/exoplayer2/extractor/mp4/d$c;->c:I

    const-string v3, "video/hevc"

    goto/16 :goto_b

    :cond_9
    const v15, 0x64766343

    if-eq v7, v15, :cond_1a

    const v15, 0x64767643

    if-ne v7, v15, :cond_a

    goto/16 :goto_a

    :cond_a
    const v15, 0x76706343

    if-ne v7, v15, :cond_d

    if-nez v3, :cond_b

    const/4 v15, 0x1

    goto :goto_5

    :cond_b
    const/4 v15, 0x0

    .line 30
    :goto_5
    invoke-static {v15}, Lcom/google/android/exoplayer2/util/e;->f(Z)V

    const v1, 0x76703038

    if-ne v8, v1, :cond_c

    const-string v1, "video/x-vnd.on2.vp8"

    goto :goto_6

    :cond_c
    const-string v1, "video/x-vnd.on2.vp9"

    :goto_6
    move-object v3, v1

    goto/16 :goto_b

    :cond_d
    const v15, 0x61763143

    if-ne v7, v15, :cond_f

    if-nez v3, :cond_e

    const/4 v15, 0x1

    goto :goto_7

    :cond_e
    const/4 v15, 0x0

    .line 31
    :goto_7
    invoke-static {v15}, Lcom/google/android/exoplayer2/util/e;->f(Z)V

    const-string v3, "video/av01"

    goto/16 :goto_b

    :cond_f
    const v15, 0x64323633

    if-ne v7, v15, :cond_11

    if-nez v3, :cond_10

    const/4 v15, 0x1

    goto :goto_8

    :cond_10
    const/4 v15, 0x0

    .line 32
    :goto_8
    invoke-static {v15}, Lcom/google/android/exoplayer2/util/e;->f(Z)V

    const-string v3, "video/3gpp"

    goto/16 :goto_b

    :cond_11
    const v15, 0x65736473

    if-ne v7, v15, :cond_13

    if-nez v3, :cond_12

    const/4 v15, 0x1

    goto :goto_9

    :cond_12
    const/4 v15, 0x0

    .line 33
    :goto_9
    invoke-static {v15}, Lcom/google/android/exoplayer2/util/e;->f(Z)V

    .line 34
    invoke-static {v0, v10}, Lcom/google/android/exoplayer2/extractor/mp4/d;->g(Lcom/google/android/exoplayer2/util/v;I)Landroid/util/Pair;

    move-result-object v1

    .line 35
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 36
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    goto :goto_b

    :cond_13
    const v15, 0x70617370

    if-ne v7, v15, :cond_14

    .line 37
    invoke-static {v0, v10}, Lcom/google/android/exoplayer2/extractor/mp4/d;->n(Lcom/google/android/exoplayer2/util/v;I)F

    move-result v16

    const/4 v6, 0x1

    goto :goto_b

    :cond_14
    const v15, 0x73763364

    if-ne v7, v15, :cond_15

    .line 38
    invoke-static {v0, v10, v13}, Lcom/google/android/exoplayer2/extractor/mp4/d;->o(Lcom/google/android/exoplayer2/util/v;II)[B

    move-result-object v17

    goto :goto_b

    :cond_15
    const v10, 0x73743364

    if-ne v7, v10, :cond_1b

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/v;->z()I

    move-result v7

    .line 40
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    if-nez v7, :cond_1b

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/v;->z()I

    move-result v7

    if-eqz v7, :cond_19

    const/4 v10, 0x1

    if-eq v7, v10, :cond_18

    const/4 v15, 0x2

    if-eq v7, v15, :cond_17

    if-eq v7, v1, :cond_16

    goto :goto_b

    :cond_16
    const/16 v18, 0x3

    goto :goto_b

    :cond_17
    const/16 v18, 0x2

    goto :goto_b

    :cond_18
    const/16 v18, 0x1

    goto :goto_b

    :cond_19
    const/16 v18, 0x0

    goto :goto_b

    .line 42
    :cond_1a
    :goto_a
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/i;->a(Lcom/google/android/exoplayer2/util/v;)Lcom/google/android/exoplayer2/video/i;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 43
    iget-object v9, v1, Lcom/google/android/exoplayer2/video/i;->c:Ljava/lang/String;

    const-string v3, "video/dolby-vision"

    :cond_1b
    :goto_b
    add-int/2addr v5, v13

    move/from16 v1, p2

    goto/16 :goto_1

    :cond_1c
    :goto_c
    if-nez v3, :cond_1d

    return-void

    .line 44
    :cond_1d
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, -0x1

    const/4 v10, -0x1

    const/high16 v13, -0x40800000    # -1.0f

    const/16 v19, 0x0

    move-object v7, v3

    move-object v8, v9

    move v9, v0

    move/from16 v15, p5

    .line 45
    invoke-static/range {v6 .. v20}, Lcom/google/android/exoplayer2/Format;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/exoplayer2/video/ColorInfo;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/exoplayer2/extractor/mp4/d$c;->b:Lcom/google/android/exoplayer2/Format;

    return-void
.end method
