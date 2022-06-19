.class public final Lkotlinx/coroutines/q;
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
        "\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\"\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0004H\u0000\u001a3\u0010\u0005\u001a\u0002H\u0002\"\u0004\u0008\u0000\u0010\u00022\u001a\u0008\u0004\u0010\u0006\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007H\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\n\u001a3\u0010\u000b\u001a\u0002H\u0002\"\u0004\u0008\u0000\u0010\u00022\u001a\u0008\u0004\u0010\u0006\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007H\u0080H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\n\u001a\u0018\u0010\u000c\u001a\u00020\t*\u0006\u0012\u0002\u0008\u00030\u00082\u0006\u0010\r\u001a\u00020\u000eH\u0007\u001a\u0018\u0010\u000f\u001a\u00020\t*\u0006\u0012\u0002\u0008\u00030\u00082\u0006\u0010\u0010\u001a\u00020\u0011H\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0012"
    }
    d2 = {
        "getOrCreateCancellableContinuation",
        "Lkotlinx/coroutines/CancellableContinuationImpl;",
        "T",
        "delegate",
        "Lkotlin/coroutines/Continuation;",
        "suspendCancellableCoroutine",
        "block",
        "Lkotlin/Function1;",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "suspendCancellableCoroutineReusable",
        "disposeOnCancellation",
        "handle",
        "Lkotlinx/coroutines/DisposableHandle;",
        "removeOnCancellation",
        "node",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
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
.method public static final a(Lkotlinx/coroutines/n;Lkotlinx/coroutines/bb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n<",
            "*>;",
            "Lkotlinx/coroutines/bb;",
            ")V"
        }
    .end annotation

    .line 374
    new-instance v0, Lkotlinx/coroutines/bc;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/bc;-><init>(Lkotlinx/coroutines/bb;)V

    check-cast v0, Lkotlinx/coroutines/m;

    .line 390
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 374
    invoke-interface {p0, v0}, Lkotlinx/coroutines/n;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
