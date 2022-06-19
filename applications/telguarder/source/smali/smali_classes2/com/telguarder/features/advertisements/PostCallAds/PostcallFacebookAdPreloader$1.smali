.class Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader$1;
.super Ljava/lang/Object;
.source "PostcallFacebookAdPreloader.java"

# interfaces
.implements Lcom/facebook/ads/NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->loadAdvert(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;Landroid/content/Context;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 153
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->FACEBOOK:Ljava/lang/String;

    const-string v0, "onAdClicked"

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->adClicked:Z

    .line 155
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertClickedAction(Ljava/lang/String;)V

    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD CLICKED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 146
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->FACEBOOK:Ljava/lang/String;

    const-string v0, "onAdLoaded"

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->adClicked:Z

    .line 148
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->LOADED:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD LOADED\n        - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdvertiserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 2

    .line 95
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->FACEBOOK:Ljava/lang/String;

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

    if-eqz p2, :cond_3

    .line 97
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result p1

    const/16 p2, 0x7d0

    if-eq p1, p2, :cond_2

    const/16 p2, 0x7d1

    if-eq p1, p2, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 135
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :pswitch_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertTooFrequentErrorAction(Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - LOAD_TOO_FREQUENTLY_ERROR_CODE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 112
    :pswitch_1
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertNoFillErrorAction(Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->NO_AD:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - NO_FILL_ERROR_CODE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 99
    :pswitch_2
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertNetworkErrorAction(Ljava/lang/String;)V

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - NETWORK_ERROR_CODE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;)Lcom/telguarder/features/advertisements/Advert;

    move-result-object p1

    iget-boolean p1, p1, Lcom/telguarder/features/advertisements/Advert;->isBackupNetwork:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;)I

    move-result p1

    const/16 p2, 0x8

    if-ge p1, p2, :cond_0

    const-string p1, " PRELOAD RETRY.. "

    .line 102
    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->access$102(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;I)I

    .line 104
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader$1;->val$context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;Landroid/content/Context;)V

    return-void

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->access$102(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;I)I

    .line 108
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    goto :goto_0

    .line 130
    :cond_1
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertInternalErrorAction(Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - INTERNAL_ERROR_CODE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_2
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertServerErrorAction(Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AD FAILED TO LOAD\n        - SERVER_ERROR_CODE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 141
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->reset()V

    .line 142
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader$1;->val$context:Landroid/content/Context;

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

    .line 160
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->FACEBOOK:Ljava/lang/String;

    const-string v0, "onLoggingImpression"

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertImpressionLoggedAction(Ljava/lang/String;)V

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD IMPRESSION LOGGED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    return-void
.end method

.method public onMediaDownloaded(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 169
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->FACEBOOK:Ljava/lang/String;

    const-string v0, "onAdLoading"

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD MEDIA DOWNLOADED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    return-void
.end method
