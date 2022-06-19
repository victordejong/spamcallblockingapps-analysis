.class final Lio/bidmachine/ads/networks/mraid/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/mraid/a;->load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lio/bidmachine/unified/UnifiedBannerAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/ads/networks/mraid/a;

.field final synthetic val$callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

.field final synthetic val$contextProvider:Lio/bidmachine/ContextProvider;

.field final synthetic val$mraidParams:Lio/bidmachine/ads/networks/mraid/e;


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/mraid/a;Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedBannerAdCallback;Lio/bidmachine/ads/networks/mraid/e;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/a$1;->this$0:Lio/bidmachine/ads/networks/mraid/a;

    iput-object p2, p0, Lio/bidmachine/ads/networks/mraid/a$1;->val$contextProvider:Lio/bidmachine/ContextProvider;

    iput-object p3, p0, Lio/bidmachine/ads/networks/mraid/a$1;->val$callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    iput-object p4, p0, Lio/bidmachine/ads/networks/mraid/a$1;->val$mraidParams:Lio/bidmachine/ads/networks/mraid/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 43
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/a$1;->this$0:Lio/bidmachine/ads/networks/mraid/a;

    new-instance v1, Lcom/explorestack/iab/mraid/MraidView$a;

    invoke-direct {v1}, Lcom/explorestack/iab/mraid/MraidView$a;-><init>()V

    const/4 v2, 0x1

    .line 1927
    iput-boolean v2, v1, Lcom/explorestack/iab/mraid/MraidView$a;->m:Z

    .line 44
    new-instance v2, Lio/bidmachine/ads/networks/mraid/b;

    iget-object v3, p0, Lio/bidmachine/ads/networks/mraid/a$1;->val$contextProvider:Lio/bidmachine/ContextProvider;

    iget-object v4, p0, Lio/bidmachine/ads/networks/mraid/a$1;->val$callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-direct {v2, v3, v4}, Lio/bidmachine/ads/networks/mraid/b;-><init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedBannerAdCallback;)V

    .line 1967
    iput-object v2, v1, Lcom/explorestack/iab/mraid/MraidView$a;->e:Lcom/explorestack/iab/mraid/MraidViewListener;

    .line 45
    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/a$1;->val$contextProvider:Lio/bidmachine/ContextProvider;

    .line 46
    invoke-interface {v2}, Lio/bidmachine/ContextProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/iab/mraid/MraidView$a;->a(Landroid/content/Context;)Lcom/explorestack/iab/mraid/MraidView;

    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Lio/bidmachine/ads/networks/mraid/a;->access$002(Lio/bidmachine/ads/networks/mraid/a;Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/MraidView;

    .line 47
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/a$1;->this$0:Lio/bidmachine/ads/networks/mraid/a;

    invoke-static {v0}, Lio/bidmachine/ads/networks/mraid/a;->access$000(Lio/bidmachine/ads/networks/mraid/a;)Lcom/explorestack/iab/mraid/MraidView;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/ads/networks/mraid/a$1;->val$mraidParams:Lio/bidmachine/ads/networks/mraid/e;

    iget-object v1, v1, Lio/bidmachine/ads/networks/mraid/e;->creativeAdm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/MraidView;->load(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 49
    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    .line 50
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/a$1;->val$callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    sget-object v1, Lio/bidmachine/utils/BMError;->Internal:Lio/bidmachine/utils/BMError;

    invoke-interface {v0, v1}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method
