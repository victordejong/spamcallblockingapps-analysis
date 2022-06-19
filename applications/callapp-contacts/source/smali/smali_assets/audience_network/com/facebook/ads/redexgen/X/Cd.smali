.class public final Lcom/facebook/ads/redexgen/X/Cd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Z5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrueHdSampleRechunker"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:Z

.field public final A05:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24596
    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cd;->A05:[B

    .line 24597
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 1

    .line 24598
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cd;->A04:Z

    .line 24599
    return-void
.end method

.method public final A01(Lcom/facebook/ads/redexgen/X/CH;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 24600
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cd;->A04:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 24601
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cd;->A05:[B

    const/16 v0, 0xa

    invoke-interface {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 24602
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 24603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cd;->A05:[B

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ao;->A06([B)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 24604
    return-void

    .line 24605
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cd;->A04:Z

    .line 24606
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Cd;->A02:I

    .line 24607
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cd;->A02:I

    if-nez v0, :cond_2

    .line 24608
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Cd;->A00:I

    .line 24609
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Cd;->A01:I

    .line 24610
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cd;->A01:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cd;->A01:I

    .line 24611
    return-void
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/Cc;)V
    .locals 7

    .line 24612
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cd;->A04:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cd;->A02:I

    if-lez v0, :cond_0

    .line 24613
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Cc;->A0W:Lcom/facebook/ads/redexgen/X/CS;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Cd;->A03:J

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Cd;->A00:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Cd;->A01:I

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/facebook/ads/redexgen/X/Cc;->A0V:Lcom/facebook/ads/redexgen/X/CR;

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/CS;->ADS(JIIILcom/facebook/ads/redexgen/X/CR;)V

    .line 24614
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cd;->A02:I

    .line 24615
    :cond_0
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/Cc;J)V
    .locals 7

    .line 24616
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cd;->A04:Z

    if-nez v0, :cond_0

    .line 24617
    return-void

    .line 24618
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Cd;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cd;->A02:I

    if-nez v1, :cond_1

    .line 24619
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Cd;->A03:J

    .line 24620
    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Cd;->A02:I

    const/16 v0, 0x10

    if-ge v1, v0, :cond_2

    .line 24621
    return-void

    .line 24622
    :cond_2
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Cc;->A0W:Lcom/facebook/ads/redexgen/X/CS;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Cd;->A03:J

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Cd;->A00:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Cd;->A01:I

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/facebook/ads/redexgen/X/Cc;->A0V:Lcom/facebook/ads/redexgen/X/CR;

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/CS;->ADS(JIIILcom/facebook/ads/redexgen/X/CR;)V

    .line 24623
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cd;->A02:I

    .line 24624
    return-void
.end method
