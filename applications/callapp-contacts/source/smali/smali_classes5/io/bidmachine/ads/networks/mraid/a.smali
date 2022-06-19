.class final Lio/bidmachine/ads/networks/mraid/a;
.super Lio/bidmachine/unified/UnifiedBannerAd;
.source "SourceFile"


# instance fields
.field private mraidView:Lcom/explorestack/iab/mraid/MraidView;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lio/bidmachine/unified/UnifiedBannerAd;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/bidmachine/ads/networks/mraid/a;)Lcom/explorestack/iab/mraid/MraidView;
    .locals 0

    .line 19
    iget-object p0, p0, Lio/bidmachine/ads/networks/mraid/a;->mraidView:Lcom/explorestack/iab/mraid/MraidView;

    return-object p0
.end method

.method static synthetic access$002(Lio/bidmachine/ads/networks/mraid/a;Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/MraidView;
    .locals 0

    .line 19
    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/a;->mraidView:Lcom/explorestack/iab/mraid/MraidView;

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

    .line 19
    check-cast p2, Lio/bidmachine/unified/UnifiedBannerAdCallback;

    check-cast p3, Lio/bidmachine/unified/UnifiedBannerAdRequestParams;

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/ads/networks/mraid/a;->load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lio/bidmachine/unified/UnifiedBannerAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;)V

    return-void
.end method

.method public final load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lio/bidmachine/unified/UnifiedBannerAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 29
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getActivity()Landroid/app/Activity;

    move-result-object p3

    if-nez p3, :cond_0

    const-string p1, "Activity not provided"

    .line 31
    invoke-static {p1}, Lio/bidmachine/utils/BMError;->requestError(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 34
    :cond_0
    new-instance p3, Lio/bidmachine/ads/networks/mraid/e;

    invoke-direct {p3, p4}, Lio/bidmachine/ads/networks/mraid/e;-><init>(Lio/bidmachine/unified/UnifiedMediationParams;)V

    .line 35
    invoke-virtual {p3, p2}, Lio/bidmachine/ads/networks/mraid/e;->isValid(Lio/bidmachine/unified/UnifiedAdCallback;)Z

    move-result p4

    if-nez p4, :cond_1

    return-void

    .line 39
    :cond_1
    new-instance p4, Lio/bidmachine/ads/networks/mraid/a$1;

    invoke-direct {p4, p0, p1, p2, p3}, Lio/bidmachine/ads/networks/mraid/a$1;-><init>(Lio/bidmachine/ads/networks/mraid/a;Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lio/bidmachine/ads/networks/mraid/e;)V

    invoke-static {p4}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 58
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/a;->mraidView:Lcom/explorestack/iab/mraid/MraidView;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/MraidView;->destroy()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lio/bidmachine/ads/networks/mraid/a;->mraidView:Lcom/explorestack/iab/mraid/MraidView;

    :cond_0
    return-void
.end method
