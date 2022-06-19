.class public final Lkotlinx/coroutines/b/a$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\u0008\u0080\u0004\u0018\u00002\u00020GB\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0005J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008\n\u0010\tJ\u0017\u0010\r\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\tJ\u000f\u0010\u0016\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0015\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0011\u0010\u001d\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u001cJ\u000f\u0010 \u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008 \u0010\u001cJ\u000f\u0010!\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008!\u0010\u0017J\u000f\u0010\"\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\"\u0010\u001cJ\u0015\u0010%\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020#\u00a2\u0006\u0004\u0008%\u0010&J\u0019\u0010(\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\'\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008(\u0010\u0012J\u000f\u0010)\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008)\u0010\u001cR*\u0010*\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00018\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010\tR\u0016\u00100\u001a\u00020/8\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0016\u00102\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0016\u00105\u001a\u0002048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00106R$\u00108\u001a\u0004\u0018\u0001078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00088\u00109\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=R\u0016\u0010>\u001a\u00020\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010+R\u0014\u0010B\u001a\u00020?8\u00c6\u0002@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008@\u0010AR\u0016\u0010C\u001a\u00020#8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0016\u0010E\u001a\u0002048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u00106\u00a8\u0006F"
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;",
        "",
        "index",
        "<init>",
        "(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V",
        "(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)V",
        "taskMode",
        "",
        "afterTask",
        "(I)V",
        "beforeTask",
        "Lkotlinx/coroutines/scheduling/Task;",
        "task",
        "executeTask",
        "(Lkotlinx/coroutines/scheduling/Task;)V",
        "",
        "scanLocalQueue",
        "findAnyTask",
        "(Z)Lkotlinx/coroutines/scheduling/Task;",
        "findTask",
        "mode",
        "idleReset",
        "inStack",
        "()Z",
        "upperBound",
        "nextInt",
        "(I)I",
        "park",
        "()V",
        "pollGlobalQueues",
        "()Lkotlinx/coroutines/scheduling/Task;",
        "run",
        "runWorker",
        "tryAcquireCpuPermit",
        "tryPark",
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;",
        "newState",
        "tryReleaseCpu",
        "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z",
        "blockingOnly",
        "trySteal",
        "tryTerminateWorker",
        "indexInArray",
        "I",
        "getIndexInArray",
        "()I",
        "setIndexInArray",
        "Lkotlinx/coroutines/scheduling/WorkQueue;",
        "localQueue",
        "Lkotlinx/coroutines/scheduling/WorkQueue;",
        "mayHaveLocalTasks",
        "Z",
        "",
        "minDelayUntilStealableTaskNs",
        "J",
        "",
        "nextParkedWorker",
        "Ljava/lang/Object;",
        "getNextParkedWorker",
        "()Ljava/lang/Object;",
        "setNextParkedWorker",
        "(Ljava/lang/Object;)V",
        "rngState",
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler;",
        "getScheduler",
        "()Lkotlinx/coroutines/scheduling/CoroutineScheduler;",
        "scheduler",
        "state",
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;",
        "terminationDeadline",
        "kotlinx-coroutines-core",
        "Ljava/lang/Thread;"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field static final synthetic c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final a:Lkotlinx/coroutines/b/n;

.field public b:I

.field public d:Z

.field final synthetic e:Lkotlinx/coroutines/b/a;

.field private f:J

.field private g:J

.field private h:I

.field volatile indexInArray:I

.field volatile nextParkedWorker:Ljava/lang/Object;

