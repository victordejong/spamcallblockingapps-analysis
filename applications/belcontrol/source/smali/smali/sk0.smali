.class public Lsk0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String; = "sk0"

.field public static final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public static volatile c:Ljava/util/concurrent/ScheduledFuture;

.field public static final d:Ljava/lang/Object;

.field public static e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static volatile f:Lal0;

.field public static g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static h:Ljava/lang/String;

.field public static i:J

.field public static j:I

.field public static k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lsk0;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lsk0;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lsk0;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lsk0;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    sput v1, Lsk0;->j:I

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lsk0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    sget-object v0, Lsk0;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public static synthetic c()I
    .locals 2

    sget v0, Lsk0;->j:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lsk0;->j:I

    return v0
.end method

.method public static synthetic d()I
    .locals 2

    sget v0, Lsk0;->j:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lsk0;->j:I

    return v0
.end method

.method public static synthetic e()J
    .locals 2

    sget-wide v0, Lsk0;->i:J

    return-wide v0
.end method

.method public static synthetic f(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lsk0;->v(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic g(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lsk0;->u(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic h()Lal0;
    .locals 1

    sget-object v0, Lsk0;->f:Lal0;

    return-object v0
.end method

.method public static synthetic i(Lal0;)Lal0;
    .locals 0

    sput-object p0, Lsk0;->f:Lal0;

    return-object p0
.end method

.method public static synthetic j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lsk0;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic k()I
    .locals 1

    invoke-static {}, Lsk0;->r()I

    move-result v0

    return v0
.end method

.method public static synthetic l()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lsk0;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static synthetic m()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lsk0;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic n(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    sput-object p0, Lsk0;->c:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method public static o()V
    .locals 3

    sget-object v0, Lsk0;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsk0;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    sget-object v1, Lsk0;->c:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lsk0;->c:Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static p()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lsk0;->k:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static q()Ljava/util/UUID;
    .locals 1

    sget-object v0, Lsk0;->f:Lal0;

    if-eqz v0, :cond_0

    sget-object v0, Lsk0;->f:Lal0;

    invoke-virtual {v0}, Lal0;->d()Ljava/util/UUID;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static r()I
    .locals 1

    invoke-static {}, Lui0;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnm0;->j(Ljava/lang/String;)Lmm0;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lwk0;->a()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lmm0;->m()I

    move-result v0

    return v0
.end method

.method public static s()Z
    .locals 1

    sget v0, Lsk0;->j:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static t(Landroid/app/Activity;)V
    .locals 1

    sget-object p0, Lsk0;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lsk0$c;

    invoke-direct {v0}, Lsk0$c;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static u(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lgk0;->l(Landroid/app/Activity;)V

    return-void
.end method

.method public static v(Landroid/app/Activity;)V
    .locals 3

    sget-object v0, Lsk0;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lsk0;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object v0, Lsk0;->a:Ljava/lang/String;

    const-string v1, "Unexpected activity pause without a matching activity resume. Logging data may be incorrect. Make sure you call activateApp from your Application\'s onCreate method"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lsk0;->o()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lfn0;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lgk0;->m(Landroid/app/Activity;)V

    new-instance p0, Lsk0$e;

    invoke-direct {p0, v0, v1, v2}, Lsk0$e;-><init>(JLjava/lang/String;)V

    sget-object v0, Lsk0;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static w(Landroid/app/Activity;)V
    .locals 4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lsk0;->k:Ljava/lang/ref/WeakReference;

    sget-object v0, Lsk0;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-static {}, Lsk0;->o()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lsk0;->i:J

    invoke-static {p0}, Lfn0;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lgk0;->n(Landroid/app/Activity;)V

    invoke-static {p0}, Lbk0;->d(Landroid/app/Activity;)V

    invoke-static {p0}, Lml0;->e(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v3, Lsk0$d;

    invoke-direct {v3, v0, v1, v2, p0}, Lsk0$d;-><init>(JLjava/lang/String;Landroid/content/Context;)V

    sget-object p0, Lsk0;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0, v3}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static x(Landroid/app/Application;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lsk0;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lkm0$d;->f:Lkm0$d;

    new-instance v1, Lsk0$a;

    invoke-direct {v1}, Lsk0$a;-><init>()V

    invoke-static {v0, v1}, Lkm0;->a(Lkm0$d;Lkm0$c;)V

    sput-object p1, Lsk0;->h:Ljava/lang/String;

    new-instance p1, Lsk0$b;

    invoke-direct {p1}, Lsk0$b;-><init>()V

    invoke-virtual {p0, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
