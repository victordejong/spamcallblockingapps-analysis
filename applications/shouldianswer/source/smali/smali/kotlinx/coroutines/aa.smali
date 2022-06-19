.class public final Lkotlinx/coroutines/aa;
.super Ljava/lang/Object;
.source "CoroutineExceptionHandler.kt"


# direct methods
.method public static final a(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    const-string v0, "originalException"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "thrownException"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p0, p1, :cond_0

    return-object p0

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Exception while trying to handle coroutine exception"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    check-cast v0, Ljava/lang/Throwable;

    .line 101
    invoke-static {v0, p0}, Lkotlin/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static final a(Lkotlin/c/f;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    :try_start_0
    sget-object v0, Lkotlinx/coroutines/CoroutineExceptionHandler;->a:Lkotlinx/coroutines/CoroutineExceptionHandler$a;

    check-cast v0, Lkotlin/c/f$c;

    invoke-interface {p0, v0}, Lkotlin/c/f;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineExceptionHandler;

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0, p0, p1}, Lkotlinx/coroutines/CoroutineExceptionHandler;->handleException(Lkotlin/c/f;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 52
    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/z;->a(Lkotlin/c/f;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    .line 47
    invoke-static {p1, v0}, Lkotlinx/coroutines/aa;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlinx/coroutines/z;->a(Lkotlin/c/f;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final a(Lkotlin/c/f;Ljava/lang/Throwable;Lkotlinx/coroutines/bk;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    return-void

    .line 28
    :cond_0
    sget-object v0, Lkotlinx/coroutines/bk;->b:Lkotlinx/coroutines/bk$b;

    check-cast v0, Lkotlin/c/f$c;

    invoke-interface {p0, v0}, Lkotlin/c/f;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/bk;

    if-eqz v0, :cond_1

    if-eq v0, p2, :cond_1

    .line 30
    invoke-interface {v0, p1}, Lkotlinx/coroutines/bk;->d(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 32
    :cond_1
    invoke-static {p0, p1}, Lkotlinx/coroutines/aa;->a(Lkotlin/c/f;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic a(Lkotlin/c/f;Ljava/lang/Throwable;Lkotlinx/coroutines/bk;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 24
    check-cast p2, Lkotlinx/coroutines/bk;

    :cond_0
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/aa;->a(Lkotlin/c/f;Ljava/lang/Throwable;Lkotlinx/coroutines/bk;)V

    return-void
.end method
