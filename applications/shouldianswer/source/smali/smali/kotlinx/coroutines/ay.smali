.class public abstract Lkotlinx/coroutines/ay;
.super Lkotlinx/coroutines/y;
.source "EventLoop.common.kt"


# instance fields
.field private b:J

.field private c:Z

.field private d:Lkotlinx/coroutines/internal/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/internal/b<",
            "Lkotlinx/coroutines/ar<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lkotlinx/coroutines/y;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlinx/coroutines/ay;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 99
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/ay;->a(Z)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: incrementUseCount"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic b(Lkotlinx/coroutines/ay;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 104
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/ay;->b(Z)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: decrementUseCount"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final c(Z)J
    .locals 2

    if-eqz p1, :cond_0

    const-wide v0, 0x100000000L

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/ar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/ar<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lkotlinx/coroutines/ay;->d:Lkotlinx/coroutines/internal/b;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    new-instance v0, Lkotlinx/coroutines/internal/b;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/b;-><init>()V

    iput-object v0, p0, Lkotlinx/coroutines/ay;->d:Lkotlinx/coroutines/internal/b;

    .line 83
    :goto_0
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Z)V
    .locals 4

    .line 100
    iget-wide v0, p0, Lkotlinx/coroutines/ay;->b:J

    invoke-direct {p0, p1}, Lkotlinx/coroutines/ay;->c(Z)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lkotlinx/coroutines/ay;->b:J

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 101
    iput-boolean p1, p0, Lkotlinx/coroutines/ay;->c:Z

    :cond_0
    return-void
.end method

.method public b()J
    .locals 2

    .line 50
    invoke-virtual {p0}, Lkotlinx/coroutines/ay;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/ay;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(Z)V
    .locals 4

    .line 105
    iget-wide v0, p0, Lkotlinx/coroutines/ay;->b:J

    invoke-direct {p0, p1}, Lkotlinx/coroutines/ay;->c(Z)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lkotlinx/coroutines/ay;->b:J

    .line 106
    iget-wide v0, p0, Lkotlinx/coroutines/ay;->b:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    return-void

    :cond_0
    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 108
    iget-boolean p1, p0, Lkotlinx/coroutines/ay;->c:Z

    if-eqz p1, :cond_2

    .line 110
    invoke-virtual {p0}, Lkotlinx/coroutines/ay;->i()V

    :cond_2
    return-void

    .line 107
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Extra decrementUseCount"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method protected c()Z
    .locals 1

    .line 54
    invoke-virtual {p0}, Lkotlinx/coroutines/ay;->h()Z

    move-result v0

    return v0
.end method

.method protected d()J
    .locals 3

    .line 58
    iget-object v0, p0, Lkotlinx/coroutines/ay;->d:Lkotlinx/coroutines/internal/b;

    const-wide v1, 0x7fffffffffffffffL

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :cond_1
    :goto_0
    return-wide v1
.end method

.method public final e()Z
    .locals 2

    .line 63
    iget-object v0, p0, Lkotlinx/coroutines/ay;->d:Lkotlinx/coroutines/internal/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/ar;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Lkotlinx/coroutines/ar;->run()V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 5

    .line 90
    iget-wide v0, p0, Lkotlinx/coroutines/ay;->b:J

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lkotlinx/coroutines/ay;->c(Z)J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final h()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lkotlinx/coroutines/ay;->d:Lkotlinx/coroutines/internal/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/b;->a()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method protected i()V
    .locals 0

    return-void
.end method
