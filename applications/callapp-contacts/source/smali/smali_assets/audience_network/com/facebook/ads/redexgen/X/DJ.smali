.class public final Lcom/facebook/ads/redexgen/X/DJ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/DH;,
        Lcom/facebook/ads/redexgen/X/DI;,
        Lcom/facebook/ads/redexgen/X/DG;,
        Lcom/facebook/ads/redexgen/X/DF;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/DJ;->A07()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/DJ;->A06()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26405
    return-void
.end method

.method public static A00(I)I
    .locals 4

    .line 26406
    const/4 v3, 0x0

    .line 26407
    .local p0, "val":I
    :goto_0
    if-lez p0, :cond_1

    .line 26408
    add-int/lit8 v3, v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/DJ;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 26409
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/DJ;->A01:[Ljava/lang/String;

    const-string v1, "aCblbtCs51TFarEUteijDfi4L2eIPPB5"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 26410
    :cond_1
    return v3
.end method

.method public static A01(JJ)J
    .locals 6

    .line 26411
    long-to-double v4, p0

    long-to-double v2, p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v0, v2

    return-wide v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/DD;)Lcom/facebook/ads/redexgen/X/DF;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 26412
    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)I

    move-result v1

    const v0, 0x564342

    if-ne v1, v0, :cond_b

    .line 26413
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)I

    move-result v7

    .line 26414
    .local v2, "dimensions":I
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)I

    move-result v8

    .line 26415
    .local p0, "entries":I
    new-array v9, v8, [J

    .line 26416
    .local v11, "lengthMap":[J
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DD;->A04()Z

    move-result v11

    .line 26417
    .local v4, "isOrdered":Z
    const/4 v4, 0x5

    const/4 v2, 0x1

    if-nez v11, :cond_2

    .line 26418
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DD;->A04()Z

    move-result v5

    .line 26419
    .local v0, "isSparse":Z
    const/4 v3, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v9

    if-ge v3, v0, :cond_4

    .line 26420
    if-eqz v5, :cond_1

    .line 26421
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DD;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26422
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)I

    move-result v0

    add-int/2addr v0, v2

    int-to-long v0, v0

    aput-wide v0, v9, v3

    .line 26423
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 26424
    :cond_0
    const-wide/16 v0, 0x0

    aput-wide v0, v9, v3

    goto :goto_1

    .line 26425
    :cond_1
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)I

    move-result v0

    add-int/2addr v0, v2

    int-to-long v0, v0

    aput-wide v0, v9, v3

    goto :goto_1

    .line 26426
    :cond_2
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)I

    move-result v6

    add-int/2addr v6, v2

    .line 26427
    .local v1, "length":I
    const/4 v5, 0x0

    .local v0, "i":I
    :goto_2
    array-length v0, v9

    if-ge v5, v0, :cond_4

    .line 26428
    sub-int v0, v8, v5

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DJ;->A00(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)I

    move-result v4

    .line 26429
    .local v7, "num":I
    const/4 v3, 0x0

    .local v8, "j":I
    :goto_3
    if-ge v3, v4, :cond_3

    array-length v0, v9

    if-ge v5, v0, :cond_3

    .line 26430
    int-to-long v0, v6

    aput-wide v0, v9, v5

    .line 26431
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 26432
    .end local v8    # "j":I
    .end local v7    # "num":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 26433
    goto :goto_2

    .line 26434
    .end local v1    # "length":I
    .end local v0    # "i":I
    :cond_4
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)I

    move-result v10

    sget-object v3, Lcom/facebook/ads/redexgen/X/DJ;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v3, v0

    const/4 v0, 0x0

    aget-object v3, v3, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 26435
    .local v2, "lookupType":I
    :cond_5
    sget-object v3, Lcom/facebook/ads/redexgen/X/DJ;->A01:[Ljava/lang/String;

    const-string v1, "k7eMGEO3QgprNsh6neXNKI6AQGFtvYrM"

    const/4 v0, 0x7

    aput-object v1, v3, v0

    const/4 v0, 0x2

    if-gt v10, v0, :cond_a

    .line 26436
    if-eq v10, v2, :cond_6

    if-ne v10, v0, :cond_7

    .line 26437
    :cond_6
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)V

    .line 26438
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)V

    .line 26439
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)I

    move-result v4

    add-int/2addr v4, v2

    .line 26440
    .local v1, "valueBits":I
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)V

    .line 26441
    if-ne v10, v2, :cond_9

    .line 26442
    if-eqz v7, :cond_8

    .line 26443
    int-to-long v2, v8

    int-to-long v0, v7

    invoke-static {v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/DJ;->A01(JJ)J

    move-result-wide v2

    .line 26444
    .local v0, "lookupValuesCount":J
    .restart local v0    # "lookupValuesCount":J
    :goto_4
    int-to-long v0, v4

    mul-long/2addr v0, v2

    long-to-int v2, v0

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)V

    .line 26445
    .end local v1    # "valueBits":I
    .end local v0    # "lookupValuesCount":J
    :cond_7
    new-instance v6, Lcom/facebook/ads/redexgen/X/DF;

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/DF;-><init>(II[JIZ)V

    return-object v6

    .line 26446
    .end local v0
    :cond_8
    const-wide/16 v2, 0x0

    .restart local v0    # "lookupValuesCount":J
    goto :goto_4

    .line 26447
    .end local v0    # "lookupValuesCount":J
    :cond_9
    int-to-long v2, v8

    int-to-long v0, v7

    mul-long/2addr v2, v0

    goto :goto_4

    .line 26448
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xe4

    const/16 v1, 0x2a

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26449
    .end local p0    # "entries":I
    .end local v2    # "lookupType":I
    .end local v11    # "lengthMap":[J
    .end local v4    # "isOrdered":Z
    .end local v2
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x26

    const/16 v1, 0x37

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26450
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DD;->A01()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/DG;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 26451
    const/4 v1, 0x3

    const/4 v0, 0x0

    invoke-static {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/DJ;->A0B(ILcom/facebook/ads/redexgen/X/IM;Z)Z

    .line 26452
    const/4 v3, 0x7

    .line 26453
    .local p0, "length":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0L()J

    move-result-wide v1

    long-to-int v0, v1

    .line 26454
    .local v0, "len":I
    add-int/lit8 v3, v3, 0x4

    .line 26455
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0T(I)Ljava/lang/String;

    move-result-object v5

    .line 26456
    .local v1, "vendor":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    .line 26457
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0L()J

    move-result-wide v1

    .line 26458
    .local v3, "commentListLen":J
    long-to-int v0, v1

    new-array v4, v0, [Ljava/lang/String;

    .line 26459
    .local v5, "comments":[Ljava/lang/String;
    add-int/lit8 v6, v3, 0x4

    .line 26460
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_0
    int-to-long v7, v3

    cmp-long v0, v7, v1

    if-gez v0, :cond_0

    .line 26461
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0L()J

    move-result-wide v7

    long-to-int v0, v7

    .line 26462
    add-int/lit8 v6, v6, 0x4

    .line 26463
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0T(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 26464
    aget-object v0, v4, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v6, v0

    .line 26465
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 26466
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    and-int/lit8 v3, v0, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/DJ;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/DJ;->A01:[Ljava/lang/String;

    const-string v1, "uufDOlXzPXn7e2vsUzYQOzPoYhXCwGZ3"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 26467
    add-int/lit8 v1, v6, 0x1

    .line 26468
    new-instance v0, Lcom/facebook/ads/redexgen/X/DG;

    invoke-direct {v0, v5, v4, v1}, Lcom/facebook/ads/redexgen/X/DG;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    return-object v0

    .line 26469
    :cond_2
    const/16 v2, 0xc6

    const/16 v1, 0x1e

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DJ;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/DI;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 26470
    const/4 v0, 0x0

    const/4 v5, 0x1

    move-object/from16 v6, p0

    invoke-static {v5, v6, v0}, Lcom/facebook/ads/redexgen/X/DJ;->A0B(ILcom/facebook/ads/redexgen/X/IM;Z)Z

    .line 26471
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A0L()J

    move-result-wide v7

    .line 26472
    .local v0, "version":J
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v9

    .line 26473
    .local v2, "channels":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A0L()J

    move-result-wide v10

    .line 26474
    .local p1, "sampleRate":J
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A0B()I

    move-result v12

    .line 26475
    .local v2, "bitrateMax":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A0B()I

    move-result v13

    .line 26476
    .local v2, "bitrateNominal":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A0B()I

    move-result v14

    .line 26477
    .local v2, "bitrateMin":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v4

    .line 26478
    .local v15, "blockSize":I
    and-int/lit8 v0, v4, 0xf

    int-to-double v2, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v15, v2

    .line 26479
    .local v0, "blockSize0":I
    and-int/lit16 v2, v4, 0xf0

    shr-int/lit8 v2, v2, 0x4

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v2, v0

    .line 26480
    .local v4, "blockSize1":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    and-int/2addr v0, v5

    if-lez v0, :cond_0

    const/16 v17, 0x1

    .line 26481
    .local v2, "framingFlag":Z
    :goto_0
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 26482
    .local v6, "data":[B
    new-instance v6, Lcom/facebook/ads/redexgen/X/DI;

    .end local v4    # "blockSize1":I
    .local p6, "blockSize1":I
    .end local v0    # "blockSize0":I
    .local v0, "blockSize0":I
    .end local v15    # "blockSize":I
    .local p8, "blockSize":I
    move/from16 v16, v2

    invoke-direct/range {v6 .. v18}, Lcom/facebook/ads/redexgen/X/DI;-><init>(JIJIIIIIZ[B)V

    return-object v6

    .line 26483
    :cond_0
    const/16 v17, 0x0

    goto :goto_0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/DJ;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x37

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x1e2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/DJ;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x23t
        0x1at
        0x7t
        0x17t
        0x1ct
        0x6t
        0x20t
        0x1t
        0x1ct
        0x19t
        0x4at
        0x57t
        0x5ft
        0x4at
        0x4ct
        0x5bt
        0x4at
        0x4bt
        0xft
        0x4ct
        0x47t
        0x4et
        0x5dt
        0x4et
        0x4ct
        0x5bt
        0x4at
        0x5dt
        0x5ct
        0xft
        0x8t
        0x59t
        0x40t
        0x5dt
        0x4dt
        0x46t
        0x5ct
        0x8t
        0x64t
        0x79t
        0x71t
        0x64t
        0x62t
        0x75t
        0x64t
        0x65t
        0x21t
        0x62t
        0x6et
        0x65t
        0x64t
        0x21t
        0x63t
        0x6et
        0x6et
        0x6at
        0x21t
        0x75t
        0x6et
        0x21t
        0x72t
        0x75t
        0x60t
        0x73t
        0x75t
        0x21t
        0x76t
        0x68t
        0x75t
        0x69t
        0x21t
        0x5at
        0x31t
        0x79t
        0x34t
        0x37t
        0x2dt
        0x21t
        0x31t
        0x79t
        0x35t
        0x32t
        0x2dt
        0x21t
        0x31t
        0x79t
        0x35t
        0x33t
        0x5ct
        0x21t
        0x60t
        0x75t
        0x21t
        0x58t
        0x45t
        0x4dt
        0x58t
        0x5et
        0x49t
        0x58t
        0x59t
        0x1dt
        0x55t
        0x58t
        0x5ct
        0x59t
        0x58t
        0x4ft
        0x1dt
        0x49t
        0x44t
        0x4dt
        0x58t
        0x1dt
        0x2ft
        0x25t
        0x26t
        0x26t
        0x3bt
        0x69t
        0x3dt
        0x30t
        0x39t
        0x2ct
        0x69t
        0x2et
        0x3bt
        0x2ct
        0x28t
        0x3dt
        0x2ct
        0x3bt
        0x69t
        0x3dt
        0x21t
        0x28t
        0x27t
        0x69t
        0x78t
        0x69t
        0x27t
        0x26t
        0x3dt
        0x69t
        0x2dt
        0x2ct
        0x2at
        0x26t
        0x2dt
        0x28t
        0x2bt
        0x25t
        0x2ct
        0x73t
        0x69t
        0x14t
        0x0t
        0x13t
        0x1ft
        0x1bt
        0x1ct
        0x15t
        0x52t
        0x10t
        0x1bt
        0x6t
        0x52t
        0x13t
        0x14t
        0x6t
        0x17t
        0x0t
        0x52t
        0x1ft
        0x1dt
        0x16t
        0x17t
        0x1t
        0x52t
        0x1ct
        0x1dt
        0x6t
        0x52t
        0x1t
        0x17t
        0x6t
        0x52t
        0x13t
        0x1t
        0x52t
        0x17t
        0xat
        0x2t
        0x17t
        0x11t
        0x6t
        0x17t
        0x16t
        0x57t
        0x43t
        0x50t
        0x5ct
        0x58t
        0x5ft
        0x56t
        0x11t
        0x53t
        0x58t
        0x45t
        0x11t
        0x54t
        0x49t
        0x41t
        0x54t
        0x52t
        0x45t
        0x54t
        0x55t
        0x11t
        0x45t
        0x5et
        0x11t
        0x53t
        0x54t
        0x11t
        0x42t
        0x54t
        0x45t
        0x42t
        0x41t
        0x41t
        0x45t
        0x5bt
        0x5et
        0xet
        0x5at
        0x57t
        0x5et
        0x4bt
        0xet
        0x49t
        0x5ct
        0x4bt
        0x4ft
        0x5at
        0x4bt
        0x5ct
        0xet
        0x5at
        0x46t
        0x4ft
        0x40t
        0xet
        0x1ct
        0xet
        0x40t
        0x41t
        0x5at
        0xet
        0x4at
        0x4bt
        0x4dt
        0x41t
        0x4at
        0x4ft
        0x4ct
        0x42t
        0x4bt
        0x14t
        0xet
        0x26t
        0x2at
        0x3bt
        0x3bt
        0x22t
        0x25t
        0x2ct
        0x6bt
        0x3ft
        0x32t
        0x3bt
        0x2et
        0x6bt
        0x24t
        0x3ft
        0x23t
        0x2et
        0x39t
        0x6bt
        0x3ft
        0x23t
        0x2at
        0x25t
        0x6bt
        0x7bt
        0x6bt
        0x25t
        0x24t
        0x3ft
        0x6bt
        0x38t
        0x3et
        0x3bt
        0x3bt
        0x24t
        0x39t
        0x3ft
        0x2et
        0x2ft
        0x71t
        0x6bt
        0x29t
        0x35t
        0x38t
        0x3at
        0x3ct
        0x31t
        0x36t
        0x35t
        0x3dt
        0x3ct
        0x2bt
        0x79t
        0x36t
        0x3ft
        0x79t
        0x2dt
        0x30t
        0x34t
        0x3ct
        0x79t
        0x3dt
        0x36t
        0x34t
        0x38t
        0x30t
        0x37t
        0x79t
        0x2dt
        0x2bt
        0x38t
        0x37t
        0x2at
        0x3ft
        0x36t
        0x2bt
        0x34t
        0x2at
        0x79t
        0x37t
        0x36t
        0x2dt
        0x79t
        0x23t
        0x3ct
        0x2bt
        0x36t
        0x3ct
        0x3dt
        0x79t
        0x36t
        0x2ct
        0x2dt
        0x54t
        0x43t
        0x55t
        0x4ft
        0x42t
        0x53t
        0x43t
        0x72t
        0x5ft
        0x56t
        0x43t
        0x6t
        0x41t
        0x54t
        0x43t
        0x47t
        0x52t
        0x43t
        0x54t
        0x6t
        0x52t
        0x4et
        0x47t
        0x48t
        0x6t
        0x14t
        0x6t
        0x4ft
        0x55t
        0x6t
        0x48t
        0x49t
        0x52t
        0x6t
        0x42t
        0x43t
        0x45t
        0x49t
        0x42t
        0x47t
        0x44t
        0x4at
        0x43t
        0x71t
        0x6at
        0x25t
        0x77t
        0x60t
        0x76t
        0x60t
        0x77t
        0x73t
        0x60t
        0x61t
        0x25t
        0x67t
        0x6ct
        0x71t
        0x76t
        0x25t
        0x68t
        0x70t
        0x76t
        0x71t
        0x25t
        0x67t
        0x60t
        0x25t
        0x7ft
        0x60t
        0x77t
        0x6at
        0x25t
        0x64t
        0x63t
        0x71t
        0x60t
        0x77t
        0x25t
        0x68t
        0x64t
        0x75t
        0x75t
        0x6ct
        0x6bt
        0x62t
        0x25t
        0x66t
        0x6at
        0x70t
        0x75t
        0x69t
        0x6ct
        0x6bt
        0x62t
        0x25t
        0x76t
        0x71t
        0x60t
        0x75t
        0x76t
        0x3t
        0x18t
        0x18t
        0x57t
        0x4t
        0x1ft
        0x18t
        0x5t
        0x3t
        0x57t
        0x1ft
        0x12t
        0x16t
        0x13t
        0x12t
        0x5t
        0x4dt
        0x57t
    .end array-data
.end method

.method public static A07()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "97CkWcXqrjyz7Qw2gcwWTf0UsRxLJkLY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "KmKspjn8yBhlsuKfHc5dD1By4HqwQES7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tM7dEAyUMmHTAlM7QEv8AsYa9vZW08DW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "cnFzSmdUdmsM2SVrr3BadDXsi4nDpClW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "tMN7ldEkNAphgvj5y1u3W8bdaUauudV5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "yEIP5bnoN3ttum2IDgG23FKNyE9RzpP8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "N0hhc3G9NfQEzjT9vQvNmE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ceiH1Z9CkPvfm4IJnpqvFzCjzC6OBPie"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/DJ;->A01:[Ljava/lang/String;

    return-void
.end method

.method public static A08(ILcom/facebook/ads/redexgen/X/DD;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 26484
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)I

    move-result v6

    const/4 v5, 0x1

    add-int/2addr v6, v5

    .line 26485
    .local p0, "mappingsCount":I
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v4, v6, :cond_7

    .line 26486
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)I

    move-result v7

    .line 26487
    .local v6, "mappingType":I
    if-eqz v7, :cond_1

    .line 26488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x10e

    const/16 v1, 0x29

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26489
    .end local v6    # "mappingType":I
    .end local v5
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 26490
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/DD;->A04()Z

    move-result v0

    const/4 v7, 0x4

    if-eqz v0, :cond_2

    .line 26491
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)I

    move-result v3

    add-int/2addr v3, v5

    .line 26492
    .local v5, "submaps":I
    .restart local v5    # "submaps":I
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/DD;->A04()Z

    move-result v8

    sget-object v1, Lcom/facebook/ads/redexgen/X/DJ;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/DJ;->A01:[Ljava/lang/String;

    const-string v1, "2d5iZcFzMvct5JxqCcZ0JFUoYSVZwGiZ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "NTut6iZFc5ITOEQfsc6CPFa8BEeWuqD1"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/16 v2, 0x8

    if-eqz v8, :cond_3

    .line 26493
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)I

    move-result v8

    add-int/2addr v8, v5

    .line 26494
    .local v4, "couplingSteps":I
    const/4 v1, 0x0

    .local v7, "j":I
    :goto_2
    if-ge v1, v8, :cond_3

    .line 26495
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DJ;->A00(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)V

    .line 26496
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DJ;->A00(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)V

    .line 26497
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 26498
    .end local v5    # "submaps":I
    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    .line 26499
    .end local v4    # "couplingSteps":I
    .end local v7    # "j":I
    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)I

    move-result v0

    if-nez v0, :cond_5

    .line 26500
    if-le v3, v5, :cond_4

    .line 26501
    const/4 v0, 0x0

    .local v4, "j":I
    :goto_3
    if-ge v0, p0, :cond_4

    .line 26502
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)V

    .line 26503
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 26504
    .end local v4    # "j":I
    :cond_4
    const/4 v0, 0x0

    .local v6, "j":I
    :goto_4
    if-ge v0, v3, :cond_0

    .line 26505
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)V

    .line 26506
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)V

    .line 26507
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)V

    .line 26508
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 26509
    .restart local v6    # "j":I
    .restart local v5    # "submaps":I
    :cond_5
    const/16 v2, 0x196

    const/16 v1, 0x3a

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DJ;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 26510
    .end local v0    # "i":I
    .end local v6    # "j":I
    .end local v5    # "submaps":I
    :cond_7
    return-void
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/DD;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 26511
    const/4 v9, 0x6

    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)I

    move-result v8

    const/4 v7, 0x1

    add-int/2addr v8, v7

    .line 26512
    .local v9, "floorCount":I
    const/4 v6, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v6, v8, :cond_a

    .line 26513
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)I

    move-result v4

    .line 26514
    .local v6, "floorType":I
    const/4 v12, 0x4

    const/16 v3, 0x8

    if-eqz v4, :cond_7

    if-ne v4, v7, :cond_9

    .line 26515
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)I

    move-result v11

    .line 26516
    .local v8, "partitions":I
    const/4 v2, -0x1

    .line 26517
    .local v12, "maximumClass":I
    new-array v10, v11, [I

    .line 26518
    .local v3, "partitionClassList":[I
    const/4 v1, 0x0

    .local v0, "j":I
    :goto_1
    if-ge v1, v11, :cond_1

    .line 26519
    invoke-virtual {p0, v12}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)I

    move-result v0

    aput v0, v10, v1

    .line 26520
    aget v0, v10, v1

    if-le v0, v2, :cond_0

    .line 26521
    aget v2, v10, v1

    .line 26522
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 26523
    .end local v0    # "j":I
    :cond_1
    add-int/lit8 v0, v2, 0x1

    new-array v5, v0, [I

    .line 26524
    .local v0, "classDimensions":[I
    const/4 v4, 0x0

    .local v11, "j":I
    :goto_2
    array-length v14, v5

    const/4 v2, 0x2

    sget-object v13, Lcom/facebook/ads/redexgen/X/DJ;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v13, v0

    const/4 v0, 0x0

    aget-object v13, v13, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v13, Lcom/facebook/ads/redexgen/X/DJ;->A01:[Ljava/lang/String;

    const-string v1, "G5LXKc5ovtw5smiaOglq2UN4xBS1bXIF"

    const/4 v0, 0x5

    aput-object v1, v13, v0

    if-ge v4, v14, :cond_5

    .line 26525
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)I

    move-result v0

    add-int/2addr v0, v7

    aput v0, v5, v4

    .line 26526
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)I

    move-result v2

    .line 26527
    .local v2, "classSubclasses":I
    if-lez v2, :cond_3

    .line 26528
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)V

    .line 26529
    :cond_3
    const/4 v1, 0x0

    .local v10, "k":I
    :goto_3
    shl-int v0, v7, v2

    if-ge v1, v0, :cond_4

    .line 26530
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)V

    .line 26531
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 26532
    .end local v2    # "classSubclasses":I
    .end local v10    # "k":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 26533
    .end local v11    # "j":I
    :cond_5
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)V

    .line 26534
    invoke-virtual {p0, v12}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)I

    move-result v4

    .line 26535
    .local v0, "rangeBits":I
    const/4 v3, 0x0

    .line 26536
    .local v4, "count":I
    const/4 v2, 0x0

    .restart local v11    # "j":I
    const/4 v1, 0x0

    .local v2, "k":I
    :goto_4
    if-ge v2, v11, :cond_8

    .line 26537
    aget v0, v10, v2

    .line 26538
    .local v10, "idx":I
    aget v0, v5, v0

    add-int/2addr v3, v0

    .line 26539
    :goto_5
    if-ge v1, v3, :cond_6

    .line 26540
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)V

    .line 26541
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 26542
    .end local v10    # "idx":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 26543
    :cond_7
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)V

    .line 26544
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)V

    .line 26545
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)V

    .line 26546
    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)V

    .line 26547
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)V

    .line 26548
    invoke-virtual {p0, v12}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)I

    move-result v1

    add-int/2addr v1, v7

    .line 26549
    .local v8, "floorNumberOfBooks":I
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_6
    if-ge v0, v1, :cond_8

    .line 26550
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)V

    .line 26551
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 26552
    .end local v8    # "floorNumberOfBooks":I
    .end local v6    # "floorType":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 26553
    .end local v8
    .end local v0    # "j":I
    .end local v4    # "count":I
    .end local v12    # "maximumClass":I
    .end local v3    # "partitionClassList":[I
    .end local v0
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x72

    const/16 v1, 0x29

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26554
    .end local v7    # "i":I
    :cond_a
    return-void
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/DD;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 26555
    const/4 v9, 0x6

    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)I

    move-result v8

    const/4 v10, 0x1

    add-int/2addr v8, v10

    .line 26556
    .local v9, "residueCount":I
    const/4 v7, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v7, v8, :cond_6

    .line 26557
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)I

    move-result v1

    .line 26558
    .local v8, "residueType":I
    const/4 v0, 0x2

    if-gt v1, v0, :cond_5

    .line 26559
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)V

    .line 26560
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)V

    .line 26561
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)V

    .line 26562
    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)I

    move-result v6

    add-int/2addr v6, v10

    .line 26563
    .local v7, "classifications":I
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)V

    .line 26564
    new-array v4, v6, [I

    .line 26565
    .local v1, "cascade":[I
    const/4 v3, 0x0

    .local v0, "j":I
    :goto_1
    if-ge v3, v6, :cond_1

    .line 26566
    const/4 v2, 0x0

    .line 26567
    .local v0, "highBits":I
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)I

    move-result v1

    .line 26568
    .local v6, "lowBits":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DD;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26569
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)I

    move-result v2

    .line 26570
    :cond_0
    mul-int/lit8 v0, v2, 0x8

    add-int/2addr v0, v1

    aput v0, v4, v3

    .line 26571
    .end local v0    # "highBits":I
    .end local v6    # "lowBits":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 26572
    .end local v0
    :cond_1
    const/4 v3, 0x0

    .restart local v0    # "highBits":I
    :goto_2
    if-ge v3, v6, :cond_4

    .line 26573
    const/4 v2, 0x0

    .local v0, "k":I
    :goto_3
    if-ge v2, v5, :cond_3

    .line 26574
    aget v1, v4, v3

    shl-int v0, v10, v2

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    .line 26575
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)V

    .line 26576
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 26577
    .end local v0    # "k":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 26578
    .end local v8    # "residueType":I
    .end local v7    # "classifications":I
    .end local v1    # "cascade":[I
    .end local v0
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 26579
    .restart local v8    # "residueType":I
    :cond_5
    const/16 v2, 0x16b

    const/16 v1, 0x2b

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DJ;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26580
    .end local v10    # "i":I
    .end local v8    # "residueType":I
    :cond_6
    return-void
