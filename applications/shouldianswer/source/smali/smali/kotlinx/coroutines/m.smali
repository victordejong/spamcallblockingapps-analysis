.class public final Lkotlinx/coroutines/m;
.super Ljava/lang/Object;
.source "CancellableContinuation.kt"


# direct methods
.method public static final a(Lkotlinx/coroutines/k;Lkotlinx/coroutines/au;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/k<",
            "*>;",
            "Lkotlinx/coroutines/au;",
            ")V"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handle"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    new-instance v0, Lkotlinx/coroutines/av;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/av;-><init>(Lkotlinx/coroutines/au;)V

    check-cast v0, Lkotlinx/coroutines/j;

    .line 250
    check-cast v0, Lkotlin/e/a/b;

    .line 224
    invoke-interface {p0, v0}, Lkotlinx/coroutines/k;->a(Lkotlin/e/a/b;)V

    return-void
.end method
