.class public final Lkotlinx/coroutines/ac;
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
        "\u00008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a4\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0006H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u001aI\u0010\u0008\u001a\u0004\u0018\u00010\u0004\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00012%\u0008\u0002\u0010\t\u001a\u001f\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\nH\u0000\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010\u001a.\u0010\u0008\u001a\u0004\u0018\u00010\u0004\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00012\n\u0010\u0011\u001a\u0006\u0012\u0002\u0008\u00030\u0012H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0014"
    }
    d2 = {
        "recoverResult",
        "Lkotlin/Result;",
        "T",
        "state",
        "",
        "uCont",
        "Lkotlin/coroutines/Continuation;",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "toState",
        "onCancellation",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "cause",
        "",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "caller",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)Ljava/lang/Object;",
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
.method public static final a(Ljava/lang/Object;Lkotlin/c/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lkotlin/c/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 26
    instance-of v0, p0, Lkotlinx/coroutines/z;

    if-eqz v0, :cond_2

    .line 27
    sget-object v0, Lkotlin/o;->a:Lkotlin/o$a;

    check-cast p0, Lkotlinx/coroutines/z;

    iget-object p0, p0, Lkotlinx/coroutines/z;->b:Ljava/lang/Throwable;

    .line 70
    invoke-static {}, Lkotlinx/coroutines/ao;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lkotlin/c/b/a/d;

    if-nez v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    check-cast p1, Lkotlin/c/b/a/d;

    invoke-static {p0, p1}, Lkotlinx/coroutines/internal/u;->a(Ljava/lang/Throwable;Lkotlin/c/b/a/d;)Ljava/lang/Throwable;

    move-result-object p0

    .line 27
    :cond_1
    :goto_0
    invoke-static {p0}, Lkotlin/p;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/o;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 29
    :cond_2
    sget-object p1, Lkotlin/o;->a:Lkotlin/o$a;

    invoke-static {p0}, Lkotlin/o;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 14
    invoke-static {p0}, Lkotlin/o;->c(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 15
    new-instance v0, Lkotlinx/coroutines/aa;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/aa;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    return-object v0

    :cond_0
    return-object p0

    .line 16
    :cond_1
    new-instance p0, Lkotlinx/coroutines/z;

    const/4 p1, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lkotlinx/coroutines/z;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
