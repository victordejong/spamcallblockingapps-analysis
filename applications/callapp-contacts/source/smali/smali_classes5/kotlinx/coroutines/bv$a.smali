.class public final Lkotlinx/coroutines/bv$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/bv;
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
.method public static synthetic a(Lkotlinx/coroutines/bv;ZZLkotlin/jvm/functions/Function1;I)Lkotlinx/coroutines/bb;
    .locals 1

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x1

    .line 353
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lkotlinx/coroutines/bv;->a(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/bb;

    move-result-object p0

    return-object p0
.end method
