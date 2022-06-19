.class public final Lcom/facebook/ads/redexgen/X/J7;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/XK;Lcom/facebook/ads/redexgen/X/Qv;)V
    .locals 2

    .line 39689
    sget-object v0, Lcom/facebook/ads/redexgen/X/Qk;->A07:Lcom/facebook/ads/redexgen/X/Qk;

    .line 39690
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Qv;->A4O(Lcom/facebook/ads/redexgen/X/Qk;)Lcom/facebook/ads/redexgen/X/Qj;

    move-result-object v1

    .line 39691
    .local p0, "syncBundle":Lcom/facebook/ads/redexgen/X/Qj;
    new-instance v0, Lcom/facebook/ads/redexgen/X/bl;

    invoke-direct {v0, v1, p0}, Lcom/facebook/ads/redexgen/X/bl;-><init>(Lcom/facebook/ads/redexgen/X/Qj;Lcom/facebook/ads/redexgen/X/XK;)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Qj;->A3J(Lcom/facebook/ads/redexgen/X/Ql;)V

    .line 39692
    return-void
.end method
