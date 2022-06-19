.class public final Lcom/facebook/ads/redexgen/X/Tm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HI;


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/HI;

.field public final A02:Lcom/facebook/ads/redexgen/X/IQ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/HI;Lcom/facebook/ads/redexgen/X/IQ;I)V
    .locals 1

    .line 55345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55346
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/HI;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Tm;->A01:Lcom/facebook/ads/redexgen/X/HI;

    .line 55347
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/IQ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Tm;->A02:Lcom/facebook/ads/redexgen/X/IQ;

    .line 55348
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Tm;->A00:I

    .line 55349
    return-void
.end method


# virtual methods
.method public final A7T()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 55350
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tm;->A01:Lcom/facebook/ads/redexgen/X/HI;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HI;->A7T()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final ACC(Lcom/facebook/ads/redexgen/X/HM;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55351
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tm;->A02:Lcom/facebook/ads/redexgen/X/IQ;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Tm;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IQ;->A02(I)V

    .line 55352
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tm;->A01:Lcom/facebook/ads/redexgen/X/HI;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/HI;->ACC(Lcom/facebook/ads/redexgen/X/HM;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55353
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tm;->A01:Lcom/facebook/ads/redexgen/X/HI;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HI;->close()V

    .line 55354
    return-void
.end method

.method public final read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55355
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tm;->A02:Lcom/facebook/ads/redexgen/X/IQ;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Tm;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IQ;->A02(I)V

    .line 55356
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tm;->A01:Lcom/facebook/ads/redexgen/X/HI;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/HI;->read([BII)I

    move-result v0

    return v0
.end method
