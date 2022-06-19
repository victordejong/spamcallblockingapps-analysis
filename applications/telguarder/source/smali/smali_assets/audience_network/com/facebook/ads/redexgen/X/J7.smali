.class public final Lcom/facebook/ads/redexgen/X/J7;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/redexgen/X/Qu;)V
    .locals 2

    .line 39769
    sget-object v0, Lcom/facebook/ads/redexgen/X/Qf;->A07:Lcom/facebook/ads/redexgen/X/Qf;

    .line 39770
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Qu;->A4L(Lcom/facebook/ads/redexgen/X/Qf;)Lcom/facebook/ads/redexgen/X/Qe;

    move-result-object v1

    .line 39771
    .local p0, "syncBundle":Lcom/facebook/ads/redexgen/X/Qe;
    new-instance v0, Lcom/facebook/ads/redexgen/X/TY;

    invoke-direct {v0, v1, p0}, Lcom/facebook/ads/redexgen/X/TY;-><init>(Lcom/facebook/ads/redexgen/X/Qe;Lcom/facebook/ads/redexgen/X/Wl;)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Qe;->A3F(Lcom/facebook/ads/redexgen/X/Qg;)V

    .line 39772
    return-void
.end method
