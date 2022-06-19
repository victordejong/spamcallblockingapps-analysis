.class Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "PostcallAdManagerBannerPreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;


# direct methods
.method constructor <init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAdLoaded$0$PostcallAdManagerBannerPreloader$1()V
    .locals 1

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->access$300(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onAdClicked()V
    .locals 2

    .line 231
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClicked()V

    .line 232
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdClicked"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD CLICKED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 234
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertClickedAction(Ljava/lang/String;)V

    return-void
.end method

.method public onAdClosed()V
    .locals 2

    .line 143
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD CLOSED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdClosed"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 2

    .line 150
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    .line 151
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->access$000()Ljava/lang/String;

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

    .line 182
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD FAILED TO LOAD"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertNoFillErrorAction(Ljava/lang/String;)V

    .line 178
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->NO_AD:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD FAILED TO LOAD\n        - ERROR_CODE_NO_FILL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    :cond_1
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertNetworkErrorAction(Ljava/lang/String;)V

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD FAILED TO LOAD\n        - ERROR_CODE_NETWORK_ERROR"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 166
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;)Lcom/telguarder/features/advertisements/Advert;

    move-result-object p1

    iget-boolean p1, p1, Lcom/telguarder/features/advertisements/Advert;->isBackupNetwork:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;)I

    move-result p1

    const/16 v1, 0x8

    if-ge p1, v1, :cond_2

    const-string p1, " PRELOAD RETRY.. "

    .line 167
    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 168
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p1, v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->access$202(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;I)I

    .line 169
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->access$300(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;)V

    return-void

    .line 172
    :cond_2
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->access$202(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;I)I

    .line 173
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    goto :goto_0

    .line 159
    :cond_3
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 160
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD FAILED TO LOAD\n        - ERROR_CODE_INVALID_REQUEST"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_4
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertInternalErrorAction(Ljava/lang/String;)V

    .line 155
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD FAILED TO LOAD\n        - ERROR_CODE_INTERNAL_ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 187
    :goto_0
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->reset()V

    .line 188
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object p1

    invoke-static {}, Lcom/telguarder/ApplicationObject;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->preloadBackup(Landroid/content/Context;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 2

    .line 239
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdImpression()V

    .line 240
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdImpression"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD IMPRESSION LOGGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertImpressionLoggedAction(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 2

    .line 193
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLeftApplication()V

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD LEFT APPLICATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdLeftApplication"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    .line 208
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 209
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdLoaded"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    iget-object v1, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    iput-object v1, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mCurrentAdSize:Lcom/google/android/gms/ads/AdSize;

    .line 212
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    iget-object v1, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mResponseInfo:Lcom/google/android/gms/ads/ResponseInfo;

    .line 213
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    new-instance v1, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdManagerBannerPreloader$1$Lnp3LZqj_CeocMMUqTjx62sCQUA;

    invoke-direct {v1, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdManagerBannerPreloader$1$Lnp3LZqj_CeocMMUqTjx62sCQUA;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;)V

    iput-object v1, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mExpiredAdRunnable:Ljava/lang/Runnable;

    .line 214
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->LOADED:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {v0, v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 215
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->pause()V

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD LOADED\n        - adSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mCurrentAdSize:Lcom/google/android/gms/ads/AdSize;

    const-string v2, ""

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mCurrentAdSize:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n        - responseId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mResponseInfo:Lcom/google/android/gms/ads/ResponseInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mResponseInfo:Lcom/google/android/gms/ads/ResponseInfo;

    .line 217
    invoke-virtual {v1}, Lcom/google/android/gms/ads/ResponseInfo;->getResponseId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n        - mediationAdapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mResponseInfo:Lcom/google/android/gms/ads/ResponseInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mResponseInfo:Lcom/google/android/gms/ads/ResponseInfo;

    .line 218
    invoke-virtual {v1}, Lcom/google/android/gms/ads/ResponseInfo;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto :goto_2

    .line 220
    :cond_3
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mCurrentAdSize:Lcom/google/android/gms/ads/AdSize;

    .line 221
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    iput-object v1, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mResponseInfo:Lcom/google/android/gms/ads/ResponseInfo;

    .line 222
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {v0, v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ADVIEW LOST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->reset()V

    .line 225
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

    .line 200
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    .line 201
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdOpened"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD OPENED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertOpenedAction(Ljava/lang/String;)V

    return-void
.end method
