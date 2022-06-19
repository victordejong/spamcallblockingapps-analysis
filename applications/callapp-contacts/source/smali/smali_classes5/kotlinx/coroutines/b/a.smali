.class public final Lkotlinx/coroutines/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/b/a$b;,
        Lkotlinx/coroutines/b/a$c;,
        Lkotlinx/coroutines/b/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008-\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0008\u0000\u0018\u0000 X2\u00020\\2\u00020]:\u0003XYZB+\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0018\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0004H\u0086\u0008\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0018\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0004H\u0082\u0008\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J!\u0010\u001d\u001a\u00020\n2\n\u0010\u001a\u001a\u00060\u0018j\u0002`\u00192\u0006\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0018\u0010\u001f\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0004H\u0082\u0008\u00a2\u0006\u0004\u0008\u001f\u0010\u0011J\u0015\u0010!\u001a\u0008\u0018\u00010 R\u00020\u0000H\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\u0010\u0010#\u001a\u00020\u0013H\u0082\u0008\u00a2\u0006\u0004\u0008#\u0010\u0015J\u0010\u0010$\u001a\u00020\u0001H\u0082\u0008\u00a2\u0006\u0004\u0008$\u0010\u0017J-\u0010&\u001a\u00020\u00132\n\u0010\u001a\u001a\u00060\u0018j\u0002`\u00192\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001b2\u0008\u0008\u0002\u0010%\u001a\u00020\u000c\u00a2\u0006\u0004\u0008&\u0010\'J\u001b\u0010)\u001a\u00020\u00132\n\u0010(\u001a\u00060\u0018j\u0002`\u0019H\u0016\u00a2\u0006\u0004\u0008)\u0010*J\u0010\u0010+\u001a\u00020\u0004H\u0082\u0008\u00a2\u0006\u0004\u0008+\u0010,J\u0010\u0010-\u001a\u00020\u0001H\u0082\u0008\u00a2\u0006\u0004\u0008-\u0010\u0017J\u001b\u0010/\u001a\u00020\u00012\n\u0010.\u001a\u00060 R\u00020\u0000H\u0002\u00a2\u0006\u0004\u0008/\u00100J\u0015\u00101\u001a\u0008\u0018\u00010 R\u00020\u0000H\u0002\u00a2\u0006\u0004\u00081\u0010\"J\u0019\u00102\u001a\u00020\u000c2\n\u0010.\u001a\u00060 R\u00020\u0000\u00a2\u0006\u0004\u00082\u00103J)\u00106\u001a\u00020\u00132\n\u0010.\u001a\u00060 R\u00020\u00002\u0006\u00104\u001a\u00020\u00012\u0006\u00105\u001a\u00020\u0001\u00a2\u0006\u0004\u00086\u00107J\u0010\u00108\u001a\u00020\u0004H\u0082\u0008\u00a2\u0006\u0004\u00088\u0010,J\u0015\u00109\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u00089\u0010:J\u0015\u0010<\u001a\u00020\u00132\u0006\u0010;\u001a\u00020\u0004\u00a2\u0006\u0004\u0008<\u0010=J\u0017\u0010?\u001a\u00020\u00132\u0006\u0010>\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008?\u0010@J\r\u0010A\u001a\u00020\u0013\u00a2\u0006\u0004\u0008A\u0010\u0015J\u000f\u0010B\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008B\u0010CJ\u0010\u0010D\u001a\u00020\u000cH\u0082\u0008\u00a2\u0006\u0004\u0008D\u0010EJ\u0019\u0010F\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008F\u0010GJ\u000f\u0010H\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008H\u0010EJ+\u0010I\u001a\u0004\u0018\u00010\n*\u0008\u0018\u00010 R\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010%\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008I\u0010JR\u0017\u0010\u0010\u001a\u00020\u00018\u00c2\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008K\u0010\u0017R\u0016\u0010\u0002\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0002\u0010LR\u0017\u0010\u001f\u001a\u00020\u00018\u00c2\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008M\u0010\u0017R\u0016\u0010O\u001a\u00020N8\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008O\u0010PR\u0016\u0010Q\u001a\u00020N8\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008Q\u0010PR\u0016\u0010\u0005\u001a\u00020\u00048\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010RR\u0013\u0010S\u001a\u00020\u000c8F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008S\u0010ER\u0016\u0010\u0003\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010LR\u0016\u0010\u0007\u001a\u00020\u00068\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010TR\"\u0010V\u001a\u000e\u0012\n\u0012\u0008\u0018\u00010 R\u00020\u00000U8\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008V\u0010W\u00a8\u0006["
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler;",
        "",
        "corePoolSize",
        "maxPoolSize",
        "",
        "idleWorkerKeepAliveNs",
        "",
        "schedulerName",
        "<init>",
        "(IIJLjava/lang/String;)V",
        "Lkotlinx/coroutines/scheduling/Task;",
        "task",
        "",
        "addToGlobalQueue",
        "(Lkotlinx/coroutines/scheduling/Task;)Z",
        "state",
        "availableCpuPermits",
        "(J)I",
        "blockingTasks",
        "",
        "close",
        "()V",
        "createNewWorker",
        "()I",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "block",
        "Lkotlinx/coroutines/scheduling/TaskContext;",
        "taskContext",
        "createTask",
        "(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;)Lkotlinx/coroutines/scheduling/Task;",
        "createdWorkers",
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;",
        "currentWorker",
        "()Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;",
        "decrementBlockingTasks",
        "decrementCreatedWorkers",
        "tailDispatch",
        "dispatch",
        "(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;Z)V",
        "command",
        "execute",
        "(Ljava/lang/Runnable;)V",
        "incrementBlockingTasks",
        "()J",
        "incrementCreatedWorkers",
        "worker",
        "parkedWorkersStackNextIndex",
        "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)I",
        "parkedWorkersStackPop",
        "parkedWorkersStackPush",
        "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)Z",
        "oldIndex",
        "newIndex",
        "parkedWorkersStackTopUpdate",
        "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;II)V",
        "releaseCpuPermit",
        "runSafely",
        "(Lkotlinx/coroutines/scheduling/Task;)V",
        "timeout",
        "shutdown",
        "(J)V",
        "skipUnpark",
        "signalBlockingWork",
        "(Z)V",
        "signalCpuWork",
        "toString",
        "()Ljava/lang/String;",
        "tryAcquireCpuPermit",
        "()Z",
        "tryCreateWorker",
        "(J)Z",
        "tryUnpark",
        "submitToLocalQueue",
        "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;Lkotlinx/coroutines/scheduling/Task;Z)Lkotlinx/coroutines/scheduling/Task;",
        "getAvailableCpuPermits",
        "I",
        "getCreatedWorkers",
        "Lkotlinx/coroutines/scheduling/GlobalQueue;",
        "globalBlockingQueue",
        "Lkotlinx/coroutines/scheduling/GlobalQueue;",
        "globalCpuQueue",
        "J",
        "isTerminated",
        "Ljava/lang/String;",
        "Ljava/util/concurrent/atomic/AtomicReferenceArray;",
        "workers",
        "Ljava/util/concurrent/atomic/AtomicReferenceArray;",
        "Companion",
        "Worker",
        "WorkerState",
        "kotlinx-coroutines-core",
        "Ljava/util/concurrent/Executor;",
        "Ljava/io/Closeable;"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field static final synthetic c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field static final synthetic e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final j:Lkotlinx/coroutines/internal/v;

