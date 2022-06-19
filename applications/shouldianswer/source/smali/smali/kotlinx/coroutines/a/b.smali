.class public final Lkotlinx/coroutines/a/b;
.super Ljava/lang/Object;
.source "Undispatched.kt"


# direct methods
.method public static final a(Lkotlinx/coroutines/a;Ljava/lang/Object;Lkotlin/e/a/m;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/a<",
            "-TT;>;TR;",
            "Lkotlin/e/a/m<",
            "-TR;-",
            "Lkotlin/c/c<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lkotlinx/coroutines/a;->f()V

    .line 91
    :try_start_0
    move-object v0, p0

    check-cast v0, Lkotlin/c/c;

    const/4 v1, 0x2

    invoke-static {p2, v1}, Lkotlin/e/b/q;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/e/a/m;

    invoke-interface {p2, p1, v0}, Lkotlin/e/a/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 214
    new-instance p2, Lkotlinx/coroutines/t;

    invoke-direct {p2, p1}, Lkotlinx/coroutines/t;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    .line 216
    :goto_0
    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_0
    const/4 p2, 0x4

    .line 217
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/a;->a(Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 218
    invoke-virtual {p0}, Lkotlinx/coroutines/a;->p()Ljava/lang/Object;

    move-result-object p1

    .line 219
    instance-of p2, p1, Lkotlinx/coroutines/t;

    if-eqz p2, :cond_1

    .line 221
    check-cast p1, Lkotlinx/coroutines/t;

    iget-object p2, p1, Lkotlinx/coroutines/t;->a:Ljava/lang/Throwable;

    .line 90
    iget-object p1, p1, Lkotlinx/coroutines/t;->a:Ljava/lang/Throwable;

    invoke-static {p0, p1}, Lkotlinx/coroutines/internal/s;->a(Lkotlinx/coroutines/a;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    .line 226
    :cond_1
    invoke-static {p1}, Lkotlinx/coroutines/br;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 229
    :cond_2
    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static final a(Lkotlin/e/a/m;Ljava/lang/Object;Lkotlin/c/c;)V
    .locals 3
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
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-static {p2}, Lkotlin/c/b/a/h;->a(Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object v0

    .line 54
    :try_start_0
    invoke-interface {p2}, Lkotlin/c/c;->a()Lkotlin/c/f;

    move-result-object p2

    const/4 v1, 0x0

    .line 196
    invoke-static {p2, v1}, Lkotlinx/coroutines/internal/w;->a(Lkotlin/c/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x2

    .line 55
    :try_start_1
    invoke-static {p0, v2}, Lkotlin/e/b/q;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/e/a/m;

    invoke-interface {p0, p1, v0}, Lkotlin/e/a/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    :try_start_2
    invoke-static {p2, v1}, Lkotlinx/coroutines/internal/w;->b(Lkotlin/c/f;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 205
    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object p1

    if-eq p0, p1, :cond_0

    .line 207
    sget-object p1, Lkotlin/j;->a:Lkotlin/j$a;

    invoke-static {p0}, Lkotlin/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/c/c;->a(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 200
    :try_start_3
    invoke-static {p2, v1}, Lkotlinx/coroutines/internal/w;->b(Lkotlin/c/f;Ljava/lang/Object;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 202
    sget-object p1, Lkotlin/j;->a:Lkotlin/j$a;

    invoke-static {p0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/c/c;->a(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static final b(Lkotlinx/coroutines/a;Ljava/lang/Object;Lkotlin/e/a/m;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/a<",
            "-TT;>;TR;",
            "Lkotlin/e/a/m<",
            "-TR;-",
            "Lkotlin/c/c<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lkotlinx/coroutines/a;->f()V

    .line 102
    :try_start_0
    move-object v0, p0

    check-cast v0, Lkotlin/c/c;

    const/4 v1, 0x2

    invoke-static {p2, v1}, Lkotlin/e/b/q;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/e/a/m;

    invoke-interface {p2, p1, v0}, Lkotlin/e/a/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 233
    new-instance p2, Lkotlinx/coroutines/t;

    invoke-direct {p2, p1}, Lkotlinx/coroutines/t;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    .line 235
    :goto_0
    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    :cond_0
    const/4 p2, 0x4

    .line 236
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/a;->a(Ljava/lang/Object;I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 237
    invoke-virtual {p0}, Lkotlinx/coroutines/a;->p()Ljava/lang/Object;

    move-result-object p2

    .line 238
    instance-of v0, p2, Lkotlinx/coroutines/t;

    if-eqz v0, :cond_5

    .line 240
    check-cast p2, Lkotlinx/coroutines/t;

    iget-object v0, p2, Lkotlinx/coroutines/t;->a:Ljava/lang/Throwable;

    .line 101
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-eqz v1, :cond_2

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    iget-object v0, v0, Lkotlinx/coroutines/TimeoutCancellationException;->a:Lkotlinx/coroutines/bk;

    if-eq v0, p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_4

    .line 241
    instance-of p2, p1, Lkotlinx/coroutines/t;

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    check-cast p1, Lkotlinx/coroutines/t;

    iget-object p1, p1, Lkotlinx/coroutines/t;->a:Ljava/lang/Throwable;

    invoke-static {p0, p1}, Lkotlinx/coroutines/internal/s;->a(Lkotlinx/coroutines/a;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    .line 101
    :cond_4
    iget-object p1, p2, Lkotlinx/coroutines/t;->a:Ljava/lang/Throwable;

    invoke-static {p0, p1}, Lkotlinx/coroutines/internal/s;->a(Lkotlinx/coroutines/a;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    .line 245
    :cond_5
    invoke-static {p2}, Lkotlinx/coroutines/br;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    .line 248
    :cond_6
    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object p1

    :goto_3
    return-object p1
.end method
