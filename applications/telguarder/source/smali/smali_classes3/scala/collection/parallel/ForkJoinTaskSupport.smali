.class public Lscala/collection/parallel/ForkJoinTaskSupport;
.super Ljava/lang/Object;
.source "TaskSupport.scala"

# interfaces
.implements Lscala/collection/parallel/TaskSupport;
.implements Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks;


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001m2A!\u0001\u0002\u0001\u0013\t\u0019bi\u001c:l\u0015>Lg\u000eV1tWN+\u0008\u000f]8si*\u00111\u0001B\u0001\ta\u0006\u0014\u0018\r\u001c7fY*\u0011QAB\u0001\u000bG>dG.Z2uS>t\'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001M!\u0001A\u0003\u0008\u0013!\tYA\"D\u0001\u0007\u0013\tiaA\u0001\u0004B]f\u0014VM\u001a\t\u0003\u001fAi\u0011AA\u0005\u0003#\t\u00111\u0002V1tWN+\u0008\u000f]8siB\u0011qbE\u0005\u0003)\t\u0011\u0011%\u00113baRLg/Z,pe.\u001cF/Z1mS:<gi\u001c:l\u0015>Lg\u000eV1tWND\u0001B\u0006\u0001\u0003\u0006\u0004%\taF\u0001\u000cK:4\u0018N]8o[\u0016tG/F\u0001\u0019!\tIb$D\u0001\u001b\u0015\tYB$\u0001\u0005g_J\\\'n\\5o\u0015\tib!\u0001\u0006d_:\u001cWO\u001d:f]RL!a\u0008\u000e\u0003\u0019\u0019{\'o\u001b&pS:\u0004vn\u001c7\t\u0011\u0005\u0002!\u0011!Q\u0001\na\tA\"\u001a8wSJ|g.\\3oi\u0002BQa\t\u0001\u0005\u0002\u0011\na\u0001P5oSRtDCA\u0013\'!\ty\u0001\u0001C\u0004\u0017EA\u0005\t\u0019\u0001\r\u0008\u000f!\u0012\u0011\u0011!E\u0001S\u0005\u0019bi\u001c:l\u0015>Lg\u000eV1tWN+\u0008\u000f]8siB\u0011qB\u000b\u0004\u0008\u0003\t\t\t\u0011#\u0001,\'\tQ#\u0002C\u0003$U\u0011\u0005Q\u0006F\u0001*\u0011\u001dy#&%A\u0005\u0002A\n1\u0004\n7fgNLg.\u001b;%OJ,\u0017\r^3sI\u0011,g-Y;mi\u0012\nT#A\u0019+\u0005a\u00114&A\u001a\u0011\u0005QJT\"A\u001b\u000b\u0005Y:\u0014!C;oG\",7m[3e\u0015\tAd!\u0001\u0006b]:|G/\u0019;j_:L!AO\u001b\u0003#Ut7\r[3dW\u0016$g+\u0019:jC:\u001cW\r"
.end annotation


# instance fields
.field private final debugMessages:Lscala/collection/mutable/ArrayBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/ArrayBuffer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final environment:Lscala/concurrent/forkjoin/ForkJoinPool;


