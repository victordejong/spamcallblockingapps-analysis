.class public final Lcom/google/android/gms/internal/ads/aju;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzp;
.implements Lcom/google/android/gms/internal/ads/asg;
.implements Lcom/google/android/gms/internal/ads/ash;
.implements Lcom/google/android/gms/internal/ads/eeg;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ajp;

.field private final b:Lcom/google/android/gms/internal/ads/ajs;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/adt;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/lz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/lz<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Lcom/google/android/gms/common/util/f;

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final h:Lcom/google/android/gms/internal/ads/ajw;

.field private i:Z

.field private j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/lw;Lcom/google/android/gms/internal/ads/ajs;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/ajp;Lcom/google/android/gms/common/util/f;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aju;->c:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aju;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/ajw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ajw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aju;->h:Lcom/google/android/gms/internal/ads/ajw;

    .line 5
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/aju;->i:Z

    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aju;->j:Ljava/lang/ref/WeakReference;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/aju;->a:Lcom/google/android/gms/internal/ads/ajp;

    .line 8
    sget-object p4, Lcom/google/android/gms/internal/ads/lm;->a:Lcom/google/android/gms/internal/ads/lj;

    .line 1014
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lw;->a()V

    .line 1015
    new-instance v0, Lcom/google/android/gms/internal/ads/lz;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/lw;->a:Lcom/google/android/gms/internal/ads/dbt;

    const-string v1, "google.afma.activeView.handleUpdate"

    invoke-direct {v0, p1, v1, p4, p4}, Lcom/google/android/gms/internal/ads/lz;-><init>(Lcom/google/android/gms/internal/ads/dbt;Ljava/lang/String;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/lh;)V

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aju;->d:Lcom/google/android/gms/internal/ads/lz;

    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aju;->b:Lcom/google/android/gms/internal/ads/ajs;

    .line 11
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/aju;->e:Ljava/util/concurrent/Executor;

    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/aju;->f:Lcom/google/android/gms/common/util/f;

    return-void
.end method

.method private final d()V
    .locals 6

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aju;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "/untrackActiveViewUnit"

    const-string v3, "/updateActiveView"

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/adt;

    .line 32
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aju;->a:Lcom/google/android/gms/internal/ads/ajp;

    .line 2015
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/ajp;->d:Lcom/google/android/gms/internal/ads/hi;

    invoke-interface {v1, v3, v5}, Lcom/google/android/gms/internal/ads/adt;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 2016
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/ajp;->e:Lcom/google/android/gms/internal/ads/hi;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/adt;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aju;->a:Lcom/google/android/gms/internal/ads/ajp;

    .line 2018
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ajp;->a:Lcom/google/android/gms/internal/ads/lw;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/ajp;->d:Lcom/google/android/gms/internal/ads/hi;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/lw;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 2019
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ajp;->a:Lcom/google/android/gms/internal/ads/lw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ajp;->e:Lcom/google/android/gms/internal/ads/hi;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/lw;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 5

    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aju;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aju;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    .line 19
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aju;->i:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aju;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 20
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aju;->h:Lcom/google/android/gms/internal/ads/ajw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aju;->f:Lcom/google/android/gms/common/util/f;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/ajw;->c:J

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aju;->b:Lcom/google/android/gms/internal/ads/ajs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aju;->h:Lcom/google/android/gms/internal/ads/ajw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ajs;->a(Lcom/google/android/gms/internal/ads/ajw;)Lorg/json/JSONObject;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aju;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/adt;

    .line 23
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aju;->e:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/android/gms/internal/ads/ajx;

    invoke-direct {v4, v2, v0}, Lcom/google/android/gms/internal/ads/ajx;-><init>(Lcom/google/android/gms/internal/ads/adt;Lorg/json/JSONObject;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 25
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aju;->d:Lcom/google/android/gms/internal/ads/lz;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/lz;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    const-string v1, "ActiveViewListener.callActiveViewJs"

    .line 2003
    new-instance v2, Lcom/google/android/gms/internal/ads/zn;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zn;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zd;->f:Lcom/google/android/gms/internal/ads/dbs;

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbi;Ljava/util/concurrent/Executor;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "Failed to call ActiveViewJS"

    .line 29
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aju;->h:Lcom/google/android/gms/internal/ads/ajw;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/ajw;->b:Z

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aju;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/adt;)V
    .locals 3

    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aju;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aju;->a:Lcom/google/android/gms/internal/ads/ajp;

    const-string v1, "/updateActiveView"

    .line 3012
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ajp;->d:Lcom/google/android/gms/internal/ads/hi;

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/ads/adt;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    const-string v1, "/untrackActiveViewUnit"

    .line 3013
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ajp;->e:Lcom/google/android/gms/internal/ads/hi;

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/adt;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/eeh;)V
    .locals 2

    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aju;->h:Lcom/google/android/gms/internal/ads/ajw;

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/eeh;->j:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/ajw;->a:Z

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aju;->h:Lcom/google/android/gms/internal/ads/ajw;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/ajw;->e:Lcom/google/android/gms/internal/ads/eeh;

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aju;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aju;->j:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final declared-synchronized b()V
    .locals 4

    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aju;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aju;->a:Lcom/google/android/gms/internal/ads/ajp;

    .line 4008
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ajp;->a:Lcom/google/android/gms/internal/ads/lw;

    const-string v2, "/updateActiveView"

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/ajp;->d:Lcom/google/android/gms/internal/ads/hi;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/lw;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 4009
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ajp;->a:Lcom/google/android/gms/internal/ads/lw;

    const-string v2, "/untrackActiveViewUnit"

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/ajp;->e:Lcom/google/android/gms/internal/ads/hi;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/lw;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 4010
    iput-object p0, v0, Lcom/google/android/gms/internal/ads/ajp;->c:Lcom/google/android/gms/internal/ads/aju;

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aju;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 51
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aju;->h:Lcom/google/android/gms/internal/ads/ajw;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/ajw;->b:Z

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aju;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    .line 36
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aju;->d()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aju;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 54
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aju;->h:Lcom/google/android/gms/internal/ads/ajw;

    const-string v0, "u"

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/ajw;->d:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aju;->a()V

    .line 56
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aju;->d()V

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/aju;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onPause()V
    .locals 2

    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aju;->h:Lcom/google/android/gms/internal/ads/ajw;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/ajw;->b:Z

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aju;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onResume()V
    .locals 2

    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aju;->h:Lcom/google/android/gms/internal/ads/ajw;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/ajw;->b:Z

    .line 64
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aju;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onUserLeaveHint()V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzl;)V
    .locals 0

    return-void
.end method

.method public final zzvz()V
    .locals 0

    return-void
.end method
