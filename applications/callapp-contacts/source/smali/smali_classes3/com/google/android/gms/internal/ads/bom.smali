.class public final Lcom/google/android/gms/internal/ads/bom;
.super Lcom/google/android/gms/internal/ads/bok;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bok;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlj()Lcom/google/android/gms/ads/internal/util/zzbl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbl;->zzaai()Landroid/os/Looper;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/sg;

    invoke-direct {v1, p1, v0, p0, p0}, Lcom/google/android/gms/internal/ads/sg;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/d$a;Lcom/google/android/gms/common/internal/d$b;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/bom;->f:Lcom/google/android/gms/internal/ads/sg;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzauj;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzauj;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bom;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/bom;->c:Z

    if-eqz v1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bom;->a:Lcom/google/android/gms/internal/ads/zp;

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/bom;->c:Z

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bom;->e:Lcom/google/android/gms/internal/ads/zzauj;

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bok;->f:Lcom/google/android/gms/internal/ads/sg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sg;->checkAvailabilityAndConnect()V

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bom;->a:Lcom/google/android/gms/internal/ads/zp;

    new-instance v1, Lcom/google/android/gms/internal/ads/bol;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bol;-><init>(Lcom/google/android/gms/internal/ads/bom;)V

    .line 13
    sget-object v2, Lcom/google/android/gms/internal/ads/zd;->f:Lcom/google/android/gms/internal/ads/dbs;

    .line 14
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zp;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bom;->a:Lcom/google/android/gms/internal/ads/zp;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a()V
    .locals 4

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bom;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 18
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/bom;->d:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 19
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/bom;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bom;->f:Lcom/google/android/gms/internal/ads/sg;

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/sg;->a()Lcom/google/android/gms/internal/ads/sj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bom;->e:Lcom/google/android/gms/internal/ads/zzauj;

    new-instance v3, Lcom/google/android/gms/internal/ads/boj;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/boj;-><init>(Lcom/google/android/gms/internal/ads/bok;)V

    .line 22
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/sj;->b(Lcom/google/android/gms/internal/ads/zzauj;Lcom/google/android/gms/internal/ads/sr;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 28
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v2

    const-string v3, "RemoteSignalsClientTask.onConnected"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/yd;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bom;->a:Lcom/google/android/gms/internal/ads/zp;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcpo;

    sget-object v3, Lcom/google/android/gms/internal/ads/cqj;->zzhov:Lcom/google/android/gms/internal/ads/cqj;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzcpo;-><init>(Lcom/google/android/gms/internal/ads/cqj;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zp;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 25
    :catch_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bom;->a:Lcom/google/android/gms/internal/ads/zp;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcpo;

    sget-object v3, Lcom/google/android/gms/internal/ads/cqj;->zzhov:Lcom/google/android/gms/internal/ads/cqj;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzcpo;-><init>(Lcom/google/android/gms/internal/ads/cqj;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zp;->setException(Ljava/lang/Throwable;)Z

    .line 30
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
