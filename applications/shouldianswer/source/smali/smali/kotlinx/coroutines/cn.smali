.class final Lkotlinx/coroutines/cn;
.super Lkotlinx/coroutines/internal/r;
.source "Builders.common.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/r<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/c/f;Lkotlin/c/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/f;",
            "Lkotlin/c/c<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uCont"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/internal/r;-><init>(Lkotlin/c/f;Lkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public i()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
