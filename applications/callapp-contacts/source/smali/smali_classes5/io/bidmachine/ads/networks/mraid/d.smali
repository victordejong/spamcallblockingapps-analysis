.class final Lio/bidmachine/ads/networks/mraid/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/mraid/MraidInterstitialListener;


# instance fields
.field private final callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

.field private final contextProvider:Lio/bidmachine/ContextProvider;


# direct methods
.method constructor <init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/d;->contextProvider:Lio/bidmachine/ContextProvider;

    .line 25
    iput-object p2, p0, Lio/bidmachine/ads/networks/mraid/d;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    return-void
.end method


# virtual methods
.method public final onClose(Lcom/explorestack/iab/mraid/MraidInterstitial;)V
    .locals 0

    .line 68
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/d;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdFinished()V

    .line 69
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/d;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdClosed()V

    return-void
.end method

.method public final onError(Lcom/explorestack/iab/mraid/MraidInterstitial;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 36
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/d;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    sget-object p2, Lio/bidmachine/utils/BMError;->Internal:Lio/bidmachine/utils/BMError;

    invoke-interface {p1, p2}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 38
    :cond_0
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/d;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    const/4 p2, 0x0

    invoke-static {p2}, Lio/bidmachine/utils/BMError;->noFillError(Lio/bidmachine/utils/BMError;)Lio/bidmachine/utils/BMError;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public final onLoaded(Lcom/explorestack/iab/mraid/MraidInterstitial;)V
    .locals 0

    .line 30
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/d;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdLoaded()V

    return-void
.end method

.method public final onOpenBrowser(Lcom/explorestack/iab/mraid/MraidInterstitial;Ljava/lang/String;Lcom/explorestack/iab/utils/c;)V
    .locals 1

    .line 51
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/d;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdClicked()V

    .line 53
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/d;->contextProvider:Lio/bidmachine/ContextProvider;

    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lio/bidmachine/ads/networks/mraid/d$1;

    invoke-direct {v0, p0, p3}, Lio/bidmachine/ads/networks/mraid/d$1;-><init>(Lio/bidmachine/ads/networks/mraid/d;Lcom/explorestack/iab/utils/c;)V

    invoke-static {p1, p2, v0}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onPlayVideo(Lcom/explorestack/iab/mraid/MraidInterstitial;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onShown(Lcom/explorestack/iab/mraid/MraidInterstitial;)V
    .locals 0

    .line 44
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/d;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdShown()V

    return-void
.end method
