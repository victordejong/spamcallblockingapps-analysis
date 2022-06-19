.class public final Lcom/facebook/ads/redexgen/X/FW;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/FV;
    }
.end annotation


# static fields
.field public static A0I:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:J

.field public A07:J

.field public A08:Lcom/facebook/ads/internal/exoplayer2/Format;

.field public A09:Z

.field public A0A:Z

.field public A0B:[I

.field public A0C:[I

.field public A0D:[I

.field public A0E:[J

.field public A0F:[J

.field public A0G:[Lcom/facebook/ads/internal/exoplayer2/Format;

.field public A0H:[Lcom/facebook/ads/redexgen/X/CR;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/FW;->A04()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 32548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32549
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A01:I

    .line 32550
    iget v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A01:I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0D:[I

    .line 32551
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0E:[J

    .line 32552
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0F:[J

    .line 32553
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0B:[I

    .line 32554
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0C:[I

    .line 32555
    new-array v0, v1, [Lcom/facebook/ads/redexgen/X/CR;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0H:[Lcom/facebook/ads/redexgen/X/CR;

    .line 32556
    new-array v0, v1, [Lcom/facebook/ads/internal/exoplayer2/Format;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0G:[Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 32557
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A06:J

    .line 32558
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A07:J

    .line 32559
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A09:Z

    .line 32560
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0A:Z

    .line 32561
    return-void
.end method

.method private A00(I)I
    .locals 2

    .line 32562
    iget v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    add-int/2addr v1, p1

    .line 32563
    .local p0, "relativeIndex":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A01:I

    if-ge v1, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    sub-int/2addr v1, v0

    goto :goto_0
.end method

.method private A01(IIJZ)I
    .locals 7

    .line 32564
    const/4 v6, -0x1

    .line 32565
    .local p0, "sampleCountToTarget":I
    .local p1, "searchIndex":I
    const/4 v3, 0x0

    .local p2, "i":I
    :goto_0
    if-ge v3, p2, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0F:[J

    aget-wide v4, v0, p1

    sget-object v2, Lcom/facebook/ads/redexgen/X/FW;->A0I:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/FW;->A0I:[Ljava/lang/String;

    const-string v1, "JFV"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "8A9T2ZHBGF6P3L1HGcqfomX"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    cmp-long v0, v4, p3

    if-gtz v0, :cond_4

    .line 32566
    if-eqz p5, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0B:[I

    aget v0, v0, p1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 32567
    :cond_0
    move v6, v3

    .line 32568
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 32569
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A01:I

    if-ne p1, v0, :cond_2

    .line 32570
    const/4 p1, 0x0

    .line 32571
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 32572
    .end local p2    # "i":I
    :cond_4
    return v6
.end method

.method private A02(I)J
    .locals 4

    .line 32573
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/FW;->A06:J

    .line 32574
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/FW;->A03(I)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A06:J

    .line 32575
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    .line 32576
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A00:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A00:I

    .line 32577
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    .line 32578
    iget v3, p0, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A01:I

    if-lt v3, v0, :cond_1

    .line 32579
    sub-int/2addr v3, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/FW;->A0I:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/FW;->A0I:[Ljava/lang/String;

    const-string v1, "rmPQqkiHfMf"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    .line 32580
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    .line 32581
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    if-gez v0, :cond_2

    .line 32582
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/FW;->A0I:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/FW;->A0I:[Ljava/lang/String;

    const-string v1, "rGNm6jdFTVK86xam60qdwwsNjuy3SfLS"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "zCUBtEUnOSv2Jph2uhLKbu226T4aXBY5"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    .line 32583
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    if-nez v0, :cond_4

    .line 32584
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A01:I

    :cond_3
    add-int/lit8 v1, v0, -0x1

    .line 32585
    .local p0, "relativeLastDiscardIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0E:[J

    aget-wide v2, v0, v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0C:[I

    aget v0, v0, v1

    int-to-long v0, v0

    add-long/2addr v2, v0

    return-wide v2

    .line 32586
    .end local p0    # "relativeLastDiscardIndex":I
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A0E:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    aget-wide v0, v1, v0

    return-wide v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A03(I)J
    .locals 7

    .line 32587
    if-nez p1, :cond_0

    .line 32588
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 32589
    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    .line 32590
    .local p0, "largestTimestampUs":J
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/FW;->A00(I)I

    move-result v0

    .line 32591
    .local v0, "relativeSampleIndex":I
    const/4 v5, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v5, p1, :cond_1

    .line 32592
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FW;->A0F:[J

    aget-wide v3, v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 32593
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FW;->A0B:[I

    aget v3, v3, v0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 32594
    .end local v3    # "i":I
    :cond_1
    return-wide v1

    .line 32595
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 32596
    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 32597
    iget v6, p0, Lcom/facebook/ads/redexgen/X/FW;->A01:I

    sget-object v4, Lcom/facebook/ads/redexgen/X/FW;->A0I:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v3, v4, v0

    const/4 v0, 0x1

    aget-object v4, v4, v0

    const/16 v0, 0x19

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v3, v0, :cond_4

    sget-object v4, Lcom/facebook/ads/redexgen/X/FW;->A0I:[Ljava/lang/String;

    const-string v3, "3tp"

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const-string v3, "Z0W9OfGRhIfCW820bOQ6uFB"

    const/4 v0, 0x5

    aput-object v3, v4, v0

    add-int/lit8 v0, v6, -0x1

    .line 32598
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "CqT0KuE1AFfImBFy4ik"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "hGcHjrCi226kocD9vKzS9HyQAF0ZqssA"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZD81yrpYsqeXe4L"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "XJx"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "nsm5GlP1XQIMmswL2BtDEyl4JYnPccJt"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "OHNFP06lkToQsW2YsoX4lx0"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "UGSwurzNNOniPMx0TIQOqAAX3osRvTJh"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YaODE33QO8vEeLZGxHQ5TNBfWhqIAS5S"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/FW;->A0I:[Ljava/lang/String;

    return-void
.end method

.method private final declared-synchronized A05(J)V
    .locals 2

    monitor-enter p0

    .line 32599
    :try_start_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A07:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A07:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32600
    monitor-exit p0

    return-void

    .line 32601
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/FW;
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final A06()I
    .locals 2

    .line 32602
    iget v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A07()I
    .locals 2

    .line 32603
    iget v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final declared-synchronized A08()I
    .locals 4

    monitor-enter p0

    .line 32604
    :try_start_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    sub-int/2addr v3, v0

    .line 32605
    .local p0, "skipCount":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32606
    monitor-exit p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/FW;->A0I:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/FW;->A0I:[Ljava/lang/String;

    const-string v1, "bxSWiBZCbHOohSqaWh"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 32607
    .end local p0    # "skipCount":I
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A09(JZZ)I
    .locals 10

    monitor-enter p0

    .line 32608
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/FW;->A00(I)I

    move-result v5

    .line 32609
    .local p0, "relativeReadIndex":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/FW;->A0J()Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0F:[J

    aget-wide v1, v0, v5

    move-wide v7, p1

    cmp-long v0, v7, v1

    if-ltz v0, :cond_0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A07:J

    cmp-long v0, v7, v1

    if-lez v0, :cond_1

    if-nez p4, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32610
    .end local v7
    .end local v3
    :cond_0
    monitor-exit p0

    return v3

    .line 32611
    :cond_1
    :try_start_1
    iget v6, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    sub-int/2addr v6, v0

    move-object v4, p0

    move v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/FW;->A01(IIJZ)I

    move-result v1

    .line 32612
    .local v7, "offset":I
    if-ne v1, v3, :cond_2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32613
    monitor-exit p0

    return v3

    .line 32614
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32615
    monitor-exit p0

    return v1

    .line 32616
    .end local p0    # "relativeReadIndex":I
    .end local v0
    .end local p1    # null:J
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0A(Lcom/facebook/ads/redexgen/X/AD;Lcom/facebook/ads/redexgen/X/YY;ZZLcom/facebook/ads/internal/exoplayer2/Format;Lcom/facebook/ads/redexgen/X/FV;)I
    .locals 5

    monitor-enter p0

    .line 32617
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/FW;->A0J()Z

    move-result v0

    const/4 v4, -0x5

    const/4 v1, -0x3

    const/4 v3, -0x4

    if-nez v0, :cond_3

    .line 32618
    if-eqz p4, :cond_0

    .line 32619
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/BV;->A02(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32620
    monitor-exit p0

    return v3

    .line 32621
    .end local p6    # null:Lcom/facebook/ads/redexgen/X/FV;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A08:Lcom/facebook/ads/internal/exoplayer2/Format;

    if-eqz v0, :cond_2

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A08:Lcom/facebook/ads/internal/exoplayer2/Format;

    if-eq v0, p5, :cond_2

    .line 32622
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A08:Lcom/facebook/ads/internal/exoplayer2/Format;

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/AD;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32623
    monitor-exit p0

    return v4

    .line 32624
    :cond_2
    monitor-exit p0

    return v1

    .line 32625
    :cond_3
    :try_start_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/FW;->A00(I)I

    move-result v2

    .line 32626
    .local p0, "relativeReadIndex":I
    if-nez p3, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0G:[Lcom/facebook/ads/internal/exoplayer2/Format;

    aget-object v0, v0, v2

    if-eq v0, p5, :cond_5

    .line 32627
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0G:[Lcom/facebook/ads/internal/exoplayer2/Format;

    aget-object v0, v0, v2

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/AD;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32628
    monitor-exit p0

    return v4

    .line 32629
    :cond_5
    :try_start_3
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/YY;->A0B()Z

    move-result v0

    if-eqz v0, :cond_6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 32630
    monitor-exit p0

    return v1

    .line 32631
    :cond_6
    :try_start_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0F:[J

    aget-wide v0, v0, v2

    iput-wide v0, p2, Lcom/facebook/ads/redexgen/X/YY;->A00:J

    .line 32632
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0B:[I

    aget v0, v0, v2

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/BV;->A02(I)V

    .line 32633
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0C:[I

    aget v0, v0, v2

    iput v0, p6, Lcom/facebook/ads/redexgen/X/FV;->A00:I

    .line 32634
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0E:[J

    aget-wide v0, v0, v2

    iput-wide v0, p6, Lcom/facebook/ads/redexgen/X/FV;->A01:J

    .line 32635
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0H:[Lcom/facebook/ads/redexgen/X/CR;

    aget-object v0, v0, v2

    iput-object v0, p6, Lcom/facebook/ads/redexgen/X/FV;->A02:Lcom/facebook/ads/redexgen/X/CR;

    .line 32636
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 32637
    monitor-exit p0

    return v3

    .line 32638
    .end local p0    # "relativeReadIndex":I
    .end local v0
    .end local v4
    .end local v1
    .end local v3
    .end local v0
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0B()J
    .locals 2

    monitor-enter p0

    .line 32639
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32640
    const-wide/16 v0, -0x1

    monitor-exit p0

    return-wide v0

    .line 32641
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/FW;->A02(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 32642
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0C()J
    .locals 2

    monitor-enter p0

    .line 32643
    :try_start_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A07:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/FW;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A0D(I)J
    .locals 5

    .line 32644
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/FW;->A07()I

    move-result v2

    sub-int/2addr v2, p1

    .line 32645
    .local p0, "discardCount":I
    const/4 v4, 0x1

    if-ltz v2, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    sub-int/2addr v1, v0

    if-gt v2, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 32646
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    .line 32647
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/FW;->A06:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/FW;->A03(I)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A07:J

    .line 32648
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    if-nez v0, :cond_1

    .line 32649
    const-wide/16 v0, 0x0

    return-wide v0

    .line 32650
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 32651
    :cond_1
    sub-int/2addr v0, v4

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/FW;->A00(I)I

    move-result v1

    .line 32652
    .local p1, "relativeLastWriteIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0E:[J

    aget-wide v2, v0, v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0C:[I

    aget v0, v0, v1

    int-to-long v0, v0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final declared-synchronized A0E(JZZ)J
    .locals 11

    monitor-enter p0

    .line 32653
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    const-wide/16 v3, -0x1

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A0F:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    aget-wide v1, v1, v0

    move-wide v8, p1

    cmp-long v0, v8, v1

    if-gez v0, :cond_0

    goto :goto_1

    .line 32654
    :cond_0
    if-eqz p4, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    if-eq v1, v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    add-int/lit8 v7, v0, 0x1

    goto :goto_0

    .end local v0
    :cond_1
    iget v7, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    .line 32655
    .local v0, "searchLength":I
    :goto_0
    iget v6, p0, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    move-object v5, p0

    move v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/FW;->A01(IIJZ)I

    move-result v1

    .line 32656
    .local p0, "discardCount":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32657
    monitor-exit p0

    return-wide v3

    .line 32658
    :cond_2
    :try_start_1
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/FW;->A02(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 32659
    .end local p0    # "discardCount":I
    .end local v0    # "searchLength":I
    :cond_3
    :goto_1
    monitor-exit p0

    return-wide v3

    .line 32660
    .end local v1
    .end local v0
    .end local v1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0F()Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 1

    monitor-enter p0

    .line 32661
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A09:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A08:Lcom/facebook/ads/internal/exoplayer2/Format;

    goto :goto_1

    :goto_0
    const/4 v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0G()V
    .locals 1

    monitor-enter p0

    .line 32662
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32663
    monitor-exit p0

    return-void

    .line 32664
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0H(JIJILcom/facebook/ads/redexgen/X/CR;)V
    .locals 13

    move-object v4, p0

    monitor-enter p0

    .line 32665
    :try_start_0
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A0A:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 32666
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32667
    monitor-exit p0

    return-void

    .line 32668
    :cond_0
    :try_start_1
    iput-boolean v5, v4, Lcom/facebook/ads/redexgen/X/FW;->A0A:Z

    .line 32669
    .end local v0
    :cond_1
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A09:Z

    const/4 v3, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 32670
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/FW;->A05(J)V

    .line 32671
    iget v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/FW;->A00(I)I

    move-result v2

    .line 32672
    .local p0, "relativeEndIndex":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A0F:[J

    aput-wide p1, v0, v2

    .line 32673
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A0E:[J

    aput-wide p4, v0, v2

    .line 32674
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A0C:[I

    aput p6, v0, v2

    .line 32675
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A0B:[I

    aput p3, v0, v2

    .line 32676
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A0H:[Lcom/facebook/ads/redexgen/X/CR;

    aput-object p7, v0, v2

    .line 32677
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/FW;->A0G:[Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A08:Lcom/facebook/ads/internal/exoplayer2/Format;

    aput-object v0, v1, v2

    .line 32678
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/FW;->A0D:[I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A05:I

    aput v0, v1, v2

    .line 32679
    iget v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    add-int/2addr v0, v3

    iput v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    .line 32680
    iget v1, v4, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A01:I

    if-ne v1, v0, :cond_3

    .line 32681
    iget v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A01:I

    add-int/lit16 v11, v0, 0x3e8

    .line 32682
    .local p3, "newCapacity":I
    new-array v12, v11, [I

    .line 32683
    .local p4, "newSourceIds":[I
    new-array v10, v11, [J

    .line 32684
    .local v5, "newOffsets":[J
    new-array v9, v11, [J

    .line 32685
    .local p6, "newTimesUs":[J
    new-array v8, v11, [I

    .line 32686
    .local p7, "newFlags":[I
    new-array v7, v11, [I

    .line 32687
    .local v4, "newSizes":[I
    new-array v6, v11, [Lcom/facebook/ads/redexgen/X/CR;

    .line 32688
    .local v0, "newCryptoDatas":[Lcom/facebook/ads/redexgen/X/CR;
    new-array v3, v11, [Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 32689
    .local v5, "newFormats":[Lcom/facebook/ads/internal/exoplayer2/Format;
    iget v2, v4, Lcom/facebook/ads/redexgen/X/FW;->A01:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    sub-int/2addr v2, v0

    .line 32690
    .local v0, "beforeWrap":I
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/FW;->A0E:[J

    iget v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    invoke-static {v1, v0, v10, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32691
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/FW;->A0F:[J

    iget v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    invoke-static {v1, v0, v9, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32692
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/FW;->A0B:[I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    invoke-static {v1, v0, v8, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32693
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/FW;->A0C:[I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    invoke-static {v1, v0, v7, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32694
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/FW;->A0H:[Lcom/facebook/ads/redexgen/X/CR;

    iget v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    invoke-static {v1, v0, v6, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32695
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/FW;->A0G:[Lcom/facebook/ads/internal/exoplayer2/Format;

    iget v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    invoke-static {v1, v0, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32696
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/FW;->A0D:[I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    invoke-static {v1, v0, v12, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32697
    iget v1, v4, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    .line 32698
    .local v0, "afterWrap":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A0E:[J

    invoke-static {v0, v5, v10, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32699
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A0F:[J

    invoke-static {v0, v5, v9, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32700
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A0B:[I

    invoke-static {v0, v5, v8, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32701
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A0C:[I

    invoke-static {v0, v5, v7, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32702
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A0H:[Lcom/facebook/ads/redexgen/X/CR;

    invoke-static {v0, v5, v6, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32703
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A0G:[Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-static {v0, v5, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32704
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A0D:[I

    invoke-static {v0, v5, v12, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32705
    iput-object v10, v4, Lcom/facebook/ads/redexgen/X/FW;->A0E:[J

    .line 32706
    iput-object v9, v4, Lcom/facebook/ads/redexgen/X/FW;->A0F:[J

    .line 32707
    iput-object v8, v4, Lcom/facebook/ads/redexgen/X/FW;->A0B:[I

    .line 32708
    iput-object v7, v4, Lcom/facebook/ads/redexgen/X/FW;->A0C:[I

    .line 32709
    iput-object v6, v4, Lcom/facebook/ads/redexgen/X/FW;->A0H:[Lcom/facebook/ads/redexgen/X/CR;

    .line 32710
    iput-object v3, v4, Lcom/facebook/ads/redexgen/X/FW;->A0G:[Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 32711
    iput-object v12, v4, Lcom/facebook/ads/redexgen/X/FW;->A0D:[I

    .line 32712
    iput v5, v4, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    .line 32713
    iget v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A01:I

    iput v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    .line 32714
    iput v11, v4, Lcom/facebook/ads/redexgen/X/FW;->A01:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32715
    .end local p3    # "newCapacity":I
    .end local p4    # "newSourceIds":[I
    .end local v5    # "newFormats":[Lcom/facebook/ads/internal/exoplayer2/Format;
    .end local p6    # "newTimesUs":[J
    .end local p7    # "newFlags":[I
    .end local v4    # "newSizes":[I
    .end local v0    # "afterWrap":I
    .end local v5
    .end local v0
    .end local v0
    :cond_3
    monitor-exit p0

    return-void

    .line 32716
    .end local p0    # "relativeEndIndex":I
    .end local v0
    .end local v0
    .end local v0
    .end local v0
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A0I(Z)V
    .locals 3

    .line 32717
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    .line 32718
    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A00:I

    .line 32719
    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    .line 32720
    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    .line 32721
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/FW;->A0A:Z

    .line 32722
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A06:J

    .line 32723
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A07:J

    .line 32724
    if-eqz p1, :cond_0

    .line 32725
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A08:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 32726
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/FW;->A09:Z

    .line 32727
    :cond_0
    return-void
.end method

.method public final declared-synchronized A0J()Z
    .locals 2

    monitor-enter p0

    .line 32728
    :try_start_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return v0

    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0K(J)Z
    .locals 6

    monitor-enter p0

    .line 32729
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_1

    .line 32730
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A06:J

    cmp-long v0, p1, v1

    if-lez v0, :cond_0

    const/4 v4, 0x1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v4

    .line 32731
    .end local v0
    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/FW;->A06:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    .line 32732
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/FW;->A03(I)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 32733
    .local v0, "largestReadTimestampUs":J
    cmp-long v0, v1, p1

    if-ltz v0, :cond_2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32734
    monitor-exit p0

    return v4

    .line 32735
    :cond_2
    :try_start_2
    iget v4, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    .line 32736
    .local p0, "retainCount":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    sub-int/2addr v0, v5

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/FW;->A00(I)I

    move-result v3

    .line 32737
    .local p1, "relativeSampleIndex":I
    :cond_3
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    if-le v4, v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0F:[J

    aget-wide v1, v0, v3

    cmp-long v0, v1, p1

    if-ltz v0, :cond_4

    .line 32738
    add-int/lit8 v4, v4, -0x1

    .line 32739
    add-int/lit8 v3, v3, -0x1

    .line 32740
    const/4 v0, -0x1

    if-ne v3, v0, :cond_3

    .line 32741
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A01:I

    add-int/lit8 v3, v0, -0x1

    goto :goto_0

    .line 32742
    :cond_4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A00:I

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/FW;->A0D(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32743
    monitor-exit p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/FW;->A0I:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/FW;->A0I:[Ljava/lang/String;

    const-string v1, "Ebt"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "bsxl34mHntOvTAOjuXwEPt2"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v5

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 32744
    .end local p0    # "retainCount":I
    .end local p1    # "relativeSampleIndex":I
    .end local v0    # "largestReadTimestampUs":J
    .end local v2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0L(Lcom/facebook/ads/internal/exoplayer2/Format;)Z
    .locals 3

    monitor-enter p0

    .line 32745
    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 32746
    :try_start_0
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/FW;->A09:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32747
    monitor-exit p0

    return v1

    .line 32748
    .end local v1
    :cond_0
    :try_start_1
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A09:Z

    .line 32749
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A08:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32750
    monitor-exit p0

    return v1

    .line 32751
    :cond_1
    :try_start_2
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FW;->A08:Lcom/facebook/ads/internal/exoplayer2/Format;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32752
    monitor-exit p0

    return v2

    .line 32753
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
