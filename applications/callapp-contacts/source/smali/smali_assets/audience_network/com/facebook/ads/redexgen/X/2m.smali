.class public Lcom/facebook/ads/redexgen/X/2m;
.super Lcom/facebook/ads/redexgen/X/Eq;
.source ""


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 0

    .line 5906
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Eq;-><init>(Landroid/content/Context;)V

    .line 5907
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2m;->setCarouselLayoutManager(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 5908
    return-void
.end method

.method private setCarouselLayoutManager(Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 3

    .line 5914
    const/4 v0, 0x0

    new-instance v2, Lcom/facebook/ads/redexgen/X/TB;

    invoke-direct {v2, p1, v0, v0}, Lcom/facebook/ads/redexgen/X/TB;-><init>(Landroid/content/Context;IZ)V

    .line 5915
    .local p0, "linearLayoutManager":Lcom/facebook/ads/redexgen/X/TB;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt v1, v0, :cond_0

    .line 5916
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4K;->A1W(Z)V

    .line 5917
    :cond_0
    invoke-super {p0, v2}, Lcom/facebook/ads/redexgen/X/Eq;->setLayoutManager(Lcom/facebook/ads/redexgen/X/4K;)V

    .line 5918
    return-void
.end method


# virtual methods
.method public getFullscreenCarouselRecyclerViewAdapter()Lcom/facebook/ads/redexgen/X/RG;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 5909
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Eq;->getAdapter()Lcom/facebook/ads/redexgen/X/48;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/RG;

    if-eqz v0, :cond_0

    .line 5910
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Eq;->getAdapter()Lcom/facebook/ads/redexgen/X/48;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/RG;

    return-object v0

    .line 5911
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getLayoutManager()Lcom/facebook/ads/redexgen/X/4K;
    .locals 1

    .line 5912
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2m;->getLayoutManager()Lcom/facebook/ads/redexgen/X/TB;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutManager()Lcom/facebook/ads/redexgen/X/TB;
    .locals 1

    .line 5913
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Eq;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4K;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/TB;

    return-object v0
.end method

.method public setLayoutManager(Lcom/facebook/ads/redexgen/X/4K;)V
    .locals 0

    .line 5919
    return-void
.end method
