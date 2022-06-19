.class public final Lcom/google/android/gms/internal/ads/i42;
.super Lcom/google/android/gms/internal/ads/ss;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/zzbdl;

.field private final e:Landroid/content/Context;

.field private final f:Lcom/google/android/gms/internal/ads/gh2;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/google/android/gms/internal/ads/a42;

.field private final i:Lcom/google/android/gms/internal/ads/hi2;

.field private j:Lcom/google/android/gms/internal/ads/lb1;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/gh2;Lcom/google/android/gms/internal/ads/a42;Lcom/google/android/gms/internal/ads/hi2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ss;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/i42;->d:Lcom/google/android/gms/internal/ads/zzbdl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/i42;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/i42;->e:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/i42;->f:Lcom/google/android/gms/internal/ads/gh2;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/i42;->h:Lcom/google/android/gms/internal/ads/a42;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/i42;->i:Lcom/google/android/gms/internal/ads/hi2;

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->t0:Lcom/google/android/gms/internal/ads/cw;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/i42;->k:Z

    return-void
.end method

.method static synthetic E6(Lcom/google/android/gms/internal/ads/i42;Lcom/google/android/gms/internal/ads/lb1;)Lcom/google/android/gms/internal/ads/lb1;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/i42;->j:Lcom/google/android/gms/internal/ads/lb1;

    return-object p1
.end method

.method static synthetic F6(Lcom/google/android/gms/internal/ads/i42;)Lcom/google/android/gms/internal/ads/lb1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/i42;->j:Lcom/google/android/gms/internal/ads/lb1;

    return-object p0
.end method

.method private final declared-synchronized G6()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i42;->j:Lcom/google/android/gms/internal/ads/lb1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lb1;->h()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final C4(Z)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized D()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i42;->f:Lcom/google/android/gms/internal/ads/gh2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/gh2;->b()Z

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i42;->h:Lcom/google/android/gms/internal/ads/a42;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/a42;->a()Lcom/google/android/gms/internal/ads/gs;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized K()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i42;->g:Ljava/lang/String;
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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i42;->h:Lcom/google/android/gms/internal/ads/a42;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/a42;->v(Lcom/google/android/gms/internal/ads/at;)V

    return-void
.end method

.method public final L0(Lcom/google/android/gms/internal/ads/zzbdl;)V
    .locals 0

    return-void
.end method

.method public final N5(Lcom/google/android/gms/internal/ads/zzbdr;)V
    .locals 0

    return-void
.end method

