.class public final Lcom/facebook/ads/redexgen/X/Dz;
.super Lcom/facebook/ads/redexgen/X/Wm;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;Lcom/facebook/ads/redexgen/X/0U;)V
    .locals 1
    .param p3    # Lcom/facebook/ads/redexgen/X/0U;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 29180
    if-nez p3, :cond_0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fd;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Fd;-><init>()V

    .line 29181
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Wm;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;Lcom/facebook/ads/redexgen/X/0R;)V

    .line 29182
    return-void

    .line 29183
    :cond_0
    invoke-interface {p3}, Lcom/facebook/ads/redexgen/X/0U;->A8x()Lcom/facebook/ads/redexgen/X/cQ;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A0B()Lcom/facebook/ads/redexgen/X/0R;
    .locals 1

    .line 29184
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dz;->A0G()Lcom/facebook/ads/redexgen/X/cQ;

    move-result-object v0

    return-object v0
.end method

.method public final A0G()Lcom/facebook/ads/redexgen/X/cQ;
    .locals 1

    .line 29185
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/cQ;

    return-object v0
.end method
