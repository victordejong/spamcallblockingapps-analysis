.class final Lkotlinx/coroutines/ca$a;
.super Lkotlinx/coroutines/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/o<",
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
        "\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u001b\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlinx/coroutines/JobSupport$AwaitContinuation;",
        "T",
        "Lkotlinx/coroutines/CancellableContinuationImpl;",
        "delegate",
        "Lkotlin/coroutines/Continuation;",
        "job",
        "Lkotlinx/coroutines/JobSupport;",
        "(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/JobSupport;)V",
        "getContinuationCancellationCause",
        "",
        "parent",
        "Lkotlinx/coroutines/Job;",
        "nameString",
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
.field private final c:Lkotlinx/coroutines/ca;


# direct methods
.method public constructor <init>(Lkotlin/c/d;Lkotlinx/coroutines/ca;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/d<",
            "-TT;>;",
            "Lkotlinx/coroutines/ca;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1162
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/o;-><init>(Lkotlin/c/d;I)V

    iput-object p2, p0, Lkotlinx/coroutines/ca$a;->c:Lkotlinx/coroutines/ca;

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/bv;)Ljava/lang/Throwable;
    .locals 2

    .line 1164
    iget-object v0, p0, Lkotlinx/coroutines/ca$a;->c:Lkotlinx/coroutines/ca;

    invoke-virtual {v0}, Lkotlinx/coroutines/ca;->p()Ljava/lang/Object;

    move-result-object v0

    .line 1169
    instance-of v1, v0, Lkotlinx/coroutines/ca$c;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/ca$c;

    .line 2086
    iget-object v1, v1, Lkotlinx/coroutines/ca$c;->_rootCause:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    return-object v1

    .line 1170
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/z;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/z;

    iget-object p1, v0, Lkotlinx/coroutines/z;->b:Ljava/lang/Throwable;

    return-object p1

    .line 1171
    :cond_1
    invoke-interface {p1}, Lkotlinx/coroutines/bv;->m()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1
.end method

.method protected final j()Ljava/lang/String;
    .locals 1

    const-string v0, "AwaitContinuation"

    return-object v0
.end method