.method public final O5(Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/internal/ads/js;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i42;->h:Lcom/google/android/gms/internal/ads/a42;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/a42;->H(Lcom/google/android/gms/internal/ads/js;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/i42;->k5(Lcom/google/android/gms/internal/ads/zzbdg;)Z

    return-void
.end method

.method public final S1(Lcom/google/android/gms/internal/ads/it;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i42;->h:Lcom/google/android/gms/internal/ads/a42;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/a42;->I(Lcom/google/android/gms/internal/ads/it;)V

    return-void
.end method

.method public final U2(Lcom/google/android/gms/internal/ads/et;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized W3(Lcom/google/android/gms/dynamic/a;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i42;->j:Lcom/google/android/gms/internal/ads/lb1;

    if-nez v0, :cond_0

    const-string p1, "Interstitial can not be shown before loaded."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/i42;->h:Lcom/google/android/gms/internal/ads/a42;

    const/16 v0, 0x9

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/ads/sk2;->d(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbcz;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/a42;->l(Lcom/google/android/gms/internal/ads/zzbcz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i42;->j:Lcom/google/android/gms/internal/ads/lb1;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/i42;->k:Z

    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/lb1;->g(ZLandroid/app/Activity;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final X5(Lcom/google/android/gms/internal/ads/gs;)V
    .locals 1

    const-string v0, "setAdListener must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i42;->h:Lcom/google/android/gms/internal/ads/a42;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/a42;->r(Lcom/google/android/gms/internal/ads/gs;)V

    return-void
.end method

.method public final Y1(Lcom/google/android/gms/internal/ads/tb0;)V
    .locals 0

    return-void
.end method

.method public final b6(Lcom/google/android/gms/internal/ads/ud0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i42;->i:Lcom/google/android/gms/internal/ads/hi2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/hi2;->I(Lcom/google/android/gms/internal/ads/ud0;)V

    return-void
.end method

.method public final e3(Lcom/google/android/gms/internal/ads/cu;)V
    .locals 1

    const-string v0, "setPaidEventListener must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i42;->h:Lcom/google/android/gms/internal/ads/a42;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i42;->f:Lcom/google/android/gms/internal/ads/gh2;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/gh2;->g(Lcom/google/android/gms/internal/ads/gx;)V
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
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "destroy must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i42;->j:Lcom/google/android/gms/internal/ads/lb1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xy0;->c()Lcom/google/android/gms/internal/ads/y31;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/y31;->Z0(Landroid/content/Context;)V
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

.method public final declared-synchronized h()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "isLoaded must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/i42;->G6()Z

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i42;->j:Lcom/google/android/gms/internal/ads/lb1;

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
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "loadAd must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i42;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/c2;->k(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbdg;->v:Lcom/google/android/gms/internal/ads/zzbcx;

    if-nez v0, :cond_1

    const-string p1, "Failed to load the ad because app ID is missing."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/i42;->h:Lcom/google/android/gms/internal/ads/a42;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 4
    invoke-static {v0, v2, v2}, Lcom/google/android/gms/internal/ads/sk2;->d(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbcz;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/a42;->O(Lcom/google/android/gms/internal/ads/zzbcz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v1

    .line 6
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/i42;->G6()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit p0

    return v1

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i42;->e:Landroid/content/Context;

    .line 7
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzbdg;->i:Z

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/nk2;->b(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/i42;->j:Lcom/google/android/gms/internal/ads/lb1;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i42;->f:Lcom/google/android/gms/internal/ads/gh2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/i42;->g:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/ads/zg2;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/i42;->d:Lcom/google/android/gms/internal/ads/zzbdl;

    .line 8
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zg2;-><init>(Lcom/google/android/gms/internal/ads/zzbdl;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/h42;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/h42;-><init>(Lcom/google/android/gms/internal/ads/i42;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/gh2;->a(Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/o42;Lcom/google/android/gms/internal/ads/p42;)Z

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

.method public final l6(Lcom/google/android/gms/internal/ads/zzbis;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized m()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "resume must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i42;->j:Lcom/google/android/gms/internal/ads/lb1;

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

.method public final declared-synchronized o()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "showInterstitial must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i42;->j:Lcom/google/android/gms/internal/ads/lb1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Interstitial can not be shown before loaded."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i42;->h:Lcom/google/android/gms/internal/ads/a42;

    const/16 v2, 0x9

    .line 3
    invoke-static {v2, v1, v1}, Lcom/google/android/gms/internal/ads/sk2;->d(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbcz;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/a42;->l(Lcom/google/android/gms/internal/ads/zzbcz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/i42;->k:Z

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/lb1;->g(ZLandroid/app/Activity;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final p0()Lcom/google/android/gms/internal/ads/ju;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized q()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i42;->j:Lcom/google/android/gms/internal/ads/lb1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xy0;->d()Lcom/google/android/gms/internal/ads/q21;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i42;->j:Lcom/google/android/gms/internal/ads/lb1;

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

.method public final declared-synchronized s0(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setImmersiveMode must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/i42;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final s5(Lcom/google/android/gms/internal/ads/zzbhg;)V
    .locals 0

    return-void
.end method

.method public final t()Lcom/google/android/gms/internal/ads/at;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i42;->h:Lcom/google/android/gms/internal/ads/a42;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i42;->j:Lcom/google/android/gms/internal/ads/lb1;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i42;->j:Lcom/google/android/gms/internal/ads/lb1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xy0;->d()Lcom/google/android/gms/internal/ads/q21;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i42;->j:Lcom/google/android/gms/internal/ads/lb1;

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
    .locals 0

    return-void
.end method

.method public final zzi()Lcom/google/android/gms/dynamic/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzt()V
    .locals 0

    return-void
.end method

.method public final zzu()Lcom/google/android/gms/internal/ads/zzbdl;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