.field public static final k:Lkotlinx/coroutines/b/a$a;

.field private static final synthetic l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field volatile synthetic _isTerminated:I

.field public final a:Lkotlinx/coroutines/b/e;

.field public final b:Lkotlinx/coroutines/b/e;

.field volatile synthetic controlState:J

.field public final d:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lkotlinx/coroutines/b/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public final f:I

.field public final g:I

.field public final h:J

.field public final i:Ljava/lang/String;

.field volatile synthetic parkedWorkersStack:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/b/a;

    new-instance v1, Lkotlinx/coroutines/b/a$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lkotlinx/coroutines/b/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lkotlinx/coroutines/b/a;->k:Lkotlinx/coroutines/b/a$a;

    .line 304
    new-instance v1, Lkotlinx/coroutines/internal/v;

    const-string v2, "NOT_IN_STACK"

    invoke-direct {v1, v2}, Lkotlinx/coroutines/internal/v;-><init>(Ljava/lang/String;)V

    sput-object v1, Lkotlinx/coroutines/b/a;->j:Lkotlinx/coroutines/internal/v;

    const-string v1, "parkedWorkersStack"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/b/a;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v1, "controlState"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/b/a;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v1, "_isTerminated"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/b/a;->l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 4

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/b/a;->f:I

    iput p2, p0, Lkotlinx/coroutines/b/a;->g:I

    iput-wide p3, p0, Lkotlinx/coroutines/b/a;->h:J

    iput-object p5, p0, Lkotlinx/coroutines/b/a;->i:Ljava/lang/String;

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_7

    if-lt p2, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v2, "Max pool size "

    if-eqz v1, :cond_6

    const v1, 0x1ffffe

    if-gt p2, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    if-lez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_4

    .line 114
    new-instance p3, Lkotlinx/coroutines/b/e;

    invoke-direct {p3}, Lkotlinx/coroutines/b/e;-><init>()V

    iput-object p3, p0, Lkotlinx/coroutines/b/a;->a:Lkotlinx/coroutines/b/e;

    .line 116
    new-instance p3, Lkotlinx/coroutines/b/e;

    invoke-direct {p3}, Lkotlinx/coroutines/b/e;-><init>()V

    iput-object p3, p0, Lkotlinx/coroutines/b/a;->b:Lkotlinx/coroutines/b/e;

    .line 140
    iput-wide v1, p0, Lkotlinx/coroutines/b/a;->parkedWorkersStack:J

    .line 264
    new-instance p3, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/2addr p2, p5

    invoke-direct {p3, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p3, p0, Lkotlinx/coroutines/b/a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    int-to-long p1, p1

    const/16 p3, 0x2a

    shl-long/2addr p1, p3

    .line 270
    iput-wide p1, p0, Lkotlinx/coroutines/b/a;->controlState:J

    .line 298
    iput v0, p0, Lkotlinx/coroutines/b/a;->_isTerminated:I

    return-void

    .line 109
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Idle worker keep alive time "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " must be positive"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 106
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " should not exceed maximal supported number of threads 2097150"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 105
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 103
    :cond_6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " should be greater than or equals to core pool size "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 102
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 100
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Core pool size "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " should be at least 1"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 99
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public synthetic constructor <init>(IIJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 95
    sget-wide p3, Lkotlinx/coroutines/b/m;->e:J

    :cond_0
    move-wide v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const-string p5, "DefaultDispatcher"

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 96
    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/b/a;-><init>(IIJLjava/lang/String;)V

    return-void
.end method

.method private static a(Lkotlinx/coroutines/b/a$b;)I
    .locals 1

    .line 2631
    iget-object p0, p0, Lkotlinx/coroutines/b/a$b;->nextParkedWorker:Ljava/lang/Object;

    .line 240
    :goto_0
    sget-object v0, Lkotlinx/coroutines/b/a;->j:Lkotlinx/coroutines/internal/v;

    if-ne p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 243
    :cond_1
    check-cast p0, Lkotlinx/coroutines/b/a$b;

    .line 3587
    iget v0, p0, Lkotlinx/coroutines/b/a$b;->indexInArray:I

    if-eqz v0, :cond_2

    return v0

    .line 3631
    :cond_2
    iget-object p0, p0, Lkotlinx/coroutines/b/a$b;->nextParkedWorker:Ljava/lang/Object;

    goto :goto_0
.end method

.method public static final synthetic a(Lkotlinx/coroutines/b/a;)I
    .locals 4

    .line 9271
    iget-wide v0, p0, Lkotlinx/coroutines/b/a;->controlState:J

    const-wide/32 v2, 0x1fffff

    and-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public static a(Ljava/lang/Runnable;Lkotlinx/coroutines/b/k;)Lkotlinx/coroutines/b/j;
    .locals 3

    .line 407
    sget-object v0, Lkotlinx/coroutines/b/m;->f:Lkotlinx/coroutines/b/i;

    invoke-virtual {v0}, Lkotlinx/coroutines/b/i;->a()J

    move-result-wide v0

    .line 408
    instance-of v2, p0, Lkotlinx/coroutines/b/j;

    if-eqz v2, :cond_0

    .line 409
    check-cast p0, Lkotlinx/coroutines/b/j;

    iput-wide v0, p0, Lkotlinx/coroutines/b/j;->g:J

    .line 410
    iput-object p1, p0, Lkotlinx/coroutines/b/j;->h:Lkotlinx/coroutines/b/k;

    return-object p0

    .line 413
    :cond_0
    new-instance v2, Lkotlinx/coroutines/b/l;

    invoke-direct {v2, p0, v0, v1, p1}, Lkotlinx/coroutines/b/l;-><init>(Ljava/lang/Runnable;JLkotlinx/coroutines/b/k;)V

    check-cast v2, Lkotlinx/coroutines/b/j;

    return-object v2
.end method

.method public static synthetic a(Lkotlinx/coroutines/b/a;Ljava/lang/Runnable;)V
    .locals 2

    .line 383
    sget-object v0, Lkotlinx/coroutines/b/h;->a:Lkotlinx/coroutines/b/h;

    check-cast v0, Lkotlinx/coroutines/b/k;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lkotlinx/coroutines/b/a;->a(Ljava/lang/Runnable;Lkotlinx/coroutines/b/k;Z)V

    return-void
.end method

.method public static a(Lkotlinx/coroutines/b/j;)V
    .locals 2

    .line 571
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/b/j;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 573
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 574
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    .line 576
    throw p0
.end method

.method private final a(J)Z
    .locals 4

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, p1

    long-to-int v1, v0

    const-wide v2, 0x3ffffe00000L

    and-long/2addr p1, v2

    const/16 v0, 0x15

    shr-long/2addr p1, v0

    long-to-int p2, p1

    sub-int/2addr v1, p2

    const/4 p1, 0x0

    .line 434
    invoke-static {v1, p1}, Lkotlin/f/d;->c(II)I

    move-result p2

    .line 439
    iget v0, p0, Lkotlinx/coroutines/b/a;->f:I

    if-ge p2, v0, :cond_1

    .line 440
    invoke-direct {p0}, Lkotlinx/coroutines/b/a;->d()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 443
    iget v1, p0, Lkotlinx/coroutines/b/a;->f:I

    if-le v1, v0, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/b/a;->d()I

    :cond_0
    if-lez p2, :cond_1

    return v0

    :cond_1
    return p1
.end method

.method private final b()Lkotlinx/coroutines/b/a$b;
    .locals 9

    .line 991
    :cond_0
    iget-wide v2, p0, Lkotlinx/coroutines/b/a;->parkedWorkersStack:J

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, v2

    long-to-int v1, v0

    .line 207
    iget-object v0, p0, Lkotlinx/coroutines/b/a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lkotlinx/coroutines/b/a$b;

    if-nez v6, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const-wide/32 v0, 0x200000

    add-long/2addr v0, v2

    const-wide/32 v4, -0x200000

    and-long/2addr v0, v4

    .line 209
    invoke-static {v6}, Lkotlinx/coroutines/b/a;->a(Lkotlinx/coroutines/b/a$b;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 216
    sget-object v5, Lkotlinx/coroutines/b/a;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v7, v4

    or-long/2addr v7, v0

    move-object v0, v5

    move-object v1, p0

    move-wide v4, v7

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    sget-object v0, Lkotlinx/coroutines/b/a;->j:Lkotlinx/coroutines/internal/v;

    .line 1631
    iput-object v0, v6, Lkotlinx/coroutines/b/a$b;->nextParkedWorker:Ljava/lang/Object;

    return-object v6
.end method

.method private static synthetic b(Lkotlinx/coroutines/b/a;)Z
    .locals 2

    .line 431
    iget-wide v0, p0, Lkotlinx/coroutines/b/a;->controlState:J

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/b/a;->a(J)Z

    move-result p0

    return p0
.end method

.method private final c()Z
    .locals 4

    .line 451
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/b/a;->b()Lkotlinx/coroutines/b/a$b;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 452
    :cond_1
    sget-object v2, Lkotlinx/coroutines/b/a$b;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    check-cast v0, Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    const/4 v0, 0x1

    return v0
.end method

.method private final d()I
    .locals 10

    .line 464
    iget-object v0, p0, Lkotlinx/coroutines/b/a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1009
    monitor-enter v0

    .line 8299
    :try_start_0
    iget v1, p0, Lkotlinx/coroutines/b/a;->_isTerminated:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 466
    monitor-exit v0

    const/4 v0, -0x1

    return v0

    .line 467
    :cond_0
    :try_start_1
    iget-wide v1, p0, Lkotlinx/coroutines/b/a;->controlState:J

    const-wide/32 v3, 0x1fffff

    and-long v5, v1, v3

    long-to-int v6, v5

    const-wide v7, 0x3ffffe00000L

    and-long/2addr v1, v7

    const/16 v5, 0x15

    shr-long/2addr v1, v5

    long-to-int v2, v1

    sub-int v1, v6, v2

    const/4 v2, 0x0

    .line 470
    invoke-static {v1, v2}, Lkotlin/f/d;->c(II)I

    move-result v1

    .line 472
    iget v5, p0, Lkotlinx/coroutines/b/a;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v1, v5, :cond_1

    monitor-exit v0

    return v2

    .line 473
    :cond_1
    :try_start_2
    iget v5, p0, Lkotlinx/coroutines/b/a;->g:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v6, v5, :cond_2

    monitor-exit v0

    return v2

    .line 1012
    :cond_2
    :try_start_3
    iget-wide v5, p0, Lkotlinx/coroutines/b/a;->controlState:J

    and-long/2addr v5, v3

    long-to-int v6, v5

    const/4 v5, 0x1

    add-int/2addr v6, v5

    if-lez v6, :cond_3

    .line 476
    iget-object v7, p0, Lkotlinx/coroutines/b/a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_6

    .line 482
    new-instance v7, Lkotlinx/coroutines/b/a$b;

    invoke-direct {v7, p0, v6}, Lkotlinx/coroutines/b/a$b;-><init>(Lkotlinx/coroutines/b/a;I)V

    .line 483
    iget-object v8, p0, Lkotlinx/coroutines/b/a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v8, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1013
    sget-object v8, Lkotlinx/coroutines/b/a;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    move-result-wide v8

    and-long/2addr v3, v8

    long-to-int v4, v3

    if-ne v6, v4, :cond_4

    const/4 v2, 0x1

    :cond_4
    if-eqz v2, :cond_5

    .line 485
    invoke-virtual {v7}, Lkotlinx/coroutines/b/a$b;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/2addr v1, v5

    .line 486
    monitor-exit v0

    return v1

    :cond_5
    :try_start_4
    const-string v1, "Failed requirement."

    .line 484
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    :cond_6
    const-string v1, "Failed requirement."

    .line 476
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v1

    .line 486
    monitor-exit v0

    throw v1
.end method

.method private final e()Lkotlinx/coroutines/b/a$b;
    .locals 4

    .line 509
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/b/a$b;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lkotlinx/coroutines/b/a$b;

    if-eqz v0, :cond_1

    .line 1016
    iget-object v1, v0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    move-object v3, p0

    check-cast v3, Lkotlinx/coroutines/b/a;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 426
    invoke-direct {p0}, Lkotlinx/coroutines/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 427
    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/b/a;->b(Lkotlinx/coroutines/b/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 428
    :cond_1
    invoke-direct {p0}, Lkotlinx/coroutines/b/a;->c()Z

    return-void
.end method

.method public final a(Ljava/lang/Runnable;Lkotlinx/coroutines/b/k;Z)V
    .locals 4

    .line 385
    invoke-static {p1, p2}, Lkotlinx/coroutines/b/a;->a(Ljava/lang/Runnable;Lkotlinx/coroutines/b/k;)Lkotlinx/coroutines/b/j;

    move-result-object p1

    .line 387
    invoke-direct {p0}, Lkotlinx/coroutines/b/a;->e()Lkotlinx/coroutines/b/a$b;

    move-result-object p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    goto :goto_0

    .line 5500
    :cond_0
    iget v1, p2, Lkotlinx/coroutines/b/a$b;->b:I

    sget v2, Lkotlinx/coroutines/b/a$c;->e:I

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 6015
    :cond_1
    iget-object v1, p1, Lkotlinx/coroutines/b/j;->h:Lkotlinx/coroutines/b/k;

    invoke-interface {v1}, Lkotlinx/coroutines/b/k;->d()I

    move-result v1

    if-nez v1, :cond_2

    .line 5502
    iget v1, p2, Lkotlinx/coroutines/b/a$b;->b:I

    sget v2, Lkotlinx/coroutines/b/a$c;->b:I

    if-ne v1, v2, :cond_2

    :goto_0
    move-object v1, p1

    goto :goto_1

    .line 5505
    :cond_2
    iput-boolean v0, p2, Lkotlinx/coroutines/b/a$b;->d:Z

    .line 5506
    iget-object v1, p2, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/n;

    invoke-virtual {v1, p1, p3}, Lkotlinx/coroutines/b/n;->a(Lkotlinx/coroutines/b/j;Z)Lkotlinx/coroutines/b/j;

    move-result-object v1

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 6984
    iget-object v3, v1, Lkotlinx/coroutines/b/j;->h:Lkotlinx/coroutines/b/k;

    invoke-interface {v3}, Lkotlinx/coroutines/b/k;->d()I

    move-result v3

    if-ne v3, v0, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    .line 6120
    iget-object v3, p0, Lkotlinx/coroutines/b/a;->b:Lkotlinx/coroutines/b/e;

    invoke-virtual {v3, v1}, Lkotlinx/coroutines/b/e;->a(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3

    .line 6122
    :cond_4
    iget-object v3, p0, Lkotlinx/coroutines/b/a;->a:Lkotlinx/coroutines/b/e;

    invoke-virtual {v3, v1}, Lkotlinx/coroutines/b/e;->a(Ljava/lang/Object;)Z

    move-result v1

    :goto_3
    if-eqz v1, :cond_5

    goto :goto_4

    .line 392
    :cond_5
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lkotlinx/coroutines/b/a;->i:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " was terminated"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_6
    :goto_4
    if-eqz p3, :cond_7

    if-eqz p2, :cond_7

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    .line 1005
    :goto_5
    iget-object p1, p1, Lkotlinx/coroutines/b/j;->h:Lkotlinx/coroutines/b/k;

    invoke-interface {p1}, Lkotlinx/coroutines/b/k;->d()I

    move-result p1

    if-nez p1, :cond_9

    if-eqz v0, :cond_8

    return-void

    .line 399
    :cond_8
    invoke-virtual {p0}, Lkotlinx/coroutines/b/a;->a()V

    return-void

    .line 8006
    :cond_9
    sget-object p1, Lkotlinx/coroutines/b/a;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 p2, 0x200000

    invoke-virtual {p1, p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide p1

    if-nez v0, :cond_a

    .line 7420
    invoke-direct {p0}, Lkotlinx/coroutines/b/a;->c()Z

    move-result p3

    if-nez p3, :cond_a

    .line 7421
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/b/a;->a(J)Z

    move-result p1

    if-nez p1, :cond_a

    .line 7422
    invoke-direct {p0}, Lkotlinx/coroutines/b/a;->c()Z

    :cond_a
    return-void
.end method

.method public final a(Lkotlinx/coroutines/b/a$b;II)V
    .locals 8

    .line 986
    :cond_0
    iget-wide v2, p0, Lkotlinx/coroutines/b/a;->parkedWorkersStack:J

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, v2

    long-to-int v1, v0

    const-wide/32 v4, 0x200000

    add-long/2addr v4, v2

    const-wide/32 v6, -0x200000

    and-long/2addr v4, v6

    if-ne v1, p2, :cond_2

    if-nez p3, :cond_1

    .line 155
    invoke-static {p1}, Lkotlinx/coroutines/b/a;->a(Lkotlinx/coroutines/b/a$b;)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, p3

    :cond_2
    :goto_0
    if-ltz v1, :cond_0

    .line 163
    sget-object v0, Lkotlinx/coroutines/b/a;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v6, v1

    or-long/2addr v4, v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final close()V
    .locals 8

    .line 4334
    sget-object v0, Lkotlinx/coroutines/b/a;->l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4336
    invoke-direct {p0}, Lkotlinx/coroutines/b/a;->e()Lkotlinx/coroutines/b/a$b;

    move-result-object v0

    .line 4338
    iget-object v3, p0, Lkotlinx/coroutines/b/a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 4998
    monitor-enter v3

    .line 4999
    :try_start_0
    iget-wide v4, p0, Lkotlinx/coroutines/b/a;->controlState:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v6, 0x1fffff

    and-long/2addr v4, v6

    long-to-int v5, v4

    monitor-exit v3

    if-lez v5, :cond_5

    const/4 v3, 0x1

    .line 4341
    :goto_0
    iget-object v4, p0, Lkotlinx/coroutines/b/a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    check-cast v4, Lkotlinx/coroutines/b/a$b;

    if-eq v4, v0, :cond_4

    .line 4343
    :goto_1
    invoke-virtual {v4}, Lkotlinx/coroutines/b/a$b;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4344
    move-object v6, v4

    check-cast v6, Ljava/lang/Thread;

    invoke-static {v6}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    const-wide/16 v6, 0x2710

    .line 4345
    invoke-virtual {v4, v6, v7}, Lkotlinx/coroutines/b/a$b;->join(J)V

    goto :goto_1

    .line 4347
    :cond_0
    iget v6, v4, Lkotlinx/coroutines/b/a$b;->b:I

    .line 4348
    invoke-static {}, Lkotlinx/coroutines/ao;->a()Z

    move-result v7

    if-eqz v7, :cond_3

    sget v7, Lkotlinx/coroutines/b/a$c;->e:I

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 4349
    :cond_3
    :goto_3
    iget-object v4, v4, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/n;

    iget-object v6, p0, Lkotlinx/coroutines/b/a;->b:Lkotlinx/coroutines/b/e;

    invoke-virtual {v4, v6}, Lkotlinx/coroutines/b/n;->a(Lkotlinx/coroutines/b/e;)V

    :cond_4
    if-eq v3, v5, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4353
    :cond_5
    iget-object v3, p0, Lkotlinx/coroutines/b/a;->b:Lkotlinx/coroutines/b/e;

    invoke-virtual {v3}, Lkotlinx/coroutines/b/e;->b()V

    .line 4354
    iget-object v3, p0, Lkotlinx/coroutines/b/a;->a:Lkotlinx/coroutines/b/e;

    invoke-virtual {v3}, Lkotlinx/coroutines/b/e;->b()V

    :goto_4
    if-eqz v0, :cond_6

    .line 4357
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/b/a$b;->a(Z)Lkotlinx/coroutines/b/j;

    move-result-object v3

    if-nez v3, :cond_7

    .line 4358
    :cond_6
    iget-object v3, p0, Lkotlinx/coroutines/b/a;->a:Lkotlinx/coroutines/b/e;

    invoke-virtual {v3}, Lkotlinx/coroutines/b/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/b/j;

    :cond_7
    if-nez v3, :cond_8

    .line 4359
    iget-object v3, p0, Lkotlinx/coroutines/b/a;->b:Lkotlinx/coroutines/b/e;

    invoke-virtual {v3}, Lkotlinx/coroutines/b/e;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/b/j;

    :cond_8
    if-nez v3, :cond_d

    if-eqz v0, :cond_9

    .line 4364
    sget v3, Lkotlinx/coroutines/b/a$c;->e:I

    invoke-virtual {v0, v3}, Lkotlinx/coroutines/b/a$b;->a(I)Z

    .line 4366
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/ao;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5000
    iget-wide v3, p0, Lkotlinx/coroutines/b/a;->controlState:J

    const-wide v5, 0x7ffffc0000000000L

    and-long/2addr v3, v5

    const/16 v0, 0x2a

    shr-long/2addr v3, v0

    long-to-int v0, v3

    iget v3, p0, Lkotlinx/coroutines/b/a;->f:I

    if-ne v0, v3, :cond_a

    const/4 v1, 0x1

    :cond_a
    if-eqz v1, :cond_b

    goto :goto_5

    .line 4366
    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_c
    :goto_5
    const-wide/16 v0, 0x0

    .line 4367
    iput-wide v0, p0, Lkotlinx/coroutines/b/a;->parkedWorkersStack:J

    .line 4368
    iput-wide v0, p0, Lkotlinx/coroutines/b/a;->controlState:J

    goto :goto_6

    .line 4361
    :cond_d
    invoke-static {v3}, Lkotlinx/coroutines/b/a;->a(Lkotlinx/coroutines/b/j;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 4999
    monitor-exit v3

    throw v0

    :cond_e
    :goto_6
    return-void
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 327
    invoke-static {p0, p1}, Lkotlinx/coroutines/b/a;->a(Lkotlinx/coroutines/b/a;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    .line 527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 528
    iget-object v1, p0, Lkotlinx/coroutines/b/a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_0
    if-ge v8, v1, :cond_7

    .line 529
    iget-object v9, p0, Lkotlinx/coroutines/b/a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v9, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlinx/coroutines/b/a$b;

    if-nez v9, :cond_0

    goto/16 :goto_1

    .line 530
    :cond_0
    iget-object v10, v9, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/n;

    invoke-virtual {v10}, Lkotlinx/coroutines/b/n;->a()I

    move-result v10

    .line 531
    iget v9, v9, Lkotlinx/coroutines/b/a$b;->b:I

    sget-object v11, Lkotlinx/coroutines/b/b;->a:[I

    sub-int/2addr v9, v3

    aget v9, v11, v9

    if-eq v9, v3, :cond_5

    const/4 v11, 0x2

    if-eq v9, v11, :cond_4

    const/4 v11, 0x3

    if-eq v9, v11, :cond_3

    const/4 v11, 0x4

    if-eq v9, v11, :cond_2

    const/4 v10, 0x5

    if-eq v9, v10, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    if-lez v10, :cond_6

    .line 543
    move-object v9, v0

    check-cast v9, Ljava/util/Collection;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "d"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 539
    move-object v9, v0

    check-cast v9, Ljava/util/Collection;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "c"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 535
    move-object v9, v0

    check-cast v9, Ljava/util/Collection;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "b"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    :cond_6
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 548
    :cond_7
    iget-wide v8, p0, Lkotlinx/coroutines/b/a;->controlState:J

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lkotlinx/coroutines/b/a;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9013
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 549
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "Pool Size {core = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    iget v3, p0, Lkotlinx/coroutines/b/a;->f:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", max = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    iget v3, p0, Lkotlinx/coroutines/b/a;->g:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "}, Worker States {CPU = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", blocking = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", parked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dormant = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", terminated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "}, running workers queues = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", global CPU queue size = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    iget-object v0, p0, Lkotlinx/coroutines/b/a;->a:Lkotlinx/coroutines/b/e;

    invoke-virtual {v0}, Lkotlinx/coroutines/b/e;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", global blocking queue size = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    iget-object v0, p0, Lkotlinx/coroutines/b/a;->b:Lkotlinx/coroutines/b/e;

    invoke-virtual {v0}, Lkotlinx/coroutines/b/e;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Control State {created workers= "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v2, 0x1fffff

    and-long/2addr v2, v8

    long-to-int v0, v2

    .line 1017
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", blocking tasks = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v2, 0x3ffffe00000L

    and-long/2addr v2, v8

    const/16 v0, 0x15

    shr-long/2addr v2, v0

    long-to-int v0, v2

    .line 1018
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", CPUs acquired = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    iget v0, p0, Lkotlinx/coroutines/b/a;->f:I

    const-wide v2, 0x7ffffc0000000000L

    and-long/2addr v2, v8

    const/16 v4, 0x2a

    shr-long/2addr v2, v4

    long-to-int v3, v2

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
