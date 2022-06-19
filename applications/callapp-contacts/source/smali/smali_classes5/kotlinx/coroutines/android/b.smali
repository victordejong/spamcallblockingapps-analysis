.class public abstract Lkotlinx/coroutines/android/b;
.super Lkotlinx/coroutines/ce;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/au;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003R\u0012\u0010\u0004\u001a\u00020\u0000X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\u0001\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlinx/coroutines/android/HandlerDispatcher;",
        "Lkotlinx/coroutines/MainCoroutineDispatcher;",
        "Lkotlinx/coroutines/Delay;",
        "()V",
        "immediate",
        "getImmediate",
        "()Lkotlinx/coroutines/android/HandlerDispatcher;",
        "Lkotlinx/coroutines/android/HandlerContext;",
        "kotlinx-coroutines-android"
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
    .locals 0

    .line 22
    invoke-direct {p0}, Lkotlinx/coroutines/ce;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lkotlinx/coroutines/android/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JLjava/lang/Runnable;Lkotlin/c/f;)Lkotlinx/coroutines/bb;
    .locals 0

    .line 22
    invoke-static {p1, p2, p3, p4}, Lkotlinx/coroutines/au$a;->a(JLjava/lang/Runnable;Lkotlin/c/f;)Lkotlinx/coroutines/bb;

    move-result-object p1

    return-object p1
.end method
