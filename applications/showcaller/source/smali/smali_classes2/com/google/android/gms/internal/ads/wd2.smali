.class public final Lcom/google/android/gms/internal/ads/wd2;
.super Lcom/google/android/gms/internal/ads/ss;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/y;
.implements Lcom/google/android/gms/internal/ads/el;
.implements Lcom/google/android/gms/internal/ads/y41;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/sp0;

.field private final e:Landroid/content/Context;

.field private final f:Landroid/view/ViewGroup;

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final h:Ljava/lang/String;

.field private final i:Lcom/google/android/gms/internal/ads/qd2;

.field private final j:Lcom/google/android/gms/internal/ads/xe2;

.field private final k:Lcom/google/android/gms/internal/ads/zzcgz;

.field private l:J

.field private m:Lcom/google/android/gms/internal/ads/rv0;

.field protected n:Lcom/google/android/gms/internal/ads/fw0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/sp0;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qd2;Lcom/google/android/gms/internal/ads/xe2;Lcom/google/android/gms/internal/ads/zzcgz;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ss;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wd2;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/wd2;->l:J

    new-instance v0, Landroid/widget/FrameLayout;

    .line 3
    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wd2;->f:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wd2;->d:Lcom/google/android/gms/internal/ads/sp0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wd2;->e:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/wd2;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/wd2;->i:Lcom/google/android/gms/internal/ads/qd2;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/wd2;->j:Lcom/google/android/gms/internal/ads/xe2;

    .line 4
    invoke-virtual {p5, p0}, Lcom/google/android/gms/internal/ads/xe2;->r(Lcom/google/android/gms/internal/ads/y41;)V

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/wd2;->k:Lcom/google/android/gms/internal/ads/zzcgz;

    return-void
.end method

