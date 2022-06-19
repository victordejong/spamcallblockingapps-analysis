.class public final Lscala/collection/parallel/ThreadPoolTasks$;
.super Ljava/lang/Object;
.source "Tasks.scala"


# static fields
.field public static final MODULE$:Lscala/collection/parallel/ThreadPoolTasks$;


# instance fields
.field private final defaultThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final numCores:I

.field private final tcount:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/parallel/ThreadPoolTasks$;

    invoke-direct {v0}, Lscala/collection/parallel/ThreadPoolTasks$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 12

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/parallel/ThreadPoolTasks$;->MODULE$:Lscala/collection/parallel/ThreadPoolTasks$;

    .line 327
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    iput v0, p0, Lscala/collection/parallel/ThreadPoolTasks$;->numCores:I

    .line 329
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lscala/collection/parallel/ThreadPoolTasks$;->tcount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 331
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 332
    invoke-virtual {p0}, Lscala/collection/parallel/ThreadPoolTasks$;->numCores()I

    move-result v4

    .line 334
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 335
    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 336
    new-instance v10, Lscala/collection/parallel/ThreadPoolTasks$$anon$1;

    invoke-direct {v10}, Lscala/collection/parallel/ThreadPoolTasks$$anon$1;-><init>()V

    .line 344
    new-instance v11, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v11}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    const v5, 0x7fffffff

    const-wide/16 v6, 0x3c

    move-object v3, v0

    .line 331
    invoke-direct/range {v3 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lscala/collection/parallel/ThreadPoolTasks$;->defaultThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public defaultThreadPool()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .line 331
    iget-object v0, p0, Lscala/collection/parallel/ThreadPoolTasks$;->defaultThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public numCores()I
    .locals 1

    .line 327
    iget v0, p0, Lscala/collection/parallel/ThreadPoolTasks$;->numCores:I

    return v0
.end method

.method public tcount()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .line 329
    iget-object v0, p0, Lscala/collection/parallel/ThreadPoolTasks$;->tcount:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method
