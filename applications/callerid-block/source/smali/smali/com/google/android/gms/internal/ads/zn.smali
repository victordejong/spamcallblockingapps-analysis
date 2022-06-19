.class public final Lcom/google/android/gms/internal/ads/zn;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/google/android/gms/ads/internal/util/d1;

.field private final c:Lcom/google/android/gms/internal/ads/do;

.field private d:Z

.field private e:Landroid/content/Context;

.field private f:Lcom/google/android/gms/internal/ads/zzbbq;

.field private g:Lcom/google/android/gms/internal/ads/r3;

.field private h:Ljava/lang/Boolean;

.field private final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final j:Lcom/google/android/gms/internal/ads/yn;

.field private final k:Ljava/lang/Object;

.field private l:Lcom/google/android/gms/internal/ads/rz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zn;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/ads/internal/util/d1;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/util/d1;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zn;->b:Lcom/google/android/gms/ads/internal/util/d1;

    new-instance v1, Lcom/google/android/gms/internal/ads/do;

    invoke-static {}, Lcom/google/android/gms/internal/ads/m03;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/do;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/a1;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zn;->c:Lcom/google/android/gms/internal/ads/do;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zn;->d:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zn;->g:Lcom/google/android/gms/internal/ads/r3;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zn;->h:Ljava/lang/Boolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zn;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/google/android/gms/internal/ads/yn;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/yn;-><init>(Lcom/google/android/gms/internal/ads/xn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zn;->j:Lcom/google/android/gms/internal/ads/yn;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zn;->k:Ljava/lang/Object;

    return-void
.end method

.method static synthetic q(Lcom/google/android/gms/internal/ads/zn;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zn;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic r(Lcom/google/android/gms/internal/ads/zn;)Lcom/google/android/gms/internal/ads/zzbbq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zn;->f:Lcom/google/android/gms/internal/ads/zzbbq;

    return-object p0
.end method

.method static synthetic s(Lcom/google/android/gms/internal/ads/zn;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zn;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic t(Lcom/google/android/gms/internal/ads/zn;)Lcom/google/android/gms/internal/ads/r3;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zn;->g:Lcom/google/android/gms/internal/ads/r3;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/r3;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zn;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zn;->g:Lcom/google/android/gms/internal/ads/r3;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zn;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zn;->h:Ljava/lang/Boolean;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zn;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zn;->h:Ljava/lang/Boolean;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zn;->j:Lcom/google/android/gms/internal/ads/yn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yn;->a()V

    return-void
.end method

.method public final e(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbq;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zn;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zn;->d:Z

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zn;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zn;->f:Lcom/google/android/gms/internal/ads/zzbbq;

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->g()Lcom/google/android/gms/internal/ads/st2;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zn;->c:Lcom/google/android/gms/internal/ads/do;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/st2;->b(Lcom/google/android/gms/internal/ads/rt2;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zn;->b:Lcom/google/android/gms/ads/internal/util/d1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zn;->e:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/util/d1;->D0(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zn;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zn;->f:Lcom/google/android/gms/internal/ads/zzbbq;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/ui;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbq;)Lcom/google/android/gms/internal/ads/wi;

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->m()Lcom/google/android/gms/internal/ads/s3;

    sget-object v1, Lcom/google/android/gms/internal/ads/v4;->c:Lcom/google/android/gms/internal/ads/p4;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/p4;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CsiReporterFactory: CSI is not enabled. No CSI reporter created."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/y0;->k(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/r3;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/r3;-><init>()V

    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zn;->g:Lcom/google/android/gms/internal/ads/r3;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/ads/xn;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/xn;-><init>(Lcom/google/android/gms/internal/ads/zn;)V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/util/z;->b()Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v1

    const-string v2, "AppState.registerCsiReporter"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/cp;->a(Lcom/google/android/gms/internal/ads/rz1;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zn;->d:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zn;->n()Lcom/google/android/gms/internal/ads/rz1;

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->d()Lcom/google/android/gms/ads/internal/util/l1;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzbbq;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/util/l1;->J(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final f()Landroid/content/res/Resources;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zn;->f:Lcom/google/android/gms/internal/ads/zzbbq;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbbq;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zn;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zn;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/so;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbbn; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "Cannot load resource from dynamite apk or local jar"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/po;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final g(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zn;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zn;->f:Lcom/google/android/gms/internal/ads/zzbbq;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ui;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbq;)Lcom/google/android/gms/internal/ads/wi;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/wi;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final h(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zn;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zn;->f:Lcom/google/android/gms/internal/ads/zzbbq;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ui;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbq;)Lcom/google/android/gms/internal/ads/wi;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/h5;->g:Lcom/google/android/gms/internal/ads/p4;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/p4;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/wi;->b(Ljava/lang/Throwable;Ljava/lang/String;F)V

    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zn;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zn;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public final k()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zn;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final l()Lcom/google/android/gms/ads/internal/util/a1;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zn;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zn;->b:Lcom/google/android/gms/ads/internal/util/d1;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final m()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zn;->e:Landroid/content/Context;

    return-object v0
.end method

.method public final n()Lcom/google/android/gms/internal/ads/rz1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/util/n;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zn;->e:Landroid/content/Context;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->y1:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zn;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zn;->l:Lcom/google/android/gms/internal/ads/rz1;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-object v1

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zo;->a:Lcom/google/android/gms/internal/ads/sz1;

    new-instance v2, Lcom/google/android/gms/internal/ads/wn;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/wn;-><init>(Lcom/google/android/gms/internal/ads/zn;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/sz1;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zn;->l:Lcom/google/android/gms/internal/ads/rz1;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kz1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v0

    return-object v0
.end method

.method public final o()Lcom/google/android/gms/internal/ads/do;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zn;->c:Lcom/google/android/gms/internal/ads/do;

    return-object v0
.end method

.method final synthetic p()Ljava/util/ArrayList;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zn;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/xj;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/common/g/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/g/b;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x1000

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/common/g/b;->f(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-object v1
.end method
