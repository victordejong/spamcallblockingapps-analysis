.class public final Lcom/google/android/gms/internal/ads/f32;
.super Lcom/google/android/gms/internal/ads/ss;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/p51;


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/gms/internal/ads/mf2;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/google/android/gms/internal/ads/a42;

.field private h:Lcom/google/android/gms/internal/ads/zzbdl;

.field private final i:Lcom/google/android/gms/internal/ads/vj2;

.field private j:Lcom/google/android/gms/internal/ads/xw0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mf2;Lcom/google/android/gms/internal/ads/a42;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ss;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f32;->d:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/f32;->e:Lcom/google/android/gms/internal/ads/mf2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/f32;->h:Lcom/google/android/gms/internal/ads/zzbdl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/f32;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/f32;->g:Lcom/google/android/gms/internal/ads/a42;

    .line 2
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/mf2;->l()Lcom/google/android/gms/internal/ads/vj2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f32;->i:Lcom/google/android/gms/internal/ads/vj2;

    .line 3
    invoke-virtual {p4, p0}, Lcom/google/android/gms/internal/ads/mf2;->n(Lcom/google/android/gms/internal/ads/p51;)V

    return-void
.end method

.method static synthetic E6(Lcom/google/android/gms/internal/ads/f32;)Lcom/google/android/gms/internal/ads/xw0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/f32;->j:Lcom/google/android/gms/internal/ads/xw0;

    return-object p0
.end method

.method static synthetic F6(Lcom/google/android/gms/internal/ads/f32;Lcom/google/android/gms/internal/ads/xw0;)Lcom/google/android/gms/internal/ads/xw0;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f32;->j:Lcom/google/android/gms/internal/ads/xw0;

    return-object p1
.end method

