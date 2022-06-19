.class public final Lcom/google/android/gms/internal/ads/m61;
.super Lcom/google/android/gms/internal/ads/v;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/ha0;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/kh1;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/android/gms/internal/ads/f71;

.field private f:Lcom/google/android/gms/internal/ads/zzyx;

.field private final g:Lcom/google/android/gms/internal/ads/rl1;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private h:Lcom/google/android/gms/internal/ads/u10;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzyx;Ljava/lang/String;Lcom/google/android/gms/internal/ads/kh1;Lcom/google/android/gms/internal/ads/f71;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/v;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/m61;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/m61;->c:Lcom/google/android/gms/internal/ads/kh1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/m61;->f:Lcom/google/android/gms/internal/ads/zzyx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/m61;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/m61;->e:Lcom/google/android/gms/internal/ads/f71;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/kh1;->f()Lcom/google/android/gms/internal/ads/rl1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/m61;->g:Lcom/google/android/gms/internal/ads/rl1;

    invoke-virtual {p4, p0}, Lcom/google/android/gms/internal/ads/kh1;->h(Lcom/google/android/gms/internal/ads/ha0;)V

    return-void
.end method

.method static synthetic A6(Lcom/google/android/gms/internal/ads/m61;Lcom/google/android/gms/internal/ads/u10;)Lcom/google/android/gms/internal/ads/u10;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/m61;->h:Lcom/google/android/gms/internal/ads/u10;

    return-object p1
.end method

