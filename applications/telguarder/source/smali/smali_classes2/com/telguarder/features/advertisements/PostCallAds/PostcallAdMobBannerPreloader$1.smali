.class Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "PostcallAdMobBannerPreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;


# direct methods
.method constructor <init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAdLoaded$0$PostcallAdMobBannerPreloader$1()V
    .locals 1

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->access$300(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onAdClicked()V
    .locals 2

    .line 220
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClicked()V

    .line 221
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdClicked"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertClickedAction(Ljava/lang/String;)V

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD CLICKED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    return-void
.end method

.method public onAdClosed()V
    .locals 2

    .line 133
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD CLOSED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdClosed"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 2

    .line 140
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    .line 141
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdFailedToLoad"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 172
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 173
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD FAILED TO LOAD"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertNoFillErrorAction(Ljava/lang/String;)V

    .line 168
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->NO_AD:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD FAILED TO LOAD\n        - ERROR_CODE_NO_FILL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    :cond_1
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertNetworkErrorAction(Ljava/lang/String;)V

    .line 155
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD FAILED TO LOAD\n        - ERROR_CODE_NETWORK_ERROR"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;)Lcom/telguarder/features/advertisements/Advert;

    move-result-object p1

    iget-boolean p1, p1, Lcom/telguarder/features/advertisements/Advert;->isBackupNetwork:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;)I

    move-result p1

    const/16 v1, 0x8

    if-ge p1, v1, :cond_2

    const-string p1, " PRELOAD RETRY.. "

    .line 157
    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 158
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p1, v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->access$202(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;I)I

    .line 159
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->access$300(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;)V

    return-void

    .line 162
    :cond_2
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->access$202(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;I)I

    .line 163
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    goto :goto_0

    .line 149
    :cond_3
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD FAILED TO LOAD\n        - ERROR_CODE_INVALID_REQUEST"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_4
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertInternalErrorAction(Ljava/lang/String;)V

    .line 145
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD FAILED TO LOAD\n        - ERROR_CODE_INTERNAL_ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 177
    :goto_0
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->reset()V

    .line 178
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object p1

    invoke-static {}, Lcom/telguarder/ApplicationObject;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->preloadBackup(Landroid/content/Context;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 2

    .line 228
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdImpression()V

    .line 229
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdImpression"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertImpressionLoggedAction(Ljava/lang/String;)V

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD IMPRESSION LOGGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 2

    .line 183
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLeftApplication()V

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD LEFT APPLICATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdLeftApplication"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    .line 198
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 199
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdLoaded"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mAdView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_3

    .line 201
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    iget-object v2, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdView;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mResponseInfo:Lcom/google/android/gms/ads/ResponseInfo;

    .line 203
    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    new-instance v2, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdMobBannerPreloader$1$SJZ3WjRg-SRg4kRjURA5DpHCzcU;

    invoke-direct {v2, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdMobBannerPreloader$1$SJZ3WjRg-SRg4kRjURA5DpHCzcU;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;)V

    iput-object v2, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mExpiredAdRunnable:Ljava/lang/Runnable;

    .line 204
    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    sget-object v2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->LOADED:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {v1, v2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 205
    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->pause()V

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    iget-object v2, v2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AD LOADED\n        - adSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n        - responseId: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mResponseInfo:Lcom/google/android/gms/ads/ResponseInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mResponseInfo:Lcom/google/android/gms/ads/ResponseInfo;

    .line 207
    invoke-virtual {v0}, Lcom/google/android/gms/ads/ResponseInfo;->getResponseId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n        - mediationAdapter: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mResponseInfo:Lcom/google/android/gms/ads/ResponseInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mResponseInfo:Lcom/google/android/gms/ads/ResponseInfo;

    .line 208
    invoke-virtual {v0}, Lcom/google/android/gms/ads/ResponseInfo;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto :goto_2

    .line 210
    :cond_3
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mResponseInfo:Lcom/google/android/gms/ads/ResponseInfo;

    .line 211
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {v0, v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ADVIEW LOST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->reset()V

    .line 214
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    invoke-static {}, Lcom/telguarder/ApplicationObject;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->preloadBackup(Landroid/content/Context;)V

    :goto_2
    return-void
.end method

.method public onAdOpened()V
    .locals 2

    .line 190
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    .line 191
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdOpened"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD OPENED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertOpenedAction(Ljava/lang/String;)V

    return-void
.end method
