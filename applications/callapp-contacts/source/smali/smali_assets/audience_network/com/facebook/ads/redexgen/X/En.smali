.class public final Lcom/facebook/ads/redexgen/X/En;
.super Lcom/facebook/ads/redexgen/X/Ti;
.source ""


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/PE;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29745
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ti;-><init>()V

    return-void
.end method


# virtual methods
.method public final A05(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/redexgen/X/Ja;Lcom/facebook/ads/NativeAdLayout;)V
    .locals 10

    .line 29746
    move-object v2, p0

    invoke-virtual {p4}, Lcom/facebook/ads/NativeAdLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v8, Lcom/facebook/ads/MediaView;

    invoke-direct {v8, v0}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    .line 29747
    .local v8, "adIconView":Lcom/facebook/ads/MediaView;
    invoke-virtual {p4}, Lcom/facebook/ads/NativeAdLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v9, Lcom/facebook/ads/AdOptionsView;

    invoke-direct {v9, v0, p2, p4}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    .line 29748
    .local v0, "adOptionsView":Lcom/facebook/ads/AdOptionsView;
    const/16 v0, 0x14

    move-object v6, p3

    invoke-virtual {v6, v9, v0}, Lcom/facebook/ads/redexgen/X/Ja;->A09(Lcom/facebook/ads/AdOptionsView;I)V

    .line 29749
    invoke-virtual {p2}, Lcom/facebook/ads/NativeBannerAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/cD;

    move-result-object v0

    .line 29750
    .local v9, "internalNativeAd":Lcom/facebook/ads/redexgen/X/cD;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cD;->A16()Lcom/facebook/ads/redexgen/X/Jb;

    move-result-object v7

    .line 29751
    .local v0, "adType":Lcom/facebook/ads/redexgen/X/Jb;
    new-instance v3, Lcom/facebook/ads/redexgen/X/PW;

    move-object v5, p2

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/PW;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/redexgen/X/Ja;Lcom/facebook/ads/redexgen/X/Jb;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/AdOptionsView;)V

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/En;->A00:Lcom/facebook/ads/redexgen/X/PE;

    .line 29752
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Ja;->A00()I

    move-result v0

    invoke-static {p4, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0P(Landroid/view/View;I)V

    .line 29753
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/En;->A00:Lcom/facebook/ads/redexgen/X/PE;

    .line 29754
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PE;->getViewsForInteraction()Ljava/util/ArrayList;

    move-result-object v0

    .line 29755
    invoke-virtual {p2, p4, v8, v0}, Lcom/facebook/ads/NativeBannerAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    .line 29756
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 29757
    .local v4, "contentParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 29758
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/En;->A00:Lcom/facebook/ads/redexgen/X/PE;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PE;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p4, v0, v1}, Lcom/facebook/ads/NativeAdLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29759
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 29760
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/55;->onDetachedFromWindow()V

    .line 29761
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/En;->A00:Lcom/facebook/ads/redexgen/X/PE;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PE;->unregisterView()V

    .line 29762
    return-void
.end method
