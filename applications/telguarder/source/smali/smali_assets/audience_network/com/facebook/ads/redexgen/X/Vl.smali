.class public final Lcom/facebook/ads/redexgen/X/Vl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CH;


# static fields
.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:[B

.field public final A04:J

.field public final A05:Lcom/facebook/ads/redexgen/X/HI;

.field public final A06:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vl;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/HI;JJ)V
    .locals 1

    .line 61520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61521
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vl;->A05:Lcom/facebook/ads/redexgen/X/HI;

    .line 61522
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Vl;->A02:J

    .line 61523
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/Vl;->A04:J

    .line 61524
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A03:[B

    .line 61525
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A06:[B

    .line 61526
    return-void
.end method

.method private A00(I)I
    .locals 1

    .line 61527
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A00:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 61528
    .local p0, "bytesSkipped":I
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vl;->A06(I)V

    .line 61529
    return v0
.end method

.method private A01([BII)I
    .locals 3

    .line 61530
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A00:I

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 61531
    return v2

    .line 61532
    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 61533
    .local p0, "peekBytes":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A03:[B

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61534
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Vl;->A06(I)V

    .line 61535
    return v1
.end method

.method private A02([BIIIZ)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 61536
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 61537
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A05:Lcom/facebook/ads/redexgen/X/HI;

    add-int/2addr p2, p4

    sub-int/2addr p3, p4

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/HI;->read([BII)I

    move-result v1

    .line 61538
    .local p0, "bytesRead":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 61539
    if-nez p4, :cond_0

    if-eqz p5, :cond_0

    .line 61540
    return v0

    .line 61541
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 61542
    :cond_1
    add-int/2addr p4, v1

    return p4

    .line 61543
    .end local p0    # "bytesRead":I
    :cond_2
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Rg1D"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "WfhhOvoiguZzdtnvwWTTkb9xqiGGPTuh"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "678jT4VcdTH6mD7"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ZW4eJ6iRw7YnzHHHkwj356ix8c5B6uXu"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "s4YsBZR8Zp6aqHFTFn3g6hnOWS8F"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "sgKGBPCrSxmiqO520IaoQiM56Kudok6L"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "PiLdbA30IzqZfbLOYX9wSzl6Y0NXq3Oy"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "OR6NuixpJKmz4QvrNSzURZAh1VCcZEyc"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vl;->A07:[Ljava/lang/String;

    return-void
.end method

.method private A04(I)V
    .locals 4

    .line 61544
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 61545
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vl;->A02:J

    int-to-long v0, p1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vl;->A02:J

    .line 61546
    :cond_0
    return-void
.end method

.method private A05(I)V
    .locals 4

    .line 61547
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Vl;->A01:I

    add-int/2addr v3, p1

    .line 61548
    .local p0, "requiredLength":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vl;->A03:[B

    array-length v0, v1

    if-le v3, v0, :cond_0

    .line 61549
    array-length v0, v1

    mul-int/lit8 v2, v0, 0x2

    const/high16 v1, 0x10000

    add-int/2addr v1, v3

    const/high16 v0, 0x80000

    add-int/2addr v0, v3

    .line 61550
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A06(III)I

    move-result v1

    .line 61551
    .local p1, "newPeekCapacity":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A03:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A03:[B

    .line 61552
    .end local p1    # "newPeekCapacity":I
    :cond_0
    return-void
.end method

.method private A06(I)V
    .locals 5

    .line 61553
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A00:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A00:I

    .line 61554
    const/4 v4, 0x0

    iput v4, p0, Lcom/facebook/ads/redexgen/X/Vl;->A01:I

    .line 61555
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Vl;->A03:[B

    .line 61556
    .local p1, "newPeekBuffer":[B
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Vl;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A03:[B

    array-length v1, v0

    const/high16 v0, 0x80000

    sub-int/2addr v1, v0

    if-ge v2, v1, :cond_0

    .line 61557
    const/high16 v0, 0x10000

    add-int/2addr v2, v0

    new-array v3, v2, [B

    .line 61558
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vl;->A03:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A00:I

    invoke-static {v1, p1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61559
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Vl;->A03:[B

    .line 61560
    return-void
.end method


# virtual methods
.method public final A07(IZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61561
    move v3, p1

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Vl;->A05(I)V

    .line 61562
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vl;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A01:I

    sub-int/2addr v1, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 61563
    .local p0, "bytesPeeked":I
    :cond_0
    if-ge v4, v3, :cond_2

    .line 61564
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vl;->A03:[B

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Vl;->A01:I

    .line 61565
    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Vl;->A02([BIIIZ)I

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vl;->A07:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_1

    .line 61566
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vl;->A07:[Ljava/lang/String;

    const-string v1, "TUEyk"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v0, -0x1

    if-ne v4, v0, :cond_0

    .line 61567
    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61568
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A01:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A01:I

    .line 61569
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vl;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A01:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A00:I

    .line 61570
    const/4 v0, 0x1

    return v0
.end method

.method public final A08(IZ)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61571
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vl;->A00(I)I

    move-result v7

    .line 61572
    .local p0, "bytesSkipped":I
    :goto_0
    const/4 v0, -0x1

    if-ge v7, p1, :cond_1

    if-eq v7, v0, :cond_1

    .line 61573
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A06:[B

    array-length v0, v0

    add-int/2addr v0, v7

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 61574
    .local v0, "minLength":I
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Vl;->A06:[B

    neg-int v5, v7

    .line 61575
    move-object v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vl;->A07:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x50

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vl;->A07:[Ljava/lang/String;

    const-string v1, "YctXkfRcXxDAubi"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Vl;->A02([BIIIZ)I

    move-result v7

    .line 61576
    .end local v0    # "minLength":I
    goto :goto_0

    .line 61577
    :cond_1
    invoke-direct {p0, v7}, Lcom/facebook/ads/redexgen/X/Vl;->A04(I)V

    .line 61578
    if-eq v7, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final A3J(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61579
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Vl;->A07(IZ)Z

    .line 61580
    return-void
.end method

.method public final A6i()J
    .locals 2

    .line 61581
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A04:J

    return-wide v0
.end method

.method public final A6w()J
    .locals 4

    .line 61582
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vl;->A02:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A01:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final A71()J
    .locals 2

    .line 61583
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A02:J

    return-wide v0
.end method

.method public final ACM([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61584
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/Vl;->ACN([BIIZ)Z

    .line 61585
    return-void
.end method

.method public final ACN([BIIZ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61586
    invoke-virtual {p0, p3, p4}, Lcom/facebook/ads/redexgen/X/Vl;->A07(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61587
    const/4 v0, 0x0

    return v0

    .line 61588
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vl;->A03:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A01:I

    sub-int/2addr v0, p3

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61589
    const/4 v0, 0x1

    return v0
.end method

.method public final ACp([BIIZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61590
    move v3, p3

    move v2, p2

    move-object v1, p1

    invoke-direct {p0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/Vl;->A01([BII)I

    move-result v4

    .line 61591
    .local p0, "bytesRead":I
    :goto_0
    const/4 v0, -0x1

    if-ge v4, v3, :cond_0

    if-eq v4, v0, :cond_0

    .line 61592
    move-object v0, p0

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Vl;->A02([BIIIZ)I

    move-result v4

    goto :goto_0

    .line 61593
    :cond_0
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Vl;->A04(I)V

    .line 61594
    if-eq v4, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final ADN()V
    .locals 1

    .line 61595
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vl;->A01:I

    .line 61596
    return-void
.end method

.method public final AE1(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61597
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vl;->A00(I)I

    move-result v3

    .line 61598
    .local p0, "bytesSkipped":I
    if-nez v3, :cond_0

    .line 61599
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vl;->A06:[B

    const/4 v2, 0x0

    array-length v0, v1

    .line 61600
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Vl;->A02([BIIIZ)I

    move-result v3

    .line 61601
    :cond_0
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Vl;->A04(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vl;->A07:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_1

    .line 61602
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vl;->A07:[Ljava/lang/String;

    const-string v1, "q22u8GDoaaqdeesmKRcDeRj2eMFjzfeu"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AE4(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61603
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Vl;->A08(IZ)Z

    .line 61604
    return-void
.end method

.method public final read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61605
    move v3, p3

    move v2, p2

    move-object v1, p1

    invoke-direct {p0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/Vl;->A01([BII)I

    move-result v0

    .line 61606
    .local p0, "bytesRead":I
    if-nez v0, :cond_0

    .line 61607
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Vl;->A02([BIIIZ)I

    move-result v0

    .line 61608
    :cond_0
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vl;->A04(I)V

    .line 61609
    return v0
.end method

.method public final readFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61610
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/Vl;->ACp([BIIZ)Z

    .line 61611
    return-void
.end method
