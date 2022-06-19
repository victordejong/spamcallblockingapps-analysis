.class public Lscala/collection/parallel/ThreadPoolTaskSupport;
.super Ljava/lang/Object;
.source "TaskSupport.scala"

# interfaces
.implements Lscala/collection/parallel/TaskSupport;
.implements Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks;


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u00193A!\u0001\u0002\u0001\u0013\t)B\u000b\u001b:fC\u0012\u0004vn\u001c7UCN\\7+\u001e9q_J$(BA\u0002\u0005\u0003!\u0001\u0018M]1mY\u0016d\'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u00011\u0003\u0002\u0001\u000b\u001dI\u0001\"a\u0003\u0007\u000e\u0003\u0019I!!\u0004\u0004\u0003\r\u0005s\u0017PU3g!\ty\u0001#D\u0001\u0003\u0013\t\t\"AA\u0006UCN\\7+\u001e9q_J$\u0008CA\u0008\u0014\u0013\t!\"AA\u0012BI\u0006\u0004H/\u001b<f/>\u00148n\u0015;fC2Lgn\u001a+ie\u0016\u000cG\rU8pYR\u000b7o[:\t\u0011Y\u0001!Q1A\u0005\u0002]\t1\"\u001a8wSJ|g.\\3oiV\t\u0001\u0004\u0005\u0002\u001aA5\t!D\u0003\u0002\u001c9\u0005Q1m\u001c8dkJ\u0014XM\u001c;\u000b\u0005uq\u0012\u0001B;uS2T\u0011aH\u0001\u0005U\u00064\u0018-\u0003\u0002\"5\t\u0011B\u000b\u001b:fC\u0012\u0004vn\u001c7Fq\u0016\u001cW\u000f^8s\u0011!\u0019\u0003A!A!\u0002\u0013A\u0012\u0001D3om&\u0014xN\\7f]R\u0004\u0003\"B\u0013\u0001\t\u00031\u0013A\u0002\u001fj]&$h\u0008\u0006\u0002(QA\u0011q\u0002\u0001\u0005\u0008-\u0011\u0002\n\u00111\u0001\u0019Q\u0011\u0001!&L\u0018\u0011\u0005-Y\u0013B\u0001\u0017\u0007\u0005)!W\r\u001d:fG\u0006$X\rZ\u0011\u0002]\u0005\u0011Sk]3!A\u001a{\'o\u001b&pS:$\u0016m]6TkB\u0004xN\u001d;aA%t7\u000f^3bI:\n\u0013\u0001M\u0001\u0007e9\n\u0014G\u000c\u0019\u0008\u000fI\u0012\u0011\u0011!E\u0001g\u0005)B\u000b\u001b:fC\u0012\u0004vn\u001c7UCN\\7+\u001e9q_J$\u0008CA\u00085\r\u001d\t!!!A\t\u0002U\u001a\"\u0001\u000e\u0006\t\u000b\u0015\"D\u0011A\u001c\u0015\u0003MBq!\u000f\u001b\u0012\u0002\u0013\u0005!(A\u000e%Y\u0016\u001c8/\u001b8ji\u0012:\'/Z1uKJ$C-\u001a4bk2$H%M\u000b\u0002w)\u0012\u0001\u0004P\u0016\u0002{A\u0011ahQ\u0007\u0002\u007f)\u0011\u0001)Q\u0001\nk:\u001c\u0007.Z2lK\u0012T!A\u0011\u0004\u0002\u0015\u0005tgn\u001c;bi&|g.\u0003\u0002E\u007f\t\tRO\\2iK\u000e\\W\r\u001a,be&\u000cgnY3)\tQRSf\u000c"
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

.field private final environment:Ljava/util/concurrent/ThreadPoolExecutor;

.field private volatile totaltasks:I


