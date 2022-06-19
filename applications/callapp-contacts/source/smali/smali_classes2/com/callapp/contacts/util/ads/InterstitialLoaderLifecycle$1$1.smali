.class Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1;->a:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClick()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1;->a:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;->b:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->d(Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;)Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks;->a()V

    .line 105
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1;->a:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;->b:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->c(Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1;->a:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;->b:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->c(Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onAdClick()V

    :cond_0
    return-void
.end method

.method public synthetic onBannerAdFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onBannerAdFailed(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public synthetic onBannerAdLoaded(Lcom/mopub/mobileads/MoPubView;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onBannerAdLoaded(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubView;Z)V

    return-void
.end method

.method public synthetic onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onInterstitialClicked(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void
.end method

.method public onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1;->a:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;->b:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->c(Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1;->a:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;->b:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->c(Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_0
    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1;->a:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;->b:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->c(Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1;->a:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;->b:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->c(Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method public onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1;->a:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;->b:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->a(Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;

    .line 69
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1;->a:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;->b:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->c(Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1;->a:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;->b:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->c(Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_0
    return-void
.end method

.method public onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1;->a:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;->a:Lcom/callapp/contacts/util/ads/JSONAdPreferences;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->getInterstitialAutoCloseSec()I

    move-result v0

    if-lez v0, :cond_0

    .line 77
    new-instance v0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1$1;-><init>(Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1;Lcom/mopub/mobileads/MoPubInterstitial;)V

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1;->a:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;->a:Lcom/callapp/contacts/util/ads/JSONAdPreferences;

    .line 86
    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->getInterstitialAutoCloseSec()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1$1;->schedule(I)Lcom/callapp/contacts/manager/task/Task;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1;->a:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;->b:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->c(Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1$1;->a:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle$1;->b:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;->c(Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_1
    return-void
.end method

.method public synthetic onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onNativeAdFailed(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method

.method public synthetic onNativeAdLoaded(Lcom/mopub/nativeads/NativeAd;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onNativeAdLoaded(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/nativeads/NativeAd;Z)V

    return-void
.end method
