.class public final Lkotlinx/coroutines/ay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a \u0010\u000c\u001a\u00020\r\"\u0004\u0008\u0000\u0010\u000e*\u0008\u0012\u0004\u0012\u0002H\u000e0\u000f2\u0006\u0010\u0010\u001a\u00020\u0001H\u0000\u001a.\u0010\u0011\u001a\u00020\r\"\u0004\u0008\u0000\u0010\u000e*\u0008\u0012\u0004\u0012\u0002H\u000e0\u000f2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\u00132\u0006\u0010\u0014\u001a\u00020\tH\u0000\u001a\u0010\u0010\u0015\u001a\u00020\r*\u0006\u0012\u0002\u0008\u00030\u000fH\u0002\u001a\u0019\u0010\u0016\u001a\u00020\r*\u0006\u0012\u0002\u0008\u00030\u00132\u0006\u0010\u0017\u001a\u00020\u0018H\u0080\u0008\u001a\'\u0010\u0019\u001a\u00020\r*\u0006\u0012\u0002\u0008\u00030\u000f2\u0006\u0010\u001a\u001a\u00020\u001b2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u001dH\u0080\u0008\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u0016\u0010\u0002\u001a\u00020\u00018\u0000X\u0081T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0003\u0010\u0004\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u0018\u0010\u0008\u001a\u00020\t*\u00020\u00018@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\n\"\u0018\u0010\u000b\u001a\u00020\t*\u00020\u00018@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\n\u00a8\u0006\u001e"
    }
    d2 = {
        "MODE_ATOMIC",
        "",
        "MODE_CANCELLABLE",
        "getMODE_CANCELLABLE$annotations",
        "()V",
        "MODE_CANCELLABLE_REUSABLE",
        "MODE_UNDISPATCHED",
        "MODE_UNINITIALIZED",
        "isCancellableMode",
        "",
        "(I)Z",
        "isReusableMode",
        "dispatch",
        "",
        "T",
        "Lkotlinx/coroutines/DispatchedTask;",
        "mode",
        "resume",
        "delegate",
        "Lkotlin/coroutines/Continuation;",
        "undispatched",
        "resumeUnconfined",
        "resumeWithStackTrace",
        "exception",
        "",
        "runUnconfinedEventLoop",
        "eventLoop",
        "Lkotlinx/coroutines/EventLoop;",
        "block",
        "Lkotlin/Function0;",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private static final a(Lkotlinx/coroutines/ax;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/ax<",
            "*>;)V"
        }
    .end annotation

    .line 183
    sget-object v0, Lkotlinx/coroutines/cn;->a:Lkotlinx/coroutines/cn;

    invoke-static {}, Lkotlinx/coroutines/cn;->a()Lkotlinx/coroutines/bf;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lkotlinx/coroutines/bf;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/bf;->a(Lkotlinx/coroutines/ax;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 239
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/bf;->a(Z)V

    .line 190
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/ax;->k()Lkotlin/c/d;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lkotlinx/coroutines/ay;->a(Lkotlinx/coroutines/ax;Lkotlin/c/d;Z)V

    .line 244
    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/bf;->f()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 253
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/bf;->b(Z)V

    return-void

    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    .line 251
    :try_start_1
    invoke-virtual {p0, v2, v3}, Lkotlinx/coroutines/ax;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 253
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/bf;->b(Z)V

    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/bf;->b(Z)V

    throw p0
.end method

.method public static final a(Lkotlinx/coroutines/ax;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/ax<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 151
    invoke-static {}, Lkotlinx/coroutines/ao;->a()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 152
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lkotlinx/coroutines/ax;->k()Lkotlin/c/d;

    move-result-object v0

    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_5

    .line 154
    instance-of v2, v0, Lkotlinx/coroutines/internal/e;

    if-eqz v2, :cond_5

    invoke-static {p1}, Lkotlinx/coroutines/ay;->a(I)Z

    move-result p1

    iget v2, p0, Lkotlinx/coroutines/ax;->b:I

    invoke-static {v2}, Lkotlinx/coroutines/ay;->a(I)Z

    move-result v2

    if-ne p1, v2, :cond_5

    .line 156
    move-object p1, v0

    check-cast p1, Lkotlinx/coroutines/internal/e;

    iget-object p1, p1, Lkotlinx/coroutines/internal/e;->e:Lkotlinx/coroutines/af;

    .line 157
    invoke-interface {v0}, Lkotlin/c/d;->b()Lkotlin/c/f;

    move-result-object v0

    .line 158
    invoke-virtual {p1}, Lkotlinx/coroutines/af;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 159
    check-cast p0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/af;->a(Lkotlin/c/f;Ljava/lang/Runnable;)V

    return-void

    .line 161
    :cond_4
    invoke-static {p0}, Lkotlinx/coroutines/ay;->a(Lkotlinx/coroutines/ax;)V

    return-void

    .line 166
    :cond_5
    invoke-static {p0, v0, v1}, Lkotlinx/coroutines/ay;->a(Lkotlinx/coroutines/ax;Lkotlin/c/d;Z)V

    return-void
.end method

.method private static a(Lkotlinx/coroutines/ax;Lkotlin/c/d;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/ax<",
            "-TT;>;",
            "Lkotlin/c/d<",
            "-TT;>;Z)V"
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lkotlinx/coroutines/ax;->f()Ljava/lang/Object;

    move-result-object v0

    .line 174
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/ax;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 175
    sget-object p0, Lkotlin/o;->a:Lkotlin/o$a;

    invoke-static {v1}, Lkotlin/p;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v1, Lkotlin/o;->a:Lkotlin/o$a;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/ax;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/o;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p2, :cond_6

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T>"

    .line 177
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/internal/e;

    .line 223
    iget-object p2, p1, Lkotlinx/coroutines/internal/e;->f:Lkotlin/c/d;

    iget-object v0, p1, Lkotlinx/coroutines/internal/e;->c:Ljava/lang/Object;

    .line 224
    invoke-interface {p2}, Lkotlin/c/d;->b()Lkotlin/c/f;

    move-result-object v1

    .line 225
    invoke-static {v1, v0}, Lkotlinx/coroutines/internal/z;->a(Lkotlin/c/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 226
    sget-object v2, Lkotlinx/coroutines/internal/z;->a:Lkotlinx/coroutines/internal/v;

    if-eq v0, v2, :cond_1

    .line 228
    invoke-static {p2, v1, v0}, Lkotlinx/coroutines/ae;->a(Lkotlin/c/d;Lkotlin/c/f;Ljava/lang/Object;)Lkotlinx/coroutines/cs;

    move-result-object p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 234
    :goto_1
    :try_start_0
    iget-object p1, p1, Lkotlinx/coroutines/internal/e;->f:Lkotlin/c/d;

    invoke-interface {p1, p0}, Lkotlin/c/d;->b(Ljava/lang/Object;)V

    .line 235
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    .line 236
    invoke-virtual {p2}, Lkotlinx/coroutines/cs;->r()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 237
    :cond_2
    invoke-static {v1, v0}, Lkotlinx/coroutines/internal/z;->b(Lkotlin/c/f;Ljava/lang/Object;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_4

    .line 236
    invoke-virtual {p2}, Lkotlinx/coroutines/cs;->r()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 237
    :cond_4
    invoke-static {v1, v0}, Lkotlinx/coroutines/internal/z;->b(Lkotlin/c/f;Ljava/lang/Object;)V

    :cond_5
    throw p0

    .line 178
    :cond_6
    invoke-interface {p1, p0}, Lkotlin/c/d;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public static final a(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static final b(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
