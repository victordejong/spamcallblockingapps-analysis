.class final Lcom/yanzhenjie/nohttp/download/Work;
.super Ljava/util/concurrent/FutureTask;
.source "Work.java"

# interfaces
.implements Lcom/yanzhenjie/nohttp/able/Cancelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yanzhenjie/nohttp/download/DownloadRequest;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/yanzhenjie/nohttp/able/Cancelable;",
        "Ljava/lang/Comparable<",
        "Lcom/yanzhenjie/nohttp/download/Work<",
        "+",
        "Lcom/yanzhenjie/nohttp/download/DownloadRequest;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/yanzhenjie/nohttp/download/DownloadListener;

.field private mLock:Ljava/lang/Object;

.field private mSequence:I

.field private final mWhat:I

.field private mWorker:Lcom/yanzhenjie/nohttp/download/Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yanzhenjie/nohttp/download/Worker<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yanzhenjie/nohttp/download/Worker;ILcom/yanzhenjie/nohttp/download/DownloadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/nohttp/download/Worker<",
            "TT;>;I",
            "Lcom/yanzhenjie/nohttp/download/DownloadListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/download/Work;->mWorker:Lcom/yanzhenjie/nohttp/download/Worker;

    .line 3
    iput p2, p0, Lcom/yanzhenjie/nohttp/download/Work;->mWhat:I

    .line 4
    iput-object p3, p0, Lcom/yanzhenjie/nohttp/download/Work;->mCallback:Lcom/yanzhenjie/nohttp/download/DownloadListener;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    return-void
.end method

.method public compareTo(Lcom/yanzhenjie/nohttp/download/Work;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/nohttp/download/Work<",
            "+",
            "Lcom/yanzhenjie/nohttp/download/DownloadRequest;",
            ">;)I"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/download/Work;->mWorker:Lcom/yanzhenjie/nohttp/download/Worker;

    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/download/Worker;->getRequest()Lcom/yanzhenjie/nohttp/download/DownloadRequest;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lcom/yanzhenjie/nohttp/download/Work;->mWorker:Lcom/yanzhenjie/nohttp/download/Worker;

    invoke-virtual {v1}, Lcom/yanzhenjie/nohttp/download/Worker;->getRequest()Lcom/yanzhenjie/nohttp/download/DownloadRequest;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/BasicRequest;->getPriority()Lcom/yanzhenjie/nohttp/Priority;

    move-result-object v0

    .line 5
    invoke-virtual {v1}, Lcom/yanzhenjie/nohttp/BasicRequest;->getPriority()Lcom/yanzhenjie/nohttp/Priority;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 6
    iget v0, p0, Lcom/yanzhenjie/nohttp/download/Work;->mSequence:I

    iget p1, p1, Lcom/yanzhenjie/nohttp/download/Work;->mSequence:I

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sub-int v0, p1, v0

    :goto_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/yanzhenjie/nohttp/download/Work;

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/nohttp/download/Work;->compareTo(Lcom/yanzhenjie/nohttp/download/Work;)I

    move-result p1

    return p1
.end method

.method protected done()V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/download/Work;->mCallback:Lcom/yanzhenjie/nohttp/download/DownloadListener;

    iget v1, p0, Lcom/yanzhenjie/nohttp/download/Work;->mWhat:I

    invoke-interface {v0, v1}, Lcom/yanzhenjie/nohttp/download/DownloadListener;->onCancel(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/download/Work;->mCallback:Lcom/yanzhenjie/nohttp/download/DownloadListener;

    iget v2, p0, Lcom/yanzhenjie/nohttp/download/Work;->mWhat:I

    invoke-interface {v1, v2, v0}, Lcom/yanzhenjie/nohttp/download/DownloadListener;->onDownloadError(ILjava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/download/Work;->mCallback:Lcom/yanzhenjie/nohttp/download/DownloadListener;

    iget v1, p0, Lcom/yanzhenjie/nohttp/download/Work;->mWhat:I

    invoke-interface {v0, v1}, Lcom/yanzhenjie/nohttp/download/DownloadListener;->onCancel(I)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 8
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/download/Work;->mCallback:Lcom/yanzhenjie/nohttp/download/DownloadListener;

    iget v2, p0, Lcom/yanzhenjie/nohttp/download/Work;->mWhat:I

    check-cast v0, Ljava/lang/Exception;

    invoke-interface {v1, v2, v0}, Lcom/yanzhenjie/nohttp/download/DownloadListener;->onDownloadError(ILjava/lang/Exception;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/download/Work;->mCallback:Lcom/yanzhenjie/nohttp/download/DownloadListener;

    iget v2, p0, Lcom/yanzhenjie/nohttp/download/Work;->mWhat:I

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2, v3}, Lcom/yanzhenjie/nohttp/download/DownloadListener;->onDownloadError(ILjava/lang/Exception;)V

    goto :goto_0

    .line 11
    :catch_2
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/download/Work;->mCallback:Lcom/yanzhenjie/nohttp/download/DownloadListener;

    iget v1, p0, Lcom/yanzhenjie/nohttp/download/Work;->mWhat:I

    invoke-interface {v0, v1}, Lcom/yanzhenjie/nohttp/download/DownloadListener;->onCancel(I)V

    :goto_0
    return-void
.end method

.method public isCanceled()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/download/Work;->mLock:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 4
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/download/Work;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The lock is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLock(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/download/Work;->mLock:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/download/Work;->mLock:Ljava/lang/Object;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The lock has been set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSequence(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/yanzhenjie/nohttp/download/Work;->mSequence:I

    return-void
.end method
