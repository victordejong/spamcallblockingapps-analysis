.class public final Lkotlinx/coroutines/aq;
.super Ljava/lang/Object;
.source "Dispatched.kt"


# static fields
.field private static final a:Lkotlinx/coroutines/internal/u;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lkotlinx/coroutines/internal/u;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/aq;->a:Lkotlinx/coroutines/internal/u;

    return-void
.end method

.method public static final synthetic a()Lkotlinx/coroutines/internal/u;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/aq;->a:Lkotlinx/coroutines/internal/u;

    return-object v0
.end method

.method public static final a(Lkotlin/c/c;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/c/c<",
            "-TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    instance-of v0, p0, Lkotlinx/coroutines/ao;

    if-eqz v0, :cond_4

    check-cast p0, Lkotlinx/coroutines/ao;

    .line 373
    iget-object v0, p0, Lkotlinx/coroutines/ao;->c:Lkotlinx/coroutines/y;

    invoke-virtual {p0}, Lkotlinx/coroutines/ao;->a()Lkotlin/c/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/y;->a(Lkotlin/c/f;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 374
    iput-object p1, p0, Lkotlinx/coroutines/ao;->a:Ljava/lang/Object;

    .line 375
    iput v1, p0, Lkotlinx/coroutines/ao;->e:I

    .line 376
    iget-object p1, p0, Lkotlinx/coroutines/ao;->c:Lkotlinx/coroutines/y;

    invoke-virtual {p0}, Lkotlinx/coroutines/ao;->a()Lkotlin/c/f;

    move-result-object v0

    check-cast p0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/y;->a(Lkotlin/c/f;Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 382
    :cond_0
    sget-object v0, Lkotlinx/coroutines/cf;->a:Lkotlinx/coroutines/cf;

    invoke-virtual {v0}, Lkotlinx/coroutines/cf;->a()Lkotlinx/coroutines/ay;

    move-result-object v0

    .line 385
    invoke-virtual {v0}, Lkotlinx/coroutines/ay;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 387
    iput-object p1, p0, Lkotlinx/coroutines/ao;->a:Ljava/lang/Object;

    .line 388
    iput v1, p0, Lkotlinx/coroutines/ao;->e:I

    .line 389
    check-cast p0, Lkotlinx/coroutines/ar;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/ay;->a(Lkotlinx/coroutines/ar;)V

    goto/16 :goto_2

    .line 394
    :cond_1
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/ay;->a(Z)V

    .line 398
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/ao;->a()Lkotlin/c/f;

    move-result-object v2

    sget-object v3, Lkotlinx/coroutines/bk;->b:Lkotlinx/coroutines/bk$b;

    check-cast v3, Lkotlin/c/f$c;

    invoke-interface {v2, v3}, Lkotlin/c/f;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/bk;

    if-eqz v2, :cond_2

    .line 399
    invoke-interface {v2}, Lkotlinx/coroutines/bk;->e()Z

    move-result v3

    if-nez v3, :cond_2

    .line 400
    invoke-interface {v2}, Lkotlinx/coroutines/bk;->m()Ljava/util/concurrent/CancellationException;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    sget-object v3, Lkotlin/j;->a:Lkotlin/j$a;

    invoke-static {v2}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Lkotlin/c/c;->a(Ljava/lang/Object;)V

    move v2, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    .line 406
    invoke-virtual {p0}, Lkotlinx/coroutines/ao;->a()Lkotlin/c/f;

    move-result-object v2

    iget-object v3, p0, Lkotlinx/coroutines/ao;->b:Ljava/lang/Object;

    .line 407
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/w;->a(Lkotlin/c/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 410
    :try_start_1
    iget-object p0, p0, Lkotlinx/coroutines/ao;->d:Lkotlin/c/c;

    sget-object v4, Lkotlin/j;->a:Lkotlin/j$a;

    invoke-static {p1}, Lkotlin/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/c/c;->a(Ljava/lang/Object;)V

    .line 411
    sget-object p0, Lkotlin/o;->a:Lkotlin/o;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    :try_start_2
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/w;->b(Lkotlin/c/f;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/w;->b(Lkotlin/c/f;Ljava/lang/Object;)V

    throw p0

    .line 417
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/ay;->e()Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p0, :cond_3

    .line 426
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/ay;->b(Z)V

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 433
    :try_start_3
    new-instance p1, Lkotlinx/coroutines/DispatchException;

    const-string v2, "Unexpected exception in unconfined event loop"

    invoke-direct {p1, v2, p0}, Lkotlinx/coroutines/DispatchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p0

    .line 426
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/ay;->b(Z)V

    throw p0

    .line 185
    :cond_4
    sget-object v0, Lkotlin/j;->a:Lkotlin/j$a;

    invoke-static {p1}, Lkotlin/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/c/c;->a(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public static final a(Lkotlin/c/c;Ljava/lang/Throwable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/c/c<",
            "-TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    instance-of v0, p0, Lkotlinx/coroutines/ao;

    if-eqz v0, :cond_4

    check-cast p0, Lkotlinx/coroutines/ao;

    .line 441
    iget-object v0, p0, Lkotlinx/coroutines/ao;->d:Lkotlin/c/c;

    invoke-interface {v0}, Lkotlin/c/c;->a()Lkotlin/c/f;

    move-result-object v0

    .line 442
    new-instance v1, Lkotlinx/coroutines/t;

    invoke-direct {v1, p1}, Lkotlinx/coroutines/t;-><init>(Ljava/lang/Throwable;)V

    .line 443
    iget-object v2, p0, Lkotlinx/coroutines/ao;->c:Lkotlinx/coroutines/y;

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/y;->a(Lkotlin/c/f;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 444
    new-instance v1, Lkotlinx/coroutines/t;

    invoke-direct {v1, p1}, Lkotlinx/coroutines/t;-><init>(Ljava/lang/Throwable;)V

    iput-object v1, p0, Lkotlinx/coroutines/ao;->a:Ljava/lang/Object;

    .line 445
    iput v3, p0, Lkotlinx/coroutines/ao;->e:I

    .line 446
    iget-object p1, p0, Lkotlinx/coroutines/ao;->c:Lkotlinx/coroutines/y;

    check-cast p0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/y;->a(Lkotlin/c/f;Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 452
    :cond_0
    sget-object v0, Lkotlinx/coroutines/cf;->a:Lkotlinx/coroutines/cf;

    invoke-virtual {v0}, Lkotlinx/coroutines/cf;->a()Lkotlinx/coroutines/ay;

    move-result-object v0

    .line 455
    invoke-virtual {v0}, Lkotlinx/coroutines/ay;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 457
    iput-object v1, p0, Lkotlinx/coroutines/ao;->a:Ljava/lang/Object;

    .line 458
    iput v3, p0, Lkotlinx/coroutines/ao;->e:I

    .line 459
    check-cast p0, Lkotlinx/coroutines/ar;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/ay;->a(Lkotlinx/coroutines/ar;)V

    goto/16 :goto_2

    .line 464
    :cond_1
    invoke-virtual {v0, v3}, Lkotlinx/coroutines/ay;->a(Z)V

    .line 476
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/ao;->a()Lkotlin/c/f;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/bk;->b:Lkotlinx/coroutines/bk$b;

    check-cast v2, Lkotlin/c/f$c;

    invoke-interface {v1, v2}, Lkotlin/c/f;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/bk;

    if-eqz v1, :cond_2

    .line 477
    invoke-interface {v1}, Lkotlinx/coroutines/bk;->e()Z

    move-result v2

    if-nez v2, :cond_2

    .line 478
    invoke-interface {v1}, Lkotlinx/coroutines/bk;->m()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    sget-object v2, Lkotlin/j;->a:Lkotlin/j$a;

    invoke-static {v1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Lkotlin/c/c;->a(Ljava/lang/Object;)V

    move v1, v3

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 484
    invoke-virtual {p0}, Lkotlinx/coroutines/ao;->a()Lkotlin/c/f;

    move-result-object v1

    iget-object v2, p0, Lkotlinx/coroutines/ao;->b:Ljava/lang/Object;

    .line 485
    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/w;->a(Lkotlin/c/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 488
    :try_start_1
    iget-object p0, p0, Lkotlinx/coroutines/ao;->d:Lkotlin/c/c;

    .line 489
    sget-object v4, Lkotlin/j;->a:Lkotlin/j$a;

    invoke-static {p1, p0}, Lkotlinx/coroutines/internal/t;->a(Ljava/lang/Throwable;Lkotlin/c/c;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/c/c;->a(Ljava/lang/Object;)V

    .line 491
    sget-object p0, Lkotlin/o;->a:Lkotlin/o;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 492
    :try_start_2
    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/w;->b(Lkotlin/c/f;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/w;->b(Lkotlin/c/f;Ljava/lang/Object;)V

    throw p0

    .line 497
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/ay;->e()Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p0, :cond_3

    .line 506
    invoke-virtual {v0, v3}, Lkotlinx/coroutines/ay;->b(Z)V

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 513
    :try_start_3
    new-instance p1, Lkotlinx/coroutines/DispatchException;

    const-string v1, "Unexpected exception in unconfined event loop"

    invoke-direct {p1, v1, p0}, Lkotlinx/coroutines/DispatchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p0

    .line 506
    invoke-virtual {v0, v3}, Lkotlinx/coroutines/ay;->b(Z)V

    throw p0

    .line 521
    :cond_4
    sget-object v0, Lkotlin/j;->a:Lkotlin/j$a;

    invoke-static {p1, p0}, Lkotlinx/coroutines/internal/t;->a(Ljava/lang/Throwable;Lkotlin/c/c;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/c/c;->a(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method private static final a(Lkotlinx/coroutines/ar;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/ar<",
            "*>;)V"
        }
    .end annotation

    .line 42
    sget-object v0, Lkotlinx/coroutines/cf;->a:Lkotlinx/coroutines/cf;

    invoke-virtual {v0}, Lkotlinx/coroutines/cf;->a()Lkotlinx/coroutines/ay;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lkotlinx/coroutines/ay;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/ay;->a(Lkotlinx/coroutines/ar;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 347
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/ay;->a(Z)V

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/ar;->i()Lkotlin/c/c;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {p0, v2, v3}, Lkotlinx/coroutines/aq;->a(Lkotlinx/coroutines/ar;Lkotlin/c/c;I)V

    .line 352
    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/ay;->e()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    .line 361
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/ay;->b(Z)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 368
    :try_start_1
    new-instance v2, Lkotlinx/coroutines/DispatchException;

    const-string v3, "Unexpected exception in unconfined event loop"

    invoke-direct {v2, v3, p0}, Lkotlinx/coroutines/DispatchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    .line 361
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/ay;->b(Z)V

    throw p0
.end method

.method public static final a(Lkotlinx/coroutines/ar;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/ar<",
            "-TT;>;I)V"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lkotlinx/coroutines/ar;->i()Lkotlin/c/c;

    move-result-object v0

    .line 251
    invoke-static {p1}, Lkotlinx/coroutines/cb;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, v0, Lkotlinx/coroutines/ao;

    if-eqz v1, :cond_1

    invoke-static {p1}, Lkotlinx/coroutines/cb;->a(I)Z

    move-result v1

    iget v2, p0, Lkotlinx/coroutines/ar;->e:I

    invoke-static {v2}, Lkotlinx/coroutines/cb;->a(I)Z

    move-result v2

    if-ne v1, v2, :cond_1

    .line 253
    move-object p1, v0

    check-cast p1, Lkotlinx/coroutines/ao;

    iget-object p1, p1, Lkotlinx/coroutines/ao;->c:Lkotlinx/coroutines/y;

    .line 254
    invoke-interface {v0}, Lkotlin/c/c;->a()Lkotlin/c/f;

    move-result-object v0

    .line 255
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/y;->a(Lkotlin/c/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    check-cast p0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/y;->a(Lkotlin/c/f;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 258
    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/aq;->a(Lkotlinx/coroutines/ar;)V

    goto :goto_0

    .line 261
    :cond_1
    invoke-static {p0, v0, p1}, Lkotlinx/coroutines/aq;->a(Lkotlinx/coroutines/ar;Lkotlin/c/c;I)V

    :goto_0
    return-void
.end method

.method public static final a(Lkotlinx/coroutines/ar;Lkotlin/c/c;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/ar<",
            "-TT;>;",
            "Lkotlin/c/c<",
            "-TT;>;I)V"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lkotlinx/coroutines/ar;->f()Ljava/lang/Object;

    move-result-object v0

    .line 268
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/ar;->c(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 270
    invoke-static {p1, v1, p2}, Lkotlinx/coroutines/cb;->a(Lkotlin/c/c;Ljava/lang/Throwable;I)V

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/ar;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lkotlinx/coroutines/cb;->a(Lkotlin/c/c;Ljava/lang/Object;I)V

    :goto_0
    return-void
.end method

.method public static final b(Lkotlin/c/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/c/c<",
            "-TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    instance-of v0, p0, Lkotlinx/coroutines/ao;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/coroutines/ao;

    iget-object p0, p0, Lkotlinx/coroutines/ao;->d:Lkotlin/c/c;

    sget-object v0, Lkotlin/j;->a:Lkotlin/j$a;

    invoke-static {p1}, Lkotlin/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/c/c;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 195
    :cond_0
    sget-object v0, Lkotlin/j;->a:Lkotlin/j$a;

    invoke-static {p1}, Lkotlin/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/c/c;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final b(Lkotlin/c/c;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/c/c<",
            "-TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    instance-of v0, p0, Lkotlinx/coroutines/ao;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/coroutines/ao;

    iget-object p0, p0, Lkotlinx/coroutines/ao;->d:Lkotlin/c/c;

    .line 523
    sget-object v0, Lkotlin/j;->a:Lkotlin/j$a;

    invoke-static {p1, p0}, Lkotlinx/coroutines/internal/t;->a(Ljava/lang/Throwable;Lkotlin/c/c;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/c/c;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 525
    :cond_0
    sget-object v0, Lkotlin/j;->a:Lkotlin/j$a;

    invoke-static {p1, p0}, Lkotlinx/coroutines/internal/t;->a(Ljava/lang/Throwable;Lkotlin/c/c;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/c/c;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
