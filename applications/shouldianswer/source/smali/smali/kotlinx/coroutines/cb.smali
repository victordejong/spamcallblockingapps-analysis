.class public final Lkotlinx/coroutines/cb;
.super Ljava/lang/Object;
.source "ResumeMode.kt"


# direct methods
.method public static final a(Lkotlin/c/c;Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/c/c<",
            "-TT;>;TT;I)V"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 p0, 0x4

    if-ne p2, p0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid mode "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 24
    :cond_1
    check-cast p0, Lkotlinx/coroutines/ao;

    .line 63
    invoke-virtual {p0}, Lkotlinx/coroutines/ao;->a()Lkotlin/c/f;

    move-result-object p2

    iget-object v0, p0, Lkotlinx/coroutines/ao;->b:Ljava/lang/Object;

    .line 64
    invoke-static {p2, v0}, Lkotlinx/coroutines/internal/w;->a(Lkotlin/c/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    :try_start_0
    iget-object p0, p0, Lkotlinx/coroutines/ao;->d:Lkotlin/c/c;

    sget-object v1, Lkotlin/j;->a:Lkotlin/j$a;

    invoke-static {p1}, Lkotlin/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/c/c;->a(Ljava/lang/Object;)V

    .line 68
    sget-object p0, Lkotlin/o;->a:Lkotlin/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-static {p2, v0}, Lkotlinx/coroutines/internal/w;->b(Lkotlin/c/f;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p2, v0}, Lkotlinx/coroutines/internal/w;->b(Lkotlin/c/f;Ljava/lang/Object;)V

    throw p0

    .line 23
    :cond_2
    invoke-static {p0, p1}, Lkotlinx/coroutines/aq;->b(Lkotlin/c/c;Ljava/lang/Object;)V

    goto :goto_0

    .line 22
    :cond_3
    invoke-static {p0, p1}, Lkotlinx/coroutines/aq;->a(Lkotlin/c/c;Ljava/lang/Object;)V

    goto :goto_0

    .line 21
    :cond_4
    sget-object p2, Lkotlin/j;->a:Lkotlin/j$a;

    invoke-static {p1}, Lkotlin/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/c/c;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final a(Lkotlin/c/c;Ljava/lang/Throwable;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/c/c<",
            "-TT;>;",
            "Ljava/lang/Throwable;",
            "I)V"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 p0, 0x4

    if-ne p2, p0, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid mode "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 35
    :cond_1
    check-cast p0, Lkotlinx/coroutines/ao;

    .line 71
    invoke-virtual {p0}, Lkotlinx/coroutines/ao;->a()Lkotlin/c/f;

    move-result-object p2

    iget-object v0, p0, Lkotlinx/coroutines/ao;->b:Ljava/lang/Object;

    .line 72
    invoke-static {p2, v0}, Lkotlinx/coroutines/internal/w;->a(Lkotlin/c/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 75
    :try_start_0
    iget-object p0, p0, Lkotlinx/coroutines/ao;->d:Lkotlin/c/c;

    .line 76
    sget-object v1, Lkotlin/j;->a:Lkotlin/j$a;

    invoke-static {p1, p0}, Lkotlinx/coroutines/internal/t;->a(Ljava/lang/Throwable;Lkotlin/c/c;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/c/c;->a(Ljava/lang/Object;)V

    .line 78
    sget-object p0, Lkotlin/o;->a:Lkotlin/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-static {p2, v0}, Lkotlinx/coroutines/internal/w;->b(Lkotlin/c/f;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p2, v0}, Lkotlinx/coroutines/internal/w;->b(Lkotlin/c/f;Ljava/lang/Object;)V

    throw p0

    .line 34
    :cond_2
    invoke-static {p0, p1}, Lkotlinx/coroutines/aq;->b(Lkotlin/c/c;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 33
    :cond_3
    invoke-static {p0, p1}, Lkotlinx/coroutines/aq;->a(Lkotlin/c/c;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 32
    :cond_4
    sget-object p2, Lkotlin/j;->a:Lkotlin/j$a;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/c/c;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final a(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final b(Lkotlin/c/c;Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/c/c<",
            "-TT;>;TT;I)V"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 p0, 0x4

    if-ne p2, p0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid mode "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 46
    :cond_1
    invoke-interface {p0}, Lkotlin/c/c;->a()Lkotlin/c/f;

    move-result-object p2

    const/4 v0, 0x0

    .line 81
    invoke-static {p2, v0}, Lkotlinx/coroutines/internal/w;->a(Lkotlin/c/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    :try_start_0
    sget-object v1, Lkotlin/j;->a:Lkotlin/j$a;

    invoke-static {p1}, Lkotlin/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/c/c;->a(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/o;->a:Lkotlin/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-static {p2, v0}, Lkotlinx/coroutines/internal/w;->b(Lkotlin/c/f;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p2, v0}, Lkotlinx/coroutines/internal/w;->b(Lkotlin/c/f;Ljava/lang/Object;)V

    throw p0

    .line 45
    :cond_2
    sget-object p2, Lkotlin/j;->a:Lkotlin/j$a;

    invoke-static {p1}, Lkotlin/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/c/c;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 44
    :cond_3
    invoke-static {p0}, Lkotlin/c/a/b;->a(Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlinx/coroutines/aq;->a(Lkotlin/c/c;Ljava/lang/Object;)V

    goto :goto_0

    .line 43
    :cond_4
    invoke-static {p0}, Lkotlin/c/a/b;->a(Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p0

    sget-object p2, Lkotlin/j;->a:Lkotlin/j$a;

    invoke-static {p1}, Lkotlin/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/c/c;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final b(Lkotlin/c/c;Ljava/lang/Throwable;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/c/c<",
            "-TT;>;",
            "Ljava/lang/Throwable;",
            "I)V"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 p0, 0x4

    if-ne p2, p0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid mode "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 57
    :cond_1
    invoke-interface {p0}, Lkotlin/c/c;->a()Lkotlin/c/f;

    move-result-object p2

    const/4 v0, 0x0

    .line 86
    invoke-static {p2, v0}, Lkotlinx/coroutines/internal/w;->a(Lkotlin/c/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    :try_start_0
    sget-object v1, Lkotlin/j;->a:Lkotlin/j$a;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/c/c;->a(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/o;->a:Lkotlin/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-static {p2, v0}, Lkotlinx/coroutines/internal/w;->b(Lkotlin/c/f;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p2, v0}, Lkotlinx/coroutines/internal/w;->b(Lkotlin/c/f;Ljava/lang/Object;)V

    throw p0

    .line 56
    :cond_2
    sget-object p2, Lkotlin/j;->a:Lkotlin/j$a;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/c/c;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    :cond_3
    invoke-static {p0}, Lkotlin/c/a/b;->a(Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlinx/coroutines/aq;->a(Lkotlin/c/c;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 54
    :cond_4
    invoke-static {p0}, Lkotlin/c/a/b;->a(Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p0

    sget-object p2, Lkotlin/j;->a:Lkotlin/j$a;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/c/c;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final b(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
