.class public final Lcom/facebook/ads/redexgen/X/bQ;
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

    .line 69866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69867
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/HI;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A01:Lcom/facebook/ads/redexgen/X/HI;

    .line 69868
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/IQ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A02:Lcom/facebook/ads/redexgen/X/IQ;

    .line 69869
    iput p3, p0, Lcom/facebook/ads/redexgen/X/bQ;->A00:I

    .line 69870
    return-void
.end method


# virtual methods
.method public final A7R()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 69871
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A01:Lcom/facebook/ads/redexgen/X/HI;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HI;->A7R()Landroid/net/Uri;

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

    .line 69872
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bQ;->A02:Lcom/facebook/ads/redexgen/X/IQ;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IQ;->A02(I)V

    .line 69873
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A01:Lcom/facebook/ads/redexgen/X/HI;

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

    .line 69874
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A01:Lcom/facebook/ads/redexgen/X/HI;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HI;->close()V

    .line 69875
    return-void
.end method

.method public final read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69876
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bQ;->A02:Lcom/facebook/ads/redexgen/X/IQ;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IQ;->A02(I)V

    .line 69877
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bQ;->A01:Lcom/facebook/ads/redexgen/X/HI;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/HI;->read([BII)I

    move-result v0

    return v0
.end method
