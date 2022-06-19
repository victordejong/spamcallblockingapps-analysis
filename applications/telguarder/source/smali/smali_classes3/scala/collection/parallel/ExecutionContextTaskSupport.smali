.class public Lscala/collection/parallel/ExecutionContextTaskSupport;
.super Ljava/lang/Object;
.source "TaskSupport.scala"

# interfaces
.implements Lscala/collection/parallel/TaskSupport;
.implements Lscala/collection/parallel/ExecutionContextTasks;


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001e2A!\u0001\u0002\u0001\u0013\tYR\t_3dkRLwN\\\"p]R,\u0007\u0010\u001e+bg.\u001cV\u000f\u001d9peRT!a\u0001\u0003\u0002\u0011A\u000c\'/\u00197mK2T!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\u0008\u0003\u0015\u00198-\u00197b\u0007\u0001\u0019B\u0001\u0001\u0006\u000f%A\u00111\u0002D\u0007\u0002\r%\u0011QB\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\u0005=\u0001R\"\u0001\u0002\n\u0005E\u0011!a\u0003+bg.\u001cV\u000f\u001d9peR\u0004\"aD\n\n\u0005Q\u0011!!F#yK\u000e,H/[8o\u0007>tG/\u001a=u)\u0006\u001c8n\u001d\u0005\t-\u0001\u0011)\u0019!C\u0001/\u0005YQM\u001c<je>tW.\u001a8u+\u0005A\u0002CA\r\u001d\u001b\u0005Q\"BA\u000e\u0007\u0003)\u0019wN\\2veJ,g\u000e^\u0005\u0003;i\u0011\u0001#\u0012=fGV$\u0018n\u001c8D_:$X\r\u001f;\t\u0011}\u0001!\u0011!Q\u0001\na\tA\"\u001a8wSJ|g.\\3oi\u0002BQ!\t\u0001\u0005\u0002\t\na\u0001P5oSRtDCA\u0012%!\ty\u0001\u0001C\u0004\u0017AA\u0005\t\u0019\u0001\r\u0008\u000f\u0019\u0012\u0011\u0011!E\u0001O\u0005YR\t_3dkRLwN\\\"p]R,\u0007\u0010\u001e+bg.\u001cV\u000f\u001d9peR\u0004\"a\u0004\u0015\u0007\u000f\u0005\u0011\u0011\u0011!E\u0001SM\u0011\u0001F\u0003\u0005\u0006C!\"\ta\u000b\u000b\u0002O!9Q\u0006KI\u0001\n\u0003q\u0013a\u0007\u0013mKN\u001c\u0018N\\5uI\u001d\u0014X-\u0019;fe\u0012\"WMZ1vYR$\u0013\'F\u00010U\tA\u0002gK\u00012!\t\u0011t\'D\u00014\u0015\t!T\'A\u0005v]\u000eDWmY6fI*\u0011aGB\u0001\u000bC:tw\u000e^1uS>t\u0017B\u0001\u001d4\u0005E)hn\u00195fG.,GMV1sS\u0006t7-\u001a"
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

.field private final scala$collection$parallel$ExecutionContextTasks$$driver:Lscala/collection/parallel/Tasks;


# direct methods
.method public static $lessinit$greater$default$1()Lscala/concurrent/ExecutionContext;
    .locals 1

    sget-object v0, Lscala/collection/parallel/ExecutionContextTaskSupport$;->MODULE$:Lscala/collection/parallel/ExecutionContextTaskSupport$;

    invoke-virtual {v0}, Lscala/collection/parallel/ExecutionContextTaskSupport$;->$lessinit$greater$default$1()Lscala/concurrent/ExecutionContext;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lscala/concurrent/ExecutionContext;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lscala/collection/parallel/ExecutionContextTaskSupport;->environment:Lscala/concurrent/ExecutionContext;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/Tasks$class;->$init$(Lscala/collection/parallel/Tasks;)V

    invoke-static {p0}, Lscala/collection/parallel/ExecutionContextTasks$class;->$init$(Lscala/collection/parallel/ExecutionContextTasks;)V

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

    .line 80
    iget-object v0, p0, Lscala/collection/parallel/ExecutionContextTaskSupport;->debugMessages:Lscala/collection/mutable/ArrayBuffer;

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

    .line 80
    invoke-static {p0, p1}, Lscala/collection/parallel/Tasks$class;->debuglog(Lscala/collection/parallel/Tasks;Ljava/lang/String;)Lscala/collection/mutable/ArrayBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic environment()Ljava/lang/Object;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/parallel/ExecutionContextTaskSupport;->environment()Lscala/concurrent/ExecutionContext;

    move-result-object v0

    return-object v0
.end method

.method public environment()Lscala/concurrent/ExecutionContext;
    .locals 1

    .line 80
    iget-object v0, p0, Lscala/collection/parallel/ExecutionContextTaskSupport;->environment:Lscala/concurrent/ExecutionContext;

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

    .line 80
    invoke-static {p0, p1}, Lscala/collection/parallel/ExecutionContextTasks$class;->execute(Lscala/collection/parallel/ExecutionContextTasks;Lscala/collection/parallel/Task;)Lscala/Function0;

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

    .line 80
    invoke-static {p0, p1}, Lscala/collection/parallel/ExecutionContextTasks$class;->executeAndWaitResult(Lscala/collection/parallel/ExecutionContextTasks;Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public executionContext()Lscala/concurrent/ExecutionContext;
    .locals 1

    .line 80
    invoke-static {p0}, Lscala/collection/parallel/ExecutionContextTasks$class;->executionContext(Lscala/collection/parallel/ExecutionContextTasks;)Lscala/concurrent/ExecutionContext;

    move-result-object v0

    return-object v0
.end method

.method public parallelismLevel()I
    .locals 1

    .line 80
    invoke-static {p0}, Lscala/collection/parallel/ExecutionContextTasks$class;->parallelismLevel(Lscala/collection/parallel/ExecutionContextTasks;)I

    move-result v0

    return v0
.end method

.method public scala$collection$parallel$ExecutionContextTasks$$driver()Lscala/collection/parallel/Tasks;
    .locals 1

    .line 80
    iget-object v0, p0, Lscala/collection/parallel/ExecutionContextTaskSupport;->scala$collection$parallel$ExecutionContextTasks$$driver:Lscala/collection/parallel/Tasks;

    return-object v0
.end method

.method public scala$collection$parallel$ExecutionContextTasks$_setter_$scala$collection$parallel$ExecutionContextTasks$$driver_$eq(Lscala/collection/parallel/Tasks;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lscala/collection/parallel/ExecutionContextTaskSupport;->scala$collection$parallel$ExecutionContextTasks$$driver:Lscala/collection/parallel/Tasks;

    return-void
.end method

.method public scala$collection$parallel$Tasks$_setter_$debugMessages_$eq(Lscala/collection/mutable/ArrayBuffer;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lscala/collection/parallel/ExecutionContextTaskSupport;->debugMessages:Lscala/collection/mutable/ArrayBuffer;

    return-void
.end method
