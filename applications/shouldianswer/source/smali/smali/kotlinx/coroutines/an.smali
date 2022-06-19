.class public final Lkotlinx/coroutines/an;
.super Ljava/lang/Object;
.source "Delay.kt"


# direct methods
.method public static final a(JLkotlin/c/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 72
    sget-object p0, Lkotlin/o;->a:Lkotlin/o;

    return-object p0

    .line 82
    :cond_0
    new-instance v0, Lkotlinx/coroutines/l;

    invoke-static {p2}, Lkotlin/c/a/b;->a(Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/l;-><init>(Lkotlin/c/c;I)V

    .line 86
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/k;

    .line 74
    invoke-interface {v1}, Lkotlinx/coroutines/k;->a()Lkotlin/c/f;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/an;->a(Lkotlin/c/f;)Lkotlinx/coroutines/am;

    move-result-object v2

    invoke-interface {v2, p0, p1, v1}, Lkotlinx/coroutines/am;->a(JLkotlinx/coroutines/k;)V

    .line 87
    invoke-virtual {v0}, Lkotlinx/coroutines/l;->g()Ljava/lang/Object;

    move-result-object p0

    .line 81
    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    invoke-static {p2}, Lkotlin/c/b/a/h;->c(Lkotlin/c/c;)V

    :cond_1
    return-object p0
.end method

.method public static final a(Lkotlin/c/f;)Lkotlinx/coroutines/am;
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lkotlin/c/d;->a:Lkotlin/c/d$b;

    check-cast v0, Lkotlin/c/f$c;

    invoke-interface {p0, v0}, Lkotlin/c/f;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object p0

    instance-of v0, p0, Lkotlinx/coroutines/am;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Lkotlinx/coroutines/am;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/ai;->a()Lkotlinx/coroutines/am;

    move-result-object p0

    :goto_0
    return-object p0
.end method
