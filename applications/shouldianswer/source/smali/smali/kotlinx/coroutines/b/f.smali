.class final Lkotlinx/coroutines/b/f;
.super Lkotlinx/coroutines/bb;
.source "Dispatcher.kt"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Lkotlinx/coroutines/b/j;


# static fields
.field private static final c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lkotlinx/coroutines/b/d;

.field private final e:I

.field private final f:Lkotlinx/coroutines/b/l;

.field private volatile inFlightTasks:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/b/f;

    const-string v1, "inFlightTasks"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/b/f;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/b/d;ILkotlinx/coroutines/b/l;)V
    .locals 1

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskMode"

    invoke-static {p3, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-direct {p0}, Lkotlinx/coroutines/bb;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/b/f;->d:Lkotlinx/coroutines/b/d;

    iput p2, p0, Lkotlinx/coroutines/b/f;->e:I

    iput-object p3, p0, Lkotlinx/coroutines/b/f;->f:Lkotlinx/coroutines/b/l;

    .line 138
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/b/f;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 p1, 0x0

    .line 139
    iput p1, p0, Lkotlinx/coroutines/b/f;->inFlightTasks:I

    return-void
.end method

.method private final a(Ljava/lang/Runnable;Z)V
    .locals 2

    .line 154
    :goto_0
    sget-object v0, Lkotlinx/coroutines/b/f;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    move-result v0

    .line 157
    iget v1, p0, Lkotlinx/coroutines/b/f;->e:I

    if-gt v0, v1, :cond_0

    .line 158
    iget-object v0, p0, Lkotlinx/coroutines/b/f;->d:Lkotlinx/coroutines/b/d;

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/b/j;

    invoke-virtual {v0, p1, v1, p2}, Lkotlinx/coroutines/b/d;->a(Ljava/lang/Runnable;Lkotlinx/coroutines/b/j;Z)V

    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/b/f;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object p1, Lkotlinx/coroutines/b/f;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result p1

    iget v0, p0, Lkotlinx/coroutines/b/f;->e:I

    if-lt p1, v0, :cond_1

    return-void

    .line 184
    :cond_1
    iget-object p1, p0, Lkotlinx/coroutines/b/f;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/Executor;
    .locals 1

    .line 142
    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public a(Lkotlin/c/f;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "block"

    invoke-static {p2, p1}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 148
    invoke-direct {p0, p2, p1}, Lkotlinx/coroutines/b/f;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public b()V
    .locals 4

    .line 206
    iget-object v0, p0, Lkotlinx/coroutines/b/f;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 209
    iget-object v2, p0, Lkotlinx/coroutines/b/f;->d:Lkotlinx/coroutines/b/d;

    move-object v3, p0

    check-cast v3, Lkotlinx/coroutines/b/j;

    invoke-virtual {v2, v0, v3, v1}, Lkotlinx/coroutines/b/d;->a(Ljava/lang/Runnable;Lkotlinx/coroutines/b/j;Z)V

    return-void

    .line 212
    :cond_0
    sget-object v0, Lkotlinx/coroutines/b/f;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 225
    iget-object v0, p0, Lkotlinx/coroutines/b/f;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 226
    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/b/f;->a(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method public c()Lkotlinx/coroutines/b/l;
    .locals 1

    .line 135
    iget-object v0, p0, Lkotlinx/coroutines/b/f;->f:Lkotlinx/coroutines/b/l;

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Close cannot be invoked on LimitingBlockingDispatcher"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/b/f;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lkotlinx/coroutines/bb;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[dispatcher = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/b/f;->d:Lkotlinx/coroutines/b/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
