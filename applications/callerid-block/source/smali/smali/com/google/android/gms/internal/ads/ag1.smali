.class public final Lcom/google/android/gms/internal/ads/ag1;
.super Lcom/google/android/gms/internal/ads/v;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/b;
.implements Lcom/google/android/gms/internal/ads/lu2;
.implements Lcom/google/android/gms/internal/ads/r90;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/fv;

.field private final c:Landroid/content/Context;

.field private final d:Landroid/view/ViewGroup;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/google/android/gms/internal/ads/uf1;

.field private final h:Lcom/google/android/gms/internal/ads/wg1;

.field private final i:Lcom/google/android/gms/internal/ads/zzbbq;

.field private j:J

.field private k:Lcom/google/android/gms/internal/ads/o00;

.field protected l:Lcom/google/android/gms/internal/ads/c10;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/fv;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/uf1;Lcom/google/android/gms/internal/ads/wg1;Lcom/google/android/gms/internal/ads/zzbbq;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/v;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ag1;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ag1;->j:J

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ag1;->d:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ag1;->b:Lcom/google/android/gms/internal/ads/fv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ag1;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ag1;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ag1;->g:Lcom/google/android/gms/internal/ads/uf1;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ag1;->h:Lcom/google/android/gms/internal/ads/wg1;

    invoke-virtual {p5, p0}, Lcom/google/android/gms/internal/ads/wg1;->d(Lcom/google/android/gms/internal/ads/r90;)V

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/ag1;->i:Lcom/google/android/gms/internal/ads/zzbbq;

    return-void
.end method

