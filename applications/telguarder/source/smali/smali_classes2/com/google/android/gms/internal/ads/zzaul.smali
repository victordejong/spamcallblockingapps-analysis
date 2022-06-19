.class public final Lcom/google/android/gms/internal/ads/zzaul;
.super Landroid/content/ContextWrapper;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# direct methods
.method public static zzx(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 6
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzaul;

    if-eqz v0, :cond_0

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/ads/zzaul;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaul;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method public final declared-synchronized getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getPackageName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 3
    :try_start_0
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getPackageResourcePath()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 4
    :try_start_0
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized startActivity(Landroid/content/Intent;)V
    .locals 0

    monitor-enter p0

    .line 5
    :try_start_0
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
