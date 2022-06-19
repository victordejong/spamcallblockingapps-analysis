.class public final Lcom/google/android/gms/internal/ads/eex;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Object;

.field b:Lcom/google/android/gms/internal/ads/efa;

.field c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eex;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eex;->b:Lcom/google/android/gms/internal/ads/efa;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/eex;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eex;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eex;->b:Lcom/google/android/gms/internal/ads/efa;

    if-eqz v1, :cond_0

    .line 1025
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/efa;->a:Landroid/app/Activity;

    .line 32
    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 33
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/efc;)V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eex;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eex;->b:Lcom/google/android/gms/internal/ads/efa;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/google/android/gms/internal/ads/efa;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/efa;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/eex;->b:Lcom/google/android/gms/internal/ads/efa;

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eex;->b:Lcom/google/android/gms/internal/ads/efa;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/efa;->a(Lcom/google/android/gms/internal/ads/efc;)V

    .line 24
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b()Landroid/content/Context;
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eex;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eex;->b:Lcom/google/android/gms/internal/ads/efa;

    if-eqz v1, :cond_0

    .line 1026
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/efa;->b:Landroid/content/Context;

    .line 37
    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 38
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/efc;)V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eex;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eex;->b:Lcom/google/android/gms/internal/ads/efa;

    if-nez v1, :cond_0

    .line 27
    monitor-exit v0

    return-void

    .line 28
    :cond_0
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/efa;->b(Lcom/google/android/gms/internal/ads/efc;)V

    .line 29
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
