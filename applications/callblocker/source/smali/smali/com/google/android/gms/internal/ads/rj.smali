.class public final Lcom/google/android/gms/internal/ads/rj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/reward/c;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/qy;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/Object;

.field private final d:Lcom/google/android/gms/internal/ads/ri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/qy;)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rj;->c:Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/ri;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ri;-><init>(Lcom/google/android/gms/ads/reward/d;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rj;->d:Lcom/google/android/gms/internal/ads/ri;

    .line 4
    if-nez p2, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/ads/ecf;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/ecf;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rj;->a:Lcom/google/android/gms/internal/ads/qy;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rj;->b:Landroid/content/Context;

    .line 6
    return-void
.end method

.method private final a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/ebi;)V
    .locals 3

    .prologue
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rj;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rj;->a:Lcom/google/android/gms/internal/ads/qy;

    if-nez v0, :cond_0

    .line 9
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :goto_0
    return-void

    .line 10
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rj;->a:Lcom/google/android/gms/internal/ads/qy;

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rj;->b:Landroid/content/Context;

    .line 12
    invoke-static {v2, p2, p1}, Lcom/google/android/gms/internal/ads/dyb;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ebi;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/rh;

    move-result-object v2

    .line 13
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/qy;->a(Lcom/google/android/gms/internal/ads/rh;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    :try_start_3
    const-string/jumbo v2, "#007 Could not call remote method."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/reward/d;)V
    .locals 3

    .prologue
    .line 30
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rj;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rj;->d:Lcom/google/android/gms/internal/ads/ri;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ri;->a(Lcom/google/android/gms/ads/reward/d;)V

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rj;->a:Lcom/google/android/gms/internal/ads/qy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 33
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rj;->a:Lcom/google/android/gms/internal/ads/qy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rj;->d:Lcom/google/android/gms/internal/ads/ri;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/qy;->a(Lcom/google/android/gms/internal/ads/rb;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    const-string/jumbo v2, "#007 Could not call remote method."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/ads/d;)V
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p2}, Lcom/google/android/gms/ads/d;->a()Lcom/google/android/gms/internal/ads/ebi;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/rj;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/ebi;)V

    .line 19
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 60
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rj;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rj;->a:Lcom/google/android/gms/internal/ads/qy;

    if-nez v1, :cond_0

    .line 62
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :goto_0
    return v0

    .line 63
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rj;->a:Lcom/google/android/gms/internal/ads/qy;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/qy;->b()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :try_start_2
    monitor-exit v2

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    :try_start_3
    const-string/jumbo v3, "#007 Could not call remote method."

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rj;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rj;->a:Lcom/google/android/gms/internal/ads/qy;

    if-nez v0, :cond_0

    .line 24
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :goto_0
    return-void

    .line 25
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rj;->a:Lcom/google/android/gms/internal/ads/qy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qy;->a()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    :try_start_3
    const-string/jumbo v2, "#007 Could not call remote method."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
