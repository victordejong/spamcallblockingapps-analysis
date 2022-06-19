.class public Ld6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld6/a$a;,
        Ld6/a$b;
    }
.end annotation


# static fields
.field public static final q:Lg6/a;

.field public static volatile r:Ld6/a;


# instance fields
.field public final a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Ld6/a$b;",
            ">;>;"
        }
    .end annotation
.end field

.field public e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ld6/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final g:Lm6/e;

.field public final h:Le6/a;

.field public final i:Lb0/a;

.field public j:Lc0/h;

.field public k:Ln6/e;

.field public l:Ln6/e;

.field public m:Lo6/d;

.field public n:Z

.field public o:Z

.field public p:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lg6/a;->b()Lg6/a;

    move-result-object v0

    sput-object v0, Ld6/a;->q:Lg6/a;

    return-void
.end method

.method public constructor <init>(Lm6/e;Lb0/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Ld6/a;->a:Ljava/util/WeakHashMap;

    .line 3
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Ld6/a;->b:Ljava/util/WeakHashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ld6/a;->c:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ld6/a;->d:Ljava/util/Set;

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ld6/a;->e:Ljava/util/Set;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ld6/a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    sget-object v0, Lo6/d;->d:Lo6/d;

    iput-object v0, p0, Ld6/a;->m:Lo6/d;

    .line 9
    iput-boolean v1, p0, Ld6/a;->n:Z

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Ld6/a;->o:Z

    .line 11
    iput-boolean v1, p0, Ld6/a;->p:Z

    .line 12
    iput-object p1, p0, Ld6/a;->g:Lm6/e;

    .line 13
    iput-object p2, p0, Ld6/a;->i:Lb0/a;

    .line 14
    invoke-static {}, Le6/a;->e()Le6/a;

    move-result-object p1

    iput-object p1, p0, Ld6/a;->h:Le6/a;

    .line 15
    iput-boolean v0, p0, Ld6/a;->p:Z

    .line 16
    new-instance p1, Lc0/h;

    invoke-direct {p1}, Lc0/h;-><init>()V

    iput-object p1, p0, Ld6/a;->j:Lc0/h;

    return-void
.end method

.method public static a()Ld6/a;
    .locals 4

    .line 1
    sget-object v0, Ld6/a;->r:Ld6/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Ld6/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Ld6/a;->r:Ld6/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ld6/a;

    .line 5
    sget-object v2, Lm6/e;->s:Lm6/e;

    .line 6
    new-instance v3, Lb0/a;

    invoke-direct {v3}, Lb0/a;-><init>()V

    invoke-direct {v1, v2, v3}, Ld6/a;-><init>(Lm6/e;Lb0/a;)V

    sput-object v1, Ld6/a;->r:Ld6/a;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Ld6/a;->r:Ld6/a;

    return-object v0
.end method

.method public static b(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    const-string v0, "_st_"

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c(Ljava/lang/String;J)V
    .locals 5

    .line 1
    iget-object v0, p0, Ld6/a;->c:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ld6/a;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Ld6/a;->c:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Ld6/a;->c:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, p2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ld6/a;->p:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v0, 0x1000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final e(Landroid/app/Activity;)V
    .locals 9

    .line 1
    iget-object v0, p0, Ld6/a;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ld6/a;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/metrics/Trace;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, p0, Ld6/a;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Ld6/a;->j:Lc0/h;

    .line 5
    iget-object v1, v1, Lc0/h;->a:Lc0/h$b;

    invoke-virtual {v1, p1}, Lc0/h$b;->b(Landroid/app/Activity;)[Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 6
    aget-object v1, v1, v2

    if-eqz v1, :cond_5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 7
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 8
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 9
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    add-int/2addr v3, v7

    const/16 v8, 0x2bc

    if-le v6, v8, :cond_2

    add-int/2addr v5, v7

    :cond_2
    const/16 v8, 0x10

    if-le v6, v8, :cond_3

    add-int/2addr v4, v7

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-lez v2, :cond_6

    const-string v1, "_fr_tot"

    int-to-long v6, v2

    .line 10
    invoke-virtual {v0, v1, v6, v7}, Lcom/google/firebase/perf/metrics/Trace;->putMetric(Ljava/lang/String;J)V

    :cond_6
    if-lez v4, :cond_7

    const-string v1, "_fr_slo"

    int-to-long v6, v4

    .line 11
    invoke-virtual {v0, v1, v6, v7}, Lcom/google/firebase/perf/metrics/Trace;->putMetric(Ljava/lang/String;J)V

    :cond_7
    if-lez v5, :cond_8

    const-string v1, "_fr_fzn"

    int-to-long v6, v5

    .line 12
    invoke-virtual {v0, v1, v6, v7}, Lcom/google/firebase/perf/metrics/Trace;->putMetric(Ljava/lang/String;J)V

    .line 13
    :cond_8
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ln6/f;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 14
    sget-object v1, Ld6/a;->q:Lg6/a;

    const-string v3, "sendScreenTrace name:"

    invoke-static {v3}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 15
    invoke-static {p1}, Ld6/a;->b(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " _fr_tot:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " _fr_slo:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " _fr_fzn:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {v1, p1}, Lg6/a;->a(Ljava/lang/String;)V

    .line 17
    :cond_9
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    return-void
.end method

.method public final f(Ljava/lang/String;Ln6/e;Ln6/e;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld6/a;->h:Le6/a;

    invoke-virtual {v0}, Le6/a;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lo6/m;->R()Lo6/m$b;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/i$a;->n()V

    .line 4
    iget-object v1, v0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v1, Lo6/m;

    invoke-static {v1, p1}, Lo6/m;->z(Lo6/m;Ljava/lang/String;)V

    .line 5
    iget-wide v1, p2, Ln6/e;->a:J

    .line 6
    invoke-virtual {v0, v1, v2}, Lo6/m$b;->r(J)Lo6/m$b;

    .line 7
    invoke-virtual {p2, p3}, Ln6/e;->b(Ln6/e;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lo6/m$b;->s(J)Lo6/m$b;

    .line 8
    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/perf/session/SessionManager;->perfSession()Lk6/a;

    move-result-object p1

    invoke-virtual {p1}, Lk6/a;->a()Lo6/k;

    move-result-object p1

    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/i$a;->n()V

    .line 10
    iget-object p2, v0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast p2, Lo6/m;

    invoke-static {p2, p1}, Lo6/m;->E(Lo6/m;Lo6/k;)V

    .line 11
    iget-object p1, p0, Ld6/a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    .line 12
    iget-object p2, p0, Ld6/a;->c:Ljava/util/Map;

    monitor-enter p2

    .line 13
    :try_start_0
    iget-object p3, p0, Ld6/a;->c:Ljava/util/Map;

    .line 14
    invoke-virtual {v0}, Lcom/google/protobuf/i$a;->n()V

    .line 15
    iget-object v1, v0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v1, Lo6/m;

    invoke-static {v1}, Lo6/m;->A(Lo6/m;)Ljava/util/Map;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/r;

    invoke-virtual {v1, p3}, Lcom/google/protobuf/r;->putAll(Ljava/util/Map;)V

    if-eqz p1, :cond_1

    const-string p3, "_tsns"

    int-to-long v1, p1

    .line 16
    invoke-virtual {v0, p3, v1, v2}, Lo6/m$b;->q(Ljava/lang/String;J)Lo6/m$b;

    .line 17
    :cond_1
    iget-object p1, p0, Ld6/a;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 18
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    iget-object p1, p0, Ld6/a;->g:Lm6/e;

    invoke-virtual {v0}, Lcom/google/protobuf/i$a;->l()Lcom/google/protobuf/i;

    move-result-object p2

    check-cast p2, Lo6/m;

    sget-object p3, Lo6/d;->e:Lo6/d;

    .line 20
    iget-object v0, p1, Lm6/e;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ll6/c;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, p3, v2}, Ll6/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final g(Lo6/d;)V
    .locals 3

    .line 1
    iput-object p1, p0, Ld6/a;->m:Lo6/d;

    .line 2
    iget-object p1, p0, Ld6/a;->d:Ljava/util/Set;

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Ld6/a;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld6/a$b;

    if-eqz v1, :cond_0

    .line 6
    iget-object v2, p0, Ld6/a;->m:Lo6/d;

    invoke-interface {v1, v2}, Ld6/a$b;->onUpdateAppState(Lo6/d;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 8
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ld6/a;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Ld6/a;->i:Lb0/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Ln6/e;

    invoke-direct {v0}, Ln6/e;-><init>()V

    .line 4
    iput-object v0, p0, Ld6/a;->k:Ln6/e;

    .line 5
    iget-object v0, p0, Ld6/a;->a:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p1, Lo6/d;->c:Lo6/d;

    invoke-virtual {p0, p1}, Ld6/a;->g(Lo6/d;)V

    .line 7
    iget-boolean p1, p0, Ld6/a;->o:Z

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Ld6/a;->d:Ljava/util/Set;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iget-object v0, p0, Ld6/a;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld6/a$a;

    if-eqz v1, :cond_0

    .line 11
    invoke-interface {v1}, Ld6/a$a;->a()V

    goto :goto_0

    .line 12
    :cond_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 13
    :try_start_2
    iput-boolean p1, p0, Ld6/a;->o:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 14
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_2
    const-string p1, "_bs"

    .line 15
    iget-object v0, p0, Ld6/a;->l:Ln6/e;

    iget-object v1, p0, Ld6/a;->k:Ln6/e;

    invoke-virtual {p0, p1, v0, v1}, Ld6/a;->f(Ljava/lang/String;Ln6/e;Ln6/e;)V

    goto :goto_1

    .line 16
    :cond_3
    iget-object v0, p0, Ld6/a;->a:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 17
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onActivityStarted(Landroid/app/Activity;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ld6/a;->d(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld6/a;->h:Le6/a;

    invoke-virtual {v0}, Le6/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ld6/a;->j:Lc0/h;

    .line 3
    iget-object v0, v0, Lc0/h;->a:Lc0/h$b;

    invoke-virtual {v0, p1}, Lc0/h$b;->a(Landroid/app/Activity;)V

    .line 4
    new-instance v0, Lcom/google/firebase/perf/metrics/Trace;

    invoke-static {p1}, Ld6/a;->b(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ld6/a;->g:Lm6/e;

    iget-object v3, p0, Ld6/a;->i:Lb0/a;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Ljava/lang/String;Lm6/e;Lb0/a;Ld6/a;)V

    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->start()V

    .line 6
    iget-object v1, p0, Ld6/a;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ld6/a;->d(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ld6/a;->e(Landroid/app/Activity;)V

    .line 3
    :cond_0
    iget-object v0, p0, Ld6/a;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Ld6/a;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Ld6/a;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Ld6/a;->i:Lb0/a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance p1, Ln6/e;

    invoke-direct {p1}, Ln6/e;-><init>()V

    .line 8
    iput-object p1, p0, Ld6/a;->l:Ln6/e;

    .line 9
    sget-object p1, Lo6/d;->d:Lo6/d;

    invoke-virtual {p0, p1}, Ld6/a;->g(Lo6/d;)V

    const-string p1, "_fs"

    .line 10
    iget-object v0, p0, Ld6/a;->k:Ln6/e;

    iget-object v1, p0, Ld6/a;->l:Ln6/e;

    invoke-virtual {p0, p1, v0, v1}, Ld6/a;->f(Ljava/lang/String;Ln6/e;Ln6/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
