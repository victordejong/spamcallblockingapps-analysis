.class public final Lkotlin/c/e;
.super Ljava/lang/Object;
.source "Continuation.kt"


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

    const-string v0, "$this$startCoroutine"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-static {p0, p1, p2}, Lkotlin/c/a/b;->a(Lkotlin/e/a/m;Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p0

    invoke-static {p0}, Lkotlin/c/a/b;->a(Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p0

    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    sget-object p2, Lkotlin/j;->a:Lkotlin/j$a;

    invoke-static {p1}, Lkotlin/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/c/c;->a(Ljava/lang/Object;)V

    return-void
.end method