.end method

.method public static A0B(ILcom/facebook/ads/redexgen/X/IM;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 26581
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v1

    const/4 v2, 0x0

    const/4 v0, 0x7

    if-ge v1, v0, :cond_1

    .line 26582
    if-eqz p2, :cond_0

    .line 26583
    return v2

    .line 26584
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1d0

    const/16 v1, 0x12

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26585
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    if-eq v0, p0, :cond_3

    .line 26586
    if-eqz p2, :cond_2

    .line 26587
    return v2

    .line 26588
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5d

    const/16 v1, 0x15

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26589
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v1

    const/16 v0, 0x76

    if-ne v1, v0, :cond_4

    .line 26590
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v1

    const/16 v0, 0x6f

    if-ne v1, v0, :cond_4

    .line 26591
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v1

    const/16 v0, 0x72

    if-ne v1, v0, :cond_4

    .line 26592
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v1

    const/16 v0, 0x62

    if-ne v1, v0, :cond_4

    .line 26593
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v1

    const/16 v0, 0x69

    if-ne v1, v0, :cond_4

    .line 26594
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_6

    .line 26595
    :cond_4
    if-eqz p2, :cond_5

    .line 26596
    return v2

    .line 26597
    :cond_5
    const/16 v2, 0xa

    const/16 v1, 0x1c

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DJ;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26598
    :cond_6
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/DJ;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x16

    if-eq v1, v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/DJ;->A01:[Ljava/lang/String;

    const-string v1, "3PFcydRg4Lp36gDWvcJwdxiXGhHOWBjb"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "aGBtdcQRGSwkEsynEcaJAL8zRbeII6kr"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/DD;)[Lcom/facebook/ads/redexgen/X/DH;
    .locals 8

    .line 26599
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)I

    move-result v0

    add-int/lit8 v7, v0, 0x1

    .line 26600
    .local p0, "modeCount":I
    new-array v6, v7, [Lcom/facebook/ads/redexgen/X/DH;

    .line 26601
    .local v0, "modes":[Lcom/facebook/ads/redexgen/X/DH;
    const/4 v5, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 26602
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DD;->A04()Z

    move-result v4

    .line 26603
    .local v7, "blockFlag":Z
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)I

    move-result v3

    .line 26604
    .local v5, "windowType":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)I

    move-result v2

    .line 26605
    .local v6, "transformType":I
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)I

    move-result v1

    .line 26606
    .local v4, "mapping":I
    new-instance v0, Lcom/facebook/ads/redexgen/X/DH;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/DH;-><init>(ZIII)V

    aput-object v0, v6, v5

    .line 26607
    .end local v7    # "blockFlag":Z
    .end local v6    # "transformType":I
    .end local v5    # "windowType":I
    .end local v4    # "mapping":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 26608
    .end local v0    # "i":I
    :cond_0
    return-object v6
