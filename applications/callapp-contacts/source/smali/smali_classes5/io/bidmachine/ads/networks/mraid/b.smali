.class final Lio/bidmachine/ads/networks/mraid/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/mraid/MraidViewListener;


# instance fields
.field private final callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

.field private final contextProvider:Lio/bidmachine/ContextProvider;


# direct methods
.method constructor <init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedBannerAdCallback;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/b;->contextProvider:Lio/bidmachine/ContextProvider;

    .line 25
    iput-object p2, p0, Lio/bidmachine/ads/networks/mraid/b;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    return-void
.end method


# virtual methods
.method public final onClose(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 0

    return-void
.end method

.method public final onError(Lcom/explorestack/iab/mraid/MraidView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 41
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/b;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    sget-object p2, Lio/bidmachine/utils/BMError;->Internal:Lio/bidmachine/utils/BMError;

    invoke-interface {p1, p2}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 43
    :cond_0
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/b;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    const/4 p2, 0x0

    invoke-static {p2}, Lio/bidmachine/utils/BMError;->noFillError(Lio/bidmachine/utils/BMError;)Lio/bidmachine/utils/BMError;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public final onExpand(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 0

    return-void
.end method

.method public final onLoaded(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/b;->contextProvider:Lio/bidmachine/ContextProvider;

    invoke-interface {v0}, Lio/bidmachine/ContextProvider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/MraidView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/b;->contextProvider:Lio/bidmachine/ContextProvider;

    invoke-interface {v0}, Lio/bidmachine/ContextProvider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/explorestack/iab/mraid/MraidView;->show(Landroid/app/Activity;)V

    .line 32
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/b;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-interface {v0, p1}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdLoaded(Landroid/view/View;)V

    return-void

    .line 34
    :cond_0
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/b;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    sget-object v0, Lio/bidmachine/utils/BMError;->Internal:Lio/bidmachine/utils/BMError;

    invoke-interface {p1, v0}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public final onOpenBrowser(Lcom/explorestack/iab/mraid/MraidView;Ljava/lang/String;Lcom/explorestack/iab/utils/c;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/b;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-interface {v0}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdClicked()V

    .line 58
    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lio/bidmachine/ads/networks/mraid/b$1;

    invoke-direct {v0, p0, p3}, Lio/bidmachine/ads/networks/mraid/b$1;-><init>(Lio/bidmachine/ads/networks/mraid/b;Lcom/explorestack/iab/utils/c;)V

    invoke-static {p1, p2, v0}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onPlayVideo(Lcom/explorestack/iab/mraid/MraidView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onShown(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 0

    return-void
.end method
