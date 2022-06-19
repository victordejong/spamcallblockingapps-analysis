.class public final Lcom/google/android/gms/internal/ads/dw0;
.super Lcom/google/android/gms/internal/ads/wv0;
.source ""


# instance fields
.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/wv0;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dw0;->h:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->r()Lcom/google/android/gms/ads/internal/util/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/i0;->a()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/xi;

    invoke-direct {v1, p1, v0, p0, p0}, Lcom/google/android/gms/internal/ads/xi;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/b$a;Lcom/google/android/gms/common/internal/b$b;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/wv0;->f:Lcom/google/android/gms/internal/ads/xi;

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    const-string p1, "Cannot connect to remote service, fallback to local instance."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wv0;->a:Lcom/google/android/gms/internal/ads/fp;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcsk;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcsk;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/fp;->d(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wv0;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/wv0;->d:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/wv0;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/dw0;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wv0;->f:Lcom/google/android/gms/internal/ads/xi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/xi;->W()Lcom/google/android/gms/internal/ads/cj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wv0;->e:Lcom/google/android/gms/internal/ads/zzawc;

    new-instance v3, Lcom/google/android/gms/internal/ads/vv0;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/vv0;-><init>(Lcom/google/android/gms/internal/ads/wv0;)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/cj;->K2(Lcom/google/android/gms/internal/ads/zzawc;Lcom/google/android/gms/internal/ads/gj;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wv0;->f:Lcom/google/android/gms/internal/ads/xi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/xi;->W()Lcom/google/android/gms/internal/ads/cj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dw0;->g:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/vv0;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/vv0;-><init>(Lcom/google/android/gms/internal/ads/wv0;)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/cj;->R2(Ljava/lang/String;Lcom/google/android/gms/internal/ads/gj;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wv0;->a:Lcom/google/android/gms/internal/ads/fp;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcsk;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzcsk;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/fp;->d(Ljava/lang/Throwable;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->h()Lcom/google/android/gms/internal/ads/zn;

    move-result-object v2

    const-string v3, "RemoteUrlAndCacheKeyClientTask.onConnected"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zn;->g(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wv0;->a:Lcom/google/android/gms/internal/ads/fp;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcsk;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzcsk;-><init>(I)V

    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/fp;->d(Ljava/lang/Throwable;)Z

    goto :goto_1

    :catch_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wv0;->a:Lcom/google/android/gms/internal/ads/fp;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcsk;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzcsk;-><init>(I)V

    goto :goto_0

    :cond_2
    :goto_1
    monitor-exit p1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzawc;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzawc;",
            ")",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wv0;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/dw0;->h:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v2, :cond_0

    if-eq v1, v3, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcsk;

    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/ads/zzcsk;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/kz1;->b(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/wv0;->c:Z

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wv0;->a:Lcom/google/android/gms/internal/ads/fp;

    monitor-exit v0

    return-object p1

    :cond_1
    iput v3, p0, Lcom/google/android/gms/internal/ads/dw0;->h:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/wv0;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wv0;->e:Lcom/google/android/gms/internal/ads/zzawc;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wv0;->f:Lcom/google/android/gms/internal/ads/xi;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/b;->a()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wv0;->a:Lcom/google/android/gms/internal/ads/fp;

    new-instance v1, Lcom/google/android/gms/internal/ads/bw0;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bw0;-><init>(Lcom/google/android/gms/internal/ads/dw0;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zo;->f:Lcom/google/android/gms/internal/ads/sz1;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/fp;->e(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wv0;->a:Lcom/google/android/gms/internal/ads/fp;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final f(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wv0;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/dw0;->h:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcsk;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzcsk;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/kz1;->b(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/wv0;->c:Z

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wv0;->a:Lcom/google/android/gms/internal/ads/fp;

    monitor-exit v0

    return-object p1

    :cond_1
    iput v2, p0, Lcom/google/android/gms/internal/ads/dw0;->h:I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/wv0;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dw0;->g:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wv0;->f:Lcom/google/android/gms/internal/ads/xi;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/b;->a()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wv0;->a:Lcom/google/android/gms/internal/ads/fp;

    new-instance v1, Lcom/google/android/gms/internal/ads/cw0;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/cw0;-><init>(Lcom/google/android/gms/internal/ads/dw0;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zo;->f:Lcom/google/android/gms/internal/ads/sz1;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/fp;->e(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wv0;->a:Lcom/google/android/gms/internal/ads/fp;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
