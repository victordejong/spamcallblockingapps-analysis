.class Lorg/xutils/common/task/b;
.super Lorg/xutils/common/task/AbsTask;
.source "TaskProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/common/task/b$c;,
        Lorg/xutils/common/task/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/xutils/common/task/AbsTask<",
        "TResultType;>;"
    }
.end annotation


# static fields
.field static final f:Lorg/xutils/common/task/b$c;

.field static final g:Lorg/xutils/common/task/PriorityExecutor;


# instance fields
.field private final h:Lorg/xutils/common/task/AbsTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/task/AbsTask<",
            "TResultType;>;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/Executor;

.field private volatile j:Z

.field private volatile k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/xutils/common/task/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/xutils/common/task/b$c;-><init>(Lorg/xutils/common/task/b$a;)V

    sput-object v0, Lorg/xutils/common/task/b;->f:Lorg/xutils/common/task/b$c;

    .line 2
    new-instance v0, Lorg/xutils/common/task/PriorityExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/xutils/common/task/PriorityExecutor;-><init>(Z)V

    sput-object v0, Lorg/xutils/common/task/b;->g:Lorg/xutils/common/task/PriorityExecutor;

    return-void
.end method

.method constructor <init>(Lorg/xutils/common/task/AbsTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/common/task/AbsTask<",
            "TResultType;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/xutils/common/task/AbsTask;-><init>(Lorg/xutils/common/Callback$Cancelable;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/xutils/common/task/b;->j:Z

    .line 3
    iput-boolean v0, p0, Lorg/xutils/common/task/b;->k:Z

    .line 4
    iput-object p1, p0, Lorg/xutils/common/task/b;->h:Lorg/xutils/common/task/AbsTask;

    .line 5
    invoke-virtual {p1, p0}, Lorg/xutils/common/task/AbsTask;->c(Lorg/xutils/common/task/b;)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lorg/xutils/common/task/AbsTask;->c(Lorg/xutils/common/task/b;)V

    .line 7
    invoke-virtual {p1}, Lorg/xutils/common/task/AbsTask;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    if-nez p1, :cond_0

    .line 8
    sget-object p1, Lorg/xutils/common/task/b;->g:Lorg/xutils/common/task/PriorityExecutor;

    .line 9
    :cond_0
    iput-object p1, p0, Lorg/xutils/common/task/b;->i:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic d(Lorg/xutils/common/task/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/xutils/common/task/b;->j:Z

    return p0
.end method

.method static synthetic e(Lorg/xutils/common/task/b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/xutils/common/task/b;->j:Z

    return p1
.end method

.method static synthetic f(Lorg/xutils/common/task/b;)Lorg/xutils/common/task/AbsTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xutils/common/task/b;->h:Lorg/xutils/common/task/AbsTask;

    return-object p0
.end method

.method static synthetic g(Lorg/xutils/common/task/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/xutils/common/task/b;->k:Z

    return p0
.end method

.method static synthetic h(Lorg/xutils/common/task/b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/xutils/common/task/b;->k:Z

    return p1
.end method


# virtual methods
.method final b(Lorg/xutils/common/task/AbsTask$State;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/xutils/common/task/AbsTask;->b(Lorg/xutils/common/task/AbsTask$State;)V

    .line 2
    iget-object v0, p0, Lorg/xutils/common/task/b;->h:Lorg/xutils/common/task/AbsTask;

    invoke-virtual {v0, p1}, Lorg/xutils/common/task/AbsTask;->b(Lorg/xutils/common/task/AbsTask$State;)V

    return-void
.end method

.method protected final doBackground()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/xutils/common/task/b;->onWaiting()V

    .line 2
    new-instance v0, Lorg/xutils/common/task/a;

    iget-object v1, p0, Lorg/xutils/common/task/b;->h:Lorg/xutils/common/task/AbsTask;

    .line 3
    invoke-virtual {v1}, Lorg/xutils/common/task/AbsTask;->getPriority()Lorg/xutils/common/task/Priority;

    move-result-object v1

    new-instance v2, Lorg/xutils/common/task/b$a;

    invoke-direct {v2, p0}, Lorg/xutils/common/task/b$a;-><init>(Lorg/xutils/common/task/b;)V

    invoke-direct {v0, v1, v2}, Lorg/xutils/common/task/a;-><init>(Lorg/xutils/common/task/Priority;Ljava/lang/Runnable;)V

    .line 4
    iget-object v1, p0, Lorg/xutils/common/task/b;->i:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/common/task/b;->i:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final getPriority()Lorg/xutils/common/task/Priority;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/common/task/b;->h:Lorg/xutils/common/task/AbsTask;

    invoke-virtual {v0}, Lorg/xutils/common/task/AbsTask;->getPriority()Lorg/xutils/common/task/Priority;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    .locals 4

    .line 1
    sget-object v0, Lorg/xutils/common/task/AbsTask$State;->CANCELLED:Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {p0, v0}, Lorg/xutils/common/task/b;->b(Lorg/xutils/common/task/AbsTask$State;)V

    .line 2
    sget-object v0, Lorg/xutils/common/task/b;->f:Lorg/xutils/common/task/b$c;

    new-instance v1, Lorg/xutils/common/task/b$b;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lorg/xutils/common/task/b$b;-><init>(Lorg/xutils/common/task/b;[Ljava/lang/Object;)V

    const p1, 0x3b9aca06

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected onError(Ljava/lang/Throwable;Z)V
    .locals 3

    .line 1
    sget-object p2, Lorg/xutils/common/task/AbsTask$State;->ERROR:Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {p0, p2}, Lorg/xutils/common/task/b;->b(Lorg/xutils/common/task/AbsTask$State;)V

    .line 2
    sget-object p2, Lorg/xutils/common/task/b;->f:Lorg/xutils/common/task/b$c;

    new-instance v0, Lorg/xutils/common/task/b$b;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, p0, v1}, Lorg/xutils/common/task/b$b;-><init>(Lorg/xutils/common/task/b;[Ljava/lang/Object;)V

    const p1, 0x3b9aca04

    invoke-virtual {p2, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected onFinished()V
    .locals 2

    .line 1
    sget-object v0, Lorg/xutils/common/task/b;->f:Lorg/xutils/common/task/b$c;

    const v1, 0x3b9aca07

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected onStarted()V
    .locals 2

    .line 1
    sget-object v0, Lorg/xutils/common/task/AbsTask$State;->STARTED:Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {p0, v0}, Lorg/xutils/common/task/b;->b(Lorg/xutils/common/task/AbsTask$State;)V

    .line 2
    sget-object v0, Lorg/xutils/common/task/b;->f:Lorg/xutils/common/task/b$c;

    const v1, 0x3b9aca02

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    .line 1
    sget-object p1, Lorg/xutils/common/task/AbsTask$State;->SUCCESS:Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {p0, p1}, Lorg/xutils/common/task/b;->b(Lorg/xutils/common/task/AbsTask$State;)V

    .line 2
    sget-object p1, Lorg/xutils/common/task/b;->f:Lorg/xutils/common/task/b$c;

    const v0, 0x3b9aca03

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected varargs onUpdate(I[Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/xutils/common/task/b;->f:Lorg/xutils/common/task/b$c;

    new-instance v1, Lorg/xutils/common/task/b$b;

    invoke-direct {v1, p0, p2}, Lorg/xutils/common/task/b$b;-><init>(Lorg/xutils/common/task/b;[Ljava/lang/Object;)V

    const p2, 0x3b9aca05

    invoke-virtual {v0, p2, p1, p1, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected onWaiting()V
    .locals 2

    .line 1
    sget-object v0, Lorg/xutils/common/task/AbsTask$State;->WAITING:Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {p0, v0}, Lorg/xutils/common/task/b;->b(Lorg/xutils/common/task/AbsTask$State;)V

    .line 2
    sget-object v0, Lorg/xutils/common/task/b;->f:Lorg/xutils/common/task/b$c;

    const v1, 0x3b9aca01

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
