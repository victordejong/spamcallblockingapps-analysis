.class final synthetic Lkotlinx/coroutines/bo;
.super Ljava/lang/Object;
.source "Job.kt"


# direct methods
.method public static final a(Lkotlinx/coroutines/bk;Lkotlinx/coroutines/au;)Lkotlinx/coroutines/au;
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handle"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    new-instance v0, Lkotlinx/coroutines/aw;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/aw;-><init>(Lkotlinx/coroutines/bk;Lkotlinx/coroutines/au;)V

    check-cast v0, Lkotlinx/coroutines/w;

    .line 577
    check-cast v0, Lkotlin/e/a/b;

    .line 449
    invoke-interface {p0, v0}, Lkotlinx/coroutines/bk;->a(Lkotlin/e/a/b;)Lkotlinx/coroutines/au;

    move-result-object p0

    return-object p0
.end method
