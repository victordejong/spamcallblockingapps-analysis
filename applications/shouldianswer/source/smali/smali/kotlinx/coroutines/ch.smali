.class public final Lkotlinx/coroutines/ch;
.super Ljava/lang/Object;
.source "ThreadPoolDispatcher.kt"


# direct methods
.method public static final a(ILjava/lang/String;)Lkotlinx/coroutines/bb;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 54
    new-instance v0, Lkotlinx/coroutines/cg;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/cg;-><init>(ILjava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/bb;

    return-object v0

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected at least one thread, but "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " specified"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public static final a(Ljava/lang/String;)Lkotlinx/coroutines/bb;
    .locals 1

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 31
    invoke-static {v0, p0}, Lkotlinx/coroutines/ch;->a(ILjava/lang/String;)Lkotlinx/coroutines/bb;

    move-result-object p0

    return-object p0
.end method
