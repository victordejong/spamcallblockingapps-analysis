.class Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "PostcallAdmobListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;


# direct methods
.method constructor <init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 2

    .line 153
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClicked()V

    .line 154
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdClicked"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->ADMOB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertClickedAction(Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->ADMOB:Ljava/lang/String;

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

    .line 60
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    .line 61
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->closed:Z

    .line 63
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->hideAdInfoText()V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdClosed"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->ADMOB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD CLOSED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 2

    .line 71
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    .line 72
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->cancelAllPreloadTimeoutHandlers()V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdFailedToLoad"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    .line 106
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->ADMOB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object p1

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 108
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->ADMOB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD FAILED TO LOAD"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 101
    :cond_2
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->ADMOB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertNoFillErrorAction(Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object p1

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->NO_AD:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 103
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->ADMOB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD FAILED TO LOAD\n        - ERROR_CODE_NO_FILL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 86
    :cond_4
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->ADMOB:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertNetworkErrorAction(Ljava/lang/String;)V

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->ADMOB:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD FAILED TO LOAD\n        - ERROR_CODE_NETWORK_ERROR"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 89
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object p1

    iget-object p1, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-boolean p1, p1, Lcom/telguarder/features/advertisements/Advert;->isBackupNetwork:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object p1

    iget p1, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mLoadAttempt:I

    const/16 v1, 0x8

    if-ge p1, v1, :cond_5

    const-string p1, " PRELOAD RETRY.. "

    .line 90
    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object p1

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object v1

    iget v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mLoadAttempt:I

    add-int/2addr v1, v0

    iput v1, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mLoadAttempt:I

    .line 92
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->loadAdvert()V

    return-void

    .line 95
    :cond_5
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object p1

    const/4 v0, 0x0

    iput v0, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mLoadAttempt:I

    .line 96
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object p1

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    goto :goto_0

    .line 81
    :cond_6
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->ADMOB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object p1

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 83
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->ADMOB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD FAILED TO LOAD\n        - ERROR_CODE_INVALID_REQUEST"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_8
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->ADMOB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertInternalErrorAction(Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object p1

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 78
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->ADMOB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AD FAILED TO LOAD\n        - ERROR_CODE_INTERNAL_ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 111
    :cond_a
    :goto_0
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 112
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->error()V

    goto :goto_1

    .line 113
    :cond_b
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$300(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 114
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->isInstanciated()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->getState()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    move-result-object p1

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 115
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->reset()V

    .line 117
    :cond_c
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$300(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->preloadBackup(Landroid/content/Context;)V

    :cond_d
    :goto_1
    return-void
.end method

.method public onAdImpression()V
    .locals 2

    .line 161
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdImpression()V

    .line 162
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->cancelAllPreloadTimeoutHandlers()V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdImpression"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->ADMOB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertImpressionLoggedAction(Ljava/lang/String;)V

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->ADMOB:Ljava/lang/String;

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

    .line 123
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLeftApplication()V

    .line 124
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdLeftApplication"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->ADMOB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD LEFT APPLICATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 138
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 139
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->cancelAllPreloadTimeoutHandlers()V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdLoaded"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->ADMOB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD LOADED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object v0

    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->LOADED:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {v0, v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 145
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->getState()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    move-result-object v0

    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->LOADING:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {v0, v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$300(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$300(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->addAdMobView(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAdOpened()V
    .locals 2

    .line 130
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    .line 131
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    invoke-static {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdOpened"

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->ADMOB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertOpenedAction(Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener$1;->this$0:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->ADMOB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD OPENED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    return-void
.end method
