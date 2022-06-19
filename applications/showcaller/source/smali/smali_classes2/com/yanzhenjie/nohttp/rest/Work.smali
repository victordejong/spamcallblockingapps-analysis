.class final Lcom/yanzhenjie/nohttp/rest/Work;
.super Ljava/util/concurrent/FutureTask;
.source "Work.java"

# interfaces
.implements Lcom/yanzhenjie/nohttp/able/Cancelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yanzhenjie/nohttp/rest/Request<",
        "TS;>;S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "Lcom/yanzhenjie/nohttp/rest/Response<",
        "TS;>;>;",
        "Lcom/yanzhenjie/nohttp/able/Cancelable;",
        "Ljava/lang/Comparable<",
        "Lcom/yanzhenjie/nohttp/rest/Work<",
        "+",
        "Lcom/yanzhenjie/nohttp/rest/Request<",
        "*>;*>;>;"
    }
.end annotation


# instance fields
.field private isStart:Z

.field private final mCallback:Lcom/yanzhenjie/nohttp/rest/OnResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yanzhenjie/nohttp/rest/OnResponseListener<",
            "TS;>;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mSequence:I

.field private final mWhat:I

.field private mWorker:Lcom/yanzhenjie/nohttp/rest/Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yanzhenjie/nohttp/rest/Worker<",
            "TT;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yanzhenjie/nohttp/rest/Worker;ILcom/yanzhenjie/nohttp/rest/OnResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/nohttp/rest/Worker<",
            "TT;TS;>;I",
            "Lcom/yanzhenjie/nohttp/rest/OnResponseListener<",
            "TS;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/rest/Work;->mWorker:Lcom/yanzhenjie/nohttp/rest/Worker;

    .line 3
    iput p2, p0, Lcom/yanzhenjie/nohttp/rest/Work;->mWhat:I

    .line 4
    iput-object p3, p0, Lcom/yanzhenjie/nohttp/rest/Work;->mCallback:Lcom/yanzhenjie/nohttp/rest/OnResponseListener;

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

