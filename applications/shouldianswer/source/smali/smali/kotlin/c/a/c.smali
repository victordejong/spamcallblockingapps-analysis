.class Lkotlin/c/a/c;
.super Ljava/lang/Object;
.source "IntrinsicsJvm.kt"


# direct methods
.method public static final a(Lkotlin/c/c;)Lkotlin/c/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/c/c<",
            "-TT;>;)",
            "Lkotlin/c/c<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$intercepted"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    instance-of v0, p0, Lkotlin/c/b/a/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Lkotlin/c/b/a/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkotlin/c/b/a/d;->f()Lkotlin/c/c;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p0, v0

    :cond_1
    return-object p0
.end method

.method public static final a(Lkotlin/e/a/m;Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/e/a/m<",
            "-TR;-",
            "Lkotlin/c/c<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lkotlin/c/c<",
            "-TT;>;)",
            "Lkotlin/c/c<",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$createCoroutineUnintercepted"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-static {p2}, Lkotlin/c/b/a/h;->a(Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object v4

    .line 117
    instance-of p2, p0, Lkotlin/c/b/a/a;

    if-eqz p2, :cond_0

    .line 118
    check-cast p0, Lkotlin/c/b/a/a;

    invoke-virtual {p0, p1, v4}, Lkotlin/c/b/a/a;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p0

    goto :goto_1

    .line 204
    :cond_0
    invoke-interface {v4}, Lkotlin/c/c;->a()Lkotlin/c/f;

    move-result-object v5

    .line 206
    sget-object p2, Lkotlin/c/g;->a:Lkotlin/c/g;

    const-string v0, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    if-ne v5, p2, :cond_2

    .line 207
    new-instance p2, Lkotlin/c/a/c$a;

    if-eqz v4, :cond_1

    invoke-direct {p2, v4, v4, p0, p1}, Lkotlin/c/a/c$a;-><init>(Lkotlin/c/c;Lkotlin/c/c;Lkotlin/e/a/m;Ljava/lang/Object;)V

    check-cast p2, Lkotlin/c/c;

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 208
    :cond_2
    new-instance p2, Lkotlin/c/a/c$b;

    if-eqz v4, :cond_3

    move-object v1, p2

    move-object v2, v4

    move-object v3, v5

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lkotlin/c/a/c$b;-><init>(Lkotlin/c/c;Lkotlin/c/f;Lkotlin/c/c;Lkotlin/c/f;Lkotlin/e/a/m;Ljava/lang/Object;)V

    check-cast p2, Lkotlin/c/c;

    :goto_0
    move-object p0, p2

    :goto_1
    return-object p0

    :cond_3
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
