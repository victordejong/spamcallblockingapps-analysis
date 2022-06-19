.class public abstract Lscala/concurrent/forkjoin/ForkJoinTask;
.super Ljava/lang/Object;
.source "ForkJoinTask.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedCallable;,
        Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnableAction;,
        Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable;,
        Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final CANCELLED:I = -0x40000000

.field static final DONE_MASK:I = -0x10000000

.field static final EXCEPTIONAL:I = -0x80000000

.field private static final EXCEPTION_MAP_CAPACITY:I = 0x20

.field static final NORMAL:I = -0x10000000

.field static final SIGNAL:I = 0x10000

.field static final SMASK:I = 0xffff

.field private static final STATUS:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final exceptionTable:[Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;

.field private static final exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x6b295cc9a986fd4fL


# instance fields
.field volatile status:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1465
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lscala/concurrent/forkjoin/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1466
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lscala/concurrent/forkjoin/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    const/16 v0, 0x20

    new-array v0, v0, [Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;

    .line 1467
    sput-object v0, Lscala/concurrent/forkjoin/ForkJoinTask;->exceptionTable:[Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;

    .line 1469
    :try_start_0
    invoke-static {}, Lscala/concurrent/forkjoin/ForkJoinTask;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lscala/concurrent/forkjoin/ForkJoinTask;->U:Lsun/misc/Unsafe;

    .line 1470
    const-class v1, Lscala/concurrent/forkjoin/ForkJoinTask;

    const-string v2, "status"

    .line 1471
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lscala/concurrent/forkjoin/ForkJoinTask;->STATUS:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1474
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    .line 183
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method public static adapt(Ljava/lang/Runnable;)Lscala/concurrent/forkjoin/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1404
    new-instance v0, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnableAction;

    invoke-direct {v0, p0}, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnableAction;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static adapt(Ljava/lang/Runnable;Ljava/lang/Object;)Lscala/concurrent/forkjoin/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "TT;>;"
        }
    .end annotation

    .line 1417
    new-instance v0, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p0, p1}, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static adapt(Ljava/util/concurrent/Callable;)Lscala/concurrent/forkjoin/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "TT;>;"
        }
    .end annotation

    .line 1430
    new-instance v0, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p0}, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method static final cancelIgnoringExceptions(Lscala/concurrent/forkjoin/ForkJoinTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 462
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    .line 464
    :try_start_0
    invoke-virtual {p0, v0}, Lscala/concurrent/forkjoin/ForkJoinTask;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private clearExceptionalCompletion()V
    .locals 7

    .line 474
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 475
    sget-object v1, Lscala/concurrent/forkjoin/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 476
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 478
    :try_start_0
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinTask;->exceptionTable:[Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;

    .line 479
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v0, v3

    .line 480
    aget-object v3, v2, v0

    const/4 v4, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 483
    iget-object v5, v3, Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;->next:Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;

    .line 484
    invoke-virtual {v3}, Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p0, :cond_1

    if-nez v4, :cond_0

    .line 486
    aput-object v5, v2, v0

    goto :goto_1

    .line 488
    :cond_0
    iput-object v5, v4, Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;->next:Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;

    goto :goto_1

    :cond_1
    move-object v4, v3

    move-object v3, v5

    goto :goto_0

    .line 494
    :cond_2
    :goto_1
    invoke-static {}, Lscala/concurrent/forkjoin/ForkJoinTask;->expungeStaleExceptions()V

    const/4 v0, 0x0

    .line 495
    iput v0, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private doInvoke()I
    .locals 2

    .line 356
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->doExec()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    iget-object v1, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->pool:Lscala/concurrent/forkjoin/ForkJoinPool;

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->workQueue:Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    invoke-virtual {v1, v0, p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->awaitJoin(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;Lscala/concurrent/forkjoin/ForkJoinTask;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->externalAwaitDone()I

    move-result v0

    :goto_0
    return v0
.end method

.method private doJoin()I
    .locals 3

    .line 341
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    if-eqz v1, :cond_2

    check-cast v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    iget-object v1, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->workQueue:Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    invoke-virtual {v1, p0}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->tryUnpush(Lscala/concurrent/forkjoin/ForkJoinTask;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->doExec()I

    move-result v2

    if-gez v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->pool:Lscala/concurrent/forkjoin/ForkJoinPool;

    invoke-virtual {v0, v1, p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->awaitJoin(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;Lscala/concurrent/forkjoin/ForkJoinTask;)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->externalAwaitDone()I

    move-result v0

    :goto_0
    return v0
.end method

.method private static expungeStaleExceptions()V
    .locals 6

    .line 562
    :cond_0
    :goto_0
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 563
    instance-of v1, v0, Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;

    if-eqz v1, :cond_0

    .line 564
    move-object v1, v0

    check-cast v1, Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;

    invoke-virtual {v1}, Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 565
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinTask;->exceptionTable:[Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;

    .line 566
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v1, v3

    .line 567
    aget-object v3, v2, v1

    const/4 v4, 0x0

    :goto_1
    if-eqz v3, :cond_0

    .line 570
    iget-object v5, v3, Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;->next:Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;

    if-ne v3, v0, :cond_2

    if-nez v4, :cond_1

    .line 573
    aput-object v5, v2, v1

    goto :goto_0

    .line 575
    :cond_1
    iput-object v5, v4, Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;->next:Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;

    goto :goto_0

    :cond_2
    move-object v4, v3

    move-object v3, v5

    goto :goto_1

    :cond_3
    return-void
.end method

.method private externalAwaitDone()I
    .locals 7

    .line 288
    invoke-static {p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->externalHelpJoin(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    const/4 v0, 0x0

    .line 290
    :cond_0
    :goto_0
    iget v5, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v5, :cond_2

    .line 291
    sget-object v1, Lscala/concurrent/forkjoin/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lscala/concurrent/forkjoin/ForkJoinTask;->STATUS:J

    const/high16 v2, 0x10000

    or-int v6, v5, v2

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    monitor-enter p0

    .line 293
    :try_start_0
    iget v1, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v1, :cond_1

    .line 295
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x1

    goto :goto_1

    .line 301
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 302
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    if-eqz v0, :cond_3

    .line 306
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    return v5
.end method

.method private externalInterruptibleAwaitDone()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 315
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 317
    invoke-static {p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->externalHelpJoin(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    .line 318
    :cond_0
    :goto_0
    iget v5, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v5, :cond_2

    .line 319
    sget-object v1, Lscala/concurrent/forkjoin/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lscala/concurrent/forkjoin/ForkJoinTask;->STATUS:J

    const/high16 v0, 0x10000

    or-int v6, v5, v0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    monitor-enter p0

    .line 321
    :try_start_0
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v0, :cond_1

    .line 322
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 324
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 325
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    return v5

    .line 316
    :cond_3
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public static getPool()Lscala/concurrent/forkjoin/ForkJoinPool;
    .locals 2

    .line 1114
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 1115
    instance-of v1, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->pool:Lscala/concurrent/forkjoin/ForkJoinPool;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getQueuedTaskCount()I
    .locals 2

    .line 1158
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    .line 1159
    check-cast v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->workQueue:Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    goto :goto_0

    .line 1161
    :cond_0
    invoke-static {}, Lscala/concurrent/forkjoin/ForkJoinPool;->commonSubmitterQueue()Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 1162
    :cond_1
    invoke-virtual {v0}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v0

    :goto_1
    return v0
.end method

.method public static getSurplusQueuedTaskCount()I
    .locals 1

    .line 1179
    invoke-static {}, Lscala/concurrent/forkjoin/ForkJoinPool;->getSurplusQueuedTaskCount()I

    move-result v0

    return v0
.end method

.method private getThrowableException()Ljava/lang/Throwable;
    .locals 5

    .line 516
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_0

    return-object v1

    .line 518
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 520
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 521
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 523
    :try_start_0
    invoke-static {}, Lscala/concurrent/forkjoin/ForkJoinTask;->expungeStaleExceptions()V

    .line 524
    sget-object v3, Lscala/concurrent/forkjoin/ForkJoinTask;->exceptionTable:[Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;

    .line 525
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v0, v4

    aget-object v0, v3, v0

    :goto_0
    if-eqz v0, :cond_1

    .line 526
    invoke-virtual {v0}, Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p0, :cond_1

    .line 527
    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;->next:Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 529
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_3

    .line 532
    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;->ex:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    return-object v1

    :catchall_0
    move-exception v0

    .line 529
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .locals 1

    .line 1486
    sget-object v0, Lscala/concurrent/util/Unsafe;->instance:Lsun/misc/Unsafe;

    return-object v0
.end method

.method static final helpExpungeStaleExceptions()V
    .locals 2

    .line 590
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 591
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 593
    :try_start_0
    invoke-static {}, Lscala/concurrent/forkjoin/ForkJoinTask;->expungeStaleExceptions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public static helpQuiesce()V
    .locals 2

    .line 1075
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    .line 1076
    check-cast v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    .line 1077
    iget-object v1, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->pool:Lscala/concurrent/forkjoin/ForkJoinPool;

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->workQueue:Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    invoke-virtual {v1, v0}, Lscala/concurrent/forkjoin/ForkJoinPool;->helpQuiescePool(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)V

    goto :goto_0

    .line 1080
    :cond_0
    invoke-static {}, Lscala/concurrent/forkjoin/ForkJoinPool;->quiesceCommonPool()V

    :goto_0
    return-void
.end method

.method public static inForkJoinPool()Z
    .locals 1

    .line 1128
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    return v0
.end method

.method public static invokeAll(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;>(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 779
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_9

    instance-of v0, p0, Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_4

    .line 784
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    .line 787
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v4, v2

    :goto_0
    const/high16 v5, -0x10000000

    if-ltz v4, :cond_4

    .line 789
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lscala/concurrent/forkjoin/ForkJoinTask;

    if-nez v6, :cond_1

    if-nez v1, :cond_3

    .line 792
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    .line 795
    invoke-virtual {v6}, Lscala/concurrent/forkjoin/ForkJoinTask;->fork()Lscala/concurrent/forkjoin/ForkJoinTask;

    goto :goto_1

    .line 796
    :cond_2
    invoke-direct {v6}, Lscala/concurrent/forkjoin/ForkJoinTask;->doInvoke()I

    move-result v7

    if-ge v7, v5, :cond_3

    if-nez v1, :cond_3

    .line 797
    invoke-virtual {v6}, Lscala/concurrent/forkjoin/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v1

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-gt v3, v2, :cond_7

    .line 800
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/concurrent/forkjoin/ForkJoinTask;

    if-eqz v4, :cond_6

    if-eqz v1, :cond_5

    const/4 v6, 0x0

    .line 803
    invoke-virtual {v4, v6}, Lscala/concurrent/forkjoin/ForkJoinTask;->cancel(Z)Z

    goto :goto_3

    .line 804
    :cond_5
    invoke-direct {v4}, Lscala/concurrent/forkjoin/ForkJoinTask;->doJoin()I

    move-result v6

    if-ge v6, v5, :cond_6

    .line 805
    invoke-virtual {v4}, Lscala/concurrent/forkjoin/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v1

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_8

    .line 809
    invoke-static {v1}, Lscala/concurrent/forkjoin/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    :cond_8
    return-object p0

    .line 780
    :cond_9
    :goto_4
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lscala/concurrent/forkjoin/ForkJoinTask;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lscala/concurrent/forkjoin/ForkJoinTask;

    invoke-static {v0}, Lscala/concurrent/forkjoin/ForkJoinTask;->invokeAll([Lscala/concurrent/forkjoin/ForkJoinTask;)V

    return-object p0
.end method

.method public static invokeAll(Lscala/concurrent/forkjoin/ForkJoinTask;Lscala/concurrent/forkjoin/ForkJoinTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    .line 712
    invoke-virtual {p1}, Lscala/concurrent/forkjoin/ForkJoinTask;->fork()Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 713
    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->doInvoke()I

    move-result v0

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 714
    invoke-direct {p0, v0}, Lscala/concurrent/forkjoin/ForkJoinTask;->reportException(I)V

    .line 715
    :cond_0
    invoke-direct {p1}, Lscala/concurrent/forkjoin/ForkJoinTask;->doJoin()I

    move-result p0

    and-int/2addr p0, v1

    if-eq p0, v1, :cond_1

    .line 716
    invoke-direct {p1, p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->reportException(I)V

    :cond_1
    return-void
.end method

.method public static varargs invokeAll([Lscala/concurrent/forkjoin/ForkJoinTask;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    .line 736
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v0

    :goto_0
    const/high16 v4, -0x10000000

    if-ltz v3, :cond_3

    .line 738
    aget-object v5, p0, v3

    if-nez v5, :cond_0

    if-nez v2, :cond_2

    .line 741
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_1

    .line 744
    invoke-virtual {v5}, Lscala/concurrent/forkjoin/ForkJoinTask;->fork()Lscala/concurrent/forkjoin/ForkJoinTask;

    goto :goto_1

    .line 745
    :cond_1
    invoke-direct {v5}, Lscala/concurrent/forkjoin/ForkJoinTask;->doInvoke()I

    move-result v6

    if-ge v6, v4, :cond_2

    if-nez v2, :cond_2

    .line 746
    invoke-virtual {v5}, Lscala/concurrent/forkjoin/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v2

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-gt v1, v0, :cond_6

    .line 749
    aget-object v3, p0, v1

    if-eqz v3, :cond_5

    if-eqz v2, :cond_4

    const/4 v5, 0x0

    .line 752
    invoke-virtual {v3, v5}, Lscala/concurrent/forkjoin/ForkJoinTask;->cancel(Z)Z

    goto :goto_3

    .line 753
    :cond_4
    invoke-direct {v3}, Lscala/concurrent/forkjoin/ForkJoinTask;->doJoin()I

    move-result v5

    if-ge v5, v4, :cond_5

    .line 754
    invoke-virtual {v3}, Lscala/concurrent/forkjoin/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v2

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_7

    .line 758
    invoke-static {v2}, Lscala/concurrent/forkjoin/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    :cond_7
    return-void
.end method

.method protected static peekNextLocalTask()Lscala/concurrent/forkjoin/ForkJoinTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1234
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    .line 1235
    check-cast v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->workQueue:Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    goto :goto_0

    .line 1237
    :cond_0
    invoke-static {}, Lscala/concurrent/forkjoin/ForkJoinPool;->commonSubmitterQueue()Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 1238
    :cond_1
    invoke-virtual {v0}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->peek()Lscala/concurrent/forkjoin/ForkJoinTask;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method protected static pollNextLocalTask()Lscala/concurrent/forkjoin/ForkJoinTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1252
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->workQueue:Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    invoke-virtual {v0}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nextLocalTask()Lscala/concurrent/forkjoin/ForkJoinTask;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected static pollTask()Lscala/concurrent/forkjoin/ForkJoinTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1272
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    iget-object v1, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->pool:Lscala/concurrent/forkjoin/ForkJoinPool;

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->workQueue:Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    invoke-virtual {v1, v0}, Lscala/concurrent/forkjoin/ForkJoinPool;->nextTaskFor(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)Lscala/concurrent/forkjoin/ForkJoinTask;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1454
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1455
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1457
    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p0, p1}, Lscala/concurrent/forkjoin/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private reportException(I)V
    .locals 1

    const/high16 v0, -0x40000000    # -2.0f

    if-eq p1, v0, :cond_1

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 631
    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lscala/concurrent/forkjoin/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    .line 629
    :cond_1
    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw p1
.end method

.method static rethrow(Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p0, :cond_2

    .line 605
    instance-of v0, p0, Ljava/lang/Error;

    if-nez v0, :cond_1

    .line 607
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    .line 609
    invoke-static {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->uncheckedThrow(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 608
    :cond_0
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 606
    :cond_1
    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method private setCompletion(I)I
    .locals 7

    .line 239
    :cond_0
    iget v6, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-gez v6, :cond_1

    return v6

    .line 241
    :cond_1
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lscala/concurrent/forkjoin/ForkJoinTask;->STATUS:J

    or-int v5, v6, p1

    move-object v1, p0

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    ushr-int/lit8 v0, v6, 0x10

    if-eqz v0, :cond_2

    .line 243
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return p1
.end method

.method private setExceptionalCompletion(Ljava/lang/Throwable;)I
    .locals 3

    .line 443
    invoke-virtual {p0, p1}, Lscala/concurrent/forkjoin/ForkJoinTask;->recordExceptionalCompletion(Ljava/lang/Throwable;)I

    move-result v0

    const/high16 v1, -0x10000000

    and-int/2addr v1, v0

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 445
    invoke-virtual {p0, p1}, Lscala/concurrent/forkjoin/ForkJoinTask;->internalPropagateException(Ljava/lang/Throwable;)V

    :cond_0
    return v0
.end method

.method static uncheckedThrow(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 621
    :cond_0
    throw p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1445
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1446
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2

    const/high16 p1, -0x40000000    # -2.0f

    .line 841
    invoke-direct {p0, p1}, Lscala/concurrent/forkjoin/ForkJoinTask;->setCompletion(I)I

    move-result v0

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final compareAndSetForkJoinTaskTag(SS)Z
    .locals 6

    .line 1320
    :cond_0
    iget v4, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    int-to-short v0, v4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 1322
    :cond_1
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lscala/concurrent/forkjoin/ForkJoinTask;->STATUS:J

    const/high16 v1, -0x10000

    and-int/2addr v1, v4

    const v5, 0xffff

    and-int/2addr v5, p2

    or-int/2addr v5, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public complete(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 921
    :try_start_0
    invoke-virtual {p0, p1}, Lscala/concurrent/forkjoin/ForkJoinTask;->setRawResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 p1, -0x10000000

    .line 926
    invoke-direct {p0, p1}, Lscala/concurrent/forkjoin/ForkJoinTask;->setCompletion(I)I

    return-void

    :catchall_0
    move-exception p1

    .line 923
    invoke-direct {p0, p1}, Lscala/concurrent/forkjoin/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    return-void
.end method

.method public completeExceptionally(Ljava/lang/Throwable;)V
    .locals 1

    .line 901
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lscala/concurrent/forkjoin/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    return-void
.end method

.method final doExec()I
    .locals 2

    .line 258
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v0, :cond_0

    .line 260
    :try_start_0
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->exec()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/high16 v0, -0x10000000

    .line 265
    invoke-direct {p0, v0}, Lscala/concurrent/forkjoin/ForkJoinTask;->setCompletion(I)I

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 262
    invoke-direct {p0, v0}, Lscala/concurrent/forkjoin/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    move-result v0

    :cond_0
    :goto_0
    return v0
.end method

.method protected abstract exec()Z
.end method

.method public final fork()Lscala/concurrent/forkjoin/ForkJoinTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "TV;>;"
        }
    .end annotation

    .line 653
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    .line 654
    check-cast v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->workQueue:Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    invoke-virtual {v0, p0}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->push(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    goto :goto_0

    .line 656
    :cond_0
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool;->common:Lscala/concurrent/forkjoin/ForkJoinPool;

    invoke-virtual {v0, p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->externalPush(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    :goto_0
    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 953
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->doJoin()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->externalInterruptibleAwaitDone()I

    move-result v0

    :goto_0
    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    const/high16 v1, -0x40000000    # -2.0f

    if-eq v0, v1, :cond_3

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_2

    .line 958
    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 959
    :cond_1
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 960
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 957
    :cond_3
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    move-object/from16 v7, p0

    .line 979
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_14

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    .line 983
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 984
    iget v2, v7, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v2, :cond_f

    const-wide/16 v8, 0x0

    cmp-long v3, v0, v8

    if-lez v3, :cond_f

    .line 985
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    add-long v10, v2, v0

    .line 988
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 989
    instance-of v3, v2, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 990
    check-cast v2, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    .line 991
    iget-object v4, v2, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->pool:Lscala/concurrent/forkjoin/ForkJoinPool;

    .line 992
    iget-object v2, v2, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->workQueue:Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    .line 993
    invoke-virtual {v4, v2, v7}, Lscala/concurrent/forkjoin/ForkJoinPool;->helpJoinOnce(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;Lscala/concurrent/forkjoin/ForkJoinTask;)V

    move-object v13, v2

    move-object v12, v4

    goto :goto_0

    .line 996
    :cond_0
    invoke-static/range {p0 .. p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->externalHelpJoin(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    move-object v12, v4

    move-object v13, v12

    :goto_0
    const/4 v2, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 1000
    :cond_1
    :goto_1
    :try_start_0
    iget v5, v7, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v5, :cond_b

    if-eqz v13, :cond_2

    .line 1001
    iget v2, v13, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->qlock:I

    if-gez v2, :cond_2

    .line 1002
    invoke-static/range {p0 .. p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->cancelIgnoringExceptions(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    goto :goto_1

    :cond_2
    if-nez v15, :cond_4

    if-eqz v12, :cond_3

    .line 1004
    invoke-virtual {v12}, Lscala/concurrent/forkjoin/ForkJoinPool;->tryCompensate()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    const/4 v15, 0x1

    goto :goto_1

    .line 1008
    :cond_4
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    cmp-long v0, v3, v8

    if-lez v0, :cond_7

    sget-object v1, Lscala/concurrent/forkjoin/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v17, Lscala/concurrent/forkjoin/ForkJoinTask;->STATUS:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/high16 v0, 0x10000

    or-int v6, v5, v0

    move-object/from16 v2, p0

    move/from16 p2, v15

    move-wide v14, v3

    move-wide/from16 v3, v17

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1010
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1011
    :try_start_2
    iget v0, v7, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ltz v0, :cond_5

    .line 1013
    :try_start_3
    invoke-virtual {v7, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    if-nez v12, :cond_6

    const/16 v16, 0x1

    goto :goto_2

    .line 1020
    :cond_5
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 1021
    :cond_6
    :goto_2
    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :cond_7
    move/from16 p2, v15

    .line 1023
    :cond_8
    :goto_3
    iget v0, v7, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v0, :cond_a

    if-nez v16, :cond_a

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    sub-long v1, v10, v1

    cmp-long v3, v1, v8

    if-gtz v3, :cond_9

    goto :goto_4

    :cond_9
    move/from16 v15, p2

    move-wide v0, v1

    goto :goto_1

    :cond_a
    :goto_4
    move v2, v0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_b
    move/from16 p2, v15

    move v2, v5

    :goto_5
    if-eqz v12, :cond_c

    if-eqz p2, :cond_c

    .line 1030
    invoke-virtual {v12}, Lscala/concurrent/forkjoin/ForkJoinPool;->incrementActiveCount()V

    :cond_c
    if-nez v16, :cond_d

    goto :goto_7

    .line 1033
    :cond_d
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :catchall_2
    move-exception v0

    move/from16 p2, v15

    :goto_6
    if-eqz v12, :cond_e

    if-eqz p2, :cond_e

    .line 1030
    invoke-virtual {v12}, Lscala/concurrent/forkjoin/ForkJoinPool;->incrementActiveCount()V

    :cond_e
    throw v0

    :cond_f
    :goto_7
    const/high16 v0, -0x10000000

    and-int v1, v2, v0

    if-eq v1, v0, :cond_13

    const/high16 v0, -0x40000000    # -2.0f

    if-eq v1, v0, :cond_12

    const/high16 v0, -0x80000000

    if-ne v1, v0, :cond_11

    .line 1041
    invoke-direct/range {p0 .. p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_8

    .line 1042
    :cond_10
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1040
    :cond_11
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    .line 1038
    :cond_12
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 1044
    :cond_13
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 980
    :cond_14
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public final getException()Ljava/lang/Throwable;
    .locals 2

    .line 880
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, -0x40000000    # -2.0f

    if-ne v0, v1, :cond_1

    .line 881
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getForkJoinTaskTag()S
    .locals 1

    .line 1286
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    int-to-short v0, v0

    return v0
.end method

.method public abstract getRawResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method internalPropagateException(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 688
    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->doInvoke()I

    move-result v0

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 689
    invoke-direct {p0, v0}, Lscala/concurrent/forkjoin/ForkJoinTask;->reportException(I)V

    .line 690
    :cond_0
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 2

    .line 849
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    const/high16 v1, -0x40000000    # -2.0f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCompletedAbnormally()Z
    .locals 2

    .line 858
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCompletedNormally()Z
    .locals 2

    .line 869
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isDone()Z
    .locals 1

    .line 845
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final join()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 673
    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->doJoin()I

    move-result v0

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 674
    invoke-direct {p0, v0}, Lscala/concurrent/forkjoin/ForkJoinTask;->reportException(I)V

    .line 675
    :cond_0
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final quietlyComplete()V
    .locals 1

    const/high16 v0, -0x10000000

    .line 938
    invoke-direct {p0, v0}, Lscala/concurrent/forkjoin/ForkJoinTask;->setCompletion(I)I

    return-void
.end method

.method public final quietlyInvoke()V
    .locals 0

    .line 1063
    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->doInvoke()I

    return-void
.end method

.method public final quietlyJoin()V
    .locals 0

    .line 1054
    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->doJoin()I

    return-void
.end method

.method final recordExceptionalCompletion(Ljava/lang/Throwable;)I
    .locals 5

    .line 413
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v0, :cond_2

    .line 414
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 415
    sget-object v1, Lscala/concurrent/forkjoin/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 416
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 418
    :try_start_0
    invoke-static {}, Lscala/concurrent/forkjoin/ForkJoinTask;->expungeStaleExceptions()V

    .line 419
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinTask;->exceptionTable:[Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;

    .line 420
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v0, v3

    .line 421
    aget-object v3, v2, v0

    :goto_0
    if-nez v3, :cond_0

    .line 423
    new-instance v3, Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;

    aget-object v4, v2, v0

    invoke-direct {v3, p0, p1, v4}, Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;-><init>(Lscala/concurrent/forkjoin/ForkJoinTask;Ljava/lang/Throwable;Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;)V

    aput-object v3, v2, v0

    goto :goto_1

    .line 426
    :cond_0
    invoke-virtual {v3}, Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, p0, :cond_1

    .line 430
    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/high16 p1, -0x80000000

    .line 432
    invoke-direct {p0, p1}, Lscala/concurrent/forkjoin/ForkJoinTask;->setCompletion(I)I

    move-result v0

    goto :goto_2

    .line 421
    :cond_1
    :try_start_1
    iget-object v3, v3, Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;->next:Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 430
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_2
    :goto_2
    return v0
.end method

.method public reinitialize()V
    .locals 2

    .line 1100
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 1101
    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->clearExceptionalCompletion()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1103
    iput v0, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    :goto_0
    return-void
.end method

.method public final setForkJoinTaskTag(S)S
    .locals 7

    .line 1298
    :cond_0
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lscala/concurrent/forkjoin/ForkJoinTask;->STATUS:J

    iget v6, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    const/high16 v1, -0x10000

    and-int/2addr v1, v6

    const v4, 0xffff

    and-int/2addr v4, p1

    or-int v5, v1, v4

    move-object v1, p0

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-short p1, v6

    return p1
.end method

.method protected abstract setRawResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method

.method final trySetSignal()Z
    .locals 6

    .line 278
    iget v4, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v4, :cond_0

    .line 279
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lscala/concurrent/forkjoin/ForkJoinTask;->STATUS:J

    const/high16 v1, 0x10000

    or-int v5, v4, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tryUnfork()Z
    .locals 2

    .line 1143
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->workQueue:Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    invoke-virtual {v0, p0}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->tryUnpush(Lscala/concurrent/forkjoin/ForkJoinTask;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->tryExternalUnpush(Lscala/concurrent/forkjoin/ForkJoinTask;)Z

    move-result v0

    :goto_0
    return v0
.end method
