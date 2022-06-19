.class public final Landroidx/lifecycle/ag;
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
        "\u0000,\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u001aA\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\nH\u0081@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000b\u001a+\u0010\u000c\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u00022\u000e\u0008\u0004\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\nH\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\r\u001a+\u0010\u000c\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u000e2\u000e\u0008\u0004\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\nH\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000f\u001a+\u0010\u0010\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u00022\u000e\u0008\u0004\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\nH\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\r\u001a+\u0010\u0010\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u000e2\u000e\u0008\u0004\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\nH\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000f\u001a+\u0010\u0011\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u00022\u000e\u0008\u0004\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\nH\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\r\u001a+\u0010\u0011\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u000e2\u000e\u0008\u0004\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\nH\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000f\u001a3\u0010\u0012\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u000e\u0008\u0004\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\nH\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013\u001a3\u0010\u0012\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00042\u000e\u0008\u0004\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\nH\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0014\u001a3\u0010\u0015\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u000e\u0008\u0004\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\nH\u0081H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0016"
    }
    d2 = {
        "suspendWithStateAtLeastUnchecked",
        "R",
        "Landroidx/lifecycle/Lifecycle;",
        "state",
        "Landroidx/lifecycle/Lifecycle$State;",
        "dispatchNeeded",
        "",
        "lifecycleDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "block",
        "Lkotlin/Function0;",
        "(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;ZLkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "withCreated",
        "(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Landroidx/lifecycle/LifecycleOwner;",
        "(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "withResumed",
        "withStarted",
        "withStateAtLeast",
        "(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "withStateAtLeastUnchecked",
        "lifecycle-runtime-ktx_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation
