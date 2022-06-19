.class public final Lkotlinx/coroutines/ao;
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
        "\u0000(\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0017\u0010\u0012\u001a\u00020\u00132\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0015H\u0081\u0008\u001a\u0008\u0010\u0016\u001a\u00020\u0013H\u0000\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0014\u0010\u0008\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0003\"\u000e\u0010\n\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000c\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u000f\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0003\"\u000e\u0010\u0011\u001a\u00020\u000bX\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "ASSERTIONS_ENABLED",
        "",
        "getASSERTIONS_ENABLED",
        "()Z",
        "COROUTINE_ID",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "getCOROUTINE_ID",
        "()Ljava/util/concurrent/atomic/AtomicLong;",
        "DEBUG",
        "getDEBUG",
        "DEBUG_PROPERTY_NAME",
        "",
        "DEBUG_PROPERTY_VALUE_AUTO",
        "DEBUG_PROPERTY_VALUE_OFF",
        "DEBUG_PROPERTY_VALUE_ON",
        "RECOVER_STACK_TRACES",
        "getRECOVER_STACK_TRACES",
        "STACKTRACE_RECOVERY_PROPERTY_NAME",
        "assert",
        "",
        "value",
        "Lkotlin/Function0;",
        "resetCoroutineId",
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
.field private static final a:Z

.field private static final b:Z

.field private static final c:Z

.field private static final d:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 67
    const-class v0, Lkotlinx/coroutines/ai;

    const/4 v0, 0x0

    sput-boolean v0, Lkotlinx/coroutines/ao;->a:Z

    const-string v1, "kotlinx.coroutines.debug"

    .line 1001
    invoke-static {v1}, Lkotlinx/coroutines/internal/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    if-eqz v3, :cond_3

    const/16 v4, 0xddf

    if-eq v3, v4, :cond_2

    const v4, 0x1ad6f

    if-eq v3, v4, :cond_1

    const v4, 0x2dddaf

    if-ne v3, v4, :cond_5

    const-string v3, "auto"

    .line 72
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_0
    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    const-string v3, "off"

    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_2
    const-string v3, "on"

    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_3
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_1
    const/4 v1, 0x1

    .line 82
    :goto_2
    sput-boolean v1, Lkotlinx/coroutines/ao;->b:Z

    if-eqz v1, :cond_4

    const-string v1, "kotlinx.coroutines.stacktrace.recovery"

    .line 2001
    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/y;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    .line 82
    :cond_4
    sput-boolean v0, Lkotlinx/coroutines/ao;->c:Z

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lkotlinx/coroutines/ao;->d:Ljava/util/concurrent/atomic/AtomicLong;

    return-void

    .line 75
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "System property \'kotlinx.coroutines.debug\' has unrecognized value \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static final a()Z
    .locals 1

    .line 67
    sget-boolean v0, Lkotlinx/coroutines/ao;->a:Z

    return v0
.end method

.method public static final b()Z
    .locals 1

    .line 70
    sget-boolean v0, Lkotlinx/coroutines/ao;->b:Z

    return v0
.end method

.method public static final c()Z
    .locals 1

    .line 81
    sget-boolean v0, Lkotlinx/coroutines/ao;->c:Z

    return v0
.end method

.method public static final d()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .line 85
    sget-object v0, Lkotlinx/coroutines/ao;->d:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method
