.class final Lkotlinx/coroutines/f;
.super Lkotlinx/coroutines/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/a<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tJ\u0012\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J\u000b\u0010\u0011\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0012R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u000b8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000c\u00a8\u0006\u0013"
    }
    d2 = {
        "Lkotlinx/coroutines/BlockingCoroutine;",
        "T",
        "Lkotlinx/coroutines/AbstractCoroutine;",
        "parentContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "blockedThread",
        "Ljava/lang/Thread;",
        "eventLoop",
        "Lkotlinx/coroutines/EventLoop;",
        "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Thread;Lkotlinx/coroutines/EventLoop;)V",
        "isScopedCoroutine",
        "",
        "()Z",
        "afterCompletion",
        "",
        "state",
        "",
        "joinBlocking",
        "()Ljava/lang/Object;",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final e:Ljava/lang/Thread;

.field private final f:Lkotlinx/coroutines/bf;


# direct methods
.method public constructor <init>(Lkotlin/c/f;Ljava/lang/Thread;Lkotlinx/coroutines/bf;)V
    .locals 1

    const/4 v0, 0x1

    .line 66
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/a;-><init>(Lkotlin/c/f;Z)V

    iput-object p2, p0, Lkotlinx/coroutines/f;->e:Ljava/lang/Thread;

    iput-object p3, p0, Lkotlinx/coroutines/f;->f:Lkotlinx/coroutines/bf;

    return-void
.end method


# virtual methods
.method protected final aA_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 79
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/f;->f:Lkotlinx/coroutines/bf;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlinx/coroutines/bf;->a(Lkotlinx/coroutines/bf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_6

    .line 84
    iget-object v0, p0, Lkotlinx/coroutines/f;->f:Lkotlinx/coroutines/bf;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkotlinx/coroutines/bf;->c()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    .line 86
    :goto_1
    invoke-virtual {p0}, Lkotlinx/coroutines/f;->k()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2027
    sget-object v2, Lkotlinx/coroutines/cp;->a:Lkotlinx/coroutines/co;

    if-nez v2, :cond_0

    .line 87
    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 90
    :cond_2
    :try_start_2
    iget-object v0, p0, Lkotlinx/coroutines/f;->f:Lkotlinx/coroutines/bf;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlinx/coroutines/bf;->b(Lkotlinx/coroutines/bf;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 96
    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/f;->p()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/cb;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 97
    instance-of v1, v0, Lkotlinx/coroutines/z;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    check-cast v1, Lkotlinx/coroutines/z;

    if-nez v1, :cond_5

    return-object v0

    :cond_5
    iget-object v0, v1, Lkotlinx/coroutines/z;->b:Ljava/lang/Throwable;

    throw v0

    .line 83
    :cond_6
    :try_start_3
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/f;->b(Ljava/lang/Throwable;)Z

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 90
    :try_start_4
    iget-object v1, p0, Lkotlinx/coroutines/f;->f:Lkotlinx/coroutines/bf;

    if-eqz v1, :cond_7

    invoke-static {v1}, Lkotlinx/coroutines/bf;->b(Lkotlinx/coroutines/bf;)V

    :cond_7
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 93
    throw v0
.end method

.method protected final d(Ljava/lang/Object;)V
    .locals 1

    .line 71
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v0, p0, Lkotlinx/coroutines/f;->e:Ljava/lang/Thread;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lkotlinx/coroutines/f;->e:Ljava/lang/Thread;

    .line 1027
    sget-object v0, Lkotlinx/coroutines/cp;->a:Lkotlinx/coroutines/co;

    if-nez v0, :cond_0

    .line 72
    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    return-void
.end method
