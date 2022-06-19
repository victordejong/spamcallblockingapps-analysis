.class final Lio/bidmachine/ads/networks/vast/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/vast/VastActivityListener;
.implements Lcom/explorestack/iab/vast/VastRequestListener;


# instance fields
.field private final callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;


# direct methods
.method constructor <init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lio/bidmachine/ads/networks/vast/b;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    return-void
.end method


# virtual methods
.method public final onVastClick(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/utils/c;Ljava/lang/String;)V
    .locals 0

    .line 58
    iget-object p2, p0, Lio/bidmachine/ads/networks/vast/b;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p2}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdClicked()V

    if-eqz p4, :cond_0

    .line 60
    new-instance p2, Lio/bidmachine/ads/networks/vast/b$1;

    invoke-direct {p2, p0, p3}, Lio/bidmachine/ads/networks/vast/b$1;-><init>(Lio/bidmachine/ads/networks/vast/b;Lcom/explorestack/iab/utils/c;)V

    invoke-static {p1, p4, p2}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Z

    return-void

    .line 67
    :cond_0
    invoke-interface {p3}, Lcom/explorestack/iab/utils/c;->clickHandleCanceled()V

    return-void
.end method

.method public final onVastComplete(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 0

    .line 74
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/b;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdFinished()V

    return-void
.end method

.method public final onVastDismiss(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;Z)V
    .locals 0

    .line 81
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/b;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdClosed()V

    return-void
.end method

.method public final onVastError(Landroid/content/Context;Lcom/explorestack/iab/vast/VastRequest;I)V
    .locals 0

    const/4 p1, 0x1

    if-eq p3, p1, :cond_0

    .line 42
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/b;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    const/4 p2, 0x0

    invoke-static {p2}, Lio/bidmachine/utils/BMError;->noFillError(Lio/bidmachine/utils/BMError;)Lio/bidmachine/utils/BMError;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 38
    :cond_0
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/b;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    sget-object p2, Lio/bidmachine/utils/BMError;->Connection:Lio/bidmachine/utils/BMError;

    invoke-static {p2}, Lio/bidmachine/utils/BMError;->noFillError(Lio/bidmachine/utils/BMError;)Lio/bidmachine/utils/BMError;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public final onVastLoaded(Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 0

    .line 30
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/b;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdLoaded()V

    return-void
.end method

.method public final onVastShown(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 0

    .line 50
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/b;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdShown()V

    return-void
.end method
