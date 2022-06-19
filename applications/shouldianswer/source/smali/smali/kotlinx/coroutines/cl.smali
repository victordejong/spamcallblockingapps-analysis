.class public final Lkotlinx/coroutines/cl;
.super Ljava/lang/Object;
.source "Timeout.kt"


# direct methods
.method public static final a(JLkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlin/e/a/m<",
            "-",
            "Lkotlinx/coroutines/ad;",
            "-",
            "Lkotlin/c/c<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/c/c<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    .line 31
    new-instance v0, Lkotlinx/coroutines/ck;

    invoke-direct {v0, p0, p1, p3}, Lkotlinx/coroutines/ck;-><init>(JLkotlin/c/c;)V

    invoke-static {v0, p2}, Lkotlinx/coroutines/cl;->a(Lkotlinx/coroutines/ck;Lkotlin/e/a/m;)Ljava/lang/Object;

    move-result-object p0

    .line 30
    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    invoke-static {p3}, Lkotlin/c/b/a/h;->c(Lkotlin/c/c;)V

    :cond_0
    return-object p0

    .line 29
    :cond_1
    new-instance p0, Lkotlinx/coroutines/TimeoutCancellationException;

    const-string p1, "Timed out immediately"

    invoke-direct {p0, p1}, Lkotlinx/coroutines/TimeoutCancellationException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public static final synthetic a(Lkotlinx/coroutines/ck;Lkotlin/e/a/m;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/cl;->b(Lkotlinx/coroutines/ck;Lkotlin/e/a/m;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final a(JLkotlinx/coroutines/bk;)Lkotlinx/coroutines/TimeoutCancellationException;
    .locals 3

    const-string v0, "coroutine"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    new-instance v0, Lkotlinx/coroutines/TimeoutCancellationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timed out waiting for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/TimeoutCancellationException;-><init>(Ljava/lang/String;Lkotlinx/coroutines/bk;)V

    return-object v0
.end method

.method private static final b(Lkotlinx/coroutines/ck;Lkotlin/e/a/m;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "T::TU;>(",
            "Lkotlinx/coroutines/ck<",
            "TU;-TT;>;",
            "Lkotlin/e/a/m<",
            "-",
            "Lkotlinx/coroutines/ad;",
            "-",
            "Lkotlin/c/c<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lkotlinx/coroutines/ck;->d:Lkotlin/c/c;

    .line 74
    invoke-interface {v0}, Lkotlin/c/c;->a()Lkotlin/c/f;

    move-result-object v0

    .line 75
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/bk;

    invoke-static {v0}, Lkotlinx/coroutines/an;->a(Lkotlin/c/f;)Lkotlinx/coroutines/am;

    move-result-object v0

    iget-wide v2, p0, Lkotlinx/coroutines/ck;->c:J

    move-object v4, p0

    check-cast v4, Ljava/lang/Runnable;

    invoke-interface {v0, v2, v3, v4}, Lkotlinx/coroutines/am;->a(JLjava/lang/Runnable;)Lkotlinx/coroutines/au;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlinx/coroutines/bm;->a(Lkotlinx/coroutines/bk;Lkotlinx/coroutines/au;)Lkotlinx/coroutines/au;

    .line 78
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/a;

    invoke-static {v0, p0, p1}, Lkotlinx/coroutines/a/b;->b(Lkotlinx/coroutines/a;Ljava/lang/Object;Lkotlin/e/a/m;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
