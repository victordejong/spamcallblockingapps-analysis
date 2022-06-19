.class public final Lkotlinx/coroutines/a/a;
.super Ljava/lang/Object;
.source "Cancellable.kt"


# direct methods
.method public static final a(Lkotlin/e/a/m;Ljava/lang/Object;Lkotlin/c/c;)V
    .locals 1
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

    .line 25
    :try_start_0
    invoke-static {p0, p1, p2}, Lkotlin/c/a/b;->a(Lkotlin/e/a/m;Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p0

    invoke-static {p0}, Lkotlin/c/a/b;->a(Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p0

    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    invoke-static {p0, p1}, Lkotlinx/coroutines/aq;->a(Lkotlin/c/c;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 51
    sget-object p1, Lkotlin/j;->a:Lkotlin/j$a;

    invoke-static {p0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lkotlin/c/c;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
