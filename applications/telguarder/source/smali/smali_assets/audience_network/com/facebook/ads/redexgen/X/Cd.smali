.class public final Lcom/facebook/ads/redexgen/X/Cd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/VV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrueHdSampleRechunker"
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:Z

.field public final A05:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Cd;->A00()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24607
    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cd;->A05:[B

    .line 24608
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "vqZuLZmwyJoQCn3dDVAvA9krs3k4N2KH"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "BVVTCdxWGIjFQJijdTUMtY6yNphoOYjM"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ct5ZfCLO"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "LV4tJsQBmr03q3DZkv7mLB0UIhbr3gWl"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "z6f3xzYfdP4ek8tVyJ4BYJAYawkBEYt1"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "visbB"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Flu4sxwXmQ9lIpY85hVUVqldxwTrnwSv"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "es2LJtZqop5B4yioqotPNpWsSXMR71nI"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Cd;->A06:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 1

    .line 24609
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cd;->A04:Z

    .line 24610
    return-void
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/CH;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 24611
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cd;->A04:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 24612
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cd;->A05:[B

    const/16 v0, 0xa

    invoke-interface {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 24613
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 24614
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cd;->A05:[B

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ao;->A06([B)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 24615
    return-void

    .line 24616
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cd;->A04:Z

    .line 24617
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Cd;->A02:I

    .line 24618
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cd;->A02:I

    if-nez v0, :cond_2

    .line 24619
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Cd;->A00:I

    .line 24620
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Cd;->A01:I

    .line 24621
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cd;->A01:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cd;->A01:I

    .line 24622
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/Cc;)V
    .locals 7

    .line 24623
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cd;->A04:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cd;->A02:I

    if-lez v0, :cond_0

    .line 24624
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Cc;->A0W:Lcom/facebook/ads/redexgen/X/CS;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Cd;->A03:J

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Cd;->A00:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Cd;->A01:I

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/facebook/ads/redexgen/X/Cc;->A0V:Lcom/facebook/ads/redexgen/X/CR;

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/CS;->ADT(JIIILcom/facebook/ads/redexgen/X/CR;)V

    .line 24625
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cd;->A02:I

    .line 24626
    :cond_0
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/Cc;J)V
    .locals 7

    .line 24627
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cd;->A04:Z

    if-nez v0, :cond_0

    .line 24628
    return-void

    .line 24629
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Cd;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cd;->A02:I

    if-nez v1, :cond_1

    .line 24630
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Cd;->A03:J

    .line 24631
    :cond_1
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Cd;->A02:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cd;->A06:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cd;->A06:[Ljava/lang/String;

    const-string v1, "LNyPrMKuGH5FS54DNmSNUamrUHDB1YrV"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/16 v0, 0x10

    if-ge v3, v0, :cond_2

    .line 24632
    return-void

    .line 24633
    :cond_2
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Cc;->A0W:Lcom/facebook/ads/redexgen/X/CS;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Cd;->A03:J

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Cd;->A00:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Cd;->A01:I

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/facebook/ads/redexgen/X/Cc;->A0V:Lcom/facebook/ads/redexgen/X/CR;

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/CS;->ADT(JIIILcom/facebook/ads/redexgen/X/CR;)V

    .line 24634
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cd;->A02:I

    .line 24635
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
