.class public abstract Lkotlinx/coroutines/bg;
.super Lkotlinx/coroutines/bh;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/au;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/bg$c;,
        Lkotlinx/coroutines/bg$a;,
        Lkotlinx/coroutines/bg$b;,
        Lkotlinx/coroutines/bg$d;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0008 \u0018\u00002\u0002092\u00020::\u00044567B\u0007\u00a2\u0006\u0004\u0008\u0001\u0010\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0002J\u0017\u0010\u0007\u001a\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000c\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\t2\n\u0010\u000b\u001a\u00060\u0005j\u0002`\u0006\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0019\u0010\u000f\u001a\u00020\u00032\n\u0010\u000e\u001a\u00060\u0005j\u0002`\u0006\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001b\u0010\u0012\u001a\u00020\u00112\n\u0010\u000e\u001a\u00060\u0005j\u0002`\u0006H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0002J\u000f\u0010\u0018\u001a\u00020\u0003H\u0004\u00a2\u0006\u0004\u0008\u0018\u0010\u0002J\u001d\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u001f\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J#\u0010#\u001a\u00020\"2\u0006\u0010!\u001a\u00020\u00142\n\u0010\u000b\u001a\u00060\u0005j\u0002`\u0006H\u0004\u00a2\u0006\u0004\u0008#\u0010$J%\u0010\'\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00142\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00030%H\u0016\u00a2\u0006\u0004\u0008\'\u0010(J\u0017\u0010)\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008)\u0010*J\u000f\u0010+\u001a\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008+\u0010\u0002R$\u0010-\u001a\u00020\u00112\u0006\u0010,\u001a\u00020\u00118B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\u0016\u00101\u001a\u00020\u00118T@\u0014X\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u00081\u0010.R\u0016\u00103\u001a\u00020\u00148T@\u0014X\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u00082\u0010\u0016\u00a8\u00068"
    }
    d2 = {
        "Lkotlinx/coroutines/EventLoopImplBase;",
        "<init>",
        "()V",
        "",
        "closeQueue",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "dequeue",
        "()Ljava/lang/Runnable;",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "block",
        "dispatch",
        "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V",
        "task",
        "enqueue",
        "(Ljava/lang/Runnable;)V",
        "",
        "enqueueImpl",
        "(Ljava/lang/Runnable;)Z",
        "",
        "processNextEvent",
        "()J",
        "rescheduleAllDelayed",
        "resetAll",
        "now",
        "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;",
        "delayedTask",
        "schedule",
        "(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V",
        "",
        "scheduleImpl",
        "(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)I",
        "timeMillis",
        "Lkotlinx/coroutines/DisposableHandle;",
        "scheduleInvokeOnTimeout",
        "(JLjava/lang/Runnable;)Lkotlinx/coroutines/DisposableHandle;",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "continuation",
        "scheduleResumeAfterDelay",
        "(JLkotlinx/coroutines/CancellableContinuation;)V",
        "shouldUnpark",
        "(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)Z",
        "shutdown",
        "value",
        "isCompleted",
        "()Z",
        "setCompleted",
        "(Z)V",
        "isEmpty",
        "getNextTime",
        "nextTime",
        "DelayedResumeTask",
        "DelayedRunnableTask",
        "DelayedTask",
        "DelayedTaskQueue",
        "kotlinx-coroutines-core",
        "Lkotlinx/coroutines/EventLoopImplPlatform;",
        "Lkotlinx/coroutines/Delay;"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _delayed:Ljava/lang/Object;

.field private volatile synthetic _isCompleted:I

.field private volatile synthetic _queue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/bg;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_queue"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/bg;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_delayed"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/bg;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 179
    invoke-direct {p0}, Lkotlinx/coroutines/bh;-><init>()V

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lkotlinx/coroutines/bg;->_queue:Ljava/lang/Object;

    .line 184
    iput-object v0, p0, Lkotlinx/coroutines/bg;->_delayed:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 186
    iput v0, p0, Lkotlinx/coroutines/bg;->_isCompleted:I

    return-void
.end method

.method private final a(Lkotlinx/coroutines/bg$c;)Z
    .locals 1

    .line 368
    iget-object v0, p0, Lkotlinx/coroutines/bg;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/bg$d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlinx/coroutines/bg$d;->b()Lkotlinx/coroutines/internal/ab;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/bg$c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public static final synthetic a(Lkotlinx/coroutines/bg;)Z
    .locals 0

    .line 9188
    iget p0, p0, Lkotlinx/coroutines/bg;->_isCompleted:I

    return p0
.end method

.method private final b(Ljava/lang/Runnable;)Z
    .locals 5

    .line 540
    :cond_0
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/bg;->_queue:Ljava/lang/Object;

    .line 7188
    iget v1, p0, Lkotlinx/coroutines/bg;->_isCompleted:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 296
    sget-object v0, Lkotlinx/coroutines/bg;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 297
    :cond_2
    instance-of v3, v0, Lkotlinx/coroutines/internal/n;

    if-eqz v3, :cond_6

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.Queue<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> /* = kotlinx.coroutines.internal.LockFreeTaskQueueCore<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> */"

    .line 298
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/internal/n;

    invoke-virtual {v3, p1}, Lkotlinx/coroutines/internal/n;->a(Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_5

    if-eq v4, v1, :cond_4

    const/4 v0, 0x2

    if-eq v4, v0, :cond_3

    goto :goto_0

    :cond_3
    return v2

    .line 301
    :cond_4
    sget-object v1, Lkotlinx/coroutines/bg;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3}, Lkotlinx/coroutines/internal/n;->d()Lkotlinx/coroutines/internal/n;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return v1

    .line 305
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/bi;->b()Lkotlinx/coroutines/internal/v;

    move-result-object v3

    if-ne v0, v3, :cond_7

    return v2

    .line 308
    :cond_7
    new-instance v2, Lkotlinx/coroutines/internal/n;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v1}, Lkotlinx/coroutines/internal/n;-><init>(IZ)V

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */"

    .line 309
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lkotlinx/coroutines/internal/n;->a(Ljava/lang/Object;)I

    .line 310
    invoke-virtual {v2, p1}, Lkotlinx/coroutines/internal/n;->a(Ljava/lang/Object;)I

    .line 311
    sget-object v3, Lkotlinx/coroutines/bg;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1
