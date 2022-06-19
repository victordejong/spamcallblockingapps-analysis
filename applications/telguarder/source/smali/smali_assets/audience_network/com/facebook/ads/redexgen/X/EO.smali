.class public final Lcom/facebook/ads/redexgen/X/EO;
.super Lcom/facebook/ads/redexgen/X/aN;
.source ""


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/P9;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29422
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aN;-><init>()V

    return-void
.end method


# virtual methods
.method public final A04(Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/redexgen/X/Jc;)V
    .locals 11

    .line 29423
    move-object v2, p0

    new-instance v8, Lcom/facebook/ads/redexgen/X/Nj;

    move-object v4, p2

    invoke-direct {v8, v4}, Lcom/facebook/ads/redexgen/X/Nj;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 29424
    .local v9, "adIconView":Lcom/facebook/ads/redexgen/X/Nj;
    new-instance v9, Lcom/facebook/ads/MediaView;

    invoke-direct {v9, v4}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    .line 29425
    .local v10, "mediaView":Lcom/facebook/ads/MediaView;
    new-instance v10, Lcom/facebook/ads/AdOptionsView;

    invoke-direct {v10, v4, p3, p1}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    .line 29426
    .local v10, "adOptionsView":Lcom/facebook/ads/AdOptionsView;
    const/16 v0, 0x1c

    move-object v6, p4

    invoke-virtual {v6, v10, v0}, Lcom/facebook/ads/redexgen/X/Jc;->A09(Lcom/facebook/ads/AdOptionsView;I)V

    .line 29427
    invoke-virtual {p3}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v0

    .line 29428
    .local v6, "internalNativeAd":Lcom/facebook/ads/redexgen/X/T6;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T6;->A16()Lcom/facebook/ads/redexgen/X/Jd;

    move-result-object v7

    .line 29429
    .local v0, "viewType":Lcom/facebook/ads/redexgen/X/Jd;
    new-instance v3, Lcom/facebook/ads/redexgen/X/PO;

    move-object v5, p3

    move-object v0, v3

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/PO;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/redexgen/X/Jc;Lcom/facebook/ads/redexgen/X/Jd;Lcom/facebook/ads/redexgen/X/Nj;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/AdOptionsView;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A00:Lcom/facebook/ads/redexgen/X/P9;

    .line 29430
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Jc;->A00()I

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0O(Landroid/view/View;I)V

    .line 29431
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A00:Lcom/facebook/ads/redexgen/X/P9;

    .line 29432
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/P9;->getViewsForInteraction()Ljava/util/ArrayList;

    move-result-object v0

    .line 29433
    invoke-virtual {p3, p1, v9, v8, v0}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Landroid/widget/ImageView;Ljava/util/List;)V

    .line 29434
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 29435
    .local v4, "contentParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 29436
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/EO;->A00:Lcom/facebook/ads/redexgen/X/P9;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/P9;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/ads/NativeAdLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29437
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 29438
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/55;->onDetachedFromWindow()V

    .line 29439
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EO;->A00:Lcom/facebook/ads/redexgen/X/P9;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/P9;->unregisterView()V

    .line 29440
    return-void
.end method
