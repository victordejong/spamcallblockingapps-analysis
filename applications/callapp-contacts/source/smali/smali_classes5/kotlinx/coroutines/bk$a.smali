.class public final Lkotlinx/coroutines/bk$a;
.super Lkotlin/c/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/c/b<",
        "Lkotlinx/coroutines/af;",
        "Lkotlinx/coroutines/bk;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lkotlinx/coroutines/ExecutorCoroutineDispatcher$Key;",
        "Lkotlin/coroutines/AbstractCoroutineContextKey;",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;",
        "()V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 23
    sget-object v0, Lkotlinx/coroutines/af;->c:Lkotlinx/coroutines/af$a;

    check-cast v0, Lkotlin/c/f$c;

    .line 24
    sget-object v1, Lkotlinx/coroutines/bk$a$1;->a:Lkotlinx/coroutines/bk$a$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 22
    invoke-direct {p0, v0, v1}, Lkotlin/c/b;-><init>(Lkotlin/c/f$c;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lkotlinx/coroutines/bk$a;-><init>()V

    return-void
.end method
