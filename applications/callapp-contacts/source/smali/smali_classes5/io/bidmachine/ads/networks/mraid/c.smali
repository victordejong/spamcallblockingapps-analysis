.class final Lio/bidmachine/ads/networks/mraid/c;
.super Lio/bidmachine/unified/UnifiedFullscreenAd;
.source "SourceFile"


# instance fields
.field private mraidInterstitial:Lcom/explorestack/iab/mraid/MraidInterstitial;

.field private final mraidType:Lcom/explorestack/iab/mraid/MraidActivity$MraidType;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/mraid/MraidActivity$MraidType;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lio/bidmachine/unified/UnifiedFullscreenAd;-><init>()V

    .line 29
    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/c;->mraidType:Lcom/explorestack/iab/mraid/MraidActivity$MraidType;

    return-void
.end method

.method static synthetic access$000(Lio/bidmachine/ads/networks/mraid/c;)Lcom/explorestack/iab/mraid/MraidInterstitial;
    .locals 0

    .line 21
    iget-object p0, p0, Lio/bidmachine/ads/networks/mraid/c;->mraidInterstitial:Lcom/explorestack/iab/mraid/MraidInterstitial;

    return-object p0
.end method

.method static synthetic access$002(Lio/bidmachine/ads/networks/mraid/c;Lcom/explorestack/iab/mraid/MraidInterstitial;)Lcom/explorestack/iab/mraid/MraidInterstitial;
    .locals 0

    .line 21
    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/c;->mraidInterstitial:Lcom/explorestack/iab/mraid/MraidInterstitial;

    return-object p1
.end method


# virtual methods
.method public final bridge synthetic load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdCallback;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 21
    check-cast p2, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    check-cast p3, Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/ads/networks/mraid/c;->load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;)V

    return-void
.end method

.method public final load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 37
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getActivity()Landroid/app/Activity;

    move-result-object p3

    if-nez p3, :cond_0

    const-string p1, "Activity not provided"

    .line 39
    invoke-static {p1}, Lio/bidmachine/utils/BMError;->requestError(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 42
    :cond_0
    new-instance p3, Lio/bidmachine/ads/networks/mraid/e;

    invoke-direct {p3, p4}, Lio/bidmachine/ads/networks/mraid/e;-><init>(Lio/bidmachine/unified/UnifiedMediationParams;)V

    .line 43
    invoke-virtual {p3, p2}, Lio/bidmachine/ads/networks/mraid/e;->isValid(Lio/bidmachine/unified/UnifiedAdCallback;)Z

    move-result p4

    if-nez p4, :cond_1

    return-void

    .line 47
    :cond_1
    new-instance p4, Lio/bidmachine/ads/networks/mraid/c$1;

    invoke-direct {p4, p0, p3, p1, p2}, Lio/bidmachine/ads/networks/mraid/c$1;-><init>(Lio/bidmachine/ads/networks/mraid/c;Lio/bidmachine/ads/networks/mraid/e;Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V

    invoke-static {p4}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 85
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/c;->mraidInterstitial:Lcom/explorestack/iab/mraid/MraidInterstitial;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/MraidInterstitial;->destroy()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lio/bidmachine/ads/networks/mraid/c;->mraidInterstitial:Lcom/explorestack/iab/mraid/MraidInterstitial;

    :cond_0
    return-void
.end method

.method public final show(Landroid/content/Context;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/c;->mraidInterstitial:Lcom/explorestack/iab/mraid/MraidInterstitial;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/MraidInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object p2, p0, Lio/bidmachine/ads/networks/mraid/c;->mraidInterstitial:Lcom/explorestack/iab/mraid/MraidInterstitial;

    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/c;->mraidType:Lcom/explorestack/iab/mraid/MraidActivity$MraidType;

    invoke-static {p1, p2, v0}, Lcom/explorestack/iab/mraid/MraidActivity;->show(Landroid/content/Context;Lcom/explorestack/iab/mraid/MraidInterstitial;Lcom/explorestack/iab/mraid/MraidActivity$MraidType;)V

    return-void

    .line 79
    :cond_0
    sget-object p1, Lio/bidmachine/utils/BMError;->NotLoaded:Lio/bidmachine/utils/BMError;

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method
