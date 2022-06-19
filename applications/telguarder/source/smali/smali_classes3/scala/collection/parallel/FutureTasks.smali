.class public final Lscala/collection/parallel/FutureTasks;
.super Ljava/lang/Object;
.source "Tasks.scala"

# interfaces
.implements Lscala/collection/parallel/Tasks;


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u00014Q!\u0001\u0002\u0003\u0005!\u00111BR;ukJ,G+Y:lg*\u00111\u0001B\u0001\ta\u0006\u0014\u0018\r\u001c7fY*\u0011QAB\u0001\u000bG>dG.Z2uS>t\'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0014\u0007\u0001IQ\u0002\u0005\u0002\u000b\u00175\ta!\u0003\u0002\r\r\t1\u0011I\\=SK\u001a\u0004\"AD\u0008\u000e\u0003\tI!\u0001\u0005\u0002\u0003\u000bQ\u000b7o[:\t\u0011I\u0001!\u0011!Q\u0001\nQ\t\u0001\"\u001a=fGV$xN]\u0002\u0001!\t)\u0002$D\u0001\u0017\u0015\t9b!\u0001\u0006d_:\u001cWO\u001d:f]RL!!\u0007\u000c\u0003!\u0015CXmY;uS>t7i\u001c8uKb$\u0008\"B\u000e\u0001\t\u0003a\u0012A\u0002\u001fj]&$h\u0008\u0006\u0002\u001e=A\u0011a\u0002\u0001\u0005\u0006%i\u0001\r\u0001\u0006\u0005\u0008A\u0001\u0011\r\u0011\"\u0003\"\u0003!i\u0017\r\u001f3faRDW#\u0001\u0012\u0011\u0005)\u0019\u0013B\u0001\u0013\u0007\u0005\rIe\u000e\u001e\u0005\u0007M\u0001\u0001\u000b\u0011\u0002\u0012\u0002\u00135\u000c\u0007\u0010Z3qi\"\u0004\u0003b\u0002\u0015\u0001\u0005\u0004%\t!K\u0001\u000cK:4\u0018N]8o[\u0016tG/F\u0001\u0015\u0011\u0019Y\u0003\u0001)A\u0005)\u0005aQM\u001c<je>tW.\u001a8uA!)Q\u0006\u0001C\u0005]\u0005!Q\r_3d+\ryS\u0007\u0012\u000b\u0003ay\u00022!F\u00194\u0013\t\u0011dC\u0001\u0004GkR,(/\u001a\t\u0003iUb\u0001\u0001B\u00037Y\t\u0007qGA\u0001S#\tA4\u0008\u0005\u0002\u000bs%\u0011!H\u0002\u0002\u0008\u001d>$\u0008.\u001b8h!\tQA(\u0003\u0002>\r\t\u0019\u0011I\\=\t\u000b}b\u0003\u0019\u0001!\u0002\u0019Q|\u0007\u000fT3wK2$\u0016m]6\u0011\t9\t5gQ\u0005\u0003\u0005\n\u0011A\u0001V1tWB\u0011A\u0007\u0012\u0003\u0006\u000b2\u0012\ra\u000e\u0002\u0003)BDQa\u0012\u0001\u0005\u0002!\u000bq!\u001a=fGV$X-F\u0002J\u001dN#\"AS(\u0011\u0007)YU*\u0003\u0002M\r\tIa)\u001e8di&|g\u000e\r\t\u0003i9#QA\u000e$C\u0002]BQ\u0001\u0015$A\u0002E\u000bA\u0001^1tWB!a\"Q\'S!\t!4\u000bB\u0003F\r\n\u0007q\u0007C\u0003V\u0001\u0011\u0005a+\u0001\u000bfq\u0016\u001cW\u000f^3B]\u0012<\u0016-\u001b;SKN,H\u000e^\u000b\u0004/fkFC\u0001-[!\t!\u0014\u000cB\u00037)\n\u0007q\u0007C\u0003Q)\u0002\u00071\u000c\u0005\u0003\u000f\u0003bc\u0006C\u0001\u001b^\t\u0015)EK1\u00018\u0011\u0015y\u0006\u0001\"\u0001\"\u0003A\u0001\u0018M]1mY\u0016d\u0017n]7MKZ,G\u000e"
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

.field private final environment:Lscala/concurrent/ExecutionContext;

.field private final maxdepth:I


# direct methods
.method public constructor <init>(Lscala/concurrent/ExecutionContext;)V
    .locals 5

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/Tasks$class;->$init$(Lscala/collection/parallel/Tasks;)V

    .line 469
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {p0}, Lscala/collection/parallel/FutureTasks;->parallelismLevel()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lscala/math/package$;->log(D)D

    move-result-wide v0

    sget-object v2, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-virtual {v2, v3, v4}, Lscala/math/package$;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    const/4 v2, 0x1

    int-to-double v2, v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lscala/collection/parallel/FutureTasks;->maxdepth:I

    .line 471
    iput-object p1, p0, Lscala/collection/parallel/FutureTasks;->environment:Lscala/concurrent/ExecutionContext;

    return-void
.end method