.method private final declared-synchronized G6(Lcom/google/android/gms/internal/ads/zzbdl;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->i:Lcom/google/android/gms/internal/ads/vj2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/vj2;->I(Lcom/google/android/gms/internal/ads/zzbdl;)Lcom/google/android/gms/internal/ads/vj2;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f32;->i:Lcom/google/android/gms/internal/ads/vj2;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->h:Lcom/google/android/gms/internal/ads/zzbdl;

    .line 2
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbdl;->q:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/vj2;->J(Z)Lcom/google/android/gms/internal/ads/vj2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized H6(Lcom/google/android/gms/internal/ads/zzbdg;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "loadAd must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/c2;->k(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbdg;->v:Lcom/google/android/gms/internal/ads/zzbcx;

    if-nez v0, :cond_1

    const-string p1, "Failed to load the ad because app ID is missing."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f32;->g:Lcom/google/android/gms/internal/ads/a42;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 4
    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/ads/sk2;->d(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbcz;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/a42;->O(Lcom/google/android/gms/internal/ads/zzbcz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->d:Landroid/content/Context;

    .line 6
    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzbdg;->i:Z

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/nk2;->b(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->e:Lcom/google/android/gms/internal/ads/mf2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/f32;->f:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/e32;

    .line 7
    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/e32;-><init>(Lcom/google/android/gms/internal/ads/f32;)V

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/google/android/gms/internal/ads/mf2;->a(Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/o42;Lcom/google/android/gms/internal/ads/p42;)Z

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


# virtual methods
.method public final declared-synchronized C4(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setManualImpressionsEnabled must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->i:Lcom/google/android/gms/internal/ads/vj2;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/vj2;->a(Z)Lcom/google/android/gms/internal/ads/vj2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized D()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->e:Lcom/google/android/gms/internal/ads/mf2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mf2;->b()Z

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

.method public final F4(Lcom/google/android/gms/internal/ads/xs;)V
    .locals 0

    const-string p1, "setAdMetadataListener must be called on the main UI thread."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final H()Lcom/google/android/gms/internal/ads/gs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->g:Lcom/google/android/gms/internal/ads/a42;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/a42;->a()Lcom/google/android/gms/internal/ads/gs;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized K()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->f:Ljava/lang/String;
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
    .locals 1

    const-string v0, "setAppEventListener must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->g:Lcom/google/android/gms/internal/ads/a42;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/a42;->v(Lcom/google/android/gms/internal/ads/at;)V

    return-void
.end method

.method public final declared-synchronized L0(Lcom/google/android/gms/internal/ads/zzbdl;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "setAdSize must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->i:Lcom/google/android/gms/internal/ads/vj2;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/vj2;->I(Lcom/google/android/gms/internal/ads/zzbdl;)Lcom/google/android/gms/internal/ads/vj2;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f32;->h:Lcom/google/android/gms/internal/ads/zzbdl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->j:Lcom/google/android/gms/internal/ads/xw0;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/f32;->e:Lcom/google/android/gms/internal/ads/mf2;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/mf2;->i()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/xw0;->h(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzbdl;)V
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

.method public final N5(Lcom/google/android/gms/internal/ads/zzbdr;)V
    .locals 0

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
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setCorrelationIdProvider must be called on the main UI thread"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->i:Lcom/google/android/gms/internal/ads/vj2;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/vj2;->o(Lcom/google/android/gms/internal/ads/et;)Lcom/google/android/gms/internal/ads/vj2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final W3(Lcom/google/android/gms/dynamic/a;)V
    .locals 0

    return-void
.end method

.method public final X5(Lcom/google/android/gms/internal/ads/gs;)V
    .locals 1

    const-string v0, "setAdListener must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->g:Lcom/google/android/gms/internal/ads/a42;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/a42;->r(Lcom/google/android/gms/internal/ads/gs;)V

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

.method public final e3(Lcom/google/android/gms/internal/ads/cu;)V
    .locals 1

    const-string v0, "setPaidEventListener must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->g:Lcom/google/android/gms/internal/ads/a42;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/a42;->y(Lcom/google/android/gms/internal/ads/cu;)V

    return-void
.end method

.method public final declared-synchronized e6(Lcom/google/android/gms/internal/ads/gx;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setOnCustomRenderedAdLoadedListener must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->e:Lcom/google/android/gms/internal/ads/mf2;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/mf2;->j(Lcom/google/android/gms/internal/ads/gx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized g()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "destroy must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->j:Lcom/google/android/gms/internal/ads/xw0;

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
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "pause must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->j:Lcom/google/android/gms/internal/ads/xw0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xy0;->c()Lcom/google/android/gms/internal/ads/y31;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/y31;->S0(Landroid/content/Context;)V
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

.method public final declared-synchronized k5(Lcom/google/android/gms/internal/ads/zzbdg;)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->h:Lcom/google/android/gms/internal/ads/zzbdl;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/f32;->G6(Lcom/google/android/gms/internal/ads/zzbdl;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/f32;->H6(Lcom/google/android/gms/internal/ads/zzbdg;)Z

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

.method public final l1(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final l3(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized l6(Lcom/google/android/gms/internal/ads/zzbis;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setVideoOptions must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->i:Lcom/google/android/gms/internal/ads/vj2;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/vj2;->N(Lcom/google/android/gms/internal/ads/zzbis;)Lcom/google/android/gms/internal/ads/vj2;
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
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "resume must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->j:Lcom/google/android/gms/internal/ads/xw0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xy0;->c()Lcom/google/android/gms/internal/ads/y31;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/y31;->T0(Landroid/content/Context;)V
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

.method public final m6(Lcom/google/android/gms/internal/ads/nl;)V
    .locals 0

    return-void
.end method

.method public final o()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized p0()Lcom/google/android/gms/internal/ads/ju;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "getVideoController must be called from the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->j:Lcom/google/android/gms/internal/ads/xw0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xw0;->i()Lcom/google/android/gms/internal/ads/ju;

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

.method public final declared-synchronized q()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->j:Lcom/google/android/gms/internal/ads/xw0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xy0;->d()Lcom/google/android/gms/internal/ads/q21;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->j:Lcom/google/android/gms/internal/ads/xw0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xy0;->d()Lcom/google/android/gms/internal/ads/q21;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/q21;->a()Ljava/lang/String;

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

.method public final s()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getAdMetadata must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    .line 2
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

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->g:Lcom/google/android/gms/internal/ads/a42;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/a42;->q()Lcom/google/android/gms/internal/ads/at;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized u()Lcom/google/android/gms/internal/ads/fu;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->b5:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->j:Lcom/google/android/gms/internal/ads/xw0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xy0;->d()Lcom/google/android/gms/internal/ads/q21;

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

.method public final declared-synchronized v()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->j:Lcom/google/android/gms/internal/ads/xw0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xy0;->d()Lcom/google/android/gms/internal/ads/q21;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->j:Lcom/google/android/gms/internal/ads/xw0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xy0;->d()Lcom/google/android/gms/internal/ads/q21;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/q21;->a()Ljava/lang/String;

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

.method public final v4(Lcom/google/android/gms/internal/ads/cs;)V
    .locals 1

    const-string v0, "setAdListener must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->e:Lcom/google/android/gms/internal/ads/mf2;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/mf2;->k(Lcom/google/android/gms/internal/ads/cs;)V

    return-void
.end method

.method public final declared-synchronized zza()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->e:Lcom/google/android/gms/internal/ads/mf2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mf2;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->i:Lcom/google/android/gms/internal/ads/vj2;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vj2;->K()Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/f32;->j:Lcom/google/android/gms/internal/ads/xw0;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/xw0;->k()Lcom/google/android/gms/internal/ads/hj2;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/f32;->i:Lcom/google/android/gms/internal/ads/vj2;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/vj2;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/f32;->j:Lcom/google/android/gms/internal/ads/xw0;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/xw0;->k()Lcom/google/android/gms/internal/ads/hj2;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/bk2;->b(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object v0

    .line 6
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/f32;->G6(Lcom/google/android/gms/internal/ads/zzbdl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->i:Lcom/google/android/gms/internal/ads/vj2;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vj2;->H()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/f32;->H6(Lcom/google/android/gms/internal/ads/zzbdg;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    :try_start_2
    const-string v0, "Failed to refresh the banner ad."

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 9
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->e:Lcom/google/android/gms/internal/ads/mf2;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mf2;->o()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzi()Lcom/google/android/gms/dynamic/a;
    .locals 1

    const-string v0, "destroy must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->e:Lcom/google/android/gms/internal/ads/mf2;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mf2;->i()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized zzt()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "recordManualImpression must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->j:Lcom/google/android/gms/internal/ads/xw0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xw0;->m()V
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

.method public final declared-synchronized zzu()Lcom/google/android/gms/internal/ads/zzbdl;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "getAdSize must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->j:Lcom/google/android/gms/internal/ads/xw0;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/f32;->d:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xw0;->j()Lcom/google/android/gms/internal/ads/hj2;

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
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f32;->i:Lcom/google/android/gms/internal/ads/vj2;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vj2;->K()Lcom/google/android/gms/internal/ads/zzbdl;

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
