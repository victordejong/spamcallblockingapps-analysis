.class public Lcom/google/firebase/perf/config/DeviceCacheManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final PREFS_NAME:Ljava/lang/String; = "FirebasePerfSharedPrefs"

.field private static instance:Lcom/google/firebase/perf/config/DeviceCacheManager;

.field private static final logger:Lcom/google/firebase/perf/logging/AndroidLogger;


# instance fields
.field private sharedPref:Landroid/content/SharedPreferences;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/perf/logging/AndroidLogger;->getInstance()Lcom/google/firebase/perf/logging/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/config/DeviceCacheManager;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearInstance()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/firebase/perf/config/DeviceCacheManager;->instance:Lcom/google/firebase/perf/config/DeviceCacheManager;

    return-void
.end method

.method private getFirebaseApplicationContext()Landroid/content/Context;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/google/firebase/perf/config/DeviceCacheManager;
    .locals 2

    const-class v0, Lcom/google/firebase/perf/config/DeviceCacheManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/config/DeviceCacheManager;->instance:Lcom/google/firebase/perf/config/DeviceCacheManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/firebase/perf/config/DeviceCacheManager;

    invoke-direct {v1}, Lcom/google/firebase/perf/config/DeviceCacheManager;-><init>()V

    sput-object v1, Lcom/google/firebase/perf/config/DeviceCacheManager;->instance:Lcom/google/firebase/perf/config/DeviceCacheManager;

    :cond_0
    sget-object v1, Lcom/google/firebase/perf/config/DeviceCacheManager;->instance:Lcom/google/firebase/perf/config/DeviceCacheManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public clear(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/firebase/perf/config/DeviceCacheManager;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Key is null. Cannot clear nullable key"

    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/config/DeviceCacheManager;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/config/DeviceCacheManager;->sharedPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getBoolean(Ljava/lang/String;)Lcom/google/firebase/perf/util/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/firebase/perf/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/firebase/perf/config/DeviceCacheManager;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Key is null when getting boolean value on device cache."

    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, Lcom/google/firebase/perf/util/Optional;->empty()Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/firebase/perf/config/DeviceCacheManager;->sharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/google/firebase/perf/config/DeviceCacheManager;->getFirebaseApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/firebase/perf/config/DeviceCacheManager;->setContext(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/firebase/perf/config/DeviceCacheManager;->sharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/google/firebase/perf/util/Optional;->empty()Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/google/firebase/perf/config/DeviceCacheManager;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/google/firebase/perf/util/Optional;->empty()Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/perf/config/DeviceCacheManager;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/perf/util/Optional;->of(Ljava/lang/Object;)Lcom/google/firebase/perf/util/Optional;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/google/firebase/perf/config/DeviceCacheManager;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    const/4 p1, 0x1

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, p1

    const-string p1, "Key %s from sharedPreferences has type other than long: %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v0}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;)Lcom/google/firebase/perf/util/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/firebase/perf/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/firebase/perf/config/DeviceCacheManager;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Key is null when getting float value on device cache."

    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, Lcom/google/firebase/perf/util/Optional;->empty()Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/firebase/perf/config/DeviceCacheManager;->sharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/google/firebase/perf/config/DeviceCacheManager;->getFirebaseApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/firebase/perf/config/DeviceCacheManager;->setContext(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/firebase/perf/config/DeviceCacheManager;->sharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/google/firebase/perf/util/Optional;->empty()Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/google/firebase/perf/config/DeviceCacheManager;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/google/firebase/perf/util/Optional;->empty()Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/perf/config/DeviceCacheManager;->sharedPref:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/perf/util/Optional;->of(Ljava/lang/Object;)Lcom/google/firebase/perf/util/Optional;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/google/firebase/perf/config/DeviceCacheManager;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    const/4 p1, 0x1

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, p1

    const-string p1, "Key %s from sharedPreferences has type other than float: %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v0}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)Lcom/google/firebase/perf/util/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/firebase/perf/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/firebase/perf/config/DeviceCacheManager;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Key is null when getting long value on device cache."

    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, Lcom/google/firebase/perf/util/Optional;->empty()Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/firebase/perf/config/DeviceCacheManager;->sharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/google/firebase/perf/config/DeviceCacheManager;->getFirebaseApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/firebase/perf/config/DeviceCacheManager;->setContext(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/firebase/perf/config/DeviceCacheManager;->sharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/google/firebase/perf/util/Optional;->empty()Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/google/firebase/perf/config/DeviceCacheManager;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/google/firebase/perf/util/Optional;->empty()Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/perf/config/DeviceCacheManager;->sharedPref:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    invoke-interface {v1, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/perf/util/Optional;->of(Ljava/lang/Object;)Lcom/google/firebase/perf/util/Optional;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/google/firebase/perf/config/DeviceCacheManager;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    const/4 p1, 0x1

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, p1

    const-string p1, "Key %s from sharedPreferences has type other than long: %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v0}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Lcom/google/firebase/perf/util/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/firebase/perf/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/firebase/perf/config/DeviceCacheManager;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Key is null when getting String value on device cache."

    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, Lcom/google/firebase/perf/util/Optional;->empty()Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/firebase/perf/config/DeviceCacheManager;->sharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/google/firebase/perf/config/DeviceCacheManager;->getFirebaseApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/firebase/perf/config/DeviceCacheManager;->setContext(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/firebase/perf/config/DeviceCacheManager;->sharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/google/firebase/perf/util/Optional;->empty()Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/google/firebase/perf/config/DeviceCacheManager;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/google/firebase/perf/util/Optional;->empty()Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/perf/config/DeviceCacheManager;->sharedPref:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/perf/util/Optional;->of(Ljava/lang/Object;)Lcom/google/firebase/perf/util/Optional;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/google/firebase/perf/config/DeviceCacheManager;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    const/4 p1, 0x1

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, p1

    const-string p1, "Key %s from sharedPreferences has type other than String: %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v0}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public declared-synchronized setContext(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/config/DeviceCacheManager;->sharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "FirebasePerfSharedPrefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/config/DeviceCacheManager;->sharedPref:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setValue(Ljava/lang/String;F)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/firebase/perf/config/DeviceCacheManager;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v1, "Key is null when setting float value on device cache."

    invoke-virtual {p1, v1, p2}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/firebase/perf/config/DeviceCacheManager;->sharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/google/firebase/perf/config/DeviceCacheManager;->getFirebaseApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/firebase/perf/config/DeviceCacheManager;->setContext(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/firebase/perf/config/DeviceCacheManager;->sharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/config/DeviceCacheManager;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1
.end method

.method public setValue(Ljava/lang/String;J)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/firebase/perf/config/DeviceCacheManager;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "Key is null when setting long value on device cache."

    invoke-virtual {p1, p3, p2}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/firebase/perf/config/DeviceCacheManager;->sharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/google/firebase/perf/config/DeviceCacheManager;->getFirebaseApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/firebase/perf/config/DeviceCacheManager;->setContext(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/firebase/perf/config/DeviceCacheManager;->sharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/config/DeviceCacheManager;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/firebase/perf/config/DeviceCacheManager;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v1, "Key is null when setting String value on device cache."

    invoke-virtual {p1, v1, p2}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/firebase/perf/config/DeviceCacheManager;->sharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/google/firebase/perf/config/DeviceCacheManager;->getFirebaseApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/firebase/perf/config/DeviceCacheManager;->setContext(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/firebase/perf/config/DeviceCacheManager;->sharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x1

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/google/firebase/perf/config/DeviceCacheManager;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v0

    :cond_2
    iget-object v1, p0, Lcom/google/firebase/perf/config/DeviceCacheManager;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v0
.end method

.method public setValue(Ljava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/firebase/perf/config/DeviceCacheManager;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v1, "Key is null when setting boolean value on device cache."

    invoke-virtual {p1, v1, p2}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/firebase/perf/config/DeviceCacheManager;->sharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/google/firebase/perf/config/DeviceCacheManager;->getFirebaseApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/firebase/perf/config/DeviceCacheManager;->setContext(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/firebase/perf/config/DeviceCacheManager;->sharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/config/DeviceCacheManager;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1
.end method
