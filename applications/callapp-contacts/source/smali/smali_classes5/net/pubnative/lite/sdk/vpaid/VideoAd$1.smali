.class Lnet/pubnative/lite/sdk/vpaid/VideoAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/vpaid/VideoAd;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/vpaid/VideoAd;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 50
    invoke-static {}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Banner did start showing ad"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->getAdState()I

    move-result v0

    const/16 v1, 0xca

    if-ne v0, v1, :cond_0

    .line 52
    invoke-static {}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Banner already displays on screen"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->access$100(Lnet/pubnative/lite/sdk/vpaid/VideoAd;)Lnet/pubnative/lite/sdk/vpaid/VideoAdView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 56
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->setAdState(I)V

    .line 57
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->stopExpirationTimer()V

    .line 59
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->getAdController()Lnet/pubnative/lite/sdk/vpaid/VideoAdController;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->getAdController()Lnet/pubnative/lite/sdk/vpaid/VideoAdController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->getAdController()Lnet/pubnative/lite/sdk/vpaid/VideoAdController;

    move-result-object v0

    invoke-interface {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdController;->getAdParams()Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->getViewabilityAdSession()Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;

    move-result-object v0

    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-static {v1}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->access$100(Lnet/pubnative/lite/sdk/vpaid/VideoAd;)Lnet/pubnative/lite/sdk/vpaid/VideoAdView;

    move-result-object v1

    iget-object v2, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->getAdController()Lnet/pubnative/lite/sdk/vpaid/VideoAdController;

    move-result-object v2

    invoke-interface {v2}, Lnet/pubnative/lite/sdk/vpaid/VideoAdController;->getAdParams()Lnet/pubnative/lite/sdk/vpaid/response/AdParams;

    move-result-object v2

    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/vpaid/response/AdParams;->getVerificationScriptResources()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->initAdSession(Landroid/view/View;Ljava/util/List;)V

    .line 64
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->getAdController()Lnet/pubnative/lite/sdk/vpaid/VideoAdController;

    move-result-object v0

    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-static {v1}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->access$100(Lnet/pubnative/lite/sdk/vpaid/VideoAd;)Lnet/pubnative/lite/sdk/vpaid/VideoAdView;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/pubnative/lite/sdk/vpaid/VideoAdController;->buildVideoAdView(Lnet/pubnative/lite/sdk/vpaid/VideoAdView;)V

    .line 67
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->getAdController()Lnet/pubnative/lite/sdk/vpaid/VideoAdController;

    move-result-object v0

    invoke-interface {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdController;->getViewabilityFriendlyObstructions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityFriendlyObstruction;

    .line 68
    iget-object v2, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->getViewabilityAdSession()Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;

    move-result-object v2

    .line 69
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityFriendlyObstruction;->getView()Landroid/view/View;

    move-result-object v3

    .line 70
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityFriendlyObstruction;->getPurpose()Lcom/iab/omid/library/pubnativenet/adsession/f;

    move-result-object v4

    .line 71
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityFriendlyObstruction;->getReason()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {v2, v3, v4, v1}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->addFriendlyObstruction(Landroid/view/View;Lcom/iab/omid/library/pubnativenet/adsession/f;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_2
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->getViewabilityAdSession()Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->fireLoaded()V

    .line 74
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->getViewabilityAdSession()Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->fireImpression()V

    .line 75
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->getAdController()Lnet/pubnative/lite/sdk/vpaid/VideoAdController;

    move-result-object v0

    invoke-interface {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdController;->playAd()V

    .line 77
    invoke-static {}, Lnet/pubnative/lite/sdk/vpaid/utils/Utils;->isPhoneMuted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->getAdController()Lnet/pubnative/lite/sdk/vpaid/VideoAdController;

    move-result-object v0

    invoke-interface {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdController;->toggleMute()V

    .line 80
    :cond_3
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->access$100(Lnet/pubnative/lite/sdk/vpaid/VideoAd;)Lnet/pubnative/lite/sdk/vpaid/VideoAdView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    .line 81
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->access$100(Lnet/pubnative/lite/sdk/vpaid/VideoAd;)Lnet/pubnative/lite/sdk/vpaid/VideoAdView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/vpaid/VideoAdView;->setVisibility(I)V

    .line 83
    :cond_4
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->access$200(Lnet/pubnative/lite/sdk/vpaid/VideoAd;)V

    return-void

    :catchall_0
    move-exception v0

    .line 64
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 85
    :cond_5
    invoke-static {}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAdController() is null and can not set attributes to banner view "

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->getAdListener()Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 87
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;

    const-string v1, "getAdController() is null and can not set attributes to banner view "

    invoke-direct {v0, v1}, Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;-><init>(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/VideoAd$1;->this$0:Lnet/pubnative/lite/sdk/vpaid/VideoAd;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->getAdListener()Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdListener;->onAdLoadFail(Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;)V

    return-void

    .line 92
    :cond_6
    invoke-static {}, Lnet/pubnative/lite/sdk/vpaid/VideoAd;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Banner is not ready"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method
