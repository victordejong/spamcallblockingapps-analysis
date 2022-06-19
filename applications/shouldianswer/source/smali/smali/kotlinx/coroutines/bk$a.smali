.class public final Lkotlinx/coroutines/bk$a;
.super Ljava/lang/Object;
.source "Job.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lkotlinx/coroutines/bk;Ljava/lang/Object;Lkotlin/e/a/m;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/bk;",
            "TR;",
            "Lkotlin/e/a/m<",
            "-TR;-",
            "Lkotlin/c/f$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/c/f$b;

    invoke-static {p0, p1, p2}, Lkotlin/c/f$b$a;->a(Lkotlin/c/f$b;Ljava/lang/Object;Lkotlin/e/a/m;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lkotlinx/coroutines/bk;Lkotlin/c/f$c;)Lkotlin/c/f$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/c/f$b;",
            ">(",
            "Lkotlinx/coroutines/bk;",
            "Lkotlin/c/f$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/c/f$b;

    invoke-static {p0, p1}, Lkotlin/c/f$b$a;->a(Lkotlin/c/f$b;Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lkotlinx/coroutines/bk;Lkotlin/c/f;)Lkotlin/c/f;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/c/f$b;

    invoke-static {p0, p1}, Lkotlin/c/f$b$a;->a(Lkotlin/c/f$b;Lkotlin/c/f;)Lkotlin/c/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lkotlinx/coroutines/bk;ZZLkotlin/e/a/b;ILjava/lang/Object;)Lkotlinx/coroutines/au;
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x1

    .line 323
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lkotlinx/coroutines/bk;->a(ZZLkotlin/e/a/b;)Lkotlinx/coroutines/au;

    move-result-object p0

    return-object p0

    .line 0
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: invokeOnCompletion"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lkotlinx/coroutines/bk;Lkotlin/c/f$c;)Lkotlin/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/bk;",
            "Lkotlin/c/f$c<",
            "*>;)",
            "Lkotlin/c/f;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/c/f$b;

    invoke-static {p0, p1}, Lkotlin/c/f$b$a;->b(Lkotlin/c/f$b;Lkotlin/c/f$c;)Lkotlin/c/f;

    move-result-object p0

    return-object p0
.end method
