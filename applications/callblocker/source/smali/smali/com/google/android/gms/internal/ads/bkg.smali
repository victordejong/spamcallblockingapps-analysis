.class public final Lcom/google/android/gms/internal/ads/bkg;
.super Lcom/google/android/gms/internal/ads/bke;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bke;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->q()Lcom/google/android/gms/internal/ads/xc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xc;->a()Landroid/os/Looper;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/pd;

    invoke-direct {v1, p1, v0, p0, p0}, Lcom/google/android/gms/internal/ads/pd;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/c$a;Lcom/google/android/gms/common/internal/c$b;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/bkg;->f:Lcom/google/android/gms/internal/ads/pd;

    .line 4
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
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bkg;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 6
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bkg;->c:Z

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkg;->a:Lcom/google/android/gms/internal/ads/yo;

    monitor-exit v1

    .line 15
    :goto_0
    return-object v0

    .line 8
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bkg;->c:Z

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bkg;->e:Lcom/google/android/gms/internal/ads/pw;

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bke;->f:Lcom/google/android/gms/internal/ads/pd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pd;->o()V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkg;->a:Lcom/google/android/gms/internal/ads/yo;

    new-instance v2, Lcom/google/android/gms/internal/ads/bkf;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/bkf;-><init>(Lcom/google/android/gms/internal/ads/bkg;)V

    .line 13
    sget-object v3, Lcom/google/android/gms/internal/ads/yg;->f:Lcom/google/android/gms/internal/ads/crs;

    .line 14
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/yo;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkg;->a:Lcom/google/android/gms/internal/ads/yo;

    monitor-exit v1

    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bkg;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 18
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bkg;->d:Z

    if-nez v0, :cond_0

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bkg;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkg;->f:Lcom/google/android/gms/internal/ads/pd;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pd;->c()Lcom/google/android/gms/internal/ads/pn;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bkg;->e:Lcom/google/android/gms/internal/ads/pw;

    new-instance v3, Lcom/google/android/gms/internal/ads/bkd;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/bkd;-><init>(Lcom/google/android/gms/internal/ads/bke;)V

    .line 22
    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/pn;->b(Lcom/google/android/gms/internal/ads/pw;Lcom/google/android/gms/internal/ads/pq;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    .line 25
    :catch_0
    move-exception v0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkg;->a:Lcom/google/android/gms/internal/ads/yo;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzclc;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzclc;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/yo;->a(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 27
    :catch_1
    move-exception v0

    .line 28
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v2

    const-string/jumbo v3, "RemoteSignalsClientTask.onConnected"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/ug;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkg;->a:Lcom/google/android/gms/internal/ads/yo;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzclc;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzclc;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/yo;->a(Ljava/lang/Throwable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 25
    :catch_2
    move-exception v0

    goto :goto_1
.end method
