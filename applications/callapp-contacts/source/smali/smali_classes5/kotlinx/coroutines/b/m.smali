.class public final Lkotlinx/coroutines/b/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\"\u0010\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0002\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0006\u001a\u00020\u00078\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0008\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u000b\u001a\u00020\u00078\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000\"\u0012\u0010\u000c\u001a\u00020\r8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0002\n\u0000\"\u0019\u0010\u000e\u001a\u00020\u000f*\u00020\u00108\u00c0\u0002X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "BLOCKING_DEFAULT_PARALLELISM",
        "",
        "CORE_POOL_SIZE",
        "DEFAULT_DISPATCHER_NAME",
        "",
        "DEFAULT_SCHEDULER_NAME",
        "IDLE_WORKER_KEEP_ALIVE_NS",
        "",
        "MAX_POOL_SIZE",
        "TASK_NON_BLOCKING",
        "TASK_PROBABLY_BLOCKING",
        "WORK_STEALING_TIME_RESOLUTION_NS",
        "schedulerTimeSource",
        "Lkotlinx/coroutines/scheduling/SchedulerTimeSource;",
        "isBlocking",
        "",
        "Lkotlinx/coroutines/scheduling/Task;",
        "(Lkotlinx/coroutines/scheduling/Task;)Z",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:J

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:J

.field public static f:Lkotlinx/coroutines/b/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "kotlinx.coroutines.scheduler.resolution.ns"

    const-wide/32 v1, 0x186a0

    .line 21
    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/internal/w;->a(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lkotlinx/coroutines/b/m;->a:J

    const-string v0, "kotlinx.coroutines.scheduler.blocking.parallelism"

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/16 v3, 0xc

    .line 26
    invoke-static {v0, v1, v2, v2, v3}, Lkotlinx/coroutines/internal/w;->a(Ljava/lang/String;IIII)I

    move-result v0

    sput v0, Lkotlinx/coroutines/b/m;->b:I

    .line 1001
    invoke-static {}, Lkotlinx/coroutines/internal/x;->a()I

    move-result v0

    const/4 v1, 0x2

    .line 35
    invoke-static {v0, v1}, Lkotlin/f/d;->c(II)I

    move-result v0

    const-string v1, "kotlinx.coroutines.scheduler.core.pool.size"

    const/4 v3, 0x1

    const/16 v4, 0x8

    .line 33
    invoke-static {v1, v0, v3, v2, v4}, Lkotlinx/coroutines/internal/w;->a(Ljava/lang/String;IIII)I

    move-result v0

    sput v0, Lkotlinx/coroutines/b/m;->c:I

    .line 2001
    invoke-static {}, Lkotlinx/coroutines/internal/x;->a()I

    move-result v1

    mul-int/lit16 v1, v1, 0x80

    const v3, 0x1ffffe

    .line 42
    invoke-static {v1, v0, v3}, Lkotlin/f/d;->a(III)I

    move-result v0

    const-string v1, "kotlinx.coroutines.scheduler.max.pool.size"

    const/4 v4, 0x4

    .line 40
    invoke-static {v1, v0, v2, v3, v4}, Lkotlinx/coroutines/internal/w;->a(Ljava/lang/String;IIII)I

    move-result v0

    sput v0, Lkotlinx/coroutines/b/m;->d:I

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v1, "kotlinx.coroutines.scheduler.keep.alive.sec"

    const-wide/16 v2, 0x3c

    .line 51
    invoke-static {v1, v2, v3}, Lkotlinx/coroutines/internal/w;->a(Ljava/lang/String;J)J

    move-result-wide v1

    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lkotlinx/coroutines/b/m;->e:J

    .line 55
    sget-object v0, Lkotlinx/coroutines/b/g;->a:Lkotlinx/coroutines/b/g;

    check-cast v0, Lkotlinx/coroutines/b/i;

    sput-object v0, Lkotlinx/coroutines/b/m;->f:Lkotlinx/coroutines/b/i;

    return-void
.end method
