.class public final Lkotlinx/coroutines/u;
.super Lkotlinx/coroutines/bw;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/t;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0096\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlinx/coroutines/ChildHandleNode;",
        "Lkotlinx/coroutines/JobCancellingNode;",
        "Lkotlinx/coroutines/ChildHandle;",
        "childJob",
        "Lkotlinx/coroutines/ChildJob;",
        "(Lkotlinx/coroutines/ChildJob;)V",
        "childCancelled",
        "",
        "cause",
        "",
        "invoke",
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
.field public final a:Lkotlinx/coroutines/v;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/v;)V
    .locals 0

    .line 1461
    invoke-direct {p0}, Lkotlinx/coroutines/bw;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/u;->a:Lkotlinx/coroutines/v;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1462
    iget-object p1, p0, Lkotlinx/coroutines/u;->a:Lkotlinx/coroutines/v;

    invoke-virtual {p0}, Lkotlinx/coroutines/u;->c()Lkotlinx/coroutines/ca;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/ci;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/v;->a(Lkotlinx/coroutines/ci;)V

    return-void
.end method

.method public final b(Ljava/lang/Throwable;)Z
    .locals 3

    .line 1463
    invoke-virtual {p0}, Lkotlinx/coroutines/u;->c()Lkotlinx/coroutines/ca;

    move-result-object v0

    .line 1650
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 1651
    :cond_0
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/ca;->e(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lkotlinx/coroutines/ca;->av_()Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1459
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/u;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
