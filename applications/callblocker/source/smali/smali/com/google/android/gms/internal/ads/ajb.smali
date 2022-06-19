.class public final Lcom/google/android/gms/internal/ads/ajb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/o;
.implements Lcom/google/android/gms/internal/ads/aqi;
.implements Lcom/google/android/gms/internal/ads/aql;
.implements Lcom/google/android/gms/internal/ads/dtr;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ais;

.field private final b:Lcom/google/android/gms/internal/ads/aiz;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/ads/act;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/ka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ka",
            "<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Lcom/google/android/gms/common/util/e;

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final h:Lcom/google/android/gms/internal/ads/ajd;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private i:Z

.field private j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/js;Lcom/google/android/gms/internal/ads/aiz;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/ais;Lcom/google/android/gms/common/util/e;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ajb;->c:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ajb;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/ajd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ajd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ajb;->h:Lcom/google/android/gms/internal/ads/ajd;

    .line 5
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/ajb;->i:Z

    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ajb;->j:Ljava/lang/ref/WeakReference;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ajb;->a:Lcom/google/android/gms/internal/ads/ais;

    .line 8
    const-string/jumbo v0, "google.afma.activeView.handleUpdate"

    sget-object v1, Lcom/google/android/gms/internal/ads/ji;->a:Lcom/google/android/gms/internal/ads/jj;

    sget-object v2, Lcom/google/android/gms/internal/ads/ji;->a:Lcom/google/android/gms/internal/ads/jj;

    .line 9
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/js;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/jg;Lcom/google/android/gms/internal/ads/jh;)Lcom/google/android/gms/internal/ads/ka;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ajb;->d:Lcom/google/android/gms/internal/ads/ka;

    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ajb;->b:Lcom/google/android/gms/internal/ads/aiz;

    .line 11
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ajb;->e:Ljava/util/concurrent/Executor;

    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ajb;->f:Lcom/google/android/gms/common/util/e;

    .line 13
    return-void
.end method

.method private final g()V
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajb;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/act;

    .line 32
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ajb;->a:Lcom/google/android/gms/internal/ads/ais;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ais;->b(Lcom/google/android/gms/internal/ads/act;)V

    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajb;->a:Lcom/google/android/gms/internal/ads/ais;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ais;->a()V

    .line 35
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajb;->h:Lcom/google/android/gms/internal/ads/ajd;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/ajd;->b:Z

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajb;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/act;)V
    .locals 1

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajb;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajb;->a:Lcom/google/android/gms/internal/ads/ais;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ais;->a(Lcom/google/android/gms/internal/ads/act;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/dtt;)V
    .locals 2

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajb;->h:Lcom/google/android/gms/internal/ads/ajd;

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/dtt;->j:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/ajd;->a:Z

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajb;->h:Lcom/google/android/gms/internal/ads/ajd;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/ajd;->e:Lcom/google/android/gms/internal/ads/dtt;

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajb;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ajb;->j:Ljava/lang/ref/WeakReference;

    .line 43
    return-void
.end method

.method public final declared-synchronized b()V
    .locals 3

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajb;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajb;->a:Lcom/google/android/gms/internal/ads/ais;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/ais;->a(Lcom/google/android/gms/internal/ads/ajb;)V

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajb;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_0
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajb;->h:Lcom/google/android/gms/internal/ads/ajd;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/ajd;->b:Z

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajb;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 2

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajb;->h:Lcom/google/android/gms/internal/ads/ajd;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/ajd;->b:Z

    .line 64
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajb;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajb;->h:Lcom/google/android/gms/internal/ads/ajd;

    const-string/jumbo v1, "u"

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ajd;->d:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajb;->e()V

    .line 56
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ajb;->g()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ajb;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public final declared-synchronized e()V
    .locals 5

    .prologue
    .line 14
    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajb;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 16
    :goto_0
    if-nez v0, :cond_2

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajb;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 15
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 19
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ajb;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajb;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajb;->h:Lcom/google/android/gms/internal/ads/ajd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ajb;->f:Lcom/google/android/gms/common/util/e;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/ajd;->c:J

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajb;->b:Lcom/google/android/gms/internal/ads/aiz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ajb;->h:Lcom/google/android/gms/internal/ads/ajd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/aiz;->a(Lcom/google/android/gms/internal/ads/ajd;)Lorg/json/JSONObject;

    move-result-object v1

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajb;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/act;

    .line 23
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ajb;->e:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/android/gms/internal/ads/aja;

    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/internal/ads/aja;-><init>(Lcom/google/android/gms/internal/ads/act;Lorg/json/JSONObject;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 28
    :catch_0
    move-exception v0

    .line 29
    :try_start_3
    const-string/jumbo v1, "Failed to call ActiveViewJS"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 14
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 25
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajb;->d:Lcom/google/android/gms/internal/ads/ka;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ka;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 26
    const-string/jumbo v1, "ActiveViewListener.callActiveViewJs"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/yk;->b(Lcom/google/android/gms/internal/ads/crt;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized f()V
    .locals 1

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ajb;->g()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ajb;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f_()V
    .locals 2

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ajb;->h:Lcom/google/android/gms/internal/ads/ajd;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/ajd;->b:Z

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ajb;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final h_()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method
