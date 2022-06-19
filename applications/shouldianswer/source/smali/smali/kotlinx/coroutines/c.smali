.class final Lkotlinx/coroutines/c;
.super Lkotlinx/coroutines/a;
.source "Builders.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final c:Ljava/lang/Thread;

.field private final d:Lkotlinx/coroutines/ay;


# direct methods
.method public constructor <init>(Lkotlin/c/f;Ljava/lang/Thread;Lkotlinx/coroutines/ay;)V
    .locals 1

    const-string v0, "parentContext"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockedThread"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 60
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/a;-><init>(Lkotlin/c/f;Z)V

    iput-object p2, p0, Lkotlinx/coroutines/c;->c:Ljava/lang/Thread;

    iput-object p3, p0, Lkotlinx/coroutines/c;->d:Lkotlinx/coroutines/ay;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IZ)V
    .locals 0

    .line 63
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lkotlinx/coroutines/c;->c:Ljava/lang/Thread;

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lkotlinx/coroutines/c;->c:Ljava/lang/Thread;

    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    return-void
.end method

.method public final l_()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 69
    invoke-static {}, Lkotlinx/coroutines/cj;->a()Lkotlinx/coroutines/ci;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/ci;->d()V

    .line 71
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/c;->d:Lkotlinx/coroutines/ay;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v2, v1, v3}, Lkotlinx/coroutines/ay;->a(Lkotlinx/coroutines/ay;ZILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_6

    .line 76
    iget-object v0, p0, Lkotlinx/coroutines/c;->d:Lkotlinx/coroutines/ay;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkotlinx/coroutines/ay;->b()J

    move-result-wide v4

    goto :goto_1

    :cond_1
    const-wide v4, 0x7fffffffffffffffL

    .line 78
    :goto_1
    invoke-virtual {p0}, Lkotlinx/coroutines/c;->q()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    .line 82
    :try_start_2
    iget-object v0, p0, Lkotlinx/coroutines/c;->d:Lkotlinx/coroutines/ay;

    if-eqz v0, :cond_2

    invoke-static {v0, v2, v1, v3}, Lkotlinx/coroutines/ay;->b(Lkotlinx/coroutines/ay;ZILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 85
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/cj;->a()Lkotlinx/coroutines/ci;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/ci;->e()V

    .line 88
    invoke-virtual {p0}, Lkotlinx/coroutines/c;->p()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/br;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 89
    instance-of v1, v0, Lkotlinx/coroutines/t;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, v0

    :goto_2
    check-cast v3, Lkotlinx/coroutines/t;

    if-nez v3, :cond_4

    return-object v0

    :cond_4
    iget-object v0, v3, Lkotlinx/coroutines/t;->a:Ljava/lang/Throwable;

    throw v0

    .line 79
    :cond_5
    :try_start_3
    invoke-static {}, Lkotlinx/coroutines/cj;->a()Lkotlinx/coroutines/ci;

    move-result-object v0

    invoke-interface {v0, p0, v4, v5}, Lkotlinx/coroutines/ci;->a(Ljava/lang/Object;J)V

    goto :goto_0

    .line 75
    :cond_6
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {p0, v4}, Lkotlinx/coroutines/c;->d(Ljava/lang/Throwable;)Z

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 82
    :try_start_4
    iget-object v4, p0, Lkotlinx/coroutines/c;->d:Lkotlinx/coroutines/ay;

    if-eqz v4, :cond_7

    invoke-static {v4, v2, v1, v3}, Lkotlinx/coroutines/ay;->b(Lkotlinx/coroutines/ay;ZILjava/lang/Object;)V

    :cond_7
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 85
    invoke-static {}, Lkotlinx/coroutines/cj;->a()Lkotlinx/coroutines/ci;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/ci;->e()V

    throw v0
.end method
