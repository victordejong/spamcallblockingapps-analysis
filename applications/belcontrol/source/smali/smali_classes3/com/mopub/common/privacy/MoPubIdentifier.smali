.class public Lcom/mopub/common/privacy/MoPubIdentifier;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/privacy/MoPubIdentifier$b;,
        Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;
    }
.end annotation


# instance fields
.field public a:Lcom/mopub/common/privacy/AdvertisingId;

.field public final b:Landroid/content/Context;

.field public c:Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;

.field public d:Z

.field public e:Z

.field public volatile f:Lcom/mopub/common/SdkInitializationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mopub/common/privacy/MoPubIdentifier;-><init>(Landroid/content/Context;Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;)V
    .locals 0
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->c:Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;

    invoke-static {p1}, Lcom/mopub/common/privacy/MoPubIdentifier;->d(Landroid/content/Context;)Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->a:Lcom/mopub/common/privacy/AdvertisingId;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/mopub/common/privacy/AdvertisingId;->a()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->a:Lcom/mopub/common/privacy/AdvertisingId;

    :cond_0
    invoke-virtual {p0}, Lcom/mopub/common/privacy/MoPubIdentifier;->e()V

    return-void
.end method

.method public static synthetic a(Lcom/mopub/common/privacy/MoPubIdentifier;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->d:Z

    return p1
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Lcom/mopub/common/privacy/AdvertisingId;
    .locals 5

    const-class v0, Lcom/mopub/common/privacy/MoPubIdentifier;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    const-string v2, "com.mopub.settings.identifier"

    invoke-static {p0, v2}, Lcom/mopub/common/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v2, "privacy.identifier.ifa"

    const-string v3, ""

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "privacy.identifier.mopub"

    const-string v4, ""

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "privacy.limit.ad.tracking"

    invoke-interface {p0, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/mopub/common/privacy/AdvertisingId;

    invoke-direct {v4, v2, v3, p0}, Lcom/mopub/common/privacy/AdvertisingId;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v4

    :catch_0
    :try_start_2
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Cannot read identifier from shared preferences"

    aput-object v3, v2, v1

    invoke-static {p0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized k(Landroid/content/Context;Lcom/mopub/common/privacy/AdvertisingId;)V
    .locals 3

    const-class v0, Lcom/mopub/common/privacy/MoPubIdentifier;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "com.mopub.settings.identifier"

    invoke-static {p0, v1}, Lcom/mopub/common/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "privacy.limit.ad.tracking"

    iget-boolean v2, p1, Lcom/mopub/common/privacy/AdvertisingId;->c:Z

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "privacy.identifier.ifa"

    iget-object v2, p1, Lcom/mopub/common/privacy/AdvertisingId;->a:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "privacy.identifier.mopub"

    iget-object p1, p1, Lcom/mopub/common/privacy/AdvertisingId;->b:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final b(Landroid/content/Context;)Lcom/mopub/common/privacy/AdvertisingId;
    .locals 3

    invoke-static {p1}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "limit_ad_tracking"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v2, "advertising_id"

    invoke-static {p1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->a:Lcom/mopub/common/privacy/AdvertisingId;

    new-instance v2, Lcom/mopub/common/privacy/AdvertisingId;

    iget-object v1, v1, Lcom/mopub/common/privacy/AdvertisingId;->b:Ljava/lang/String;

    invoke-direct {v2, p1, v1, v0}, Lcom/mopub/common/privacy/AdvertisingId;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(Lcom/mopub/common/privacy/AdvertisingId;Lcom/mopub/common/privacy/AdvertisingId;)V
    .locals 1

    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->c:Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;->onIdChanged(Lcom/mopub/common/privacy/AdvertisingId;Lcom/mopub/common/privacy/AdvertisingId;)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    iget-boolean v0, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->d:Z

    new-instance v0, Lcom/mopub/common/privacy/MoPubIdentifier$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mopub/common/privacy/MoPubIdentifier$b;-><init>(Lcom/mopub/common/privacy/MoPubIdentifier;Lcom/mopub/common/privacy/MoPubIdentifier$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method public f()V
    .locals 5

    iget-object v0, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->a:Lcom/mopub/common/privacy/AdvertisingId;

    iget-object v1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/mopub/common/GpsHelper;->fetchAdvertisingInfoSync(Landroid/content/Context;)Lcom/mopub/common/GpsHelper$AdvertisingInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/mopub/common/GpsHelper$AdvertisingInfo;->advertisingId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/mopub/common/privacy/AdvertisingId;

    iget-object v3, v1, Lcom/mopub/common/GpsHelper$AdvertisingInfo;->advertisingId:Ljava/lang/String;

    iget-object v4, v0, Lcom/mopub/common/privacy/AdvertisingId;->b:Ljava/lang/String;

    iget-boolean v1, v1, Lcom/mopub/common/GpsHelper$AdvertisingInfo;->limitAdTracking:Z

    invoke-direct {v2, v3, v4, v1}, Lcom/mopub/common/privacy/AdvertisingId;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->b:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/mopub/common/privacy/MoPubIdentifier;->b(Landroid/content/Context;)Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    iget-object v1, v2, Lcom/mopub/common/privacy/AdvertisingId;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/mopub/common/privacy/AdvertisingId;->b:Ljava/lang/String;

    iget-boolean v2, v2, Lcom/mopub/common/privacy/AdvertisingId;->c:Z

    invoke-virtual {p0, v1, v0, v2}, Lcom/mopub/common/privacy/MoPubIdentifier;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->a:Lcom/mopub/common/privacy/AdvertisingId;

    invoke-virtual {p0, v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->h(Lcom/mopub/common/privacy/AdvertisingId;)V

    :goto_1
    return-void
.end method

.method public final declared-synchronized g()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->f:Lcom/mopub/common/SdkInitializationListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->f:Lcom/mopub/common/SdkInitializationListener;

    invoke-interface {v0}, Lcom/mopub/common/SdkInitializationListener;->onInitializationFinished()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;
    .locals 1

    iget-object v0, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->a:Lcom/mopub/common/privacy/AdvertisingId;

    invoke-virtual {p0}, Lcom/mopub/common/privacy/MoPubIdentifier;->e()V

    return-object v0
.end method

.method public h(Lcom/mopub/common/privacy/AdvertisingId;)V
    .locals 2

    iget-object v0, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->a:Lcom/mopub/common/privacy/AdvertisingId;

    iput-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->a:Lcom/mopub/common/privacy/AdvertisingId;

    iget-object v1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/mopub/common/privacy/MoPubIdentifier;->k(Landroid/content/Context;Lcom/mopub/common/privacy/AdvertisingId;)V

    iget-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->a:Lcom/mopub/common/privacy/AdvertisingId;

    iget-object p1, p1, Lcom/mopub/common/privacy/AdvertisingId;->a:Ljava/lang/String;

    const-string v1, "10ca1ad1abe1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->setLogLevel(Lcom/mopub/common/logging/MoPubLog$LogLevel;)V

    :cond_0
    iget-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->a:Lcom/mopub/common/privacy/AdvertisingId;

    invoke-virtual {p1, v0}, Lcom/mopub/common/privacy/AdvertisingId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->e:Z

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->a:Lcom/mopub/common/privacy/AdvertisingId;

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/privacy/MoPubIdentifier;->c(Lcom/mopub/common/privacy/AdvertisingId;Lcom/mopub/common/privacy/AdvertisingId;)V

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->e:Z

    invoke-virtual {p0}, Lcom/mopub/common/privacy/MoPubIdentifier;->g()V

    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/mopub/common/privacy/AdvertisingId;

    invoke-direct {v0, p1, p2, p3}, Lcom/mopub/common/privacy/AdvertisingId;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->h(Lcom/mopub/common/privacy/AdvertisingId;)V

    return-void
.end method

.method public j(Lcom/mopub/common/SdkInitializationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->f:Lcom/mopub/common/SdkInitializationListener;

    iget-boolean p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->e:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mopub/common/privacy/MoPubIdentifier;->g()V

    :cond_0
    return-void
.end method

.method public setIdChangeListener(Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->c:Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;

    return-void
.end method
