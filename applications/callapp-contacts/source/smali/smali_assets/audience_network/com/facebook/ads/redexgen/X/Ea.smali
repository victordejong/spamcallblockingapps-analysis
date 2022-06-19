.class public final Lcom/facebook/ads/redexgen/X/Ea;
.super Lcom/facebook/ads/redexgen/X/Ti;
.source ""


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/PE;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29449
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ti;-><init>()V

    return-void
.end method


# virtual methods
.method public final A05(Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/redexgen/X/Ja;)V
    .locals 11

    .line 29450
    move-object v2, p0

    new-instance v8, Lcom/facebook/ads/redexgen/X/No;

    move-object v4, p2

    invoke-direct {v8, v4}, Lcom/facebook/ads/redexgen/X/No;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 29451
    .local v9, "adIconView":Lcom/facebook/ads/redexgen/X/No;
    new-instance v9, Lcom/facebook/ads/MediaView;

    invoke-direct {v9, v4}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    .line 29452
    .local v10, "mediaView":Lcom/facebook/ads/MediaView;
    new-instance v10, Lcom/facebook/ads/AdOptionsView;

    invoke-direct {v10, v4, p3, p1}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    .line 29453
    .local v10, "adOptionsView":Lcom/facebook/ads/AdOptionsView;
    const/16 v0, 0x1c

    move-object v6, p4

    invoke-virtual {v6, v10, v0}, Lcom/facebook/ads/redexgen/X/Ja;->A09(Lcom/facebook/ads/AdOptionsView;I)V

    .line 29454
    invoke-virtual {p3}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/cD;

    move-result-object v0

    .line 29455
    .local v6, "internalNativeAd":Lcom/facebook/ads/redexgen/X/cD;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cD;->A16()Lcom/facebook/ads/redexgen/X/Jb;

    move-result-object v7

    .line 29456
    .local v0, "viewType":Lcom/facebook/ads/redexgen/X/Jb;
    new-instance v3, Lcom/facebook/ads/redexgen/X/PV;

    move-object v5, p3

    move-object v0, v3

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/PV;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/redexgen/X/Ja;Lcom/facebook/ads/redexgen/X/Jb;Lcom/facebook/ads/redexgen/X/No;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/AdOptionsView;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Ea;->A00:Lcom/facebook/ads/redexgen/X/PE;

    .line 29457
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Ja;->A00()I

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0P(Landroid/view/View;I)V

    .line 29458
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Ea;->A00:Lcom/facebook/ads/redexgen/X/PE;

    .line 29459
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PE;->getViewsForInteraction()Ljava/util/ArrayList;

    move-result-object v0

    .line 29460
    invoke-virtual {p3, p1, v9, v8, v0}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Landroid/widget/ImageView;Ljava/util/List;)V

    .line 29461
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 29462
    .local v4, "contentParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 29463
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Ea;->A00:Lcom/facebook/ads/redexgen/X/PE;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PE;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/ads/NativeAdLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29464
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 29465
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/55;->onDetachedFromWindow()V

    .line 29466
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ea;->A00:Lcom/facebook/ads/redexgen/X/PE;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PE;->unregisterView()V

    .line 29467
    return-void
.end method
