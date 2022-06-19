.class public final Lkotlinx/coroutines/av;
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
        "\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a\u0011\u0010\u0005\u001a\u00020\u0006H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u001a\u0019\u0010\u0000\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000b\u001a!\u0010\u0000\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0087@\u00f8\u0001\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u001a\u0019\u0010\u0010\u001a\u00020\n*\u00020\rH\u0001\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0013"
    }
    d2 = {
        "delay",
        "Lkotlinx/coroutines/Delay;",
        "Lkotlin/coroutines/CoroutineContext;",
        "getDelay",
        "(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Delay;",
        "awaitCancellation",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "timeMillis",
        "",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "duration",
        "Lkotlin/time/Duration;",
        "delay-VtjQ1oo",
        "(DLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "toDelayMillis",
        "toDelayMillis-LRDsOJo",
        "(D)J",
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
.method public static final a(Lkotlin/c/f;)Lkotlinx/coroutines/au;
    .locals 1

    .line 145
    sget-object v0, Lkotlin/c/e;->a:Lkotlin/c/e$a;

    check-cast v0, Lkotlin/c/f$c;

    invoke-interface {p0, v0}, Lkotlin/c/f;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object p0

    instance-of v0, p0, Lkotlinx/coroutines/au;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Lkotlinx/coroutines/au;

    if-nez p0, :cond_1

    invoke-static {}, Lkotlinx/coroutines/ar;->a()Lkotlinx/coroutines/au;

    move-result-object p0

    :cond_1
    return-object p0
.end method
