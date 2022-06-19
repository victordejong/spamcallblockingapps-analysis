.class public final Lkotlinx/coroutines/aq;
.super Lkotlinx/coroutines/bg;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c0\u0002\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u001b\u001a\u00020\u001cH\u0002J\u0008\u0010\u001d\u001a\u00020\u0010H\u0002J\r\u0010\u001e\u001a\u00020\u001cH\u0000\u00a2\u0006\u0002\u0008\u001fJ$\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u00082\n\u0010#\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010$\u001a\u00020%H\u0016J\u0008\u0010&\u001a\u00020\u0014H\u0002J\u0008\u0010\'\u001a\u00020\u001cH\u0016J\u000e\u0010(\u001a\u00020\u001c2\u0006\u0010)\u001a\u00020\u0008R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0086T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0011\u0010\u0004R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u00020\u00148BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00148@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u00108TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006*"
    }
    d2 = {
        "Lkotlinx/coroutines/DefaultExecutor;",
        "Lkotlinx/coroutines/EventLoopImplBase;",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "()V",
        "ACTIVE",
        "",
        "DEFAULT_KEEP_ALIVE",
        "",
        "FRESH",
        "KEEP_ALIVE_NANOS",
        "SHUTDOWN_ACK",
        "SHUTDOWN_REQ",
        "THREAD_NAME",
        "",
        "_thread",
        "Ljava/lang/Thread;",
        "get_thread$annotations",
        "debugStatus",
        "isShutdownRequested",
        "",
        "()Z",
        "isThreadPresent",
        "isThreadPresent$kotlinx_coroutines_core",
        "thread",
        "getThread",
        "()Ljava/lang/Thread;",
        "acknowledgeShutdownIfNeeded",
        "",
        "createThreadSync",
        "ensureStarted",
        "ensureStarted$kotlinx_coroutines_core",
        "invokeOnTimeout",
        "Lkotlinx/coroutines/DisposableHandle;",
        "timeMillis",
        "block",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "notifyStartup",
        "run",
        "shutdown",
        "timeout",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static volatile _thread:Ljava/lang/Thread;

.field public static final b:Lkotlinx/coroutines/aq;

.field private static final d:J

.field private static volatile debugStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 13
    new-instance v0, Lkotlinx/coroutines/aq;

    invoke-direct {v0}, Lkotlinx/coroutines/aq;-><init>()V

    sput-object v0, Lkotlinx/coroutines/aq;->b:Lkotlinx/coroutines/aq;

    .line 17
    invoke-static {v0}, Lkotlinx/coroutines/bf;->a(Lkotlinx/coroutines/bf;)V

    .line 22
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    :try_start_0
    const-string v3, "kotlinx.coroutines.DefaultExecutor.keepAlive"

    .line 24
    invoke-static {v3, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 26
    :catch_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 23
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 22
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lkotlinx/coroutines/aq;->d:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lkotlinx/coroutines/bg;-><init>()V

    return-void
.end method

.method private static l()Z
    .locals 2

    .line 45
    sget v0, Lkotlinx/coroutines/aq;->debugStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final declared-synchronized m()Ljava/lang/Thread;
    .locals 3

    monitor-enter p0

    .line 96
    :try_start_0
    sget-object v0, Lkotlinx/coroutines/aq;->_thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    const-string v2, "kotlinx.coroutines.DefaultExecutor"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 97
    sput-object v0, Lkotlinx/coroutines/aq;->_thread:Ljava/lang/Thread;

    const/4 v1, 0x1

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 99
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized n()Z
    .locals 2

    monitor-enter p0

    .line 115
    :try_start_0
    invoke-static {}, Lkotlinx/coroutines/aq;->l()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 116
    :try_start_1
    sput v0, Lkotlinx/coroutines/aq;->debugStatus:I

    .line 117
    move-object v1, p0

    check-cast v1, Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized o()V
    .locals 1

    monitor-enter p0

    .line 139
    :try_start_0
    invoke-static {}, Lkotlinx/coroutines/aq;->l()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 140
    :try_start_1
    sput v0, Lkotlinx/coroutines/aq;->debugStatus:I

    .line 141
    invoke-virtual {p0}, Lkotlinx/coroutines/aq;->j()V

    .line 142
    move-object v0, p0

    check-cast v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected final a()Ljava/lang/Thread;
    .locals 1

    .line 34
    sget-object v0, Lkotlinx/coroutines/aq;->_thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/aq;->m()Ljava/lang/Thread;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final a(JLjava/lang/Runnable;Lkotlin/c/f;)Lkotlinx/coroutines/bb;
    .locals 2

    .line 1241
    invoke-static {p1, p2}, Lkotlinx/coroutines/bi;->a(J)J

    move-result-wide p1

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long p4, p1, v0

    if-gez p4, :cond_1

    .line 2027
    sget-object p4, Lkotlinx/coroutines/cp;->a:Lkotlinx/coroutines/co;

    if-eqz p4, :cond_0

    .line 1243
    invoke-interface {p4}, Lkotlinx/coroutines/co;->a()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1244
    :goto_0
    new-instance p4, Lkotlinx/coroutines/bg$b;

    add-long/2addr p1, v0

    invoke-direct {p4, p1, p2, p3}, Lkotlinx/coroutines/bg$b;-><init>(JLjava/lang/Runnable;)V

    .line 1245
    move-object p1, p4

    check-cast p1, Lkotlinx/coroutines/bg$c;

    invoke-virtual {p0, v0, v1, p1}, Lkotlinx/coroutines/bg;->a(JLkotlinx/coroutines/bg$c;)V

    .line 1244
    check-cast p4, Lkotlinx/coroutines/bb;

    return-object p4

    .line 1248
    :cond_1
    sget-object p1, Lkotlinx/coroutines/cg;->a:Lkotlinx/coroutines/cg;

    check-cast p1, Lkotlinx/coroutines/bb;

    return-object p1
.end method

.method public final run()V
    .locals 12

    .line 62
    sget-object v0, Lkotlinx/coroutines/cn;->a:Lkotlinx/coroutines/cn;

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/bf;

    invoke-static {v0}, Lkotlinx/coroutines/cn;->a(Lkotlinx/coroutines/bf;)V

    const/4 v0, 0x0

    .line 66
    :try_start_0
    invoke-direct {p0}, Lkotlinx/coroutines/aq;->n()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 86
    sput-object v0, Lkotlinx/coroutines/aq;->_thread:Ljava/lang/Thread;

    .line 87
    invoke-direct {p0}, Lkotlinx/coroutines/aq;->o()V

    .line 90
    invoke-virtual {p0}, Lkotlinx/coroutines/aq;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/aq;->a()Ljava/lang/Thread;

    :cond_0
    return-void

    :cond_1
    const-wide v1, 0x7fffffffffffffffL

    move-wide v3, v1

    .line 68
    :cond_2
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 69
    invoke-virtual {p0}, Lkotlinx/coroutines/aq;->c()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v1

    if-nez v9, :cond_7

    .line 3027
    sget-object v9, Lkotlinx/coroutines/cp;->a:Lkotlinx/coroutines/co;

    if-eqz v9, :cond_3

    .line 72
    invoke-interface {v9}, Lkotlinx/coroutines/co;->a()J

    move-result-wide v9

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    :goto_1
    cmp-long v11, v3, v1

    if-nez v11, :cond_4

    .line 73
    sget-wide v3, Lkotlinx/coroutines/aq;->d:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr v3, v9

    :cond_4
    sub-long v9, v3, v9

    cmp-long v11, v9, v7

    if-gtz v11, :cond_6

    .line 86
    sput-object v0, Lkotlinx/coroutines/aq;->_thread:Ljava/lang/Thread;

    .line 87
    invoke-direct {p0}, Lkotlinx/coroutines/aq;->o()V

    .line 90
    invoke-virtual {p0}, Lkotlinx/coroutines/aq;->d()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lkotlinx/coroutines/aq;->a()Ljava/lang/Thread;

    :cond_5
    return-void

    .line 76
    :cond_6
    :try_start_2
    invoke-static {v5, v6, v9, v10}, Lkotlin/f/d;->a(JJ)J

    move-result-wide v5

    goto :goto_2

    :cond_7
    move-wide v3, v1

    :goto_2
    cmp-long v9, v5, v7

    if-lez v9, :cond_2

    .line 81
    invoke-static {}, Lkotlinx/coroutines/aq;->l()Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_9

    .line 86
    sput-object v0, Lkotlinx/coroutines/aq;->_thread:Ljava/lang/Thread;

    .line 87
    invoke-direct {p0}, Lkotlinx/coroutines/aq;->o()V

    .line 90
    invoke-virtual {p0}, Lkotlinx/coroutines/aq;->d()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lkotlinx/coroutines/aq;->a()Ljava/lang/Thread;

    :cond_8
    return-void

    .line 4027
    :cond_9
    :try_start_3
    sget-object v7, Lkotlinx/coroutines/cp;->a:Lkotlinx/coroutines/co;

    if-nez v7, :cond_2

    .line 82
    invoke-static {p0, v5, v6}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 86
    sput-object v0, Lkotlinx/coroutines/aq;->_thread:Ljava/lang/Thread;

    .line 87
    invoke-direct {p0}, Lkotlinx/coroutines/aq;->o()V

    .line 90
    invoke-virtual {p0}, Lkotlinx/coroutines/aq;->d()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lkotlinx/coroutines/aq;->a()Ljava/lang/Thread;

    :cond_a
    throw v1
.end method
