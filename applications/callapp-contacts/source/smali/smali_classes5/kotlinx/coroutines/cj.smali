.class final Lkotlinx/coroutines/cj;
.super Lkotlinx/coroutines/bz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/bz;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0013\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0002\u0010\u0005J\u0013\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0096\u0002R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lkotlinx/coroutines/ResumeAwaitOnCompletion;",
        "T",
        "Lkotlinx/coroutines/JobNode;",
        "continuation",
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
.field private final a:Lkotlinx/coroutines/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/o<",
            "TT;>;"
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
            "-TT;>;)V"
        }
    .end annotation

    .line 1400
    invoke-direct {p0}, Lkotlinx/coroutines/bz;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/cj;->a:Lkotlinx/coroutines/o;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1402
    invoke-virtual {p0}, Lkotlinx/coroutines/cj;->c()Lkotlinx/coroutines/ca;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/coroutines/ca;->p()Ljava/lang/Object;

    move-result-object p1

    .line 1403
    invoke-static {}, Lkotlinx/coroutines/ao;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lkotlinx/coroutines/bq;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1404
    :cond_1
    :goto_0
    instance-of v0, p1, Lkotlinx/coroutines/z;

    if-eqz v0, :cond_2

    .line 1406
    iget-object v0, p0, Lkotlinx/coroutines/cj;->a:Lkotlinx/coroutines/o;

    check-cast v0, Lkotlin/c/d;

    check-cast p1, Lkotlinx/coroutines/z;

    iget-object p1, p1, Lkotlinx/coroutines/z;->b:Ljava/lang/Throwable;

    sget-object v1, Lkotlin/o;->a:Lkotlin/o$a;

    invoke-static {p1}, Lkotlin/p;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/o;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/c/d;->b(Ljava/lang/Object;)V

    return-void

    .line 1410
    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/cj;->a:Lkotlinx/coroutines/o;

    check-cast v0, Lkotlin/c/d;

    invoke-static {p1}, Lkotlinx/coroutines/cb;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lkotlin/o;->a:Lkotlin/o$a;

    invoke-static {p1}, Lkotlin/o;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/c/d;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1398
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/cj;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
