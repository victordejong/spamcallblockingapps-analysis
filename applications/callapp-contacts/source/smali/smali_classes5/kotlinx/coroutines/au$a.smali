.class public final Lkotlinx/coroutines/au$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public static a(JLjava/lang/Runnable;Lkotlin/c/f;)Lkotlinx/coroutines/bb;
    .locals 1

    .line 61
    invoke-static {}, Lkotlinx/coroutines/ar;->a()Lkotlinx/coroutines/au;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lkotlinx/coroutines/au;->a(JLjava/lang/Runnable;Lkotlin/c/f;)Lkotlinx/coroutines/bb;

    move-result-object p0

    return-object p0
.end method