# direct methods
.method public static $lessinit$greater$default$1()Lscala/concurrent/forkjoin/ForkJoinPool;
    .locals 1

    sget-object v0, Lscala/collection/parallel/ForkJoinTaskSupport$;->MODULE$:Lscala/collection/parallel/ForkJoinTaskSupport$;

    invoke-virtual {v0}, Lscala/collection/parallel/ForkJoinTaskSupport$;->$lessinit$greater$default$1()Lscala/concurrent/forkjoin/ForkJoinPool;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lscala/concurrent/forkjoin/ForkJoinPool;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lscala/collection/parallel/ForkJoinTaskSupport;->environment:Lscala/concurrent/forkjoin/ForkJoinPool;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/Tasks$class;->$init$(Lscala/collection/parallel/Tasks;)V

    invoke-static {p0}, Lscala/collection/parallel/ForkJoinTasks$class;->$init$(Lscala/collection/parallel/ForkJoinTasks;)V

    invoke-static {p0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$class;->$init$(Lscala/collection/parallel/AdaptiveWorkStealingTasks;)V

    invoke-static {p0}, Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks$class;->$init$(Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks;)V

    return-void
.end method


# virtual methods
.method public debugMessages()Lscala/collection/mutable/ArrayBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/ArrayBuffer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lscala/collection/parallel/ForkJoinTaskSupport;->debugMessages:Lscala/collection/mutable/ArrayBuffer;

    return-object v0
.end method

.method public debuglog(Ljava/lang/String;)Lscala/collection/mutable/ArrayBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lscala/collection/mutable/ArrayBuffer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    invoke-static {p0, p1}, Lscala/collection/parallel/Tasks$class;->debuglog(Lscala/collection/parallel/Tasks;Ljava/lang/String;)Lscala/collection/mutable/ArrayBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic environment()Ljava/lang/Object;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lscala/collection/parallel/ForkJoinTaskSupport;->environment()Lscala/concurrent/forkjoin/ForkJoinPool;

    move-result-object v0

    return-object v0
.end method

.method public environment()Lscala/concurrent/forkjoin/ForkJoinPool;
    .locals 1

    .line 56
    iget-object v0, p0, Lscala/collection/parallel/ForkJoinTaskSupport;->environment:Lscala/concurrent/forkjoin/ForkJoinPool;

    return-object v0
.end method

.method public execute(Lscala/collection/parallel/Task;)Lscala/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "Tp:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/Task<",
            "TR;TTp;>;)",
            "Lscala/Function0<",
            "TR;>;"
        }
    .end annotation

    .line 56
    invoke-static {p0, p1}, Lscala/collection/parallel/ForkJoinTasks$class;->execute(Lscala/collection/parallel/ForkJoinTasks;Lscala/collection/parallel/Task;)Lscala/Function0;

    move-result-object p1

    return-object p1
.end method

.method public executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "Tp:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/Task<",
            "TR;TTp;>;)TR;"
        }
    .end annotation

    .line 56
    invoke-static {p0, p1}, Lscala/collection/parallel/ForkJoinTasks$class;->executeAndWaitResult(Lscala/collection/parallel/ForkJoinTasks;Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public forkJoinPool()Lscala/concurrent/forkjoin/ForkJoinPool;
    .locals 1

    .line 56
    invoke-static {p0}, Lscala/collection/parallel/ForkJoinTasks$class;->forkJoinPool(Lscala/collection/parallel/ForkJoinTasks;)Lscala/concurrent/forkjoin/ForkJoinPool;

    move-result-object v0

    return-object v0
.end method

.method public newWrappedTask(Lscala/collection/parallel/Task;)Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks$WrappedTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "Tp:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/Task<",
            "TR;TTp;>;)",
            "Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks$WrappedTask<",
            "TR;TTp;>;"
        }
    .end annotation

    .line 56
    invoke-static {p0, p1}, Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks$class;->newWrappedTask(Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks;Lscala/collection/parallel/Task;)Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks$WrappedTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newWrappedTask(Lscala/collection/parallel/Task;)Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ForkJoinTaskSupport;->newWrappedTask(Lscala/collection/parallel/Task;)Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks$WrappedTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newWrappedTask(Lscala/collection/parallel/Task;)Lscala/collection/parallel/ForkJoinTasks$WrappedTask;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ForkJoinTaskSupport;->newWrappedTask(Lscala/collection/parallel/Task;)Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks$WrappedTask;

    move-result-object p1

    return-object p1
.end method

.method public parallelismLevel()I
    .locals 1

    .line 56
    invoke-static {p0}, Lscala/collection/parallel/ForkJoinTasks$class;->parallelismLevel(Lscala/collection/parallel/ForkJoinTasks;)I

    move-result v0

    return v0
.end method

.method public scala$collection$parallel$Tasks$_setter_$debugMessages_$eq(Lscala/collection/mutable/ArrayBuffer;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lscala/collection/parallel/ForkJoinTaskSupport;->debugMessages:Lscala/collection/mutable/ArrayBuffer;

    return-void
.end method
