.class public final Lkotlinx/coroutines/u;
.super Ljava/lang/Object;
.source "CompletedExceptionally.kt"


# direct methods
.method public static final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 12
    invoke-static {p0}, Lkotlin/j;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/t;

    invoke-static {p0}, Lkotlin/j;->c(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_1
    invoke-direct {v0, p0}, Lkotlinx/coroutines/t;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
