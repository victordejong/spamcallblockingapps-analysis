.class public final Lcom/google/android/gms/internal/ads/boh;
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

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/boh;->f:Lcom/google/android/gms/internal/ads/sg;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/boh;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/boh;->c:Z

    if-eqz v1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/boh;->a:Lcom/google/android/gms/internal/ads/zp;

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/boh;->c:Z

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/boh;->e:Lcom/google/android/gms/internal/ads/zzauj;

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bok;->f:Lcom/google/android/gms/internal/ads/sg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sg;->checkAvailabilityAndConnect()V

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/boh;->a:Lcom/google/android/gms/internal/ads/zp;

    new-instance v1, Lcom/google/android/gms/internal/ads/bog;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bog;-><init>(Lcom/google/android/gms/internal/ads/boh;)V

    .line 13
    sget-object v2, Lcom/google/android/gms/internal/ads/zd;->f:Lcom/google/android/gms/internal/ads/dbs;

    .line 14
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zp;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/boh;->a:Lcom/google/android/gms/internal/ads/zp;

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

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/boh;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 21
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/boh;->d:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 22
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/boh;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/boh;->f:Lcom/google/android/gms/internal/ads/sg;

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/sg;->a()Lcom/google/android/gms/internal/ads/sj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/boh;->e:Lcom/google/android/gms/internal/ads/zzauj;

    new-instance v3, Lcom/google/android/gms/internal/ads/boj;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/boj;-><init>(Lcom/google/android/gms/internal/ads/bok;)V

    .line 25
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/sj;->a(Lcom/google/android/gms/internal/ads/zzauj;Lcom/google/android/gms/internal/ads/sr;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 31
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v2

    const-string v3, "RemoteAdRequestClientTask.onConnected"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/yd;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/boh;->a:Lcom/google/android/gms/internal/ads/zp;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcpo;

    sget-object v3, Lcom/google/android/gms/internal/ads/cqj;->zzhov:Lcom/google/android/gms/internal/ads/cqj;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzcpo;-><init>(Lcom/google/android/gms/internal/ads/cqj;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zp;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 28
    :catch_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/boh;->a:Lcom/google/android/gms/internal/ads/zp;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcpo;

    sget-object v3, Lcom/google/android/gms/internal/ads/cqj;->zzhov:Lcom/google/android/gms/internal/ads/cqj;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzcpo;-><init>(Lcom/google/android/gms/internal/ads/cqj;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zp;->setException(Ljava/lang/Throwable;)Z

    .line 33
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

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    const-string p1, "Cannot connect to remote service, fallback to local instance."

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/boh;->a:Lcom/google/android/gms/internal/ads/zp;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcpo;

    sget-object v1, Lcom/google/android/gms/internal/ads/cqj;->zzhov:Lcom/google/android/gms/internal/ads/cqj;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcpo;-><init>(Lcom/google/android/gms/internal/ads/cqj;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zp;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method