.method private exec(Lscala/collection/parallel/Task;)Lscala/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "Tp:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/Task<",
            "TR;TTp;>;)",
            "Lscala/concurrent/Future<",
            "TR;>;"
        }
    .end annotation

    .line 478
    invoke-virtual {p0}, Lscala/collection/parallel/FutureTasks;->environment()Lscala/concurrent/ExecutionContext;

    move-result-object v0

    const/4 v1, 0x0

    .line 507
    invoke-virtual {p0, p1, v1, v0}, Lscala/collection/parallel/FutureTasks;->scala$collection$parallel$FutureTasks$$compute$1(Lscala/collection/parallel/Task;ILscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;

    move-result-object p1

    new-instance v1, Lscala/collection/parallel/FutureTasks$$anonfun$exec$1;

    invoke-direct {v1, p0}, Lscala/collection/parallel/FutureTasks$$anonfun$exec$1;-><init>(Lscala/collection/parallel/FutureTasks;)V

    invoke-interface {p1, v1, v0}, Lscala/concurrent/Future;->map(Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method private maxdepth()I
    .locals 1

    .line 469
    iget v0, p0, Lscala/collection/parallel/FutureTasks;->maxdepth:I

    return v0
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

    .line 465
    iget-object v0, p0, Lscala/collection/parallel/FutureTasks;->debugMessages:Lscala/collection/mutable/ArrayBuffer;

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

    .line 465
    invoke-static {p0, p1}, Lscala/collection/parallel/Tasks$class;->debuglog(Lscala/collection/parallel/Tasks;Ljava/lang/String;)Lscala/collection/mutable/ArrayBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic environment()Ljava/lang/Object;
    .locals 1

    .line 465
    invoke-virtual {p0}, Lscala/collection/parallel/FutureTasks;->environment()Lscala/concurrent/ExecutionContext;

    move-result-object v0

    return-object v0
.end method

.method public environment()Lscala/concurrent/ExecutionContext;
    .locals 1

    .line 471
    iget-object v0, p0, Lscala/collection/parallel/FutureTasks;->environment:Lscala/concurrent/ExecutionContext;

    return-object v0
.end method

.method public execute(Lscala/collection/parallel/Task;)Lscala/Function0;
    .locals 1
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

    .line 514
    invoke-direct {p0, p1}, Lscala/collection/parallel/FutureTasks;->exec(Lscala/collection/parallel/Task;)Lscala/concurrent/Future;

    move-result-object p1

    .line 515
    new-instance v0, Lscala/collection/parallel/FutureTasks$$anonfun$2;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/FutureTasks$$anonfun$2;-><init>(Lscala/collection/parallel/FutureTasks;Lscala/concurrent/Future;)V

    return-object v0
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

    .line 522
    invoke-virtual {p0, p1}, Lscala/collection/parallel/FutureTasks;->execute(Lscala/collection/parallel/Task;)Lscala/Function0;

    move-result-object p1

    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parallelismLevel()I
    .locals 1

    .line 525
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    return v0
.end method

.method public final scala$collection$parallel$FutureTasks$$compute$1(Lscala/collection/parallel/Task;ILscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .locals 2

    .line 483
    invoke-interface {p1}, Lscala/collection/parallel/Task;->shouldSplitFurther()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lscala/collection/parallel/FutureTasks;->maxdepth()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 484
    invoke-interface {p1}, Lscala/collection/parallel/Task;->split()Lscala/collection/Seq;

    move-result-object v0

    .line 485
    invoke-interface {v0}, Lscala/collection/Seq;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/FutureTasks$$anonfun$1;

    invoke-direct {v1, p0, p3, p2}, Lscala/collection/parallel/FutureTasks$$anonfun$1;-><init>(Lscala/collection/parallel/FutureTasks;Lscala/concurrent/ExecutionContext;I)V

    invoke-interface {v0, v1}, Lscala/collection/Iterator;->map(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p2

    .line 486
    new-instance v0, Lscala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$2;

    invoke-direct {v0, p0, p3}, Lscala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$2;-><init>(Lscala/collection/parallel/FutureTasks;Lscala/concurrent/ExecutionContext;)V

    invoke-interface {p2, v0}, Lscala/collection/Iterator;->reduceLeft(Lscala/Function2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/concurrent/Future;

    .line 494
    new-instance v0, Lscala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$1;-><init>(Lscala/collection/parallel/FutureTasks;Lscala/collection/parallel/Task;)V

    invoke-interface {p2, v0, p3}, Lscala/concurrent/Future;->andThen(Lscala/PartialFunction;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;

    move-result-object p1

    goto :goto_0

    .line 501
    :cond_0
    sget-object p2, Lscala/concurrent/Future$;->MODULE$:Lscala/concurrent/Future$;

    new-instance p2, Lscala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$3;

    invoke-direct {p2, p0, p1}, Lscala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$3;-><init>(Lscala/collection/parallel/FutureTasks;Lscala/collection/parallel/Task;)V

    sget-object p1, Lscala/concurrent/impl/Future$;->MODULE$:Lscala/concurrent/impl/Future$;

    new-instance p1, Lscala/concurrent/impl/Future$PromiseCompletingRunnable;

    invoke-direct {p1, p2}, Lscala/concurrent/impl/Future$PromiseCompletingRunnable;-><init>(Lscala/Function0;)V

    invoke-interface {p3}, Lscala/concurrent/ExecutionContext;->prepare()Lscala/concurrent/ExecutionContext;

    move-result-object p2

    invoke-interface {p2, p1}, Lscala/concurrent/ExecutionContext;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lscala/concurrent/impl/Future$PromiseCompletingRunnable;->promise()Lscala/concurrent/impl/Promise$DefaultPromise;

    move-result-object p1

    invoke-virtual {p1}, Lscala/concurrent/impl/Promise$DefaultPromise;->future()Lscala/concurrent/impl/Promise;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public scala$collection$parallel$Tasks$_setter_$debugMessages_$eq(Lscala/collection/mutable/ArrayBuffer;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lscala/collection/parallel/FutureTasks;->debugMessages:Lscala/collection/mutable/ArrayBuffer;

    return-void
.end method
