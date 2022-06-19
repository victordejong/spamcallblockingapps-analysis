.class public abstract Lkotlinx/coroutines/bf;
.super Lkotlinx/coroutines/af;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\n\u0008 \u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0004J\u0010\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0004H\u0002J\u0012\u0010\u0016\u001a\u00020\u00132\n\u0010\u0017\u001a\u0006\u0012\u0002\u0008\u00030\u0010J\u0010\u0010\u0018\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0004J\u0008\u0010\u0019\u001a\u00020\nH\u0016J\u0006\u0010\u001a\u001a\u00020\u0004J\u0008\u0010\u001b\u001a\u00020\u0004H\u0016J\u0008\u0010\u001c\u001a\u00020\u0013H\u0014R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00048TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0005R\u0011\u0010\u0007\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0005R\u0011\u0010\u0008\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u0005R\u0014\u0010\t\u001a\u00020\n8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0010\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lkotlinx/coroutines/EventLoop;",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "()V",
        "isActive",
        "",
        "()Z",
        "isEmpty",
        "isUnconfinedLoopActive",
        "isUnconfinedQueueEmpty",
        "nextTime",
        "",
        "getNextTime",
        "()J",
        "shared",
        "unconfinedQueue",
        "Lkotlinx/coroutines/internal/ArrayQueue;",
        "Lkotlinx/coroutines/DispatchedTask;",
        "useCount",
        "decrementUseCount",
        "",
        "unconfined",
        "delta",
        "dispatchUnconfined",
        "task",
        "incrementUseCount",
        "processNextEvent",
        "processUnconfinedEvent",
        "shouldBeProcessedFromContext",
        "shutdown",
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
.field private b:J

.field private d:Z

.field private e:Lkotlinx/coroutines/internal/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/internal/a<",
            "Lkotlinx/coroutines/ax<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lkotlinx/coroutines/af;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlinx/coroutines/bf;)V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/bf;->a(Z)V

    return-void
.end method

.method public static synthetic b(Lkotlinx/coroutines/bf;)V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/bf;->b(Z)V

    return-void
.end method

.method private static c(Z)J
    .locals 2

    if-eqz p0, :cond_0

    const-wide v0, 0x100000000L

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x1

    return-wide v0
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/ax;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/ax<",
            "*>;)V"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lkotlinx/coroutines/bf;->e:Lkotlinx/coroutines/internal/a;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lkotlinx/coroutines/internal/a;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/a;-><init>()V

    iput-object v0, p0, Lkotlinx/coroutines/bf;->e:Lkotlinx/coroutines/internal/a;

    .line 87
    :cond_0
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Z)V
    .locals 4

    .line 104
    iget-wide v0, p0, Lkotlinx/coroutines/bf;->b:J

    invoke-static {p1}, Lkotlinx/coroutines/bf;->c(Z)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lkotlinx/coroutines/bf;->b:J

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 105
    iput-boolean p1, p0, Lkotlinx/coroutines/bf;->d:Z

    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 4

    .line 109
    iget-wide v0, p0, Lkotlinx/coroutines/bf;->b:J

    invoke-static {p1}, Lkotlinx/coroutines/bf;->c(Z)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lkotlinx/coroutines/bf;->b:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/ao;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-wide v0, p0, Lkotlinx/coroutines/bf;->b:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 112
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lkotlinx/coroutines/bf;->d:Z

    if-eqz p1, :cond_4

    .line 114
    invoke-virtual {p0}, Lkotlinx/coroutines/bf;->i()V

    :cond_4
    return-void
.end method

.method public c()J
    .locals 2

    .line 54
    invoke-virtual {p0}, Lkotlinx/coroutines/bf;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected d()Z
    .locals 1

    .line 58
    invoke-virtual {p0}, Lkotlinx/coroutines/bf;->h()Z

    move-result v0

    return v0
.end method

.method protected e()J
    .locals 3

    .line 62
    iget-object v0, p0, Lkotlinx/coroutines/bf;->e:Lkotlinx/coroutines/internal/a;

    const-wide v1, 0x7fffffffffffffffL

    if-nez v0, :cond_0

    return-wide v1

    .line 63
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    return-wide v1

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final f()Z
    .locals 2

    .line 67
    iget-object v0, p0, Lkotlinx/coroutines/bf;->e:Lkotlinx/coroutines/internal/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 68
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/ax;

    if-nez v0, :cond_1

    return v1

    .line 69
    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/ax;->run()V

    const/4 v0, 0x1

    return v0
.end method

.method public final g()Z
    .locals 6

    .line 94
    iget-wide v0, p0, Lkotlinx/coroutines/bf;->b:J

    const/4 v2, 0x1

    invoke-static {v2}, Lkotlinx/coroutines/bf;->c(Z)J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lkotlinx/coroutines/bf;->e:Lkotlinx/coroutines/internal/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/a;->a()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected i()V
    .locals 0

    return-void
.end method
