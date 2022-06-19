.class public Lscala/concurrent/forkjoin/ForkJoinWorkerThread;
.super Ljava/lang/Thread;
.source "ForkJoinWorkerThread.java"


# instance fields
.field final pool:Lscala/concurrent/forkjoin/ForkJoinPool;

.field final workQueue:Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;


# direct methods
.method protected constructor <init>(Lscala/concurrent/forkjoin/ForkJoinPool;)V
    .locals 1

    const-string v0, "aForkJoinWorkerThread"

    .line 48
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->pool:Lscala/concurrent/forkjoin/ForkJoinPool;

    .line 50
    invoke-virtual {p1, p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->registerWorker(Lscala/concurrent/forkjoin/ForkJoinWorkerThread;)Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    move-result-object p1

    iput-object p1, p0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->workQueue:Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    return-void
.end method


# virtual methods
.method public getPool()Lscala/concurrent/forkjoin/ForkJoinPool;
    .locals 1

    .line 59
    iget-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->pool:Lscala/concurrent/forkjoin/ForkJoinPool;

    return-object v0
.end method

.method public getPoolIndex()I
    .locals 1

    .line 72
    iget-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->workQueue:Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    iget v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->poolIndex:I

    return v0
.end method

.method protected onStart()V
    .locals 0

    return-void
.end method

.method protected onTermination(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 2

    .line 106
    :try_start_0
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->onStart()V

    .line 107
    iget-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->pool:Lscala/concurrent/forkjoin/ForkJoinPool;

    iget-object v1, p0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->workQueue:Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    invoke-virtual {v0, v1}, Lscala/concurrent/forkjoin/ForkJoinPool;->runWorker(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x0

    .line 112
    :try_start_1
    invoke-virtual {p0, v0}, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 117
    :catchall_0
    :goto_0
    iget-object v1, p0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->pool:Lscala/concurrent/forkjoin/ForkJoinPool;

    invoke-virtual {v1, p0, v0}, Lscala/concurrent/forkjoin/ForkJoinPool;->deregisterWorker(Lscala/concurrent/forkjoin/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    .line 112
    :try_start_2
    invoke-virtual {p0, v0}, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void
.end method
