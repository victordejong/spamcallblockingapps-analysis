.class public final Lorg/mistergroup/shouldianswer/utils/c;
.super Ljava/lang/Object;
.source "AsyncLoader.kt"


# static fields
.field private static final a:Lkotlinx/coroutines/y;

.field private static final b:Lkotlinx/coroutines/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    invoke-static {}, Lkotlinx/coroutines/as;->c()Lkotlinx/coroutines/y;

    move-result-object v0

    sput-object v0, Lorg/mistergroup/shouldianswer/utils/c;->a:Lkotlinx/coroutines/y;

    .line 29
    invoke-static {}, Lkotlinx/coroutines/as;->b()Lkotlinx/coroutines/bu;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/y;

    sput-object v0, Lorg/mistergroup/shouldianswer/utils/c;->b:Lkotlinx/coroutines/y;

    return-void
.end method

.method public static final a()Lkotlinx/coroutines/y;
    .locals 1

    .line 28
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/c;->a:Lkotlinx/coroutines/y;

    return-object v0
.end method

.method public static final b()Lkotlinx/coroutines/y;
    .locals 1

    .line 29
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/c;->b:Lkotlinx/coroutines/y;

    return-object v0
.end method
