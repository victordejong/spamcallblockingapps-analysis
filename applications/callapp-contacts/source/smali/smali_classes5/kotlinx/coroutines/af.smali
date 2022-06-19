.class public abstract Lkotlinx/coroutines/af;
.super Lkotlin/c/a;
.source "SourceFile"

# interfaces
.implements Lkotlin/c/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/af$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008&\u0018\u0000 \u00172\u00020\u00012\u00020\u0002:\u0001\u0017B\u0005\u00a2\u0006\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\u0010\u0008\u001a\u00060\tj\u0002`\nH&J\u001c\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\u0010\u0008\u001a\u00060\tj\u0002`\nH\u0017J \u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\r\"\u0004\u0008\u0000\u0010\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\rJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0011\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0000H\u0087\u0002J\u0014\u0010\u0014\u001a\u00020\u00052\n\u0010\u000f\u001a\u0006\u0012\u0002\u0008\u00030\rH\u0017J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "Lkotlin/coroutines/AbstractCoroutineContextElement;",
        "Lkotlin/coroutines/ContinuationInterceptor;",
        "()V",
        "dispatch",
        "",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "block",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "dispatchYield",
        "interceptContinuation",
        "Lkotlin/coroutines/Continuation;",
        "T",
        "continuation",
        "isDispatchNeeded",
        "",
        "plus",
        "other",
        "releaseInterceptedContinuation",
        "toString",
        "",
        "Key",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final c:Lkotlinx/coroutines/af$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/af$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/af$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/coroutines/af;->c:Lkotlinx/coroutines/af$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    sget-object v0, Lkotlin/c/e;->a:Lkotlin/c/e$a;

    check-cast v0, Lkotlin/c/f$c;

    invoke-direct {p0, v0}, Lkotlin/c/a;-><init>(Lkotlin/c/f$c;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/c/d;)Lkotlin/c/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/c/d<",
            "-TT;>;)",
            "Lkotlin/c/d<",
            "TT;>;"
        }
    .end annotation

    .line 100
    new-instance v0, Lkotlinx/coroutines/internal/e;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/e;-><init>(Lkotlinx/coroutines/af;Lkotlin/c/d;)V

    check-cast v0, Lkotlin/c/d;

    return-object v0
.end method

.method public abstract a(Lkotlin/c/f;Ljava/lang/Runnable;)V
.end method

.method public final b(Lkotlin/c/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/d<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    .line 104
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/internal/e;

    .line 1064
    iget-object p1, p1, Lkotlinx/coroutines/internal/e;->_reusableCancellableContinuation:Ljava/lang/Object;

    instance-of v0, p1, Lkotlinx/coroutines/o;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lkotlinx/coroutines/o;

    if-eqz p1, :cond_1

    .line 104
    invoke-virtual {p1}, Lkotlinx/coroutines/o;->i()V

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public get(Lkotlin/c/f$c;)Lkotlin/c/f$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/c/f$b;",
            ">(",
            "Lkotlin/c/f$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    .line 31
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3055
    instance-of v0, p1, Lkotlin/c/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3057
    check-cast p1, Lkotlin/c/b;

    invoke-interface {p0}, Lkotlin/c/e;->getKey()Lkotlin/c/f$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlin/c/b;->a(Lkotlin/c/f$c;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lkotlin/c/f$b;

    invoke-virtual {p1, v0}, Lkotlin/c/b;->a(Lkotlin/c/f$b;)Lkotlin/c/f$b;

    move-result-object p1

    instance-of v0, p1, Lkotlin/c/f$b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :cond_1
    :goto_0
    return-object v1

    .line 3060
    :cond_2
    sget-object v0, Lkotlin/c/e;->a:Lkotlin/c/e$a;

    if-ne v0, p1, :cond_3

    move-object p1, p0

    check-cast p1, Lkotlin/c/f$b;

    return-object p1

    :cond_3
    return-object v1
.end method

.method public minusKey(Lkotlin/c/f$c;)Lkotlin/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/f$c<",
            "*>;)",
            "Lkotlin/c/f;"
        }
    .end annotation

    const-string v0, "key"

    .line 31
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3067
    instance-of v0, p1, Lkotlin/c/b;

    if-eqz v0, :cond_1

    .line 3068
    check-cast p1, Lkotlin/c/b;

    invoke-interface {p0}, Lkotlin/c/e;->getKey()Lkotlin/c/f$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlin/c/b;->a(Lkotlin/c/f$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlin/c/f$b;

    invoke-virtual {p1, v0}, Lkotlin/c/b;->a(Lkotlin/c/f$b;)Lkotlin/c/f$b;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p1, Lkotlin/c/g;->a:Lkotlin/c/g;

    check-cast p1, Lkotlin/c/f;

    return-object p1

    :cond_0
    move-object p1, p0

    check-cast p1, Lkotlin/c/f;

    return-object p1

    .line 3070
    :cond_1
    sget-object v0, Lkotlin/c/e;->a:Lkotlin/c/e$a;

    if-ne v0, p1, :cond_2

    sget-object p1, Lkotlin/c/g;->a:Lkotlin/c/g;

    check-cast p1, Lkotlin/c/f;

    return-object p1

    :cond_2
    move-object p1, p0

    check-cast p1, Lkotlin/c/f;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2021
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3013
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
