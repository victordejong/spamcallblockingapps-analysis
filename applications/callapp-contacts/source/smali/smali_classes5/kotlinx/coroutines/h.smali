.class public final Lkotlinx/coroutines/h;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "kotlinx/coroutines/BuildersKt__BuildersKt",
        "kotlinx/coroutines/BuildersKt__Builders_commonKt"
    }
    k = 0x4
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public static final a(Lkotlin/c/f;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/c/f;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/ak;",
            "-",
            "Lkotlin/c/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1042
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 1043
    sget-object v1, Lkotlin/c/e;->a:Lkotlin/c/e$a;

    check-cast v1, Lkotlin/c/f$c;

    invoke-interface {p0, v1}, Lkotlin/c/f;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object v1

    check-cast v1, Lkotlin/c/e;

    if-nez v1, :cond_0

    .line 1048
    sget-object v1, Lkotlinx/coroutines/cn;->a:Lkotlinx/coroutines/cn;

    invoke-static {}, Lkotlinx/coroutines/cn;->a()Lkotlinx/coroutines/bf;

    move-result-object v1

    .line 1049
    sget-object v2, Lkotlinx/coroutines/bo;->a:Lkotlinx/coroutines/bo;

    check-cast v2, Lkotlinx/coroutines/ak;

    move-object v3, v1

    check-cast v3, Lkotlin/c/f;

    invoke-interface {p0, v3}, Lkotlin/c/f;->plus(Lkotlin/c/f;)Lkotlin/c/f;

    move-result-object p0

    invoke-static {v2, p0}, Lkotlinx/coroutines/ae;->a(Lkotlinx/coroutines/ak;Lkotlin/c/f;)Lkotlin/c/f;

    move-result-object p0

    goto :goto_0

    .line 1054
    :cond_0
    sget-object v1, Lkotlinx/coroutines/cn;->a:Lkotlinx/coroutines/cn;

    invoke-static {}, Lkotlinx/coroutines/cn;->b()Lkotlinx/coroutines/bf;

    move-result-object v1

    .line 1055
    sget-object v2, Lkotlinx/coroutines/bo;->a:Lkotlinx/coroutines/bo;

    check-cast v2, Lkotlinx/coroutines/ak;

    invoke-static {v2, p0}, Lkotlinx/coroutines/ae;->a(Lkotlinx/coroutines/ak;Lkotlin/c/f;)Lkotlin/c/f;

    move-result-object p0

    .line 1057
    :goto_0
    new-instance v2, Lkotlinx/coroutines/f;

    invoke-direct {v2, p0, v0, v1}, Lkotlinx/coroutines/f;-><init>(Lkotlin/c/f;Ljava/lang/Thread;Lkotlinx/coroutines/bf;)V

    .line 1058
    sget-object p0, Lkotlinx/coroutines/al;->DEFAULT:Lkotlinx/coroutines/al;

    invoke-virtual {v2, p0, v2, p1}, Lkotlinx/coroutines/f;->a(Lkotlinx/coroutines/al;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1059
    invoke-virtual {v2}, Lkotlinx/coroutines/f;->d()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lkotlinx/coroutines/ak;Lkotlin/c/f;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/as;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, p2, p3}, Lkotlinx/coroutines/j;->b(Lkotlinx/coroutines/ak;Lkotlin/c/f;Lkotlinx/coroutines/al;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/as;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lkotlinx/coroutines/ak;Lkotlin/c/f;Lkotlinx/coroutines/al;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/as;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/ak;",
            "Lkotlin/c/f;",
            "Lkotlinx/coroutines/al;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/ak;",
            "-",
            "Lkotlin/c/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/as<",
            "TT;>;"
        }
    .end annotation

    .line 2087
    invoke-static {p0, p1}, Lkotlinx/coroutines/ae;->a(Lkotlinx/coroutines/ak;Lkotlin/c/f;)Lkotlin/c/f;

    move-result-object p0

    .line 2088
    invoke-virtual {p2}, Lkotlinx/coroutines/al;->isLazy()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2089
    new-instance p1, Lkotlinx/coroutines/cc;

    invoke-direct {p1, p0, p3}, Lkotlinx/coroutines/cc;-><init>(Lkotlin/c/f;Lkotlin/jvm/functions/Function2;)V

    check-cast p1, Lkotlinx/coroutines/at;

    goto :goto_0

    .line 2090
    :cond_0
    new-instance p1, Lkotlinx/coroutines/at;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lkotlinx/coroutines/at;-><init>(Lkotlin/c/f;Z)V

    .line 2091
    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Lkotlinx/coroutines/at;->a(Lkotlinx/coroutines/al;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 2092
    check-cast p1, Lkotlinx/coroutines/as;

    return-object p1
.end method

.method public static synthetic a(Lkotlinx/coroutines/ak;Lkotlin/c/f;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/bv;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1
    invoke-static {p0, p1, v0, p2, v1}, Lkotlinx/coroutines/j;->a(Lkotlinx/coroutines/ak;Lkotlin/c/f;Lkotlinx/coroutines/al;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/bv;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lkotlinx/coroutines/ak;Lkotlin/c/f;Lkotlinx/coroutines/al;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/bv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/ak;",
            "Lkotlin/c/f;",
            "Lkotlinx/coroutines/al;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/ak;",
            "-",
            "Lkotlin/c/d<",
            "-",
            "Lkotlin/v;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/bv;"
        }
    .end annotation

    .line 3052
    invoke-static {p0, p1}, Lkotlinx/coroutines/ae;->a(Lkotlinx/coroutines/ak;Lkotlin/c/f;)Lkotlin/c/f;

    move-result-object p0

    .line 3053
    invoke-virtual {p2}, Lkotlinx/coroutines/al;->isLazy()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3054
    new-instance p1, Lkotlinx/coroutines/cd;

    invoke-direct {p1, p0, p3}, Lkotlinx/coroutines/cd;-><init>(Lkotlin/c/f;Lkotlin/jvm/functions/Function2;)V

    check-cast p1, Lkotlinx/coroutines/cl;

    goto :goto_0

    .line 3055
    :cond_0
    new-instance p1, Lkotlinx/coroutines/cl;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lkotlinx/coroutines/cl;-><init>(Lkotlin/c/f;Z)V

    .line 3056
    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Lkotlinx/coroutines/cl;->a(Lkotlinx/coroutines/al;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 3057
    check-cast p1, Lkotlinx/coroutines/bv;

    return-object p1
.end method
