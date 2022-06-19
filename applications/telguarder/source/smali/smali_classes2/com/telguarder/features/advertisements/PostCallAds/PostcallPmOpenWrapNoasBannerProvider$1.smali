.class Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;
.super Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;
.source "PostcallPmOpenWrapNoasBannerProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;


# direct methods
.method constructor <init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V
    .locals 1

    .line 391
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->closed:Z

    .line 392
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->hideAdInfoText()V

    .line 393
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD CLOSED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 394
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAdClosed"

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdFailed(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Lcom/pubmatic/sdk/common/POBError;)V
    .locals 1

    .line 325
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAdFailedToLoad"

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->isInstanciated()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->cancelAllPreloadTimeoutHandlers()V

    .line 327
    :cond_0
    invoke-virtual {p2}, Lcom/pubmatic/sdk/common/POBError;->getErrorCode()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 369
    :pswitch_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 370
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 365
    :pswitch_1
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 366
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - AD_EXPIRED"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 361
    :pswitch_2
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 362
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - OPENWRAP_SIGNALING_ERROR"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 357
    :pswitch_3
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 358
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - RENDER_ERROR"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 353
    :pswitch_4
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 354
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - INVALID_RESPONSE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 329
    :pswitch_5
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertInternalErrorAction(Ljava/lang/String;)V

    .line 330
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - INTERNAL_ERROR"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 349
    :pswitch_6
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 350
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - TIMEOUT_ERROR"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 345
    :pswitch_7
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 346
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - SERVER_ERROR"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :pswitch_8
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertNetworkErrorAction(Ljava/lang/String;)V

    .line 338
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - NETWORK_ERROR"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :pswitch_9
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertNoFillErrorAction(Ljava/lang/String;)V

    .line 342
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - NO_ADS_AVAILABLE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :pswitch_a
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 334
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    invoke-static {p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - INVALID_REQUEST"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 373
    :goto_0
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$300(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)V

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

    .line 384
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAdOpened"

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD OPENED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 386
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertOpenedAction(Ljava/lang/String;)V

    return-void
.end method

.method public onAdReceived(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V
    .locals 2

    .line 309
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdLoaded"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->cancelAllPreloadTimeoutHandlers()V

    :cond_0
    if-eqz p1, :cond_3

    .line 312
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    iput-object p1, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    .line 313
    :cond_1
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    iget-object v0, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->getCreativeSize()Lcom/pubmatic/sdk/common/POBAdSize;

    move-result-object v0

    iput-object v0, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    .line 314
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;Ljava/lang/Boolean;)V

    .line 315
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD LOADED\n        - adSize: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/POBAdSize;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto :goto_1

    .line 317
    :cond_3
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    .line 318
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ADVIEW LOST"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 319
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$300(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)V

    :goto_1
    return-void
.end method

.method public onAppLeaving(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V
    .locals 1

    .line 378
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD LEFT APPLICATION"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 379
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAdLeftApplication"

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
