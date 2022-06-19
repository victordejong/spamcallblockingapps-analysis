.class public final Lcom/facebook/ads/redexgen/X/OW;
.super Ljava/io/InputStream;
.source ""


# instance fields
.field public A00:I

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/HI;

.field public final A03:Landroid/net/Uri;

.field public final A04:Lcom/facebook/ads/redexgen/X/HH;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/HH;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46718
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 46719
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/OW;->A04:Lcom/facebook/ads/redexgen/X/HH;

    .line 46720
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OW;->A03:Landroid/net/Uri;

    .line 46721
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/OW;->A00(I)V

    .line 46722
    return-void
.end method

.method private A00(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46723
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OW;->A02:Lcom/facebook/ads/redexgen/X/HI;

    if-eqz v0, :cond_0

    .line 46724
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HI;->close()V

    .line 46725
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OW;->A04:Lcom/facebook/ads/redexgen/X/HH;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HH;->A4E()Lcom/facebook/ads/redexgen/X/HI;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OW;->A02:Lcom/facebook/ads/redexgen/X/HI;

    .line 46726
    new-instance v1, Lcom/facebook/ads/redexgen/X/HM;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/OW;->A03:Landroid/net/Uri;

    int-to-long v3, p1

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/HM;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 46727
    .local p0, "dataSpec":Lcom/facebook/ads/redexgen/X/HM;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OW;->A02:Lcom/facebook/ads/redexgen/X/HI;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/HI;->ACC(Lcom/facebook/ads/redexgen/X/HM;)J

    move-result-wide v1

    long-to-int v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/OW;->A01:J

    .line 46728
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 4

    .line 46729
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/OW;->A01:J

    long-to-int v1, v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/OW;->A00:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46730
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OW;->A02:Lcom/facebook/ads/redexgen/X/HI;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HI;->close()V

    .line 46731
    return-void
.end method

.method public final read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46732
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 46733
    .local p0, "b":[B
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/OW;->read([B)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46734
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OW;->A02:Lcom/facebook/ads/redexgen/X/HI;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/HI;->read([BII)I

    move-result v1

    .line 46735
    .local p0, "read":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/OW;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/OW;->A00:I

    .line 46736
    return v1
.end method

.method public final skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46737
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/OW;->A01:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/OW;->A00:I

    int-to-long v0, v0

    sub-long/2addr v3, v0

    .line 46738
    .local p0, "available":J
    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gtz v0, :cond_0

    .line 46739
    return-wide v1

    .line 46740
    .local v2, "skipped":J
    :cond_0
    cmp-long v0, p1, v3

    if-lez v0, :cond_1

    .line 46741
    move-wide p1, v3

    .line 46742
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/OW;->A00:I

    int-to-long v1, v0

    add-long/2addr v1, p1

    long-to-int v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/OW;->A00:I

    .line 46743
    iget v0, p0, Lcom/facebook/ads/redexgen/X/OW;->A00:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/OW;->A00(I)V

    .line 46744
    return-wide p1
.end method
