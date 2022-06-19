.class public Lq2/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/AdListener;
.implements Lcom/facebook/ads/NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/facebook/ads/NativeAdBase;

.field public final synthetic c:Lq2/d;


# direct methods
.method public constructor <init>(Lq2/d;Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq2/d$b;->c:Lq2/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lq2/d$b;->b:Lcom/facebook/ads/NativeAdBase;

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lq2/d$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lq2/d$b;->c:Lq2/d;

    .line 2
    iget-object p1, p1, Lq2/d;->d:Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->onAdOpened()V

    .line 4
    iget-object p1, p0, Lq2/d$b;->c:Lq2/d;

    .line 5
    iget-object p1, p1, Lq2/d;->d:Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;->onAdLeftApplication()V

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lq2/d$b;->b:Lcom/facebook/ads/NativeAdBase;

    const-string v1, "com.google.ads.mediation.facebook"

    if-eq p1, v0, :cond_0

    .line 2
    new-instance p1, Lcom/google/android/gms/ads/AdError;

    const/16 v0, 0x6a

    const-string v2, "Ad Loaded is not a Native Ad."

    invoke-direct {p1, v0, v2, v1}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lq2/d$b;->c:Lq2/d;

    .line 5
    iget-object v0, v0, Lq2/d;->b:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 6
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    return-void

    .line 7
    :cond_0
    iget-object p1, p0, Lq2/d$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-nez p1, :cond_1

    .line 8
    new-instance p1, Lcom/google/android/gms/ads/AdError;

    const/16 v0, 0x6b

    const-string v2, "Context is null."

    invoke-direct {p1, v0, v2, v1}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lq2/d$b;->c:Lq2/d;

    .line 11
    iget-object v0, v0, Lq2/d;->b:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 12
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    return-void

    .line 13
    :cond_1
    iget-object v0, p0, Lq2/d$b;->c:Lq2/d;

    .line 14
    iget-object v2, v0, Lq2/d;->c:Lcom/facebook/ads/NativeAdBase;

    .line 15
    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdBase;->getAdHeadline()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    .line 16
    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdBase;->getAdBodyText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdBase;->getAdIcon()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 17
    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdBase;->getAdCallToAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 18
    :goto_0
    instance-of v6, v2, Lcom/facebook/ads/NativeBannerAd;

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    .line 19
    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdBase;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lq2/d;->e:Lcom/facebook/ads/MediaView;

    if-eqz v2, :cond_4

    const/4 v4, 0x1

    :cond_4
    move v3, v4

    :goto_1
    if-nez v3, :cond_5

    .line 20
    new-instance p1, Lcom/google/android/gms/ads/AdError;

    const/16 v0, 0x6c

    const-string v2, "Ad from Facebook doesn\'t have all required assets."

    invoke-direct {p1, v0, v2, v1}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object v0, p0, Lq2/d$b;->c:Lq2/d;

    .line 24
    iget-object v0, v0, Lq2/d;->b:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 25
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    goto/16 :goto_3

    .line 26
    :cond_5
    iget-object v1, v0, Lq2/d;->c:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAdBase;->getAdHeadline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setHeadline(Ljava/lang/String;)V

    .line 27
    iget-object v1, v0, Lq2/d;->c:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAdBase;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    new-instance v2, Lq2/d$a;

    iget-object v3, v0, Lq2/d;->c:Lcom/facebook/ads/NativeAdBase;

    .line 30
    invoke-virtual {v3}, Lcom/facebook/ads/NativeAdBase;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/NativeAdBase$Image;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v3}, Lq2/d$a;-><init>(Landroid/net/Uri;)V

    .line 31
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setImages(Ljava/util/List;)V

    .line 33
    :cond_6
    iget-object v1, v0, Lq2/d;->c:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAdBase;->getAdBodyText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setBody(Ljava/lang/String;)V

    .line 34
    iget-object v1, v0, Lq2/d;->c:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAdBase;->getPreloadedIconViewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_8

    .line 35
    iget-object v1, v0, Lq2/d;->c:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAdBase;->getAdIcon()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v1

    if-nez v1, :cond_7

    .line 36
    new-instance v1, Lq2/d$a;

    invoke-direct {v1}, Lq2/d$a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    goto :goto_2

    .line 37
    :cond_7
    new-instance v1, Lq2/d$a;

    iget-object v2, v0, Lq2/d;->c:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdBase;->getAdIcon()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdBase$Image;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Lq2/d$a;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    goto :goto_2

    .line 38
    :cond_8
    iget-object v1, v0, Lq2/d;->c:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAdBase;->getPreloadedIconViewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 39
    new-instance v2, Lq2/d$a;

    invoke-direct {v2, v1}, Lq2/d$a;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 40
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    .line 41
    :goto_2
    iget-object v1, v0, Lq2/d;->c:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAdBase;->getAdCallToAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setCallToAction(Ljava/lang/String;)V

    .line 42
    iget-object v1, v0, Lq2/d;->c:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAdBase;->getAdvertiserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setAdvertiser(Ljava/lang/String;)V

    .line 43
    iget-object v1, v0, Lq2/d;->e:Lcom/facebook/ads/MediaView;

    new-instance v2, Lq2/c;

    invoke-direct {v2, v0}, Lq2/c;-><init>(Lq2/d;)V

    invoke-virtual {v1, v2}, Lcom/facebook/ads/MediaView;->setListener(Lcom/facebook/ads/MediaViewListener;)V

    .line 44
    invoke-virtual {v0, v5}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setHasVideoContent(Z)V

    .line 45
    iget-object v1, v0, Lq2/d;->e:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setMediaView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setStarRating(Ljava/lang/Double;)V

    .line 47
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 48
    iget-object v3, v0, Lq2/d;->c:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v3}, Lcom/facebook/ads/NativeAdBase;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 49
    iget-object v3, v0, Lq2/d;->c:Lcom/facebook/ads/NativeAdBase;

    .line 50
    invoke-virtual {v3}, Lcom/facebook/ads/NativeAdBase;->getAdSocialContext()Ljava/lang/String;

    move-result-object v3

    const-string v4, "social_context"

    .line 51
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setExtras(Landroid/os/Bundle;)V

    .line 53
    new-instance v2, Lcom/facebook/ads/AdOptionsView;

    iget-object v3, v0, Lq2/d;->c:Lcom/facebook/ads/NativeAdBase;

    invoke-direct {v2, p1, v3, v1}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    .line 54
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setAdChoicesContent(Landroid/view/View;)V

    .line 55
    iget-object p1, p0, Lq2/d$b;->c:Lq2/d;

    .line 56
    iget-object v0, p1, Lq2/d;->b:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 57
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onSuccess(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;

    .line 58
    iput-object v0, p1, Lq2/d;->d:Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;

    :goto_3
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->getAdError(Lcom/facebook/ads/AdError;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    .line 2
    sget-object p2, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p2, p0, Lq2/d$b;->c:Lq2/d;

    .line 4
    iget-object p2, p2, Lq2/d;->b:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 5
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0

    return-void
.end method

.method public onMediaDownloaded(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method
