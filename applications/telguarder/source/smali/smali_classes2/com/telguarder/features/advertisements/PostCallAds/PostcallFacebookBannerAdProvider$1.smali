.class Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider$1;
.super Ljava/lang/Object;
.source "PostcallFacebookBannerAdProvider.java"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;


# direct methods
.method constructor <init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 284
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    const-string v0, "onAdClicked"

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->adClicked:Z

    .line 286
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertClickedAction(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 274
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    const-string v0, "onAdLoaded"

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->isInstanciated()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->cancelAllPreloadTimeoutHandlers()V

    .line 276
    :cond_0
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;

    iget-object p1, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mAdView:Lcom/facebook/ads/AdView;

    if-nez p1, :cond_1

    return-void

    .line 277
    :cond_1
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->adClicked:Z

    .line 278
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;Ljava/lang/Boolean;)V

    .line 279
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD LOADED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 2

    .line 235
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->isInstanciated()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->cancelAllPreloadTimeoutHandlers()V

    .line 237
    :cond_0
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->adShowBeginTimestamp:J

    if-eqz p2, :cond_3

    .line 239
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result p1

    const/16 p2, 0x7d0

    if-eq p1, p2, :cond_2

    const/16 p2, 0x7d1

    if-eq p1, p2, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 264
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 265
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 252
    :pswitch_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertTooFrequentErrorAction(Ljava/lang/String;)V

    .line 253
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - LOAD_TOO_FREQUENTLY_ERROR_CODE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 245
    :pswitch_1
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertNoFillErrorAction(Ljava/lang/String;)V

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - NO_FILL_ERROR_CODE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :pswitch_2
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertNetworkErrorAction(Ljava/lang/String;)V

    .line 242
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - NETWORK_ERROR_CODE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :cond_1
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertInternalErrorAction(Ljava/lang/String;)V

    .line 261
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - INTERNAL_ERROR_CODE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_2
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertServerErrorAction(Ljava/lang/String;)V

    .line 257
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - SERVER_ERROR_CODE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 269
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 291
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    const-string v0, "onLoggingImpression"

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->isInstanciated()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->cancelAllPreloadTimeoutHandlers()V

    .line 293
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertImpressionLoggedAction(Ljava/lang/String;)V

    .line 297
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD IMPRESSION LOGGED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    return-void
.end method
