.class public final Lcom/facebook/ads/redexgen/X/V4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DM;


# static fields
.field public static A0H:[B

.field public static A0I:[Ljava/lang/String;

.field public static final A0J:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:J

.field public A06:J

.field public A07:Lcom/facebook/ads/redexgen/X/CS;

.field public A08:Lcom/facebook/ads/redexgen/X/CS;

.field public A09:Lcom/facebook/ads/redexgen/X/CS;

.field public A0A:Ljava/lang/String;

.field public A0B:Z

.field public A0C:Z

.field public final A0D:Lcom/facebook/ads/redexgen/X/IL;

.field public final A0E:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0F:Ljava/lang/String;

.field public final A0G:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 58473
    invoke-static {}, Lcom/facebook/ads/redexgen/X/V4;->A07()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/V4;->A06()V

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/V4;->A0J:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 58474
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/V4;-><init>(ZLjava/lang/String;)V

    .line 58475
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 2

    .line 58476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58477
    const/4 v0, 0x7

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/IL;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A0D:Lcom/facebook/ads/redexgen/X/IL;

    .line 58478
    sget-object v1, Lcom/facebook/ads/redexgen/X/V4;->A0J:[B

    const/16 v0, 0xa

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    .line 58479
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/V4;->A03()V

    .line 58480
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/V4;->A0G:Z

    .line 58481
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/V4;->A0F:Ljava/lang/String;

    .line 58482
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/facebook/ads/redexgen/X/V4;->A0H:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2b

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/V4;->A0I:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x55

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/V4;->A0I:[Ljava/lang/String;

    const-string v1, "vYrr3pOvo9pI"

    const/4 v0, 0x3

    aput-object v1, v2, v0

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

.method private A01()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 58483
    move-object/from16 v3, p0

    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/V4;->A0D:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A08(I)V

    .line 58484
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/V4;->A0C:Z

    const/4 v5, 0x4

    const/4 v4, 0x2

    if-nez v0, :cond_2

    .line 58485
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/V4;->A0D:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v8

    const/4 v2, 0x1

    add-int/2addr v8, v2

    .line 58486
    .local p0, "audioObjectType":I
    if-eq v8, v4, :cond_0

    .line 58487
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x20

    const/16 v1, 0x1c

    const/16 v0, 0x1a

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/V4;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    const/16 v1, 0x16

    const/16 v0, 0x20

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/V4;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v6, 0x16

    const/16 v1, 0xa

    const/16 v0, 0x5f

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/V4;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58488
    const/4 v8, 0x2

    .line 58489
    :cond_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/V4;->A0D:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v6

    .line 58490
    .local v0, "sampleRateIndex":I
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/V4;->A0D:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 58491
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/V4;->A0D:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 58492
    .local v5, "channelConfig":I
    invoke-static {v8, v6, v0}, Lcom/facebook/ads/redexgen/X/I1;->A08(III)[B

    move-result-object v6

    .line 58493
    .local v0, "audioSpecificConfig":[B
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/I1;->A03([B)Landroid/util/Pair;

    move-result-object v1

    .line 58494
    .local v8, "audioParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v8, v3, Lcom/facebook/ads/redexgen/X/V4;->A0A:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 58495
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 58496
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 58497
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/V4;->A0F:Ljava/lang/String;

    .line 58498
    const/16 v6, 0x4b

    const/16 v1, 0xf

    const/16 v0, 0x27

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/V4;->A00(III)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v18, v7

    invoke-static/range {v8 .. v18}, Lcom/facebook/ads/internal/exoplayer2/Format;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v8

    .line 58499
    .local v2, "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    const-wide/32 v6, 0x3d090000

    iget v0, v8, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    int-to-long v0, v0

    div-long/2addr v6, v0

    iput-wide v6, v3, Lcom/facebook/ads/redexgen/X/V4;->A05:J

    .line 58500
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/V4;->A09:Lcom/facebook/ads/redexgen/X/CS;

    invoke-interface {v0, v8}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 58501
    iput-boolean v2, v3, Lcom/facebook/ads/redexgen/X/V4;->A0C:Z

    .line 58502
    .end local p0    # "audioObjectType":I
    .end local v0    # "audioSpecificConfig":[B
    .end local v5    # "channelConfig":I
    .end local v0
    .end local v8    # "audioParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v2    # "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    :goto_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/V4;->A0D:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 58503
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/V4;->A0D:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    sub-int/2addr v0, v4

    add-int/lit8 v5, v0, -0x5

    .line 58504
    .local p0, "sampleSize":I
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/V4;->A0B:Z

    if-eqz v0, :cond_1

    .line 58505
    add-int/lit8 v5, v5, -0x2

    .line 58506
    .end local p0    # "sampleSize":I
    .local v0, "sampleSize":I
    :cond_1
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/V4;->A09:Lcom/facebook/ads/redexgen/X/CS;

    iget-wide v2, v3, Lcom/facebook/ads/redexgen/X/V4;->A05:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/V4;->A08(Lcom/facebook/ads/redexgen/X/CS;JII)V

    .line 58507
    return-void

    .line 58508
    :cond_2
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/V4;->A0D:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    goto :goto_0
.end method

.method private A02()V
    .locals 6

    .line 58509
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/V4;->A08:Lcom/facebook/ads/redexgen/X/CS;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V4;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    const/16 v0, 0xa

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 58510
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V4;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 58511
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V4;->A08:Lcom/facebook/ads/redexgen/X/CS;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    .line 58512
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0E()I

    move-result v0

    add-int/lit8 v5, v0, 0xa

    .line 58513
    const-wide/16 v2, 0x0

    const/16 v4, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/V4;->A08(Lcom/facebook/ads/redexgen/X/CS;JII)V

    .line 58514
    return-void
.end method

.method private A03()V
    .locals 1

    .line 58515
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A03:I

    .line 58516
    iput v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A00:I

    .line 58517
    const/16 v0, 0x100

    iput v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A01:I

    .line 58518
    return-void
.end method

.method private A04()V
    .locals 1

    .line 58519
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A03:I

    .line 58520
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A00:I

    .line 58521
    return-void
.end method

.method private A05()V
    .locals 2

    .line 58522
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A03:I

    .line 58523
    sget-object v0, Lcom/facebook/ads/redexgen/X/V4;->A0J:[B

    array-length v0, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A00:I

    .line 58524
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/V4;->A02:I

    .line 58525
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 58526
    return-void
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x5a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/V4;->A0H:[B

    return-void

    :array_0
    .array-data 1
        0x27t
        0x2bt
        0x69t
        0x7et
        0x7ft
        0x2bt
        0x6at
        0x78t
        0x78t
        0x7et
        0x66t
        0x62t
        0x65t
        0x6ct
        0x2bt
        0x4at
        0x4at
        0x48t
        0x2bt
        0x47t
        0x48t
        0x25t
        0x35t
        0x10t
        0x0t
        0x7t
        0x26t
        0x11t
        0x15t
        0x10t
        0x11t
        0x6t
        0x75t
        0x54t
        0x45t
        0x54t
        0x52t
        0x45t
        0x54t
        0x55t
        0x11t
        0x50t
        0x44t
        0x55t
        0x58t
        0x5et
        0x11t
        0x5et
        0x53t
        0x5bt
        0x54t
        0x52t
        0x45t
        0x11t
        0x45t
        0x48t
        0x41t
        0x54t
        0xbt
        0x11t
        0x39t
        0x28t
        0x28t
        0x34t
        0x31t
        0x3bt
        0x39t
        0x2ct
        0x31t
        0x37t
        0x36t
        0x77t
        0x31t
        0x3ct
        0x6bt
        0x6dt
        0x79t
        0x68t
        0x65t
        0x63t
        0x23t
        0x61t
        0x7ct
        0x38t
        0x6dt
        0x21t
        0x60t
        0x6dt
        0x78t
        0x61t
    .end array-data
.end method

.method public static A07()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "aRF4Ju15AKwONx9FtAtylVkkjmwNDW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "P7Z7GbTJg3wS8"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "I3qOvcuNiYFMXG8Xy2HrwFp2uhxpd0I"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "YgaRPcoPoAUD"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "TR9gOHsDsZMFwcIWpWJP"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Jhl5jmyQOyPXQgL52jUlRg9e6Ha52vd8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "25n3nsnd6iegoVzapMF3Bip8Z7JxVKyU"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "1sIhpsREi0MAjL1gBv8UfjU34"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/V4;->A0I:[Ljava/lang/String;

    return-void
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/CS;JII)V
    .locals 1

    .line 58527
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A03:I

    .line 58528
    iput p4, p0, Lcom/facebook/ads/redexgen/X/V4;->A00:I

    .line 58529
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/V4;->A07:Lcom/facebook/ads/redexgen/X/CS;

    .line 58530
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/V4;->A04:J

    .line 58531
    iput p5, p0, Lcom/facebook/ads/redexgen/X/V4;->A02:I

    .line 58532
    return-void
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 8

    .line 58533
    iget-object v6, p1, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 58534
    .local p0, "adtsData":[B
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v0

    .line 58535
    .local p1, "position":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v5

    .line 58536
    .local v6, "endOffset":I
    :goto_0
    if-ge v0, v5, :cond_8

    .line 58537
    add-int/lit8 v4, v0, 0x1

    .end local p1    # "position":I
    .local v0, "position":I
    aget-byte v7, v6, v0

    const/16 v1, 0xff

    and-int/2addr v7, v1

    .line 58538
    .local p1, "data":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A01:I

    const/16 v3, 0x200

    if-ne v0, v3, :cond_1

    const/16 v0, 0xf0

    if-lt v7, v0, :cond_1

    if-eq v7, v1, :cond_1

    .line 58539
    and-int/lit8 v0, v7, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A0B:Z

    .line 58540
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/V4;->A04()V

    .line 58541
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 58542
    return-void

    .line 58543
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 58544
    :cond_1
    iget v2, p0, Lcom/facebook/ads/redexgen/X/V4;->A01:I

    or-int v1, v2, v7

    const/16 v0, 0x149

    if-eq v1, v0, :cond_3

    const/16 v0, 0x1ff

    if-eq v1, v0, :cond_2

    const/16 v0, 0x344

    if-eq v1, v0, :cond_5

    const/16 v0, 0x433

    if-eq v1, v0, :cond_7

    .line 58545
    const/16 v0, 0x100

    if-eq v2, v0, :cond_6

    .line 58546
    iput v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A01:I

    .line 58547
    add-int/lit8 v0, v4, -0x1

    goto :goto_0

    .line 58548
    :cond_2
    iput v3, p0, Lcom/facebook/ads/redexgen/X/V4;->A01:I

    .line 58549
    goto :goto_2

    .line 58550
    :cond_3
    const/16 v3, 0x300

    sget-object v1, Lcom/facebook/ads/redexgen/X/V4;->A0I:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/V4;->A0I:[Ljava/lang/String;

    const-string v1, "Nzcqa"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/V4;->A01:I

    .line 58551
    goto :goto_2

    .line 58552
    :cond_5
    const/16 v0, 0x400

    iput v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A01:I

    .line 58553
    .end local p1    # "data":I
    :cond_6
    :goto_2
    move v0, v4

    goto :goto_0

    .line 58554
    :cond_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/V4;->A05()V

    .line 58555
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 58556
    return-void

    .line 58557
    :cond_8
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 58558
    return-void
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 7

    .line 58559
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/V4;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A00:I

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 58560
    .local p0, "bytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A07:Lcom/facebook/ads/redexgen/X/CS;

    invoke-interface {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 58561
    iget v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A00:I

    .line 58562
    iget v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A00:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/V4;->A02:I

    if-ne v0, v4, :cond_0

    .line 58563
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A07:Lcom/facebook/ads/redexgen/X/CS;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/V4;->A06:J

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/CS;->ADT(JIIILcom/facebook/ads/redexgen/X/CR;)V

    .line 58564
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/V4;->A06:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A04:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/V4;->A06:J

    .line 58565
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/V4;->A03()V

    .line 58566
    :cond_0
    return-void
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/IM;[BI)Z
    .locals 2

    .line 58567
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A00:I

    sub-int v0, p3, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 58568
    .local p0, "bytesToRead":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A00:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 58569
    iget v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A00:I

    .line 58570
    iget v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A00:I

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A45(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 58571
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    if-lez v0, :cond_7

    .line 58572
    iget v4, p0, Lcom/facebook/ads/redexgen/X/V4;->A03:I

    if-eqz v4, :cond_5

    const/4 v0, 0x1

    if-eq v4, v0, :cond_4

    const/4 v0, 0x2

    if-eq v4, v0, :cond_2

    const/4 v3, 0x3

    sget-object v2, Lcom/facebook/ads/redexgen/X/V4;->A0I:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/V4;->A0I:[Ljava/lang/String;

    const-string v1, "dG4VZhui1EYzYt1JPKxYeZyTOXW"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_1

    goto :goto_0

    .line 58573
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/V4;->A0A(Lcom/facebook/ads/redexgen/X/IM;)V

    goto :goto_0

    .line 58574
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A0B:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x7

    .line 58575
    .local p0, "targetLength":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A0D:Lcom/facebook/ads/redexgen/X/IL;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/V4;->A0B(Lcom/facebook/ads/redexgen/X/IM;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58576
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/V4;->A01()V

    goto :goto_0

    .line 58577
    :cond_3
    const/4 v1, 0x5

    goto :goto_1

    .line 58578
    .end local p0    # "targetLength":I
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/16 v0, 0xa

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/V4;->A0B(Lcom/facebook/ads/redexgen/X/IM;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58579
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/V4;->A02()V

    goto :goto_0

    .line 58580
    :cond_5
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/V4;->A09(Lcom/facebook/ads/redexgen/X/IM;)V

    .line 58581
    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 58582
    :cond_7
    return-void
.end method

.method public final A4S(Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V
    .locals 7

    .line 58583
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A05()V

    .line 58584
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A0A:Ljava/lang/String;

    .line 58585
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A03()I

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/CI;->AEO(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A09:Lcom/facebook/ads/redexgen/X/CS;

    .line 58586
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A0G:Z

    if-eqz v0, :cond_0

    .line 58587
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A05()V

    .line 58588
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A03()I

    move-result v1

    const/4 v0, 0x4

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/CI;->AEO(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A08:Lcom/facebook/ads/redexgen/X/CS;

    .line 58589
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/V4;->A08:Lcom/facebook/ads/redexgen/X/CS;

    .line 58590
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A04()Ljava/lang/String;

    move-result-object v5

    const/4 v4, -0x1

    .line 58591
    const/4 v3, 0x0

    const/16 v2, 0x3c

    const/16 v1, 0xf

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/V4;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v3, v4, v3}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    .line 58592
    invoke-interface {v6, v0}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 58593
    :goto_0
    return-void

    .line 58594
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Vj;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Vj;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A08:Lcom/facebook/ads/redexgen/X/CS;

    goto :goto_0
.end method

.method public final ACI()V
    .locals 0

    .line 58595
    return-void
.end method

.method public final ACJ(JZ)V
    .locals 0

    .line 58596
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/V4;->A06:J

    .line 58597
    return-void
.end method

.method public final ADW()V
    .locals 0

    .line 58598
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/V4;->A03()V

    .line 58599
    return-void
.end method
