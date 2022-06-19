.class public final Lcom/facebook/ads/redexgen/X/5L;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeBannerAdViewApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/NativeBannerAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;
    .locals 4
    .param p3    # Lcom/facebook/ads/NativeAdViewAttributes;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13367
    if-nez p3, :cond_0

    .line 13368
    new-instance p3, Lcom/facebook/ads/NativeAdViewAttributes;

    invoke-direct {p3}, Lcom/facebook/ads/NativeAdViewAttributes;-><init>()V

    .line 13369
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/NativeBannerAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/cD;

    move-result-object v1

    .line 13370
    .local p0, "internalNativeAd":Lcom/facebook/ads/redexgen/X/cD;
    invoke-virtual {p2}, Lcom/facebook/ads/NativeBannerAdView$Type;->getEnumCode()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jb;->A00(I)Lcom/facebook/ads/redexgen/X/Jb;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cD;->A1W(Lcom/facebook/ads/redexgen/X/Jb;)V

    .line 13371
    new-instance v1, Lcom/facebook/ads/redexgen/X/En;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/En;-><init>()V

    .line 13372
    .local p1, "bannerTemplateLayoutApi":Lcom/facebook/ads/redexgen/X/En;
    new-instance v3, Lcom/facebook/ads/NativeAdLayout;

    invoke-direct {v3, p0, v1}, Lcom/facebook/ads/NativeAdLayout;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/api/NativeAdLayoutApi;)V

    .line 13373
    .local p2, "templateView":Lcom/facebook/ads/NativeAdLayout;
    invoke-virtual {p3}, Lcom/facebook/ads/NativeAdViewAttributes;->getInternalAttributes()Lcom/facebook/ads/internal/api/NativeAdViewAttributesApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ja;

    .line 13374
    invoke-virtual {v1, p0, p1, v0, v3}, Lcom/facebook/ads/redexgen/X/En;->A05(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/redexgen/X/Ja;Lcom/facebook/ads/NativeAdLayout;)V

    .line 13375
    const/4 v2, -0x1

    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    .line 13376
    invoke-virtual {p2}, Lcom/facebook/ads/NativeBannerAdView$Type;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v1, v1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 13377
    invoke-virtual {v3, v0}, Lcom/facebook/ads/NativeAdLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13378
    return-object v3
.end method


# virtual methods
.method public final render(Landroid/content/Context;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/NativeBannerAdView$Type;)Landroid/view/View;
    .locals 1

    .line 13379
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/5L;->render(Landroid/content/Context;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/NativeBannerAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final render(Landroid/content/Context;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/NativeBannerAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;
    .locals 2
    .param p4    # Lcom/facebook/ads/NativeAdViewAttributes;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 13380
    :try_start_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/56;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/5L;->A00(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/NativeBannerAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13381
    :catchall_0
    move-exception v1

    .line 13382
    .local p0, "t":Ljava/lang/Throwable;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/56;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    .line 13383
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/MJ;->A00(Lcom/facebook/ads/redexgen/X/XJ;Ljava/lang/Throwable;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
