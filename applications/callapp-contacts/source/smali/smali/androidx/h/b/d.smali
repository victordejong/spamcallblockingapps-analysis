.class abstract Landroidx/h/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/h/b/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static a:Landroid/os/Handler;


# instance fields
.field private volatile b:I

.field final c:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget v0, Landroidx/h/b/d$a;->a:I

    iput v0, p0, Landroidx/h/b/d;->b:I

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroidx/h/b/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroidx/h/b/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 89
    new-instance v0, Landroidx/h/b/d$1;

    invoke-direct {v0, p0}, Landroidx/h/b/d$1;-><init>(Landroidx/h/b/d;)V

    .line 108
    new-instance v1, Landroidx/h/b/d$2;

    invoke-direct {v1, p0, v0}, Landroidx/h/b/d$2;-><init>(Landroidx/h/b/d;Ljava/util/concurrent/Callable;)V

    iput-object v1, p0, Landroidx/h/b/d;->c:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method private static b()Landroid/os/Handler;
    .locals 3

    .line 77
    const-class v0, Landroidx/h/b/d;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-object v1, Landroidx/h/b/d;->a:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Landroidx/h/b/d;->a:Landroid/os/Handler;

    .line 81
    :cond_0
    sget-object v1, Landroidx/h/b/d;->a:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 82
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method public final a(Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 252
    iget v0, p0, Landroidx/h/b/d;->b:I

    sget v1, Landroidx/h/b/d$a;->a:I

    if-eq v0, v1, :cond_2

    .line 253
    sget-object p1, Landroidx/h/b/d$4;->a:[I

    iget v0, p0, Landroidx/h/b/d;->b:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget p1, p1, v0

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 262
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "We should never reach this state"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 258
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 255
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot execute task: the task is already running."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 266
    :cond_2
    sget v0, Landroidx/h/b/d$a;->b:I

    iput v0, p0, Landroidx/h/b/d;->b:I

    .line 268
    iget-object v0, p0, Landroidx/h/b/d;->c:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method final c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Landroidx/h/b/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p0, p1}, Landroidx/h/b/d;->d(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method final d(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 140
    invoke-static {}, Landroidx/h/b/d;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/h/b/d$3;

    invoke-direct {v1, p0, p1}, Landroidx/h/b/d$3;-><init>(Landroidx/h/b/d;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 1195
    iget-object v0, p0, Landroidx/h/b/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0, p1}, Landroidx/h/b/d;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 275
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/h/b/d;->a(Ljava/lang/Object;)V

    .line 277
    :goto_0
    sget p1, Landroidx/h/b/d$a;->c:I

    iput p1, p0, Landroidx/h/b/d;->b:I

    return-void
.end method
