.class Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;
.super Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;
.source "PostcallPmOpenWrapDfpBannerProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;


# direct methods
.method constructor <init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V
    .locals 1

    .line 436
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->closed:Z

    .line 437
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->hideAdInfoText()V

    .line 438
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD CLOSED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 439
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAdClosed"

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdFailed(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Lcom/pubmatic/sdk/common/POBError;)V
    .locals 1

    .line 370
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAdFailedToLoad"

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->isInstanciated()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->cancelAllPreloadTimeoutHandlers()V

    .line 372
    :cond_0
    invoke-virtual {p2}, Lcom/pubmatic/sdk/common/POBError;->getErrorCode()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 414
    :pswitch_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 415
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 410
    :pswitch_1
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 411
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - AD_EXPIRED"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 406
    :pswitch_2
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 407
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - OPENWRAP_SIGNALING_ERROR"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 402
    :pswitch_3
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 403
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - RENDER_ERROR"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 398
    :pswitch_4
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 399
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - INVALID_RESPONSE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 374
    :pswitch_5
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertInternalErrorAction(Ljava/lang/String;)V

    .line 375
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - INTERNAL_ERROR"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 394
    :pswitch_6
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 395
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - TIMEOUT_ERROR"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 390
    :pswitch_7
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 391
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - SERVER_ERROR"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :pswitch_8
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertNetworkErrorAction(Ljava/lang/String;)V

    .line 383
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - NETWORK_ERROR"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :pswitch_9
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertNoFillErrorAction(Ljava/lang/String;)V

    .line 387
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - NO_ADS_AVAILABLE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :pswitch_a
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 379
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - INVALID_REQUEST"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 418
    :goto_0
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$300(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onAdOpened(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V
    .locals 1

    .line 429
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAdOpened"

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD OPENED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 431
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertOpenedAction(Ljava/lang/String;)V

    return-void
.end method

.method public onAdReceived(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V
    .locals 2

    .line 351
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdLoaded"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->cancelAllPreloadTimeoutHandlers()V

    :cond_0
    if-eqz p1, :cond_4

    .line 354
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    iput-object p1, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    .line 355
    :cond_1
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    iget-object v0, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->getCreativeSize()Lcom/pubmatic/sdk/common/POBAdSize;

    move-result-object v0

    iput-object v0, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    .line 356
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    iget-object v0, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->getImpression()Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    move-result-object v0

    iput-object v0, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mPOBImpression:Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    .line 357
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;Ljava/lang/Boolean;)V

    .line 358
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD LOADED\n        - adSize: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    const-string v1, ""

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/POBAdSize;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n        - impression: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mPOBImpression:Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mPOBImpression:Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    .line 359
    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->getImpressionJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 358
    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto :goto_1

    .line 361
    :cond_4
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    .line 362
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    iput-object v0, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mPOBImpression:Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    .line 363
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ADVIEW LOST"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 364
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$300(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)V

    :goto_1
    return-void
.end method

.method public onAppLeaving(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V
    .locals 1

    .line 423
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD LEFT APPLICATION"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 424
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAdLeftApplication"

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
