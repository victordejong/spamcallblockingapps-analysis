.class public Lcom/mopub/common/privacy/MoPubIdentifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/privacy/MoPubIdentifier$a;,
        Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;
    }
.end annotation


# instance fields
.field a:Lcom/mopub/common/privacy/AdvertisingId;

.field final b:Landroid/content/Context;

.field c:Z

.field volatile d:Lcom/mopub/common/SdkInitializationListener;

.field private e:Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/mopub/common/privacy/MoPubIdentifier;-><init>(Landroid/content/Context;Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 64
    iput-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->b:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->e:Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;

    .line 66
    invoke-static {p1}, Lcom/mopub/common/privacy/MoPubIdentifier;->a(Landroid/content/Context;)Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->a:Lcom/mopub/common/privacy/AdvertisingId;

    if-nez p1, :cond_0

    .line 68
    invoke-static {}, Lcom/mopub/common/privacy/AdvertisingId;->a()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->a:Lcom/mopub/common/privacy/AdvertisingId;

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/mopub/common/privacy/MoPubIdentifier;->b()V

    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;)Lcom/mopub/common/privacy/AdvertisingId;
    .locals 5

    const-class v0, Lcom/mopub/common/privacy/MoPubIdentifier;

    monitor-enter v0

    .line 115
    :try_start_0
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    const-string v2, "com.mopub.settings.identifier"

    .line 118
    invoke-static {p0, v2}, Lcom/mopub/common/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v2, "privacy.identifier.ifa"

    const-string v3, ""

    .line 119
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "privacy.identifier.mopub"

    const-string v4, ""

    .line 120
    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "privacy.limit.ad.tracking"

    .line 121
    invoke-interface {p0, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 122
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 123
    new-instance v4, Lcom/mopub/common/privacy/AdvertisingId;

    invoke-direct {v4, v2, v3, p0}, Lcom/mopub/common/privacy/AdvertisingId;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v4

    .line 126
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

    .line 128
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized a(Landroid/content/Context;Lcom/mopub/common/privacy/AdvertisingId;)V
    .locals 3

    const-class v0, Lcom/mopub/common/privacy/MoPubIdentifier;

    monitor-enter v0

    .line 132
    :try_start_0
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 133
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "com.mopub.settings.identifier"

    .line 135
    invoke-static {p0, v1}, Lcom/mopub/common/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 136
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "privacy.limit.ad.tracking"

    .line 137
    iget-boolean v2, p1, Lcom/mopub/common/privacy/AdvertisingId;->c:Z

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "privacy.identifier.ifa"

    .line 138
    iget-object v2, p1, Lcom/mopub/common/privacy/AdvertisingId;->a:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "privacy.identifier.mopub"

    .line 139
    iget-object p1, p1, Lcom/mopub/common/privacy/AdvertisingId;->b:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/mopub/common/privacy/MoPubIdentifier;)Z
    .locals 1

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->f:Z

    return v0
.end method

.method private b()V
    .locals 2

    .line 87
    iget-boolean v0, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->f:Z

    .line 91
    new-instance v0, Lcom/mopub/common/privacy/MoPubIdentifier$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mopub/common/privacy/MoPubIdentifier$a;-><init>(Lcom/mopub/common/privacy/MoPubIdentifier;Lcom/mopub/common/privacy/MoPubIdentifier$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->d:Lcom/mopub/common/SdkInitializationListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 198
    iput-object v1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->d:Lcom/mopub/common/SdkInitializationListener;

    .line 199
    invoke-interface {v0}, Lcom/mopub/common/SdkInitializationListener;->onInitializationFinished()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lcom/mopub/common/privacy/AdvertisingId;)V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->a:Lcom/mopub/common/privacy/AdvertisingId;

    .line 165
    iput-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->a:Lcom/mopub/common/privacy/AdvertisingId;

    .line 166
    iget-object v1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/mopub/common/privacy/MoPubIdentifier;->a(Landroid/content/Context;Lcom/mopub/common/privacy/AdvertisingId;)V

    .line 168
    iget-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->a:Lcom/mopub/common/privacy/AdvertisingId;

    iget-object p1, p1, Lcom/mopub/common/privacy/AdvertisingId;->a:Ljava/lang/String;

    const-string v1, "10ca1ad1abe1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 169
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->setLogLevel(Lcom/mopub/common/logging/MoPubLog$LogLevel;)V

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->a:Lcom/mopub/common/privacy/AdvertisingId;

    invoke-virtual {p1, v0}, Lcom/mopub/common/privacy/AdvertisingId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->c:Z

    if-nez p1, :cond_2

    .line 173
    :cond_1
    iget-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->a:Lcom/mopub/common/privacy/AdvertisingId;

    .line 1204
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 1206
    iget-object v1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->e:Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;

    if-eqz v1, :cond_2

    .line 1207
    invoke-interface {v1, v0, p1}, Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;->onIdChanged(Lcom/mopub/common/privacy/AdvertisingId;Lcom/mopub/common/privacy/AdvertisingId;)V

    :cond_2
    const/4 p1, 0x1

    .line 175
    iput-boolean p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->c:Z

    .line 177
    invoke-virtual {p0}, Lcom/mopub/common/privacy/MoPubIdentifier;->a()V

    return-void
.end method

.method public getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->a:Lcom/mopub/common/privacy/AdvertisingId;

    .line 82
    invoke-direct {p0}, Lcom/mopub/common/privacy/MoPubIdentifier;->b()V

    return-object v0
.end method

.method public setIdChangeListener(Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/mopub/common/privacy/MoPubIdentifier;->e:Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;

    return-void
.end method
