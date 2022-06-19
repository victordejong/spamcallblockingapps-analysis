.class Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "PostcallAdMobBannerProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;


# direct methods
.method constructor <init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 2

    .line 334
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClicked()V

    .line 335
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdClicked"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    invoke-static {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD CLICKED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 337
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    invoke-static {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertClickedAction(Ljava/lang/String;)V

    return-void
.end method

.method public onAdClosed()V
    .locals 2

    .line 261
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    .line 262
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->closed:Z

    .line 263
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->hideAdInfoText()V

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    invoke-static {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD CLOSED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 265
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdClosed"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 2

    .line 270
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    .line 271
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->cancelAllPreloadTimeoutHandlers()V

    .line 272
    :cond_0
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdFailedToLoad"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 291
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 292
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD FAILED TO LOAD"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 287
    :cond_1
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertNoFillErrorAction(Ljava/lang/String;)V

    .line 288
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD FAILED TO LOAD\n        - ERROR_CODE_NO_FILL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_2
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertNetworkErrorAction(Ljava/lang/String;)V

    .line 284
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD FAILED TO LOAD\n        - ERROR_CODE_NETWORK_ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 279
    :cond_3
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 280
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD FAILED TO LOAD\n        - ERROR_CODE_INVALID_REQUEST"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :cond_4
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertInternalErrorAction(Ljava/lang/String;)V

    .line 276
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD FAILED TO LOAD\n        - ERROR_CODE_INTERNAL_ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 295
    :goto_0
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 2

    .line 342
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdImpression()V

    .line 343
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->cancelAllPreloadTimeoutHandlers()V

    .line 344
    :cond_0
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdImpression"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    invoke-static {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD IMPRESSION LOGGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 346
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    invoke-static {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertImpressionLoggedAction(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 2

    .line 300
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLeftApplication()V

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    invoke-static {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD LEFT APPLICATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 302
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdLeftApplication"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    .line 315
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 316
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->cancelAllPreloadTimeoutHandlers()V

    .line 317
    :cond_0
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdLoaded"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->access$300(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 319
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->access$300(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    invoke-static {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->access$300(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;)Lcom/google/android/gms/ads/AdView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdView;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mResponseInfo:Lcom/google/android/gms/ads/ResponseInfo;

    .line 321
    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->access$400(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;Ljava/lang/Boolean;)V

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    invoke-static {v2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AD LOADED\n        - adSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n        - responseId: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mResponseInfo:Lcom/google/android/gms/ads/ResponseInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mResponseInfo:Lcom/google/android/gms/ads/ResponseInfo;

    .line 323
    invoke-virtual {v0}, Lcom/google/android/gms/ads/ResponseInfo;->getResponseId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n        - mediationAdapter: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mResponseInfo:Lcom/google/android/gms/ads/ResponseInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mResponseInfo:Lcom/google/android/gms/ads/ResponseInfo;

    .line 324
    invoke-virtual {v0}, Lcom/google/android/gms/ads/ResponseInfo;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto :goto_2

    .line 326
    :cond_4
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mResponseInfo:Lcom/google/android/gms/ads/ResponseInfo;

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    invoke-static {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ADVIEW LOST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;)V

    :goto_2
    return-void
.end method

.method public onAdOpened()V
    .locals 2

    .line 307
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    .line 308
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdOpened"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    invoke-static {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD OPENED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 310
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;

    invoke-static {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertOpenedAction(Ljava/lang/String;)V

    return-void
.end method
