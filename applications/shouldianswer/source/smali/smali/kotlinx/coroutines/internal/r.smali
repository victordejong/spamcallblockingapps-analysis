.class public Lkotlinx/coroutines/internal/r;
.super Lkotlinx/coroutines/a;
.source "Scopes.kt"

# interfaces
.implements Lkotlin/c/b/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/a<",
        "TT;>;",
        "Lkotlin/c/b/a/e;"
    }
.end annotation


# instance fields
.field public final c:Lkotlin/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/c/c<",
            "TT;>;"
        }
    .end annotation
.end field


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

    const/4 v0, 0x1

    .line 17
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/a;-><init>(Lkotlin/c/f;Z)V

    iput-object p2, p0, Lkotlinx/coroutines/internal/r;->c:Lkotlin/c/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IZ)V
    .locals 0

    .line 24
    instance-of p3, p1, Lkotlinx/coroutines/t;

    if-eqz p3, :cond_1

    const/4 p3, 0x4

    .line 25
    check-cast p1, Lkotlinx/coroutines/t;

    iget-object p1, p1, Lkotlinx/coroutines/t;->a:Ljava/lang/Throwable;

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lkotlinx/coroutines/internal/r;->c:Lkotlin/c/c;

    invoke-static {p1, p3}, Lkotlinx/coroutines/internal/t;->a(Ljava/lang/Throwable;Lkotlin/c/c;)Ljava/lang/Throwable;

    move-result-object p1

    .line 26
    :goto_0
    iget-object p3, p0, Lkotlinx/coroutines/internal/r;->c:Lkotlin/c/c;

    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/cb;->b(Lkotlin/c/c;Ljava/lang/Throwable;I)V

    goto :goto_1

    .line 28
    :cond_1
    iget-object p3, p0, Lkotlinx/coroutines/internal/r;->c:Lkotlin/c/c;

    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/cb;->b(Lkotlin/c/c;Ljava/lang/Object;I)V

    :goto_1
    return-void
.end method

.method public final c()Lkotlin/c/b/a/e;
    .locals 1

    .line 18
    iget-object v0, p0, Lkotlinx/coroutines/internal/r;->c:Lkotlin/c/c;

    check-cast v0, Lkotlin/c/b/a/e;

    return-object v0
.end method

.method public final d()Ljava/lang/StackTraceElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public i()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
