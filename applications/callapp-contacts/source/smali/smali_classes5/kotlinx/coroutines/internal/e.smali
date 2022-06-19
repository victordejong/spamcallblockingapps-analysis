.class public final Lkotlinx/coroutines/internal/e;
.super Lkotlinx/coroutines/ax;
.source "SourceFile"

# interfaces
.implements Lkotlin/c/b/a/d;
.implements Lkotlin/c/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/ax<",
        "TT;>;",
        "Lkotlin/c/b/a/d;",
        "Lkotlin/c/d<",
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
        "\u0000~\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\u0008\u0000\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u00028\u00000N2\u00060>j\u0002`?2\u0008\u0012\u0004\u0012\u00028\u00000\u0004B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J!\u0010\u000f\u001a\u00020\u000c2\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0010\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001b\u0010\u0011\u001a\u0004\u0018\u00010\n2\n\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u0010\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0014\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0013\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001f\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00028\u0000H\u0000\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0017\u0010\u001e\u001a\n\u0018\u00010\u001cj\u0004\u0018\u0001`\u001dH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0019\u0010\"\u001a\u00020!2\n\u0010 \u001a\u0006\u0012\u0002\u0008\u00030\u0013\u00a2\u0006\u0004\u0008\"\u0010#J\u0015\u0010$\u001a\u00020!2\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008$\u0010%JH\u0010,\u001a\u00020\u000c2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00028\u00000&2%\u0008\u0008\u0010+\u001a\u001f\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008)\u0012\u0008\u0008*\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010(H\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008,\u0010-J\u001a\u0010/\u001a\u00020!2\u0008\u0010.\u001a\u0004\u0018\u00010\u0008H\u0086\u0008\u00a2\u0006\u0004\u0008/\u00100J!\u00101\u001a\u00020\u000c2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00028\u00000&H\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u00081\u00102J \u00103\u001a\u00020\u000c2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00028\u00000&H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u00083\u00102J\u0011\u00106\u001a\u0004\u0018\u00010\u0008H\u0010\u00a2\u0006\u0004\u00084\u00105J\u000f\u00108\u001a\u000207H\u0016\u00a2\u0006\u0004\u00088\u00109R\u001e\u0010:\u001a\u0004\u0018\u00010\u00088\u0000@\u0000X\u0081\u000e\u00a2\u0006\u000c\n\u0004\u0008:\u0010;\u0012\u0004\u0008<\u0010=R\u001e\u0010B\u001a\n\u0018\u00010>j\u0004\u0018\u0001`?8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008@\u0010AR\u0016\u0010\u0017\u001a\u00020\u00168\u0016@\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008C\u0010DR\u001c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00048\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010ER\u0016\u0010F\u001a\u00020\u00088\u0000@\u0001X\u0081\u0004\u00a2\u0006\u0006\n\u0004\u0008F\u0010;R\u001c\u0010I\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00048P@\u0010X\u0090\u0004\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010HR\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010JR\u0019\u0010L\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00138F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008K\u0010\u0015\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006M"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/DispatchedContinuation;",
        "T",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "dispatcher",
        "Lkotlin/coroutines/Continuation;",
        "continuation",
        "<init>",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/Continuation;)V",
        "",
        "takenState",
        "",
        "cause",
        "",
        "cancelCompletedResult$kotlinx_coroutines_core",
        "(Ljava/lang/Object;Ljava/lang/Throwable;)V",
        "cancelCompletedResult",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "checkPostponedCancellation",
        "(Lkotlinx/coroutines/CancellableContinuation;)Ljava/lang/Throwable;",
        "Lkotlinx/coroutines/CancellableContinuationImpl;",
        "claimReusableCancellableContinuation",
        "()Lkotlinx/coroutines/CancellableContinuationImpl;",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "value",
        "dispatchYield$kotlinx_coroutines_core",
        "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V",
        "dispatchYield",
        "Ljava/lang/StackTraceElement;",
        "Lkotlinx/coroutines/internal/StackTraceElement;",
        "getStackTraceElement",
        "()Ljava/lang/StackTraceElement;",
        "requester",
        "",
        "isReusable",
        "(Lkotlinx/coroutines/CancellableContinuationImpl;)Z",
        "postponeCancellation",
        "(Ljava/lang/Throwable;)Z",
        "Lkotlin/Result;",
        "result",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "onCancellation",
        "resumeCancellableWith",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V",
        "state",
        "resumeCancelled",
        "(Ljava/lang/Object;)Z",
        "resumeUndispatchedWith",
        "(Ljava/lang/Object;)V",
        "resumeWith",
        "takeState$kotlinx_coroutines_core",
        "()Ljava/lang/Object;",
        "takeState",
        "",
        "toString",
        "()Ljava/lang/String;",
        "_state",
        "Ljava/lang/Object;",
        "get_state$kotlinx_coroutines_core$annotations",
        "()V",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "Lkotlinx/coroutines/internal/CoroutineStackFrame;",
        "getCallerFrame",
        "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "callerFrame",
        "getContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "Lkotlin/coroutines/Continuation;",
        "countOrElement",
        "getDelegate$kotlinx_coroutines_core",
        "()Lkotlin/coroutines/Continuation;",
        "delegate",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "getReusableCancellableContinuation",
        "reusableCancellableContinuation",
        "kotlinx-coroutines-core",
        "Lkotlinx/coroutines/DispatchedTask;"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final synthetic d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public volatile synthetic _reusableCancellableContinuation:Ljava/lang/Object;

