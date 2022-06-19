.class public abstract Lkotlinx/coroutines/a;
.super Lkotlinx/coroutines/ca;
.source "SourceFile"

# interfaces
.implements Lkotlin/c/d;
.implements Lkotlinx/coroutines/ak;
.implements Lkotlinx/coroutines/bv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/ca;",
        "Lkotlin/c/d<",
        "TT;>;",
        "Lkotlinx/coroutines/ak;",
        "Lkotlinx/coroutines/bv;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\'\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u00020\u00022\u00020\u00032\u0008\u0012\u0004\u0012\u0002H\u00010\u00042\u00020\u0005B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0012\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\u0008\u0010\u0018\u001a\u00020\u0019H\u0014J\u0015\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001cH\u0000\u00a2\u0006\u0002\u0008\u001dJ\r\u0010\u001e\u001a\u00020\u0015H\u0000\u00a2\u0006\u0002\u0008\u001fJ\r\u0010 \u001a\u00020\u0019H\u0010\u00a2\u0006\u0002\u0008!J\u0018\u0010\"\u001a\u00020\u00152\u0006\u0010#\u001a\u00020\u001c2\u0006\u0010$\u001a\u00020\tH\u0014J\u0015\u0010%\u001a\u00020\u00152\u0006\u0010&\u001a\u00028\u0000H\u0014\u00a2\u0006\u0002\u0010\'J\u0012\u0010(\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0004J\u0008\u0010)\u001a\u00020\u0015H\u0014J\r\u0010*\u001a\u00020\u0015H\u0000\u00a2\u0006\u0002\u0008+J\u001c\u0010,\u001a\u00020\u00152\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00028\u00000.\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\'JM\u0010/\u001a\u00020\u0015\"\u0004\u0008\u0001\u001002\u0006\u0010/\u001a\u0002012\u0006\u00102\u001a\u0002H02\'\u00103\u001a#\u0008\u0001\u0012\u0004\u0012\u0002H0\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u001704\u00a2\u0006\u0002\u00085\u00f8\u0001\u0000\u00a2\u0006\u0002\u00106J4\u0010/\u001a\u00020\u00152\u0006\u0010/\u001a\u0002012\u001c\u00103\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u001707\u00f8\u0001\u0000\u00a2\u0006\u0002\u00108R\u0017\u0010\u000b\u001a\u00020\u0007\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0010\u0010\u0006\u001a\u00020\u00078\u0004X\u0085\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u00069"
    }
    d2 = {
        "Lkotlinx/coroutines/AbstractCoroutine;",
        "T",
        "Lkotlinx/coroutines/JobSupport;",
        "Lkotlinx/coroutines/Job;",
        "Lkotlin/coroutines/Continuation;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "parentContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "active",
        "",
        "(Lkotlin/coroutines/CoroutineContext;Z)V",
        "context",
        "getContext$annotations",
        "()V",
        "getContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "coroutineContext",
        "getCoroutineContext",
        "isActive",
        "()Z",
        "afterResume",
        "",
        "state",
        "",
        "cancellationExceptionMessage",
        "",
        "handleOnCompletionException",
        "exception",
        "",
        "handleOnCompletionException$kotlinx_coroutines_core",
        "initParentJob",
        "initParentJob$kotlinx_coroutines_core",
        "nameString",
        "nameString$kotlinx_coroutines_core",
        "onCancelled",
        "cause",
        "handled",
        "onCompleted",
        "value",
        "(Ljava/lang/Object;)V",
        "onCompletionInternal",
        "onStart",
        "onStartInternal",
        "onStartInternal$kotlinx_coroutines_core",
        "resumeWith",
        "result",
        "Lkotlin/Result;",
        "start",
        "R",
        "Lkotlinx/coroutines/CoroutineStart;",
        "receiver",
        "block",
        "Lkotlin/Function2;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlinx/coroutines/CoroutineStart;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V",
        "Lkotlin/Function1;",
        "(Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;)V",
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
.field public final a:Lkotlin/c/f;

.field protected final b:Lkotlin/c/f;


# direct methods
.method public constructor <init>(Lkotlin/c/f;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p2}, Lkotlinx/coroutines/ca;-><init>(Z)V

    iput-object p1, p0, Lkotlinx/coroutines/a;->b:Lkotlin/c/f;

    .line 47
    move-object p2, p0

    check-cast p2, Lkotlin/c/f;

    invoke-interface {p1, p2}, Lkotlin/c/f;->plus(Lkotlin/c/f;)Lkotlin/c/f;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/a;->a:Lkotlin/c/f;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/c/f;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 41
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/a;-><init>(Lkotlin/c/f;Z)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)V
    .locals 1

    .line 101
    instance-of v0, p1, Lkotlinx/coroutines/z;

    if-eqz v0, :cond_0

    .line 102
    check-cast p1, Lkotlinx/coroutines/z;

    .line 1047
    iget p1, p1, Lkotlinx/coroutines/z;->_handled:I

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lkotlinx/coroutines/a;->a:Lkotlin/c/f;

    invoke-static {v0, p1}, Lkotlinx/coroutines/ah;->a(Lkotlin/c/f;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lkotlinx/coroutines/al;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/al;",
            "TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/c/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lkotlinx/coroutines/a;->f()V

    .line 158
    move-object v0, p0

    check-cast v0, Lkotlin/c/d;

    invoke-virtual {p1, p3, p2, v0}, Lkotlinx/coroutines/al;->invoke(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/c/d;)V

    return-void
.end method

.method public final az_()Lkotlin/c/f;
    .locals 1

    .line 52
    iget-object v0, p0, Lkotlinx/coroutines/a;->a:Lkotlin/c/f;

    return-object v0
.end method

.method public final b()Lkotlin/c/f;
    .locals 1

    .line 47
    iget-object v0, p0, Lkotlinx/coroutines/a;->a:Lkotlin/c/f;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 2013
    invoke-static {p1, v0}, Lkotlinx/coroutines/ac;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    .line 111
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 112
    sget-object v0, Lkotlinx/coroutines/cb;->a:Lkotlinx/coroutines/internal/v;

    if-ne p1, v0, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/a;->c(Ljava/lang/Object;)V

    return-void
.end method

.method protected c(Ljava/lang/Object;)V
    .locals 0

    .line 116
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/a;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public final e()Z
    .locals 1

    .line 54
    invoke-super {p0}, Lkotlinx/coroutines/ca;->e()Z

    move-result v0

    return v0
.end method

.method public final f()V
    .locals 2

    .line 65
    iget-object v0, p0, Lkotlinx/coroutines/a;->b:Lkotlin/c/f;

    sget-object v1, Lkotlinx/coroutines/bv;->c:Lkotlinx/coroutines/bv$b;

    check-cast v1, Lkotlin/c/f$c;

    invoke-interface {v0, v1}, Lkotlin/c/f;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/bv;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/a;->a(Lkotlinx/coroutines/bv;)V

    return-void
.end method

.method protected g()V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 0

    .line 75
    invoke-virtual {p0}, Lkotlinx/coroutines/a;->g()V

    return-void
.end method

.method protected final i()Ljava/lang/String;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1021
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    .line 123
    iget-object v0, p0, Lkotlinx/coroutines/a;->a:Lkotlin/c/f;

    invoke-static {v0}, Lkotlinx/coroutines/ae;->a(Lkotlin/c/f;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lkotlinx/coroutines/ca;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 124
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lkotlinx/coroutines/ca;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
