.class final synthetic Lkotlinx/coroutines/bn;
.super Ljava/lang/Object;
.source "Future.kt"


# direct methods
.method public static final a(Lkotlinx/coroutines/k;Ljava/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/k<",
            "*>;",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "future"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lkotlinx/coroutines/h;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/h;-><init>(Ljava/util/concurrent/Future;)V

    check-cast v0, Lkotlin/e/a/b;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/k;->a(Lkotlin/e/a/b;)V

    return-void
.end method
