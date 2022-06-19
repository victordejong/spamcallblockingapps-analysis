.class final Lkotlinx/coroutines/cd;
.super Lkotlinx/coroutines/cl;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\'\u0010\u0004\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0005\u00a2\u0006\u0002\u0008\n\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\r\u001a\u00020\u0008H\u0014R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlinx/coroutines/LazyStandaloneCoroutine;",
        "Lkotlinx/coroutines/StandaloneCoroutine;",
        "parentContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "block",
        "Lkotlin/Function2;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)V",
        "continuation",
        "onStart",
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
.field private final e:Lkotlin/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/c/d<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/c/f;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/f;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/ak;",
            "-",
            "Lkotlin/c/d<",
            "-",
            "Lkotlin/v;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 201
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/cl;-><init>(Lkotlin/c/f;Z)V

    .line 202
    move-object p1, p0

    check-cast p1, Lkotlin/c/d;

    invoke-static {p2, p0, p1}, Lkotlin/c/a/b;->a(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/c/d;)Lkotlin/c/d;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/cd;->e:Lkotlin/c/d;

    return-void
.end method


# virtual methods
.method protected final g()V
    .locals 2

    .line 205
    iget-object v0, p0, Lkotlinx/coroutines/cd;->e:Lkotlin/c/d;

    move-object v1, p0

    check-cast v1, Lkotlin/c/d;

    invoke-static {v0, v1}, Lkotlinx/coroutines/a/a;->a(Lkotlin/c/d;Lkotlin/c/d;)V

    return-void
.end method
