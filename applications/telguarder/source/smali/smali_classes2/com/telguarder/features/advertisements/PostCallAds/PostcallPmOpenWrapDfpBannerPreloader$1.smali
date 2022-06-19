.class Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;
.super Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;
.source "PostcallPmOpenWrapDfpBannerPreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;


# direct methods
.method constructor <init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAdReceived$0$PostcallPmOpenWrapDfpBannerPreloader$1()V
    .locals 1

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->loadAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onAdClosed(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V
    .locals 1

    .line 304
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD CLOSED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 305
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAdClosed"

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdFailed(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;Lcom/pubmatic/sdk/common/POBError;)V
    .locals 1

    .line 219
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAdFailedToLoad"

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Lcom/pubmatic/sdk/common/POBError;->getErrorCode()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 280
    :pswitch_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 281
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 282
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 275
    :pswitch_1
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 276
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 277
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - AD_EXPIRED"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 270
    :pswitch_2
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 271
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 272
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - OPENWRAP_SIGNALING_ERROR"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 265
    :pswitch_3
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 266
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 267
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - RENDER_ERROR"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 260
    :pswitch_4
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 261
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 262
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - INVALID_RESPONSE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 222
    :pswitch_5
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertInternalErrorAction(Ljava/lang/String;)V

    .line 223
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 224
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - INTERNAL_ERROR"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 255
    :pswitch_6
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 256
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 257
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - TIMEOUT_ERROR"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 250
    :pswitch_7
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 251
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 252
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - SERVER_ERROR"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 232
    :pswitch_8
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertNetworkErrorAction(Ljava/lang/String;)V

    .line 233
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - NETWORK_ERROR"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 234
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;)Lcom/telguarder/features/advertisements/Advert;

    move-result-object p1

    iget-boolean p1, p1, Lcom/telguarder/features/advertisements/Advert;->isBackupNetwork:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;)I

    move-result p1

    const/16 p2, 0x8

    if-ge p1, p2, :cond_0

    const-string p1, " PRELOAD RETRY.. "

    .line 235
    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 236
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->access$202(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;I)I

    .line 237
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object p1, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->loadAd()V

    return-void

    .line 240
    :cond_0
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->access$202(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;I)I

    .line 241
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    goto :goto_0

    .line 245
    :pswitch_9
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertNoFillErrorAction(Ljava/lang/String;)V

    .line 246
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->NO_AD:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 247
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - NO_ADS_AVAILABLE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :pswitch_a
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 228
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - INVALID_REQUEST"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 285
    :goto_0
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->reset()V

    .line 286
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

    .line 297
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAdOpened"

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD OPENED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 299
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertOpenedAction(Ljava/lang/String;)V

    return-void
.end method

.method public onAdReceived(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V
    .locals 2

    .line 194
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdLoaded"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 196
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iput-object p1, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    .line 197
    :cond_0
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object v0, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->getCreativeSize()Lcom/pubmatic/sdk/common/POBAdSize;

    move-result-object v0

    iput-object v0, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    .line 198
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object v0, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->getImpression()Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    move-result-object v0

    iput-object v0, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mPOBImpression:Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    .line 199
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object p1, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mEventHandler:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object p1, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mEventHandler:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    iget-object p1, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->dfpAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->AD_SERVER:Ljava/lang/String;

    .line 200
    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getInstance()Lcom/telguarder/features/advertisements/AdvertManager;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/AdvertManager;->mLastOwDfpNetworkName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 201
    :try_start_0
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object p1, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mEventHandler:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    iget-object p1, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->dfpAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 203
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    new-instance v0, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallPmOpenWrapDfpBannerPreloader$1$W_kzeIXysTeyfRuwp7HDyqcFbYQ;

    invoke-direct {v0, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallPmOpenWrapDfpBannerPreloader$1$W_kzeIXysTeyfRuwp7HDyqcFbYQ;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;)V

    iput-object v0, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mExpiredAdRunnable:Ljava/lang/Runnable;

    .line 204
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->LOADED:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 205
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD LOADED\n        - adSize: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    const-string v1, ""

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/POBAdSize;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n        - impression: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mPOBImpression:Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mPOBImpression:Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    .line 206
    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->getImpressionJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 205
    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto :goto_2

    .line 208
    :cond_4
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    .line 209
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iput-object v0, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mPOBImpression:Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    .line 210
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 211
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ADVIEW LOST"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 212
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->reset()V

    .line 213
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object p1

    invoke-static {}, Lcom/telguarder/ApplicationObject;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->preloadBackup(Landroid/content/Context;)V

    :goto_2
    return-void
.end method

.method public onAppLeaving(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;)V
    .locals 1

    .line 291
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD LEFT APPLICATION"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAdLeftApplication"

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
