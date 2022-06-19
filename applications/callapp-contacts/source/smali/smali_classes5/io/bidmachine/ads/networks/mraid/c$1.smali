.class final Lio/bidmachine/ads/networks/mraid/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/mraid/c;->load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/ads/networks/mraid/c;

.field final synthetic val$callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

.field final synthetic val$contextProvider:Lio/bidmachine/ContextProvider;

.field final synthetic val$mraidParams:Lio/bidmachine/ads/networks/mraid/e;


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/mraid/c;Lio/bidmachine/ads/networks/mraid/e;Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/c$1;->this$0:Lio/bidmachine/ads/networks/mraid/c;

    iput-object p2, p0, Lio/bidmachine/ads/networks/mraid/c$1;->val$mraidParams:Lio/bidmachine/ads/networks/mraid/e;

    iput-object p3, p0, Lio/bidmachine/ads/networks/mraid/c$1;->val$contextProvider:Lio/bidmachine/ContextProvider;

    iput-object p4, p0, Lio/bidmachine/ads/networks/mraid/c$1;->val$callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 51
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/c$1;->this$0:Lio/bidmachine/ads/networks/mraid/c;

    invoke-static {}, Lcom/explorestack/iab/mraid/MraidInterstitial;->newBuilder()Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 52
    invoke-virtual {v1, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setPreload(Z)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/c$1;->val$mraidParams:Lio/bidmachine/ads/networks/mraid/e;

    iget v2, v2, Lio/bidmachine/ads/networks/mraid/e;->skipOffset:I

    int-to-float v2, v2

    .line 53
    invoke-virtual {v1, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setCloseTime(F)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/c$1;->val$mraidParams:Lio/bidmachine/ads/networks/mraid/e;

    iget-boolean v2, v2, Lio/bidmachine/ads/networks/mraid/e;->useNativeClose:Z

    .line 54
    invoke-virtual {v1, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->forceUseNativeCloseButton(Z)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v1

    new-instance v2, Lio/bidmachine/ads/networks/mraid/d;

    iget-object v3, p0, Lio/bidmachine/ads/networks/mraid/c$1;->val$contextProvider:Lio/bidmachine/ContextProvider;

    iget-object v4, p0, Lio/bidmachine/ads/networks/mraid/c$1;->val$callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-direct {v2, v3, v4}, Lio/bidmachine/ads/networks/mraid/d;-><init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V

    .line 55
    invoke-virtual {v1, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setListener(Lcom/explorestack/iab/mraid/MraidInterstitialListener;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/c$1;->val$mraidParams:Lio/bidmachine/ads/networks/mraid/e;

    iget-boolean v2, v2, Lio/bidmachine/ads/networks/mraid/e;->r1:Z

    .line 56
    invoke-virtual {v1, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setR1(Z)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/c$1;->val$mraidParams:Lio/bidmachine/ads/networks/mraid/e;

    iget-boolean v2, v2, Lio/bidmachine/ads/networks/mraid/e;->r2:Z

    .line 57
    invoke-virtual {v1, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setR2(Z)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/c$1;->val$mraidParams:Lio/bidmachine/ads/networks/mraid/e;

    iget v2, v2, Lio/bidmachine/ads/networks/mraid/e;->progressDuration:I

    int-to-float v2, v2

    .line 58
    invoke-virtual {v1, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setDurationSec(F)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/c$1;->val$mraidParams:Lio/bidmachine/ads/networks/mraid/e;

    iget-object v2, v2, Lio/bidmachine/ads/networks/mraid/e;->storeUrl:Ljava/lang/String;

    .line 59
    invoke-virtual {v1, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setProductLink(Ljava/lang/String;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/c$1;->val$mraidParams:Lio/bidmachine/ads/networks/mraid/e;

    iget-object v2, v2, Lio/bidmachine/ads/networks/mraid/e;->closeableViewStyle:Lcom/explorestack/iab/utils/h;

    .line 60
    invoke-virtual {v1, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setCloseStyle(Lcom/explorestack/iab/utils/h;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/c$1;->val$mraidParams:Lio/bidmachine/ads/networks/mraid/e;

    iget-object v2, v2, Lio/bidmachine/ads/networks/mraid/e;->countDownStyle:Lcom/explorestack/iab/utils/h;

    .line 61
    invoke-virtual {v1, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setCountDownStyle(Lcom/explorestack/iab/utils/h;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/c$1;->val$mraidParams:Lio/bidmachine/ads/networks/mraid/e;

    iget-object v2, v2, Lio/bidmachine/ads/networks/mraid/e;->progressStyle:Lcom/explorestack/iab/utils/h;

    .line 62
    invoke-virtual {v1, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setProgressStyle(Lcom/explorestack/iab/utils/h;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/c$1;->val$contextProvider:Lio/bidmachine/ContextProvider;

    .line 63
    invoke-interface {v2}, Lio/bidmachine/ContextProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->build(Landroid/content/Context;)Lcom/explorestack/iab/mraid/MraidInterstitial;

    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Lio/bidmachine/ads/networks/mraid/c;->access$002(Lio/bidmachine/ads/networks/mraid/c;Lcom/explorestack/iab/mraid/MraidInterstitial;)Lcom/explorestack/iab/mraid/MraidInterstitial;

    .line 64
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/c$1;->this$0:Lio/bidmachine/ads/networks/mraid/c;

    invoke-static {v0}, Lio/bidmachine/ads/networks/mraid/c;->access$000(Lio/bidmachine/ads/networks/mraid/c;)Lcom/explorestack/iab/mraid/MraidInterstitial;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/ads/networks/mraid/c$1;->val$mraidParams:Lio/bidmachine/ads/networks/mraid/e;

    iget-object v1, v1, Lio/bidmachine/ads/networks/mraid/e;->creativeAdm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->load(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 66
    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    .line 67
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/c$1;->val$callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    sget-object v1, Lio/bidmachine/utils/BMError;->Internal:Lio/bidmachine/utils/BMError;

    invoke-interface {v0, v1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method