.field volatile synthetic workerCtl:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/b/a$b;

    const-string/jumbo v1, "workerCtl"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/b/a$b;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method private constructor <init>(Lkotlinx/coroutines/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 580
    iput-object p1, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 582
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/b/a$b;->setDaemon(Z)V

    .line 600
    new-instance p1, Lkotlinx/coroutines/b/n;

    invoke-direct {p1}, Lkotlinx/coroutines/b/n;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/n;

    .line 608
    sget p1, Lkotlinx/coroutines/b/a$c;->d:I

    iput p1, p0, Lkotlinx/coroutines/b/a$b;->b:I

    const/4 p1, 0x0

    .line 617
    iput p1, p0, Lkotlinx/coroutines/b/a$b;->workerCtl:I

    .line 631
    sget-object p1, Lkotlinx/coroutines/b/a;->j:Lkotlinx/coroutines/internal/v;

    iput-object p1, p0, Lkotlinx/coroutines/b/a$b;->nextParkedWorker:Ljava/lang/Object;

    .line 638
    sget-object p1, Lkotlin/e/c;->a:Lkotlin/e/c$a;

    .line 10275
    invoke-static {}, Lkotlin/e/c;->d()Lkotlin/e/c;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/e/c;->b()I

    move-result p1

    .line 638
    iput p1, p0, Lkotlinx/coroutines/b/a$b;->h:I

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/b/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 593
    invoke-direct {p0, p1}, Lkotlinx/coroutines/b/a$b;-><init>(Lkotlinx/coroutines/b/a;)V

    .line 594
    invoke-direct {p0, p2}, Lkotlinx/coroutines/b/a$b;->b(I)V

    return-void
.end method

.method private final a()Z
    .locals 10

    .line 645
    iget v0, p0, Lkotlinx/coroutines/b/a$b;->b:I

    sget v1, Lkotlinx/coroutines/b/a$c;->a:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 646
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    .line 986
    :cond_1
    iget-wide v5, v0, Lkotlinx/coroutines/b/a;->controlState:J

    const-wide v3, 0x7ffffc0000000000L

    and-long/2addr v3, v5

    const/16 v1, 0x2a

    shr-long/2addr v3, v1

    long-to-int v1, v3

    const/4 v9, 0x0

    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-wide v3, 0x40000000000L

    sub-long v7, v5, v3

    .line 991
    sget-object v3, Lkotlinx/coroutines/b/a;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    .line 647
    sget v0, Lkotlinx/coroutines/b/a$c;->a:I

    iput v0, p0, Lkotlinx/coroutines/b/a$b;->b:I

    return v2

    :cond_3
    return v9
.end method

.method private final b(Z)Lkotlinx/coroutines/b/j;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 886
    iget-object p1, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    iget p1, p1, Lkotlinx/coroutines/b/a;->f:I

    mul-int/lit8 p1, p1, 0x2

    invoke-direct {p0, p1}, Lkotlinx/coroutines/b/a$b;->c(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 887
    invoke-direct {p0}, Lkotlinx/coroutines/b/a$b;->e()Lkotlinx/coroutines/b/j;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    .line 888
    :cond_1
    iget-object v1, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/n;

    invoke-virtual {v1}, Lkotlinx/coroutines/b/n;->b()Lkotlinx/coroutines/b/j;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    if-nez p1, :cond_4

    .line 889
    invoke-direct {p0}, Lkotlinx/coroutines/b/a$b;->e()Lkotlinx/coroutines/b/j;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    .line 891
    :cond_3
    invoke-direct {p0}, Lkotlinx/coroutines/b/a$b;->e()Lkotlinx/coroutines/b/j;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    .line 893
    :cond_4
    invoke-direct {p0, v0}, Lkotlinx/coroutines/b/a$b;->c(Z)Lkotlinx/coroutines/b/j;

    move-result-object p1

    return-object p1
.end method

.method private final b()V
    .locals 11

    .line 718
    invoke-direct {p0}, Lkotlinx/coroutines/b/a$b;->c()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 719
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    .line 6631
    iget-object v3, p0, Lkotlinx/coroutines/b/a$b;->nextParkedWorker:Ljava/lang/Object;

    .line 5178
    sget-object v4, Lkotlinx/coroutines/b/a;->j:Lkotlinx/coroutines/internal/v;

    if-eq v3, v4, :cond_0

    goto :goto_2

    .line 5988
    :cond_0
    iget-wide v5, v0, Lkotlinx/coroutines/b/a;->parkedWorkersStack:J

    const-wide/32 v3, 0x1fffff

    and-long/2addr v3, v5

    long-to-int v4, v3

    const-wide/32 v7, 0x200000

    add-long/2addr v7, v5

    const-wide/32 v9, -0x200000

    and-long/2addr v7, v9

    .line 7587
    iget v3, p0, Lkotlinx/coroutines/b/a$b;->indexInArray:I

    .line 5187
    invoke-static {}, Lkotlinx/coroutines/ao;->a()Z

    move-result v9

    if-eqz v9, :cond_3

    if-eqz v3, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_0
    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 5188
    :cond_3
    :goto_1
    iget-object v9, v0, Lkotlinx/coroutines/b/a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v9, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 7631
    iput-object v4, p0, Lkotlinx/coroutines/b/a$b;->nextParkedWorker:Ljava/lang/Object;

    .line 5194
    sget-object v4, Lkotlinx/coroutines/b/a;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v9, v3

    or-long/2addr v7, v9

    move-object v3, v4

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_2
    return-void

    .line 722
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/ao;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/n;

    invoke-virtual {v0}, Lkotlinx/coroutines/b/n;->a()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_7
    :goto_4
    const/4 v0, -0x1

    .line 723
    iput v0, p0, Lkotlinx/coroutines/b/a$b;->workerCtl:I

    .line 736
    :cond_8
    :goto_5
    invoke-direct {p0}, Lkotlinx/coroutines/b/a$b;->c()Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, p0, Lkotlinx/coroutines/b/a$b;->workerCtl:I

    if-ne v1, v0, :cond_a

    .line 737
    iget-object v1, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    .line 8299
    iget v1, v1, Lkotlinx/coroutines/b/a;->_isTerminated:I

    if-nez v1, :cond_a

    .line 737
    iget v1, p0, Lkotlinx/coroutines/b/a$b;->b:I

    sget v2, Lkotlinx/coroutines/b/a$c;->e:I

    if-eq v1, v2, :cond_a

    .line 738
    sget v1, Lkotlinx/coroutines/b/a$c;->c:I

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/b/a$b;->a(I)Z

    .line 739
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 8793
    iget-wide v1, p0, Lkotlinx/coroutines/b/a$b;->f:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_9

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v5, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    iget-wide v5, v5, Lkotlinx/coroutines/b/a;->h:J

    add-long/2addr v1, v5

    iput-wide v1, p0, Lkotlinx/coroutines/b/a$b;->f:J

    .line 8795
    :cond_9
    iget-object v1, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    iget-wide v1, v1, Lkotlinx/coroutines/b/a;->h:J

    invoke-static {v1, v2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 8798
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v5, p0, Lkotlinx/coroutines/b/a$b;->f:J

    sub-long/2addr v1, v5

    cmp-long v5, v1, v3

    if-ltz v5, :cond_8

    .line 8799
    iput-wide v3, p0, Lkotlinx/coroutines/b/a$b;->f:J

    .line 8800
    invoke-direct {p0}, Lkotlinx/coroutines/b/a$b;->d()V

    goto :goto_5

    :cond_a
    return-void
.end method

.method private b(I)V
    .locals 2

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    iget-object v1, v1, Lkotlinx/coroutines/b/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-worker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "TERMINATED"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/b/a$b;->setName(Ljava/lang/String;)V

    .line 590
    iput p1, p0, Lkotlinx/coroutines/b/a$b;->indexInArray:I

    return-void
.end method

.method private c(I)I
    .locals 3

    .line 778
    iget v0, p0, Lkotlinx/coroutines/b/a$b;->h:I

    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    .line 782
    iput v0, p0, Lkotlinx/coroutines/b/a$b;->h:I

    add-int/lit8 v1, p1, -0x1

    and-int v2, v1, p1

    if-nez v2, :cond_0

    and-int p1, v0, v1

    return p1

    :cond_0
    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 788
    rem-int/2addr v0, p1

    return v0
.end method

.method private final c(Z)Lkotlinx/coroutines/b/j;
    .locals 18

    move-object/from16 v0, p0

    .line 907
    invoke-static {}, Lkotlinx/coroutines/ao;->a()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/n;

    invoke-virtual {v1}, Lkotlinx/coroutines/b/n;->a()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 908
    :cond_2
    :goto_1
    iget-object v1, v0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    invoke-static {v1}, Lkotlinx/coroutines/b/a;->a(Lkotlinx/coroutines/b/a;)I

    move-result v1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ge v1, v4, :cond_3

    return-object v5

    .line 914
    :cond_3
    invoke-direct {v0, v1}, Lkotlinx/coroutines/b/a$b;->c(I)I

    move-result v4

    const-wide v6, 0x7fffffffffffffffL

    move-wide v9, v6

    const/4 v8, 0x0

    :goto_2
    const-wide/16 v11, 0x0

    if-ge v8, v1, :cond_b

    add-int/2addr v4, v3

    if-le v4, v1, :cond_4

    const/4 v4, 0x1

    .line 919
    :cond_4
    iget-object v13, v0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    iget-object v13, v13, Lkotlinx/coroutines/b/a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v13, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkotlinx/coroutines/b/a$b;

    if-eqz v13, :cond_a

    .line 920
    move-object v14, v0

    check-cast v14, Lkotlinx/coroutines/b/a$b;

    if-eq v13, v14, :cond_a

    .line 921
    invoke-static {}, Lkotlinx/coroutines/ao;->a()Z

    move-result v14

    if-eqz v14, :cond_7

    iget-object v14, v0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/n;

    invoke-virtual {v14}, Lkotlinx/coroutines/b/n;->a()I

    move-result v14

    if-nez v14, :cond_5

    const/4 v14, 0x1

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    :goto_3
    if-eqz v14, :cond_6

    goto :goto_4

    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_7
    :goto_4
    if-eqz p1, :cond_8

    .line 923
    iget-object v14, v0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/n;

    iget-object v13, v13, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/n;

    invoke-virtual {v14, v13}, Lkotlinx/coroutines/b/n;->b(Lkotlinx/coroutines/b/n;)J

    move-result-wide v13

    goto :goto_5

    .line 925
    :cond_8
    iget-object v14, v0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/n;

    iget-object v13, v13, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/n;

    invoke-virtual {v14, v13}, Lkotlinx/coroutines/b/n;->a(Lkotlinx/coroutines/b/n;)J

    move-result-wide v13

    :goto_5
    const-wide/16 v15, -0x1

    cmp-long v17, v13, v15

    if-nez v17, :cond_9

    .line 928
    iget-object v1, v0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/n;

    invoke-virtual {v1}, Lkotlinx/coroutines/b/n;->b()Lkotlinx/coroutines/b/j;

    move-result-object v1

    return-object v1

    :cond_9
    cmp-long v15, v13, v11

    if-lez v15, :cond_a

    .line 930
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_b
    cmp-long v1, v9, v6

    if-eqz v1, :cond_c

    goto :goto_6

    :cond_c
    move-wide v9, v11

    .line 934
    :goto_6
    iput-wide v9, v0, Lkotlinx/coroutines/b/a$b;->g:J

    return-object v5
.end method

.method private final c()Z
    .locals 2

    .line 744
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->nextParkedWorker:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/b/a;->j:Lkotlinx/coroutines/internal/v;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final d()V
    .locals 6

    .line 808
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    iget-object v0, v0, Lkotlinx/coroutines/b/a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 998
    monitor-enter v0

    .line 810
    :try_start_0
    iget-object v1, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    .line 9299
    iget v1, v1, Lkotlinx/coroutines/b/a;->_isTerminated:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 810
    monitor-exit v0

    return-void

    .line 812
    :cond_0
    :try_start_1
    iget-object v1, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    invoke-static {v1}, Lkotlinx/coroutines/b/a;->a(Lkotlinx/coroutines/b/a;)I

    move-result v1

    iget-object v2, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    iget v2, v2, Lkotlinx/coroutines/b/a;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v1, v2, :cond_1

    monitor-exit v0

    return-void

    .line 817
    :cond_1
    :try_start_2
    sget-object v1, Lkotlinx/coroutines/b/a$b;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    .line 824
    :cond_2
    :try_start_3
    iget v1, p0, Lkotlinx/coroutines/b/a$b;->indexInArray:I

    const/4 v2, 0x0

    .line 825
    invoke-direct {p0, v2}, Lkotlinx/coroutines/b/a$b;->b(I)V

    .line 833
    iget-object v3, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    invoke-virtual {v3, p0, v1, v2}, Lkotlinx/coroutines/b/a;->a(Lkotlinx/coroutines/b/a$b;II)V

    .line 838
    iget-object v2, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    .line 999
    sget-object v3, Lkotlinx/coroutines/b/a;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/32 v4, 0x1fffff

    and-long/2addr v2, v4

    long-to-int v3, v2

    if-eq v3, v1, :cond_3

    .line 840
    iget-object v2, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    iget-object v2, v2, Lkotlinx/coroutines/b/a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    check-cast v2, Lkotlinx/coroutines/b/a$b;

    .line 841
    iget-object v4, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    iget-object v4, v4, Lkotlinx/coroutines/b/a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v4, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 842
    invoke-direct {v2, v1}, Lkotlinx/coroutines/b/a$b;->b(I)V

    .line 850
    iget-object v4, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    invoke-virtual {v4, v2, v3, v1}, Lkotlinx/coroutines/b/a;->a(Lkotlinx/coroutines/b/a$b;II)V

    .line 855
    :cond_3
    iget-object v1, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    iget-object v1, v1, Lkotlinx/coroutines/b/a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 856
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    .line 857
    sget v0, Lkotlinx/coroutines/b/a$c;->e:I

    iput v0, p0, Lkotlinx/coroutines/b/a$b;->b:I

    return-void

    :catchall_0
    move-exception v1

    .line 856
    monitor-exit v0

    throw v1
.end method

.method private final e()Lkotlinx/coroutines/b/j;
    .locals 1

    const/4 v0, 0x2

    .line 897
    invoke-direct {p0, v0}, Lkotlinx/coroutines/b/a$b;->c(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 898
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    iget-object v0, v0, Lkotlinx/coroutines/b/a;->a:Lkotlinx/coroutines/b/e;

    invoke-virtual {v0}, Lkotlinx/coroutines/b/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/b/j;

    if-eqz v0, :cond_0

    return-object v0

    .line 899
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    iget-object v0, v0, Lkotlinx/coroutines/b/a;->b:Lkotlinx/coroutines/b/e;

    invoke-virtual {v0}, Lkotlinx/coroutines/b/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/b/j;

    return-object v0

    .line 901
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    iget-object v0, v0, Lkotlinx/coroutines/b/a;->b:Lkotlinx/coroutines/b/e;

    invoke-virtual {v0}, Lkotlinx/coroutines/b/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/b/j;

    if-eqz v0, :cond_2

    return-object v0

    .line 902
    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    iget-object v0, v0, Lkotlinx/coroutines/b/a;->a:Lkotlinx/coroutines/b/e;

    invoke-virtual {v0}, Lkotlinx/coroutines/b/e;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/b/j;

    return-object v0
.end method


# virtual methods
.method public final a(Z)Lkotlinx/coroutines/b/j;
    .locals 1

    .line 870
    invoke-direct {p0}, Lkotlinx/coroutines/b/a$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/b/a$b;->b(Z)Lkotlinx/coroutines/b/j;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 873
    iget-object p1, p0, Lkotlinx/coroutines/b/a$b;->a:Lkotlinx/coroutines/b/n;

    invoke-virtual {p1}, Lkotlinx/coroutines/b/n;->b()Lkotlinx/coroutines/b/j;

    move-result-object p1

    if-nez p1, :cond_2

    .line 875
    :cond_1
    iget-object p1, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    iget-object p1, p1, Lkotlinx/coroutines/b/a;->b:Lkotlinx/coroutines/b/e;

    invoke-virtual {p1}, Lkotlinx/coroutines/b/e;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/b/j;

    :cond_2
    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 877
    invoke-direct {p0, p1}, Lkotlinx/coroutines/b/a$b;->c(Z)Lkotlinx/coroutines/b/j;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public final a(I)Z
    .locals 6

    .line 658
    iget v0, p0, Lkotlinx/coroutines/b/a$b;->b:I

    .line 659
    sget v1, Lkotlinx/coroutines/b/a$c;->a:I

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 660
    iget-object v2, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    .line 993
    sget-object v3, Lkotlinx/coroutines/b/a;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide v4, 0x40000000000L

    invoke-virtual {v3, v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    :cond_1
    if-eq v0, p1, :cond_2

    .line 661
    iput p1, p0, Lkotlinx/coroutines/b/a$b;->b:I

    :cond_2
    return v1
.end method

.method public final run()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 1672
    :goto_1
    iget-object v3, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    .line 2299
    iget v3, v3, Lkotlinx/coroutines/b/a;->_isTerminated:I

    if-nez v3, :cond_c

    .line 1672
    iget v3, p0, Lkotlinx/coroutines/b/a$b;->b:I

    sget v4, Lkotlinx/coroutines/b/a$c;->e:I

    if-eq v3, v4, :cond_c

    .line 1673
    iget-boolean v3, p0, Lkotlinx/coroutines/b/a$b;->d:Z

    invoke-virtual {p0, v3}, Lkotlinx/coroutines/b/a$b;->a(Z)Lkotlinx/coroutines/b/j;

    move-result-object v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_9

    .line 1677
    iput-wide v4, p0, Lkotlinx/coroutines/b/a$b;->g:J

    .line 2995
    iget-object v2, v3, Lkotlinx/coroutines/b/j;->h:Lkotlinx/coroutines/b/k;

    invoke-interface {v2}, Lkotlinx/coroutines/b/k;->d()I

    move-result v2

    .line 3862
    iput-wide v4, p0, Lkotlinx/coroutines/b/a$b;->f:J

    .line 3863
    iget v4, p0, Lkotlinx/coroutines/b/a$b;->b:I

    sget v5, Lkotlinx/coroutines/b/a$c;->c:I

    if-ne v4, v5, :cond_4

    .line 3864
    invoke-static {}, Lkotlinx/coroutines/ao;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    if-ne v2, v0, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 3865
    :cond_3
    :goto_3
    sget v4, Lkotlinx/coroutines/b/a$c;->b:I

    iput v4, p0, Lkotlinx/coroutines/b/a$b;->b:I

    :cond_4
    if-eqz v2, :cond_5

    .line 4757
    sget v4, Lkotlinx/coroutines/b/a$c;->b:I

    invoke-virtual {p0, v4}, Lkotlinx/coroutines/b/a$b;->a(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4758
    iget-object v4, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    invoke-virtual {v4}, Lkotlinx/coroutines/b/a;->a()V

    .line 2750
    :cond_5
    invoke-static {v3}, Lkotlinx/coroutines/b/a;->a(Lkotlinx/coroutines/b/j;)V

    if-eqz v2, :cond_0

    .line 4764
    iget-object v2, p0, Lkotlinx/coroutines/b/a$b;->e:Lkotlinx/coroutines/b/a;

    .line 4996
    sget-object v3, Lkotlinx/coroutines/b/a;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 v4, -0x200000

    invoke-virtual {v3, v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 4765
    iget v2, p0, Lkotlinx/coroutines/b/a$b;->b:I

    .line 4767
    sget v3, Lkotlinx/coroutines/b/a$c;->e:I

    if-eq v2, v3, :cond_0

    .line 4768
    invoke-static {}, Lkotlinx/coroutines/ao;->a()Z

    move-result v3

    if-eqz v3, :cond_8

    sget v3, Lkotlinx/coroutines/b/a$c;->b:I

    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 4769
    :cond_8
    :goto_5
    sget v2, Lkotlinx/coroutines/b/a$c;->d:I

    iput v2, p0, Lkotlinx/coroutines/b/a$b;->b:I

    goto/16 :goto_0

    .line 1681
    :cond_9
    iput-boolean v1, p0, Lkotlinx/coroutines/b/a$b;->d:Z

    .line 1694
    iget-wide v6, p0, Lkotlinx/coroutines/b/a$b;->g:J

    cmp-long v3, v6, v4

    if-eqz v3, :cond_b

    if-nez v2, :cond_a

    const/4 v2, 0x1

    goto/16 :goto_1

    .line 1699
    :cond_a
    sget v2, Lkotlinx/coroutines/b/a$c;->c:I

    invoke-virtual {p0, v2}, Lkotlinx/coroutines/b/a$b;->a(I)Z

    .line 1700
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1701
    iget-wide v2, p0, Lkotlinx/coroutines/b/a$b;->g:J

    invoke-static {v2, v3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 1702
    iput-wide v4, p0, Lkotlinx/coroutines/b/a$b;->g:J

    goto/16 :goto_0

    .line 1711
    :cond_b
    invoke-direct {p0}, Lkotlinx/coroutines/b/a$b;->b()V

    goto/16 :goto_1

    .line 1713
    :cond_c
    sget v0, Lkotlinx/coroutines/b/a$c;->e:I

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/b/a$b;->a(I)Z

    return-void
.end method