.field public a:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final e:Lkotlinx/coroutines/af;

.field public final f:Lkotlin/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/c/d<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/internal/e;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_reusableCancellableContinuation"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/e;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/af;Lkotlin/c/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/af;",
            "Lkotlin/c/d<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 22
    invoke-direct {p0, v0}, Lkotlinx/coroutines/ax;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/internal/e;->e:Lkotlinx/coroutines/af;

    iput-object p2, p0, Lkotlinx/coroutines/internal/e;->f:Lkotlin/c/d;

    .line 25
    invoke-static {}, Lkotlinx/coroutines/internal/f;->a()Lkotlinx/coroutines/internal/v;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/internal/e;->a:Ljava/lang/Object;

    .line 29
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/e;->b()Lkotlin/c/f;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/internal/z;->a(Lkotlin/c/f;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/internal/e;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lkotlinx/coroutines/internal/e;->_reusableCancellableContinuation:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/n;)Ljava/lang/Throwable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 304
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/e;->_reusableCancellableContinuation:Ljava/lang/Object;

    .line 134
    sget-object v1, Lkotlinx/coroutines/internal/f;->a:Lkotlinx/coroutines/internal/v;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 135
    sget-object v0, Lkotlinx/coroutines/internal/e;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Lkotlinx/coroutines/internal/f;->a:Lkotlinx/coroutines/internal/v;

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v2

    :cond_1
    if-nez v0, :cond_2

    return-object v2

    .line 138
    :cond_2
    instance-of p1, v0, Ljava/lang/Throwable;

    if-eqz p1, :cond_4

    .line 139
    sget-object p1, Lkotlinx/coroutines/internal/e;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 140
    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    .line 139
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 142
    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Inconsistent state "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 219
    instance-of v0, p1, Lkotlinx/coroutines/aa;

    if-eqz v0, :cond_0

    .line 220
    check-cast p1, Lkotlinx/coroutines/aa;

    iget-object p1, p1, Lkotlinx/coroutines/aa;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final b()Lkotlin/c/f;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/internal/e;->f:Lkotlin/c/d;

    invoke-interface {v0}, Lkotlin/c/d;->b()Lkotlin/c/f;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 7

    .line 179
    iget-object v0, p0, Lkotlinx/coroutines/internal/e;->f:Lkotlin/c/d;

    invoke-interface {v0}, Lkotlin/c/d;->b()Lkotlin/c/f;

    move-result-object v0

    const/4 v1, 0x0

    .line 1013
    invoke-static {p1, v1}, Lkotlinx/coroutines/ac;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    .line 181
    iget-object v3, p0, Lkotlinx/coroutines/internal/e;->e:Lkotlinx/coroutines/af;

    invoke-virtual {v3}, Lkotlinx/coroutines/af;->b()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 182
    iput-object v2, p0, Lkotlinx/coroutines/internal/e;->a:Ljava/lang/Object;

    .line 183
    iput v4, p0, Lkotlinx/coroutines/internal/e;->b:I

    .line 184
    iget-object p1, p0, Lkotlinx/coroutines/internal/e;->e:Lkotlinx/coroutines/af;

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v1}, Lkotlinx/coroutines/af;->a(Lkotlin/c/f;Ljava/lang/Runnable;)V

    return-void

    .line 311
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/ao;->a()Z

    .line 313
    sget-object v0, Lkotlinx/coroutines/cn;->a:Lkotlinx/coroutines/cn;

    invoke-static {}, Lkotlinx/coroutines/cn;->a()Lkotlinx/coroutines/bf;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Lkotlinx/coroutines/bf;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 318
    iput-object v2, p0, Lkotlinx/coroutines/internal/e;->a:Ljava/lang/Object;

    .line 319
    iput v4, p0, Lkotlinx/coroutines/internal/e;->b:I

    .line 320
    move-object p1, p0

    check-cast p1, Lkotlinx/coroutines/ax;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/bf;->a(Lkotlinx/coroutines/ax;)V

    return-void

    .line 324
    :cond_1
    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/ax;

    const/4 v3, 0x1

    .line 325
    invoke-virtual {v0, v3}, Lkotlinx/coroutines/bf;->a(Z)V

    .line 187
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/e;->b()Lkotlin/c/f;

    move-result-object v4

    iget-object v5, p0, Lkotlinx/coroutines/internal/e;->c:Ljava/lang/Object;

    .line 328
    invoke-static {v4, v5}, Lkotlinx/coroutines/internal/z;->a(Lkotlin/c/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 188
    :try_start_1
    iget-object v6, p0, Lkotlinx/coroutines/internal/e;->f:Lkotlin/c/d;

    invoke-interface {v6, p1}, Lkotlin/c/d;->b(Ljava/lang/Object;)V

    .line 189
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    :try_start_2
    invoke-static {v4, v5}, Lkotlinx/coroutines/internal/z;->b(Lkotlin/c/f;Ljava/lang/Object;)V

    .line 335
    :cond_2
    invoke-virtual {v0}, Lkotlinx/coroutines/bf;->f()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p1, :cond_2

    .line 344
    invoke-virtual {v0, v3}, Lkotlinx/coroutines/bf;->b(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 332
    :try_start_3
    invoke-static {v4, v5}, Lkotlinx/coroutines/internal/z;->b(Lkotlin/c/f;Ljava/lang/Object;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 342
    :try_start_4
    invoke-virtual {v2, p1, v1}, Lkotlinx/coroutines/ax;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 344
    invoke-virtual {v0, v3}, Lkotlinx/coroutines/bf;->b(Z)V

    return-void

    :catchall_2
    move-exception p1

    invoke-virtual {v0, v3}, Lkotlinx/coroutines/bf;->b(Z)V

    throw p1
.end method

.method public final c()Lkotlin/c/b/a/d;
    .locals 2

    .line 26
    iget-object v0, p0, Lkotlinx/coroutines/internal/e;->f:Lkotlin/c/d;

    instance-of v1, v0, Lkotlin/c/b/a/d;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lkotlin/c/b/a/d;

    return-object v0
.end method

.method public final d()Ljava/lang/StackTraceElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()Ljava/lang/Object;
    .locals 2

    .line 169
    iget-object v0, p0, Lkotlinx/coroutines/internal/e;->a:Ljava/lang/Object;

    .line 170
    invoke-static {}, Lkotlinx/coroutines/ao;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lkotlinx/coroutines/internal/f;->a()Lkotlinx/coroutines/internal/v;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 171
    :cond_2
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/internal/f;->a()Lkotlinx/coroutines/internal/v;

    move-result-object v1

    iput-object v1, p0, Lkotlinx/coroutines/internal/e;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final k()Lkotlin/c/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/c/d<",
            "TT;>;"
        }
    .end annotation

    .line 176
    move-object v0, p0

    check-cast v0, Lkotlin/c/d;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DispatchedContinuation["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlinx/coroutines/internal/e;->e:Lkotlinx/coroutines/af;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/internal/e;->f:Lkotlin/c/d;

    invoke-static {v1}, Lkotlinx/coroutines/ap;->a(Lkotlin/c/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
