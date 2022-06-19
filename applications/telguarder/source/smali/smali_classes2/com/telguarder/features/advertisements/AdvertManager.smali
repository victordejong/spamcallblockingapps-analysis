.class public Lcom/telguarder/features/advertisements/AdvertManager;
.super Ljava/lang/Object;
.source "AdvertManager.java"


# static fields
.field private static keepAliveCount:I = 0x0

.field public static keepAliveTimeStep:I = 0xf

.field public static mAdNetwqorkDebugFlow:Ljava/lang/String; = ""

.field private static mInstance:Lcom/telguarder/features/advertisements/AdvertManager;

.field public static mLocation:Landroid/location/Location;


# instance fields
.field private mAdvertDownloadInProgress:Z

.field private mAdvertOrmLiteHelper:Lcom/telguarder/features/advertisements/AdvertOrmLiteHelper;

.field private mHasListBannerAd:Z

.field public mHasPostCallAd:Z

.field public mLastOwDfpNetworkName:Ljava/lang/String;

.field private mTestNumber:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/AdvertManager;->mAdvertDownloadInProgress:Z

    .line 36
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/AdvertManager;->mTestNumber:Z

    .line 39
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/AdvertManager;->mHasListBannerAd:Z

    .line 40
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/AdvertManager;->mHasPostCallAd:Z

    return-void
.end method

