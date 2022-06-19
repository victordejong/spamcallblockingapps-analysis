.class public final Lcom/google/android/gms/internal/ads/vi2;
.super Lcom/google/android/gms/internal/ads/ee0;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/ri2;

.field private final e:Lcom/google/android/gms/internal/ads/hi2;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/google/android/gms/internal/ads/sj2;

.field private final h:Landroid/content/Context;

.field private i:Lcom/google/android/gms/internal/ads/fk1;

.field private j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/ri2;Landroid/content/Context;Lcom/google/android/gms/internal/ads/hi2;Lcom/google/android/gms/internal/ads/sj2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ee0;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vi2;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vi2;->d:Lcom/google/android/gms/internal/ads/ri2;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/vi2;->e:Lcom/google/android/gms/internal/ads/hi2;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/vi2;->g:Lcom/google/android/gms/internal/ads/sj2;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/vi2;->h:Landroid/content/Context;

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

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/vi2;->j:Z

    return-void
.end method

.method static synthetic F6(Lcom/google/android/gms/internal/ads/vi2;)Lcom/google/android/gms/internal/ads/fk1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/vi2;->i:Lcom/google/android/gms/internal/ads/fk1;

    return-object p0
.end method

.method static synthetic G6(Lcom/google/android/gms/internal/ads/vi2;Lcom/google/android/gms/internal/ads/fk1;)Lcom/google/android/gms/internal/ads/fk1;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vi2;->i:Lcom/google/android/gms/internal/ads/fk1;

    return-object p1
.end method

.method private final declared-synchronized H6(Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/internal/ads/me0;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vi2;->e:Lcom/google/android/gms/internal/ads/hi2;

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/hi2;->u(Lcom/google/android/gms/internal/ads/me0;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/vi2;->h:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/c2;->k(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzbdg;->v:Lcom/google/android/gms/internal/ads/zzbcx;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Failed to load the ad because app ID is missing."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vi2;->e:Lcom/google/android/gms/internal/ads/hi2;

    const/4 p2, 0x4

    .line 5
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/internal/ads/sk2;->d(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbcz;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object p2

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/hi2;->O(Lcom/google/android/gms/internal/ads/zzbcz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :goto_0
    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/vi2;->i:Lcom/google/android/gms/internal/ads/fk1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    new-instance p2, Lcom/google/android/gms/internal/ads/ji2;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/ji2;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vi2;->d:Lcom/google/android/gms/internal/ads/ri2;

    .line 8
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/ri2;->i(I)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/vi2;->d:Lcom/google/android/gms/internal/ads/ri2;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vi2;->f:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/ads/ui2;

    .line 9
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ui2;-><init>(Lcom/google/android/gms/internal/ads/vi2;)V

    invoke-virtual {p3, p1, v0, p2, v1}, Lcom/google/android/gms/internal/ads/ri2;->a(Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/o42;Lcom/google/android/gms/internal/ads/p42;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized E0(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setImmersiveMode must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/vi2;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized I4(Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/internal/ads/me0;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x3

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/vi2;->H6(Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/internal/ads/me0;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized L3(Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/internal/ads/me0;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/vi2;->H6(Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/internal/ads/me0;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized M3(Lcom/google/android/gms/internal/ads/zzcdg;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vi2;->g:Lcom/google/android/gms/internal/ads/sj2;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzcdg;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/sj2;->a:Ljava/lang/String;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcdg;->e:Ljava/lang/String;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/sj2;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final T1(Lcom/google/android/gms/internal/ads/zt;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vi2;->e:Lcom/google/android/gms/internal/ads/hi2;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/hi2;->y(Lcom/google/android/gms/internal/ads/hr2;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vi2;->e:Lcom/google/android/gms/internal/ads/hi2;

    new-instance v1, Lcom/google/android/gms/internal/ads/ti2;

    .line 2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/ti2;-><init>(Lcom/google/android/gms/internal/ads/vi2;Lcom/google/android/gms/internal/ads/zt;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/hi2;->y(Lcom/google/android/gms/internal/ads/hr2;)V

    return-void
.end method

.method public final declared-synchronized U(Lcom/google/android/gms/dynamic/a;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/vi2;->j:Z

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/vi2;->V0(Lcom/google/android/gms/dynamic/a;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized V0(Lcom/google/android/gms/dynamic/a;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vi2;->i:Lcom/google/android/gms/internal/ads/fk1;

    if-nez v0, :cond_0

    const-string p1, "Rewarded can not be shown before loaded"

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vi2;->e:Lcom/google/android/gms/internal/ads/hi2;

    const/16 p2, 0x9

    const/4 v0, 0x0

    .line 3
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/internal/ads/sk2;->d(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbcz;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/hi2;->l(Lcom/google/android/gms/internal/ads/zzbcz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vi2;->i:Lcom/google/android/gms/internal/ads/fk1;

    .line 6
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/fk1;->g(ZLandroid/app/Activity;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f5(Lcom/google/android/gms/internal/ads/ie0;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vi2;->e:Lcom/google/android/gms/internal/ads/hi2;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/hi2;->v(Lcom/google/android/gms/internal/ads/ie0;)V

    return-void
.end method

.method public final declared-synchronized g()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vi2;->i:Lcom/google/android/gms/internal/ads/fk1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xy0;->d()Lcom/google/android/gms/internal/ads/q21;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vi2;->i:Lcom/google/android/gms/internal/ads/fk1;

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

.method public final h2(Lcom/google/android/gms/internal/ads/oe0;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vi2;->e:Lcom/google/android/gms/internal/ads/hi2;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/hi2;->J(Lcom/google/android/gms/internal/ads/oe0;)V

    return-void
.end method

.method public final i()Lcom/google/android/gms/internal/ads/ce0;
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vi2;->i:Lcom/google/android/gms/internal/ads/fk1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fk1;->i()Lcom/google/android/gms/internal/ads/ce0;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/internal/ads/fu;
    .locals 2

    .line 1
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

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vi2;->i:Lcom/google/android/gms/internal/ads/fk1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xy0;->d()Lcom/google/android/gms/internal/ads/q21;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final t5(Lcom/google/android/gms/internal/ads/cu;)V
    .locals 1

    const-string v0, "setOnPaidEventListener must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vi2;->e:Lcom/google/android/gms/internal/ads/hi2;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/hi2;->H(Lcom/google/android/gms/internal/ads/cu;)V

    return-void
.end method

.method public final zzg()Landroid/os/Bundle;
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vi2;->i:Lcom/google/android/gms/internal/ads/fk1;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fk1;->l()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    return-object v0
.end method

.method public final zzi()Z
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vi2;->i:Lcom/google/android/gms/internal/ads/fk1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fk1;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
