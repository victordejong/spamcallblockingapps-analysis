.class final synthetic Lkotlinx/coroutines/g;
.super Ljava/lang/Object;
.source "Builders.common.kt"


# direct methods
.method public static final a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 3
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
            ">;",
            "Lkotlin/c/c<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 133
    invoke-interface {p2}, Lkotlin/c/c;->a()Lkotlin/c/f;

    move-result-object v0

    .line 134
    invoke-interface {v0, p0}, Lkotlin/c/f;->plus(Lkotlin/c/f;)Lkotlin/c/f;

    move-result-object p0

    if-ne p0, v0, :cond_0

    .line 137
    new-instance v0, Lkotlinx/coroutines/internal/r;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/internal/r;-><init>(Lkotlin/c/f;Lkotlin/c/c;)V

    .line 138
    move-object p0, v0

    check-cast p0, Lkotlinx/coroutines/a;

    invoke-static {p0, v0, p1}, Lkotlinx/coroutines/a/b;->a(Lkotlinx/coroutines/a;Ljava/lang/Object;Lkotlin/e/a/m;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 142
    :cond_0
    sget-object v1, Lkotlin/c/d;->a:Lkotlin/c/d$b;

    check-cast v1, Lkotlin/c/f$c;

    invoke-interface {p0, v1}, Lkotlin/c/f;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object v1

    check-cast v1, Lkotlin/c/d;

    sget-object v2, Lkotlin/c/d;->a:Lkotlin/c/d$b;

    check-cast v2, Lkotlin/c/f$c;

    invoke-interface {v0, v2}, Lkotlin/c/f;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object v0

    check-cast v0, Lkotlin/c/d;

    invoke-static {v1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    new-instance v0, Lkotlinx/coroutines/cn;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/cn;-><init>(Lkotlin/c/f;Lkotlin/c/c;)V

    const/4 v1, 0x0

    .line 238
    invoke-static {p0, v1}, Lkotlinx/coroutines/internal/w;->a(Lkotlin/c/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 146
    :try_start_0
    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/a;

    invoke-static {v2, v0, p1}, Lkotlinx/coroutines/a/b;->a(Lkotlinx/coroutines/a;Ljava/lang/Object;Lkotlin/e/a/m;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    invoke-static {p0, v1}, Lkotlinx/coroutines/internal/w;->b(Lkotlin/c/f;Ljava/lang/Object;)V

    move-object p0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p0, v1}, Lkotlinx/coroutines/internal/w;->b(Lkotlin/c/f;Ljava/lang/Object;)V

    throw p1

    .line 150
    :cond_1
    new-instance v0, Lkotlinx/coroutines/ap;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/ap;-><init>(Lkotlin/c/f;Lkotlin/c/c;)V

    .line 151
    invoke-virtual {v0}, Lkotlinx/coroutines/ap;->f()V

    .line 152
    move-object p0, v0

    check-cast p0, Lkotlin/c/c;

    invoke-static {p1, v0, p0}, Lkotlinx/coroutines/a/a;->a(Lkotlin/e/a/m;Ljava/lang/Object;Lkotlin/c/c;)V

    .line 153
    invoke-virtual {v0}, Lkotlinx/coroutines/ap;->k()Ljava/lang/Object;

    move-result-object p0

    .line 131
    :goto_0
    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    invoke-static {p2}, Lkotlin/c/b/a/h;->c(Lkotlin/c/c;)V

    :cond_2
    return-object p0
.end method

.method public static final a(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;)Lkotlinx/coroutines/bk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/ad;",
            "Lkotlin/c/f;",
            "Lkotlinx/coroutines/ae;",
            "Lkotlin/e/a/m<",
            "-",
            "Lkotlinx/coroutines/ad;",
            "-",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/bk;"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "start"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {p0, p1}, Lkotlinx/coroutines/x;->a(Lkotlinx/coroutines/ad;Lkotlin/c/f;)Lkotlin/c/f;

    move-result-object p0

    .line 51
    invoke-virtual {p2}, Lkotlinx/coroutines/ae;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    new-instance p1, Lkotlinx/coroutines/bt;

    invoke-direct {p1, p0, p3}, Lkotlinx/coroutines/bt;-><init>(Lkotlin/c/f;Lkotlin/e/a/m;)V

    check-cast p1, Lkotlinx/coroutines/cd;

    goto :goto_0

    .line 53
    :cond_0
    new-instance p1, Lkotlinx/coroutines/cd;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lkotlinx/coroutines/cd;-><init>(Lkotlin/c/f;Z)V

    .line 54
    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Lkotlinx/coroutines/cd;->a(Lkotlinx/coroutines/ae;Ljava/lang/Object;Lkotlin/e/a/m;)V

    .line 55
    check-cast p1, Lkotlinx/coroutines/bk;

    return-object p1
.end method

.method public static synthetic a(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 46
    sget-object p1, Lkotlin/c/g;->a:Lkotlin/c/g;

    check-cast p1, Lkotlin/c/f;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 47
    sget-object p2, Lkotlinx/coroutines/ae;->a:Lkotlinx/coroutines/ae;

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;)Lkotlinx/coroutines/bk;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;)Lkotlinx/coroutines/ak;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/ad;",
            "Lkotlin/c/f;",
            "Lkotlinx/coroutines/ae;",
            "Lkotlin/e/a/m<",
            "-",
            "Lkotlinx/coroutines/ad;",
            "-",
            "Lkotlin/c/c<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/ak<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "start"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-static {p0, p1}, Lkotlinx/coroutines/x;->a(Lkotlinx/coroutines/ad;Lkotlin/c/f;)Lkotlin/c/f;

    move-result-object p0

    .line 85
    invoke-virtual {p2}, Lkotlinx/coroutines/ae;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    new-instance p1, Lkotlinx/coroutines/bs;

    invoke-direct {p1, p0, p3}, Lkotlinx/coroutines/bs;-><init>(Lkotlin/c/f;Lkotlin/e/a/m;)V

    check-cast p1, Lkotlinx/coroutines/al;

    goto :goto_0

    .line 87
    :cond_0
    new-instance p1, Lkotlinx/coroutines/al;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lkotlinx/coroutines/al;-><init>(Lkotlin/c/f;Z)V

    .line 88
    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Lkotlinx/coroutines/al;->a(Lkotlinx/coroutines/ae;Ljava/lang/Object;Lkotlin/e/a/m;)V

    .line 89
    check-cast p1, Lkotlinx/coroutines/ak;

    return-object p1
.end method

.method public static synthetic b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/ak;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 80
    sget-object p1, Lkotlin/c/g;->a:Lkotlin/c/g;

    check-cast p1, Lkotlin/c/f;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 81
    sget-object p2, Lkotlinx/coroutines/ae;->a:Lkotlinx/coroutines/ae;

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/e;->a(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;)Lkotlinx/coroutines/ak;

    move-result-object p0

    return-object p0
.end method
