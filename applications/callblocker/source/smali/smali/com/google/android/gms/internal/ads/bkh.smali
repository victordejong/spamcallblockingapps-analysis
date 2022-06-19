.class public final Lcom/google/android/gms/internal/ads/bkh;
.super Lcom/google/android/gms/internal/ads/bke;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bke;-><init>()V

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/bkn;->a:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/bkh;->h:I

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->q()Lcom/google/android/gms/internal/ads/xc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xc;->a()Landroid/os/Looper;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/ads/pd;

    invoke-direct {v1, p1, v0, p0, p0}, Lcom/google/android/gms/internal/ads/pd;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/c$a;Lcom/google/android/gms/common/internal/c$b;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/bkh;->f:Lcom/google/android/gms/internal/ads/pd;

    .line 5
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/pw;)Lcom/google/android/gms/internal/ads/crt;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/pw;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bkh;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 7
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/bkh;->h:I

    sget v2, Lcom/google/android/gms/internal/ads/bkn;->a:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/bkh;->h:I

    sget v2, Lcom/google/android/gms/internal/ads/bkn;->b:I

    if-eq v0, v2, :cond_0

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzclc;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzclc;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    monitor-exit v1

    .line 19
    :goto_0
    return-object v0

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bkh;->c:Z

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkh;->a:Lcom/google/android/gms/internal/ads/yo;

    monitor-exit v1

    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 11
    :cond_1
    :try_start_1
    sget v0, Lcom/google/android/gms/internal/ads/bkn;->b:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/bkh;->h:I

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bkh;->c:Z

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bkh;->e:Lcom/google/android/gms/internal/ads/pw;

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bke;->f:Lcom/google/android/gms/internal/ads/pd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pd;->o()V

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkh;->a:Lcom/google/android/gms/internal/ads/yo;

    new-instance v2, Lcom/google/android/gms/internal/ads/bkk;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/bkk;-><init>(Lcom/google/android/gms/internal/ads/bkh;)V

    .line 17
    sget-object v3, Lcom/google/android/gms/internal/ads/yg;->f:Lcom/google/android/gms/internal/ads/crs;

    .line 18
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/yo;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkh;->a:Lcom/google/android/gms/internal/ads/yo;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/crt;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bkh;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/bkh;->h:I

    sget v2, Lcom/google/android/gms/internal/ads/bkn;->a:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/bkh;->h:I

    sget v2, Lcom/google/android/gms/internal/ads/bkn;->c:I

    if-eq v0, v2, :cond_0

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/zzclc;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzclc;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    monitor-exit v1

    .line 34
    :goto_0
    return-object v0

    .line 24
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bkh;->c:Z

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkh;->a:Lcom/google/android/gms/internal/ads/yo;

    monitor-exit v1

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 26
    :cond_1
    :try_start_1
    sget v0, Lcom/google/android/gms/internal/ads/bkn;->c:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/bkh;->h:I

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bkh;->c:Z

    .line 28
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bkh;->g:Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bke;->f:Lcom/google/android/gms/internal/ads/pd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pd;->o()V

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkh;->a:Lcom/google/android/gms/internal/ads/yo;

    new-instance v2, Lcom/google/android/gms/internal/ads/bkj;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/bkj;-><init>(Lcom/google/android/gms/internal/ads/bkh;)V

    .line 32
    sget-object v3, Lcom/google/android/gms/internal/ads/yg;->f:Lcom/google/android/gms/internal/ads/crs;

    .line 33
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/yo;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkh;->a:Lcom/google/android/gms/internal/ads/yo;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 39
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bkh;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 40
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bkh;->d:Z

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bkh;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/bkh;->h:I

    sget v2, Lcom/google/android/gms/internal/ads/bkn;->b:I

    if-ne v0, v2, :cond_1

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkh;->f:Lcom/google/android/gms/internal/ads/pd;

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pd;->c()Lcom/google/android/gms/internal/ads/pn;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bkh;->e:Lcom/google/android/gms/internal/ads/pw;

    new-instance v3, Lcom/google/android/gms/internal/ads/bkd;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/bkd;-><init>(Lcom/google/android/gms/internal/ads/bke;)V

    .line 45
    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/pn;->c(Lcom/google/android/gms/internal/ads/pw;Lcom/google/android/gms/internal/ads/pq;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 46
    :cond_1
    :try_start_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/bkh;->h:I

    sget v2, Lcom/google/android/gms/internal/ads/bkn;->c:I

    if-ne v0, v2, :cond_2

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkh;->f:Lcom/google/android/gms/internal/ads/pd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pd;->c()Lcom/google/android/gms/internal/ads/pn;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bkh;->g:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/bkd;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/bkd;-><init>(Lcom/google/android/gms/internal/ads/bke;)V

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/pn;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/pq;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkh;->a:Lcom/google/android/gms/internal/ads/yo;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzclc;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzclc;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/yo;->a(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 48
    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkh;->a:Lcom/google/android/gms/internal/ads/yo;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzclc;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzclc;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/yo;->a(Ljava/lang/Throwable;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 51
    :catch_1
    move-exception v0

    goto :goto_1

    .line 53
    :catch_2
    move-exception v0

    .line 54
    :try_start_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v2

    const-string/jumbo v3, "RemoteUrlAndCacheKeyClientTask.onConnected"

    .line 55
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/ug;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkh;->a:Lcom/google/android/gms/internal/ads/yo;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzclc;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzclc;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/yo;->a(Ljava/lang/Throwable;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/b;)V
    .locals 3

    .prologue
    .line 36
    const-string/jumbo v0, "Cannot connect to remote service, fallback to local instance."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkh;->a:Lcom/google/android/gms/internal/ads/yo;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzclc;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzclc;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yo;->a(Ljava/lang/Throwable;)Z

    .line 38
    return-void
.end method