.method static synthetic B6(Lcom/google/android/gms/internal/ads/ag1;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ag1;->d:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic C6(Lcom/google/android/gms/internal/ads/ag1;)Lcom/google/android/gms/internal/ads/zzbbq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ag1;->i:Lcom/google/android/gms/internal/ads/zzbbq;

    return-object p0
.end method

.method static synthetic D6(Lcom/google/android/gms/internal/ads/ag1;Lcom/google/android/gms/internal/ads/c10;)Lcom/google/android/gms/ads/internal/overlay/zzr;
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/c10;->l()Z

    move-result p1

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->K2:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/r;

    invoke-direct {v1}, Lcom/google/android/gms/ads/internal/overlay/r;-><init>()V

    const/16 v2, 0x32

    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/r;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v3, p1, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    iput v4, v1, Lcom/google/android/gms/ads/internal/overlay/r;->a:I

    if-eq v3, p1, :cond_1

    move v2, v0

    :cond_1
    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/r;->b:I

    iput v0, v1, Lcom/google/android/gms/ads/internal/overlay/r;->c:I

    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ag1;->c:Landroid/content/Context;

    invoke-direct {p1, v0, v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzr;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/r;Lcom/google/android/gms/ads/internal/overlay/b;)V

    return-object p1
.end method

.method static synthetic E6(Lcom/google/android/gms/internal/ads/ag1;)Lcom/google/android/gms/internal/ads/zzyx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ag1;->c:Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ag1;->l:Lcom/google/android/gms/internal/ads/c10;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/c10;->g()Lcom/google/android/gms/internal/ads/bl1;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/wl1;->b(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzyx;

    move-result-object p0

    return-object p0
.end method

.method static synthetic F6(Lcom/google/android/gms/internal/ads/ag1;)Lcom/google/android/gms/internal/ads/wg1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ag1;->h:Lcom/google/android/gms/internal/ads/wg1;

    return-object p0
.end method

.method private final declared-synchronized G6(I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ag1;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ag1;->l:Lcom/google/android/gms/internal/ads/c10;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/c10;->q()Lcom/google/android/gms/internal/ads/wu2;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ag1;->h:Lcom/google/android/gms/internal/ads/wg1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ag1;->l:Lcom/google/android/gms/internal/ads/c10;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/c10;->q()Lcom/google/android/gms/internal/ads/wu2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/wg1;->i(Lcom/google/android/gms/internal/ads/wu2;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ag1;->h:Lcom/google/android/gms/internal/ads/wg1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wg1;->h()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ag1;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ag1;->k:Lcom/google/android/gms/internal/ads/o00;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->g()Lcom/google/android/gms/internal/ads/st2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/st2;->c(Lcom/google/android/gms/internal/ads/rt2;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ag1;->l:Lcom/google/android/gms/internal/ads/c10;

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ag1;->j:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->k()Lcom/google/android/gms/common/util/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ag1;->j:J

    sub-long v2, v0, v2

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ag1;->l:Lcom/google/android/gms/internal/ads/c10;

    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/internal/ads/c10;->o(JI)V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ag1;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final A()Lcom/google/android/gms/internal/ads/j;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method final synthetic A6()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ag1;->G6(I)V

    return-void
.end method

.method public final declared-synchronized B()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ag1;->g:Lcom/google/android/gms/internal/ads/uf1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jg1;->b()Z

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

.method public final B3()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final D()Lcom/google/android/gms/internal/ads/e0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final E4(Lcom/google/android/gms/internal/ads/e0;)V
    .locals 0

    return-void
.end method

.method public final F4(Lcom/google/android/gms/internal/ads/zzys;Lcom/google/android/gms/internal/ads/m;)V
    .locals 0

    return-void
.end method

.method public final H4(Lcom/google/android/gms/internal/ads/zzacn;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized I()Lcom/google/android/gms/internal/ads/m1;
    .locals 1

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final S()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ag1;->l:Lcom/google/android/gms/internal/ads/c10;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->k()Lcom/google/android/gms/common/util/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ag1;->j:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ag1;->l:Lcom/google/android/gms/internal/ads/c10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/c10;->i()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/o00;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ag1;->b:Lcom/google/android/gms/internal/ads/fv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/fv;->i()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->k()Lcom/google/android/gms/common/util/f;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/o00;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/common/util/f;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ag1;->k:Lcom/google/android/gms/internal/ads/o00;

    new-instance v2, Lcom/google/android/gms/internal/ads/xf1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/xf1;-><init>(Lcom/google/android/gms/internal/ads/ag1;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/o00;->a(ILjava/lang/Runnable;)V

    return-void
.end method

.method public final S0(Z)V
    .locals 0

    return-void
.end method

.method public final S3(Lcom/google/android/gms/internal/ads/j;)V
    .locals 0

    return-void
.end method

.method public final X2(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final Y2(Lcom/google/android/gms/internal/ads/g;)V
    .locals 0

    return-void
.end method

.method public final b()Lcom/google/android/gms/dynamic/a;
    .locals 1

    const-string v0, "getAdFrame must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ag1;->d:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->g3(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    return-object v0
.end method

.method public final b4(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ag1;->l:Lcom/google/android/gms/internal/ads/c10;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u30;->b()V
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

.method public final c2(Lcom/google/android/gms/dynamic/a;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d5(Lcom/google/android/gms/internal/ads/i0;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final e4(Lcom/google/android/gms/internal/ads/fk;)V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ag1;->G6(I)V

    return-void
.end method

.method public final f5(Lcom/google/android/gms/internal/ads/ji;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized g()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final h5(Lcom/google/android/gms/internal/ads/g1;)V
    .locals 0

    return-void
.end method

.method public final i2(Lcom/google/android/gms/internal/ads/zzzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ag1;->g:Lcom/google/android/gms/internal/ads/uf1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/jg1;->d(Lcom/google/android/gms/internal/ads/zzzd;)V

    return-void
.end method

.method public final j()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final k()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized l4(Lcom/google/android/gms/internal/ads/i4;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized m()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized o()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final o3(Lcom/google/android/gms/internal/ads/vu2;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ag1;->h:Lcom/google/android/gms/internal/ads/wg1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/wg1;->b(Lcom/google/android/gms/internal/ads/vu2;)V

    return-void
.end method

.method public final declared-synchronized p()Lcom/google/android/gms/internal/ads/zzyx;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "getAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ag1;->l:Lcom/google/android/gms/internal/ads/c10;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ag1;->c:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/c10;->g()Lcom/google/android/gms/internal/ads/bl1;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/wl1;->b(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzyx;

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

.method public final declared-synchronized p2(Z)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized p5(Lcom/google/android/gms/internal/ads/zzady;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized q0(Lcom/google/android/gms/internal/ads/zzys;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "loadAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->d()Lcom/google/android/gms/ads/internal/util/l1;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ag1;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/l1;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzys;->t:Lcom/google/android/gms/internal/ads/zzyk;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Failed to load the ad because app ID is missing."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ag1;->h:Lcom/google/android/gms/internal/ads/wg1;

    const/4 v0, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v2, v2}, Lcom/google/android/gms/internal/ads/nm1;->d(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzym;)Lcom/google/android/gms/internal/ads/zzym;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/wg1;->f0(Lcom/google/android/gms/internal/ads/zzym;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ag1;->B()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit p0

    return v1

    :cond_2
    :try_start_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ag1;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/google/android/gms/internal/ads/yf1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/yf1;-><init>(Lcom/google/android/gms/internal/ads/ag1;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ag1;->g:Lcom/google/android/gms/internal/ads/uf1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ag1;->f:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/zf1;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zf1;-><init>(Lcom/google/android/gms/internal/ads/ag1;)V

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/jg1;->a(Lcom/google/android/gms/internal/ads/zzys;Ljava/lang/String;Lcom/google/android/gms/internal/ads/t71;Lcom/google/android/gms/internal/ads/u71;)Z

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

.method public final q3(Lcom/google/android/gms/internal/ads/l0;)V
    .locals 0

    return-void
.end method

.method public final q6(Lcom/google/android/gms/internal/ads/gi;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized r()Lcom/google/android/gms/internal/ads/j1;
    .locals 1

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized t()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ag1;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final t3(Lcom/google/android/gms/internal/ads/a0;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized w()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized y4(Lcom/google/android/gms/internal/ads/zzyx;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    const-string p1, "setAdSize must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final z6()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/m03;->a()Lcom/google/android/gms/internal/ads/io;

    invoke-static {}, Lcom/google/android/gms/internal/ads/io;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ag1;->G6(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ag1;->b:Lcom/google/android/gms/internal/ads/fv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fv;->h()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/wf1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/wf1;-><init>(Lcom/google/android/gms/internal/ads/ag1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ag1;->G6(I)V

    return-void
.end method
