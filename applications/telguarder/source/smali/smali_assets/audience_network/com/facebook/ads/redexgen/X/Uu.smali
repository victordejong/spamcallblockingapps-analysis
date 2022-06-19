.class public final Lcom/facebook/ads/redexgen/X/Uu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Db;


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:Lcom/facebook/ads/redexgen/X/IY;

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public final A0A:Lcom/facebook/ads/redexgen/X/DM;

.field public final A0B:Lcom/facebook/ads/redexgen/X/IL;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Uu;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Uu;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/DM;)V
    .locals 2

    .line 57561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57562
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0A:Lcom/facebook/ads/redexgen/X/DM;

    .line 57563
    const/16 v0, 0xa

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/IL;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0B:Lcom/facebook/ads/redexgen/X/IL;

    .line 57564
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A03:I

    .line 57565
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Uu;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x5e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 11

    .line 57566
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0B:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A08(I)V

    .line 57567
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A04:J

    .line 57568
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A08:Z

    if-eqz v0, :cond_2

    .line 57569
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0B:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 57570
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0B:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    int-to-long v1, v0

    const/16 v10, 0x1e

    shl-long/2addr v1, v10

    .line 57571
    .local v0, "pts":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0B:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 57572
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0B:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v8, 0xf

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    shl-int/2addr v0, v8

    int-to-long v3, v0

    or-long/2addr v1, v3

    .line 57573
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0B:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 57574
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0B:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    int-to-long v3, v0

    or-long/2addr v1, v3

    .line 57575
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0B:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 57576
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A09:Z

    if-nez v0, :cond_1

    iget-boolean v9, p0, Lcom/facebook/ads/redexgen/X/Uu;->A07:Z

    sget-object v3, Lcom/facebook/ads/redexgen/X/Uu;->A0D:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v0, 0x8

    if-eq v3, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v4, Lcom/facebook/ads/redexgen/X/Uu;->A0D:[Ljava/lang/String;

    const-string v3, "qnHcAiua"

    const/4 v0, 0x0

    aput-object v3, v4, v0

    if-eqz v9, :cond_1

    .line 57577
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0B:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 57578
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0B:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    int-to-long v3, v0

    shl-long/2addr v3, v10

    .line 57579
    .local p0, "dts":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0B:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 57580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0B:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    shl-int/2addr v0, v8

    int-to-long v5, v0

    or-long/2addr v3, v5

    .line 57581
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0B:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 57582
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0B:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    int-to-long v5, v0

    or-long/2addr v3, v5

    .line 57583
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0B:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 57584
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A05:Lcom/facebook/ads/redexgen/X/IY;

    invoke-virtual {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/IY;->A08(J)J

    .line 57585
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/Uu;->A09:Z

    .line 57586
    .end local p0    # "dts":J
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A05:Lcom/facebook/ads/redexgen/X/IY;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/IY;->A08(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A04:J

    .line 57587
    .end local v0    # "pts":J
    :cond_2
    return-void
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x89

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Uu;->A0C:[B

    return-void

    :array_0
    .array-data 1
        -0x38t
        0x15t
        0x17t
        0x1at
        0xdt
        -0x38t
        0xat
        0x21t
        0x1ct
        0xdt
        0x1bt
        -0x51t
        -0x3ct
        -0x2et
        -0x4ft
        -0x3ct
        -0x40t
        -0x3dt
        -0x3ct
        -0x2ft
        0x3t
        0x1ct
        0x13t
        0x26t
        0x1et
        0x13t
        0x11t
        0x22t
        0x13t
        0x12t
        -0x32t
        0x21t
        0x22t
        0xft
        0x20t
        0x22t
        -0x32t
        0x11t
        0x1dt
        0x12t
        0x13t
        -0x32t
        0x1et
        0x20t
        0x13t
        0x14t
        0x17t
        0x26t
        -0x18t
        -0x32t
        0x10t
        0x29t
        0x20t
        0x33t
        0x2bt
        0x20t
        0x1et
        0x2ft
        0x20t
        0x1ft
        -0x25t
        0x2et
        0x2ft
        0x1ct
        0x2dt
        0x2ft
        -0x25t
        0x24t
        0x29t
        0x1ft
        0x24t
        0x1et
        0x1ct
        0x2ft
        0x2at
        0x2dt
        -0x25t
        0x2dt
        0x20t
        0x1ct
        0x1ft
        0x24t
        0x29t
        0x22t
        -0x25t
        0x20t
        0x33t
        0x2ft
        0x20t
        0x29t
        0x1ft
        0x20t
        0x1ft
        -0x25t
        0x23t
        0x20t
        0x1ct
        0x1ft
        0x20t
        0x2dt
        -0xdt
        0xct
        0x3t
        0x16t
        0xet
        0x3t
        0x1t
        0x12t
        0x3t
        0x2t
        -0x42t
        0x11t
        0x12t
        -0x1t
        0x10t
        0x12t
        -0x42t
        0x7t
        0xct
        0x2t
        0x7t
        0x1t
        -0x1t
        0x12t
        0xdt
        0x10t
        -0x28t
        -0x42t
        0x3t
        0x16t
        0xet
        0x3t
        0x1t
        0x12t
        0x3t
        0x2t
        -0x42t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "KMmraqln"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "XASXHgG3Y2934BfCGMzTAOD3Dl7mU"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "y9HFZs2YSYnGNj20y3cXp4bfkuFOrQ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "MkF8jezlyaLY4iyeHAmcelIRpgeGu"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ybzt5P1kEXVWV8cKxZjt5eCQ0bwcu6Ts"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "lndFQkQrZv4UzQ2SjhCRB428JmLpoTWm"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ok6XNuH3QViD4avlyvfPq8SVSc6KnPZP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "DMzmMjPi9nhZ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Uu;->A0D:[Ljava/lang/String;

    return-void
.end method

.method private A04(I)V
    .locals 1

    .line 57588
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Uu;->A03:I

    .line 57589
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A00:I

    .line 57590
    return-void
.end method

.method private A05()Z
    .locals 7

    .line 57591
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0B:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/IL;->A08(I)V

    .line 57592
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0B:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v5

    .line 57593
    .local p0, "startCodePrefix":I
    const/4 v3, -0x1

    const/4 v2, 0x1

    if-eq v5, v2, :cond_0

    .line 57594
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x14

    const/16 v1, 0x1e

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uu;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0xb

    const/16 v1, 0x9

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uu;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57595
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Uu;->A02:I

    .line 57596
    return v6

    .line 57597
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0B:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 57598
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0B:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v5

    .line 57599
    .local v0, "packetLength":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0B:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 57600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0B:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A06:Z

    .line 57601
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0B:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 57602
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0B:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A08:Z

    .line 57603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0B:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A07:Z

    .line 57604
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0B:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 57605
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0B:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A01:I

    .line 57606
    if-nez v5, :cond_1

    .line 57607
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Uu;->A02:I

    .line 57608
    :goto_0
    return v2

    .line 57609
    :cond_1
    add-int/lit8 v0, v5, 0x6

    add-int/lit8 v1, v0, -0x9

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A01:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Uu;->A02:I

    goto :goto_0
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/IM;[BI)Z
    .locals 6

    .line 57610
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A00:I

    sub-int v0, p3, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 57611
    .local p0, "bytesToRead":I
    const/4 v4, 0x1

    if-gtz v5, :cond_0

    .line 57612
    return v4

    .line 57613
    :cond_0
    if-nez p2, :cond_2

    .line 57614
    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 57615
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A00:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A00:I

    .line 57616
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A00:I

    if-ne v0, p3, :cond_1

    :goto_1
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 57617
    :cond_2
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Uu;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Uu;->A0D:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Uu;->A0D:[Ljava/lang/String;

    const-string v1, "C1MqNM2pxUXwoPRj5T"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {p1, p2, v3, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A46(Lcom/facebook/ads/redexgen/X/IM;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 57618
    const/4 v6, -0x1

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    .line 57619
    iget v8, p0, Lcom/facebook/ads/redexgen/X/Uu;->A03:I

    if-eqz v8, :cond_0

    if-eq v8, v3, :cond_0

    const/16 v2, 0xb

    const/16 v1, 0x9

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uu;->A00(III)Ljava/lang/String;

    move-result-object v7

    if-eq v8, v4, :cond_b

    if-eq v8, v5, :cond_9

    .line 57620
    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Uu;->A04(I)V

    .line 57621
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    if-lez v0, :cond_c

    .line 57622
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A03:I

    if-eqz v0, :cond_8

    const/4 v2, 0x0

    if-eq v0, v3, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v5, :cond_2

    goto :goto_1

    .line 57623
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v1

    .line 57624
    .local v5, "readLength":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A02:I

    if-ne v0, v6, :cond_4

    .line 57625
    .local v4, "padding":I
    :goto_2
    if-lez v2, :cond_3

    .line 57626
    sub-int/2addr v1, v2

    .line 57627
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Y(I)V

    .line 57628
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0A:Lcom/facebook/ads/redexgen/X/DM;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/DM;->A45(Lcom/facebook/ads/redexgen/X/IM;)V

    .line 57629
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A02:I

    if-eq v0, v6, :cond_1

    .line 57630
    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A02:I

    .line 57631
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A02:I

    if-nez v0, :cond_1

    .line 57632
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0A:Lcom/facebook/ads/redexgen/X/DM;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/DM;->ACI()V

    .line 57633
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Uu;->A04(I)V

    goto :goto_1

    .line 57634
    :cond_4
    sub-int v2, v1, v0

    goto :goto_2

    .line 57635
    .end local v5    # "readLength":I
    .end local v4    # "padding":I
    :cond_5
    const/16 v1, 0xa

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A01:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 57636
    .restart local v5    # "readLength":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0B:Lcom/facebook/ads/redexgen/X/IL;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/Uu;->A06(Lcom/facebook/ads/redexgen/X/IM;[BI)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A01:I

    .line 57637
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Uu;->A06(Lcom/facebook/ads/redexgen/X/IM;[BI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57638
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Uu;->A01()V

    .line 57639
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0A:Lcom/facebook/ads/redexgen/X/DM;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A04:J

    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Uu;->A06:Z

    invoke-interface {v7, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/DM;->ACJ(JZ)V

    .line 57640
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/Uu;->A04(I)V

    goto :goto_1

    .line 57641
    .end local v5    # "readLength":I
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0B:Lcom/facebook/ads/redexgen/X/IL;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    const/16 v0, 0x9

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Uu;->A06(Lcom/facebook/ads/redexgen/X/IM;[BI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57642
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Uu;->A05()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, 0x2

    :cond_7
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/Uu;->A04(I)V

    goto/16 :goto_1

    .line 57643
    :cond_8
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 57644
    goto/16 :goto_1

    .line 57645
    :cond_9
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A02:I

    if-eq v0, v6, :cond_a

    .line 57646
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x64

    const/16 v1, 0x25

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uu;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A02:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uu;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57647
    :cond_a
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0A:Lcom/facebook/ads/redexgen/X/DM;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Uu;->A0D:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_d

    sget-object v2, Lcom/facebook/ads/redexgen/X/Uu;->A0D:[Ljava/lang/String;

    const-string v1, "q7A230FQLMzNQBOiqKez72iQAN1XD"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "xMBGj5sKcVozaerQw0EqmWKQkTlxb"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-interface {v7}, Lcom/facebook/ads/redexgen/X/DM;->ACI()V

    goto/16 :goto_0

    .line 57648
    :cond_b
    const/16 v2, 0x32

    const/16 v1, 0x32

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uu;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57649
    goto/16 :goto_0

    .line 57650
    :cond_c
    return-void

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A7u(Lcom/facebook/ads/redexgen/X/IY;Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V
    .locals 1

    .line 57651
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Uu;->A05:Lcom/facebook/ads/redexgen/X/IY;

    .line 57652
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0A:Lcom/facebook/ads/redexgen/X/DM;

    invoke-interface {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/DM;->A4S(Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V

    .line 57653
    return-void
.end method

.method public final ADW()V
    .locals 1

    .line 57654
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A03:I

    .line 57655
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A00:I

    .line 57656
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A09:Z

    .line 57657
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uu;->A0A:Lcom/facebook/ads/redexgen/X/DM;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/DM;->ADW()V

    .line 57658
    return-void
.end method