.end method

.method public static A0D(Lcom/facebook/ads/redexgen/X/IM;I)[Lcom/facebook/ads/redexgen/X/DH;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 26609
    const/4 v1, 0x5

    const/4 v0, 0x0

    invoke-static {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/DJ;->A0B(ILcom/facebook/ads/redexgen/X/IM;Z)Z

    .line 26610
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 26611
    .local p0, "numberOfBooks":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    new-instance v3, Lcom/facebook/ads/redexgen/X/DD;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/DD;-><init>([B)V

    .line 26612
    .local p1, "bitArray":Lcom/facebook/ads/redexgen/X/DD;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)V

    .line 26613
    const/4 v0, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 26614
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/DJ;->A02(Lcom/facebook/ads/redexgen/X/DD;)Lcom/facebook/ads/redexgen/X/DF;

    .line 26615
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26616
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x6

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 26617
    .local v1, "timeCount":I
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 26618
    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/DD;->A02(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 26619
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 26620
    :cond_1
    const/16 v2, 0x137

    const/16 v1, 0x34

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DJ;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26621
    .end local v0    # "i":I
    :cond_2
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/DJ;->A09(Lcom/facebook/ads/redexgen/X/DD;)V

    .line 26622
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/DJ;->A0A(Lcom/facebook/ads/redexgen/X/DD;)V

    .line 26623
    invoke-static {p1, v3}, Lcom/facebook/ads/redexgen/X/DJ;->A08(ILcom/facebook/ads/redexgen/X/DD;)V

    .line 26624
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/DJ;->A0C(Lcom/facebook/ads/redexgen/X/DD;)[Lcom/facebook/ads/redexgen/X/DH;

    move-result-object v1

    .line 26625
    .local v0, "modes":[Lcom/facebook/ads/redexgen/X/DH;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/DD;->A04()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26626
    return-object v1

    .line 26627
    :cond_3
    const/16 v2, 0x9b

    const/16 v1, 0x2b

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DJ;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method
