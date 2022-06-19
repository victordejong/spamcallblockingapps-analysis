.class public Lkotlinx/coroutines/internal/t;
.super Lkotlinx/coroutines/a;
.source "SourceFile"

# interfaces
.implements Lkotlin/c/b/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/a<",
        "TT;>;",
        "Lkotlin/c/b/a/d;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0010\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u0004B\u001b\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u00a2\u0006\u0002\u0010\tJ\u0012\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\u0012\u0010\u0018\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\u000e\u0010\u0019\u001a\n\u0018\u00010\u001aj\u0004\u0018\u0001`\u001bR\u0019\u0010\n\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u000e8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000fR\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u00118@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/ScopeCoroutine;",
        "T",
        "Lkotlinx/coroutines/AbstractCoroutine;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "Lkotlinx/coroutines/internal/CoroutineStackFrame;",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "uCont",
        "Lkotlin/coroutines/Continuation;",
        "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V",
        "callerFrame",
        "getCallerFrame",
        "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "isScopedCoroutine",
        "",
        "()Z",
        "parent",
        "Lkotlinx/coroutines/Job;",
        "getParent$kotlinx_coroutines_core",
        "()Lkotlinx/coroutines/Job;",
        "afterCompletion",
        "",
        "state",
        "",
        "afterResume",
        "getStackTraceElement",
        "Ljava/lang/StackTraceElement;",
        "Lkotlinx/coroutines/internal/StackTraceElement;",
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
.field public final g:Lkotlin/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/c/d<",
            "TT;>;"
        }
    .end annotation
.end field


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

    const/4 v0, 0x1

    .line 18
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/a;-><init>(Lkotlin/c/f;Z)V

    iput-object p2, p0, Lkotlinx/coroutines/internal/t;->g:Lkotlin/c/d;

    return-void
.end method


# virtual methods
.method public final aA_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c()Lkotlin/c/b/a/d;
    .locals 2

    .line 19
    iget-object v0, p0, Lkotlinx/coroutines/internal/t;->g:Lkotlin/c/d;

    instance-of v1, v0, Lkotlin/c/b/a/d;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lkotlin/c/b/a/d;

    return-object v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lkotlinx/coroutines/internal/t;->g:Lkotlin/c/d;

    invoke-static {p1, v0}, Lkotlinx/coroutines/ac;->a(Ljava/lang/Object;Lkotlin/c/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/c/d;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final d()Ljava/lang/StackTraceElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 2

    .line 27
    iget-object v0, p0, Lkotlinx/coroutines/internal/t;->g:Lkotlin/c/d;

    invoke-static {v0}, Lkotlin/c/a/b;->a(Lkotlin/c/d;)Lkotlin/c/d;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/internal/t;->g:Lkotlin/c/d;

    invoke-static {p1, v1}, Lkotlinx/coroutines/ac;->a(Ljava/lang/Object;Lkotlin/c/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlinx/coroutines/internal/f;->a(Lkotlin/c/d;Ljava/lang/Object;)V

    return-void
.end method