.method private final declared-synchronized B6(Lcom/google/android/gms/internal/ads/zzyx;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->g:Lcom/google/android/gms/internal/ads/rl1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/rl1;->r(Lcom/google/android/gms/internal/ads/zzyx;)Lcom/google/android/gms/internal/ads/rl1;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/m61;->g:Lcom/google/android/gms/internal/ads/rl1;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->f:Lcom/google/android/gms/internal/ads/zzyx;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzyx;->o:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/rl1;->s(Z)Lcom/google/android/gms/internal/ads/rl1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized C6(Lcom/google/android/gms/internal/ads/zzys;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "loadAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->d()Lcom/google/android/gms/ads/internal/util/l1;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/l1;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzys;->t:Lcom/google/android/gms/internal/ads/zzyk;

    if-nez v0, :cond_1

    const-string p1, "Failed to load the ad because app ID is missing."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/m61;->e:Lcom/google/android/gms/internal/ads/f71;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/ads/nm1;->d(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzym;)Lcom/google/android/gms/internal/ads/zzym;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/f71;->f0(Lcom/google/android/gms/internal/ads/zzym;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->b:Landroid/content/Context;

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzys;->g:Z

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/hm1;->b(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->c:Lcom/google/android/gms/internal/ads/kh1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/m61;->d:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/l61;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/l61;-><init>(Lcom/google/android/gms/internal/ads/m61;)V

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/google/android/gms/internal/ads/kh1;->a(Lcom/google/android/gms/internal/ads/zzys;Ljava/lang/String;Lcom/google/android/gms/internal/ads/t71;Lcom/google/android/gms/internal/ads/u71;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic z6(Lcom/google/android/gms/internal/ads/m61;)Lcom/google/android/gms/internal/ads/u10;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/m61;->h:Lcom/google/android/gms/internal/ads/u10;

    return-object p0
.end method


# virtual methods
.method public final A()Lcom/google/android/gms/internal/ads/j;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->e:Lcom/google/android/gms/internal/ads/f71;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f71;->m()Lcom/google/android/gms/internal/ads/j;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized B()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->c:Lcom/google/android/gms/internal/ads/kh1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/kh1;->b()Z

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->e:Lcom/google/android/gms/internal/ads/f71;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f71;->n()Lcom/google/android/gms/internal/ads/e0;

    move-result-object v0

    return-object v0
.end method

.method public final E4(Lcom/google/android/gms/internal/ads/e0;)V
    .locals 1

    const-string v0, "setAppEventListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->e:Lcom/google/android/gms/internal/ads/f71;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/f71;->C(Lcom/google/android/gms/internal/ads/e0;)V

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

    :try_start_0
    const-string v0, "getVideoController must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->h:Lcom/google/android/gms/internal/ads/u10;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u10;->i()Lcom/google/android/gms/internal/ads/m1;

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

.method public final S0(Z)V
    .locals 0

    return-void
.end method

.method public final S3(Lcom/google/android/gms/internal/ads/j;)V
    .locals 1

    const-string v0, "setAdListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->e:Lcom/google/android/gms/internal/ads/f71;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/f71;->x(Lcom/google/android/gms/internal/ads/j;)V

    return-void
.end method

.method public final X2(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final Y2(Lcom/google/android/gms/internal/ads/g;)V
    .locals 1

    const-string v0, "setAdListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->c:Lcom/google/android/gms/internal/ads/kh1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/kh1;->e(Lcom/google/android/gms/internal/ads/g;)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/dynamic/a;
    .locals 1

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->c:Lcom/google/android/gms/internal/ads/kh1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/kh1;->c()Landroid/view/ViewGroup;

    move-result-object v0

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->h:Lcom/google/android/gms/internal/ads/u10;

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
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->h:Lcom/google/android/gms/internal/ads/u10;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u30;->c()Lcom/google/android/gms/internal/ads/q80;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/q80;->H0(Landroid/content/Context;)V
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

.method public final declared-synchronized d5(Lcom/google/android/gms/internal/ads/i0;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setCorrelationIdProvider must be called on the main UI thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->g:Lcom/google/android/gms/internal/ads/rl1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/rl1;->n(Lcom/google/android/gms/internal/ads/i0;)Lcom/google/android/gms/internal/ads/rl1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final e4(Lcom/google/android/gms/internal/ads/fk;)V
    .locals 0

    return-void
.end method

.method public final f5(Lcom/google/android/gms/internal/ads/ji;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized g()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->h:Lcom/google/android/gms/internal/ads/u10;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u30;->c()Lcom/google/android/gms/internal/ads/q80;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/q80;->P0(Landroid/content/Context;)V
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

.method public final h5(Lcom/google/android/gms/internal/ads/g1;)V
    .locals 1

    const-string v0, "setPaidEventListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->e:Lcom/google/android/gms/internal/ads/f71;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/f71;->J(Lcom/google/android/gms/internal/ads/g1;)V

    return-void
.end method

.method public final i2(Lcom/google/android/gms/internal/ads/zzzd;)V
    .locals 0

    return-void
.end method

.method public final j()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getAdMetadata must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final k()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized l4(Lcom/google/android/gms/internal/ads/i4;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setOnCustomRenderedAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->c:Lcom/google/android/gms/internal/ads/kh1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/kh1;->d(Lcom/google/android/gms/internal/ads/i4;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized m()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "recordManualImpression must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->h:Lcom/google/android/gms/internal/ads/u10;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u10;->m()V
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

.method public final declared-synchronized o()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->h:Lcom/google/android/gms/internal/ads/u10;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u30;->d()Lcom/google/android/gms/internal/ads/k70;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->h:Lcom/google/android/gms/internal/ads/u10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u30;->d()Lcom/google/android/gms/internal/ads/k70;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/k70;->a()Ljava/lang/String;

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

.method public final o3(Lcom/google/android/gms/internal/ads/vu2;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized p()Lcom/google/android/gms/internal/ads/zzyx;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "getAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->h:Lcom/google/android/gms/internal/ads/u10;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/m61;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u10;->j()Lcom/google/android/gms/internal/ads/bl1;

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
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->g:Lcom/google/android/gms/internal/ads/rl1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rl1;->t()Lcom/google/android/gms/internal/ads/zzyx;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized p2(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setManualImpressionsEnabled must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->g:Lcom/google/android/gms/internal/ads/rl1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/rl1;->y(Z)Lcom/google/android/gms/internal/ads/rl1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized p5(Lcom/google/android/gms/internal/ads/zzady;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setVideoOptions must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->g:Lcom/google/android/gms/internal/ads/rl1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/rl1;->w(Lcom/google/android/gms/internal/ads/zzady;)Lcom/google/android/gms/internal/ads/rl1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized q0(Lcom/google/android/gms/internal/ads/zzys;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->f:Lcom/google/android/gms/internal/ads/zzyx;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/m61;->B6(Lcom/google/android/gms/internal/ads/zzyx;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/m61;->C6(Lcom/google/android/gms/internal/ads/zzys;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->o4:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->h:Lcom/google/android/gms/internal/ads/u10;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u30;->d()Lcom/google/android/gms/internal/ads/k70;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized t()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->d:Ljava/lang/String;
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

    const-string p1, "setAdMetadataListener must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized w()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->h:Lcom/google/android/gms/internal/ads/u10;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u30;->d()Lcom/google/android/gms/internal/ads/k70;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->h:Lcom/google/android/gms/internal/ads/u10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u30;->d()Lcom/google/android/gms/internal/ads/k70;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/k70;->a()Ljava/lang/String;

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

.method public final declared-synchronized y4(Lcom/google/android/gms/internal/ads/zzyx;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "setAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->g:Lcom/google/android/gms/internal/ads/rl1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/rl1;->r(Lcom/google/android/gms/internal/ads/zzyx;)Lcom/google/android/gms/internal/ads/rl1;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/m61;->f:Lcom/google/android/gms/internal/ads/zzyx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->h:Lcom/google/android/gms/internal/ads/u10;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/m61;->c:Lcom/google/android/gms/internal/ads/kh1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/kh1;->c()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/u10;->h(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzyx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->c:Lcom/google/android/gms/internal/ads/kh1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/kh1;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->g:Lcom/google/android/gms/internal/ads/rl1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rl1;->t()Lcom/google/android/gms/internal/ads/zzyx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/m61;->h:Lcom/google/android/gms/internal/ads/u10;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/u10;->k()Lcom/google/android/gms/internal/ads/bl1;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/m61;->g:Lcom/google/android/gms/internal/ads/rl1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/rl1;->K()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/m61;->h:Lcom/google/android/gms/internal/ads/u10;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/u10;->k()Lcom/google/android/gms/internal/ads/bl1;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/wl1;->b(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzyx;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/m61;->B6(Lcom/google/android/gms/internal/ads/zzyx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->g:Lcom/google/android/gms/internal/ads/rl1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rl1;->q()Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/m61;->C6(Lcom/google/android/gms/internal/ads/zzys;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    :try_start_2
    const-string v0, "Failed to refresh the banner ad."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/po;->f(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m61;->c:Lcom/google/android/gms/internal/ads/kh1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/kh1;->i()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
