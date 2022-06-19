.class public final Lkotlinx/coroutines/a/a;
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
        "\u00006\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a#\u0010\u0000\u001a\u00020\u00012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0005H\u0082\u0008\u001a\u001e\u0010\u0006\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00010\u00032\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u0003H\u0000\u001a>\u0010\u0006\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0008*\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00080\u0003\u0012\u0006\u0012\u0004\u0018\u00010\n0\t2\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0003H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000b\u001ay\u0010\u0006\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u000c\"\u0004\u0008\u0001\u0010\u0008*\u001e\u0008\u0001\u0012\u0004\u0012\u0002H\u000c\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00080\u0003\u0012\u0006\u0012\u0004\u0018\u00010\n0\r2\u0006\u0010\u000e\u001a\u0002H\u000c2\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u00032%\u0008\u0002\u0010\u000f\u001a\u001f\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u00020\u0001\u0018\u00010\tH\u0000\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0014\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0015"
    }
    d2 = {
        "runSafely",
        "",
        "completion",
        "Lkotlin/coroutines/Continuation;",
        "block",
        "Lkotlin/Function0;",
        "startCoroutineCancellable",
        "fatalCompletion",
        "T",
        "Lkotlin/Function1;",
        "",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V",
        "R",
        "Lkotlin/Function2;",
        "receiver",
        "onCancellation",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "cause",
        "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V",
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
.method public static final a(Lkotlin/c/d;Lkotlin/c/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/d<",
            "-",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/c/d<",
            "*>;)V"
        }
    .end annotation

    .line 39
    :try_start_0
    invoke-static {p0}, Lkotlin/c/a/b;->a(Lkotlin/c/d;)Lkotlin/c/d;

    move-result-object p0

    sget-object v0, Lkotlin/o;->a:Lkotlin/o$a;

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    invoke-static {v0}, Lkotlin/o;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlinx/coroutines/internal/f;->a(Lkotlin/c/d;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 71
    sget-object v0, Lkotlin/o;->a:Lkotlin/o$a;

    invoke-static {p0}, Lkotlin/p;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/o;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/c/d;->b(Ljava/lang/Object;)V

    return-void
.end method
