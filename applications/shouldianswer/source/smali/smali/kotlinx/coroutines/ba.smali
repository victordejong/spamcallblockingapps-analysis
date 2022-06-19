.class public final Lkotlinx/coroutines/ba;
.super Ljava/lang/Object;
.source "EventLoop.kt"


# static fields
.field private static final a:Lkotlinx/coroutines/internal/u;

.field private static final b:Lkotlinx/coroutines/internal/u;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lkotlinx/coroutines/internal/u;

    const-string v1, "REMOVED_TASK"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/ba;->a:Lkotlinx/coroutines/internal/u;

    .line 31
    new-instance v0, Lkotlinx/coroutines/internal/u;

    const-string v1, "CLOSED_EMPTY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/ba;->b:Lkotlinx/coroutines/internal/u;

    return-void
.end method

.method public static final a(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x8637bd05af6L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p0

    :goto_0
    return-wide v0
.end method

.method public static final a()Lkotlinx/coroutines/ay;
    .locals 3

    .line 316
    new-instance v0, Lkotlinx/coroutines/d;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "Thread.currentThread()"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lkotlinx/coroutines/d;-><init>(Ljava/lang/Thread;)V

    check-cast v0, Lkotlinx/coroutines/ay;

    return-object v0
.end method

.method public static final synthetic b()Lkotlinx/coroutines/internal/u;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/ba;->a:Lkotlinx/coroutines/internal/u;

    return-object v0
.end method

.method public static final synthetic c()Lkotlinx/coroutines/internal/u;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/ba;->b:Lkotlinx/coroutines/internal/u;

    return-object v0
.end method
