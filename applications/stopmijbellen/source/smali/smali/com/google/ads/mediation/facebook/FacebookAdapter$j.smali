.class public Lcom/google/ads/mediation/facebook/FacebookAdapter$j;
.super Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/facebook/FacebookAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation


# instance fields
.field public a:Lcom/facebook/ads/NativeAd;

.field public b:Lcom/facebook/ads/NativeBannerAd;

.field public final synthetic c:Lcom/google/ads/mediation/facebook/FacebookAdapter;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;Lcom/facebook/ads/NativeAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->c:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->a:Lcom/facebook/ads/NativeAd;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;Lcom/facebook/ads/NativeBannerAd;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->c:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->b:Lcom/facebook/ads/NativeBannerAd;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/google/ads/mediation/facebook/FacebookAdapter$g;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->c:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$1500(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "social_context"

    const-string v3, "id"

    const-string v4, "com.google.ads.mediation.facebook"

    const-string v5, "Ad from Facebook doesn\'t have all assets required for the Native Banner Ad format."

    const/16 v6, 0x6c

    const/4 v7, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->b:Lcom/facebook/ads/NativeBannerAd;

    .line 3
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdHeadline()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdBodyText()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdIcon()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 6
    new-instance p1, Lcom/google/android/gms/ads/AdError;

    invoke-direct {p1, v6, v5, v4}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-interface {p2, p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$g;->a(Lcom/google/android/gms/ads/AdError;)V

    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->b:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdHeadline()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setHeadline(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->b:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdBodyText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setBody(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->b:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getPreloadedIconViewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->b:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdIcon()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v0

    if-nez v0, :cond_2

    .line 13
    new-instance v0, Lcom/google/ads/mediation/facebook/FacebookAdapter$e;

    invoke-direct {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$e;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    goto :goto_1

    .line 14
    :cond_2
    new-instance v0, Lcom/google/ads/mediation/facebook/FacebookAdapter$e;

    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->b:Lcom/facebook/ads/NativeBannerAd;

    .line 15
    invoke-virtual {v1}, Lcom/facebook/ads/NativeAdBase;->getAdIcon()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAdBase$Image;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$e;-><init>(Landroid/net/Uri;)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    goto :goto_1

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->b:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getPreloadedIconViewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/google/ads/mediation/facebook/FacebookAdapter$e;

    invoke-direct {v1, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$e;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 19
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    .line 20
    :goto_1
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->b:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setCallToAction(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->b:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdvertiserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setAdvertiser(Ljava/lang/String;)V

    .line 22
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 23
    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->b:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAdBase;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 24
    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->b:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAdBase;->getAdSocialContext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setExtras(Landroid/os/Bundle;)V

    goto/16 :goto_4

    .line 26
    :cond_4
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->a:Lcom/facebook/ads/NativeAd;

    .line 27
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdHeadline()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 28
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdBodyText()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdIcon()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 29
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->c:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$1600(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v7, 0x1

    :cond_5
    if-nez v7, :cond_6

    .line 30
    new-instance p1, Lcom/google/android/gms/ads/AdError;

    invoke-direct {p1, v6, v5, v4}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-interface {p2, p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$g;->a(Lcom/google/android/gms/ads/AdError;)V

    return-void

    .line 33
    :cond_6
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdHeadline()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setHeadline(Ljava/lang/String;)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    new-instance v4, Lcom/google/ads/mediation/facebook/FacebookAdapter$e;

    iget-object v5, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->a:Lcom/facebook/ads/NativeAd;

    .line 36
    invoke-virtual {v5}, Lcom/facebook/ads/NativeAdBase;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/ads/NativeAdBase$Image;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/ads/mediation/facebook/FacebookAdapter$e;-><init>(Landroid/net/Uri;)V

    .line 37
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setImages(Ljava/util/List;)V

    .line 39
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdBodyText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setBody(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getPreloadedIconViewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_8

    .line 41
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdIcon()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v0

    if-nez v0, :cond_7

    .line 42
    new-instance v0, Lcom/google/ads/mediation/facebook/FacebookAdapter$e;

    invoke-direct {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$e;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    goto :goto_2

    .line 43
    :cond_7
    new-instance v0, Lcom/google/ads/mediation/facebook/FacebookAdapter$e;

    iget-object v4, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->a:Lcom/facebook/ads/NativeAd;

    .line 44
    invoke-virtual {v4}, Lcom/facebook/ads/NativeAdBase;->getAdIcon()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/ads/NativeAdBase$Image;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/google/ads/mediation/facebook/FacebookAdapter$e;-><init>(Landroid/net/Uri;)V

    .line 45
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    goto :goto_2

    .line 46
    :cond_8
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getPreloadedIconViewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 47
    new-instance v4, Lcom/google/ads/mediation/facebook/FacebookAdapter$e;

    invoke-direct {v4, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$e;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 48
    invoke-virtual {p0, v4}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    .line 49
    :goto_2
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setCallToAction(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdvertiserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setAdvertiser(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->c:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$1600(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    new-instance v4, Lcom/google/ads/mediation/facebook/FacebookAdapter$j$a;

    invoke-direct {v4, p0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$j$a;-><init>(Lcom/google/ads/mediation/facebook/FacebookAdapter$j;)V

    invoke-virtual {v0, v4}, Lcom/facebook/ads/MediaView;->setListener(Lcom/facebook/ads/MediaViewListener;)V

    .line 52
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->c:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$1600(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setMediaView(Landroid/view/View;)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setHasVideoContent(Z)V

    .line 54
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdStarRating()Lcom/facebook/ads/NativeAdBase$Rating;

    move-result-object v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_3

    :cond_9
    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    .line 55
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase$Rating;->getValue()D

    move-result-wide v6

    mul-double v6, v6, v4

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase$Rating;->getScale()D

    move-result-wide v0

    div-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_a

    .line 56
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setStarRating(Ljava/lang/Double;)V

    .line 57
    :cond_a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAdBase;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 59
    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->a:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAdBase;->getAdSocialContext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setExtras(Landroid/os/Bundle;)V

    .line 61
    :goto_4
    new-instance v0, Lcom/facebook/ads/NativeAdLayout;

    invoke-direct {v0, p1}, Lcom/facebook/ads/NativeAdLayout;-><init>(Landroid/content/Context;)V

    .line 62
    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->c:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {v1}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$1500(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 63
    new-instance v1, Lcom/facebook/ads/AdOptionsView;

    iget-object v2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->b:Lcom/facebook/ads/NativeBannerAd;

    invoke-direct {v1, p1, v2, v0}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    goto :goto_5

    .line 64
    :cond_b
    new-instance v1, Lcom/facebook/ads/AdOptionsView;

    iget-object v2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->a:Lcom/facebook/ads/NativeAd;

    invoke-direct {v1, p1, v2, v0}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    .line 65
    :goto_5
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setAdChoicesContent(Landroid/view/View;)V

    .line 66
    invoke-interface {p2}, Lcom/google/ads/mediation/facebook/FacebookAdapter$g;->b()V

    return-void
.end method

.method public trackViews(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 p3, 0x1

    .line 1
    invoke-virtual {p0, p3}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setOverrideImpressionRecording(Z)V

    .line 2
    invoke-virtual {p0, p3}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setOverrideClickHandling(Z)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "3003"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->c:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {p2}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$1500(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Z

    move-result p2

    if-eqz p2, :cond_4

    if-nez v1, :cond_2

    .line 9
    sget-object p1, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->TAG:Ljava/lang/String;

    const-string p2, "Missing or invalid native ad icon asset. Facebook impression recording might be impacted for this ad."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_2
    instance-of p2, v1, Landroid/widget/ImageView;

    if-nez p2, :cond_3

    new-array p1, p3, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "Native ad icon asset is rendered with an incompatible class type. Facebook impression recording might be impacted for this ad. Expected: ImageView, actual: %s."

    .line 12
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 13
    sget-object p2, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 14
    :cond_3
    iget-object p2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->b:Lcom/facebook/ads/NativeBannerAd;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p2, p1, v1}, Lcom/facebook/ads/NativeBannerAd;->registerViewForInteraction(Landroid/view/View;Landroid/widget/ImageView;)V

    return-void

    .line 15
    :cond_4
    instance-of p2, v1, Landroid/widget/ImageView;

    if-eqz p2, :cond_5

    .line 16
    iget-object p2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->a:Lcom/facebook/ads/NativeAd;

    iget-object p3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->c:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {p3}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$1600(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/facebook/ads/MediaView;

    move-result-object p3

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p2, p1, p3, v1, v0}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Landroid/widget/ImageView;Ljava/util/List;)V

    goto :goto_1

    .line 17
    :cond_5
    sget-object p2, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->TAG:Ljava/lang/String;

    const-string p3, "Native icon asset is not of type ImageView.Calling registerViewForInteraction() without a reference to the icon view."

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object p2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->a:Lcom/facebook/ads/NativeAd;

    iget-object p3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->c:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {p3}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$1600(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/facebook/ads/MediaView;

    move-result-object p3

    invoke-virtual {p2, p1, p3, v0}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method public untrackView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->c:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$1500(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->b:Lcom/facebook/ads/NativeBannerAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->unregisterView()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$j;->a:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->unregisterView()V

    .line 5
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->untrackView(Landroid/view/View;)V

    return-void
.end method
