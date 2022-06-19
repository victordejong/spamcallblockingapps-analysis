.class public final Lcom/google/android/gms/internal/ads/sq1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/o;
.implements Lcom/google/android/gms/internal/ads/hp0;


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/gms/internal/ads/zzcgz;

.field private f:Lcom/google/android/gms/internal/ads/lq1;

.field private g:Lcom/google/android/gms/internal/ads/wn0;

.field private h:Z

.field private i:Z

.field private j:J

.field private k:Lcom/google/android/gms/internal/ads/wt;

.field private l:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sq1;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/sq1;->e:Lcom/google/android/gms/internal/ads/zzcgz;

    return-void
.end method

.method private final declared-synchronized g(Lcom/google/android/gms/internal/ads/wt;)Z
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->p6:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string v0, "Ad inspector had an internal error."

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    invoke-static {v1, v3, v3}, Lcom/google/android/gms/internal/ads/sk2;->d(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbcz;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v0

    .line 6
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/wt;->h0(Lcom/google/android/gms/internal/ads/zzbcz;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    monitor-exit p0

    return v2

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sq1;->f:Lcom/google/android/gms/internal/ads/lq1;

    if-nez v0, :cond_1

    const-string v0, "Ad inspector had an internal error."

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :try_start_3
    invoke-static {v1, v3, v3}, Lcom/google/android/gms/internal/ads/sk2;->d(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbcz;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v0

    .line 9
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/wt;->h0(Lcom/google/android/gms/internal/ads/zzbcz;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    monitor-exit p0

    return v2

    :cond_1
    :try_start_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/sq1;->h:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/sq1;->i:Z

    if-nez v0, :cond_3

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/sq1;->j:J

    sget-object v6, Lcom/google/android/gms/internal/ads/kw;->s6:Lcom/google/android/gms/internal/ads/cw;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v6

    .line 12
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v6, v0, v4

    if-gez v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 13
    monitor-exit p0

    return p1

    :cond_3
    :goto_0
    :try_start_5
    const-string v0, "Ad inspector cannot be opened because it is already open."

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/16 v0, 0x13

    .line 15
    :try_start_6
    invoke-static {v0, v3, v3}, Lcom/google/android/gms/internal/ads/sk2;->d(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbcz;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v0

    .line 16
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/wt;->h0(Lcom/google/android/gms/internal/ads/zzbcz;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_2
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized h()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/sq1;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/sq1;->i:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/qi0;->e:Lcom/google/android/gms/internal/ads/s03;

    new-instance v1, Lcom/google/android/gms/internal/ads/rq1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/rq1;-><init>(Lcom/google/android/gms/internal/ads/sq1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a3()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized a6(I)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/sq1;->g:Lcom/google/android/gms/internal/ads/wn0;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->destroy()V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/sq1;->l:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "Inspector closed."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/sq1;->k:Lcom/google/android/gms/internal/ads/wt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 3
    :try_start_1
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/wt;->h0(Lcom/google/android/gms/internal/ads/zzbcz;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    :try_start_2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/sq1;->i:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/sq1;->h:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/sq1;->j:J

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/sq1;->l:Z

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sq1;->k:Lcom/google/android/gms/internal/ads/wt;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Z)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "Ad inspector loaded."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/sq1;->h:Z

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/sq1;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "Ad inspector failed to load."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/sq1;->k:Lcom/google/android/gms/internal/ads/wt;

    if-eqz p1, :cond_1

    const/16 v1, 0x11

    const/4 v2, 0x0

    .line 4
    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/sk2;->d(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbcz;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v1

    .line 5
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/wt;->h0(Lcom/google/android/gms/internal/ads/zzbcz;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :cond_1
    :try_start_3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/sq1;->l:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/sq1;->g:Lcom/google/android/gms/internal/ads/wn0;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->destroy()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c(Lcom/google/android/gms/internal/ads/lq1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sq1;->f:Lcom/google/android/gms/internal/ads/lq1;

    return-void
.end method

.method public final declared-synchronized d(Lcom/google/android/gms/internal/ads/wt;Lcom/google/android/gms/internal/ads/o20;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/sq1;->g(Lcom/google/android/gms/internal/ads/wt;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v3, 0x0

    const/16 v4, 0x11

    .line 2
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->e()Lcom/google/android/gms/internal/ads/ho0;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/sq1;->d:Landroid/content/Context;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/sq1;->e:Lcom/google/android/gms/internal/ads/zzcgz;

    invoke-static {}, Lcom/google/android/gms/internal/ads/mp0;->b()Lcom/google/android/gms/internal/ads/mp0;

    move-result-object v6

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/pm;->a()Lcom/google/android/gms/internal/ads/pm;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 4
    invoke-static/range {v5 .. v18}, Lcom/google/android/gms/internal/ads/ho0;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mp0;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/u;Lcom/google/android/gms/internal/ads/kx;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/ax;Lcom/google/android/gms/ads/internal/k;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/pm;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/jj2;)Lcom/google/android/gms/internal/ads/wn0;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/sq1;->g:Lcom/google/android/gms/internal/ads/wn0;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzcmw; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->c0()Lcom/google/android/gms/internal/ads/jp0;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Failed to obtain a web view for the ad inspector"

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v0, "Failed to obtain a web view for the ad inspector"

    .line 7
    invoke-static {v4, v0, v3}, Lcom/google/android/gms/internal/ads/sk2;->d(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbcz;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v0

    .line 8
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/wt;->h0(Lcom/google/android/gms/internal/ads/zzbcz;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    .line 9
    :catch_0
    monitor-exit p0

    return-void

    .line 10
    :cond_1
    :try_start_4
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/sq1;->k:Lcom/google/android/gms/internal/ads/wt;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object v5, v0

    move-object/from16 v20, p2

    .line 11
    invoke-interface/range {v5 .. v21}, Lcom/google/android/gms/internal/ads/jp0;->q0(Lcom/google/android/gms/internal/ads/kq;Lcom/google/android/gms/internal/ads/m10;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/internal/ads/o10;Lcom/google/android/gms/ads/internal/overlay/u;ZLcom/google/android/gms/internal/ads/q20;Lcom/google/android/gms/ads/internal/b;Lcom/google/android/gms/internal/ads/sa0;Lcom/google/android/gms/internal/ads/hf0;Lcom/google/android/gms/internal/ads/dw1;Lcom/google/android/gms/internal/ads/bp2;Lcom/google/android/gms/internal/ads/rn1;Lcom/google/android/gms/internal/ads/jo2;Lcom/google/android/gms/internal/ads/o20;Lcom/google/android/gms/internal/ads/qa1;)V

    .line 12
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/jp0;->f0(Lcom/google/android/gms/internal/ads/hp0;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/sq1;->g:Lcom/google/android/gms/internal/ads/wn0;

    .line 13
    sget-object v2, Lcom/google/android/gms/internal/ads/kw;->q6:Lcom/google/android/gms/internal/ads/cw;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v2

    .line 15
    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/wn0;->loadUrl(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->c()Lcom/google/android/gms/ads/internal/overlay/m;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/sq1;->d:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/sq1;->g:Lcom/google/android/gms/internal/ads/wn0;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/sq1;->e:Lcom/google/android/gms/internal/ads/zzcgz;

    const/4 v5, 0x1

    invoke-direct {v2, v1, v3, v5, v4}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/internal/ads/wn0;ILcom/google/android/gms/internal/ads/zzcgz;)V

    .line 17
    invoke-static {v0, v2, v5}, Lcom/google/android/gms/ads/internal/overlay/m;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/sq1;->j:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catch_1
    move-exception v0

    :try_start_5
    const-string v5, "Failed to obtain a web view for the ad inspector"

    .line 19
    invoke-static {v5, v0}, Lcom/google/android/gms/internal/ads/ei0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    const-string v0, "Failed to obtain a web view for the ad inspector"

    .line 20
    invoke-static {v4, v0, v3}, Lcom/google/android/gms/internal/ads/sk2;->d(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbcz;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v0

    .line 21
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/wt;->h0(Lcom/google/android/gms/internal/ads/zzbcz;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :catch_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method final synthetic f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sq1;->g:Lcom/google/android/gms/internal/ads/wn0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sq1;->f:Lcom/google/android/gms/internal/ads/lq1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/lq1;->m()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "window.inspectorInfo"

    .line 2
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/g50;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final m2()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized y4()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/sq1;->i:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/sq1;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
