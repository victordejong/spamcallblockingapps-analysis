.class public final Lkotlinx/coroutines/ao;
.super Lkotlinx/coroutines/ar;
.source "Dispatched.kt"

# interfaces
.implements Lkotlin/c/b/a/e;
.implements Lkotlin/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/ar<",
        "TT;>;",
        "Lkotlin/c/b/a/e;",
        "Lkotlin/c/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Lkotlinx/coroutines/y;

.field public final d:Lkotlin/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/c/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final h:Lkotlin/c/b/a/e;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/y;Lkotlin/c/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/y;",
            "Lkotlin/c/c<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, v0}, Lkotlinx/coroutines/ar;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/ao;->c:Lkotlinx/coroutines/y;

    iput-object p2, p0, Lkotlinx/coroutines/ao;->d:Lkotlin/c/c;

    .line 82
    invoke-static {}, Lkotlinx/coroutines/aq;->a()Lkotlinx/coroutines/internal/u;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/ao;->a:Ljava/lang/Object;

    .line 83
    iget-object p1, p0, Lkotlinx/coroutines/ao;->d:Lkotlin/c/c;

    instance-of p2, p1, Lkotlin/c/b/a/e;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lkotlin/c/b/a/e;

    iput-object p1, p0, Lkotlinx/coroutines/ao;->h:Lkotlin/c/b/a/e;

    .line 86
    invoke-virtual {p0}, Lkotlinx/coroutines/ao;->a()Lkotlin/c/f;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/internal/w;->a(Lkotlin/c/f;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/ao;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lkotlin/c/f;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/ao;->d:Lkotlin/c/c;

    invoke-interface {v0}, Lkotlin/c/c;->a()Lkotlin/c/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 5

    .line 99
    iget-object v0, p0, Lkotlinx/coroutines/ao;->d:Lkotlin/c/c;

    invoke-interface {v0}, Lkotlin/c/c;->a()Lkotlin/c/f;

    move-result-object v0

    .line 100
    invoke-static {p1}, Lkotlinx/coroutines/u;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 101
    iget-object v2, p0, Lkotlinx/coroutines/ao;->c:Lkotlinx/coroutines/y;

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/y;->a(Lkotlin/c/f;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 102
    iput-object v1, p0, Lkotlinx/coroutines/ao;->a:Ljava/lang/Object;

    .line 103
    iput v3, p0, Lkotlinx/coroutines/ao;->e:I

    .line 104
    iget-object p1, p0, Lkotlinx/coroutines/ao;->c:Lkotlinx/coroutines/y;

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v1}, Lkotlinx/coroutines/y;->a(Lkotlin/c/f;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 285
    :cond_0
    sget-object v0, Lkotlinx/coroutines/cf;->a:Lkotlinx/coroutines/cf;

    invoke-virtual {v0}, Lkotlinx/coroutines/cf;->a()Lkotlinx/coroutines/ay;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Lkotlinx/coroutines/ay;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    iput-object v1, p0, Lkotlinx/coroutines/ao;->a:Ljava/lang/Object;

    .line 291
    iput v3, p0, Lkotlinx/coroutines/ao;->e:I

    .line 292
    move-object p1, p0

    check-cast p1, Lkotlinx/coroutines/ar;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/ay;->a(Lkotlinx/coroutines/ar;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 297
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/ay;->a(Z)V

    .line 107
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/ao;->a()Lkotlin/c/f;

    move-result-object v2

    iget-object v3, p0, Lkotlinx/coroutines/ao;->b:Ljava/lang/Object;

    .line 300
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/w;->a(Lkotlin/c/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    :try_start_1
    iget-object v4, p0, Lkotlinx/coroutines/ao;->d:Lkotlin/c/c;

    invoke-interface {v4, p1}, Lkotlin/c/c;->a(Ljava/lang/Object;)V

    .line 109
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    :try_start_2
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/w;->b(Lkotlin/c/f;Ljava/lang/Object;)V

    .line 307
    :cond_2
    invoke-virtual {v0}, Lkotlinx/coroutines/ay;->e()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p1, :cond_2

    .line 316
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/ay;->b(Z)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 304
    :try_start_3
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/w;->b(Lkotlin/c/f;Ljava/lang/Object;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 323
    :try_start_4
    new-instance v2, Lkotlinx/coroutines/DispatchException;

    const-string v3, "Unexpected exception in unconfined event loop"

    invoke-direct {v2, v3, p1}, Lkotlinx/coroutines/DispatchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    .line 316
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/ay;->b(Z)V

    throw p1
.end method

.method public c()Lkotlin/c/b/a/e;
    .locals 1

    .line 83
    iget-object v0, p0, Lkotlinx/coroutines/ao;->h:Lkotlin/c/b/a/e;

    return-object v0
.end method

.method public d()Ljava/lang/StackTraceElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/lang/Object;
    .locals 2

    .line 89
    iget-object v0, p0, Lkotlinx/coroutines/ao;->a:Ljava/lang/Object;

    .line 90
    invoke-static {}, Lkotlinx/coroutines/aq;->a()Lkotlinx/coroutines/internal/u;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 91
    invoke-static {}, Lkotlinx/coroutines/aq;->a()Lkotlinx/coroutines/internal/u;

    move-result-object v1

    iput-object v1, p0, Lkotlinx/coroutines/ao;->a:Ljava/lang/Object;

    return-object v0

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public i()Lkotlin/c/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/c/c<",
            "TT;>;"
        }
    .end annotation

    .line 96
    move-object v0, p0

    check-cast v0, Lkotlin/c/c;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DispatchedContinuation["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/ao;->c:Lkotlinx/coroutines/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/ao;->d:Lkotlin/c/c;

    invoke-static {v1}, Lkotlinx/coroutines/ag;->a(Lkotlin/c/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
