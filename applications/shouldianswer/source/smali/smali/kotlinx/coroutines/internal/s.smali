.class public final Lkotlinx/coroutines/internal/s;
.super Ljava/lang/Object;
.source "Scopes.kt"


# direct methods
.method public static final a(Lkotlinx/coroutines/a;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/a<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    instance-of v0, p0, Lkotlinx/coroutines/internal/r;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Lkotlinx/coroutines/internal/r;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lkotlinx/coroutines/internal/r;->c:Lkotlin/c/c;

    if-eqz p0, :cond_1

    .line 35
    invoke-static {p1, p0}, Lkotlinx/coroutines/internal/t;->a(Ljava/lang/Throwable;Lkotlin/c/c;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method
