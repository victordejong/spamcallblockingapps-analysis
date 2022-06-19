.class public final Lcom/facebook/ads/redexgen/X/5E;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeAdViewApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;
    .locals 4
    .param p3    # Lcom/facebook/ads/NativeAdViewAttributes;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13290
    if-nez p3, :cond_0

    .line 13291
    new-instance p3, Lcom/facebook/ads/NativeAdViewAttributes;

    invoke-direct {p3}, Lcom/facebook/ads/NativeAdViewAttributes;-><init>()V

    .line 13292
    :cond_0
    invoke-virtual {p3}, Lcom/facebook/ads/NativeAdViewAttributes;->getInternalAttributes()Lcom/facebook/ads/internal/api/NativeAdViewAttributesApi;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Jc;

    .line 13293
    .local p0, "internalAttributes":Lcom/facebook/ads/redexgen/X/Jc;
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v1

    .line 13294
    .local p1, "internalNativeAd":Lcom/facebook/ads/redexgen/X/T6;
    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdView$Type;->getEnumCode()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jd;->A00(I)Lcom/facebook/ads/redexgen/X/Jd;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T6;->A1W(Lcom/facebook/ads/redexgen/X/Jd;)V

    .line 13295
    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/T6;->A1V(Lcom/facebook/ads/redexgen/X/Jc;)V

    .line 13296
    new-instance v0, Lcom/facebook/ads/redexgen/X/EO;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/EO;-><init>()V

    .line 13297
    .local p2, "mediumRectTemplateLayoutApi":Lcom/facebook/ads/redexgen/X/EO;
    new-instance v3, Lcom/facebook/ads/NativeAdLayout;

    invoke-direct {v3, p0, v0}, Lcom/facebook/ads/NativeAdLayout;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/api/NativeAdLayoutApi;)V

    .line 13298
    .local p3, "mediumRectTemplateLayout":Lcom/facebook/ads/NativeAdLayout;
    invoke-virtual {v0, v3, p0, p1, v2}, Lcom/facebook/ads/redexgen/X/EO;->A04(Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/redexgen/X/Jc;)V

    .line 13299
    const/4 v2, -0x1

    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    .line 13300
    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdView$Type;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v1, v1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 13301
    invoke-virtual {v3, v0}, Lcom/facebook/ads/NativeAdLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13302
    return-object v3
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;
    .locals 3
    .param p2    # Lcom/facebook/ads/NativeAdViewAttributes;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13303
    if-nez p2, :cond_0

    .line 13304
    new-instance p2, Lcom/facebook/ads/NativeAdViewAttributes;

    invoke-direct {p2}, Lcom/facebook/ads/NativeAdViewAttributes;-><init>()V

    .line 13305
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v1

    .line 13306
    .local p0, "internalNativeAd":Lcom/facebook/ads/redexgen/X/T6;
    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdViewAttributes;->getInternalAttributes()Lcom/facebook/ads/internal/api/NativeAdViewAttributesApi;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Jc;

    .line 13307
    .local p1, "internalAttributes":Lcom/facebook/ads/redexgen/X/Jc;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jd;->A0B:Lcom/facebook/ads/redexgen/X/Jd;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T6;->A1W(Lcom/facebook/ads/redexgen/X/Jd;)V

    .line 13308
    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/T6;->A1V(Lcom/facebook/ads/redexgen/X/Jc;)V

    .line 13309
    new-instance v1, Lcom/facebook/ads/redexgen/X/EO;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/EO;-><init>()V

    .line 13310
    .local p2, "mediumRectTemplateLayoutApi":Lcom/facebook/ads/redexgen/X/EO;
    new-instance v0, Lcom/facebook/ads/NativeAdLayout;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/NativeAdLayout;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/api/NativeAdLayoutApi;)V

    .line 13311
    .local p2, "mediumRectTemplateLayout":Lcom/facebook/ads/NativeAdLayout;
    invoke-virtual {v1, v0, p0, p1, v2}, Lcom/facebook/ads/redexgen/X/EO;->A04(Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/redexgen/X/Jc;)V

    .line 13312
    return-object v0
.end method


# virtual methods
.method public final render(Landroid/content/Context;Lcom/facebook/ads/NativeAd;)Landroid/view/View;
    .locals 1

    .line 13313
    const/4 v0, 0x0

    check-cast v0, Lcom/facebook/ads/NativeAdViewAttributes;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/5E;->render(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final render(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdView$Type;)Landroid/view/View;
    .locals 1

    .line 13314
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/5E;->render(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final render(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;
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

    .line 13315
    :try_start_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/56;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/5E;->A00(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13316
    :catchall_0
    move-exception v1

    .line 13317
    .local p0, "t":Ljava/lang/Throwable;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/56;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    .line 13318
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/MH;->A00(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/Throwable;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final render(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;
    .locals 2
    .param p3    # Lcom/facebook/ads/NativeAdViewAttributes;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 13319
    :try_start_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/56;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/5E;->A01(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13320
    :catchall_0
    move-exception v1

    .line 13321
    .local p0, "t":Ljava/lang/Throwable;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/56;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    .line 13322
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/MH;->A00(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/Throwable;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
