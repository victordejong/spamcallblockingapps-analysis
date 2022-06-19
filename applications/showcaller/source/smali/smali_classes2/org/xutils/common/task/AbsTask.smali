.class public abstract Lorg/xutils/common/task/AbsTask;
.super Ljava/lang/Object;
.source "AbsTask.java"

# interfaces
.implements Lorg/xutils/common/Callback$Cancelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/common/task/AbsTask$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/xutils/common/Callback$Cancelable;"
    }
.end annotation


# instance fields
.field private a:Lorg/xutils/common/task/b;

.field private final b:Lorg/xutils/common/Callback$Cancelable;

.field private volatile c:Z

.field private volatile d:Lorg/xutils/common/task/AbsTask$State;

.field private e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResultType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/xutils/common/task/AbsTask;-><init>(Lorg/xutils/common/Callback$Cancelable;)V

    return-void
.end method

.method public constructor <init>(Lorg/xutils/common/Callback$Cancelable;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/xutils/common/task/AbsTask;->a:Lorg/xutils/common/task/b;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/xutils/common/task/AbsTask;->c:Z

    .line 5
    sget-object v0, Lorg/xutils/common/task/AbsTask$State;->IDLE:Lorg/xutils/common/task/AbsTask$State;

    iput-object v0, p0, Lorg/xutils/common/task/AbsTask;->d:Lorg/xutils/common/task/AbsTask$State;

    .line 6
    iput-object p1, p0, Lorg/xutils/common/task/AbsTask;->b:Lorg/xutils/common/Callback$Cancelable;

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/xutils/common/task/AbsTask;->e:Ljava/lang/Object;

    return-void
.end method

.method b(Lorg/xutils/common/task/AbsTask$State;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/common/task/AbsTask;->d:Lorg/xutils/common/task/AbsTask$State;

    return-void
.end method

.method final c(Lorg/xutils/common/task/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/common/task/AbsTask;->a:Lorg/xutils/common/task/b;

    return-void
.end method

.method public final cancel()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/xutils/common/task/AbsTask;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lorg/xutils/common/task/AbsTask;->c:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lorg/xutils/common/task/AbsTask;->c:Z

    .line 5
    invoke-virtual {p0}, Lorg/xutils/common/task/AbsTask;->cancelWorks()V

    .line 6
    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->b:Lorg/xutils/common/Callback$Cancelable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/xutils/common/Callback$Cancelable;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->b:Lorg/xutils/common/Callback$Cancelable;

    invoke-interface {v0}, Lorg/xutils/common/Callback$Cancelable;->cancel()V

    .line 8
    :cond_2
    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->d:Lorg/xutils/common/task/AbsTask$State;

    sget-object v1, Lorg/xutils/common/task/AbsTask$State;->WAITING:Lorg/xutils/common/task/AbsTask$State;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->d:Lorg/xutils/common/task/AbsTask$State;

    sget-object v1, Lorg/xutils/common/task/AbsTask$State;->STARTED:Lorg/xutils/common/task/AbsTask$State;

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lorg/xutils/common/task/AbsTask;->isCancelFast()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    :cond_3
    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->a:Lorg/xutils/common/task/b;

    if-eqz v0, :cond_4

    .line 10
    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    const-string v2, "cancelled by user"

    invoke-direct {v1, v2}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/xutils/common/task/b;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V

    .line 11
    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->a:Lorg/xutils/common/task/b;

    invoke-virtual {v0}, Lorg/xutils/common/task/b;->onFinished()V

    goto :goto_0

    .line 12
    :cond_4
    instance-of v0, p0, Lorg/xutils/common/task/b;

    if-eqz v0, :cond_5

    .line 13
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, "cancelled by user"

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/xutils/common/task/AbsTask;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V

    .line 14
    invoke-virtual {p0}, Lorg/xutils/common/task/AbsTask;->onFinished()V

    .line 15
    :cond_5
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected cancelWorks()V
    .locals 0

    return-void
.end method

.method protected abstract doBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultType;"
        }
    .end annotation
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority()Lorg/xutils/common/task/Priority;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final getState()Lorg/xutils/common/task/AbsTask$State;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->d:Lorg/xutils/common/task/AbsTask$State;

    return-object v0
.end method

.method protected isCancelFast()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isCancelled()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/xutils/common/task/AbsTask;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->d:Lorg/xutils/common/task/AbsTask$State;

    sget-object v1, Lorg/xutils/common/task/AbsTask$State;->CANCELLED:Lorg/xutils/common/task/AbsTask$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->b:Lorg/xutils/common/Callback$Cancelable;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lorg/xutils/common/Callback$Cancelable;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isFinished()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->d:Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {v0}, Lorg/xutils/common/task/AbsTask$State;->value()I

    move-result v0

    sget-object v1, Lorg/xutils/common/task/AbsTask$State;->STARTED:Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {v1}, Lorg/xutils/common/task/AbsTask$State;->value()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    .locals 0

    return-void
.end method

.method protected abstract onError(Ljava/lang/Throwable;Z)V
.end method

.method protected onFinished()V
    .locals 0

    return-void
.end method

.method protected onStarted()V
    .locals 0

    return-void
.end method

.method protected abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation
.end method

.method protected varargs onUpdate(I[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected onWaiting()V
    .locals 0

    return-void
.end method

.method protected final varargs update(I[Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/common/task/AbsTask;->a:Lorg/xutils/common/task/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lorg/xutils/common/task/b;->onUpdate(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
