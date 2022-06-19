.class public final Lcom/google/android/gms/internal/ads/rk1;
.super Lcom/google/android/gms/internal/ads/qk;
.source ""


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/nk1;

.field private final c:Lcom/google/android/gms/internal/ads/dk1;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/android/gms/internal/ads/nl1;

.field private final f:Landroid/content/Context;

.field private g:Lcom/google/android/gms/internal/ads/un0;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private h:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/nk1;Landroid/content/Context;Lcom/google/android/gms/internal/ads/dk1;Lcom/google/android/gms/internal/ads/nl1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/qk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rk1;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rk1;->b:Lcom/google/android/gms/internal/ads/nk1;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/rk1;->c:Lcom/google/android/gms/internal/ads/dk1;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/rk1;->e:Lcom/google/android/gms/internal/ads/nl1;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/rk1;->f:Landroid/content/Context;

    sget-object p1, Lcom/google/android/gms/internal/ads/m3;->p0:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/rk1;->h:Z

    return-void
.end method

.method static synthetic A6(Lcom/google/android/gms/internal/ads/rk1;)Lcom/google/android/gms/internal/ads/un0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/rk1;->g:Lcom/google/android/gms/internal/ads/un0;

    return-object p0
.end method

.method static synthetic B6(Lcom/google/android/gms/internal/ads/rk1;Lcom/google/android/gms/internal/ads/un0;)Lcom/google/android/gms/internal/ads/un0;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rk1;->g:Lcom/google/android/gms/internal/ads/un0;

    return-object p1
.end method

.method private final declared-synchronized C6(Lcom/google/android/gms/internal/ads/zzys;Lcom/google/android/gms/internal/ads/yk;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rk1;->c:Lcom/google/android/gms/internal/ads/dk1;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/dk1;->p(Lcom/google/android/gms/internal/ads/yk;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->d()Lcom/google/android/gms/ads/internal/util/l1;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/rk1;->f:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/l1;->j(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzys;->t:Lcom/google/android/gms/internal/ads/zzyk;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Failed to load the ad because app ID is missing."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rk1;->c:Lcom/google/android/gms/internal/ads/dk1;

    const/4 p2, 0x4

    invoke-static {p2, v0, v0}, Lcom/google/android/gms/internal/ads/nm1;->d(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzym;)Lcom/google/android/gms/internal/ads/zzym;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/dk1;->f0(Lcom/google/android/gms/internal/ads/zzym;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/rk1;->g:Lcom/google/android/gms/internal/ads/un0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    new-instance p2, Lcom/google/android/gms/internal/ads/fk1;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/fk1;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rk1;->b:Lcom/google/android/gms/internal/ads/nk1;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/nk1;->i(I)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/rk1;->b:Lcom/google/android/gms/internal/ads/nk1;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rk1;->d:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/ads/qk1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/qk1;-><init>(Lcom/google/android/gms/internal/ads/rk1;)V

    invoke-virtual {p3, p1, v0, p2, v1}, Lcom/google/android/gms/internal/ads/nk1;->a(Lcom/google/android/gms/internal/ads/zzys;Ljava/lang/String;Lcom/google/android/gms/internal/ads/t71;Lcom/google/android/gms/internal/ads/u71;)Z
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

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/rk1;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final H2(Lcom/google/android/gms/internal/ads/uk;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rk1;->c:Lcom/google/android/gms/internal/ads/dk1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dk1;->x(Lcom/google/android/gms/internal/ads/uk;)V

    return-void
.end method

.method public final L3(Lcom/google/android/gms/internal/ads/g1;)V
    .locals 1

    const-string v0, "setOnPaidEventListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rk1;->c:Lcom/google/android/gms/internal/ads/dk1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dk1;->I(Lcom/google/android/gms/internal/ads/g1;)V

    return-void
.end method

.method public final declared-synchronized R(Lcom/google/android/gms/dynamic/a;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/rk1;->h:Z

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/rk1;->w1(Lcom/google/android/gms/dynamic/a;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final X3(Lcom/google/android/gms/internal/ads/zk;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rk1;->c:Lcom/google/android/gms/internal/ads/dk1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dk1;->N(Lcom/google/android/gms/internal/ads/zk;)V

    return-void
.end method

.method public final declared-synchronized a1(Lcom/google/android/gms/internal/ads/zzaxz;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rk1;->e:Lcom/google/android/gms/internal/ads/nl1;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzaxz;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/nl1;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaxz;->c:Ljava/lang/String;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/nl1;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final g()Landroid/os/Bundle;
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rk1;->g:Lcom/google/android/gms/internal/ads/un0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/un0;->l()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    return-object v0
.end method

.method public final declared-synchronized h()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rk1;->g:Lcom/google/android/gms/internal/ads/un0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u30;->d()Lcom/google/android/gms/internal/ads/k70;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rk1;->g:Lcom/google/android/gms/internal/ads/un0;

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

.method public final i()Z
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rk1;->g:Lcom/google/android/gms/internal/ads/un0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/un0;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k()Lcom/google/android/gms/internal/ads/ok;
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rk1;->g:Lcom/google/android/gms/internal/ads/un0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/un0;->i()Lcom/google/android/gms/internal/ads/ok;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized l1(Lcom/google/android/gms/internal/ads/zzys;Lcom/google/android/gms/internal/ads/yk;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/rk1;->C6(Lcom/google/android/gms/internal/ads/zzys;Lcom/google/android/gms/internal/ads/yk;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final m()Lcom/google/android/gms/internal/ads/j1;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->o4:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rk1;->g:Lcom/google/android/gms/internal/ads/un0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u30;->d()Lcom/google/android/gms/internal/ads/k70;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final declared-synchronized w1(Lcom/google/android/gms/dynamic/a;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rk1;->g:Lcom/google/android/gms/internal/ads/un0;

    if-nez v0, :cond_0

    const-string p1, "Rewarded can not be shown before loaded"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rk1;->c:Lcom/google/android/gms/internal/ads/dk1;

    const/16 p2, 0x9

    const/4 v0, 0x0

    invoke-static {p2, v0, v0}, Lcom/google/android/gms/internal/ads/nm1;->d(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzym;)Lcom/google/android/gms/internal/ads/zzym;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/dk1;->B0(Lcom/google/android/gms/internal/ads/zzym;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rk1;->g:Lcom/google/android/gms/internal/ads/un0;

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/un0;->g(ZLandroid/app/Activity;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized w2(Lcom/google/android/gms/internal/ads/zzys;Lcom/google/android/gms/internal/ads/yk;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/rk1;->C6(Lcom/google/android/gms/internal/ads/zzys;Lcom/google/android/gms/internal/ads/yk;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final w3(Lcom/google/android/gms/internal/ads/d1;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rk1;->c:Lcom/google/android/gms/internal/ads/dk1;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/dk1;->C(Lcom/google/android/gms/internal/ads/zs1;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rk1;->c:Lcom/google/android/gms/internal/ads/dk1;

    new-instance v1, Lcom/google/android/gms/internal/ads/pk1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/pk1;-><init>(Lcom/google/android/gms/internal/ads/rk1;Lcom/google/android/gms/internal/ads/d1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dk1;->C(Lcom/google/android/gms/internal/ads/zs1;)V

    return-void
.end method