# direct methods
.method public static $lessinit$greater$default$1()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    sget-object v0, Lscala/collection/parallel/ThreadPoolTaskSupport$;->MODULE$:Lscala/collection/parallel/ThreadPoolTaskSupport$;

    invoke-virtual {v0}, Lscala/collection/parallel/ThreadPoolTaskSupport$;->$lessinit$greater$default$1()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lscala/collection/parallel/ThreadPoolTaskSupport;->environment:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/Tasks$class;->$init$(Lscala/collection/parallel/Tasks;)V

    invoke-static {p0}, Lscala/collection/parallel/ThreadPoolTasks$class;->$init$(Lscala/collection/parallel/ThreadPoolTasks;)V

    invoke-static {p0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$class;->$init$(Lscala/collection/parallel/AdaptiveWorkStealingTasks;)V

    invoke-static {p0}, Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks$class;->$init$(Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks;)V

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

    .line 64
    iget-object v0, p0, Lscala/collection/parallel/ThreadPoolTaskSupport;->debugMessages:Lscala/collection/mutable/ArrayBuffer;

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

    .line 64
    invoke-static {p0, p1}, Lscala/collection/parallel/Tasks$class;->debuglog(Lscala/collection/parallel/Tasks;Ljava/lang/String;)Lscala/collection/mutable/ArrayBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic environment()Ljava/lang/Object;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lscala/collection/parallel/ThreadPoolTaskSupport;->environment()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public environment()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .line 64
    iget-object v0, p0, Lscala/collection/parallel/ThreadPoolTaskSupport;->environment:Ljava/util/concurrent/ThreadPoolExecutor;

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

    .line 64
    invoke-static {p0, p1}, Lscala/collection/parallel/ThreadPoolTasks$class;->execute(Lscala/collection/parallel/ThreadPoolTasks;Lscala/collection/parallel/Task;)Lscala/Function0;

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

    .line 64
    invoke-static {p0, p1}, Lscala/collection/parallel/ThreadPoolTasks$class;->executeAndWaitResult(Lscala/collection/parallel/ThreadPoolTasks;Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public executor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .line 64
    invoke-static {p0}, Lscala/collection/parallel/ThreadPoolTasks$class;->executor(Lscala/collection/parallel/ThreadPoolTasks;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newWrappedTask(Lscala/collection/parallel/Task;)Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ThreadPoolTaskSupport;->newWrappedTask(Lscala/collection/parallel/Task;)Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks$WrappedTask;

    move-result-object p1

    return-object p1
.end method

.method public newWrappedTask(Lscala/collection/parallel/Task;)Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks$WrappedTask;
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
            "Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks$WrappedTask<",
            "TR;TTp;>;"
        }
    .end annotation

    .line 64
    invoke-static {p0, p1}, Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks$class;->newWrappedTask(Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks;Lscala/collection/parallel/Task;)Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks$WrappedTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newWrappedTask(Lscala/collection/parallel/Task;)Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ThreadPoolTaskSupport;->newWrappedTask(Lscala/collection/parallel/Task;)Lscala/collection/parallel/AdaptiveWorkStealingThreadPoolTasks$WrappedTask;

    move-result-object p1

    return-object p1
.end method

.method public parallelismLevel()I
    .locals 1

    .line 64
    invoke-static {p0}, Lscala/collection/parallel/ThreadPoolTasks$class;->parallelismLevel(Lscala/collection/parallel/ThreadPoolTasks;)I

    move-result v0

    return v0
.end method

.method public queue()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-static {p0}, Lscala/collection/parallel/ThreadPoolTasks$class;->queue(Lscala/collection/parallel/ThreadPoolTasks;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    return-object v0
.end method

.method public scala$collection$parallel$Tasks$_setter_$debugMessages_$eq(Lscala/collection/mutable/ArrayBuffer;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lscala/collection/parallel/ThreadPoolTaskSupport;->debugMessages:Lscala/collection/mutable/ArrayBuffer;

    return-void
.end method

.method public totaltasks()I
    .locals 1

    .line 64
    iget v0, p0, Lscala/collection/parallel/ThreadPoolTaskSupport;->totaltasks:I

    return v0
.end method

.method public totaltasks_$eq(I)V
    .locals 0

    .line 64
    iput p1, p0, Lscala/collection/parallel/ThreadPoolTaskSupport;->totaltasks:I

    return-void
.end method
