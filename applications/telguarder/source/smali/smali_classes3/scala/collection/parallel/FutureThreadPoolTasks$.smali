.class public final Lscala/collection/parallel/FutureThreadPoolTasks$;
.super Ljava/lang/Object;
.source "Tasks.scala"


# static fields
.field public static final MODULE$:Lscala/collection/parallel/FutureThreadPoolTasks$;


# instance fields
.field private final defaultThreadPool:Ljava/util/concurrent/ExecutorService;

.field private final numCores:I

.field private final tcount:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/parallel/FutureThreadPoolTasks$;

    invoke-direct {v0}, Lscala/collection/parallel/FutureThreadPoolTasks$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/parallel/FutureThreadPoolTasks$;->MODULE$:Lscala/collection/parallel/FutureThreadPoolTasks$;

    .line 351
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    iput v0, p0, Lscala/collection/parallel/FutureThreadPoolTasks$;->numCores:I

    .line 353
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lscala/collection/parallel/FutureThreadPoolTasks$;->tcount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 355
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lscala/collection/parallel/FutureThreadPoolTasks$;->defaultThreadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public defaultThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 355
    iget-object v0, p0, Lscala/collection/parallel/FutureThreadPoolTasks$;->defaultThreadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public numCores()I
    .locals 1

    .line 351
    iget v0, p0, Lscala/collection/parallel/FutureThreadPoolTasks$;->numCores:I

    return v0
.end method

.method public tcount()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .line 353
    iget-object v0, p0, Lscala/collection/parallel/FutureThreadPoolTasks$;->tcount:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method