.method static synthetic access$002(Lcom/telguarder/features/advertisements/AdvertManager;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/telguarder/features/advertisements/AdvertManager;->mAdvertDownloadInProgress:Z

    return p1
.end method

.method static synthetic access$100(Lcom/telguarder/features/advertisements/AdvertManager;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/telguarder/features/advertisements/AdvertManager;->mHasListBannerAd:Z

    return p0
.end method

.method static synthetic access$102(Lcom/telguarder/features/advertisements/AdvertManager;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/telguarder/features/advertisements/AdvertManager;->mHasListBannerAd:Z

    return p1
.end method

.method static synthetic access$200(Lcom/telguarder/features/advertisements/AdvertManager;Lcom/telguarder/features/advertisements/Advert;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/AdvertManager;->handleAdvertResult(Lcom/telguarder/features/advertisements/Advert;)V

    return-void
.end method

.method static synthetic access$300(Lcom/telguarder/features/advertisements/AdvertManager;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/AdvertManager;->deleteAdvertFromCache(Ljava/lang/String;)V

    return-void
.end method

.method public static addAdNetworkFlowDebugInfo(Ljava/lang/String;)V
    .locals 3

    const-string v0, "\n"

    .line 253
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 254
    :cond_0
    sget-object v1, Lcom/telguarder/features/advertisements/AdvertManager;->mAdNetwqorkDebugFlow:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/telguarder/helpers/location/LocationHelper;->getInstance()Lcom/telguarder/helpers/location/LocationHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telguarder/helpers/location/LocationHelper;->getCurrentCoarseLocation()Landroid/location/Location;

    move-result-object v1

    sput-object v1, Lcom/telguarder/features/advertisements/AdvertManager;->mLocation:Landroid/location/Location;

    .line 255
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 256
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/telguarder/features/advertisements/AdvertManager;->mAdNetwqorkDebugFlow:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/telguarder/features/advertisements/AdvertManager;->mAdNetwqorkDebugFlow:Ljava/lang/String;

    goto :goto_0

    .line 258
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/telguarder/features/advertisements/AdvertManager;->mAdNetwqorkDebugFlow:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/telguarder/helpers/dateUtils/DateTimeFormatter;->getCurrentFormattedTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/telguarder/features/advertisements/AdvertManager;->mAdNetwqorkDebugFlow:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public static addAdNetworkFlowDebugInfoPostCallStart(Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/advertisements/Advert;)V
    .locals 2

    .line 283
    :try_start_0
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->stopPreloadKeepAlive()V

    .line 284
    sget v0, Lcom/telguarder/features/advertisements/AdvertManager;->keepAliveCount:I

    if-lez v0, :cond_0

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " PRELOAD KEEPALIVE TIME: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getKeepAliveDuration()I

    move-result v1

    invoke-static {v1}, Lcom/telguarder/features/advertisements/AdvertManager;->getFormattedKeepaliveValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 286
    sput v0, Lcom/telguarder/features/advertisements/AdvertManager;->keepAliveCount:I

    :cond_0
    if-eqz p2, :cond_3

    .line 288
    iget-object v0, p2, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-nez v0, :cond_1

    goto :goto_1

    .line 291
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "\n        - there was no preload"

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n        - preload state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 292
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " POSTCALL AD START \n        - "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p2, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object p0, p0, Lcom/telguarder/features/advertisements/AdvertNetwork;->description:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n        - "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p2, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object p0, p0, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    goto :goto_2

    .line 289
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " POSTCALL AD START \n        - advert object not availabe"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_2
    return-void
.end method

.method private addDaysSinceInstallHeader(Landroid/content/Context;Lcom/telguarder/helpers/backend/BackendRequest;)V
    .locals 5

    const-string v0, "X-Days-Since-Install"

    .line 71
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-wide v1, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v1, 0x5265c00

    div-long/2addr v3, v1

    .line 73
    iget-boolean p1, p0, Lcom/telguarder/features/advertisements/AdvertManager;->mTestNumber:Z

    if-eqz p1, :cond_0

    const-wide/16 v3, 0x63

    :cond_0
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/telguarder/helpers/backend/BackendRequest;->putHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "AdvertManager get firstInstallTime error"

    .line 75
    invoke-static {p1}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    const-string p1, "99"

    .line 76
    invoke-virtual {p2, v0, p1}, Lcom/telguarder/helpers/backend/BackendRequest;->putHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static cleanAdNetworkFlowDebugInfo(Z)V
    .locals 0

    if-nez p0, :cond_0

    .line 276
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->isKeepAliveRunning()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    .line 277
    sput-object p0, Lcom/telguarder/features/advertisements/AdvertManager;->mAdNetwqorkDebugFlow:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private deleteAdvertFromCache(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 242
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/AdvertManager;->mAdvertOrmLiteHelper:Lcom/telguarder/features/advertisements/AdvertOrmLiteHelper;

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/AdvertOrmLiteHelper;->getAdvertDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "place"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->setWhere(Lcom/j256/ormlite/stmt/Where;)V

    .line 246
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    :cond_1
    return-void
.end method

.method private getAdvertFromCache(Ljava/lang/String;)Lcom/telguarder/features/advertisements/Advert;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 200
    :try_start_0
    iget-object v2, p0, Lcom/telguarder/features/advertisements/AdvertManager;->mAdvertOrmLiteHelper:Lcom/telguarder/features/advertisements/AdvertOrmLiteHelper;

    invoke-virtual {v2}, Lcom/telguarder/features/advertisements/AdvertOrmLiteHelper;->getAdvertDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    const-wide/16 v3, 0x1

    .line 201
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 202
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "place"

    invoke-virtual {v3, v4, p1}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->setWhere(Lcom/j256/ormlite/stmt/Where;)V

    const-string p1, "createdAt"

    .line 203
    invoke-virtual {v2, p1, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 204
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 206
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_0

    .line 208
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/telguarder/features/advertisements/Advert;

    return-object p1

    :cond_0
    return-object v1
.end method

.method private static getFormattedKeepaliveValue(I)Ljava/lang/String;
    .locals 11

    .line 299
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v3, p0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v5

    sget-object p0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {p0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v9

    rem-long/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string p0, "%02d:%02d:%02d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/telguarder/features/advertisements/AdvertManager;
    .locals 2

    const-class v0, Lcom/telguarder/features/advertisements/AdvertManager;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/telguarder/features/advertisements/AdvertManager;->mInstance:Lcom/telguarder/features/advertisements/AdvertManager;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lcom/telguarder/features/advertisements/AdvertManager;

    invoke-direct {v1}, Lcom/telguarder/features/advertisements/AdvertManager;-><init>()V

    sput-object v1, Lcom/telguarder/features/advertisements/AdvertManager;->mInstance:Lcom/telguarder/features/advertisements/AdvertManager;

    .line 53
    :cond_0
    sget-object v1, Lcom/telguarder/features/advertisements/AdvertManager;->mInstance:Lcom/telguarder/features/advertisements/AdvertManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getKeepAliveDuration()I
    .locals 2

    .line 268
    sget v0, Lcom/telguarder/features/advertisements/AdvertManager;->keepAliveCount:I

    sget v1, Lcom/telguarder/features/advertisements/AdvertManager;->keepAliveTimeStep:I

    mul-int v0, v0, v1

    return v0
.end method

.method private handleAdvertResult(Lcom/telguarder/features/advertisements/Advert;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 153
    iget-object v0, p1, Lcom/telguarder/features/advertisements/Advert;->place:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "postcall"

    .line 154
    iput-object v0, p1, Lcom/telguarder/features/advertisements/Advert;->place:Ljava/lang/String;

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p1, Lcom/telguarder/features/advertisements/Advert;->place:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/telguarder/features/advertisements/Advert;->place:Ljava/lang/String;

    .line 176
    :goto_0
    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getInstance()Lcom/telguarder/features/advertisements/AdvertManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telguarder/features/advertisements/AdvertManager;->saveAdvertToCache(Lcom/telguarder/features/advertisements/Advert;)I

    :cond_1
    return-void
.end method

.method public static incAdNetworkFlowKeepaliveCount()V
    .locals 1

    .line 264
    sget v0, Lcom/telguarder/features/advertisements/AdvertManager;->keepAliveCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/telguarder/features/advertisements/AdvertManager;->keepAliveCount:I

    return-void
.end method

.method public static resetAdNetworkFlowKeepaliveCount()V
    .locals 1

    const/4 v0, 0x0

    .line 272
    sput v0, Lcom/telguarder/features/advertisements/AdvertManager;->keepAliveCount:I

    return-void
.end method


# virtual methods
.method public fetchAdvertFromBackend_V3(Landroid/content/Context;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/telguarder/helpers/backend/BackendCallbackListener<",
            "Lcom/telguarder/features/advertisements/Adverts;",
            ">;)V"
        }
    .end annotation

    .line 63
    sget-object v0, Lcom/telguarder/helpers/backend/BackendRequest$Method;->GET:Lcom/telguarder/helpers/backend/BackendRequest$Method;

    const-string v1, "https://api.advista.no/v3/AdNetwork"

    invoke-static {p1, v1, v0}, Lcom/telguarder/helpers/backend/BackendRequestCreator;->backendRequestOfUrlAndMethodWithLogging(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/helpers/backend/BackendRequest$Method;)Lcom/telguarder/helpers/backend/BackendRequest;

    move-result-object v0

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addDaysSinceInstallHeader(Landroid/content/Context;Lcom/telguarder/helpers/backend/BackendRequest;)V

    .line 65
    const-class p1, Lcom/telguarder/features/advertisements/Adverts;

    invoke-virtual {v0, p1, p2}, Lcom/telguarder/helpers/backend/BackendRequest;->execute(Ljava/lang/Class;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V

    return-void
.end method

.method public getListbannerAdvertFromCache()Lcom/telguarder/features/advertisements/Advert;
    .locals 1

    const-string v0, "listbanner"

    .line 221
    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/AdvertManager;->getAdvertFromCache(Ljava/lang/String;)Lcom/telguarder/features/advertisements/Advert;

    move-result-object v0

    return-object v0
.end method

.method public getPostcallAdvertFromCache()Lcom/telguarder/features/advertisements/Advert;
    .locals 1

    const-string v0, "postcall"

    .line 216
    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/AdvertManager;->getAdvertFromCache(Ljava/lang/String;)Lcom/telguarder/features/advertisements/Advert;

    move-result-object v0

    return-object v0
.end method

.method public hasAdvertInCache()Z
    .locals 3

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/AdvertManager;->mAdvertOrmLiteHelper:Lcom/telguarder/features/advertisements/AdvertOrmLiteHelper;

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/AdvertOrmLiteHelper;->getAdvertDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 185
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 186
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 58
    new-instance v0, Lcom/telguarder/features/advertisements/AdvertOrmLiteHelper;

    invoke-direct {v0, p1}, Lcom/telguarder/features/advertisements/AdvertOrmLiteHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/telguarder/features/advertisements/AdvertManager;->mAdvertOrmLiteHelper:Lcom/telguarder/features/advertisements/AdvertOrmLiteHelper;

    return-void
.end method

.method public synthetic lambda$updateAdvertCache$0$AdvertManager(Landroid/content/Context;)V
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/AdvertManager;->mAdvertDownloadInProgress:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/telguarder/helpers/backend/NetworkHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lcom/telguarder/features/advertisements/AdvertManager$1;

    invoke-direct {v0, p0}, Lcom/telguarder/features/advertisements/AdvertManager$1;-><init>(Lcom/telguarder/features/advertisements/AdvertManager;)V

    invoke-virtual {p0, p1, v0}, Lcom/telguarder/features/advertisements/AdvertManager;->fetchAdvertFromBackend_V3(Landroid/content/Context;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V

    :cond_0
    return-void
.end method

.method public saveAdvertToCache(Lcom/telguarder/features/advertisements/Advert;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 230
    :cond_0
    :try_start_0
    iget-object v1, p1, Lcom/telguarder/features/advertisements/Advert;->place:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/telguarder/features/advertisements/AdvertManager;->deleteAdvertFromCache(Ljava/lang/String;)V

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/telguarder/features/advertisements/Advert;->createdAtDateTimeInMillis:J

    .line 232
    iget-object v1, p0, Lcom/telguarder/features/advertisements/AdvertManager;->mAdvertOrmLiteHelper:Lcom/telguarder/features/advertisements/AdvertOrmLiteHelper;

    invoke-virtual {v1}, Lcom/telguarder/features/advertisements/AdvertOrmLiteHelper;->getAdvertDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 233
    iget p1, p1, Lcom/telguarder/features/advertisements/Advert;->id:I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 235
    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    return v0
.end method

.method public updateAdvertCache(Landroid/content/Context;Z)V
    .locals 1

    .line 82
    iput-boolean p2, p0, Lcom/telguarder/features/advertisements/AdvertManager;->mTestNumber:Z

    .line 83
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/telguarder/features/advertisements/-$$Lambda$AdvertManager$mr7wwXzJy0W8ZfjQzQ4yYfLm0eY;

    invoke-direct {v0, p0, p1}, Lcom/telguarder/features/advertisements/-$$Lambda$AdvertManager$mr7wwXzJy0W8ZfjQzQ4yYfLm0eY;-><init>(Lcom/telguarder/features/advertisements/AdvertManager;Landroid/content/Context;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 147
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method
