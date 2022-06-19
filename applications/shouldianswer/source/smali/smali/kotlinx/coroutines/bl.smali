.class public abstract Lkotlinx/coroutines/bl;
.super Lkotlinx/coroutines/bp;
.source "JobSupport.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<J::",
        "Lkotlinx/coroutines/bk;",
        ">",
        "Lkotlinx/coroutines/bp<",
        "TJ;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/bk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;)V"
        }
    .end annotation

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1306
    invoke-direct {p0, p1}, Lkotlinx/coroutines/bp;-><init>(Lkotlinx/coroutines/bk;)V

    return-void
.end method
