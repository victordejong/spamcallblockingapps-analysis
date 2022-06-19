.class public final Lcom/facebook/ads/redexgen/X/ES;
.super Lcom/facebook/ads/redexgen/X/XJ;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;Lcom/facebook/ads/redexgen/X/0U;)V
    .locals 1
    .param p3    # Lcom/facebook/ads/redexgen/X/0U;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 29395
    if-nez p3, :cond_0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fo;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Fo;-><init>()V

    .line 29396
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/XJ;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8F;Lcom/facebook/ads/redexgen/X/0R;)V

    .line 29397
    return-void

    .line 29398
    :cond_0
    invoke-interface {p3}, Lcom/facebook/ads/redexgen/X/0U;->A8v()Lcom/facebook/ads/redexgen/X/RY;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A0A()Lcom/facebook/ads/redexgen/X/0R;
    .locals 1

    .line 29399
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ES;->A0F()Lcom/facebook/ads/redexgen/X/RY;

    move-result-object v0

    return-object v0
.end method

.method public final A0F()Lcom/facebook/ads/redexgen/X/RY;
    .locals 1

    .line 29400
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/RY;

    return-object v0
.end method
