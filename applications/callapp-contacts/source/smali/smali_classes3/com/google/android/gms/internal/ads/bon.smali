.class public final Lcom/google/android/gms/internal/ads/bon;
.super Lcom/google/android/gms/internal/ads/bok;
.source "SourceFile"


# instance fields
.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bok;-><init>()V

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/bos;->a:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/bon;->h:I

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlj()Lcom/google/android/gms/ads/internal/util/zzbl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbl;->zzaai()Landroid/os/Looper;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/ads/sg;

    invoke-direct {v1, p1, v0, p0, p0}, Lcom/google/android/gms/internal/ads/sg;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/d$a;Lcom/google/android/gms/common/internal/d$b;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/bon;->f:Lcom/google/android/gms/internal/ads/sg;

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

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bon;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/bon;->h:I

    sget v2, Lcom/google/android/gms/internal/ads/bos;->a:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/ads/bon;->h:I

    sget v2, Lcom/google/android/gms/internal/ads/bos;->b:I

    if-eq v1, v2, :cond_0

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcpo;

    sget-object v1, Lcom/google/android/gms/internal/ads/cqj;->zzhow:Lcom/google/android/gms/internal/ads/cqj;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzcpo;-><init>(Lcom/google/android/gms/internal/ads/cqj;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 9
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/bon;->c:Z

    if-eqz v1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bon;->a:Lcom/google/android/gms/internal/ads/zp;

    monitor-exit v0

    return-object p1

    .line 11
    :cond_1
    sget v1, Lcom/google/android/gms/internal/ads/bos;->b:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/bon;->h:I

    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/bon;->c:Z

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bon;->e:Lcom/google/android/gms/internal/ads/zzauj;

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bok;->f:Lcom/google/android/gms/internal/ads/sg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sg;->checkAvailabilityAndConnect()V

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bon;->a:Lcom/google/android/gms/internal/ads/zp;

    new-instance v1, Lcom/google/android/gms/internal/ads/boq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/boq;-><init>(Lcom/google/android/gms/internal/ads/bon;)V

    .line 17
    sget-object v2, Lcom/google/android/gms/internal/ads/zd;->f:Lcom/google/android/gms/internal/ads/dbs;

    .line 18
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zp;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bon;->a:Lcom/google/android/gms/internal/ads/zp;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bon;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/bon;->h:I

    sget v2, Lcom/google/android/gms/internal/ads/bos;->a:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/ads/bon;->h:I

    sget v2, Lcom/google/android/gms/internal/ads/bos;->c:I

    if-eq v1, v2, :cond_0

    .line 23
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcpo;

    sget-object v1, Lcom/google/android/gms/internal/ads/cqj;->zzhow:Lcom/google/android/gms/internal/ads/cqj;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzcpo;-><init>(Lcom/google/android/gms/internal/ads/cqj;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 24
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/bon;->c:Z

    if-eqz v1, :cond_1

    .line 25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bon;->a:Lcom/google/android/gms/internal/ads/zp;

    monitor-exit v0

    return-object p1

    .line 26
    :cond_1
    sget v1, Lcom/google/android/gms/internal/ads/bos;->c:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/bon;->h:I

    const/4 v1, 0x1

    .line 27
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/bon;->c:Z

    .line 28
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bon;->g:Ljava/lang/String;

    .line 30
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bok;->f:Lcom/google/android/gms/internal/ads/sg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sg;->checkAvailabilityAndConnect()V

    .line 31
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bon;->a:Lcom/google/android/gms/internal/ads/zp;

    new-instance v1, Lcom/google/android/gms/internal/ads/bop;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bop;-><init>(Lcom/google/android/gms/internal/ads/bon;)V

    .line 32
    sget-object v2, Lcom/google/android/gms/internal/ads/zd;->f:Lcom/google/android/gms/internal/ads/dbs;

    .line 33
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zp;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 34
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bon;->a:Lcom/google/android/gms/internal/ads/zp;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a()V
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bon;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 40
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/bon;->d:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 41
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/bon;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    :try_start_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/bon;->h:I

    sget v2, Lcom/google/android/gms/internal/ads/bos;->b:I

    if-ne v1, v2, :cond_0

    .line 43
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bon;->f:Lcom/google/android/gms/internal/ads/sg;

    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/sg;->a()Lcom/google/android/gms/internal/ads/sj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bon;->e:Lcom/google/android/gms/internal/ads/zzauj;

    new-instance v3, Lcom/google/android/gms/internal/ads/boj;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/boj;-><init>(Lcom/google/android/gms/internal/ads/bok;)V

    .line 45
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/sj;->c(Lcom/google/android/gms/internal/ads/zzauj;Lcom/google/android/gms/internal/ads/sr;)V

    goto :goto_0

    .line 46
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/bon;->h:I

    sget v2, Lcom/google/android/gms/internal/ads/bos;->c:I

    if-ne v1, v2, :cond_1

    .line 47
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bon;->f:Lcom/google/android/gms/internal/ads/sg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/sg;->a()Lcom/google/android/gms/internal/ads/sj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bon;->g:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/boj;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/boj;-><init>(Lcom/google/android/gms/internal/ads/bok;)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/sj;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/sr;)V

    goto :goto_0

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bon;->a:Lcom/google/android/gms/internal/ads/zp;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcpo;

    sget-object v3, Lcom/google/android/gms/internal/ads/cqj;->zzhov:Lcom/google/android/gms/internal/ads/cqj;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzcpo;-><init>(Lcom/google/android/gms/internal/ads/cqj;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zp;->setException(Ljava/lang/Throwable;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 54
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v2

    const-string v3, "RemoteUrlAndCacheKeyClientTask.onConnected"

    .line 55
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/yd;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bon;->a:Lcom/google/android/gms/internal/ads/zp;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcpo;

    sget-object v3, Lcom/google/android/gms/internal/ads/cqj;->zzhov:Lcom/google/android/gms/internal/ads/cqj;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzcpo;-><init>(Lcom/google/android/gms/internal/ads/cqj;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zp;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 51
    :catch_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bon;->a:Lcom/google/android/gms/internal/ads/zp;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcpo;

    sget-object v3, Lcom/google/android/gms/internal/ads/cqj;->zzhov:Lcom/google/android/gms/internal/ads/cqj;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzcpo;-><init>(Lcom/google/android/gms/internal/ads/cqj;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zp;->setException(Ljava/lang/Throwable;)Z

    .line 57
    :cond_2
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

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bon;->a:Lcom/google/android/gms/internal/ads/zp;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcpo;

    sget-object v1, Lcom/google/android/gms/internal/ads/cqj;->zzhov:Lcom/google/android/gms/internal/ads/cqj;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcpo;-><init>(Lcom/google/android/gms/internal/ads/cqj;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zp;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method