.end method

.method private final c(JLkotlinx/coroutines/bg$c;)I
    .locals 4

    .line 8188
    iget v0, p0, Lkotlinx/coroutines/bg;->_isCompleted:I

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 372
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/bg;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/bg$d;

    if-nez v0, :cond_1

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/bg;

    .line 373
    sget-object v1, Lkotlinx/coroutines/bg;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    new-instance v3, Lkotlinx/coroutines/bg$d;

    invoke-direct {v3, p1, p2}, Lkotlinx/coroutines/bg$d;-><init>(J)V

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 374
    iget-object v0, v0, Lkotlinx/coroutines/bg;->_delayed:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    check-cast v0, Lkotlinx/coroutines/bg$d;

    .line 376
    :cond_1
    invoke-virtual {p3, p1, p2, v0, p0}, Lkotlinx/coroutines/bg$c;->a(JLkotlinx/coroutines/bg$d;Lkotlinx/coroutines/bg;)I

    move-result p1

    return p1
.end method

.method private final l()V
    .locals 3

    .line 9027
    sget-object v0, Lkotlinx/coroutines/cp;->a:Lkotlinx/coroutines/co;

    if-eqz v0, :cond_0

    .line 387
    invoke-interface {v0}, Lkotlinx/coroutines/co;->a()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 396
    :goto_0
    iget-object v2, p0, Lkotlinx/coroutines/bg;->_delayed:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/bg$d;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lkotlinx/coroutines/bg$d;->c()Lkotlinx/coroutines/internal/ab;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/bg$c;

    if-nez v2, :cond_1

    goto :goto_1

    .line 397
    :cond_1
    invoke-virtual {p0, v0, v1, v2}, Lkotlinx/coroutines/bg;->b(JLkotlinx/coroutines/bg$c;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public a(JLjava/lang/Runnable;Lkotlin/c/f;)Lkotlinx/coroutines/bb;
    .locals 0

    .line 179
    invoke-static {p1, p2, p3, p4}, Lkotlinx/coroutines/au$a;->a(JLjava/lang/Runnable;Lkotlin/c/f;)Lkotlinx/coroutines/bb;

    move-result-object p1

    return-object p1
.end method

.method public final a(JLkotlinx/coroutines/bg$c;)V
    .locals 2

    .line 360
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/bg;->c(JLkotlinx/coroutines/bg$c;)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    return-void

    .line 364
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unexpected result"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 362
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/bg;->b(JLkotlinx/coroutines/bg$c;)V

    return-void

    .line 361
    :cond_2
    invoke-direct {p0, p3}, Lkotlinx/coroutines/bg;->a(Lkotlinx/coroutines/bg$c;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lkotlinx/coroutines/bg;->k()V

    :cond_3
    return-void
.end method

.method public final a(JLkotlinx/coroutines/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/n<",
            "-",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 230
    invoke-static {p1, p2}, Lkotlinx/coroutines/bi;->a(J)J

    move-result-wide p1

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 4027
    sget-object v0, Lkotlinx/coroutines/cp;->a:Lkotlinx/coroutines/co;

    if-eqz v0, :cond_0

    .line 232
    invoke-interface {v0}, Lkotlinx/coroutines/co;->a()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 233
    :goto_0
    new-instance v2, Lkotlinx/coroutines/bg$a;

    add-long/2addr p1, v0

    invoke-direct {v2, p0, p1, p2, p3}, Lkotlinx/coroutines/bg$a;-><init>(Lkotlinx/coroutines/bg;JLkotlinx/coroutines/n;)V

    .line 234
    move-object p1, v2

    check-cast p1, Lkotlinx/coroutines/bb;

    invoke-static {p3, p1}, Lkotlinx/coroutines/q;->a(Lkotlinx/coroutines/n;Lkotlinx/coroutines/bb;)V

    .line 235
    check-cast v2, Lkotlinx/coroutines/bg$c;

    invoke-virtual {p0, v0, v1, v2}, Lkotlinx/coroutines/bg;->a(JLkotlinx/coroutines/bg$c;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 2

    move-object v0, p0

    .line 283
    :goto_0
    invoke-direct {v0, p1}, Lkotlinx/coroutines/bg;->b(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    invoke-virtual {v0}, Lkotlinx/coroutines/bg;->k()V

    return-void

    .line 287
    :cond_0
    sget-object v0, Lkotlinx/coroutines/aq;->b:Lkotlinx/coroutines/aq;

    goto :goto_0
.end method

.method public final a(Lkotlin/c/f;Ljava/lang/Runnable;)V
    .locals 0

    .line 280
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/bg;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()J
    .locals 12

    .line 254
    invoke-virtual {p0}, Lkotlinx/coroutines/bg;->f()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    .line 256
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/bg;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/bg$d;

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 257
    invoke-virtual {v0}, Lkotlinx/coroutines/bg$d;->a()Z

    move-result v4

    if-nez v4, :cond_6

    .line 5027
    sget-object v4, Lkotlinx/coroutines/cp;->a:Lkotlinx/coroutines/co;

    if-eqz v4, :cond_1

    .line 258
    invoke-interface {v4}, Lkotlinx/coroutines/co;->a()J

    move-result-wide v4

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 263
    :goto_0
    move-object v6, v0

    check-cast v6, Lkotlinx/coroutines/internal/aa;

    .line 531
    monitor-enter v6

    .line 532
    :try_start_0
    invoke-virtual {v6}, Lkotlinx/coroutines/internal/aa;->d()Lkotlinx/coroutines/internal/ab;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_2

    monitor-exit v6

    move-object v7, v3

    goto :goto_4

    .line 533
    :cond_2
    :try_start_1
    check-cast v7, Lkotlinx/coroutines/bg$c;

    .line 5428
    iget-wide v8, v7, Lkotlinx/coroutines/bg$c;->b:J

    sub-long v8, v4, v8

    const/4 v10, 0x0

    cmp-long v11, v8, v1

    if-ltz v11, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_4

    .line 265
    check-cast v7, Ljava/lang/Runnable;

    invoke-direct {p0, v7}, Lkotlinx/coroutines/bg;->b(Ljava/lang/Runnable;)Z

    move-result v7

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_5

    .line 534
    invoke-virtual {v6, v10}, Lkotlinx/coroutines/internal/aa;->a(I)Lkotlinx/coroutines/internal/ab;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_5
    move-object v7, v3

    .line 533
    :goto_3
    monitor-exit v6

    .line 538
    :goto_4
    check-cast v7, Lkotlinx/coroutines/bg$c;

    if-eqz v7, :cond_6

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 533
    monitor-exit v6

    throw v0

    .line 6542
    :cond_6
    :goto_5
    iget-object v0, p0, Lkotlinx/coroutines/bg;->_queue:Ljava/lang/Object;

    if-nez v0, :cond_7

    goto :goto_6

    .line 6323
    :cond_7
    instance-of v4, v0, Lkotlinx/coroutines/internal/n;

    if-eqz v4, :cond_9

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.Queue<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> /* = kotlinx.coroutines.internal.LockFreeTaskQueueCore<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> */"

    .line 6324
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/internal/n;

    invoke-virtual {v4}, Lkotlinx/coroutines/internal/n;->c()Ljava/lang/Object;

    move-result-object v5

    .line 6325
    sget-object v6, Lkotlinx/coroutines/internal/n;->a:Lkotlinx/coroutines/internal/v;

    if-eq v5, v6, :cond_8

    move-object v3, v5

    check-cast v3, Ljava/lang/Runnable;

    goto :goto_6

    .line 6326
    :cond_8
    sget-object v5, Lkotlinx/coroutines/bg;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4}, Lkotlinx/coroutines/internal/n;->d()Lkotlinx/coroutines/internal/n;

    move-result-object v4

    invoke-virtual {v5, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_5

    .line 6329
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/bi;->b()Lkotlinx/coroutines/internal/v;

    move-result-object v4

    if-ne v0, v4, :cond_a

    goto :goto_6

    .line 6330
    :cond_a
    sget-object v4, Lkotlinx/coroutines/bg;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/Runnable;

    :goto_6
    if-eqz v3, :cond_b

    .line 274
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    return-wide v1

    .line 277
    :cond_b
    invoke-virtual {p0}, Lkotlinx/coroutines/bg;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method protected final d()Z
    .locals 4

    .line 192
    invoke-virtual {p0}, Lkotlinx/coroutines/bg;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 193
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/bg;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/bg$d;

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {v0}, Lkotlinx/coroutines/bg$d;->a()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 195
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/bg;->_queue:Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    return v2

    .line 197
    :cond_2
    instance-of v3, v0, Lkotlinx/coroutines/internal/n;

    if-eqz v3, :cond_3

    check-cast v0, Lkotlinx/coroutines/internal/n;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->a()Z

    move-result v0

    return v0

    .line 198
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/bi;->b()Lkotlinx/coroutines/internal/v;

    move-result-object v3

    if-ne v0, v3, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method protected final e()J
    .locals 6

    .line 204
    invoke-super {p0}, Lkotlinx/coroutines/bh;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 205
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/bg;->_queue:Ljava/lang/Object;

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v0, :cond_3

    .line 208
    instance-of v1, v0, Lkotlinx/coroutines/internal/n;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/internal/n;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->a()Z

    move-result v0

    if-nez v0, :cond_3

    return-wide v2

    .line 209
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/bi;->b()Lkotlinx/coroutines/internal/v;

    move-result-object v1

    if-ne v0, v1, :cond_2

    return-wide v4

    :cond_2
    return-wide v2

    .line 212
    :cond_3
    iget-object v0, p0, Lkotlinx/coroutines/bg;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/bg$d;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lkotlinx/coroutines/bg$d;->b()Lkotlinx/coroutines/internal/ab;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/bg$c;

    if-nez v0, :cond_4

    goto :goto_1

    .line 213
    :cond_4
    iget-wide v0, v0, Lkotlinx/coroutines/bg$c;->b:J

    .line 1027
    sget-object v4, Lkotlinx/coroutines/cp;->a:Lkotlinx/coroutines/co;

    if-eqz v4, :cond_5

    .line 213
    invoke-interface {v4}, Lkotlinx/coroutines/co;->a()J

    move-result-wide v4

    goto :goto_0

    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    :goto_0
    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_6

    return-wide v2

    :cond_6
    return-wide v0

    :cond_7
    :goto_1
    return-wide v4
.end method

.method protected final i()V
    .locals 5

    .line 218
    sget-object v0, Lkotlinx/coroutines/cn;->a:Lkotlinx/coroutines/cn;

    invoke-static {}, Lkotlinx/coroutines/cn;->c()V

    const/4 v0, 0x1

    .line 2189
    iput v0, p0, Lkotlinx/coroutines/bg;->_isCompleted:I

    .line 2337
    invoke-static {}, Lkotlinx/coroutines/ao;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3188
    iget v1, p0, Lkotlinx/coroutines/bg;->_isCompleted:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 2545
    :cond_1
    :goto_0
    iget-object v1, p0, Lkotlinx/coroutines/bg;->_queue:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 2340
    sget-object v1, Lkotlinx/coroutines/bg;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-static {}, Lkotlinx/coroutines/bi;->b()Lkotlinx/coroutines/internal/v;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 2341
    :cond_2
    instance-of v2, v1, Lkotlinx/coroutines/internal/n;

    if-eqz v2, :cond_3

    .line 2342
    check-cast v1, Lkotlinx/coroutines/internal/n;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/n;->b()Z

    goto :goto_1

    .line 2346
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/bi;->b()Lkotlinx/coroutines/internal/v;

    move-result-object v2

    if-eq v1, v2, :cond_4

    .line 2349
    new-instance v2, Lkotlinx/coroutines/internal/n;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v0}, Lkotlinx/coroutines/internal/n;-><init>(IZ)V

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */"

    .line 2350
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lkotlinx/coroutines/internal/n;->a(Ljava/lang/Object;)I

    .line 2351
    sget-object v3, Lkotlinx/coroutines/bg;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 224
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lkotlinx/coroutines/bg;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    .line 226
    invoke-direct {p0}, Lkotlinx/coroutines/bg;->l()V

    return-void
.end method

.method protected final j()V
    .locals 1

    const/4 v0, 0x0

    .line 381
    iput-object v0, p0, Lkotlinx/coroutines/bg;->_queue:Ljava/lang/Object;

    .line 382
    iput-object v0, p0, Lkotlinx/coroutines/bg;->_delayed:Ljava/lang/Object;

    return-void
.end method