.method public compareTo(Lcom/yanzhenjie/nohttp/rest/Work;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/nohttp/rest/Work<",
            "+",
            "Lcom/yanzhenjie/nohttp/rest/Request<",
            "*>;*>;)I"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/rest/Work;->mWorker:Lcom/yanzhenjie/nohttp/rest/Worker;

    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/rest/Worker;->getRequest()Lcom/yanzhenjie/nohttp/rest/Request;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lcom/yanzhenjie/nohttp/rest/Work;->mWorker:Lcom/yanzhenjie/nohttp/rest/Worker;

    invoke-virtual {v1}, Lcom/yanzhenjie/nohttp/rest/Worker;->getRequest()Lcom/yanzhenjie/nohttp/rest/Request;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/BasicRequest;->getPriority()Lcom/yanzhenjie/nohttp/Priority;

    move-result-object v0

    .line 5
    invoke-virtual {v1}, Lcom/yanzhenjie/nohttp/BasicRequest;->getPriority()Lcom/yanzhenjie/nohttp/Priority;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 6
    iget v0, p0, Lcom/yanzhenjie/nohttp/rest/Work;->mSequence:I

    iget p1, p1, Lcom/yanzhenjie/nohttp/rest/Work;->mSequence:I

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
    check-cast p1, Lcom/yanzhenjie/nohttp/rest/Work;

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/nohttp/rest/Work;->compareTo(Lcom/yanzhenjie/nohttp/rest/Work;)I

    move-result p1

    return p1
.end method

.method protected done()V
    .locals 11

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yanzhenjie/nohttp/rest/Response;

    .line 2
    invoke-interface {v0}, Lcom/yanzhenjie/nohttp/rest/Response;->isSucceed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/rest/Work;->mCallback:Lcom/yanzhenjie/nohttp/rest/OnResponseListener;

    iget v2, p0, Lcom/yanzhenjie/nohttp/rest/Work;->mWhat:I

    invoke-interface {v1, v2, v0}, Lcom/yanzhenjie/nohttp/rest/OnResponseListener;->onSucceed(ILcom/yanzhenjie/nohttp/rest/Response;)V

    goto/16 :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/rest/Work;->mCallback:Lcom/yanzhenjie/nohttp/rest/OnResponseListener;

    iget v2, p0, Lcom/yanzhenjie/nohttp/rest/Work;->mWhat:I

    invoke-interface {v1, v2, v0}, Lcom/yanzhenjie/nohttp/rest/OnResponseListener;->onFailed(ILcom/yanzhenjie/nohttp/rest/Response;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v8, v0

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Lcom/yanzhenjie/nohttp/rest/RestResponse;

    iget-object v1, p0, Lcom/yanzhenjie/nohttp/rest/Work;->mWorker:Lcom/yanzhenjie/nohttp/rest/Worker;

    invoke-virtual {v1}, Lcom/yanzhenjie/nohttp/rest/Worker;->getRequest()Lcom/yanzhenjie/nohttp/rest/Request;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/yanzhenjie/nohttp/rest/RestResponse;-><init>(Lcom/yanzhenjie/nohttp/rest/Request;ZLcom/yanzhenjie/nohttp/Headers;Ljava/lang/Object;JLjava/lang/Exception;)V

    .line 7
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/rest/Work;->mCallback:Lcom/yanzhenjie/nohttp/rest/OnResponseListener;

    iget v2, p0, Lcom/yanzhenjie/nohttp/rest/Work;->mWhat:I

    invoke-interface {v1, v2, v0}, Lcom/yanzhenjie/nohttp/rest/OnResponseListener;->onFailed(ILcom/yanzhenjie/nohttp/rest/Response;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    .line 10
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    .line 11
    move-object v9, v0

    check-cast v9, Ljava/lang/Exception;

    .line 12
    new-instance v0, Lcom/yanzhenjie/nohttp/rest/RestResponse;

    iget-object v1, p0, Lcom/yanzhenjie/nohttp/rest/Work;->mWorker:Lcom/yanzhenjie/nohttp/rest/Worker;

    invoke-virtual {v1}, Lcom/yanzhenjie/nohttp/rest/Worker;->getRequest()Lcom/yanzhenjie/nohttp/rest/Request;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/yanzhenjie/nohttp/rest/RestResponse;-><init>(Lcom/yanzhenjie/nohttp/rest/Request;ZLcom/yanzhenjie/nohttp/Headers;Ljava/lang/Object;JLjava/lang/Exception;)V

    .line 13
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/rest/Work;->mCallback:Lcom/yanzhenjie/nohttp/rest/OnResponseListener;

    iget v2, p0, Lcom/yanzhenjie/nohttp/rest/Work;->mWhat:I

    invoke-interface {v1, v2, v0}, Lcom/yanzhenjie/nohttp/rest/OnResponseListener;->onFailed(ILcom/yanzhenjie/nohttp/rest/Response;)V

    goto :goto_0

    .line 14
    :cond_1
    new-instance v10, Ljava/lang/Exception;

    invoke-direct {v10, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 15
    new-instance v0, Lcom/yanzhenjie/nohttp/rest/RestResponse;

    iget-object v1, p0, Lcom/yanzhenjie/nohttp/rest/Work;->mWorker:Lcom/yanzhenjie/nohttp/rest/Worker;

    invoke-virtual {v1}, Lcom/yanzhenjie/nohttp/rest/Worker;->getRequest()Lcom/yanzhenjie/nohttp/rest/Request;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/yanzhenjie/nohttp/rest/RestResponse;-><init>(Lcom/yanzhenjie/nohttp/rest/Request;ZLcom/yanzhenjie/nohttp/Headers;Ljava/lang/Object;JLjava/lang/Exception;)V

    .line 16
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/rest/Work;->mCallback:Lcom/yanzhenjie/nohttp/rest/OnResponseListener;

    iget v2, p0, Lcom/yanzhenjie/nohttp/rest/Work;->mWhat:I

    invoke-interface {v1, v2, v0}, Lcom/yanzhenjie/nohttp/rest/OnResponseListener;->onFailed(ILcom/yanzhenjie/nohttp/rest/Response;)V

    goto :goto_0

    :catch_2
    nop

    .line 17
    iget-boolean v0, p0, Lcom/yanzhenjie/nohttp/rest/Work;->isStart:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/yanzhenjie/nohttp/rest/Work;->isStart:Z

    .line 19
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/rest/Work;->mCallback:Lcom/yanzhenjie/nohttp/rest/OnResponseListener;

    iget v1, p0, Lcom/yanzhenjie/nohttp/rest/Work;->mWhat:I

    invoke-interface {v0, v1}, Lcom/yanzhenjie/nohttp/rest/OnResponseListener;->onStart(I)V

    .line 20
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/rest/Work;->mWorker:Lcom/yanzhenjie/nohttp/rest/Worker;

    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/rest/Worker;->getRequest()Lcom/yanzhenjie/nohttp/rest/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/BasicRequest;->finish()V

    .line 21
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/rest/Work;->mCallback:Lcom/yanzhenjie/nohttp/rest/OnResponseListener;

    iget v1, p0, Lcom/yanzhenjie/nohttp/rest/Work;->mWhat:I

    invoke-interface {v0, v1}, Lcom/yanzhenjie/nohttp/rest/OnResponseListener;->onFinish(I)V

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/rest/Work;->mLock:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/rest/Work;->mWorker:Lcom/yanzhenjie/nohttp/rest/Worker;

    invoke-virtual {v1}, Lcom/yanzhenjie/nohttp/rest/Worker;->getRequest()Lcom/yanzhenjie/nohttp/rest/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yanzhenjie/nohttp/BasicRequest;->start()V

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/yanzhenjie/nohttp/rest/Work;->isStart:Z

    .line 5
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/rest/Work;->mCallback:Lcom/yanzhenjie/nohttp/rest/OnResponseListener;

    iget v2, p0, Lcom/yanzhenjie/nohttp/rest/Work;->mWhat:I

    invoke-interface {v1, v2}, Lcom/yanzhenjie/nohttp/rest/OnResponseListener;->onStart(I)V

    .line 6
    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 7
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/rest/Work;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The lock is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLock(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/rest/Work;->mLock:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/rest/Work;->mLock:Ljava/lang/Object;

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
    iput p1, p0, Lcom/yanzhenjie/nohttp/rest/Work;->mSequence:I

    return-void
.end method
