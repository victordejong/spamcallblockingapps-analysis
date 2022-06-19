.class public final Lcom/facebook/ads/redexgen/X/Ce;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/IM;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ce;->A01()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 24636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24637
    const/16 v1, 0x8

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ce;->A01:Lcom/facebook/ads/redexgen/X/IM;

    .line 24638
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/CH;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 24639
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ce;->A01:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 24640
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ce;->A01:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    aget-byte v0, v0, v1

    and-int/lit16 v3, v0, 0xff

    .line 24641
    .local p0, "value":I
    if-nez v3, :cond_0

    .line 24642
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 24643
    :cond_0
    const/16 v1, 0x80

    .line 24644
    .local p1, "mask":I
    const/4 v4, 0x0

    .line 24645
    .local v0, "length":I
    :goto_0
    and-int v0, v3, v1

    if-nez v0, :cond_1

    .line 24646
    shr-int/lit8 v1, v1, 0x1

    .line 24647
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 24648
    :cond_1
    xor-int/lit8 v0, v1, -0x1

    and-int/2addr v3, v0

    .line 24649
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ce;->A01:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-interface {p1, v0, v2, v4}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ce;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 24650
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ce;->A02:[Ljava/lang/String;

    const-string v1, "Q2Tsantp3IsSJazPxjTxEMgeGlvxcilw"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v2, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 24651
    shl-int/lit8 v3, v3, 0x8

    .line 24652
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ce;->A01:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    add-int/lit8 v0, v2, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v3, v0

    .line 24653
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 24654
    .end local v0    # "i":I
    :cond_3
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ce;->A00:I

    add-int/lit8 v0, v4, 0x1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ce;->A00:I

    .line 24655
    int-to-long v0, v3

    return-wide v0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "TwjvEb0ZjGCESdOYwuVlm1vFwPXVKriB"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "CsDdsynd2CgkSIi1KeM0rXr3SwOAHLxA"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7j1acr1Ylf1Beyx"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Xu1ibffC6cBhQP0NiUnJF"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "C2zpsJpbXwx2B9tn1M08iBruVW1EhYc2"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Bg6FetAL80L9TT5uuqr5uqOFtb9rCSuQ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "sJqPqrNqI5zDImj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "d0d5sYgkHjlEFoD1FjT0Ybj24HgdXwEz"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ce;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A02(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 24656
    move-object/from16 v9, p0

    move-object v9, v9

    move-object/from16 v10, p1

    invoke-interface {v10}, Lcom/facebook/ads/redexgen/X/CH;->A6i()J

    move-result-wide v17

    .line 24657
    .local v9, "inputLength":J
    const-wide/16 v3, 0x400

    const-wide/16 v15, -0x1

    cmp-long v0, v17, v15

    if-eqz v0, :cond_0

    cmp-long v0, v17, v3

    if-lez v0, :cond_3

    .line 24658
    :cond_0
    :goto_0
    long-to-int v2, v3

    .line 24659
    .local v5, "bytesToSearch":I
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/Ce;->A01:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v1, 0x4

    const/4 v8, 0x0

    invoke-interface {v10, v0, v8, v1}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 24660
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/Ce;->A01:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v5

    .line 24661
    .local v0, "tag":J
    iput v1, v9, Lcom/facebook/ads/redexgen/X/Ce;->A00:I

    .line 24662
    :goto_1
    const-wide/32 v3, 0x1a45dfa3

    const/4 v1, 0x1

    cmp-long v0, v5, v3

    if-eqz v0, :cond_4

    .line 24663
    iget v0, v9, Lcom/facebook/ads/redexgen/X/Ce;->A00:I

    add-int/2addr v0, v1

    iput v0, v9, Lcom/facebook/ads/redexgen/X/Ce;->A00:I

    if-ne v0, v2, :cond_1

    .line 24664
    return v8

    .line 24665
    :cond_1
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/Ce;->A01:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-interface {v10, v0, v8, v1}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 24666
    const/16 v4, 0x8

    sget-object v3, Lcom/facebook/ads/redexgen/X/Ce;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v3, v0

    const/4 v0, 0x6

    aget-object v0, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v3, Lcom/facebook/ads/redexgen/X/Ce;->A02:[Ljava/lang/String;

    const-string v1, "QrsjAqdwMVFR9joKuyULx9zFDmJVE2dY"

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const-string v1, "gV388VJJtai70oItXfYE9dCFFZIyCdaZ"

    const/4 v0, 0x5

    aput-object v1, v3, v0

    shl-long/2addr v5, v4

    const-wide/16 v0, -0x100

    and-long/2addr v5, v0

    .line 24667
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/Ce;->A01:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    aget-byte v0, v0, v8

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    or-long/2addr v5, v0

    goto :goto_1

    .line 24668
    :cond_3
    move-wide/from16 v3, v17

    goto :goto_0

    .line 24669
    :cond_4
    invoke-direct {v9, v10}, Lcom/facebook/ads/redexgen/X/Ce;->A00(Lcom/facebook/ads/redexgen/X/CH;)J

    move-result-wide v13

    .line 24670
    .local v2, "headerSize":J
    iget v0, v9, Lcom/facebook/ads/redexgen/X/Ce;->A00:I

    int-to-long v3, v0

    .line 24671
    .local v0, "headerStart":J
    const-wide/high16 v11, -0x8000000000000000L

    cmp-long v0, v13, v11

    if-eqz v0, :cond_5

    cmp-long v0, v17, v15

    if-eqz v0, :cond_6

    add-long v1, v3, v13

    cmp-long v0, v1, v17

    if-ltz v0, :cond_6

    .line 24672
    .end local v5    # "bytesToSearch":I
    .restart local v15
    :cond_5
    const/4 v0, 0x0

    return v0

    .line 24673
    :cond_6
    :goto_2
    iget v7, v9, Lcom/facebook/ads/redexgen/X/Ce;->A00:I

    int-to-long v1, v7

    add-long v5, v3, v13

    cmp-long v0, v1, v5

    if-gez v0, :cond_b

    .line 24674
    invoke-direct {v9, v10}, Lcom/facebook/ads/redexgen/X/Ce;->A00(Lcom/facebook/ads/redexgen/X/CH;)J

    move-result-wide v1

    .line 24675
    .local v3, "id":J
    cmp-long v0, v1, v11

    if-nez v0, :cond_7

    .line 24676
    return v8

    .line 24677
    .end local v5
    .local v15, "bytesToSearch":I
    :cond_7
    invoke-direct {v9, v10}, Lcom/facebook/ads/redexgen/X/Ce;->A00(Lcom/facebook/ads/redexgen/X/CH;)J

    move-result-wide v5

    .line 24678
    .local v17, "size":J
    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-ltz v0, :cond_8

    const-wide/32 v1, 0x7fffffff

    cmp-long v0, v5, v1

    if-lez v0, :cond_9

    .line 24679
    .restart local v17    # "size":J
    .restart local v3    # "id":J
    :cond_8
    const/4 v0, 0x0

    return v0

    .line 24680
    :cond_9
    cmp-long v0, v5, v7

    if-eqz v0, :cond_a

    .line 24681
    long-to-int v1, v5

    .line 24682
    .local v9, "sizeInt":I
    invoke-interface {v10, v1}, Lcom/facebook/ads/redexgen/X/CH;->A3J(I)V

    .line 24683
    iget v0, v9, Lcom/facebook/ads/redexgen/X/Ce;->A00:I

    add-int/2addr v0, v1

    iput v0, v9, Lcom/facebook/ads/redexgen/X/Ce;->A00:I

    .line 24684
    .end local v17    # "size":J
    .end local v3    # "id":J
    .end local v9    # "sizeInt":I
    :cond_a
    const/4 v8, 0x0

    goto :goto_2

    .line 24685
    .end local v17
    .end local v3
    .end local v15    # "bytesToSearch":I
    .restart local v5    # "bytesToSearch":I
    .end local v5    # "bytesToSearch":I
    .restart local v15    # "bytesToSearch":I
    :cond_b
    int-to-long v1, v7

    add-long/2addr v3, v13

    cmp-long v0, v1, v3

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_3
.end method
