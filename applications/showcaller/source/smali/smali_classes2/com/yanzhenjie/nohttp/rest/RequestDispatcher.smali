.class public Lcom/yanzhenjie/nohttp/rest/RequestDispatcher;
.super Ljava/lang/Thread;
.source "RequestDispatcher.java"


# static fields
.field private static final THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/yanzhenjie/nohttp/rest/Work<",
            "+",
            "Lcom/yanzhenjie/nohttp/rest/Request<",
            "*>;*>;>;"
        }
    .end annotation
.end field

.field private mQuit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yanzhenjie/nohttp/rest/RequestDispatcher$1;

    invoke-direct {v0}, Lcom/yanzhenjie/nohttp/rest/RequestDispatcher$1;-><init>()V

    sput-object v0, Lcom/yanzhenjie/nohttp/rest/RequestDispatcher;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/yanzhenjie/nohttp/rest/Work<",
            "+",
            "Lcom/yanzhenjie/nohttp/rest/Request<",
            "*>;*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    sget-object v0, Lcom/yanzhenjie/nohttp/rest/RequestDispatcher;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/rest/RequestDispatcher;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/yanzhenjie/nohttp/rest/RequestDispatcher;->mQuit:Z

    .line 4
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/rest/RequestDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method public quit()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/yanzhenjie/nohttp/rest/RequestDispatcher;->mQuit:Z

    .line 2
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    :goto_0
    iget-boolean v0, p0, Lcom/yanzhenjie/nohttp/rest/RequestDispatcher;->mQuit:Z

    if-nez v0, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/rest/RequestDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yanzhenjie/nohttp/rest/Work;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    monitor-enter p0

    .line 4
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/yanzhenjie/nohttp/rest/Work;->setLock(Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/rest/RequestDispatcher;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    :catch_0
    :try_start_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    .line 8
    iget-boolean v1, p0, Lcom/yanzhenjie/nohttp/rest/RequestDispatcher;->mQuit:Z

    if-eqz v1, :cond_0

    const-string v0, "Queue exit, stop blocking."

    .line 9
    invoke-static {v0}, Lcom/yanzhenjie/nohttp/Logger;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_0
    invoke-static {v0}, Lcom/yanzhenjie/nohttp/Logger;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
