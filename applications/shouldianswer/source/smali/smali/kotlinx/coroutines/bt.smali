.class final Lkotlinx/coroutines/bt;
.super Lkotlinx/coroutines/cd;
.source "Builders.common.kt"


# instance fields
.field private c:Lkotlin/e/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/e/a/m<",
            "-",
            "Lkotlinx/coroutines/ad;",
            "-",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/c/f;Lkotlin/e/a/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/f;",
            "Lkotlin/e/a/m<",
            "-",
            "Lkotlinx/coroutines/ad;",
            "-",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "parentContext"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 169
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/cd;-><init>(Lkotlin/c/f;Z)V

    .line 170
    iput-object p2, p0, Lkotlinx/coroutines/bt;->c:Lkotlin/e/a/m;

    return-void
.end method


# virtual methods
.method protected g()V
    .locals 2

    .line 173
    iget-object v0, p0, Lkotlinx/coroutines/bt;->c:Lkotlin/e/a/m;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 174
    check-cast v1, Lkotlin/e/a/m;

    iput-object v1, p0, Lkotlinx/coroutines/bt;->c:Lkotlin/e/a/m;

    .line 175
    move-object v1, p0

    check-cast v1, Lkotlin/c/c;

    invoke-static {v0, p0, v1}, Lkotlinx/coroutines/a/a;->a(Lkotlin/e/a/m;Ljava/lang/Object;Lkotlin/c/c;)V

    return-void

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already started"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
