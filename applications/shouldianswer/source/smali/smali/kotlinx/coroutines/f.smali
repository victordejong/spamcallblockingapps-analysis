.class final synthetic Lkotlinx/coroutines/f;
.super Ljava/lang/Object;
.source "Builders.kt"


# direct methods
.method public static final a(Lkotlin/c/f;Lkotlin/e/a/m;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/c/f;",
            "Lkotlin/e/a/m<",
            "-",
            "Lkotlinx/coroutines/ad;",
            "-",
            "Lkotlin/c/c<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 37
    sget-object v1, Lkotlin/c/d;->a:Lkotlin/c/d$b;

    check-cast v1, Lkotlin/c/f$c;

    invoke-interface {p0, v1}, Lkotlin/c/f;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object v1

    check-cast v1, Lkotlin/c/d;

    if-nez v1, :cond_0

    .line 42
    sget-object v1, Lkotlinx/coroutines/cf;->a:Lkotlinx/coroutines/cf;

    invoke-virtual {v1}, Lkotlinx/coroutines/cf;->a()Lkotlinx/coroutines/ay;

    move-result-object v1

    .line 43
    sget-object v2, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    check-cast v2, Lkotlinx/coroutines/ad;

    move-object v3, v1

    check-cast v3, Lkotlin/c/f;

    invoke-interface {p0, v3}, Lkotlin/c/f;->plus(Lkotlin/c/f;)Lkotlin/c/f;

    move-result-object p0

    invoke-static {v2, p0}, Lkotlinx/coroutines/x;->a(Lkotlinx/coroutines/ad;Lkotlin/c/f;)Lkotlin/c/f;

    move-result-object p0

    goto :goto_2

    .line 47
    :cond_0
    instance-of v2, v1, Lkotlinx/coroutines/ay;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v1, v3

    :cond_1
    check-cast v1, Lkotlinx/coroutines/ay;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lkotlinx/coroutines/ay;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_3

    goto :goto_1

    .line 48
    :cond_3
    sget-object v1, Lkotlinx/coroutines/cf;->a:Lkotlinx/coroutines/cf;

    invoke-virtual {v1}, Lkotlinx/coroutines/cf;->b()Lkotlinx/coroutines/ay;

    move-result-object v1

    .line 49
    :goto_1
    sget-object v2, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    check-cast v2, Lkotlinx/coroutines/ad;

    invoke-static {v2, p0}, Lkotlinx/coroutines/x;->a(Lkotlinx/coroutines/ad;Lkotlin/c/f;)Lkotlin/c/f;

    move-result-object p0

    .line 51
    :goto_2
    new-instance v2, Lkotlinx/coroutines/c;

    const-string v3, "currentThread"

    invoke-static {v0, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p0, v0, v1}, Lkotlinx/coroutines/c;-><init>(Lkotlin/c/f;Ljava/lang/Thread;Lkotlinx/coroutines/ay;)V

    .line 52
    sget-object p0, Lkotlinx/coroutines/ae;->a:Lkotlinx/coroutines/ae;

    invoke-virtual {v2, p0, v2, p1}, Lkotlinx/coroutines/c;->a(Lkotlinx/coroutines/ae;Ljava/lang/Object;Lkotlin/e/a/m;)V

    .line 53
    invoke-virtual {v2}, Lkotlinx/coroutines/c;->l_()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lkotlin/c/f;Lkotlin/e/a/m;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 35
    sget-object p0, Lkotlin/c/g;->a:Lkotlin/c/g;

    check-cast p0, Lkotlin/c/f;

    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
