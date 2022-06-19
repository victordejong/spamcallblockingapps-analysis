.class public final Lcom/google/android/gms/internal/ads/bte;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/app;
.implements Lcom/google/android/gms/internal/ads/apv;
.implements Lcom/google/android/gms/internal/ads/aqi;
.implements Lcom/google/android/gms/internal/ads/arg;
.implements Lcom/google/android/gms/internal/ads/dxs;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/dza;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bte;->a:Lcom/google/android/gms/internal/ads/dza;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 27
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bte;->a:Lcom/google/android/gms/internal/ads/dza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dza;->c()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    :try_start_2
    const-string/jumbo v1, "Remote Exception at onAdLoaded."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .locals 2

    .prologue
    .line 11
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bte;->a:Lcom/google/android/gms/internal/ads/dza;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 12
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bte;->a:Lcom/google/android/gms/internal/ads/dza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/dza;->a(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 14
    :catch_0
    move-exception v0

    .line 15
    :try_start_2
    const-string/jumbo v1, "Remote Exception at onAdFailedToLoad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/dza;)V
    .locals 1

    .prologue
    .line 2
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bte;->a:Lcom/google/android/gms/internal/ads/dza;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/qr;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bte;->a:Lcom/google/android/gms/internal/ads/dza;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 45
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bte;->a:Lcom/google/android/gms/internal/ads/dza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dza;->f()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    :try_start_2
    const-string/jumbo v1, "Remote Exception at onAdImpression."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 2

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bte;->a:Lcom/google/android/gms/internal/ads/dza;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 33
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bte;->a:Lcom/google/android/gms/internal/ads/dza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dza;->d()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    :try_start_2
    const-string/jumbo v1, "Remote Exception at onAdOpened."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 2

    .prologue
    .line 5
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bte;->a:Lcom/google/android/gms/internal/ads/dza;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 6
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bte;->a:Lcom/google/android/gms/internal/ads/dza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dza;->a()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 8
    :catch_0
    move-exception v0

    .line 9
    :try_start_2
    const-string/jumbo v1, "Remote Exception at onAdClosed."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 5
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 2

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bte;->a:Lcom/google/android/gms/internal/ads/dza;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 39
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bte;->a:Lcom/google/android/gms/internal/ads/dza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dza;->e()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    :try_start_2
    const-string/jumbo v1, "Remote Exception at onAdClicked."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()V
    .locals 2

    .prologue
    .line 17
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bte;->a:Lcom/google/android/gms/internal/ads/dza;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 18
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bte;->a:Lcom/google/android/gms/internal/ads/dza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dza;->b()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 21
    :try_start_2
    const-string/jumbo v1, "Remote Exception at onAdLeftApplication."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public final declared-synchronized i()Lcom/google/android/gms/internal/ads/dza;
    .locals 1

    .prologue
    .line 4
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bte;->a:Lcom/google/android/gms/internal/ads/dza;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
