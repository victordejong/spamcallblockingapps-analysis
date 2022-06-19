.class Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader$1;
.super Ljava/lang/Object;
.source "PostcallFacebookBannerAdPreloader.java"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;


# direct methods
.method constructor <init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 166
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->FACEBOOK_BANNER:Ljava/lang/String;

    const-string v0, "onAdClicked"

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->adClicked:Z

    .line 168
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertClickedAction(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 158
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->FACEBOOK_BANNER:Ljava/lang/String;

    const-string v0, "onAdLoaded"

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->adClicked:Z

    .line 160
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->LOADED:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->FACEBOOK_BANNER:Ljava/lang/String;

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

    .line 107
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->FACEBOOK_BANNER:Ljava/lang/String;

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

    if-eqz p2, :cond_4

    .line 109
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result p1

    const/16 p2, 0x7d0

    if-eq p1, p2, :cond_3

    const/16 p2, 0x7d1

    if-eq p1, p2, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 146
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 148
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    :pswitch_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertTooFrequentErrorAction(Ljava/lang/String;)V

    .line 133
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - LOAD_TOO_FREQUENTLY_ERROR_CODE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 124
    :pswitch_1
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertNoFillErrorAction(Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->NO_AD:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - NO_FILL_ERROR_CODE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    :pswitch_2
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertNetworkErrorAction(Ljava/lang/String;)V

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - NETWORK_ERROR_CODE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;)Lcom/telguarder/features/advertisements/Advert;

    move-result-object p1

    iget-boolean p1, p1, Lcom/telguarder/features/advertisements/Advert;->isBackupNetwork:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;)I

    move-result p1

    const/16 p2, 0x8

    if-ge p1, p2, :cond_1

    const-string p1, " PRELOAD RETRY.. "

    .line 114
    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->access$102(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;I)I

    .line 116
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    iget-object p1, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->mAdView:Lcom/facebook/ads/AdView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    iget-object p1, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->mAdView:Lcom/facebook/ads/AdView;

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->mAdView:Lcom/facebook/ads/AdView;

    invoke-virtual {p2}, Lcom/facebook/ads/AdView;->buildLoadAdConfig()Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object p2

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    invoke-static {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;)Lcom/facebook/ads/AdListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->getAdListener(Lcom/facebook/ads/AdListener;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/AdListener;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object p2

    invoke-interface {p2}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->build()Lcom/facebook/ads/AdView$AdViewLoadConfig;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/ads/AdView;->loadAd(Lcom/facebook/ads/AdView$AdViewLoadConfig;)V

    :cond_0
    return-void

    .line 119
    :cond_1
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->access$102(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;I)I

    .line 120
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    goto :goto_0

    .line 142
    :cond_2
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertInternalErrorAction(Ljava/lang/String;)V

    .line 143
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - INTERNAL_ERROR_CODE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_3
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertServerErrorAction(Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - SERVER_ERROR_CODE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 152
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->reset()V

    .line 153
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object p1

    invoke-static {}, Lcom/telguarder/ApplicationObject;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->preloadBackup(Landroid/content/Context;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 173
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->FACEBOOK_BANNER:Ljava/lang/String;

    const-string v0, "onLoggingImpression"

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertImpressionLoggedAction(Ljava/lang/String;)V

    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD IMPRESSION LOGGED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    return-void
.end method
