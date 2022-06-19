.class public Lcom/facebook/biddingkit/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field public static final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private static d:I


# instance fields
.field private c:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 39
    new-instance v0, Lcom/facebook/biddingkit/e/a;

    const-string v1, "GENERAL_EXECUTOR"

    const/4 v2, 0x4

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/biddingkit/e/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/biddingkit/e/a;->a:Ljava/util/concurrent/Executor;

    .line 42
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/biddingkit/e/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 47
    sput v3, Lcom/facebook/biddingkit/e/a;->d:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .locals 9

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/facebook/biddingkit/e/a$1;

    invoke-direct {v7, p0, p1}, Lcom/facebook/biddingkit/e/a$1;-><init>(Lcom/facebook/biddingkit/e/a;Ljava/lang/String;)V

    const-wide/16 v3, 0x1e

    move-object v0, v8

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v8, p0, Lcom/facebook/biddingkit/e/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 p1, 0x1

    .line 66
    invoke-virtual {v8, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/facebook/biddingkit/e/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    .line 72
    const-class v1, Lcom/facebook/biddingkit/e/a;

    monitor-enter v1

    .line 73
    :try_start_0
    sget v2, Lcom/facebook/biddingkit/e/a;->d:I

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v2, 0x2

    .line 75
    sput v2, Lcom/facebook/biddingkit/e/a;->d:I

    .line 78
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object v0, p0, Lcom/facebook/biddingkit/e/a;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 78
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
