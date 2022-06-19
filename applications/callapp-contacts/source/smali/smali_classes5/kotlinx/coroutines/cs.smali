.class public final Lkotlinx/coroutines/cs;
.super Lkotlinx/coroutines/internal/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/t<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0002\u0010\u0007J\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\nH\u0014J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0018\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0011\u001a\u0004\u0018\u00010\nR\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlinx/coroutines/UndispatchedCoroutine;",
        "T",
        "Lkotlinx/coroutines/internal/ScopeCoroutine;",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "uCont",
        "Lkotlin/coroutines/Continuation;",
        "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V",
        "savedContext",
        "savedOldValue",
        "",
        "afterResume",
        "",
        "state",
        "clearThreadContext",
        "",
        "saveThreadContext",
        "oldValue",
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
.field e:Lkotlin/c/f;

.field f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/c/f;Lkotlin/c/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/f;",
            "Lkotlin/c/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 116
    sget-object v0, Lkotlinx/coroutines/ct;->a:Lkotlinx/coroutines/ct;

    check-cast v0, Lkotlin/c/f$c;

    invoke-interface {p1, v0}, Lkotlin/c/f;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lkotlinx/coroutines/ct;->a:Lkotlinx/coroutines/ct;

    check-cast v0, Lkotlin/c/f;

    invoke-interface {p1, v0}, Lkotlin/c/f;->plus(Lkotlin/c/f;)Lkotlin/c/f;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/internal/t;-><init>(Lkotlin/c/f;Lkotlin/c/d;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)V
    .locals 5

    .line 134
    iget-object v0, p0, Lkotlinx/coroutines/cs;->e:Lkotlin/c/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 135
    iget-object v2, p0, Lkotlinx/coroutines/cs;->f:Ljava/lang/Object;

    invoke-static {v0, v2}, Lkotlinx/coroutines/internal/z;->b(Lkotlin/c/f;Ljava/lang/Object;)V

    .line 136
    iput-object v1, p0, Lkotlinx/coroutines/cs;->e:Lkotlin/c/f;

    .line 137
    iput-object v1, p0, Lkotlinx/coroutines/cs;->f:Ljava/lang/Object;

    .line 140
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/cs;->g:Lkotlin/c/d;

    invoke-static {p1, v0}, Lkotlinx/coroutines/ac;->a(Ljava/lang/Object;Lkotlin/c/d;)Ljava/lang/Object;

    move-result-object p1

    .line 141
    iget-object v0, p0, Lkotlinx/coroutines/cs;->g:Lkotlin/c/d;

    .line 183
    invoke-interface {v0}, Lkotlin/c/d;->b()Lkotlin/c/f;

    move-result-object v2

    .line 184
    invoke-static {v2, v1}, Lkotlinx/coroutines/internal/z;->a(Lkotlin/c/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 185
    sget-object v4, Lkotlinx/coroutines/internal/z;->a:Lkotlinx/coroutines/internal/v;

    if-eq v3, v4, :cond_1

    .line 187
    invoke-static {v0, v2, v3}, Lkotlinx/coroutines/ae;->a(Lkotlin/c/d;Lkotlin/c/f;Ljava/lang/Object;)Lkotlinx/coroutines/cs;

    move-result-object v1

    .line 142
    :cond_1
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/cs;->g:Lkotlin/c/d;

    invoke-interface {v0, p1}, Lkotlin/c/d;->b(Ljava/lang/Object;)V

    .line 143
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 194
    invoke-virtual {v1}, Lkotlinx/coroutines/cs;->r()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 195
    :cond_2
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/z;->b(Lkotlin/c/f;Ljava/lang/Object;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_4

    .line 194
    invoke-virtual {v1}, Lkotlinx/coroutines/cs;->r()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 195
    :cond_4
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/z;->b(Lkotlin/c/f;Ljava/lang/Object;)V

    :cond_5
    throw p1
.end method

.method public final r()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lkotlinx/coroutines/cs;->e:Lkotlin/c/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lkotlinx/coroutines/cs;->e:Lkotlin/c/f;

    .line 129
    iput-object v0, p0, Lkotlinx/coroutines/cs;->f:Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method
