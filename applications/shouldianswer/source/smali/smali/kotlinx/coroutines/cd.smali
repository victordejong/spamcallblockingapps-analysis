.class Lkotlinx/coroutines/cd;
.super Lkotlinx/coroutines/a;
.source "Builders.common.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/a<",
        "Lkotlin/o;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/c/f;Z)V
    .locals 1

    const-string v0, "parentContext"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/a;-><init>(Lkotlin/c/f;Z)V

    return-void
.end method


# virtual methods
.method protected f(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lkotlinx/coroutines/cd;->a:Lkotlin/c/f;

    invoke-static {v0, p1}, Lkotlinx/coroutines/aa;->a(Lkotlin/c/f;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected n_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
