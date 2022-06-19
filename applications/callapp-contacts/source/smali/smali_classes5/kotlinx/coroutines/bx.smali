.class public final Lkotlinx/coroutines/bx;
.super Lkotlinx/coroutines/ca;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/x;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0003\n\u0000\u0008\u0010\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u000c\u001a\u00020\u0007H\u0016J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0006\u001a\u00020\u0007H\u0003R\u0014\u0010\u0006\u001a\u00020\u0007X\u0090\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u00078PX\u0090\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\t\u00a8\u0006\u0010"
    }
    d2 = {
        "Lkotlinx/coroutines/JobImpl;",
        "Lkotlinx/coroutines/JobSupport;",
        "Lkotlinx/coroutines/CompletableJob;",
        "parent",
        "Lkotlinx/coroutines/Job;",
        "(Lkotlinx/coroutines/Job;)V",
        "handlesException",
        "",
        "getHandlesException$kotlinx_coroutines_core",
        "()Z",
        "onCancelComplete",
        "getOnCancelComplete$kotlinx_coroutines_core",
        "complete",
        "completeExceptionally",
        "exception",
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
.field private final a:Z


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/bv;)V
    .locals 4

    const/4 v0, 0x1

    .line 1313
    invoke-direct {p0, v0}, Lkotlinx/coroutines/ca;-><init>(Z)V

    .line 1314
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/bx;->a(Lkotlinx/coroutines/bv;)V

    .line 2333
    invoke-virtual {p0}, Lkotlinx/coroutines/bx;->o()Lkotlinx/coroutines/t;

    move-result-object p1

    instance-of v1, p1, Lkotlinx/coroutines/u;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object p1, v2

    :cond_0
    check-cast p1, Lkotlinx/coroutines/u;

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lkotlinx/coroutines/u;->c()Lkotlinx/coroutines/ca;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 2335
    :cond_1
    invoke-virtual {p1}, Lkotlinx/coroutines/ca;->av_()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 2336
    :cond_2
    invoke-virtual {p1}, Lkotlinx/coroutines/ca;->o()Lkotlinx/coroutines/t;

    move-result-object p1

    instance-of v3, p1, Lkotlinx/coroutines/u;

    if-nez v3, :cond_3

    move-object p1, v2

    :cond_3
    check-cast p1, Lkotlinx/coroutines/u;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lkotlinx/coroutines/u;->c()Lkotlinx/coroutines/ca;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_4
    :goto_0
    const/4 v0, 0x0

    .line 1326
    :goto_1
    iput-boolean v0, p0, Lkotlinx/coroutines/bx;->a:Z

    return-void
.end method


# virtual methods
.method public final au_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final av_()Z
    .locals 1

    .line 1326
    iget-boolean v0, p0, Lkotlinx/coroutines/bx;->a:Z

    return v0
.end method
