.class public final Lscala/concurrent/impl/ExecutionContextImpl$AdaptedForkJoinTask;
.super Lscala/concurrent/forkjoin/ForkJoinTask;
.source "ExecutionContextImpl.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/impl/ExecutionContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdaptedForkJoinTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/concurrent/forkjoin/ForkJoinTask<",
        "Lscala/runtime/BoxedUnit;",
        ">;"
    }
.end annotation


# instance fields
.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lscala/concurrent/impl/ExecutionContextImpl$AdaptedForkJoinTask;->runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final exec()Z
    .locals 3

    .line 121
    :try_start_0
    iget-object v0, p0, Lscala/concurrent/impl/ExecutionContextImpl$AdaptedForkJoinTask;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    if-nez v2, :cond_0

    .line 125
    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 126
    :cond_0
    invoke-interface {v2, v1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 128
    :goto_0
    throw v0
.end method

.method public final bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    .line 118
    invoke-virtual {p0}, Lscala/concurrent/impl/ExecutionContextImpl$AdaptedForkJoinTask;->getRawResult()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final getRawResult()V
    .locals 0

    return-void
.end method

.method public final bridge synthetic setRawResult(Ljava/lang/Object;)V
    .locals 0

    .line 118
    check-cast p1, Lscala/runtime/BoxedUnit;

    invoke-virtual {p0, p1}, Lscala/concurrent/impl/ExecutionContextImpl$AdaptedForkJoinTask;->setRawResult(Lscala/runtime/BoxedUnit;)V

    return-void
.end method

.method public final setRawResult(Lscala/runtime/BoxedUnit;)V
    .locals 0

    return-void
.end method
