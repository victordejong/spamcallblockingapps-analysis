.class public final Lkotlinx/coroutines/ae;
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
        "\u0000H\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0008\u0010\u000b\u001a\u00020\u000cH\u0000\u001a8\u0010\r\u001a\u0002H\u000e\"\u0004\u0008\u0000\u0010\u000e2\n\u0010\u000f\u001a\u0006\u0012\u0002\u0008\u00030\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\u0014H\u0080\u0008\u00a2\u0006\u0002\u0010\u0015\u001a4\u0010\u0016\u001a\u0002H\u000e\"\u0004\u0008\u0000\u0010\u000e2\u0006\u0010\u0017\u001a\u00020\u00082\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\u0014H\u0080\u0008\u00a2\u0006\u0002\u0010\u0018\u001a\u0014\u0010\u0019\u001a\u00020\u0008*\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u0008H\u0007\u001a\u0013\u0010\u001b\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u001c*\u00020\u001dH\u0080\u0010\u001a(\u0010\u001e\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u001c*\u0006\u0012\u0002\u0008\u00030\u00102\u0006\u0010\u0017\u001a\u00020\u00082\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0012H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u0001*\u00020\u00088@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006 "
    }
    d2 = {
        "COROUTINES_SCHEDULER_PROPERTY_NAME",
        "",
        "DEBUG_THREAD_NAME_SEPARATOR",
        "useCoroutinesScheduler",
        "",
        "getUseCoroutinesScheduler",
        "()Z",
        "coroutineName",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineName",
        "(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/String;",
        "createDefaultDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "withContinuationContext",
        "T",
        "continuation",
        "Lkotlin/coroutines/Continuation;",
        "countOrElement",
        "",
        "block",
        "Lkotlin/Function0;",
        "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "withCoroutineContext",
        "context",
        "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "newCoroutineContext",
        "Lkotlinx/coroutines/CoroutineScope;",
        "undispatchedCompletion",
        "Lkotlinx/coroutines/UndispatchedCoroutine;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "updateUndispatchedCompletion",
        "oldValue",
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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "kotlinx.coroutines.scheduler"

    .line 3001
    invoke-static {v0}, Lkotlinx/coroutines/internal/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0xddf

    if-eq v1, v2, :cond_1

    const v2, 0x1ad6f

    if-ne v1, v2, :cond_3

    const-string v1, "off"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "on"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_2
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    const/4 v0, 0x1

    .line 14
    :goto_1
    sput-boolean v0, Lkotlinx/coroutines/ae;->a:Z

    return-void

    .line 18
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "System property \'kotlinx.coroutines.scheduler\' has unrecognized value \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static final a(Lkotlin/c/f;)Ljava/lang/String;
    .locals 4

    .line 148
    invoke-static {}, Lkotlinx/coroutines/ao;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 149
    :cond_0
    sget-object v0, Lkotlinx/coroutines/ai;->b:Lkotlinx/coroutines/ai$a;

    check-cast v0, Lkotlin/c/f$c;

    invoke-interface {p0, v0}, Lkotlin/c/f;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/ai;

    if-nez v0, :cond_1

    return-object v1

    .line 150
    :cond_1
    sget-object v1, Lkotlinx/coroutines/aj;->b:Lkotlinx/coroutines/aj$a;

    check-cast v1, Lkotlin/c/f$c;

    invoke-interface {p0, v1}, Lkotlin/c/f;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/aj;

    if-eqz p0, :cond_2

    .line 2018
    iget-object p0, p0, Lkotlinx/coroutines/aj;->a:Ljava/lang/String;

    if-nez p0, :cond_3

    :cond_2
    const-string p0, "coroutine"

    .line 151
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x23

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2157
    iget-wide v2, v0, Lkotlinx/coroutines/ai;->a:J

    .line 151
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lkotlinx/coroutines/ak;Lkotlin/c/f;)Lkotlin/c/f;
    .locals 2

    .line 33
    invoke-interface {p0}, Lkotlinx/coroutines/ak;->az_()Lkotlin/c/f;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlin/c/f;->plus(Lkotlin/c/f;)Lkotlin/c/f;

    move-result-object p0

    .line 34
    invoke-static {}, Lkotlinx/coroutines/ao;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lkotlinx/coroutines/ai;

    invoke-static {}, Lkotlinx/coroutines/ao;->d()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lkotlinx/coroutines/ai;-><init>(J)V

    check-cast p1, Lkotlin/c/f;

    invoke-interface {p0, p1}, Lkotlin/c/f;->plus(Lkotlin/c/f;)Lkotlin/c/f;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    .line 35
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/az;->a()Lkotlinx/coroutines/af;

    move-result-object v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lkotlin/c/e;->a:Lkotlin/c/e$a;

    check-cast v0, Lkotlin/c/f$c;

    invoke-interface {p0, v0}, Lkotlin/c/f;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object p0

    if-nez p0, :cond_1

    .line 36
    invoke-static {}, Lkotlinx/coroutines/az;->a()Lkotlinx/coroutines/af;

    move-result-object p0

    check-cast p0, Lkotlin/c/f;

    invoke-interface {p1, p0}, Lkotlin/c/f;->plus(Lkotlin/c/f;)Lkotlin/c/f;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static final a()Lkotlinx/coroutines/af;
    .locals 1

    .line 23
    sget-boolean v0, Lkotlinx/coroutines/ae;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lkotlinx/coroutines/b/c;->b:Lkotlinx/coroutines/b/c;

    :goto_0
    check-cast v0, Lkotlinx/coroutines/af;

    return-object v0

    :cond_0
    sget-object v0, Lkotlinx/coroutines/w;->b:Lkotlinx/coroutines/w;

    goto :goto_0
.end method

.method public static final a(Lkotlin/c/d;Lkotlin/c/f;Ljava/lang/Object;)Lkotlinx/coroutines/cs;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/d<",
            "*>;",
            "Lkotlin/c/f;",
            "Ljava/lang/Object;",
            ")",
            "Lkotlinx/coroutines/cs<",
            "*>;"
        }
    .end annotation

    .line 73
    instance-of v0, p0, Lkotlin/c/b/a/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 86
    :cond_0
    sget-object v0, Lkotlinx/coroutines/ct;->a:Lkotlinx/coroutines/ct;

    check-cast v0, Lkotlin/c/f$c;

    invoke-interface {p1, v0}, Lkotlin/c/f;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-object v1

    .line 88
    :cond_2
    check-cast p0, Lkotlin/c/b/a/d;

    .line 1096
    :cond_3
    instance-of v0, p0, Lkotlinx/coroutines/aw;

    if-eqz v0, :cond_4

    goto :goto_1

    .line 1097
    :cond_4
    invoke-interface {p0}, Lkotlin/c/b/a/d;->c()Lkotlin/c/b/a/d;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_1

    .line 1099
    :cond_5
    instance-of v0, p0, Lkotlinx/coroutines/cs;

    if-eqz v0, :cond_3

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/cs;

    :goto_1
    if-eqz v1, :cond_6

    .line 1122
    iput-object p1, v1, Lkotlinx/coroutines/cs;->e:Lkotlin/c/f;

    .line 1123
    iput-object p2, v1, Lkotlinx/coroutines/cs;->f:Ljava/lang/Object;

    :cond_6
    return-object v1
.end method
