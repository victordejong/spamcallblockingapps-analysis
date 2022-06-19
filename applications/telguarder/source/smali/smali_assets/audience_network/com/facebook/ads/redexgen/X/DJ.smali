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

    .line 26527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26528
    return-void
.end method

.method public static A00(I)I
    .locals 1

    .line 26529
    const/4 v0, 0x0

    .line 26530
    .local p0, "val":I
    :goto_0
    if-lez p0, :cond_0

    .line 26531
    add-int/lit8 v0, v0, 0x1

    .line 26532
    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 26533
    :cond_0
    return v0
.end method

.method public static A01(JJ)J
    .locals 6

    .line 26534
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

    .line 26535
    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)I

    move-result v1

    const v0, 0x564342

    if-ne v1, v0, :cond_b

    .line 26536
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)I

    move-result v7

    .line 26537
    .local v2, "dimensions":I
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)I

    move-result v8

    .line 26538
    .local p0, "entries":I
    new-array v9, v8, [J

    .line 26539
    .local v11, "lengthMap":[J
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DD;->A05()Z

    move-result v11

    .line 26540
    .local v4, "isOrdered":Z
    const/4 v4, 0x5

    const/4 v2, 0x1

    if-nez v11, :cond_2

    .line 26541
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DD;->A05()Z

    move-result v5

    .line 26542
    .local v0, "isSparse":Z
    const/4 v3, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v9

    if-ge v3, v0, :cond_4

    .line 26543
    if-eqz v5, :cond_1

    .line 26544
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DD;->A05()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26545
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)I

    move-result v0

    add-int/2addr v0, v2

    int-to-long v0, v0

    aput-wide v0, v9, v3

    .line 26546
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 26547
    :cond_0
    const-wide/16 v0, 0x0

    aput-wide v0, v9, v3

    goto :goto_1

    .line 26548
    :cond_1
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)I

    move-result v0

    add-int/2addr v0, v2

    int-to-long v0, v0

    aput-wide v0, v9, v3

    goto :goto_1

    .line 26549
    :cond_2
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)I

    move-result v6

    add-int/2addr v6, v2

    .line 26550
    .local v1, "length":I
    const/4 v5, 0x0

    .local v0, "i":I
    :goto_2
    array-length v0, v9

    if-ge v5, v0, :cond_4

    .line 26551
    sub-int v0, v8, v5

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DJ;->A00(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)I

    move-result v4

    .line 26552
    .local v7, "num":I
    const/4 v3, 0x0

    .local v8, "j":I
    :goto_3
    if-ge v3, v4, :cond_3

    array-length v0, v9

    if-ge v5, v0, :cond_3

    .line 26553
    int-to-long v0, v6

    aput-wide v0, v9, v5

    .line 26554
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 26555
    .end local v8    # "j":I
    .end local v7    # "num":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 26556
    goto :goto_2

    .line 26557
    .end local v1    # "length":I
    .end local v0    # "i":I
    :cond_4
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)I

    move-result v10

    .line 26558
    .local v2, "lookupType":I
    const/4 v0, 0x2

    if-gt v10, v0, :cond_a

    .line 26559
    if-eq v10, v2, :cond_5

    if-ne v10, v0, :cond_7

    .line 26560
    :cond_5
    const/16 v4, 0x20

    sget-object v3, Lcom/facebook/ads/redexgen/X/DJ;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v3, v0

    const/4 v0, 0x5

    aget-object v3, v3, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v3, Lcom/facebook/ads/redexgen/X/DJ;->A01:[Ljava/lang/String;

    const-string v1, "YFSkq87xrBqiDKoEppEeCwayOvWD8HLZ"

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const-string v1, "ZZ338ecmf4Dxubol9Ot6XCeaXlBCWypj"

    const/4 v0, 0x5

    aput-object v1, v3, v0

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/DD;->A04(I)V

    .line 26561
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/DD;->A04(I)V

    .line 26562
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)I

    move-result v4

    add-int/2addr v4, v2

    .line 26563
    .local v1, "valueBits":I
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/DD;->A04(I)V

    .line 26564
    if-ne v10, v2, :cond_9

    .line 26565
    if-eqz v7, :cond_8

    .line 26566
    int-to-long v2, v8

    int-to-long v0, v7

    invoke-static {v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/DJ;->A01(JJ)J

    move-result-wide v2

    .line 26567
    .local v0, "lookupValuesCount":J
    .restart local v0    # "lookupValuesCount":J
    :goto_4
    int-to-long v0, v4

    mul-long/2addr v0, v2

    long-to-int v2, v0

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/DD;->A04(I)V

    .line 26568
    .end local v1    # "valueBits":I
    .end local v0    # "lookupValuesCount":J
    :cond_7
    new-instance v6, Lcom/facebook/ads/redexgen/X/DF;

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/DF;-><init>(II[JIZ)V

    return-object v6

    .line 26569
    .end local v0
    :cond_8
    const-wide/16 v2, 0x0

    .restart local v0    # "lookupValuesCount":J
    goto :goto_4

    .line 26570
    .end local v0    # "lookupValuesCount":J
    :cond_9
    int-to-long v2, v8

    int-to-long v0, v7

    mul-long/2addr v2, v0

    goto :goto_4

    .line 26571
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xe4

    const/16 v1, 0x2a

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26572
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

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26573
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DD;->A02()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/DG;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 26574
    const/4 v1, 0x3

    const/4 v0, 0x0

    invoke-static {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/DJ;->A0B(ILcom/facebook/ads/redexgen/X/IM;Z)Z

    .line 26575
    const/4 v3, 0x7

    .line 26576
    .local p0, "length":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0L()J

    move-result-wide v1

    long-to-int v0, v1

    .line 26577
    .local v0, "len":I
    add-int/lit8 v1, v3, 0x4

    .line 26578
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0T(I)Ljava/lang/String;

    move-result-object v7

    .line 26579
    .local v1, "vendor":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    .line 26580
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0L()J

    move-result-wide v2

    .line 26581
    .local v3, "commentListLen":J
    long-to-int v0, v2

    new-array v6, v0, [Ljava/lang/String;

    .line 26582
    .local v5, "comments":[Ljava/lang/String;
    add-int/lit8 v1, v1, 0x4

    .line 26583
    const/4 v8, 0x0

    .local v0, "i":I
    :goto_0
    int-to-long v4, v8

    sget-object v9, Lcom/facebook/ads/redexgen/X/DJ;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v9, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v0, 0xb

    if-eq v9, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v10, Lcom/facebook/ads/redexgen/X/DJ;->A01:[Ljava/lang/String;

    const-string v9, "IJ0shhaNP34sPoFl7v3EsJvyrrZu0h5S"

    const/4 v0, 0x1

    aput-object v9, v10, v0

    cmp-long v0, v4, v2

    if-gez v0, :cond_1

    .line 26584
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0L()J

    move-result-wide v4

    long-to-int v0, v4

    .line 26585
    add-int/lit8 v1, v1, 0x4

    .line 26586
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0T(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    .line 26587
    aget-object v0, v6, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    .line 26588
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 26589
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 26590
    add-int/lit8 v1, v1, 0x1

    .line 26591
    new-instance v0, Lcom/facebook/ads/redexgen/X/DG;

    invoke-direct {v0, v7, v6, v1}, Lcom/facebook/ads/redexgen/X/DG;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    return-object v0

    .line 26592
    :cond_2
    const/16 v2, 0xc6

    const/16 v1, 0x1e

    const/16 v0, 0x76

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

    .line 26593
    const/4 v0, 0x0

    const/4 v5, 0x1

    move-object/from16 v6, p0

    invoke-static {v5, v6, v0}, Lcom/facebook/ads/redexgen/X/DJ;->A0B(ILcom/facebook/ads/redexgen/X/IM;Z)Z

    .line 26594
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A0L()J

    move-result-wide v7

    .line 26595
    .local v0, "version":J
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v9

    .line 26596
    .local v2, "channels":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A0L()J

    move-result-wide v10

    .line 26597
    .local p1, "sampleRate":J
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A0B()I

    move-result v12

    .line 26598
    .local v2, "bitrateMax":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A0B()I

    move-result v13

    .line 26599
    .local v2, "bitrateNominal":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A0B()I

    move-result v14

    .line 26600
    .local v2, "bitrateMin":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v4

    .line 26601
    .local v15, "blockSize":I
    and-int/lit8 v0, v4, 0xf

    int-to-double v2, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v15, v2

    .line 26602
    .local v0, "blockSize0":I
    and-int/lit16 v2, v4, 0xf0

    shr-int/lit8 v2, v2, 0x4

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v2, v0

    .line 26603
    .local v4, "blockSize1":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    and-int/2addr v0, v5

    if-lez v0, :cond_0

    const/16 v17, 0x1

    .line 26604
    .local v2, "framingFlag":Z
    :goto_0
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 26605
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

    .line 26606
    :cond_0
    const/16 v17, 0x0

    goto :goto_0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/DJ;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v3, v0, -0x7a

    sget-object v1, Lcom/facebook/ads/redexgen/X/DJ;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/DJ;->A01:[Ljava/lang/String;

    const-string v1, "wf8dKYWZytWp"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    int-to-byte v0, v3

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A06()V
    .locals 4

    const/16 v3, 0x1e2

    sget-object v1, Lcom/facebook/ads/redexgen/X/DJ;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/DJ;->A01:[Ljava/lang/String;

    const-string v1, "6DY1Wyx3SyvV"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/DJ;->A00:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x3at
        0x53t
        0x56t
        0x46t
        0x4dt
        0x57t
        0x39t
        0x58t
        0x4dt
        0x50t
        0x45t
        0x58t
        0x50t
        0x45t
        0x43t
        0x54t
        0x45t
        0x44t
        0x0t
        0x43t
        0x48t
        0x41t
        0x52t
        0x41t
        0x43t
        0x54t
        0x45t
        0x52t
        0x53t
        0x0t
        0x7t
        0x56t
        0x4ft
        0x52t
        0x42t
        0x49t
        0x53t
        0x7t
        0xct
        0x1ft
        0x17t
        0xct
        0xat
        0x1bt
        0xct
        0xbt
        -0x39t
        0xat
        0x16t
        0xbt
        0xct
        -0x39t
        0x9t
        0x16t
        0x16t
        0x12t
        -0x39t
        0x1bt
        0x16t
        -0x39t
        0x1at
        0x1bt
        0x8t
        0x19t
        0x1bt
        -0x39t
        0x1et
        0x10t
        0x1bt
        0xft
        -0x39t
        0x2t
        -0x29t
        0x1ft
        -0x24t
        -0x23t
        -0x2dt
        -0x39t
        -0x29t
        0x1ft
        -0x25t
        -0x26t
        -0x2dt
        -0x39t
        -0x29t
        0x1ft
        -0x25t
        -0x27t
        0x4t
        -0x39t
        0x8t
        0x1bt
        -0x39t
        -0x6t
        0xdt
        0x5t
        -0x6t
        -0x8t
        0x9t
        -0x6t
        -0x7t
        -0x4bt
        -0x3t
        -0x6t
        -0xat
        -0x7t
        -0x6t
        0x7t
        -0x4bt
        0x9t
        0xet
        0x5t
        -0x6t
        -0x4bt
        0x1ct
        0x22t
        0x25t
        0x25t
        0x28t
        -0x2at
        0x2at
        0x2ft
        0x26t
        0x1bt
        -0x2at
        0x1dt
        0x28t
        0x1bt
        0x17t
        0x2at
        0x1bt
        0x28t
        -0x2at
        0x2at
        0x1et
        0x17t
        0x24t
        -0x2at
        -0x19t
        -0x2at
        0x24t
        0x25t
        0x2at
        -0x2at
        0x1at
        0x1bt
        0x19t
        0x25t
        0x1at
        0x17t
        0x18t
        0x22t
        0x1bt
        -0x10t
        -0x2at
        -0xbt
        0x1t
        -0x10t
        -0x4t
        -0x8t
        -0x3t
        -0xat
        -0x51t
        -0xft
        -0x8t
        0x3t
        -0x51t
        -0x10t
        -0xbt
        0x3t
        -0xct
        0x1t
        -0x51t
        -0x4t
        -0x2t
        -0xdt
        -0xct
        0x2t
        -0x51t
        -0x3t
        -0x2t
        0x3t
        -0x51t
        0x2t
        -0xct
        0x3t
        -0x51t
        -0x10t
        0x2t
        -0x51t
        -0xct
        0x7t
        -0x1t
        -0xct
        -0xet
        0x3t
        -0xct
        -0xdt
        0x56t
        0x62t
        0x51t
        0x5dt
        0x59t
        0x5et
        0x57t
        0x10t
        0x52t
        0x59t
        0x64t
        0x10t
        0x55t
        0x68t
        0x60t
        0x55t
        0x53t
        0x64t
        0x55t
        0x54t
        0x10t
        0x64t
        0x5ft
        0x10t
        0x52t
        0x55t
        0x10t
        0x63t
        0x55t
        0x64t
        0x23t
        0x26t
        0x26t
        0x22t
        0x2ct
        0x27t
        -0x29t
        0x2bt
        0x30t
        0x27t
        0x1ct
        -0x29t
        0x1et
        0x29t
        0x1ct
        0x18t
        0x2bt
        0x1ct
        0x29t
        -0x29t
        0x2bt
        0x1ft
        0x18t
        0x25t
        -0x29t
        -0x17t
        -0x29t
        0x25t
        0x26t
        0x2bt
        -0x29t
        0x1bt
        0x1ct
        0x1at
        0x26t
        0x1bt
        0x18t
        0x19t
        0x23t
        0x1ct
        -0xft
        -0x29t
        -0x13t
        -0x1ft
        -0x10t
        -0x10t
        -0x17t
        -0x12t
        -0x19t
        -0x60t
        -0xct
        -0x7t
        -0x10t
        -0x1bt
        -0x60t
        -0x11t
        -0xct
        -0x18t
        -0x1bt
        -0xet
        -0x60t
        -0xct
        -0x18t
        -0x1ft
        -0x12t
        -0x60t
        -0x50t
        -0x60t
        -0x12t
        -0x11t
        -0xct
        -0x60t
        -0xdt
        -0xbt
        -0x10t
        -0x10t
        -0x11t
        -0xet
        -0xct
        -0x1bt
        -0x1ct
        -0x46t
        -0x60t
        0x58t
        0x54t
        0x49t
        0x4bt
        0x4dt
        0x50t
        0x57t
        0x54t
        0x4ct
        0x4dt
        0x5at
        0x8t
        0x57t
        0x4et
        0x8t
        0x5ct
        0x51t
        0x55t
        0x4dt
        0x8t
        0x4ct
        0x57t
        0x55t
        0x49t
        0x51t
        0x56t
        0x8t
        0x5ct
        0x5at
        0x49t
        0x56t
        0x5bt
        0x4et
        0x57t
        0x5at
        0x55t
        0x5bt
        0x8t
        0x56t
        0x57t
        0x5ct
        0x8t
        0x62t
        0x4dt
        0x5at
        0x57t
        0x4dt
        0x4ct
        0x8t
        0x57t
        0x5dt
        0x5ct
        0x1et
        0x11t
        0x1ft
        0x15t
        0x10t
        0x21t
        0x11t
        0x0t
        0x25t
        0x1ct
        0x11t
        -0x34t
        0x13t
        0x1et
        0x11t
        0xdt
        0x20t
        0x11t
        0x1et
        -0x34t
        0x20t
        0x14t
        0xdt
        0x1at
        -0x34t
        -0x22t
        -0x34t
        0x15t
        0x1ft
        -0x34t
        0x1at
        0x1bt
        0x20t
        -0x34t
        0x10t
        0x11t
        0xft
        0x1bt
        0x10t
        0xdt
        0xet
        0x18t
        0x11t
        0x32t
        0x2dt
        -0x22t
        0x30t
        0x23t
        0x31t
        0x23t
        0x30t
        0x34t
        0x23t
        0x22t
        -0x22t
        0x20t
        0x27t
        0x32t
        0x31t
        -0x22t
        0x2bt
        0x33t
        0x31t
        0x32t
        -0x22t
        0x20t
        0x23t
        -0x22t
        0x38t
        0x23t
        0x30t
        0x2dt
        -0x22t
        0x1ft
        0x24t
        0x32t
        0x23t
        0x30t
        -0x22t
        0x2bt
        0x1ft
        0x2et
        0x2et
        0x27t
        0x2ct
        0x25t
        -0x22t
        0x21t
        0x2dt
        0x33t
        0x2et
        0x2at
        0x27t
        0x2ct
        0x25t
        -0x22t
        0x31t
        0x32t
        0x23t
        0x2et
        0x31t
        0x26t
        0x21t
        0x21t
        -0x2et
        0x25t
        0x1at
        0x21t
        0x24t
        0x26t
        -0x2et
        0x1at
        0x17t
        0x13t
        0x16t
        0x17t
        0x24t
        -0x14t
        -0x2et
    .end array-data
.end method

.method public static A07()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "cuMQnpDvxePC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "maq0VPT5ljKs3Wo3nE0rMt538ZiFWMVd"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "RlUDt9VrZI0WEBoqRmI2UezbQb4HHQlf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "XHQw9I1IeJd"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "e7ko34fANNMf6rzrJZsq273LeACTGhJU"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Txw0B8S8iUPZGyomEGCKzpIeKDRE97cg"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Wei0YyGLF7yfQvvBdqdm8CNFgA5FcNjD"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "R3icV0Lj8UGABYyD9qi9hyPp7G8zpMlc"

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

    .line 26607
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)I

    move-result v6

    const/4 v5, 0x1

    add-int/2addr v6, v5

    .line 26608
    .local p0, "mappingsCount":I
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v4, v6, :cond_6

    .line 26609
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)I

    move-result v7

    .line 26610
    .local v6, "mappingType":I
    if-eqz v7, :cond_1

    .line 26611
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x10e

    const/16 v1, 0x29

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26612
    .end local v6    # "mappingType":I
    .end local v5
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 26613
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/DD;->A05()Z

    move-result v0

    const/4 v7, 0x4

    if-eqz v0, :cond_2

    .line 26614
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)I

    move-result v3

    add-int/2addr v3, v5

    .line 26615
    .local v5, "submaps":I
    .restart local v5    # "submaps":I
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/DD;->A05()Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_3

    .line 26616
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)I

    move-result v8

    add-int/2addr v8, v5

    .line 26617
    .local v4, "couplingSteps":I
    const/4 v1, 0x0

    .local v7, "j":I
    :goto_2
    if-ge v1, v8, :cond_3

    .line 26618
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DJ;->A00(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/DD;->A04(I)V

    .line 26619
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/DJ;->A00(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/DD;->A04(I)V

    .line 26620
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 26621
    .end local v5    # "submaps":I
    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    .line 26622
    .end local v4    # "couplingSteps":I
    .end local v7    # "j":I
    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)I

    move-result v0

    if-nez v0, :cond_5

    .line 26623
    if-le v3, v5, :cond_4

    .line 26624
    const/4 v0, 0x0

    .local v4, "j":I
    :goto_3
    if-ge v0, p0, :cond_4

    .line 26625
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/DD;->A04(I)V

    .line 26626
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 26627
    .end local v4    # "j":I
    :cond_4
    const/4 v0, 0x0

    .local v6, "j":I
    :goto_4
    if-ge v0, v3, :cond_0

    .line 26628
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/DD;->A04(I)V

    .line 26629
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/DD;->A04(I)V

    .line 26630
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/DD;->A04(I)V

    .line 26631
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 26632
    .restart local v6    # "j":I
    .restart local v5    # "submaps":I
    :cond_5
    const/16 v2, 0x196

    const/16 v1, 0x3a

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DJ;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26633
    .end local v0    # "i":I
    .end local v6    # "j":I
    .end local v5    # "submaps":I
    :cond_6
    return-void
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/DD;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 26634
    const/4 v9, 0x6

    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)I

    move-result v8

    const/4 v7, 0x1

    add-int/2addr v8, v7

    .line 26635
    .local v9, "floorCount":I
    const/4 v6, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v6, v8, :cond_a

    .line 26636
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)I

    move-result v4

    .line 26637
    .local v6, "floorType":I
    const/4 v12, 0x4

    const/16 v3, 0x8

    if-eqz v4, :cond_7

    if-ne v4, v7, :cond_9

    .line 26638
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)I

    move-result v11

    .line 26639
    .local v8, "partitions":I
    const/4 v2, -0x1

    .line 26640
    .local v12, "maximumClass":I
    new-array v10, v11, [I

    .line 26641
    .local v3, "partitionClassList":[I
    const/4 v1, 0x0

    .local v0, "j":I
    :goto_1
    if-ge v1, v11, :cond_1

    .line 26642
    invoke-virtual {p0, v12}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)I

    move-result v0

    aput v0, v10, v1

    .line 26643
    aget v0, v10, v1

    if-le v0, v2, :cond_0

    .line 26644
    aget v2, v10, v1

    .line 26645
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 26646
    .end local v0    # "j":I
    :cond_1
    add-int/lit8 v0, v2, 0x1

    new-array v5, v0, [I

    .line 26647
    .local v0, "classDimensions":[I
    const/4 v4, 0x0

    .local v11, "j":I
    :goto_2
    array-length v13, v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/DJ;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/DJ;->A01:[Ljava/lang/String;

    const-string v1, "7csiDiCDnsJQ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v1, 0x2

    if-ge v4, v13, :cond_5

    .line 26648
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)I

    move-result v0

    add-int/2addr v0, v7

    aput v0, v5, v4

    .line 26649
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)I

    move-result v2

    .line 26650
    .local v2, "classSubclasses":I
    if-lez v2, :cond_3

    .line 26651
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/DD;->A04(I)V

    .line 26652
    :cond_3
    const/4 v1, 0x0

    .local v10, "k":I
    :goto_3
    shl-int v0, v7, v2

    if-ge v1, v0, :cond_4

    .line 26653
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/DD;->A04(I)V

    .line 26654
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 26655
    .end local v2    # "classSubclasses":I
    .end local v10    # "k":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 26656
    .end local v11    # "j":I
    :cond_5
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/DD;->A04(I)V

    .line 26657
    invoke-virtual {p0, v12}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)I

    move-result v4

    .line 26658
    .local v0, "rangeBits":I
    const/4 v3, 0x0

    .line 26659
    .local v4, "count":I
    const/4 v2, 0x0

    .restart local v11    # "j":I
    const/4 v1, 0x0

    .local v2, "k":I
    :goto_4
    if-ge v2, v11, :cond_8

    .line 26660
    aget v0, v10, v2

    .line 26661
    .local v10, "idx":I
    aget v0, v5, v0

    add-int/2addr v3, v0

    .line 26662
    :goto_5
    if-ge v1, v3, :cond_6

    .line 26663
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/DD;->A04(I)V

    .line 26664
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 26665
    .end local v10    # "idx":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 26666
    :cond_7
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/DD;->A04(I)V

    .line 26667
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A04(I)V

    .line 26668
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A04(I)V

    .line 26669
    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/DD;->A04(I)V

    .line 26670
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/DD;->A04(I)V

    .line 26671
    invoke-virtual {p0, v12}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)I

    move-result v1

    add-int/2addr v1, v7

    .line 26672
    .local v8, "floorNumberOfBooks":I
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_6
    if-ge v0, v1, :cond_8

    .line 26673
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/DD;->A04(I)V

    .line 26674
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 26675
    .end local v8    # "floorNumberOfBooks":I
    .end local v6    # "floorType":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 26676
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

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26677
    .end local v7    # "i":I
    :cond_a
    return-void
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/DD;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 26678
    const/4 v10, 0x6

    invoke-virtual {p0, v10}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)I

    move-result v9

    const/4 v12, 0x1

    add-int/2addr v9, v12

    .line 26679
    .local v10, "residueCount":I
    const/4 v8, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v8, v9, :cond_7

    .line 26680
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)I

    move-result v1

    .line 26681
    .local v9, "residueType":I
    const/4 v0, 0x2

    if-gt v1, v0, :cond_6

    .line 26682
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A04(I)V

    .line 26683
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A04(I)V

    .line 26684
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A04(I)V

    .line 26685
    invoke-virtual {p0, v10}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)I

    move-result v7

    add-int/2addr v7, v12

    .line 26686
    .local v8, "classifications":I
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/DD;->A04(I)V

    .line 26687
    new-array v5, v7, [I

    .line 26688
    .local v1, "cascade":[I
    const/4 v3, 0x0

    .local v0, "j":I
    :goto_1
    if-ge v3, v7, :cond_1

    .line 26689
    const/4 v1, 0x0

    .line 26690
    .local v0, "highBits":I
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)I

    move-result v11

    .line 26691
    .local v7, "lowBits":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DD;->A05()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26692
    const/4 v4, 0x5

    sget-object v1, Lcom/facebook/ads/redexgen/X/DJ;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/DJ;->A01:[Ljava/lang/String;

    const-string v1, "IQiTcmXWQynZai4DUJfYTZbrG9do3spi"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "g8iMHDys1zLPNyJE9MuLtcZzXMNRyXLK"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)I

    move-result v1

    .line 26693
    :cond_0
    mul-int/lit8 v0, v1, 0x8

    add-int/2addr v0, v11

    aput v0, v5, v3

    .line 26694
    .end local v0    # "highBits":I
    .end local v7    # "lowBits":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 26695
    .end local v0
    :cond_1
    const/4 v4, 0x0

    .restart local v0    # "highBits":I
    :goto_2
    if-ge v4, v7, :cond_4

    .line 26696
    const/4 v3, 0x0

    .local v0, "k":I
    :goto_3
    if-ge v3, v6, :cond_3

    .line 26697
    aget v11, v5, v4

    shl-int v0, v12, v3

    and-int/2addr v11, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/DJ;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/DJ;->A01:[Ljava/lang/String;

    const-string v1, "EKqm4suZXG0"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v11, :cond_2

    .line 26698
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/DD;->A04(I)V

    .line 26699
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 26700
    .end local v0    # "k":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 26701
    .end local v9    # "residueType":I
    .end local v8    # "classifications":I
    .end local v1    # "cascade":[I
    .end local v0
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 26702
    .restart local v9    # "residueType":I
    :cond_6
    const/16 v2, 0x16b

    const/16 v1, 0x2b

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DJ;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26703
    .end local v12    # "i":I
    .end local v9    # "residueType":I
    :cond_7
    return-void
.end method

.method public static A0B(ILcom/facebook/ads/redexgen/X/IM;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 26704
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v1

    const/4 v5, 0x0

    const/4 v0, 0x7

    if-ge v1, v0, :cond_1

    .line 26705
    if-eqz p2, :cond_0

    .line 26706
    return v5

    .line 26707
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1d0

    const/16 v1, 0x12

    const/16 v0, 0x38

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

    .line 26708
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    if-eq v0, p0, :cond_3

    .line 26709
    if-eqz p2, :cond_2

    .line 26710
    return v5

    .line 26711
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5d

    const/16 v1, 0x15

    const/16 v0, 0x1b

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

    .line 26712
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/DJ;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/DJ;->A01:[Ljava/lang/String;

    const-string v1, "4QnGuZcEiJDx"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/16 v0, 0x76

    if-ne v3, v0, :cond_6

    .line 26713
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v1

    const/16 v0, 0x6f

    if-ne v1, v0, :cond_6

    .line 26714
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v1

    const/16 v0, 0x72

    if-ne v1, v0, :cond_6

    .line 26715
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v4

    const/16 v3, 0x62

    sget-object v1, Lcom/facebook/ads/redexgen/X/DJ;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_5

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/DJ;->A01:[Ljava/lang/String;

    const-string v1, "P01fDcYCHjpW"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_6

    .line 26716
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v1

    const/16 v0, 0x69

    if-ne v1, v0, :cond_6

    .line 26717
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_8

    .line 26718
    :cond_6
    if-eqz p2, :cond_7

    .line 26719
    return v5

    .line 26720
    :cond_7
    const/16 v2, 0xa

    const/16 v1, 0x1c

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DJ;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26721
    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/DD;)[Lcom/facebook/ads/redexgen/X/DH;
    .locals 8

    .line 26722
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)I

    move-result v0

    add-int/lit8 v7, v0, 0x1

    .line 26723
    .local p0, "modeCount":I
    new-array v6, v7, [Lcom/facebook/ads/redexgen/X/DH;

    .line 26724
    .local v0, "modes":[Lcom/facebook/ads/redexgen/X/DH;
    const/4 v5, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 26725
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DD;->A05()Z

    move-result v4

    .line 26726
    .local v7, "blockFlag":Z
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)I

    move-result v3

    .line 26727
    .local v5, "windowType":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)I

    move-result v2

    .line 26728
    .local v6, "transformType":I
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)I

    move-result v1

    .line 26729
    .local v4, "mapping":I
    new-instance v0, Lcom/facebook/ads/redexgen/X/DH;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/DH;-><init>(ZIII)V

    aput-object v0, v6, v5

    .line 26730
    .end local v7    # "blockFlag":Z
    .end local v6    # "transformType":I
    .end local v5    # "windowType":I
    .end local v4    # "mapping":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 26731
    .end local v0    # "i":I
    :cond_0
    return-object v6
.end method

.method public static A0D(Lcom/facebook/ads/redexgen/X/IM;I)[Lcom/facebook/ads/redexgen/X/DH;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 26732
    const/4 v1, 0x5

    const/4 v0, 0x0

    invoke-static {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/DJ;->A0B(ILcom/facebook/ads/redexgen/X/IM;Z)Z

    .line 26733
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 26734
    .local p0, "numberOfBooks":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    new-instance v4, Lcom/facebook/ads/redexgen/X/DD;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/DD;-><init>([B)V

    .line 26735
    .local p1, "bitArray":Lcom/facebook/ads/redexgen/X/DD;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/DD;->A04(I)V

    .line 26736
    const/4 v0, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 26737
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/DJ;->A02(Lcom/facebook/ads/redexgen/X/DD;)Lcom/facebook/ads/redexgen/X/DF;

    .line 26738
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26739
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x6

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)I

    move-result v0

    add-int/lit8 p0, v0, 0x1

    .line 26740
    .local v1, "timeCount":I
    const/4 v5, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v5, p0, :cond_3

    .line 26741
    const/16 v3, 0x10

    sget-object v1, Lcom/facebook/ads/redexgen/X/DJ;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/DJ;->A01:[Ljava/lang/String;

    const-string v1, "ehi3cskgJKgiYUbmgCA69qrlaPpUIgLc"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "gNiCRL1xoHEWgodUTcnYmZoNWp1yrtr5"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/DD;->A03(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 26742
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 26743
    :cond_2
    const/16 v2, 0x137

    const/16 v1, 0x34

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DJ;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26744
    .end local v0    # "i":I
    :cond_3
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/DJ;->A09(Lcom/facebook/ads/redexgen/X/DD;)V

    .line 26745
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/DJ;->A0A(Lcom/facebook/ads/redexgen/X/DD;)V

    .line 26746
    invoke-static {p1, v4}, Lcom/facebook/ads/redexgen/X/DJ;->A08(ILcom/facebook/ads/redexgen/X/DD;)V

    .line 26747
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/DJ;->A0C(Lcom/facebook/ads/redexgen/X/DD;)[Lcom/facebook/ads/redexgen/X/DH;

    move-result-object v1

    .line 26748
    .local v0, "modes":[Lcom/facebook/ads/redexgen/X/DH;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/DD;->A05()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26749
    return-object v1

    .line 26750
    :cond_4
    const/16 v2, 0x9b

    const/16 v1, 0x2b

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DJ;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method
