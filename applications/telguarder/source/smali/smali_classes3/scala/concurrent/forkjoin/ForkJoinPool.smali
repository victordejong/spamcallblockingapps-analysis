.class public Lscala/concurrent/forkjoin/ForkJoinPool;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/concurrent/forkjoin/ForkJoinPool$ManagedBlocker;,
        Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;,
        Lscala/concurrent/forkjoin/ForkJoinPool$EmptyTask;,
        Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;,
        Lscala/concurrent/forkjoin/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;,
        Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;
    }
.end annotation


# static fields
.field private static final ABASE:I

.field private static final AC_MASK:J = -0x1000000000000L

.field private static final AC_SHIFT:I = 0x30

.field private static final AC_UNIT:J = 0x1000000000000L

.field private static final ASHIFT:I

.field private static final CTL:J

.field private static final EC_SHIFT:I = 0x10

.field private static final EVENMASK:I = 0xfffe

.field private static final E_MASK:I = 0x7fffffff

.field private static final E_SEQ:I = 0x10000

.field private static final FAST_IDLE_TIMEOUT:J = 0xbebc200L

.field static final FIFO_QUEUE:I = 0x1

.field private static final IDLE_TIMEOUT:J = 0x77359400L

.field private static final INDEXSEED:J

.field private static final INT_SIGN:I = -0x80000000

.field static final LIFO_QUEUE:I = 0x0

.field private static final MAX_CAP:I = 0x7fff

.field private static final MAX_HELP:I = 0x40

.field private static final MAX_SCAN:I = 0x1ffff

.field private static final MIN_SCAN:I = 0x1ff

.field private static final PARKBLOCKER:J

.field private static final PLOCK:J

.field private static final PL_LOCK:I = 0x2

.field private static final PL_SIGNAL:I = 0x1

.field private static final PL_SPINS:I = 0x100

.field private static final QLOCK:J

.field private static final SEED_INCREMENT:I = 0x61c88647

.field static final SHARED_QUEUE:I = -0x1

.field private static final SHORT_SIGN:I = 0x8000

.field private static final SHUTDOWN:I = -0x80000000

.field private static final SMASK:I = 0xffff

.field private static final SQMASK:I = 0x7e

.field private static final STEALCOUNT:J

.field private static final STOP_BIT:J = 0x80000000L

.field private static final ST_SHIFT:I = 0x1f

.field private static final TC_MASK:J = 0xffff00000000L

.field private static final TC_SHIFT:I = 0x20

.field private static final TC_UNIT:J = 0x100000000L

.field private static final TIMEOUT_SLOP:J = 0x1e8480L

.field private static final U:Lsun/misc/Unsafe;

.field private static final UAC_MASK:I = -0x10000

.field private static final UAC_SHIFT:I = 0x10

.field private static final UAC_UNIT:I = 0x10000

.field private static final UTC_MASK:I = 0xffff

.field private static final UTC_SHIFT:I = 0x0

.field private static final UTC_UNIT:I = 0x1

.field static final common:Lscala/concurrent/forkjoin/ForkJoinPool;

.field static final commonParallelism:I

.field public static final defaultForkJoinWorkerThreadFactory:Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;

.field private static final modifyThreadPermission:Ljava/lang/RuntimePermission;

.field private static poolNumberSequence:I

.field static final submitters:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final config:I

.field volatile ctl:J

.field final factory:Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;

.field volatile indexSeed:I

.field volatile pad00:J

.field volatile pad01:J

.field volatile pad02:J

.field volatile pad03:J

.field volatile pad04:J

.field volatile pad05:J

.field volatile pad06:J

.field volatile pad10:Ljava/lang/Object;

.field volatile pad11:Ljava/lang/Object;

.field volatile pad12:Ljava/lang/Object;

.field volatile pad13:Ljava/lang/Object;

.field volatile pad14:Ljava/lang/Object;

.field volatile pad15:Ljava/lang/Object;

.field volatile pad16:Ljava/lang/Object;

.field volatile pad17:Ljava/lang/Object;

.field volatile pad18:Ljava/lang/Object;

.field volatile pad19:Ljava/lang/Object;

.field volatile pad1a:Ljava/lang/Object;

.field volatile pad1b:Ljava/lang/Object;

.field volatile plock:I

.field volatile stealCount:J

.field final ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

.field workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

