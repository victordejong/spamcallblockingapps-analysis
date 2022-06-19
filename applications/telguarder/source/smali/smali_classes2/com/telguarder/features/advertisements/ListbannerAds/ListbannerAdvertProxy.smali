.class public Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;
.super Ljava/lang/Object;
.source "ListbannerAdvertProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ListbannerAdvertProxy"


# instance fields
.field private mAdvert:Lcom/telguarder/features/advertisements/Advert;

.field private mHostActivity:Landroidx/appcompat/app/AppCompatActivity;

.field public mListbannerAdvertProvider:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;

.field private mParentData:Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/telguarder/features/advertisements/Advert;Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mHostActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 30
    iput-object p3, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mParentData:Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;

    .line 31
    iput-object p2, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    if-eqz p2, :cond_0

    .line 33
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->getAdvertProvider()Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mListbannerAdvertProvider:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;

    :cond_0
    return-void
.end method

.method private getAdvertProvider()Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-static {v0}, Lcom/telguarder/ApplicationConstants;->isAdNetworkEnabled(Lcom/telguarder/features/advertisements/AdvertNetworkName;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    sget-object v0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy$1;->$SwitchMap$com$telguarder$features$advertisements$AdvertNetworkName:[I

    iget-object v1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v1}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v2, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mHostActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1, v2}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;-><init>(Lcom/telguarder/features/advertisements/Advert;Landroidx/appcompat/app/AppCompatActivity;)V

    goto :goto_1

    .line 57
    :cond_1
    new-instance v0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v2, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mHostActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1, v2}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;-><init>(Lcom/telguarder/features/advertisements/Advert;Landroidx/appcompat/app/AppCompatActivity;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public declared-synchronized hideCurrentAd()V
    .locals 4

    monitor-enter p0

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mListbannerAdvertProvider:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 167
    iput-boolean v1, v0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->closed:Z

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mListbannerAdvertProvider:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 171
    :try_start_1
    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->onHideViews()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 173
    :try_start_2
    sget-object v1, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "advert provider hide views error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isAdClicked()Z
    .locals 1

    monitor-enter p0

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mListbannerAdvertProvider:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;

    iget-boolean v0, v0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->adClicked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isLoaded()Z
    .locals 1

    monitor-enter p0

    .line 44
    :try_start_0
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mListbannerAdvertProvider:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;

    iget-boolean v0, v0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->adLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isReady()Z
    .locals 1

    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mListbannerAdvertProvider:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic lambda$load$0$ListbannerAdvertProxy(Ljava/lang/Runnable;)V
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->loadBackup(Ljava/lang/Runnable;)V

    return-void
.end method

.method public load(Ljava/lang/Runnable;)V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mListbannerAdvertProvider:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->adLoaded:Z

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mListbannerAdvertProvider:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mHostActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/telguarder/features/advertisements/ListbannerAds/-$$Lambda$m5h7XYK32O7TqBM7SWcvc7fLX0o;

    invoke-direct {v2, p1}, Lcom/telguarder/features/advertisements/ListbannerAds/-$$Lambda$m5h7XYK32O7TqBM7SWcvc7fLX0o;-><init>(Ljava/lang/Runnable;)V

    new-instance v3, Lcom/telguarder/features/advertisements/ListbannerAds/-$$Lambda$ListbannerAdvertProxy$6N-vSYBZYZhRkXiF1QeN5BXYd_U;

    invoke-direct {v3, p0, p1}, Lcom/telguarder/features/advertisements/ListbannerAds/-$$Lambda$ListbannerAdvertProxy$6N-vSYBZYZhRkXiF1QeN5BXYd_U;-><init>(Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->onLoadAd(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 70
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public declared-synchronized loadBackup(Ljava/lang/Runnable;)V
    .locals 3

    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/Advert;->getAdvertForBackupNetwork()Lcom/telguarder/features/advertisements/Advert;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iput-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    .line 80
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->getAdvertProvider()Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mListbannerAdvertProvider:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load advert from backup ad network ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v2, v2, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v2, v2, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v2}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p1}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->load(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 87
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mParentData:Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->isInstantiated()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->getInstance()Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mParentData:Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->remove(Lcom/telguarder/features/postCallSpamInfo/SpamCommentData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :catch_0
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onBackPressed()V
    .locals 3

    .line 133
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-nez v0, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v1}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertBackPressedAction(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized onBindAd(Landroid/view/ViewGroup;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mListbannerAdvertProvider:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0, p1}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->bindAd(Landroid/view/ViewGroup;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 96
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onDestroy()V
    .locals 4

    monitor-enter p0

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mListbannerAdvertProvider:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 156
    :try_start_1
    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->onDestroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 158
    :try_start_2
    sget-object v1, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "advert provider destroy error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onHomePressed()V
    .locals 3

    .line 140
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-nez v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v1}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertHomePressedAction(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized onPause()V
    .locals 4

    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mListbannerAdvertProvider:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 102
    :try_start_1
    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->onPause()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 104
    :try_start_2
    sget-object v1, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "advert provider pause error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onResume()V
    .locals 4

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mListbannerAdvertProvider:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 113
    :try_start_1
    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->onResume()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 115
    :try_start_2
    sget-object v1, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "advert provider resume error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onScreenOff()V
    .locals 3

    .line 147
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-nez v0, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v1}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertScreenOffAction(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized onStop()V
    .locals 4

    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->mListbannerAdvertProvider:Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 124
    :try_start_1
    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->onStop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 126
    :try_start_2
    sget-object v1, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "advert provider stop error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
