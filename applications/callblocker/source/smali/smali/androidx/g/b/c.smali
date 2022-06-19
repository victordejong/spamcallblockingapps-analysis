.class abstract Landroidx/g/b/c;
.super Ljava/lang/Object;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/g/b/c$a;,
        Landroidx/g/b/c$d;,
        Landroidx/g/b/c$b;,
        Landroidx/g/b/c$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ThreadFactory;

.field private static final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/concurrent/Executor;

.field private static f:Landroidx/g/b/c$b;

.field private static volatile g:Ljava/util/concurrent/Executor;


# instance fields
.field final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final h:Landroidx/g/b/c$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/g/b/c$d",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile j:Landroidx/g/b/c$c;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 60
    new-instance v0, Landroidx/g/b/c$1;

    invoke-direct {v0}, Landroidx/g/b/c$1;-><init>()V

    sput-object v0, Landroidx/g/b/c;->a:Ljava/util/concurrent/ThreadFactory;

    .line 69
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Landroidx/g/b/c;->b:Ljava/util/concurrent/BlockingQueue;

    .line 75
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x5

    const/16 v3, 0x80

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Landroidx/g/b/c;->b:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Landroidx/g/b/c;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Landroidx/g/b/c;->c:Ljava/util/concurrent/Executor;

    .line 84
    sget-object v0, Landroidx/g/b/c;->c:Ljava/util/concurrent/Executor;

    sput-object v0, Landroidx/g/b/c;->g:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    sget-object v0, Landroidx/g/b/c$c;->a:Landroidx/g/b/c$c;

    iput-object v0, p0, Landroidx/g/b/c;->j:Landroidx/g/b/c$c;

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroidx/g/b/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroidx/g/b/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 133
    new-instance v0, Landroidx/g/b/c$2;

    invoke-direct {v0, p0}, Landroidx/g/b/c$2;-><init>(Landroidx/g/b/c;)V

    iput-object v0, p0, Landroidx/g/b/c;->h:Landroidx/g/b/c$d;

    .line 153
    new-instance v0, Landroidx/g/b/c$3;

    iget-object v1, p0, Landroidx/g/b/c;->h:Landroidx/g/b/c$d;

    invoke-direct {v0, p0, v1}, Landroidx/g/b/c$3;-><init>(Landroidx/g/b/c;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Landroidx/g/b/c;->i:Ljava/util/concurrent/FutureTask;

    .line 173
    return-void
.end method

.method private static d()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 115
    const-class v1, Landroidx/g/b/c;

    monitor-enter v1

    .line 116
    :try_start_0
    sget-object v0, Landroidx/g/b/c;->f:Landroidx/g/b/c$b;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Landroidx/g/b/c$b;

    invoke-direct {v0}, Landroidx/g/b/c$b;-><init>()V

    sput-object v0, Landroidx/g/b/c;->f:Landroidx/g/b/c$b;

    .line 119
    :cond_0
    sget-object v0, Landroidx/g/b/c;->f:Landroidx/g/b/c$b;

    monitor-exit v1

    return-object v0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroidx/g/b/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Landroidx/g/b/c",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Landroidx/g/b/c;->j:Landroidx/g/b/c$c;

    sget-object v1, Landroidx/g/b/c$c;->a:Landroidx/g/b/c$c;

    if-eq v0, v1, :cond_0

    .line 434
    sget-object v0, Landroidx/g/b/c$4;->a:[I

    iget-object v1, p0, Landroidx/g/b/c;->j:Landroidx/g/b/c$c;

    invoke-virtual {v1}, Landroidx/g/b/c$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 443
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "We should never reach this state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_0
    sget-object v0, Landroidx/g/b/c$c;->b:Landroidx/g/b/c$c;

    iput-object v0, p0, Landroidx/g/b/c;->j:Landroidx/g/b/c$c;

    .line 449
    invoke-virtual {p0}, Landroidx/g/b/c;->a()V

    .line 451
    iget-object v0, p0, Landroidx/g/b/c;->h:Landroidx/g/b/c$d;

    iput-object p2, v0, Landroidx/g/b/c$d;->b:[Ljava/lang/Object;

    .line 452
    iget-object v0, p0, Landroidx/g/b/c;->i:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 454
    return-object p0

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 239
    return-void
.end method

.method public final a(Z)Z
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Landroidx/g/b/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 333
    iget-object v0, p0, Landroidx/g/b/c;->i:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 286
    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 270
    invoke-virtual {p0}, Landroidx/g/b/c;->b()V

    .line 271
    return-void
.end method

.method protected varargs b([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 252
    return-void
.end method

.method c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Landroidx/g/b/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 177
    if-nez v0, :cond_0

    .line 178
    invoke-virtual {p0, p1}, Landroidx/g/b/c;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Landroidx/g/b/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 183
    invoke-static {}, Landroidx/g/b/c;->d()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/g/b/c$a;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Landroidx/g/b/c$a;-><init>(Landroidx/g/b/c;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 186
    return-object p1
.end method

.method e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 487
    invoke-virtual {p0}, Landroidx/g/b/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {p0, p1}, Landroidx/g/b/c;->b(Ljava/lang/Object;)V

    .line 492
    :goto_0
    sget-object v0, Landroidx/g/b/c$c;->c:Landroidx/g/b/c$c;

    iput-object v0, p0, Landroidx/g/b/c;->j:Landroidx/g/b/c$c;

    .line 493
    return-void

    .line 490
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/g/b/c;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
