.class public final Lcom/google/android/gms/internal/ads/qj1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/kj1;

.field private final b:Lcom/google/android/gms/ads/internal/a;

.field private final c:Lcom/google/android/gms/internal/ads/ho0;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/gms/internal/ads/rn1;

.field private final f:Lcom/google/android/gms/internal/ads/jo2;

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Lcom/google/android/gms/internal/ads/u;

.field private final i:Lcom/google/android/gms/internal/ads/zzcgz;

.field private final j:Lcom/google/android/gms/internal/ads/c30;

.field private final k:Lcom/google/android/gms/internal/ads/dw1;

.field private final l:Lcom/google/android/gms/internal/ads/bp2;

.field private m:Lcom/google/android/gms/internal/ads/r03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/wn0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/oj1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/oj1;->c(Lcom/google/android/gms/internal/ads/oj1;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qj1;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/oj1;->g(Lcom/google/android/gms/internal/ads/oj1;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qj1;->g:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/oj1;->h(Lcom/google/android/gms/internal/ads/oj1;)Lcom/google/android/gms/internal/ads/u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qj1;->h:Lcom/google/android/gms/internal/ads/u;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/oj1;->i(Lcom/google/android/gms/internal/ads/oj1;)Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qj1;->i:Lcom/google/android/gms/internal/ads/zzcgz;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/oj1;->a(Lcom/google/android/gms/internal/ads/oj1;)Lcom/google/android/gms/ads/internal/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qj1;->b:Lcom/google/android/gms/ads/internal/a;

    new-instance v0, Lcom/google/android/gms/internal/ads/kj1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/kj1;-><init>(Lcom/google/android/gms/internal/ads/nj1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qj1;->a:Lcom/google/android/gms/internal/ads/kj1;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/oj1;->b(Lcom/google/android/gms/internal/ads/oj1;)Lcom/google/android/gms/internal/ads/ho0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qj1;->c:Lcom/google/android/gms/internal/ads/ho0;

    new-instance v0, Lcom/google/android/gms/internal/ads/c30;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/c30;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qj1;->j:Lcom/google/android/gms/internal/ads/c30;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/oj1;->f(Lcom/google/android/gms/internal/ads/oj1;)Lcom/google/android/gms/internal/ads/dw1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qj1;->k:Lcom/google/android/gms/internal/ads/dw1;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/oj1;->j(Lcom/google/android/gms/internal/ads/oj1;)Lcom/google/android/gms/internal/ads/bp2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qj1;->l:Lcom/google/android/gms/internal/ads/bp2;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/oj1;->d(Lcom/google/android/gms/internal/ads/oj1;)Lcom/google/android/gms/internal/ads/rn1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qj1;->e:Lcom/google/android/gms/internal/ads/rn1;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/oj1;->e(Lcom/google/android/gms/internal/ads/oj1;)Lcom/google/android/gms/internal/ads/jo2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qj1;->f:Lcom/google/android/gms/internal/ads/jo2;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/qj1;)Lcom/google/android/gms/internal/ads/kj1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/qj1;->a:Lcom/google/android/gms/internal/ads/kj1;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized b()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qj1;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qj1;->i:Lcom/google/android/gms/internal/ads/zzcgz;

    sget-object v2, Lcom/google/android/gms/internal/ads/kw;->i2:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v2

    .line 3
    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/qj1;->h:Lcom/google/android/gms/internal/ads/u;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/qj1;->b:Lcom/google/android/gms/ads/internal/a;

    .line 4
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/ho0;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;Ljava/lang/String;Lcom/google/android/gms/internal/ads/u;Lcom/google/android/gms/ads/internal/a;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/dj1;

    .line 5
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/dj1;-><init>(Lcom/google/android/gms/internal/ads/qj1;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qj1;->g:Ljava/util/concurrent/Executor;

    .line 6
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/k03;->j(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/nu2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qj1;->m:Lcom/google/android/gms/internal/ads/r03;

    const-string v1, "NativeJavascriptExecutor.initializeEngine"

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ti0;->a(Lcom/google/android/gms/internal/ads/r03;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qj1;->m:Lcom/google/android/gms/internal/ads/r03;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/ads/fj1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/fj1;-><init>(Lcom/google/android/gms/internal/ads/qj1;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qj1;->g:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/k03;->p(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/f03;Ljava/util/concurrent/Executor;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/qj1;->m:Lcom/google/android/gms/internal/ads/r03;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/r03;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qj1;->m:Lcom/google/android/gms/internal/ads/r03;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/ads/ej1;

    .line 2
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/ej1;-><init>(Lcom/google/android/gms/internal/ads/qj1;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qj1;->g:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/n20<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qj1;->m:Lcom/google/android/gms/internal/ads/r03;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/ads/gj1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/gj1;-><init>(Lcom/google/android/gms/internal/ads/qj1;Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qj1;->g:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/k03;->p(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/f03;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/n20<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qj1;->m:Lcom/google/android/gms/internal/ads/r03;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/ads/hj1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/hj1;-><init>(Lcom/google/android/gms/internal/ads/qj1;Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qj1;->g:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/k03;->p(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/f03;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized g(Ljava/lang/String;Ljava/util/Map;)V
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

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qj1;->m:Lcom/google/android/gms/internal/ads/r03;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/ij1;

    const-string v1, "sendMessageToNativeJs"

    invoke-direct {v0, p0, v1, p2}, Lcom/google/android/gms/internal/ads/ij1;-><init>(Lcom/google/android/gms/internal/ads/qj1;Ljava/lang/String;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/qj1;->g:Ljava/util/concurrent/Executor;

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/k03;->p(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/f03;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized h(Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/jj2;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qj1;->m:Lcom/google/android/gms/internal/ads/r03;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/ads/jj1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/jj1;-><init>(Lcom/google/android/gms/internal/ads/qj1;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/jj2;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qj1;->g:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/k03;->p(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/f03;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final i(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/n20<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/pj1;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/pj1;-><init>(Lcom/google/android/gms/internal/ads/qj1;Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;Lcom/google/android/gms/internal/ads/nj1;)V

    invoke-virtual {p0, p2, v6}, Lcom/google/android/gms/internal/ads/qj1;->e(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    return-void
.end method

.method final synthetic j(Ljava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/wn0;)Lcom/google/android/gms/internal/ads/r03;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qj1;->j:Lcom/google/android/gms/internal/ads/c30;

    invoke-virtual {v0, p3, p1, p2}, Lcom/google/android/gms/internal/ads/c30;->c(Lcom/google/android/gms/internal/ads/g50;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method final synthetic k(Lcom/google/android/gms/internal/ads/wn0;)Lcom/google/android/gms/internal/ads/wn0;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/qj1;->j:Lcom/google/android/gms/internal/ads/c30;

    const-string v3, "/result"

    invoke-interface {v1, v3, v2}, Lcom/google/android/gms/internal/ads/wn0;->l0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    .line 2
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/wn0;->c0()Lcom/google/android/gms/internal/ads/jp0;

    move-result-object v4

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/qj1;->a:Lcom/google/android/gms/internal/ads/kj1;

    move-object v7, v9

    move-object v8, v9

    move-object v6, v9

    new-instance v2, Lcom/google/android/gms/ads/internal/b;

    move-object v12, v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/qj1;->d:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v5}, Lcom/google/android/gms/ads/internal/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/hf0;Lcom/google/android/gms/internal/ads/zzcax;)V

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/qj1;->k:Lcom/google/android/gms/internal/ads/dw1;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/qj1;->l:Lcom/google/android/gms/internal/ads/bp2;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/qj1;->e:Lcom/google/android/gms/internal/ads/rn1;

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/qj1;->f:Lcom/google/android/gms/internal/ads/jo2;

    move-object/from16 v18, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 3
    invoke-interface/range {v4 .. v20}, Lcom/google/android/gms/internal/ads/jp0;->q0(Lcom/google/android/gms/internal/ads/kq;Lcom/google/android/gms/internal/ads/m10;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/internal/ads/o10;Lcom/google/android/gms/ads/internal/overlay/u;ZLcom/google/android/gms/internal/ads/q20;Lcom/google/android/gms/ads/internal/b;Lcom/google/android/gms/internal/ads/sa0;Lcom/google/android/gms/internal/ads/hf0;Lcom/google/android/gms/internal/ads/dw1;Lcom/google/android/gms/internal/ads/bp2;Lcom/google/android/gms/internal/ads/rn1;Lcom/google/android/gms/internal/ads/jo2;Lcom/google/android/gms/internal/ads/o20;Lcom/google/android/gms/internal/ads/qa1;)V

    return-object v1
.end method
