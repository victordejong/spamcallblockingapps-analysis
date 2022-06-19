.class public final Lkotlinx/coroutines/x;
.super Ljava/lang/Object;
.source "CoroutineContext.kt"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lkotlinx/coroutines/x;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v0, "kotlinx.coroutines.scheduler"

    .line 21
    invoke-static {v0}, Lkotlinx/coroutines/internal/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0xddf

    if-eq v1, v2, :cond_1

    const v2, 0x1ad6f

    if-ne v1, v2, :cond_3

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "on"

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

    .line 21
    :goto_1
    sput-boolean v0, Lkotlinx/coroutines/x;->b:Z

    return-void

    .line 25
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System property \'kotlinx.coroutines.scheduler\' has unrecognized value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-boolean v0, Lkotlinx/coroutines/ag;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 77
    :cond_0
    sget-object v0, Lkotlinx/coroutines/ab;->a:Lkotlinx/coroutines/ab$a;

    check-cast v0, Lkotlin/c/f$c;

    invoke-interface {p0, v0}, Lkotlin/c/f;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/ab;

    if-eqz v0, :cond_2

    .line 78
    sget-object v1, Lkotlinx/coroutines/ac;->a:Lkotlinx/coroutines/ac$a;

    check-cast v1, Lkotlin/c/f$c;

    invoke-interface {p0, v1}, Lkotlin/c/f;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/ac;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/ac;->a()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "coroutine"

    .line 79
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x23

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lkotlinx/coroutines/ab;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static final a(Lkotlinx/coroutines/ad;Lkotlin/c/f;)Lkotlin/c/f;
    .locals 2

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-interface {p0}, Lkotlinx/coroutines/ad;->b()Lkotlin/c/f;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlin/c/f;->plus(Lkotlin/c/f;)Lkotlin/c/f;

    move-result-object p0

    .line 58
    sget-boolean p1, Lkotlinx/coroutines/ag;->a:Z

    if-eqz p1, :cond_0

    new-instance p1, Lkotlinx/coroutines/ab;

    sget-object v0, Lkotlinx/coroutines/x;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lkotlinx/coroutines/ab;-><init>(J)V

    check-cast p1, Lkotlin/c/f;

    invoke-interface {p0, p1}, Lkotlin/c/f;->plus(Lkotlin/c/f;)Lkotlin/c/f;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    .line 59
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/as;->a()Lkotlinx/coroutines/y;

    move-result-object v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lkotlin/c/d;->a:Lkotlin/c/d$b;

    check-cast v0, Lkotlin/c/f$c;

    invoke-interface {p0, v0}, Lkotlin/c/f;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object p0

    if-nez p0, :cond_1

    .line 60
    invoke-static {}, Lkotlinx/coroutines/as;->a()Lkotlinx/coroutines/y;

    move-result-object p0

    check-cast p0, Lkotlin/c/f;

    invoke-interface {p1, p0}, Lkotlin/c/f;->plus(Lkotlin/c/f;)Lkotlin/c/f;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public static final a()Lkotlinx/coroutines/y;
    .locals 1

    .line 30
    sget-boolean v0, Lkotlinx/coroutines/x;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lkotlinx/coroutines/b/c;->b:Lkotlinx/coroutines/b/c;

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlinx/coroutines/s;->b:Lkotlinx/coroutines/s;

    :goto_0
    check-cast v0, Lkotlinx/coroutines/y;

    return-object v0
.end method
