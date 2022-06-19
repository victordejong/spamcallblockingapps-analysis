.class public final Lkotlinx/coroutines/s;
.super Lkotlinx/coroutines/bw;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0002\u0010\u0004J\u0013\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0096\u0002R\u0014\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lkotlinx/coroutines/ChildContinuation;",
        "Lkotlinx/coroutines/JobCancellingNode;",
        "child",
        "Lkotlinx/coroutines/CancellableContinuationImpl;",
        "(Lkotlinx/coroutines/CancellableContinuationImpl;)V",
        "invoke",
        "",
        "cause",
        "",
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
.field public final a:Lkotlinx/coroutines/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/o<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/o<",
            "*>;)V"
        }
    .end annotation

    .line 1469
    invoke-direct {p0}, Lkotlinx/coroutines/bw;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/s;->a:Lkotlinx/coroutines/o;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 7

    .line 1471
    iget-object p1, p0, Lkotlinx/coroutines/s;->a:Lkotlinx/coroutines/o;

    invoke-virtual {p0}, Lkotlinx/coroutines/s;->c()Lkotlinx/coroutines/ca;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/bv;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/o;->a(Lkotlinx/coroutines/bv;)Ljava/lang/Throwable;

    move-result-object v0

    .line 3190
    iget v1, p1, Lkotlinx/coroutines/o;->b:I

    invoke-static {v1}, Lkotlinx/coroutines/ay;->b(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    :goto_0
    const/4 v2, 0x0

    goto :goto_1

    .line 3191
    :cond_0
    iget-object v1, p1, Lkotlinx/coroutines/o;->a:Lkotlin/c/d;

    instance-of v4, v1, Lkotlinx/coroutines/internal/e;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    move-object v1, v5

    :cond_1
    check-cast v1, Lkotlinx/coroutines/internal/e;

    if-nez v1, :cond_2

    goto :goto_0

    .line 4306
    :cond_2
    iget-object v4, v1, Lkotlinx/coroutines/internal/e;->_reusableCancellableContinuation:Ljava/lang/Object;

    .line 4154
    sget-object v6, Lkotlinx/coroutines/internal/f;->a:Lkotlinx/coroutines/internal/v;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4155
    sget-object v4, Lkotlinx/coroutines/internal/e;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v6, Lkotlinx/coroutines/internal/f;->a:Lkotlinx/coroutines/internal/v;

    invoke-virtual {v4, v1, v6, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 4158
    :cond_3
    instance-of v6, v4, Ljava/lang/Throwable;

    if-eqz v6, :cond_4

    goto :goto_1

    .line 4161
    :cond_4
    sget-object v6, Lkotlinx/coroutines/internal/e;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6, v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :goto_1
    if-nez v2, :cond_5

    .line 2212
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/o;->b(Ljava/lang/Throwable;)Z

    .line 2214
    invoke-virtual {p1}, Lkotlinx/coroutines/o;->h()V

    :cond_5
    return-void
.end method

.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1467
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/s;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