.field final workerNamePrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 3681
    :try_start_0
    invoke-static {}, Lscala/concurrent/forkjoin/ForkJoinPool;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    .line 3682
    const-class v1, Lscala/concurrent/forkjoin/ForkJoinPool;

    const-string v2, "ctl"

    .line 3683
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    const-string v2, "stealCount"

    .line 3685
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lscala/concurrent/forkjoin/ForkJoinPool;->STEALCOUNT:J

    const-string v2, "plock"

    .line 3687
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lscala/concurrent/forkjoin/ForkJoinPool;->PLOCK:J

    const-string v2, "indexSeed"

    .line 3689
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lscala/concurrent/forkjoin/ForkJoinPool;->INDEXSEED:J

    .line 3691
    const-class v1, Ljava/lang/Thread;

    const-string v2, "parkBlocker"

    .line 3692
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lscala/concurrent/forkjoin/ForkJoinPool;->PARKBLOCKER:J

    .line 3694
    const-class v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    const-string v2, "qlock"

    .line 3695
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lscala/concurrent/forkjoin/ForkJoinPool;->QLOCK:J

    .line 3697
    const-class v1, [Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 3698
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    sput v2, Lscala/concurrent/forkjoin/ForkJoinPool;->ABASE:I

    .line 3699
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_5

    .line 3702
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    sput v0, Lscala/concurrent/forkjoin/ForkJoinPool;->ASHIFT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3707
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lscala/concurrent/forkjoin/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    .line 3708
    new-instance v0, Lscala/concurrent/forkjoin/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;

    invoke-direct {v0}, Lscala/concurrent/forkjoin/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;-><init>()V

    sput-object v0, Lscala/concurrent/forkjoin/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 3710
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "modifyThread"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v1, Lscala/concurrent/forkjoin/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    const-string v3, "java.util.concurrent.ForkJoinPool.common.parallelism"

    .line 3721
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "java.util.concurrent.ForkJoinPool.common.exceptionHandler"

    .line 3723
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "java.util.concurrent.ForkJoinPool.common.threadFactory"

    .line 3725
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 3728
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;

    move-object v0, v5

    :cond_0
    if-eqz v4, :cond_1

    .line 3731
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread$UncaughtExceptionHandler;

    move-object v2, v4

    :cond_1
    if-eqz v3, :cond_2

    .line 3734
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    move-object v7, v0

    move-object v8, v2

    if-gtz v1, :cond_3

    .line 3739
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    :cond_3
    const/16 v0, 0x7fff

    if-le v1, v0, :cond_4

    const/16 v4, 0x7fff

    goto :goto_0

    :cond_4
    move v4, v1

    .line 3742
    :goto_0
    sput v4, Lscala/concurrent/forkjoin/ForkJoinPool;->commonParallelism:I

    neg-int v0, v4

    int-to-long v0, v0

    const/16 v2, 0x30

    shl-long v2, v0, v2

    const-wide/high16 v5, -0x1000000000000L

    and-long/2addr v2, v5

    const/16 v5, 0x20

    shl-long/2addr v0, v5

    const-wide v5, 0xffff00000000L

    and-long/2addr v0, v5

    or-long v5, v2, v0

    .line 3746
    new-instance v0, Lscala/concurrent/forkjoin/ForkJoinPool;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lscala/concurrent/forkjoin/ForkJoinPool;-><init>(IJLscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sput-object v0, Lscala/concurrent/forkjoin/ForkJoinPool;->common:Lscala/concurrent/forkjoin/ForkJoinPool;

    return-void

    .line 3701
    :cond_5
    :try_start_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "data type scale not a power of two"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    .line 3704
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 4

    .line 2820
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/16 v1, 0x7fff

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget-object v1, Lscala/concurrent/forkjoin/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lscala/concurrent/forkjoin/ForkJoinPool;-><init>(ILscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 2839
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lscala/concurrent/forkjoin/ForkJoinPool;-><init>(ILscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    return-void
.end method

.method constructor <init>(IJLscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 2893
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 2894
    iput p1, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    .line 2895
    iput-wide p2, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    .line 2896
    iput-object p4, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->factory:Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 2897
    iput-object p5, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    const-string p1, "ForkJoinPool.commonPool-worker-"

    .line 2898
    iput-object p1, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V
    .locals 2

    .line 2869
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 2870
    invoke-static {}, Lscala/concurrent/forkjoin/ForkJoinPool;->checkPermission()V

    .line 2872
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-lez p1, :cond_1

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_1

    .line 2875
    iput-object p2, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->factory:Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 2876
    iput-object p3, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p4, :cond_0

    const/high16 p2, 0x10000

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p2, p1

    .line 2877
    iput p2, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    neg-int p1, p1

    int-to-long p1, p1

    const/16 p3, 0x30

    shl-long p3, p1, p3

    const-wide/high16 v0, -0x1000000000000L

    and-long/2addr p3, v0

    const/16 v0, 0x20

    shl-long/2addr p1, v0

    const-wide v0, 0xffff00000000L

    and-long/2addr p1, v0

    or-long/2addr p1, p3

    .line 2879
    iput-wide p1, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    .line 2880
    invoke-static {}, Lscala/concurrent/forkjoin/ForkJoinPool;->nextPoolId()I

    move-result p1

    .line 2881
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ForkJoinPool-"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2882
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-worker-"

    .line 2883
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2884
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    return-void

    .line 2874
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method static synthetic access$000()Lsun/misc/Unsafe;
    .locals 1

    .line 474
    invoke-static {}, Lscala/concurrent/forkjoin/ForkJoinPool;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    return-object v0
.end method

.method private acquirePlock()I
    .locals 10

    const/16 v0, 0x100

    const/4 v1, 0x0

    .line 1609
    :cond_0
    :goto_0
    iget v8, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I

    and-int/lit8 v2, v8, 0x2

    if-nez v2, :cond_1

    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lscala/concurrent/forkjoin/ForkJoinPool;->PLOCK:J

    add-int/lit8 v9, v8, 0x2

    move-object v3, p0

    move v6, v8

    move v7, v9

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_1

    return v9

    :cond_1
    const/4 v9, 0x1

    if-nez v1, :cond_4

    .line 1613
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 1614
    instance-of v2, v1, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    if-eqz v2, :cond_2

    check-cast v1, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    iget-object v1, v1, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->workQueue:Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    if-eqz v1, :cond_2

    .line 1616
    iget v1, v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->seed:I

    goto :goto_0

    .line 1617
    :cond_2
    sget-object v1, Lscala/concurrent/forkjoin/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;

    if-eqz v1, :cond_3

    .line 1618
    iget v1, v1, Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;->seed:I

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    if-ltz v0, :cond_5

    shl-int/lit8 v2, v1, 0x1

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0x3

    xor-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0xa

    xor-int/2addr v1, v2

    if-ltz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1627
    :cond_5
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lscala/concurrent/forkjoin/ForkJoinPool;->PLOCK:J

    or-int/lit8 v7, v8, 0x1

    move-object v3, p0

    move v6, v8

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1628
    monitor-enter p0

    .line 1629
    :try_start_0
    iget v2, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/2addr v2, v9

    if-eqz v2, :cond_6

    .line 1631
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1634
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1640
    :cond_6
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1641
    :catch_1
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private static checkPermission()V
    .locals 2

    .line 854
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 856
    sget-object v1, Lscala/concurrent/forkjoin/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    return-void
.end method

.method public static commonPool()Lscala/concurrent/forkjoin/ForkJoinPool;
    .locals 1

    .line 2916
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool;->common:Lscala/concurrent/forkjoin/ForkJoinPool;

    return-object v0
.end method

.method static commonSubmitterQueue()Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .locals 3

    .line 2683
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;

    if-eqz v0, :cond_0

    sget-object v1, Lscala/concurrent/forkjoin/ForkJoinPool;->common:Lscala/concurrent/forkjoin/ForkJoinPool;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    if-eqz v1, :cond_0

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    iget v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;->seed:I

    and-int/2addr v0, v2

    and-int/lit8 v0, v0, 0x7e

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private externalHelpComplete(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;Lscala/concurrent/forkjoin/ForkJoinTask;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    if-eqz v7, :cond_7

    .line 2726
    iget-object v9, v7, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    if-eqz v9, :cond_7

    array-length v1, v9

    add-int/lit8 v10, v1, -0x1

    if-ltz v10, :cond_7

    if-eqz v8, :cond_7

    iget v1, v8, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v1, :cond_7

    :cond_0
    const/4 v11, 0x0

    .line 2730
    iget v12, v7, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    iget v1, v7, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    sub-int v1, v12, v1

    if-lez v1, :cond_4

    add-int/lit8 v13, v12, -0x1

    and-int v1, v10, v13

    .line 2731
    sget v2, Lscala/concurrent/forkjoin/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v1, v2

    sget v2, Lscala/concurrent/forkjoin/ForkJoinPool;->ABASE:I

    add-int/2addr v1, v2

    int-to-long v14, v1

    .line 2732
    sget-object v1, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v1, v9, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    instance-of v2, v1, Lscala/concurrent/forkjoin/CountedCompleter;

    if-eqz v2, :cond_4

    .line 2734
    move-object/from16 v16, v1

    check-cast v16, Lscala/concurrent/forkjoin/CountedCompleter;

    move-object/from16 v1, v16

    :cond_1
    if-ne v1, v8, :cond_3

    .line 2737
    sget-object v17, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lscala/concurrent/forkjoin/ForkJoinPool;->QLOCK:J

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2738
    iget-object v1, v7, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    if-ne v1, v9, :cond_2

    iget v1, v7, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    if-ne v1, v12, :cond_2

    const/4 v6, 0x0

    move-object/from16 v1, v17

    move-object v2, v9

    move-wide v3, v14

    move-object/from16 v5, v16

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2740
    iput v13, v7, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    move-object/from16 v11, v16

    :cond_2
    const/4 v1, 0x0

    .line 2743
    iput v1, v7, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->qlock:I

    goto :goto_0

    .line 2747
    :cond_3
    iget-object v1, v1, Lscala/concurrent/forkjoin/CountedCompleter;->completer:Lscala/concurrent/forkjoin/CountedCompleter;

    if-nez v1, :cond_1

    :cond_4
    :goto_0
    if-eqz v11, :cond_5

    .line 2751
    invoke-virtual {v11}, Lscala/concurrent/forkjoin/CountedCompleter;->doExec()I

    .line 2752
    :cond_5
    iget v1, v8, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v1, :cond_7

    iget-wide v1, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v2, v1

    if-gez v2, :cond_7

    shr-int/lit8 v1, v2, 0x10

    if-ltz v1, :cond_6

    goto :goto_1

    :cond_6
    if-nez v11, :cond_0

    .line 2756
    iget v1, v7, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->poolIndex:I

    invoke-direct {v0, v8, v1}, Lscala/concurrent/forkjoin/ForkJoinPool;->helpSignal(Lscala/concurrent/forkjoin/ForkJoinTask;I)V

    .line 2757
    iget v1, v8, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v1, :cond_7

    const/4 v1, -0x1

    .line 2758
    invoke-direct {v0, v8, v1}, Lscala/concurrent/forkjoin/ForkJoinPool;->helpComplete(Lscala/concurrent/forkjoin/ForkJoinTask;I)I

    :cond_7
    :goto_1
    return-void
.end method

.method static externalHelpJoin(Lscala/concurrent/forkjoin/ForkJoinTask;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 2773
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;

    if-eqz v0, :cond_3

    sget-object v1, Lscala/concurrent/forkjoin/ForkJoinPool;->common:Lscala/concurrent/forkjoin/ForkJoinPool;

    if-eqz v1, :cond_3

    iget-object v2, v1, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    if-eqz v2, :cond_3

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_3

    iget v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;->seed:I

    and-int/2addr v0, v3

    and-int/lit8 v0, v0, 0x7e

    aget-object v0, v2, v0

    if-eqz v0, :cond_3

    iget-object v9, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    if-eqz v9, :cond_3

    .line 2780
    array-length v2, v9

    add-int/lit8 v2, v2, -0x1

    .line 2781
    iget v10, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    iget v3, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    if-eq v10, v3, :cond_1

    add-int/lit8 v11, v10, -0x1

    and-int/2addr v2, v11

    .line 2782
    sget v3, Lscala/concurrent/forkjoin/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v2, v3

    sget v3, Lscala/concurrent/forkjoin/ForkJoinPool;->ABASE:I

    add-int/2addr v2, v3

    int-to-long v12, v2

    .line 2783
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v9, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_1

    sget-wide v5, Lscala/concurrent/forkjoin/ForkJoinPool;->QLOCK:J

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, v2

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2785
    iget-object v3, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    const/4 v8, 0x0

    if-ne v3, v9, :cond_0

    iget v3, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    if-ne v3, v10, :cond_0

    const/4 v7, 0x0

    move-object v3, v9

    move-wide v4, v12

    move-object v6, p0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2787
    iput v11, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    .line 2788
    iput v8, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->qlock:I

    .line 2789
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->doExec()I

    goto :goto_0

    .line 2792
    :cond_0
    iput v8, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->qlock:I

    .line 2795
    :cond_1
    :goto_0
    iget v2, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v2, :cond_3

    .line 2796
    instance-of v2, p0, Lscala/concurrent/forkjoin/CountedCompleter;

    if-eqz v2, :cond_2

    .line 2797
    invoke-direct {v1, v0, p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->externalHelpComplete(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;Lscala/concurrent/forkjoin/ForkJoinTask;)V

    goto :goto_1

    .line 2799
    :cond_2
    iget v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->poolIndex:I

    invoke-direct {v1, p0, v0}, Lscala/concurrent/forkjoin/ForkJoinPool;->helpSignal(Lscala/concurrent/forkjoin/ForkJoinTask;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private findNonEmptyStealQueue(I)Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .locals 7

    .line 2442
    :cond_0
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I

    .line 2443
    iget-object v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    if-eqz v1, :cond_2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    add-int/lit8 v3, v2, 0x1

    shl-int/lit8 v3, v3, 0x2

    :goto_0
    if-ltz v3, :cond_2

    add-int v4, p1, v3

    shl-int/lit8 v4, v4, 0x1

    or-int/lit8 v4, v4, 0x1

    and-int/2addr v4, v2

    .line 2445
    aget-object v4, v1, v4

    if-eqz v4, :cond_1

    iget v5, v4, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    iget v6, v4, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v5, v6

    if-gez v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2450
    :cond_2
    iget v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I

    if-ne v1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1
.end method

.method private fullExternalPush(Lscala/concurrent/forkjoin/ForkJoinTask;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    .line 1856
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;

    const/4 v8, 0x0

    :cond_0
    :goto_0
    const/4 v9, 0x0

    :cond_1
    :goto_1
    if-nez v0, :cond_3

    .line 1859
    sget-object v1, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lscala/concurrent/forkjoin/ForkJoinPool;->INDEXSEED:J

    iget v5, v7, Lscala/concurrent/forkjoin/ForkJoinPool;->indexSeed:I

    const v2, 0x61c88647

    add-int v9, v5, v2

    move-object/from16 v2, p0

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v9, :cond_2

    .line 1861
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    new-instance v1, Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;

    invoke-direct {v1, v9}, Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object/from16 v13, p1

    move-object v0, v1

    goto :goto_1

    :cond_2
    :goto_2
    move-object/from16 v13, p1

    goto :goto_1

    :cond_3
    if-nez v9, :cond_4

    .line 1864
    iget v1, v0, Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;->seed:I

    shl-int/lit8 v2, v1, 0xd

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0x11

    xor-int v9, v1, v2

    shl-int/lit8 v1, v9, 0x5

    xor-int/2addr v1, v9

    .line 1867
    iput v1, v0, Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;->seed:I

    goto :goto_2

    .line 1869
    :cond_4
    iget v1, v7, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I

    if-ltz v1, :cond_16

    const v10, 0x7fffffff

    const/high16 v11, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_e

    .line 1871
    iget-object v1, v7, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    if-eqz v1, :cond_e

    array-length v4, v1

    sub-int/2addr v4, v3

    if-gez v4, :cond_5

    goto/16 :goto_6

    :cond_5
    and-int/2addr v4, v9

    and-int/lit8 v12, v4, 0x7e

    .line 1888
    aget-object v1, v1, v12

    if-eqz v1, :cond_a

    .line 1889
    iget v2, v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->qlock:I

    if-nez v2, :cond_9

    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v15, Lscala/concurrent/forkjoin/ForkJoinPool;->QLOCK:J

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v13, v2

    move-object v14, v1

    invoke-virtual/range {v13 .. v18}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1890
    iget-object v4, v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 1891
    iget v5, v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    if-eqz v4, :cond_6

    .line 1894
    :try_start_0
    array-length v6, v4

    add-int/lit8 v9, v5, 0x1

    iget v10, v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    sub-int/2addr v9, v10

    if-gt v6, v9, :cond_7

    :cond_6
    invoke-virtual {v1}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->growArray()[Lscala/concurrent/forkjoin/ForkJoinTask;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 1896
    :cond_7
    array-length v6, v4

    sub-int/2addr v6, v3

    and-int/2addr v6, v5

    sget v9, Lscala/concurrent/forkjoin/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v6, v9

    sget v9, Lscala/concurrent/forkjoin/ForkJoinPool;->ABASE:I

    add-int/2addr v6, v9

    int-to-long v9, v6

    move-object/from16 v13, p1

    .line 1897
    invoke-virtual {v2, v4, v9, v10, v13}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    .line 1898
    iput v5, v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_8
    move-object/from16 v13, p1

    const/4 v3, 0x0

    .line 1902
    :goto_3
    iput v8, v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->qlock:I

    if-eqz v3, :cond_0

    .line 1905
    invoke-virtual {v7, v1}, Lscala/concurrent/forkjoin/ForkJoinPool;->signalWork(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)V

    return-void

    :catchall_0
    move-exception v0

    .line 1902
    iput v8, v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->qlock:I

    throw v0

    :cond_9
    move-object/from16 v13, p1

    goto/16 :goto_0

    :cond_a
    move-object/from16 v13, p1

    .line 1911
    iget v1, v7, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 1912
    new-instance v14, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    const/4 v1, -0x1

    invoke-direct {v14, v7, v2, v1, v9}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;-><init>(Lscala/concurrent/forkjoin/ForkJoinPool;Lscala/concurrent/forkjoin/ForkJoinWorkerThread;II)V

    .line 1913
    iget v5, v7, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I

    and-int/lit8 v1, v5, 0x2

    if-nez v1, :cond_c

    sget-object v1, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lscala/concurrent/forkjoin/ForkJoinPool;->PLOCK:J

    add-int/lit8 v15, v5, 0x2

    move-object/from16 v2, p0

    move v6, v15

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_4

    :cond_b
    move v5, v15

    goto :goto_5

    .line 1915
    :cond_c
    :goto_4
    invoke-direct/range {p0 .. p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->acquirePlock()I

    move-result v1

    move v5, v1

    .line 1916
    :goto_5
    iget-object v1, v7, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    if-eqz v1, :cond_d

    array-length v2, v1

    if-ge v12, v2, :cond_d

    aget-object v2, v1, v12

    if-nez v2, :cond_d

    .line 1917
    aput-object v14, v1, v12

    :cond_d
    and-int v1, v5, v11

    add-int/lit8 v2, v5, 0x2

    and-int/2addr v2, v10

    or-int v10, v1, v2

    .line 1919
    sget-object v1, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lscala/concurrent/forkjoin/ForkJoinPool;->PLOCK:J

    move-object/from16 v2, p0

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1920
    invoke-direct {v7, v10}, Lscala/concurrent/forkjoin/ForkJoinPool;->releasePlock(I)V

    goto/16 :goto_1

    :cond_e
    :goto_6
    move-object/from16 v13, p1

    .line 1873
    iget v1, v7, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    const v4, 0xffff

    and-int/2addr v1, v4

    if-le v1, v3, :cond_f

    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_f
    const/4 v1, 0x1

    :goto_7
    ushr-int/lit8 v4, v1, 0x1

    or-int/2addr v1, v4

    ushr-int/lit8 v4, v1, 0x2

    or-int/2addr v1, v4

    ushr-int/lit8 v4, v1, 0x4

    or-int/2addr v1, v4

    ushr-int/lit8 v4, v1, 0x8

    or-int/2addr v1, v4

    ushr-int/lit8 v4, v1, 0x10

    or-int/2addr v1, v4

    add-int/2addr v1, v3

    shl-int/2addr v1, v3

    .line 1877
    iget-object v3, v7, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    if-eqz v3, :cond_10

    array-length v3, v3

    if-nez v3, :cond_11

    :cond_10
    new-array v2, v1, [Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    :cond_11
    move-object v12, v2

    .line 1879
    iget v5, v7, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I

    and-int/lit8 v1, v5, 0x2

    if-nez v1, :cond_13

    sget-object v1, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lscala/concurrent/forkjoin/ForkJoinPool;->PLOCK:J

    add-int/lit8 v14, v5, 0x2

    move-object/from16 v2, p0

    move v6, v14

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_8

    :cond_12
    move v5, v14

    goto :goto_9

    .line 1881
    :cond_13
    :goto_8
    invoke-direct/range {p0 .. p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->acquirePlock()I

    move-result v1

    move v5, v1

    .line 1882
    :goto_9
    iget-object v1, v7, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    if-eqz v1, :cond_14

    array-length v1, v1

    if-nez v1, :cond_15

    :cond_14
    if-eqz v12, :cond_15

    .line 1883
    iput-object v12, v7, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    :cond_15
    and-int v1, v5, v11

    add-int/lit8 v2, v5, 0x2

    and-int/2addr v2, v10

    or-int v10, v1, v2

    .line 1885
    sget-object v1, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lscala/concurrent/forkjoin/ForkJoinPool;->PLOCK:J

    move-object/from16 v2, p0

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1886
    invoke-direct {v7, v10}, Lscala/concurrent/forkjoin/ForkJoinPool;->releasePlock(I)V

    goto/16 :goto_1

    .line 1870
    :cond_16
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw v0
.end method

.method public static getCommonPoolParallelism()I
    .locals 1

    .line 3094
    sget v0, Lscala/concurrent/forkjoin/ForkJoinPool;->commonParallelism:I

    return v0
.end method

.method static getSurplusQueuedTaskCount()I
    .locals 6

    .line 2562
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 2563
    check-cast v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    iget-object v1, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->pool:Lscala/concurrent/forkjoin/ForkJoinPool;

    iget v3, v1, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    const v4, 0xffff

    and-int/2addr v3, v4

    .line 2564
    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->workQueue:Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    iget v4, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    iget v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    sub-int/2addr v4, v0

    .line 2565
    iget-wide v0, v1, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    const/16 v5, 0x30

    shr-long/2addr v0, v5

    long-to-int v1, v0

    add-int/2addr v1, v3

    const/4 v0, 0x1

    ushr-int/2addr v3, v0

    if-le v1, v3, :cond_0

    goto :goto_0

    :cond_0
    ushr-int/lit8 v2, v3, 0x1

    if-le v1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    ushr-int/2addr v2, v0

    if-le v1, v2, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    ushr-int/lit8 v0, v2, 0x1

    if-le v1, v0, :cond_3

    const/4 v2, 0x4

    goto :goto_0

    :cond_3
    const/16 v2, 0x8

    :goto_0
    sub-int/2addr v4, v2

    return v4

    :cond_4
    return v2
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .locals 1

    .line 3757
    sget-object v0, Lscala/concurrent/util/Unsafe;->instance:Lsun/misc/Unsafe;

    return-object v0
.end method

.method private helpComplete(Lscala/concurrent/forkjoin/ForkJoinTask;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;I)I"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 2288
    iget-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    if-eqz v0, :cond_4

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ltz v1, :cond_4

    const/4 v3, 0x1

    .line 2291
    :cond_0
    :goto_0
    iget v4, p1, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-gez v4, :cond_1

    return v4

    :cond_1
    and-int v4, v2, v1

    .line 2293
    aget-object v4, v0, v4

    if-eqz v4, :cond_3

    invoke-virtual {v4, p1}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->pollAndExecCC(Lscala/concurrent/forkjoin/ForkJoinTask;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, -0x1

    if-ne p2, v3, :cond_2

    .line 2295
    iget-wide v3, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    long-to-int v4, v3

    if-gez v4, :cond_4

    shr-int/lit8 v3, v4, 0x10

    if-ltz v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x2

    and-int/2addr v2, v1

    if-ne v2, v3, :cond_0

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method private helpSignal(Lscala/concurrent/forkjoin/ForkJoinTask;I)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;I)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    if-eqz v9, :cond_8

    .line 2161
    iget v0, v9, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v0, :cond_8

    iget-wide v0, v8, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    const/16 v10, 0x20

    ushr-long/2addr v0, v10

    long-to-int v1, v0

    if-gez v1, :cond_8

    shr-int/lit8 v0, v1, 0x10

    if-gez v0, :cond_8

    iget-object v11, v8, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    if-eqz v11, :cond_8

    array-length v0, v11

    add-int/lit8 v12, v0, -0x1

    if-ltz v12, :cond_8

    move/from16 v0, p2

    move v13, v12

    :goto_0
    if-ltz v13, :cond_8

    add-int/lit8 v14, v0, 0x1

    and-int/2addr v0, v12

    .line 2165
    aget-object v15, v11, v0

    move v0, v12

    .line 2167
    :goto_1
    iget v1, v9, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-gez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz v15, :cond_7

    .line 2169
    iget v1, v15, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    neg-int v1, v1

    iget v2, v15, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    add-int/2addr v1, v2

    if-gt v1, v0, :cond_2

    if-gtz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    move/from16 v16, v1

    goto :goto_2

    :cond_2
    move/from16 v16, v0

    .line 2172
    :goto_2
    iget-wide v4, v8, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    ushr-long v0, v4, v10

    long-to-int v1, v0

    if-gez v1, :cond_8

    long-to-int v6, v4

    if-lez v6, :cond_8

    const v0, 0xffff

    and-int/2addr v0, v6

    if-lt v12, v0, :cond_8

    aget-object v7, v11, v0

    if-nez v7, :cond_3

    goto :goto_4

    .line 2176
    :cond_3
    iget v0, v7, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nextWait:I

    const v17, 0x7fffffff

    and-int v0, v0, v17

    int-to-long v2, v0

    const/high16 v18, 0x10000

    add-int v1, v1, v18

    int-to-long v0, v1

    shl-long/2addr v0, v10

    or-long v19, v2, v0

    .line 2178
    iget v0, v7, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    const/high16 v1, -0x80000000

    or-int/2addr v1, v6

    if-eq v0, v1, :cond_4

    goto :goto_4

    .line 2180
    :cond_4
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v21, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v10, v2

    move-wide/from16 v2, v21

    move/from16 v21, v6

    move-object v8, v7

    move-wide/from16 v6, v19

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int v6, v21, v18

    and-int v0, v6, v17

    .line 2181
    iput v0, v8, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    .line 2182
    iget-object v0, v8, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    if-eqz v0, :cond_5

    .line 2183
    invoke-virtual {v10, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    :cond_5
    add-int/lit8 v16, v16, -0x1

    if-gtz v16, :cond_6

    goto :goto_3

    :cond_6
    move/from16 v0, v16

    const/16 v10, 0x20

    move-object/from16 v8, p0

    goto :goto_1

    :cond_7
    :goto_3
    add-int/lit8 v13, v13, -0x1

    const/16 v10, 0x20

    move-object/from16 v8, p0

    move v0, v14

    goto/16 :goto_0

    :cond_8
    :goto_4
    return-void
.end method

.method private idleAwaitWork(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;JJ)V
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    if-eqz v9, :cond_5

    .line 2123
    iget v0, v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    if-gez v0, :cond_5

    const/4 v10, 0x0

    invoke-direct {v8, v10, v10}, Lscala/concurrent/forkjoin/ForkJoinPool;->tryTerminate(ZZ)Z

    move-result v0

    if-nez v0, :cond_5

    move-wide/from16 v11, p4

    long-to-int v0, v11

    if-eqz v0, :cond_5

    iget-wide v0, v8, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    cmp-long v2, v0, p2

    if-nez v2, :cond_5

    const/16 v0, 0x20

    ushr-long v0, p2, v0

    long-to-int v1, v0

    int-to-short v0, v1

    neg-int v0, v0

    if-gez v0, :cond_0

    const-wide/32 v0, 0xbebc200

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    const-wide/32 v2, 0x77359400

    mul-long v0, v0, v2

    :goto_0
    move-wide v13, v0

    .line 2128
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    add-long/2addr v0, v13

    const-wide/32 v2, 0x1e8480

    sub-long v15, v0, v2

    .line 2129
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    .line 2130
    :cond_1
    :goto_1
    iget-wide v0, v8, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    cmp-long v2, v0, p2

    if-nez v2, :cond_5

    .line 2131
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 2132
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v1, Lscala/concurrent/forkjoin/ForkJoinPool;->PARKBLOCKER:J

    invoke-virtual {v0, v6, v1, v2, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2133
    iput-object v6, v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .line 2134
    iget-wide v3, v8, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    cmp-long v5, v3, p2

    if-nez v5, :cond_2

    .line 2135
    invoke-virtual {v0, v10, v13, v14}, Lsun/misc/Unsafe;->park(ZJ)V

    :cond_2
    const/4 v3, 0x0

    .line 2136
    iput-object v3, v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .line 2137
    invoke-virtual {v0, v6, v1, v2, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2138
    iget-wide v1, v8, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    cmp-long v3, v1, p2

    if-eqz v3, :cond_3

    goto :goto_2

    .line 2140
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long v1, v15, v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    sget-wide v2, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    move-object/from16 v1, p0

    move-wide/from16 v4, p2

    move-object/from16 v17, v6

    move-wide/from16 v6, p4

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2142
    iget v0, v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    const/high16 v1, 0x10000

    add-int/2addr v0, v1

    const v1, 0x7fffffff

    or-int/2addr v0, v1

    iput v0, v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    const/4 v0, -0x1

    .line 2143
    iput v0, v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->hint:I

    .line 2144
    iput v0, v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->qlock:I

    goto :goto_2

    :cond_4
    move-object/from16 v6, v17

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public static managedBlock(Lscala/concurrent/forkjoin/ForkJoinPool$ManagedBlocker;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 3621
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 3622
    instance-of v1, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    if-eqz v1, :cond_6

    .line 3623
    check-cast v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->pool:Lscala/concurrent/forkjoin/ForkJoinPool;

    .line 3624
    :cond_0
    invoke-interface {p0}, Lscala/concurrent/forkjoin/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v1

    if-nez v1, :cond_7

    .line 3626
    iget-object v1, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    if-eqz v1, :cond_3

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_3

    const/4 v3, 0x0

    :goto_0
    if-gt v3, v2, :cond_3

    .line 3628
    invoke-interface {p0}, Lscala/concurrent/forkjoin/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    .line 3630
    :cond_1
    aget-object v4, v1, v3

    if-eqz v4, :cond_2

    iget v5, v4, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    iget v6, v4, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v5, v6

    if-gez v5, :cond_2

    .line 3631
    invoke-virtual {v0, v4}, Lscala/concurrent/forkjoin/ForkJoinPool;->signalWork(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)V

    .line 3632
    iget-wide v4, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    long-to-int v5, v4

    if-gez v5, :cond_3

    shr-int/lit8 v4, v5, 0x10

    if-ltz v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3638
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lscala/concurrent/forkjoin/ForkJoinPool;->tryCompensate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3640
    :cond_4
    :try_start_0
    invoke-interface {p0}, Lscala/concurrent/forkjoin/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {p0}, Lscala/concurrent/forkjoin/ForkJoinPool$ManagedBlocker;->block()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    .line 3643
    :cond_5
    invoke-virtual {v0}, Lscala/concurrent/forkjoin/ForkJoinPool;->incrementActiveCount()V

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lscala/concurrent/forkjoin/ForkJoinPool;->incrementActiveCount()V

    throw p0

    .line 3650
    :cond_6
    invoke-interface {p0}, Lscala/concurrent/forkjoin/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {p0}, Lscala/concurrent/forkjoin/ForkJoinPool$ManagedBlocker;->block()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_7
    :goto_2
    return-void
.end method

.method private static final declared-synchronized nextPoolId()I
    .locals 2

    const-class v0, Lscala/concurrent/forkjoin/ForkJoinPool;

    monitor-enter v0

    .line 1444
    :try_start_0
    sget v1, Lscala/concurrent/forkjoin/ForkJoinPool;->poolNumberSequence:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lscala/concurrent/forkjoin/ForkJoinPool;->poolNumberSequence:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static quiesceCommonPool()V
    .locals 4

    .line 3523
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool;->common:Lscala/concurrent/forkjoin/ForkJoinPool;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v2, v3, v1}, Lscala/concurrent/forkjoin/ForkJoinPool;->awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method private releasePlock(I)V
    .locals 0

    .line 1651
    iput p1, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I

    .line 1652
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final scan(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)Lscala/concurrent/forkjoin/ForkJoinTask;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;",
            ")",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 2021
    iget v0, v8, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I

    if-eqz v9, :cond_14

    .line 2022
    iget-object v1, v8, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    if-eqz v1, :cond_14

    array-length v2, v1

    add-int/lit8 v11, v2, -0x1

    if-ltz v11, :cond_14

    .line 2023
    iget v12, v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    .line 2024
    iget v2, v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->seed:I

    shl-int/lit8 v3, v2, 0xd

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v2, 0x11

    xor-int/2addr v2, v3

    shl-int/lit8 v3, v2, 0x5

    xor-int/2addr v2, v3

    iput v2, v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->seed:I

    const/4 v13, -0x1

    .line 2025
    iput v13, v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->hint:I

    add-int v3, v11, v11

    add-int/lit8 v3, v3, 0x1

    or-int/lit16 v3, v3, 0x1ff

    const v4, 0x1ffff

    and-int/2addr v3, v4

    :goto_0
    add-int v4, v2, v3

    and-int/2addr v4, v11

    .line 2029
    aget-object v5, v1, v4

    if-eqz v5, :cond_3

    iget v6, v5, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    iget v7, v5, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    sub-int v7, v6, v7

    if-gez v7, :cond_3

    iget-object v7, v5, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    if-eqz v7, :cond_3

    .line 2031
    array-length v15, v7

    add-int/lit8 v15, v15, -0x1

    and-int/2addr v15, v6

    sget v16, Lscala/concurrent/forkjoin/ForkJoinPool;->ASHIFT:I

    shl-int v15, v15, v16

    sget v16, Lscala/concurrent/forkjoin/ForkJoinPool;->ABASE:I

    add-int v15, v15, v16

    .line 2032
    sget-object v10, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    int-to-long v13, v15

    invoke-virtual {v10, v7, v13, v14}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v22, v15

    check-cast v22, Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 2034
    iget v15, v5, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    if-ne v15, v6, :cond_1

    if-ltz v12, :cond_1

    if-eqz v22, :cond_1

    const/16 v20, 0x0

    move-object v15, v10

    move-object/from16 v16, v7

    move-wide/from16 v17, v13

    move-object/from16 v19, v22

    invoke-virtual/range {v15 .. v20}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    .line 2036
    iput v6, v5, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    iget v0, v5, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v6, v0

    if-gez v6, :cond_0

    .line 2037
    invoke-virtual {v8, v5}, Lscala/concurrent/forkjoin/ForkJoinPool;->signalWork(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)V

    :cond_0
    return-object v22

    :cond_1
    if-ltz v12, :cond_2

    if-ge v3, v11, :cond_3

    .line 2040
    :cond_2
    iget-wide v5, v8, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    const/16 v7, 0x30

    shr-long/2addr v5, v7

    long-to-int v6, v5

    if-gtz v6, :cond_3

    .line 2041
    iput v4, v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->hint:I

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_13

    .line 2048
    :goto_1
    iget v1, v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nsteals:I

    const/4 v10, 0x0

    if-eqz v1, :cond_4

    .line 2049
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lscala/concurrent/forkjoin/ForkJoinPool;->STEALCOUNT:J

    iget-wide v4, v8, Lscala/concurrent/forkjoin/ForkJoinPool;->stealCount:J

    int-to-long v6, v1

    add-long/2addr v6, v4

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2051
    iput v10, v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nsteals:I

    goto/16 :goto_7

    .line 2053
    :cond_4
    iget v1, v8, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I

    if-eq v1, v0, :cond_5

    goto/16 :goto_7

    .line 2055
    :cond_5
    iget-wide v13, v8, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    long-to-int v0, v13

    if-gez v0, :cond_6

    const/4 v1, -0x1

    .line 2056
    iput v1, v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->qlock:I

    goto/16 :goto_7

    .line 2058
    :cond_6
    iget v15, v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->hint:I

    const/high16 v16, -0x80000000

    const v17, 0xffff

    if-gez v15, :cond_b

    if-ltz v12, :cond_9

    int-to-long v1, v12

    const-wide/high16 v3, 0x1000000000000L

    sub-long v3, v13, v3

    const-wide v5, -0x100000000L

    and-long/2addr v3, v5

    or-long v18, v1, v3

    .line 2062
    iput v0, v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nextWait:I

    or-int v0, v12, v16

    .line 2063
    iput v0, v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    .line 2064
    iget-wide v0, v8, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    cmp-long v2, v0, v13

    if-nez v2, :cond_8

    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    move-object/from16 v1, p0

    move-wide v4, v13

    move-wide/from16 v6, v18

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    const/16 v0, 0x30

    shr-long v0, v13, v0

    long-to-int v1, v0

    .line 2066
    iget v0, v8, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    and-int v0, v0, v17

    rsub-int/lit8 v0, v0, 0x1

    if-ne v1, v0, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v18

    move-wide v4, v13

    .line 2067
    invoke-direct/range {v0 .. v5}, Lscala/concurrent/forkjoin/ForkJoinPool;->idleAwaitWork(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;JJ)V

    goto :goto_3

    .line 2065
    :cond_8
    :goto_2
    iput v12, v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    goto :goto_3

    .line 2069
    :cond_9
    iget v0, v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    if-gez v0, :cond_b

    iget-wide v0, v8, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    cmp-long v2, v0, v13

    if-nez v2, :cond_b

    .line 2070
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 2071
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 2072
    sget-object v1, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lscala/concurrent/forkjoin/ForkJoinPool;->PARKBLOCKER:J

    invoke-virtual {v1, v0, v2, v3, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2073
    iput-object v0, v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .line 2074
    iget v4, v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    if-gez v4, :cond_a

    const-wide/16 v4, 0x0

    .line 2075
    invoke-virtual {v1, v10, v4, v5}, Lsun/misc/Unsafe;->park(ZJ)V

    :cond_a
    const/4 v4, 0x0

    .line 2076
    iput-object v4, v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .line 2077
    invoke-virtual {v1, v0, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_b
    :goto_3
    if-gez v15, :cond_c

    .line 2080
    iget v15, v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->hint:I

    if-ltz v15, :cond_14

    :cond_c
    iget-object v12, v8, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    if-eqz v12, :cond_14

    array-length v0, v12

    if-ge v15, v0, :cond_14

    aget-object v13, v12, v15

    if-eqz v13, :cond_14

    .line 2084
    iget v0, v8, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    and-int v0, v0, v17

    add-int/lit8 v0, v0, -0x1

    .line 2085
    :goto_4
    iget v1, v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    if-gez v1, :cond_d

    const/4 v1, 0x0

    goto :goto_5

    :cond_d
    const/4 v1, -0x1

    .line 2086
    :goto_5
    iget v2, v13, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    sub-int/2addr v1, v2

    iget v2, v13, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    add-int/2addr v1, v2

    if-gt v1, v0, :cond_e

    if-lez v1, :cond_14

    move v14, v1

    goto :goto_6

    :cond_e
    move v14, v0

    :goto_6
    iget-wide v4, v8, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    const/16 v0, 0x20

    ushr-long v1, v4, v0

    long-to-int v2, v1

    if-gez v2, :cond_14

    long-to-int v6, v4

    if-lez v6, :cond_14

    and-int v1, v6, v17

    if-lt v11, v1, :cond_14

    aget-object v7, v12, v1

    if-nez v7, :cond_f

    goto :goto_7

    .line 2092
    :cond_f
    iget v1, v7, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nextWait:I

    const v18, 0x7fffffff

    and-int v1, v1, v18

    move/from16 v20, v11

    int-to-long v10, v1

    const/high16 v21, 0x10000

    add-int v2, v2, v21

    int-to-long v1, v2

    shl-long v0, v1, v0

    or-long/2addr v10, v0

    .line 2094
    iget v0, v7, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    or-int v1, v6, v16

    if-ne v0, v1, :cond_14

    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v22, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v8, v2

    move-wide/from16 v2, v22

    move/from16 v22, v6

    move-object v9, v7

    move-wide v6, v10

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_7

    .line 2097
    :cond_10
    iput v15, v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->hint:I

    add-int v6, v22, v21

    and-int v0, v6, v18

    .line 2098
    iput v0, v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    .line 2099
    iget-object v0, v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    if-eqz v0, :cond_11

    .line 2100
    invoke-virtual {v8, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    :cond_11
    const/4 v4, -0x1

    add-int/lit8 v0, v14, -0x1

    if-gtz v0, :cond_12

    goto :goto_7

    :cond_12
    const/4 v10, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v11, v20

    goto :goto_4

    :cond_13
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const/4 v13, -0x1

    goto/16 :goto_0

    :cond_14
    :goto_7
    const/4 v0, 0x0

    return-object v0
.end method

.method private tryAddWorker()V
    .locals 9

    .line 1662
    :cond_0
    iget-wide v4, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    const/16 v0, 0x20

    ushr-long v1, v4, v0

    long-to-int v2, v1

    if-gez v2, :cond_3

    const v1, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    long-to-int v1, v4

    if-nez v1, :cond_3

    add-int/lit8 v1, v2, 0x1

    const v3, 0xffff

    and-int/2addr v1, v3

    const/high16 v3, 0x10000

    add-int/2addr v2, v3

    const/high16 v3, -0x10000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    int-to-long v1, v1

    shl-long v6, v1, v0

    .line 1665
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1670
    :try_start_0
    iget-object v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->factory:Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;

    if-eqz v1, :cond_1

    invoke-interface {v1, p0}, Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;->newThread(Lscala/concurrent/forkjoin/ForkJoinPool;)Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_2

    .line 1672
    :try_start_1
    invoke-virtual {v1}, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 1678
    :cond_2
    :goto_0
    invoke-virtual {p0, v1, v0}, Lscala/concurrent/forkjoin/ForkJoinPool;->deregisterWorker(Lscala/concurrent/forkjoin/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method static tryExternalUnpush(Lscala/concurrent/forkjoin/ForkJoinTask;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 2696
    sget-object v1, Lscala/concurrent/forkjoin/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;

    if-eqz v1, :cond_1

    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->common:Lscala/concurrent/forkjoin/ForkJoinPool;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ltz v3, :cond_1

    iget v1, v1, Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;->seed:I

    and-int/2addr v1, v3

    and-int/lit8 v1, v1, 0x7e

    aget-object v1, v2, v1

    if-eqz v1, :cond_1

    iget v2, v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    iget v3, v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    if-eq v2, v3, :cond_1

    iget-object v3, v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    if-eqz v3, :cond_1

    .line 2704
    array-length v5, v3

    sub-int/2addr v5, v4

    add-int/lit8 v11, v2, -0x1

    and-int/2addr v5, v11

    sget v6, Lscala/concurrent/forkjoin/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v5, v6

    sget v6, Lscala/concurrent/forkjoin/ForkJoinPool;->ABASE:I

    add-int/2addr v5, v6

    int-to-long v12, v5

    .line 2705
    sget-object v14, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v14, v3, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p0, :cond_1

    sget-wide v7, Lscala/concurrent/forkjoin/ForkJoinPool;->QLOCK:J

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v5, v14

    move-object v6, v1

    invoke-virtual/range {v5 .. v10}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2707
    iget-object v5, v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    if-ne v5, v3, :cond_0

    iget v5, v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    if-ne v5, v2, :cond_0

    const/4 v10, 0x0

    move-object v5, v14

    move-object v6, v3

    move-wide v7, v12

    move-object v9, p0

    invoke-virtual/range {v5 .. v10}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2709
    iput v11, v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    .line 2710
    iput v0, v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->qlock:I

    return v4

    .line 2713
    :cond_0
    iput v0, v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->qlock:I

    :cond_1
    return v0
.end method

.method private tryHelpStealer(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;Lscala/concurrent/forkjoin/ForkJoinTask;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;)I"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    move-object v5, v0

    move-object v6, v1

    .line 2217
    :goto_1
    iget v7, v1, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-gez v7, :cond_2

    move v2, v7

    :cond_1
    move-object/from16 v7, p0

    goto/16 :goto_7

    :cond_2
    move-object/from16 v7, p0

    .line 2221
    iget-object v8, v7, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    if-eqz v8, :cond_11

    array-length v9, v8

    sub-int/2addr v9, v3

    if-gtz v9, :cond_3

    goto/16 :goto_6

    .line 2223
    :cond_3
    iget v10, v5, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->hint:I

    or-int/2addr v10, v3

    and-int/2addr v10, v9

    aget-object v11, v8, v10

    if-eqz v11, :cond_4

    iget-object v12, v11, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentSteal:Lscala/concurrent/forkjoin/ForkJoinTask;

    if-eq v12, v6, :cond_6

    :cond_4
    move v11, v10

    :goto_2
    add-int/lit8 v11, v11, 0x2

    and-int/2addr v11, v9

    and-int/lit8 v12, v11, 0xf

    if-ne v12, v3, :cond_5

    .line 2226
    iget v12, v6, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v12, :cond_0

    iget-object v12, v5, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentJoin:Lscala/concurrent/forkjoin/ForkJoinTask;

    if-eq v12, v6, :cond_5

    goto :goto_0

    .line 2229
    :cond_5
    aget-object v12, v8, v11

    if-eqz v12, :cond_f

    iget-object v13, v12, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentSteal:Lscala/concurrent/forkjoin/ForkJoinTask;

    if-ne v13, v6, :cond_f

    .line 2231
    iput v11, v5, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->hint:I

    move-object v11, v12

    .line 2240
    :cond_6
    :goto_3
    iget v8, v6, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-gez v8, :cond_7

    goto/16 :goto_5

    .line 2242
    :cond_7
    iget v8, v11, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    iget v9, v11, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    sub-int v9, v8, v9

    const/16 v10, 0x40

    if-gez v9, :cond_b

    iget-object v13, v11, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    if-eqz v13, :cond_b

    .line 2243
    array-length v9, v13

    sub-int/2addr v9, v3

    and-int/2addr v9, v8

    sget v12, Lscala/concurrent/forkjoin/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v9, v12

    sget v12, Lscala/concurrent/forkjoin/ForkJoinPool;->ABASE:I

    add-int/2addr v9, v12

    .line 2244
    sget-object v12, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    int-to-long v14, v9

    invoke-virtual {v12, v13, v14, v15}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 2246
    iget v3, v6, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v3, :cond_e

    iget-object v3, v5, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentJoin:Lscala/concurrent/forkjoin/ForkJoinTask;

    if-ne v3, v6, :cond_e

    iget-object v3, v11, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentSteal:Lscala/concurrent/forkjoin/ForkJoinTask;

    if-eq v3, v6, :cond_8

    goto :goto_5

    :cond_8
    if-eqz v9, :cond_9

    .line 2250
    iget v3, v11, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    if-ne v3, v8, :cond_9

    const/16 v17, 0x0

    move-object/from16 v16, v9

    invoke-virtual/range {v12 .. v17}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v8, v8, 0x1

    .line 2252
    iput v8, v11, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    .line 2253
    invoke-virtual {v0, v9}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->runSubtask(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    goto :goto_4

    .line 2255
    :cond_9
    iget v3, v11, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    if-ne v3, v8, :cond_a

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v10, :cond_a

    const/4 v2, 0x1

    goto :goto_7

    :cond_a
    :goto_4
    const/4 v3, 0x1

    const/4 v4, 0x1

    goto :goto_3

    .line 2259
    :cond_b
    iget-object v3, v11, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentJoin:Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 2260
    iget v8, v6, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v8, :cond_e

    iget-object v5, v5, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentJoin:Lscala/concurrent/forkjoin/ForkJoinTask;

    if-ne v5, v6, :cond_e

    iget-object v5, v11, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentSteal:Lscala/concurrent/forkjoin/ForkJoinTask;

    if-eq v5, v6, :cond_c

    goto :goto_5

    :cond_c
    if-eqz v3, :cond_11

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v10, :cond_d

    goto :goto_6

    :cond_d
    move-object v6, v3

    move-object v5, v11

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_e
    :goto_5
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_f
    if-ne v11, v10, :cond_10

    goto :goto_6

    :cond_10
    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_11
    :goto_6
    move v2, v4

    :goto_7
    return v2
.end method

.method private tryTerminate(ZZ)Z
    .locals 21

    move-object/from16 v9, p0

    .line 2593
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool;->common:Lscala/concurrent/forkjoin/ForkJoinPool;

    const/4 v10, 0x0

    if-ne v9, v0, :cond_0

    return v10

    .line 2595
    :cond_0
    iget v5, v9, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I

    const/high16 v0, -0x80000000

    const v11, 0x7fffffff

    if-ltz v5, :cond_4

    if-nez p2, :cond_1

    return v10

    :cond_1
    and-int/lit8 v1, v5, 0x2

    if-nez v1, :cond_3

    .line 2598
    sget-object v1, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lscala/concurrent/forkjoin/ForkJoinPool;->PLOCK:J

    add-int/lit8 v7, v5, 0x2

    move-object/from16 v2, p0

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v5, v7

    goto :goto_1

    .line 2600
    :cond_3
    :goto_0
    invoke-direct/range {p0 .. p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->acquirePlock()I

    move-result v1

    move v5, v1

    :goto_1
    add-int/lit8 v1, v5, 0x2

    and-int/2addr v1, v11

    or-int v7, v1, v0

    .line 2602
    sget-object v1, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lscala/concurrent/forkjoin/ForkJoinPool;->PLOCK:J

    move-object/from16 v2, p0

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2603
    invoke-direct {v9, v7}, Lscala/concurrent/forkjoin/ForkJoinPool;->releasePlock(I)V

    .line 2606
    :cond_4
    iget-wide v5, v9, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    const-wide v1, 0x80000000L

    and-long v3, v5, v1

    const-wide/16 v7, 0x0

    const v12, 0xffff

    const/4 v13, 0x1

    cmp-long v14, v3, v7

    if-eqz v14, :cond_6

    const/16 v0, 0x20

    ushr-long v0, v5, v0

    long-to-int v1, v0

    int-to-short v0, v1

    .line 2607
    iget v1, v9, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    and-int/2addr v1, v12

    neg-int v1, v1

    if-ne v0, v1, :cond_5

    .line 2608
    monitor-enter p0

    .line 2609
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 2610
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :goto_2
    return v13

    :cond_6
    if-nez p1, :cond_a

    const/16 v3, 0x30

    shr-long v3, v5, v3

    long-to-int v4, v3

    .line 2616
    iget v3, v9, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    and-int/2addr v3, v12

    neg-int v3, v3

    if-eq v4, v3, :cond_7

    return v10

    .line 2618
    :cond_7
    iget-object v3, v9, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    if-eqz v3, :cond_a

    const/4 v4, 0x0

    .line 2619
    :goto_3
    array-length v7, v3

    if-ge v4, v7, :cond_a

    .line 2620
    aget-object v7, v3, v4

    if-eqz v7, :cond_9

    .line 2621
    invoke-virtual {v7}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    .line 2622
    invoke-virtual {v9, v7}, Lscala/concurrent/forkjoin/ForkJoinPool;->signalWork(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)V

    return v10

    :cond_8
    and-int/lit8 v8, v4, 0x1

    if-eqz v8, :cond_9

    .line 2625
    iget v7, v7, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    if-ltz v7, :cond_9

    return v10

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2631
    :cond_a
    sget-object v3, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v7, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    or-long v14, v5, v1

    move-object v1, v3

    move-object/from16 v2, p0

    move-wide v3, v7

    move-wide v7, v14

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v14, 0x0

    :goto_4
    const/4 v1, 0x3

    if-ge v14, v1, :cond_4

    .line 2634
    iget-object v15, v9, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    if-eqz v15, :cond_10

    .line 2635
    array-length v7, v15

    const/4 v1, 0x0

    :goto_5
    const/4 v8, -0x1

    if-ge v1, v7, :cond_d

    .line 2637
    aget-object v2, v15, v1

    if-eqz v2, :cond_c

    .line 2638
    iput v8, v2, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->qlock:I

    if-lez v14, :cond_c

    .line 2640
    invoke-virtual {v2}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->cancelAll()V

    if-le v14, v13, :cond_c

    .line 2641
    iget-object v2, v2, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->owner:Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    if-eqz v2, :cond_c

    .line 2642
    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_b

    .line 2644
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2648
    :catchall_1
    :cond_b
    sget-object v3, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v3, v2}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2657
    :cond_d
    :goto_6
    iget-wide v5, v9, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    long-to-int v1, v5

    and-int v16, v1, v11

    if-eqz v16, :cond_10

    and-int v1, v16, v12

    if-ge v1, v7, :cond_10

    if-ltz v1, :cond_10

    aget-object v3, v15, v1

    if-eqz v3, :cond_10

    .line 2658
    iget v1, v3, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nextWait:I

    and-int/2addr v1, v11

    int-to-long v1, v1

    const-wide/high16 v17, 0x1000000000000L

    add-long v17, v5, v17

    const-wide/high16 v19, -0x1000000000000L

    and-long v17, v17, v19

    or-long v1, v1, v17

    const-wide v17, 0xffff80000000L

    and-long v17, v5, v17

    or-long v17, v1, v17

    .line 2661
    iget v1, v3, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    or-int v2, v16, v0

    if-ne v1, v2, :cond_e

    sget-object v4, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v19, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    move-object v1, v4

    move-object/from16 v2, p0

    move-object v0, v3

    move-object v10, v4

    move-wide/from16 v3, v19

    move/from16 v19, v7

    const/4 v12, -0x1

    move-wide/from16 v7, v17

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_f

    const/high16 v1, 0x10000

    add-int v16, v16, v1

    and-int v1, v16, v11

    .line 2663
    iput v1, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    .line 2664
    iput v12, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->qlock:I

    .line 2665
    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    if-eqz v0, :cond_f

    .line 2666
    invoke-virtual {v10, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    goto :goto_7

    :cond_e
    move/from16 v19, v7

    const/4 v12, -0x1

    :cond_f
    :goto_7
    move/from16 v7, v19

    const/high16 v0, -0x80000000

    const/4 v8, -0x1

    const/4 v10, 0x0

    const v12, 0xffff

    goto :goto_6

    :cond_10
    add-int/lit8 v14, v14, 0x1

    const/high16 v0, -0x80000000

    const/4 v10, 0x0

    const v12, 0xffff

    goto/16 :goto_4
.end method


# virtual methods
.method final awaitJoin(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;Lscala/concurrent/forkjoin/ForkJoinTask;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    .line 2365
    iget v1, p2, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v1, :cond_9

    .line 2366
    iget-object v1, p1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentJoin:Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 2367
    iput-object p2, p1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentJoin:Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 2368
    :cond_0
    iget v2, p2, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v2, :cond_1

    invoke-virtual {p1}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, p2}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->tryRemoveAndExec(Lscala/concurrent/forkjoin/ForkJoinTask;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    if-ltz v2, :cond_2

    .line 2370
    iget v2, p2, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v2, :cond_2

    .line 2371
    iget v2, p1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->poolIndex:I

    invoke-direct {p0, p2, v2}, Lscala/concurrent/forkjoin/ForkJoinPool;->helpSignal(Lscala/concurrent/forkjoin/ForkJoinTask;I)V

    .line 2372
    iget v2, p2, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v2, :cond_2

    instance-of v3, p2, Lscala/concurrent/forkjoin/CountedCompleter;

    if-eqz v3, :cond_2

    .line 2374
    invoke-direct {p0, p2, v0}, Lscala/concurrent/forkjoin/ForkJoinPool;->helpComplete(Lscala/concurrent/forkjoin/ForkJoinTask;I)I

    move-result v2

    :cond_2
    :goto_0
    if-ltz v2, :cond_7

    .line 2376
    iget v0, p2, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v0, :cond_8

    .line 2377
    invoke-virtual {p1}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lscala/concurrent/forkjoin/ForkJoinPool;->tryHelpStealer(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;Lscala/concurrent/forkjoin/ForkJoinTask;)I

    move-result v2

    if-nez v2, :cond_2

    :cond_3
    iget v2, p2, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v2, :cond_2

    .line 2380
    iget v0, p1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->poolIndex:I

    invoke-direct {p0, p2, v0}, Lscala/concurrent/forkjoin/ForkJoinPool;->helpSignal(Lscala/concurrent/forkjoin/ForkJoinTask;I)V

    .line 2381
    iget v2, p2, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v2, :cond_2

    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->tryCompensate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2382
    invoke-virtual {p2}, Lscala/concurrent/forkjoin/ForkJoinTask;->trySetSignal()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p2, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v0, :cond_5

    .line 2383
    monitor-enter p2

    .line 2384
    :try_start_0
    iget v2, p2, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v2, :cond_4

    .line 2386
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2391
    :cond_4
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 2392
    :catch_0
    :goto_1
    monitor-exit p2

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_5
    :goto_2
    move v2, v0

    .line 2395
    :cond_6
    sget-object v3, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v5, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    iget-wide v7, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    const-wide/high16 v9, 0x1000000000000L

    add-long/2addr v9, v7

    move-object v4, p0

    invoke-virtual/range {v3 .. v10}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_7
    move v0, v2

    .line 2400
    :cond_8
    iput-object v1, p1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentJoin:Lscala/concurrent/forkjoin/ForkJoinTask;

    goto :goto_3

    :cond_9
    move v0, v1

    :cond_a
    :goto_3
    return v0
.end method

.method public awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z
    .locals 10

    .line 3482
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 3484
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    .line 3485
    instance-of v0, p3, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p3, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    iget-object v0, p3, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->pool:Lscala/concurrent/forkjoin/ForkJoinPool;

    if-ne v0, p0, :cond_0

    .line 3487
    iget-object p1, p3, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->workQueue:Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    invoke-virtual {p0, p1}, Lscala/concurrent/forkjoin/ForkJoinPool;->helpQuiescePool(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)V

    return v1

    .line 3490
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const/4 p3, 0x0

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 3495
    :goto_0
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->isQuiescent()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    if-eqz v5, :cond_7

    array-length v6, v5

    sub-int/2addr v6, v1

    if-ltz v6, :cond_7

    if-nez v0, :cond_2

    .line 3497
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v2

    cmp-long v0, v7, p1

    if-lez v0, :cond_1

    return p3

    .line 3499
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->yield()V

    :cond_2
    add-int/lit8 v0, v6, 0x1

    shl-int/lit8 v0, v0, 0x2

    :goto_1
    if-ltz v0, :cond_6

    add-int/lit8 v7, v4, 0x1

    and-int/2addr v4, v6

    .line 3504
    aget-object v4, v5, v4

    if-eqz v4, :cond_5

    iget v8, v4, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    iget v9, v4, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    sub-int v9, v8, v9

    if-gez v9, :cond_5

    .line 3506
    invoke-virtual {v4, v8}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->pollAt(I)Lscala/concurrent/forkjoin/ForkJoinTask;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3507
    iget v5, v4, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    iget v6, v4, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v5, v6

    if-gez v5, :cond_3

    .line 3508
    invoke-virtual {p0, v4}, Lscala/concurrent/forkjoin/ForkJoinPool;->signalWork(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)V

    .line 3509
    :cond_3
    invoke-virtual {v0}, Lscala/concurrent/forkjoin/ForkJoinTask;->doExec()I

    :cond_4
    move v4, v7

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, -0x1

    move v4, v7

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    return v1
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 3446
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3448
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool;->common:Lscala/concurrent/forkjoin/ForkJoinPool;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 3449
    invoke-virtual {p0, p1, p2, p3}, Lscala/concurrent/forkjoin/ForkJoinPool;->awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z

    return v1

    .line 3452
    :cond_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 3453
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->isTerminated()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 3455
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 3457
    monitor-enter p0

    const-wide/16 v5, 0x0

    move-wide v7, p1

    move-wide v9, v5

    .line 3459
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_3

    cmp-long v0, v7, v5

    if-lez v0, :cond_3

    invoke-virtual {p3, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    cmp-long v0, v9, v5

    if-gtz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_4

    .line 3466
    monitor-exit p0

    return v0

    .line 3463
    :cond_4
    invoke-virtual {p0, v9, v10}, Ljava/lang/Object;->wait(J)V

    .line 3464
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v3

    sub-long v7, p1, v7

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3466
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 3447
    :cond_5
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method final deregisterWorker(Lscala/concurrent/forkjoin/ForkJoinWorkerThread;Ljava/lang/Throwable;)V
    .locals 17

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    const/high16 v10, -0x80000000

    const/4 v11, 0x0

    const v12, 0x7fffffff

    if-eqz v0, :cond_6

    .line 1746
    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->workQueue:Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    if-eqz v0, :cond_5

    const/4 v1, -0x1

    .line 1748
    iput v1, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->qlock:I

    .line 1749
    iget v1, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nsteals:I

    int-to-long v13, v1

    .line 1750
    :cond_0
    sget-object v15, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lscala/concurrent/forkjoin/ForkJoinPool;->STEALCOUNT:J

    iget-wide v5, v9, Lscala/concurrent/forkjoin/ForkJoinPool;->stealCount:J

    add-long v7, v5, v13

    move-object v1, v15

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1752
    iget v5, v9, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I

    and-int/lit8 v1, v5, 0x2

    if-nez v1, :cond_2

    sget-wide v3, Lscala/concurrent/forkjoin/ForkJoinPool;->PLOCK:J

    add-int/lit8 v7, v5, 0x2

    move-object v1, v15

    move-object/from16 v2, p0

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v5, v7

    goto :goto_1

    .line 1754
    :cond_2
    :goto_0
    invoke-direct/range {p0 .. p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->acquirePlock()I

    move-result v1

    move v5, v1

    :goto_1
    and-int v1, v5, v10

    add-int/lit8 v2, v5, 0x2

    and-int/2addr v2, v12

    or-int v7, v1, v2

    .line 1757
    :try_start_0
    iget v1, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->poolIndex:I

    .line 1758
    iget-object v2, v9, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    if-eqz v2, :cond_3

    if-ltz v1, :cond_3

    .line 1759
    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget-object v3, v2, v1

    if-ne v3, v0, :cond_3

    .line 1760
    aput-object v11, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1762
    :cond_3
    sget-wide v3, Lscala/concurrent/forkjoin/ForkJoinPool;->PLOCK:J

    move-object v1, v15

    move-object/from16 v2, p0

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1763
    invoke-direct {v9, v7}, Lscala/concurrent/forkjoin/ForkJoinPool;->releasePlock(I)V

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 1762
    sget-object v1, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lscala/concurrent/forkjoin/ForkJoinPool;->PLOCK:J

    move-object/from16 v2, p0

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1763
    invoke-direct {v9, v7}, Lscala/concurrent/forkjoin/ForkJoinPool;->releasePlock(I)V

    :cond_4
    throw v0

    :cond_5
    :goto_2
    move-object v11, v0

    .line 1768
    :cond_6
    sget-object v1, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    iget-wide v5, v9, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    const-wide/high16 v7, 0x1000000000000L

    sub-long v7, v5, v7

    const-wide/high16 v13, -0x1000000000000L

    and-long/2addr v7, v13

    const-wide v13, 0x100000000L

    sub-long v13, v5, v13

    const-wide v15, 0xffff00000000L

    and-long/2addr v13, v15

    or-long/2addr v7, v13

    const-wide v13, 0xffffffffL

    and-long/2addr v13, v5

    or-long/2addr v7, v13

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 1773
    invoke-direct {v9, v0, v0}, Lscala/concurrent/forkjoin/ForkJoinPool;->tryTerminate(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    if-eqz v11, :cond_b

    iget-object v0, v11, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    if-eqz v0, :cond_b

    .line 1774
    invoke-virtual {v11}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->cancelAll()V

    .line 1776
    :cond_7
    iget-wide v5, v9, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    const/16 v0, 0x20

    ushr-long v1, v5, v0

    long-to-int v2, v1

    if-gez v2, :cond_b

    long-to-int v11, v5

    if-ltz v11, :cond_b

    if-lez v11, :cond_a

    .line 1778
    iget-object v1, v9, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    if-eqz v1, :cond_b

    const v3, 0xffff

    and-int/2addr v3, v11

    array-length v4, v1

    if-ge v3, v4, :cond_b

    aget-object v13, v1, v3

    if-nez v13, :cond_8

    goto :goto_3

    .line 1782
    :cond_8
    iget v1, v13, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nextWait:I

    and-int/2addr v1, v12

    int-to-long v3, v1

    const/high16 v14, 0x10000

    add-int/2addr v2, v14

    int-to-long v1, v2

    shl-long v0, v1, v0

    or-long v7, v3, v0

    .line 1784
    iget v0, v13, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    or-int v1, v11, v10

    if-eq v0, v1, :cond_9

    goto :goto_3

    .line 1786
    :cond_9
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_7

    add-int/2addr v11, v14

    and-int v1, v11, v12

    .line 1787
    iput v1, v13, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    .line 1788
    iget-object v1, v13, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    if-eqz v1, :cond_b

    .line 1789
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    goto :goto_3

    :cond_a
    int-to-short v0, v2

    if-gez v0, :cond_b

    .line 1795
    invoke-direct/range {p0 .. p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->tryAddWorker()V

    :cond_b
    :goto_3
    if-nez p2, :cond_c

    .line 1801
    invoke-static {}, Lscala/concurrent/forkjoin/ForkJoinTask;->helpExpungeStaleExceptions()V

    goto :goto_4

    .line 1803
    :cond_c
    invoke-static/range {p2 .. p2}, Lscala/concurrent/forkjoin/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method protected drainTasksTo(Ljava/util/Collection;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;>;)I"
        }
    .end annotation

    .line 3285
    iget-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 3286
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 3287
    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    .line 3288
    :goto_1
    invoke-virtual {v3}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->poll()Lscala/concurrent/forkjoin/ForkJoinTask;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3289
    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 2967
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2969
    instance-of v0, p1, Lscala/concurrent/forkjoin/ForkJoinTask;

    if-eqz v0, :cond_0

    .line 2970
    check-cast p1, Lscala/concurrent/forkjoin/ForkJoinTask;

    goto :goto_0

    .line 2972
    :cond_0
    new-instance v0, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnableAction;

    invoke-direct {v0, p1}, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnableAction;-><init>(Ljava/lang/Runnable;)V

    move-object p1, v0

    .line 2973
    :goto_0
    invoke-virtual {p0, p1}, Lscala/concurrent/forkjoin/ForkJoinPool;->externalPush(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    return-void
.end method

.method public execute(Lscala/concurrent/forkjoin/ForkJoinTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    .line 2954
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2955
    invoke-virtual {p0, p1}, Lscala/concurrent/forkjoin/ForkJoinPool;->externalPush(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    return-void
.end method

.method final externalPush(Lscala/concurrent/forkjoin/ForkJoinTask;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    .line 1818
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;

    if-eqz v0, :cond_2

    iget v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    if-eqz v1, :cond_2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    iget v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;->seed:I

    and-int/2addr v0, v2

    and-int/lit8 v0, v0, 0x7e

    aget-object v0, v1, v0

    if-eqz v0, :cond_2

    sget-object v1, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lscala/concurrent/forkjoin/ForkJoinPool;->QLOCK:J

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, v1

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1822
    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    iget v3, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    .line 1823
    iget-object v4, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    array-length v6, v4

    add-int/lit8 v7, v3, 0x1

    sub-int v2, v7, v2

    if-le v6, v2, :cond_1

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v3, v6

    .line 1824
    sget v6, Lscala/concurrent/forkjoin/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v3, v6

    sget v6, Lscala/concurrent/forkjoin/ForkJoinPool;->ABASE:I

    add-int/2addr v3, v6

    int-to-long v8, v3

    .line 1825
    invoke-virtual {v1, v4, v8, v9, p1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1826
    iput v7, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    .line 1827
    iput v5, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->qlock:I

    const/4 p1, 0x2

    if-gt v2, p1, :cond_0

    .line 1829
    invoke-virtual {p0, v0}, Lscala/concurrent/forkjoin/ForkJoinPool;->signalWork(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)V

    :cond_0
    return-void

    .line 1832
    :cond_1
    iput v5, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->qlock:I

    .line 1834
    :cond_2
    invoke-direct {p0, p1}, Lscala/concurrent/forkjoin/ForkJoinPool;->fullExternalPush(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    return-void
.end method

.method public getActiveThreadCount()I
    .locals 4

    .line 3147
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    const v1, 0xffff

    and-int/2addr v0, v1

    iget-wide v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    const/16 v3, 0x30

    shr-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public getAsyncMode()Z
    .locals 2

    .line 3116
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    ushr-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getFactory()Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .locals 1

    .line 3065
    iget-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->factory:Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;

    return-object v0
.end method

.method public getParallelism()I
    .locals 2

    .line 3084
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getPoolSize()I
    .locals 4

    .line 3106
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    const v1, 0xffff

    and-int/2addr v0, v1

    iget-wide v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v2, v1

    int-to-short v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getQueuedSubmissionCount()I
    .locals 4

    .line 3221
    iget-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 3222
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 3223
    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    .line 3224
    invoke-virtual {v3}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public getQueuedTaskCount()J
    .locals 6

    .line 3202
    iget-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    .line 3203
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 3204
    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 3205
    invoke-virtual {v4}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public getRunningThreadCount()I
    .locals 4

    .line 3130
    iget-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 3131
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 3132
    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->isApparentlyUnblocked()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getStealCount()J
    .locals 6

    .line 3178
    iget-wide v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->stealCount:J

    .line 3180
    iget-object v2, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    .line 3181
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 3182
    aget-object v4, v2, v3

    if-eqz v4, :cond_0

    .line 3183
    iget v4, v4, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nsteals:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .line 3075
    iget-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public hasQueuedSubmissions()Z
    .locals 4

    .line 3238
    iget-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 3239
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 3240
    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method final helpJoinOnce(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;Lscala/concurrent/forkjoin/ForkJoinTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 2415
    iget v0, p2, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v0, :cond_5

    .line 2416
    iget-object v0, p1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentJoin:Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 2417
    iput-object p2, p1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentJoin:Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 2418
    :cond_0
    iget v1, p2, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v1, :cond_1

    invoke-virtual {p1}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, p2}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->tryRemoveAndExec(Lscala/concurrent/forkjoin/ForkJoinTask;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    if-ltz v1, :cond_2

    .line 2420
    iget v1, p2, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v1, :cond_2

    .line 2421
    iget v1, p1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->poolIndex:I

    invoke-direct {p0, p2, v1}, Lscala/concurrent/forkjoin/ForkJoinPool;->helpSignal(Lscala/concurrent/forkjoin/ForkJoinTask;I)V

    .line 2422
    iget v1, p2, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v1, :cond_2

    instance-of v2, p2, Lscala/concurrent/forkjoin/CountedCompleter;

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    .line 2424
    invoke-direct {p0, p2, v1}, Lscala/concurrent/forkjoin/ForkJoinPool;->helpComplete(Lscala/concurrent/forkjoin/ForkJoinTask;I)I

    move-result v1

    :cond_2
    if-ltz v1, :cond_4

    .line 2426
    invoke-virtual {p1}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2428
    :cond_3
    iget v1, p2, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v1, :cond_4

    invoke-direct {p0, p1, p2}, Lscala/concurrent/forkjoin/ForkJoinPool;->tryHelpStealer(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;Lscala/concurrent/forkjoin/ForkJoinTask;)I

    move-result v1

    if-gtz v1, :cond_3

    .line 2430
    :cond_4
    iput-object v0, p1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentJoin:Lscala/concurrent/forkjoin/ForkJoinTask;

    :cond_5
    return-void
.end method

.method final helpQuiescePool(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)V
    .locals 14

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 2464
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nextLocalTask()Lscala/concurrent/forkjoin/ForkJoinTask;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2465
    iget v3, p1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    iget v4, p1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v3, v4

    if-gez v3, :cond_1

    .line 2466
    invoke-virtual {p0, p1}, Lscala/concurrent/forkjoin/ForkJoinPool;->signalWork(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)V

    .line 2467
    :cond_1
    invoke-virtual {v2}, Lscala/concurrent/forkjoin/ForkJoinTask;->doExec()I

    goto :goto_0

    .line 2469
    :cond_2
    invoke-virtual {p1}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nextSeed()I

    move-result v2

    invoke-direct {p0, v2}, Lscala/concurrent/forkjoin/ForkJoinPool;->findNonEmptyStealQueue(I)Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    move-result-object v2

    const-wide/high16 v3, 0x1000000000000L

    if-eqz v2, :cond_6

    if-nez v1, :cond_4

    .line 2472
    :cond_3
    sget-object v5, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v7, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    iget-wide v9, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    add-long v11, v9, v3

    move-object v6, p0

    invoke-virtual/range {v5 .. v12}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 2475
    :cond_4
    iget v3, v2, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    iget v4, v2, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    sub-int v4, v3, v4

    if-gez v4, :cond_0

    invoke-virtual {v2, v3}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->pollAt(I)Lscala/concurrent/forkjoin/ForkJoinTask;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2476
    iget v4, v2, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    iget v5, v2, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v4, v5

    if-gez v4, :cond_5

    .line 2477
    invoke-virtual {p0, v2}, Lscala/concurrent/forkjoin/ForkJoinPool;->signalWork(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)V

    .line 2478
    :cond_5
    invoke-virtual {p1, v3}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->runSubtask(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    goto :goto_0

    :cond_6
    const v2, 0xffff

    const/16 v5, 0x30

    if-eqz v1, :cond_8

    .line 2482
    iget-wide v10, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    sub-long v12, v10, v3

    shr-long v3, v12, v5

    long-to-int v4, v3

    .line 2483
    iget v3, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    and-int/2addr v2, v3

    add-int/2addr v4, v2

    if-nez v4, :cond_7

    return-void

    .line 2485
    :cond_7
    sget-object v6, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v8, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    move-object v7, p0

    invoke-virtual/range {v6 .. v13}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2488
    :cond_8
    iget-wide v6, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    shr-long v8, v6, v5

    long-to-int v5, v8

    iget v8, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    and-int/2addr v2, v8

    add-int/2addr v5, v2

    if-nez v5, :cond_0

    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v8, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    add-long v10, v6, v3

    move-object v3, p0

    move-wide v4, v8

    move-wide v8, v10

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void
.end method

.method final incrementActiveCount()V
    .locals 8

    .line 1934
    :cond_0
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    iget-wide v4, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    const-wide/high16 v6, 0x1000000000000L

    add-long/2addr v6, v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public invoke(Lscala/concurrent/forkjoin/ForkJoinTask;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2939
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2940
    invoke-virtual {p0, p1}, Lscala/concurrent/forkjoin/ForkJoinPool;->externalPush(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    .line 2941
    invoke-virtual {p1}, Lscala/concurrent/forkjoin/ForkJoinTask;->join()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .line 3039
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 3043
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Callable;

    .line 3044
    new-instance v3, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedCallable;

    invoke-direct {v3, v2}, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    .line 3045
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3046
    invoke-virtual {p0, v3}, Lscala/concurrent/forkjoin/ForkJoinPool;->externalPush(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    goto :goto_0

    .line 3048
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_1

    .line 3049
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/concurrent/forkjoin/ForkJoinTask;

    invoke-virtual {v3}, Lscala/concurrent/forkjoin/ForkJoinTask;->quietlyJoin()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    .line 3054
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    .line 3055
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    invoke-interface {v4, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3054
    :cond_2
    throw p1
.end method

.method public isQuiescent()Z
    .locals 3

    .line 3163
    iget-wide v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    const/16 v2, 0x30

    shr-long/2addr v0, v2

    long-to-int v1, v0

    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    const v2, 0xffff

    and-int/2addr v0, v2

    add-int/2addr v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShutdown()Z
    .locals 1

    .line 3427
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTerminated()Z
    .locals 7

    .line 3397
    iget-wide v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    const-wide v2, 0x80000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v1, v0

    int-to-short v0, v1

    .line 3398
    iget v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    const v2, 0xffff

    and-int/2addr v1, v2

    neg-int v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTerminating()Z
    .locals 7

    .line 3416
    iget-wide v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    const-wide v2, 0x80000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v1, v0

    int-to-short v0, v1

    .line 3417
    iget v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    const v2, 0xffff

    and-int/2addr v1, v2

    neg-int v1, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 3660
    new-instance v0, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p1, p2}, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/RunnableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 3664
    new-instance v0, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p1}, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method final nextTaskFor(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)Lscala/concurrent/forkjoin/ForkJoinTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;",
            ")",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 2502
    :cond_0
    invoke-virtual {p1}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nextLocalTask()Lscala/concurrent/forkjoin/ForkJoinTask;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 2504
    :cond_1
    invoke-virtual {p1}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nextSeed()I

    move-result v0

    invoke-direct {p0, v0}, Lscala/concurrent/forkjoin/ForkJoinPool;->findNonEmptyStealQueue(I)Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 2506
    :cond_2
    iget v1, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    sub-int v2, v1, v2

    if-gez v2, :cond_0

    invoke-virtual {v0, v1}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->pollAt(I)Lscala/concurrent/forkjoin/ForkJoinTask;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2507
    iget p1, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr p1, v2

    if-gez p1, :cond_3

    .line 2508
    invoke-virtual {p0, v0}, Lscala/concurrent/forkjoin/ForkJoinPool;->signalWork(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)V

    :cond_3
    return-object v1
.end method

.method protected pollSubmission()Lscala/concurrent/forkjoin/ForkJoinTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 3256
    iget-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 3257
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 3258
    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->poll()Lscala/concurrent/forkjoin/ForkJoinTask;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method final registerWorker(Lscala/concurrent/forkjoin/ForkJoinWorkerThread;)Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .locals 12

    const/4 v0, 0x1

    .line 1698
    invoke-virtual {p1, v0}, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->setDaemon(Z)V

    .line 1699
    iget-object v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    .line 1700
    invoke-virtual {p1, v1}, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 1703
    :cond_0
    sget-object v1, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lscala/concurrent/forkjoin/ForkJoinPool;->INDEXSEED:J

    iget v6, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->indexSeed:I

    const v2, 0x61c88647

    add-int v8, v6, v2

    move-object v2, v1

    move-object v3, p0

    move v7, v8

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v8, :cond_0

    .line 1704
    new-instance v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    iget v2, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    ushr-int/lit8 v2, v2, 0x10

    invoke-direct {v9, p0, p1, v2, v8}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;-><init>(Lscala/concurrent/forkjoin/ForkJoinPool;Lscala/concurrent/forkjoin/ForkJoinWorkerThread;II)V

    .line 1705
    iget v6, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I

    and-int/lit8 v2, v6, 0x2

    if-nez v2, :cond_1

    sget-wide v4, Lscala/concurrent/forkjoin/ForkJoinPool;->PLOCK:J

    add-int/lit8 v10, v6, 0x2

    move-object v2, v1

    move-object v3, p0

    move v7, v10

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1707
    :cond_1
    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->acquirePlock()I

    move-result v10

    :cond_2
    move v5, v10

    const/high16 v1, -0x80000000

    and-int/2addr v1, v5

    add-int/lit8 v2, v5, 0x2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    or-int v7, v1, v2

    .line 1710
    :try_start_0
    iget-object v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    if-eqz v1, :cond_6

    .line 1711
    array-length v2, v1

    add-int/lit8 v3, v2, -0x1

    shl-int/lit8 v4, v8, 0x1

    or-int/2addr v4, v0

    and-int/2addr v4, v3

    .line 1713
    aget-object v6, v1, v4

    if-eqz v6, :cond_5

    const/4 v6, 0x4

    const/4 v8, 0x2

    if-gt v2, v6, :cond_3

    goto :goto_0

    :cond_3
    ushr-int/lit8 v6, v2, 0x1

    const v10, 0xfffe

    and-int/2addr v6, v10

    add-int/2addr v8, v6

    :goto_0
    const/4 v6, 0x0

    :goto_1
    const/4 v10, 0x0

    :cond_4
    add-int/2addr v4, v8

    and-int/2addr v4, v3

    .line 1716
    aget-object v11, v1, v4

    if-eqz v11, :cond_5

    add-int/2addr v10, v0

    if-lt v10, v2, :cond_4

    shl-int/lit8 v2, v2, 0x1

    .line 1718
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    iput-object v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    add-int/lit8 v3, v2, -0x1

    goto :goto_1

    .line 1724
    :cond_5
    iput v4, v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->poolIndex:I

    iput v4, v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    .line 1725
    aput-object v9, v1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1728
    :cond_6
    sget-object v1, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lscala/concurrent/forkjoin/ForkJoinPool;->PLOCK:J

    move-object v2, p0

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1729
    invoke-direct {p0, v7}, Lscala/concurrent/forkjoin/ForkJoinPool;->releasePlock(I)V

    .line 1731
    :cond_7
    iget-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    iget v1, v9, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->poolIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->setName(Ljava/lang/String;)V

    return-object v9

    :catchall_0
    move-exception p1

    .line 1728
    sget-object v1, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lscala/concurrent/forkjoin/ForkJoinPool;->PLOCK:J

    move-object v2, p0

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1729
    invoke-direct {p0, v7}, Lscala/concurrent/forkjoin/ForkJoinPool;->releasePlock(I)V

    :cond_8
    throw p1
.end method

.method final runWorker(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)V
    .locals 1

    .line 1978
    invoke-virtual {p1}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->growArray()[Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 1979
    :cond_0
    invoke-direct {p0, p1}, Lscala/concurrent/forkjoin/ForkJoinPool;->scan(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)Lscala/concurrent/forkjoin/ForkJoinTask;

    move-result-object v0

    invoke-virtual {p1, v0}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->runTask(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    iget v0, p1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->qlock:I

    if-gez v0, :cond_0

    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 3363
    invoke-static {}, Lscala/concurrent/forkjoin/ForkJoinPool;->checkPermission()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3364
    invoke-direct {p0, v0, v1}, Lscala/concurrent/forkjoin/ForkJoinPool;->tryTerminate(ZZ)Z

    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 3386
    invoke-static {}, Lscala/concurrent/forkjoin/ForkJoinPool;->checkPermission()V

    const/4 v0, 0x1

    .line 3387
    invoke-direct {p0, v0, v0}, Lscala/concurrent/forkjoin/ForkJoinPool;->tryTerminate(ZZ)Z

    .line 3388
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method final signalWork(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)V
    .locals 14

    .line 1943
    iget v0, p1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->poolIndex:I

    .line 1945
    :cond_0
    iget-wide v5, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    const/16 v1, 0x20

    ushr-long v2, v5, v1

    long-to-int v3, v2

    if-gez v3, :cond_3

    long-to-int v9, v5

    if-lez v9, :cond_2

    .line 1947
    iget-object v2, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    if-eqz v2, :cond_3

    array-length v4, v2

    const v7, 0xffff

    and-int/2addr v7, v9

    if-le v4, v7, :cond_3

    aget-object v10, v2, v7

    if-eqz v10, :cond_3

    iget v2, v10, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    const/high16 v4, -0x80000000

    or-int/2addr v4, v9

    if-ne v2, v4, :cond_3

    .line 1949
    iget v2, v10, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nextWait:I

    const v11, 0x7fffffff

    and-int/2addr v2, v11

    int-to-long v7, v2

    const/high16 v12, 0x10000

    add-int/2addr v3, v12

    int-to-long v2, v3

    shl-long v1, v2, v1

    or-long/2addr v7, v1

    .line 1951
    sget-object v13, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    move-object v1, v13

    move-object v2, p0

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1952
    iput v0, v10, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->hint:I

    add-int/2addr v9, v12

    and-int p1, v9, v11

    .line 1953
    iput p1, v10, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    .line 1954
    iget-object p1, v10, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    if-eqz p1, :cond_3

    .line 1955
    invoke-virtual {v13, p1}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    goto :goto_0

    .line 1958
    :cond_1
    iget v1, p1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    iget v2, p1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    sub-int/2addr v1, v2

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_2
    int-to-short p1, v3

    if-gez p1, :cond_3

    .line 1966
    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->tryAddWorker()V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 0

    .line 474
    invoke-virtual {p0, p1}, Lscala/concurrent/forkjoin/ForkJoinPool;->submit(Ljava/lang/Runnable;)Lscala/concurrent/forkjoin/ForkJoinTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 0

    .line 474
    invoke-virtual {p0, p1, p2}, Lscala/concurrent/forkjoin/ForkJoinPool;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lscala/concurrent/forkjoin/ForkJoinTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 0

    .line 474
    invoke-virtual {p0, p1}, Lscala/concurrent/forkjoin/ForkJoinPool;->submit(Ljava/util/concurrent/Callable;)Lscala/concurrent/forkjoin/ForkJoinTask;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/lang/Runnable;)Lscala/concurrent/forkjoin/ForkJoinTask;
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

    .line 3021
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3023
    instance-of v0, p1, Lscala/concurrent/forkjoin/ForkJoinTask;

    if-eqz v0, :cond_0

    .line 3024
    check-cast p1, Lscala/concurrent/forkjoin/ForkJoinTask;

    goto :goto_0

    .line 3026
    :cond_0
    new-instance v0, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnableAction;

    invoke-direct {v0, p1}, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnableAction;-><init>(Ljava/lang/Runnable;)V

    move-object p1, v0

    .line 3027
    :goto_0
    invoke-virtual {p0, p1}, Lscala/concurrent/forkjoin/ForkJoinPool;->externalPush(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    return-object p1
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lscala/concurrent/forkjoin/ForkJoinTask;
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

    .line 3009
    new-instance v0, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p1, p2}, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 3010
    invoke-virtual {p0, v0}, Lscala/concurrent/forkjoin/ForkJoinPool;->externalPush(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Lscala/concurrent/forkjoin/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "TT;>;"
        }
    .end annotation

    .line 2998
    new-instance v0, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p1}, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2999
    invoke-virtual {p0, v0}, Lscala/concurrent/forkjoin/ForkJoinPool;->externalPush(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    return-object v0
.end method

.method public submit(Lscala/concurrent/forkjoin/ForkJoinTask;)Lscala/concurrent/forkjoin/ForkJoinTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "TT;>;)",
            "Lscala/concurrent/forkjoin/ForkJoinTask<",
            "TT;>;"
        }
    .end annotation

    .line 2987
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2988
    invoke-virtual {p0, p1}, Lscala/concurrent/forkjoin/ForkJoinPool;->externalPush(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    .line 3308
    iget-wide v1, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->stealCount:J

    .line 3309
    iget-wide v3, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    .line 3311
    iget-object v5, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    if-eqz v5, :cond_2

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    .line 3312
    :goto_0
    array-length v15, v5

    if-ge v9, v15, :cond_3

    .line 3313
    aget-object v15, v5, v9

    if-eqz v15, :cond_1

    .line 3314
    invoke-virtual {v15}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v6

    and-int/lit8 v17, v9, 0x1

    if-nez v17, :cond_0

    int-to-long v7, v6

    add-long/2addr v12, v7

    goto :goto_1

    :cond_0
    int-to-long v6, v6

    add-long/2addr v10, v6

    .line 3319
    iget v6, v15, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nsteals:I

    int-to-long v6, v6

    add-long/2addr v1, v6

    .line 3320
    invoke-virtual {v15}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->isApparentlyUnblocked()Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v14, v14, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    .line 3326
    :cond_3
    iget v5, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    const v6, 0xffff

    and-int/2addr v5, v6

    const/16 v6, 0x20

    ushr-long v6, v3, v6

    long-to-int v7, v6

    int-to-short v6, v7

    add-int/2addr v6, v5

    const/16 v7, 0x30

    shr-long v7, v3, v7

    long-to-int v8, v7

    add-int/2addr v8, v5

    if-gez v8, :cond_4

    const/4 v8, 0x0

    :cond_4
    const-wide v15, 0x80000000L

    and-long/2addr v3, v15

    const-wide/16 v15, 0x0

    cmp-long v7, v3, v15

    if-eqz v7, :cond_6

    if-nez v6, :cond_5

    const-string v3, "Terminated"

    goto :goto_2

    :cond_5
    const-string v3, "Terminating"

    goto :goto_2

    .line 3335
    :cond_6
    iget v3, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I

    if-gez v3, :cond_7

    const-string v3, "Shutting down"

    goto :goto_2

    :cond_7
    const-string v3, "Running"

    .line 3336
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", parallelism = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", size = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", active = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", running = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", steals = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tasks = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", submissions = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method final tryCompensate()Z
    .locals 14

    .line 2314
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 2316
    iget-object v2, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    if-eqz v2, :cond_5

    iget-wide v7, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    long-to-int v11, v7

    if-ltz v11, :cond_5

    const/4 v12, 0x1

    if-eqz v11, :cond_1

    and-int/2addr v1, v11

    .line 2317
    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v1, v2, v1

    if-eqz v1, :cond_1

    iget v2, v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    const/high16 v3, -0x80000000

    or-int/2addr v3, v11

    if-ne v2, v3, :cond_1

    .line 2319
    iget v0, v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nextWait:I

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    int-to-long v3, v0

    const-wide v5, -0x100000000L

    and-long/2addr v5, v7

    or-long v9, v3, v5

    .line 2321
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v5, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    move-object v3, v0

    move-object v4, p0

    invoke-virtual/range {v3 .. v10}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v3

    if-eqz v3, :cond_5

    const/high16 v3, 0x10000

    add-int/2addr v11, v3

    and-int/2addr v2, v11

    .line 2322
    iput v2, v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    .line 2323
    iget-object v1, v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 2324
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    :cond_0
    return v12

    :cond_1
    const/16 v1, 0x20

    ushr-long v1, v7, v1

    long-to-int v2, v1

    int-to-short v1, v2

    if-ltz v1, :cond_2

    const/16 v2, 0x30

    shr-long v2, v7, v2

    long-to-int v3, v2

    add-int/2addr v3, v0

    if-le v3, v12, :cond_2

    const-wide/high16 v0, 0x1000000000000L

    sub-long v0, v7, v0

    const-wide/high16 v2, -0x1000000000000L

    and-long/2addr v0, v2

    const-wide v2, 0xffffffffffffL

    and-long/2addr v2, v7

    or-long v9, v0, v2

    .line 2331
    sget-object v3, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v5, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    move-object v4, p0

    invoke-virtual/range {v3 .. v10}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_5

    return v12

    :cond_2
    add-int/2addr v1, v0

    const/16 v0, 0x7fff

    if-ge v1, v0, :cond_5

    const-wide v0, 0x100000000L

    add-long/2addr v0, v7

    const-wide v2, 0xffff00000000L

    and-long/2addr v0, v2

    const-wide v2, -0xffff00000001L

    and-long/2addr v2, v7

    or-long v9, v0, v2

    .line 2336
    sget-object v3, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v5, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    move-object v4, p0

    invoke-virtual/range {v3 .. v10}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 2341
    :try_start_0
    iget-object v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->factory:Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;

    if-eqz v1, :cond_3

    invoke-interface {v1, p0}, Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;->newThread(Lscala/concurrent/forkjoin/ForkJoinPool;)Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_4

    .line 2343
    :try_start_1
    invoke-virtual {v1}, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v12

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    .line 2349
    :cond_4
    :goto_0
    invoke-virtual {p0, v1, v0}, Lscala/concurrent/forkjoin/ForkJoinPool;->deregisterWorker(Lscala/concurrent/forkjoin/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    :cond_5
    const/4 v0, 0x0

    return v0
.end method
