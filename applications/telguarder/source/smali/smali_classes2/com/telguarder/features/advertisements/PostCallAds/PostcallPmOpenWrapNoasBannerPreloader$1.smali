.class Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;
.super Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;
.source "PostcallPmOpenWrapNoasBannerPreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;


# direct methods
.method constructor <init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAdReceived$0$PostcallPmOpenWrapNoasBannerPreloader$1()V
    .locals 1

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->loadAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onAdClosed(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V
    .locals 1

    .line 277
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD CLOSED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAdClosed"

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdFailed(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Lcom/pubmatic/sdk/common/POBError;)V
    .locals 1

    .line 192
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAdFailedToLoad"

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Lcom/pubmatic/sdk/common/POBError;->getErrorCode()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 253
    :pswitch_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 254
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 255
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 248
    :pswitch_1
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 249
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 250
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - AD_EXPIRED"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 243
    :pswitch_2
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 244
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 245
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - OPENWRAP_SIGNALING_ERROR"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 238
    :pswitch_3
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 239
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 240
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - RENDER_ERROR"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 233
    :pswitch_4
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 234
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - INVALID_RESPONSE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 195
    :pswitch_5
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertInternalErrorAction(Ljava/lang/String;)V

    .line 196
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 197
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - INTERNAL_ERROR"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    :pswitch_6
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 229
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 230
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - TIMEOUT_ERROR"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 223
    :pswitch_7
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 224
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 225
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - SERVER_ERROR"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 205
    :pswitch_8
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertNetworkErrorAction(Ljava/lang/String;)V

    .line 206
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - NETWORK_ERROR"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 207
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;)Lcom/telguarder/features/advertisements/Advert;

    move-result-object p1

    iget-boolean p1, p1, Lcom/telguarder/features/advertisements/Advert;->isBackupNetwork:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;)I

    move-result p1

    const/16 p2, 0x8

    if-ge p1, p2, :cond_0

    const-string p1, " PRELOAD RETRY.. "

    .line 208
    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 209
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->access$202(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;I)I

    .line 210
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object p1, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->loadAd()V

    return-void

    .line 213
    :cond_0
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->access$202(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;I)I

    .line 214
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    goto :goto_0

    .line 218
    :pswitch_9
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertNoFillErrorAction(Ljava/lang/String;)V

    .line 219
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->NO_AD:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 220
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - NO_ADS_AVAILABLE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :pswitch_a
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 202
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - INVALID_REQUEST"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 258
    :goto_0
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->reset()V

    .line 259
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object p1

    invoke-static {}, Lcom/telguarder/ApplicationObject;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->preloadBackup(Landroid/content/Context;)V

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

    .line 270
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAdOpened"

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD OPENED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertOpenedAction(Ljava/lang/String;)V

    return-void
.end method

.method public onAdReceived(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V
    .locals 2

    .line 174
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdLoaded"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 176
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iput-object p1, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->getCreativeSize()Lcom/pubmatic/sdk/common/POBAdSize;

    move-result-object p1

    iput-object p1, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    .line 178
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    new-instance v0, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallPmOpenWrapNoasBannerPreloader$1$jIv2NI44NK1cffxETjkWaD4UdlE;

    invoke-direct {v0, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallPmOpenWrapNoasBannerPreloader$1$jIv2NI44NK1cffxETjkWaD4UdlE;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;)V

    iput-object v0, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mExpiredAdRunnable:Ljava/lang/Runnable;

    .line 179
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->LOADED:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 180
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD LOADED\n        - adSize: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/POBAdSize;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto :goto_1

    .line 182
    :cond_2
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    .line 183
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ADVIEW LOST"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 185
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->reset()V

    .line 186
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object p1

    invoke-static {}, Lcom/telguarder/ApplicationObject;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->preloadBackup(Landroid/content/Context;)V

    :goto_1
    return-void
.end method

.method public onAppLeaving(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V
    .locals 1

    .line 264
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD LEFT APPLICATION"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 265
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAdLeftApplication"

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
