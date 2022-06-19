.class public final Lcom/google/android/gms/internal/ads/ev0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qj;
.implements Lcom/google/android/gms/internal/ads/t31;
.implements Lcom/google/android/gms/ads/internal/overlay/o;
.implements Lcom/google/android/gms/internal/ads/s31;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/zu0;

.field private final e:Lcom/google/android/gms/internal/ads/av0;

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/wn0;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/internal/ads/d70;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/d70<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/Executor;

.field private final i:Lcom/google/android/gms/common/util/e;

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final k:Lcom/google/android/gms/internal/ads/dv0;

.field private l:Z

.field private m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/a70;Lcom/google/android/gms/internal/ads/av0;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zu0;Lcom/google/android/gms/common/util/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ev0;->f:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ev0;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/google/android/gms/internal/ads/dv0;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dv0;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ev0;->k:Lcom/google/android/gms/internal/ads/dv0;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/ev0;->l:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ev0;->m:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ev0;->d:Lcom/google/android/gms/internal/ads/zu0;

    .line 5
    sget-object p4, Lcom/google/android/gms/internal/ads/o60;->b:Lcom/google/android/gms/internal/ads/l60;

    const-string v0, "google.afma.activeView.handleUpdate"

    .line 6
    invoke-virtual {p1, v0, p4, p4}, Lcom/google/android/gms/internal/ads/a70;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/j60;Lcom/google/android/gms/internal/ads/i60;)Lcom/google/android/gms/internal/ads/d70;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ev0;->g:Lcom/google/android/gms/internal/ads/d70;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ev0;->e:Lcom/google/android/gms/internal/ads/av0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ev0;->h:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ev0;->i:Lcom/google/android/gms/common/util/e;

    return-void
.end method

.method private final j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ev0;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/wn0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ev0;->d:Lcom/google/android/gms/internal/ads/zu0;

    .line 2
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zu0;->e(Lcom/google/android/gms/internal/ads/wn0;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ev0;->d:Lcom/google/android/gms/internal/ads/zu0;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zu0;->f()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized U(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ev0;->k:Lcom/google/android/gms/internal/ads/dv0;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/dv0;->b:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ev0;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized Y(Lcom/google/android/gms/internal/ads/pj;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ev0;->k:Lcom/google/android/gms/internal/ads/dv0;

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/pj;->j:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/dv0;->a:Z

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/dv0;->f:Lcom/google/android/gms/internal/ads/pj;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ev0;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized a3()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ev0;->k:Lcom/google/android/gms/internal/ads/dv0;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/dv0;->b:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ev0;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a6(I)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized b()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ev0;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ev0;->l:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ev0;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ev0;->k:Lcom/google/android/gms/internal/ads/dv0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ev0;->i:Lcom/google/android/gms/common/util/e;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/dv0;->d:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ev0;->e:Lcom/google/android/gms/internal/ads/av0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ev0;->k:Lcom/google/android/gms/internal/ads/dv0;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/av0;->a(Lcom/google/android/gms/internal/ads/dv0;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ev0;->f:Ljava/util/Set;

    .line 5
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/wn0;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ev0;->h:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/android/gms/internal/ads/cv0;

    .line 6
    invoke-direct {v4, v2, v0}, Lcom/google/android/gms/internal/ads/cv0;-><init>(Lcom/google/android/gms/internal/ads/wn0;Lorg/json/JSONObject;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ev0;->g:Lcom/google/android/gms/internal/ads/d70;

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/d70;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    const-string v1, "ActiveViewListener.callActiveViewJs"

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ti0;->b(Lcom/google/android/gms/internal/ads/r03;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Failed to call ActiveViewJS"

    .line 9
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/o1;->l(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 10
    :cond_1
    monitor-exit p0

    return-void

    .line 11
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ev0;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ev0;->j()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ev0;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(Lcom/google/android/gms/internal/ads/wn0;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ev0;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ev0;->d:Lcom/google/android/gms/internal/ads/zu0;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zu0;->d(Lcom/google/android/gms/internal/ads/wn0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final i(Ljava/lang/Object;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ev0;->m:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final declared-synchronized m2()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ev0;->k:Lcom/google/android/gms/internal/ads/dv0;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/dv0;->b:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ev0;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized p(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ev0;->k:Lcom/google/android/gms/internal/ads/dv0;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/dv0;->b:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ev0;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized r(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ev0;->k:Lcom/google/android/gms/internal/ads/dv0;

    const-string v0, "u"

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/dv0;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ev0;->b()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ev0;->j()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ev0;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final y4()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zzg()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ev0;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ev0;->d:Lcom/google/android/gms/internal/ads/zu0;

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zu0;->c(Lcom/google/android/gms/internal/ads/ev0;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ev0;->b()V
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
