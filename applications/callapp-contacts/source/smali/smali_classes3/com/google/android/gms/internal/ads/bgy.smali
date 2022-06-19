.class public final Lcom/google/android/gms/internal/ads/bgy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/bhh;

.field final b:Landroid/content/Context;

.field final c:Lcom/google/android/gms/internal/ads/bli;

.field final d:Lcom/google/android/gms/internal/ads/cty;

.field final e:Lcom/google/android/gms/internal/ads/hu;

.field final f:Lcom/google/android/gms/internal/ads/brs;

.field final g:Lcom/google/android/gms/internal/ads/cus;

.field private final h:Lcom/google/android/gms/ads/internal/zzb;

.field private final i:Lcom/google/android/gms/internal/ads/aeb;

.field private final j:Ljava/util/concurrent/Executor;

.field private final k:Lcom/google/android/gms/internal/ads/die;

.field private final l:Lcom/google/android/gms/internal/ads/zzbar;

.field private m:Lcom/google/android/gms/internal/ads/dbt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/adt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bhm;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/bhm;->a(Lcom/google/android/gms/internal/ads/bhm;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bgy;->b:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/bhm;->b(Lcom/google/android/gms/internal/ads/bhm;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bgy;->j:Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/bhm;->c(Lcom/google/android/gms/internal/ads/bhm;)Lcom/google/android/gms/internal/ads/die;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bgy;->k:Lcom/google/android/gms/internal/ads/die;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/bhm;->d(Lcom/google/android/gms/internal/ads/bhm;)Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bgy;->l:Lcom/google/android/gms/internal/ads/zzbar;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/bhm;->e(Lcom/google/android/gms/internal/ads/bhm;)Lcom/google/android/gms/ads/internal/zzb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bgy;->h:Lcom/google/android/gms/ads/internal/zzb;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/bhh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/bhh;-><init>(Lcom/google/android/gms/internal/ads/bhd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bgy;->a:Lcom/google/android/gms/internal/ads/bhh;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/bhm;->f(Lcom/google/android/gms/internal/ads/bhm;)Lcom/google/android/gms/internal/ads/aeb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bgy;->i:Lcom/google/android/gms/internal/ads/aeb;

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/hu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/hu;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bgy;->e:Lcom/google/android/gms/internal/ads/hu;

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/bhm;->g(Lcom/google/android/gms/internal/ads/bhm;)Lcom/google/android/gms/internal/ads/brs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bgy;->f:Lcom/google/android/gms/internal/ads/brs;

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/bhm;->h(Lcom/google/android/gms/internal/ads/bhm;)Lcom/google/android/gms/internal/ads/cus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bgy;->g:Lcom/google/android/gms/internal/ads/cus;

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/bhm;->i(Lcom/google/android/gms/internal/ads/bhm;)Lcom/google/android/gms/internal/ads/bli;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bgy;->c:Lcom/google/android/gms/internal/ads/bli;

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/bhm;->j(Lcom/google/android/gms/internal/ads/bhm;)Lcom/google/android/gms/internal/ads/cty;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bgy;->d:Lcom/google/android/gms/internal/ads/cty;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgy;->m:Lcom/google/android/gms/internal/ads/dbt;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 30
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 31
    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/ads/bha;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/bha;-><init>(Lcom/google/android/gms/internal/ads/bgy;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bgy;->j:Ljava/util/concurrent/Executor;

    .line 2019
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a()V
    .locals 8

    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bgy;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bgy;->l:Lcom/google/android/gms/internal/ads/zzbar;

    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->bR:Lcom/google/android/gms/internal/ads/af;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bgy;->k:Lcom/google/android/gms/internal/ads/die;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bgy;->h:Lcom/google/android/gms/ads/internal/zzb;

    const/4 v0, 0x0

    .line 1003
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/ads/aea;

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aea;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/die;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/ads/internal/zzb;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zd;->e:Lcom/google/android/gms/internal/ads/dbs;

    .line 1019
    invoke-static {v6, v7, v0}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    .line 20
    new-instance v1, Lcom/google/android/gms/internal/ads/bhb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bhb;-><init>(Lcom/google/android/gms/internal/ads/bgy;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bgy;->j:Ljava/util/concurrent/Executor;

    .line 1020
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/cxu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bgy;->m:Lcom/google/android/gms/internal/ads/dbt;

    const-string v1, "NativeJavascriptExecutor.initializeEngine"

    .line 22
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zl;->a(Lcom/google/android/gms/internal/ads/dbt;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/coz;)V
    .locals 2

    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgy;->m:Lcom/google/android/gms/internal/ads/dbt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 45
    monitor-exit p0

    return-void

    .line 46
    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/ads/bhi;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/bhi;-><init>(Lcom/google/android/gms/internal/ads/bgy;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/coz;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bgy;->j:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbi;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/hi<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgy;->m:Lcom/google/android/gms/internal/ads/dbt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 33
    monitor-exit p0

    return-void

    .line 34
    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/ads/bhc;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/bhc;-><init>(Lcom/google/android/gms/internal/ads/bgy;Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bgy;->j:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbi;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgy;->m:Lcom/google/android/gms/internal/ads/dbt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 41
    monitor-exit p0

    return-void

    .line 42
    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/ads/bhf;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/bhf;-><init>(Lcom/google/android/gms/internal/ads/bgy;Ljava/lang/String;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bgy;->j:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbi;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/hi<",
            "TT;>;)V"
        }
    .end annotation

    .line 48
    new-instance v6, Lcom/google/android/gms/internal/ads/bhl;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/bhl;-><init>(Lcom/google/android/gms/internal/ads/bgy;Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;Lcom/google/android/gms/internal/ads/bhd;)V

    invoke-virtual {p0, p2, v6}, Lcom/google/android/gms/internal/ads/bgy;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    return-void
.end method

.method public final declared-synchronized b()V
    .locals 3

    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgy;->m:Lcom/google/android/gms/internal/ads/dbt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 25
    monitor-exit p0

    return-void

    .line 26
    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/ads/bhd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bhd;-><init>(Lcom/google/android/gms/internal/ads/bgy;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bgy;->j:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbi;Ljava/util/concurrent/Executor;)V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bgy;->m:Lcom/google/android/gms/internal/ads/dbt;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/hi<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgy;->m:Lcom/google/android/gms/internal/ads/dbt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 37
    monitor-exit p0

    return-void

    .line 38
    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/ads/bhg;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/bhg;-><init>(Lcom/google/android/gms/internal/ads/bgy;Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bgy;->j:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbi;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
