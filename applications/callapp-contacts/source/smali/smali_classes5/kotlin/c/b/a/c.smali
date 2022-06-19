.class public abstract Lkotlin/c/b/a/c;
.super Lkotlin/c/b/a/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\u0008!\u0018\u00002\u00020\u0001B\u0019\u0008\u0016\u0012\u0010\u0010\u0002\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0005B!\u0012\u0010\u0010\u0002\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003J\u0008\u0010\r\u001a\u00020\u000eH\u0014R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0018\u0010\u000c\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;",
        "Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;",
        "completion",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lkotlin/coroutines/Continuation;)V",
        "_context",
        "Lkotlin/coroutines/CoroutineContext;",
        "(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;)V",
        "context",
        "getContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "intercepted",
        "releaseIntercepted",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private transient a:Lkotlin/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/c/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lkotlin/c/f;


# direct methods
.method public constructor <init>(Lkotlin/c/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 102
    invoke-interface {p1}, Lkotlin/c/d;->b()Lkotlin/c/f;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lkotlin/c/b/a/c;-><init>(Lkotlin/c/d;Lkotlin/c/f;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/c/d;Lkotlin/c/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/d<",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/c/f;",
            ")V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1}, Lkotlin/c/b/a/a;-><init>(Lkotlin/c/d;)V

    iput-object p2, p0, Lkotlin/c/b/a/c;->b:Lkotlin/c/f;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .line 116
    iget-object v0, p0, Lkotlin/c/b/a/c;->a:Lkotlin/c/d;

    if-eqz v0, :cond_0

    .line 117
    move-object v1, p0

    check-cast v1, Lkotlin/c/b/a/c;

    if-eq v0, v1, :cond_0

    .line 118
    invoke-virtual {p0}, Lkotlin/c/b/a/c;->b()Lkotlin/c/f;

    move-result-object v1

    sget-object v2, Lkotlin/c/e;->a:Lkotlin/c/e$a;

    check-cast v2, Lkotlin/c/f$c;

    invoke-interface {v1, v2}, Lkotlin/c/f;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/c/e;

    invoke-interface {v1, v0}, Lkotlin/c/e;->b(Lkotlin/c/d;)V

    .line 120
    :cond_0
    sget-object v0, Lkotlin/c/b/a/b;->a:Lkotlin/c/b/a/b;

    check-cast v0, Lkotlin/c/d;

    iput-object v0, p0, Lkotlin/c/b/a/c;->a:Lkotlin/c/d;

    return-void
.end method

.method public final b()Lkotlin/c/f;
    .locals 1

    .line 105
    iget-object v0, p0, Lkotlin/c/b/a/c;->b:Lkotlin/c/f;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final f()Lkotlin/c/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/c/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lkotlin/c/b/a/c;->a:Lkotlin/c/d;

    if-nez v0, :cond_1

    .line 112
    invoke-virtual {p0}, Lkotlin/c/b/a/c;->b()Lkotlin/c/f;

    move-result-object v0

    sget-object v1, Lkotlin/c/e;->a:Lkotlin/c/e$a;

    check-cast v1, Lkotlin/c/f$c;

    invoke-interface {v0, v1}, Lkotlin/c/f;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object v0

    check-cast v0, Lkotlin/c/e;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Lkotlin/c/d;

    invoke-interface {v0, v1}, Lkotlin/c/e;->a(Lkotlin/c/d;)Lkotlin/c/d;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    check-cast v0, Lkotlin/c/d;

    .line 113
    :goto_0
    iput-object v0, p0, Lkotlin/c/b/a/c;->a:Lkotlin/c/d;

    :cond_1
    return-object v0
.end method
