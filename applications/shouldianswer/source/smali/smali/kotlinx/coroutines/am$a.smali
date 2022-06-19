.class public final Lkotlinx/coroutines/am$a;
.super Ljava/lang/Object;
.source "Delay.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lkotlinx/coroutines/am;JLjava/lang/Runnable;)Lkotlinx/coroutines/au;
    .locals 0

    const-string p0, "block"

    invoke-static {p3, p0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lkotlinx/coroutines/ai;->a()Lkotlinx/coroutines/am;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lkotlinx/coroutines/am;->a(JLjava/lang/Runnable;)Lkotlinx/coroutines/au;

    move-result-object p0

    return-object p0
.end method
