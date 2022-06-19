.class public Lio/bidmachine/core/BackgroundTaskManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/core/BackgroundTaskManager$a;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE_TIME:I = 0x1

.field private static final KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final instance:Lio/bidmachine/core/BackgroundTaskManager;


# instance fields
.field private final serviceTaskThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lio/bidmachine/core/BackgroundTaskManager;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    .line 17
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lio/bidmachine/core/BackgroundTaskManager;->CPU_COUNT:I

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x4

    .line 18
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lio/bidmachine/core/BackgroundTaskManager;->CORE_POOL_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 19
    sput v0, Lio/bidmachine/core/BackgroundTaskManager;->MAXIMUM_POOL_SIZE:I

    .line 23
    new-instance v0, Lio/bidmachine/core/BackgroundTaskManager;

    invoke-direct {v0}, Lio/bidmachine/core/BackgroundTaskManager;-><init>()V

    sput-object v0, Lio/bidmachine/core/BackgroundTaskManager;->instance:Lio/bidmachine/core/BackgroundTaskManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 10

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 31
    new-instance v8, Lio/bidmachine/core/BackgroundTaskManager$a;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lio/bidmachine/core/BackgroundTaskManager$a;-><init>(Lio/bidmachine/core/BackgroundTaskManager$1;)V

    .line 32
    new-instance v7, Lio/bidmachine/core/a;

    const/16 v0, 0xa

    invoke-direct {v7, v0}, Lio/bidmachine/core/a;-><init>(I)V

    .line 33
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v1, Lio/bidmachine/core/BackgroundTaskManager;->CORE_POOL_SIZE:I

    sget v2, Lio/bidmachine/core/BackgroundTaskManager;->MAXIMUM_POOL_SIZE:I

    sget-object v5, Lio/bidmachine/core/BackgroundTaskManager;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v9, p0, Lio/bidmachine/core/BackgroundTaskManager;->serviceTaskThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static async(Ljava/lang/Runnable;)V
    .locals 1

    .line 26
    sget-object v0, Lio/bidmachine/core/BackgroundTaskManager;->instance:Lio/bidmachine/core/BackgroundTaskManager;

    invoke-virtual {v0, p0}, Lio/bidmachine/core/BackgroundTaskManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lio/bidmachine/core/BackgroundTaskManager;->serviceTaskThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