.method private final declared-synchronized F6(I)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wd2;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wd2;->n:Lcom/google/android/gms/internal/ads/fw0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fw0;->q()Lcom/google/android/gms/internal/ads/pl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wd2;->j:Lcom/google/android/gms/internal/ads/xe2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wd2;->n:Lcom/google/android/gms/internal/ads/fw0;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/fw0;->q()Lcom/google/android/gms/internal/ads/pl;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/xe2;->I(Lcom/google/android/gms/internal/ads/pl;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wd2;->j:Lcom/google/android/gms/internal/ads/xe2;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xe2;->H()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wd2;->f:Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wd2;->m:Lcom/google/android/gms/internal/ads/rv0;

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->g()Lcom/google/android/gms/internal/ads/kk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/kk;->c(Lcom/google/android/gms/internal/ads/jk;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wd2;->n:Lcom/google/android/gms/internal/ads/fw0;

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/wd2;->l:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/wd2;->l:J

    sub-long v2, v0, v2

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wd2;->n:Lcom/google/android/gms/internal/ads/fw0;

    .line 9
    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/internal/ads/fw0;->o(JI)V

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/wd2;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 11
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic G6(Lcom/google/android/gms/internal/ads/wd2;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/wd2;->f:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic H6(Lcom/google/android/gms/internal/ads/wd2;)Lcom/google/android/gms/internal/ads/xe2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/wd2;->j:Lcom/google/android/gms/internal/ads/xe2;

    return-object p0
.end method

.method static synthetic I6(Lcom/google/android/gms/internal/ads/wd2;)Lcom/google/android/gms/internal/ads/zzcgz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/wd2;->k:Lcom/google/android/gms/internal/ads/zzcgz;

    return-object p0
.end method

.method static synthetic J6(Lcom/google/android/gms/internal/ads/wd2;Lcom/google/android/gms/internal/ads/fw0;)Lcom/google/android/gms/ads/internal/overlay/zzq;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/fw0;->l()Z

    move-result p1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->n3:Lcom/google/android/gms/internal/ads/cw;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/p;

    .line 5
    invoke-direct {v1}, Lcom/google/android/gms/ads/internal/overlay/p;-><init>()V

    const/16 v2, 0x32

    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/p;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v3, p1, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    iput v4, v1, Lcom/google/android/gms/ads/internal/overlay/p;->a:I

    if-eq v3, p1, :cond_1

    move v2, v0

    :cond_1
    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/p;->b:I

    iput v0, v1, Lcom/google/android/gms/ads/internal/overlay/p;->c:I

    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wd2;->e:Landroid/content/Context;

    .line 6
    invoke-direct {p1, v0, v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzq;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/p;Lcom/google/android/gms/ads/internal/overlay/y;)V

    return-object p1
.end method

.method static synthetic K6(Lcom/google/android/gms/internal/ads/wd2;)Lcom/google/android/gms/internal/ads/zzbdl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wd2;->e:Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/wd2;->n:Lcom/google/android/gms/internal/ads/fw0;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/fw0;->g()Lcom/google/android/gms/internal/ads/hj2;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/bk2;->b(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized C4(Z)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized D()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wd2;->i:Lcom/google/android/gms/internal/ads/qd2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/he2;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final synthetic E6()V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/wd2;->F6(I)V

    return-void
.end method

.method public final F4(Lcom/google/android/gms/internal/ads/xs;)V
    .locals 0

    return-void
.end method

.method public final H()Lcom/google/android/gms/internal/ads/gs;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized K()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wd2;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final K2(Lcom/google/android/gms/internal/ads/at;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized L0(Lcom/google/android/gms/internal/ads/zzbdl;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    const-string p1, "setAdSize must be called on the main UI thread."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final N5(Lcom/google/android/gms/internal/ads/zzbdr;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wd2;->i:Lcom/google/android/gms/internal/ads/qd2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/he2;->i(Lcom/google/android/gms/internal/ads/zzbdr;)V

    return-void
.end method

.method public final O5(Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/internal/ads/js;)V
    .locals 0

    return-void
.end method

.method public final S1(Lcom/google/android/gms/internal/ads/it;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized U2(Lcom/google/android/gms/internal/ads/et;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final W3(Lcom/google/android/gms/dynamic/a;)V
    .locals 0

    return-void
.end method

.method public final X5(Lcom/google/android/gms/internal/ads/gs;)V
    .locals 0

    return-void
.end method

.method public final Y1(Lcom/google/android/gms/internal/ads/tb0;)V
    .locals 0

    return-void
.end method

.method public final b6(Lcom/google/android/gms/internal/ads/ud0;)V
    .locals 0

    return-void
.end method

.method public final c0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wd2;->n:Lcom/google/android/gms/internal/ads/fw0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/wd2;->l:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wd2;->n:Lcom/google/android/gms/internal/ads/fw0;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fw0;->i()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/rv0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wd2;->d:Lcom/google/android/gms/internal/ads/sp0;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/sp0;->i()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/rv0;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/common/util/e;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/wd2;->m:Lcom/google/android/gms/internal/ads/rv0;

    new-instance v2, Lcom/google/android/gms/internal/ads/td2;

    .line 4
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/td2;-><init>(Lcom/google/android/gms/internal/ads/wd2;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/rv0;->a(ILjava/lang/Runnable;)V

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/wd2;->F6(I)V

    return-void
.end method

.method public final e3(Lcom/google/android/gms/internal/ads/cu;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized e6(Lcom/google/android/gms/internal/ads/gx;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized g()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "destroy must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wd2;->n:Lcom/google/android/gms/internal/ads/fw0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xy0;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i4(Lcom/google/android/gms/internal/ads/yb0;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized j()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "pause must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized k5(Lcom/google/android/gms/internal/ads/zzbdg;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "loadAd must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wd2;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/c2;->k(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbdg;->v:Lcom/google/android/gms/internal/ads/zzbcx;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Failed to load the ad because app ID is missing."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wd2;->j:Lcom/google/android/gms/internal/ads/xe2;

    const/4 v0, 0x4

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v2, v2}, Lcom/google/android/gms/internal/ads/sk2;->d(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbcz;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/xe2;->O(Lcom/google/android/gms/internal/ads/zzbcz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 6
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/wd2;->D()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit p0

    return v1

    :cond_2
    :try_start_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wd2;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/google/android/gms/internal/ads/ud2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ud2;-><init>(Lcom/google/android/gms/internal/ads/wd2;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wd2;->i:Lcom/google/android/gms/internal/ads/qd2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wd2;->h:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/vd2;

    .line 8
    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/vd2;-><init>(Lcom/google/android/gms/internal/ads/wd2;)V

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/he2;->a(Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/o42;Lcom/google/android/gms/internal/ads/p42;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final l1(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final l3(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized l6(Lcom/google/android/gms/internal/ads/zzbis;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized m()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "resume must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final m6(Lcom/google/android/gms/internal/ads/nl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wd2;->j:Lcom/google/android/gms/internal/ads/xe2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/xe2;->m(Lcom/google/android/gms/internal/ads/nl;)V

    return-void
.end method

.method public final o()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized p0()Lcom/google/android/gms/internal/ads/ju;
    .locals 1

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized q()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final s()Landroid/os/Bundle;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final s0(Z)V
    .locals 0

    return-void
.end method

.method public final s5(Lcom/google/android/gms/internal/ads/zzbhg;)V
    .locals 0

    return-void
.end method

.method public final t()Lcom/google/android/gms/internal/ads/at;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized u()Lcom/google/android/gms/internal/ads/fu;
    .locals 1

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized v()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final v4(Lcom/google/android/gms/internal/ads/cs;)V
    .locals 0

    return-void
.end method

.method public final zza()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/wd2;->F6(I)V

    return-void
.end method

.method public final zzg()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->a()Lcom/google/android/gms/internal/ads/xh0;

    invoke-static {}, Lcom/google/android/gms/internal/ads/xh0;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/wd2;->F6(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wd2;->d:Lcom/google/android/gms/internal/ads/sp0;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sp0;->h()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/sd2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/sd2;-><init>(Lcom/google/android/gms/internal/ads/wd2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzi()Lcom/google/android/gms/dynamic/a;
    .locals 1

    const-string v0, "getAdFrame must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wd2;->f:Landroid/view/ViewGroup;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized zzt()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zzu()Lcom/google/android/gms/internal/ads/zzbdl;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "getAdSize must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wd2;->n:Lcom/google/android/gms/internal/ads/fw0;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wd2;->e:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fw0;->g()Lcom/google/android/gms/internal/ads/hj2;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/bk2;->b(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
