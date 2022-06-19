.class public abstract Lkotlinx/coroutines/ax;
.super Lkotlinx/coroutines/b/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/b/j;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u000e\u0008 \u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u00060\u0002j\u0002`\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0010\u00a2\u0006\u0002\u0008\u0011J\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000eH\u0010\u00a2\u0006\u0002\u0008\u0014J\u001f\u0010\u0015\u001a\u0002H\u0001\"\u0004\u0008\u0001\u0010\u00012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000eH\u0010\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001a\u0010\u0018\u001a\u00020\u000c2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0010J\u0006\u0010\u001b\u001a\u00020\u000cJ\u000f\u0010\u001c\u001a\u0004\u0018\u00010\u000eH \u00a2\u0006\u0002\u0008\u001dR\u0018\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008X\u00a0\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lkotlinx/coroutines/DispatchedTask;",
        "T",
        "Lkotlinx/coroutines/scheduling/Task;",
        "Lkotlinx/coroutines/SchedulerTask;",
        "resumeMode",
        "",
        "(I)V",
        "delegate",
        "Lkotlin/coroutines/Continuation;",
        "getDelegate$kotlinx_coroutines_core",
        "()Lkotlin/coroutines/Continuation;",
        "cancelCompletedResult",
        "",
        "takenState",
        "",
        "cause",
        "",
        "cancelCompletedResult$kotlinx_coroutines_core",
        "getExceptionalResult",
        "state",
        "getExceptionalResult$kotlinx_coroutines_core",
        "getSuccessfulResult",
        "getSuccessfulResult$kotlinx_coroutines_core",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "handleFatalException",
        "exception",
        "finallyException",
        "run",
        "takeState",
        "takeState$kotlinx_coroutines_core",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lkotlinx/coroutines/b/j;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/ax;->b:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 239
    invoke-static {p1, p2}, Lkotlin/b;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    if-nez p1, :cond_2

    move-object p1, p2

    .line 144
    :cond_2
    new-instance p2, Lkotlinx/coroutines/an;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fatal exception in coroutines machinery for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 144
    invoke-direct {p2, v0, p1}, Lkotlinx/coroutines/an;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    invoke-virtual {p0}, Lkotlinx/coroutines/ax;->k()Lkotlin/c/d;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/c/d;->b()Lkotlin/c/f;

    move-result-object p1

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {p1, p2}, Lkotlinx/coroutines/ah;->a(Lkotlin/c/f;Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p1
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    .line 79
    instance-of v0, p1, Lkotlinx/coroutines/z;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lkotlinx/coroutines/z;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lkotlinx/coroutines/z;->b:Ljava/lang/Throwable;

    return-object p1

    :cond_1
    return-object v1
.end method

.method public abstract f()Ljava/lang/Object;
.end method

.method public abstract k()Lkotlin/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/c/d<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final run()V
    .locals 10

    .line 82
    invoke-static {}, Lkotlinx/coroutines/ao;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lkotlinx/coroutines/ax;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 83
    :cond_2
    :goto_1
    iget-object v0, p0, Lkotlinx/coroutines/ax;->h:Lkotlinx/coroutines/b/k;

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/ax;->k()Lkotlin/c/d;

    move-result-object v1

    if-eqz v1, :cond_d

    check-cast v1, Lkotlinx/coroutines/internal/e;

    .line 87
    iget-object v2, v1, Lkotlinx/coroutines/internal/e;->f:Lkotlin/c/d;

    .line 88
    iget-object v1, v1, Lkotlinx/coroutines/internal/e;->c:Ljava/lang/Object;

    .line 223
    invoke-interface {v2}, Lkotlin/c/d;->b()Lkotlin/c/f;

    move-result-object v3

    .line 224
    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/z;->a(Lkotlin/c/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 225
    sget-object v4, Lkotlinx/coroutines/internal/z;->a:Lkotlinx/coroutines/internal/v;

    const/4 v5, 0x0

    if-eq v1, v4, :cond_3

    .line 227
    invoke-static {v2, v3, v1}, Lkotlinx/coroutines/ae;->a(Lkotlin/c/d;Lkotlin/c/f;Ljava/lang/Object;)Lkotlinx/coroutines/cs;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_2

    :cond_3
    move-object v4, v5

    .line 89
    :goto_2
    :try_start_1
    invoke-interface {v2}, Lkotlin/c/d;->b()Lkotlin/c/f;

    move-result-object v6

    .line 90
    invoke-virtual {p0}, Lkotlinx/coroutines/ax;->f()Ljava/lang/Object;

    move-result-object v7

    .line 91
    invoke-virtual {p0, v7}, Lkotlinx/coroutines/ax;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    if-nez v8, :cond_4

    .line 97
    iget v9, p0, Lkotlinx/coroutines/ax;->b:I

    invoke-static {v9}, Lkotlinx/coroutines/ay;->a(I)Z

    move-result v9

    if-eqz v9, :cond_4

    sget-object v9, Lkotlinx/coroutines/bv;->c:Lkotlinx/coroutines/bv$b;

    check-cast v9, Lkotlin/c/f$c;

    invoke-interface {v6, v9}, Lkotlin/c/f;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object v6

    check-cast v6, Lkotlinx/coroutines/bv;

    goto :goto_3

    :cond_4
    move-object v6, v5

    :goto_3
    if-eqz v6, :cond_7

    .line 98
    invoke-interface {v6}, Lkotlinx/coroutines/bv;->e()Z

    move-result v9

    if-nez v9, :cond_7

    .line 99
    invoke-interface {v6}, Lkotlinx/coroutines/bv;->m()Ljava/util/concurrent/CancellationException;

    move-result-object v6

    .line 100
    move-object v8, v6

    check-cast v8, Ljava/lang/Throwable;

    invoke-virtual {p0, v7, v8}, Lkotlinx/coroutines/ax;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 233
    sget-object v7, Lkotlin/o;->a:Lkotlin/o$a;

    .line 234
    invoke-static {}, Lkotlinx/coroutines/ao;->c()Z

    move-result v7

    if-eqz v7, :cond_6

    instance-of v7, v2, Lkotlin/c/b/a/d;

    if-nez v7, :cond_5

    goto :goto_4

    .line 235
    :cond_5
    check-cast v6, Ljava/lang/Throwable;

    move-object v7, v2

    check-cast v7, Lkotlin/c/b/a/d;

    invoke-static {v6, v7}, Lkotlinx/coroutines/internal/u;->a(Ljava/lang/Throwable;Lkotlin/c/b/a/d;)Ljava/lang/Throwable;

    move-result-object v6

    goto :goto_5

    .line 234
    :cond_6
    :goto_4
    check-cast v6, Ljava/lang/Throwable;

    .line 233
    :goto_5
    invoke-static {v6}, Lkotlin/p;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/o;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Lkotlin/c/d;->b(Ljava/lang/Object;)V

    goto :goto_6

    :cond_7
    if-eqz v8, :cond_8

    .line 104
    sget-object v6, Lkotlin/o;->a:Lkotlin/o$a;

    invoke-static {v8}, Lkotlin/p;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/o;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Lkotlin/c/d;->b(Ljava/lang/Object;)V

    goto :goto_6

    .line 106
    :cond_8
    invoke-virtual {p0, v7}, Lkotlinx/coroutines/ax;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lkotlin/o;->a:Lkotlin/o$a;

    invoke-static {v6}, Lkotlin/o;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Lkotlin/c/d;->b(Ljava/lang/Object;)V

    .line 109
    :goto_6
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_9

    .line 237
    :try_start_2
    invoke-virtual {v4}, Lkotlinx/coroutines/cs;->r()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 238
    :cond_9
    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/z;->b(Lkotlin/c/f;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 114
    :cond_a
    :try_start_3
    sget-object v1, Lkotlin/o;->a:Lkotlin/o$a;

    invoke-interface {v0}, Lkotlinx/coroutines/b/k;->c()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    invoke-static {v0}, Lkotlin/o;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/o;->a:Lkotlin/o$a;

    invoke-static {v0}, Lkotlin/p;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/o;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 115
    :goto_7
    invoke-static {v0}, Lkotlin/o;->c(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lkotlinx/coroutines/ax;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v2

    if-eqz v4, :cond_b

    .line 237
    :try_start_4
    invoke-virtual {v4}, Lkotlinx/coroutines/cs;->r()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 238
    :cond_b
    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/z;->b(Lkotlin/c/f;Ljava/lang/Object;)V

    :cond_c
    throw v2

    .line 86
    :cond_d
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T>"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    .line 114
    :try_start_5
    sget-object v2, Lkotlin/o;->a:Lkotlin/o$a;

    invoke-interface {v0}, Lkotlinx/coroutines/b/k;->c()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    invoke-static {v0}, Lkotlin/o;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v0

    sget-object v2, Lkotlin/o;->a:Lkotlin/o$a;

    invoke-static {v0}, Lkotlin/p;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/o;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 115
    :goto_8
    invoke-static {v0}, Lkotlin/o;->c(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lkotlinx/coroutines/ax;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void
.end method
