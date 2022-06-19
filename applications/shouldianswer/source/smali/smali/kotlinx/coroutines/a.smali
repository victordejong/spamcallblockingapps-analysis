.class public abstract Lkotlinx/coroutines/a;
.super Lkotlinx/coroutines/bq;
.source "AbstractCoroutine.kt"

# interfaces
.implements Lkotlin/c/c;
.implements Lkotlinx/coroutines/ad;
.implements Lkotlinx/coroutines/bk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/bq;",
        "Lkotlin/c/c<",
        "TT;>;",
        "Lkotlinx/coroutines/ad;",
        "Lkotlinx/coroutines/bk;"
    }
.end annotation


# instance fields
.field protected final a:Lkotlin/c/f;

.field private final c:Lkotlin/c/f;


# direct methods
.method public constructor <init>(Lkotlin/c/f;Z)V
    .locals 1

    const-string v0, "parentContext"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0, p2}, Lkotlinx/coroutines/bq;-><init>(Z)V

    iput-object p1, p0, Lkotlinx/coroutines/a;->a:Lkotlin/c/f;

    .line 49
    iget-object p1, p0, Lkotlinx/coroutines/a;->a:Lkotlin/c/f;

    move-object p2, p0

    check-cast p2, Lkotlin/c/f;

    invoke-interface {p1, p2}, Lkotlin/c/f;->plus(Lkotlin/c/f;)Lkotlin/c/f;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/a;->c:Lkotlin/c/f;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/c/f;
    .locals 1

    .line 49
    iget-object v0, p0, Lkotlinx/coroutines/a;->c:Lkotlin/c/f;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 117
    invoke-static {p1}, Lkotlinx/coroutines/u;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lkotlinx/coroutines/a;->i()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/a;->a(Ljava/lang/Object;I)Z

    return-void
.end method

.method public a(Ljava/lang/Object;IZ)V
    .locals 0

    .line 105
    instance-of p2, p1, Lkotlinx/coroutines/t;

    if-eqz p2, :cond_0

    .line 106
    check-cast p1, Lkotlinx/coroutines/t;

    iget-object p1, p1, Lkotlinx/coroutines/t;->a:Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/a;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/a;->b(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final a(Lkotlinx/coroutines/ae;Ljava/lang/Object;Lkotlin/e/a/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/ae;",
            "TR;",
            "Lkotlin/e/a/m<",
            "-TR;-",
            "Lkotlin/c/c<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "start"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lkotlinx/coroutines/a;->f()V

    .line 160
    move-object v0, p0

    check-cast v0, Lkotlin/c/c;

    invoke-virtual {p1, p3, p2, v0}, Lkotlinx/coroutines/ae;->a(Lkotlin/e/a/m;Ljava/lang/Object;Lkotlin/c/c;)V

    return-void
.end method

.method public b()Lkotlin/c/f;
    .locals 1

    .line 54
    iget-object v0, p0, Lkotlinx/coroutines/a;->c:Lkotlin/c/f;

    return-object v0
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method protected b(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lkotlinx/coroutines/a;->a:Lkotlin/c/f;

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/bk;

    invoke-static {v0, p1, v1}, Lkotlinx/coroutines/aa;->a(Lkotlin/c/f;Ljava/lang/Throwable;Lkotlinx/coroutines/bk;)V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 56
    invoke-super {p0}, Lkotlinx/coroutines/bq;->e()Z

    move-result v0

    return v0
.end method

.method public final f()V
    .locals 2

    .line 67
    iget-object v0, p0, Lkotlinx/coroutines/a;->a:Lkotlin/c/f;

    sget-object v1, Lkotlinx/coroutines/bk;->b:Lkotlinx/coroutines/bk$b;

    check-cast v1, Lkotlin/c/f$c;

    invoke-interface {v0, v1}, Lkotlin/c/f;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/bk;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/a;->a(Lkotlinx/coroutines/bk;)V

    return-void
.end method

.method protected g()V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 0

    .line 77
    invoke-virtual {p0}, Lkotlinx/coroutines/a;->g()V

    return-void
.end method

.method public i()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    .line 125
    iget-object v0, p0, Lkotlinx/coroutines/a;->c:Lkotlin/c/f;

    invoke-static {v0}, Lkotlinx/coroutines/x;->a(Lkotlin/c/f;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lkotlinx/coroutines/bq;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 125
    :cond_0
    invoke-super {p0}, Lkotlinx/coroutines/bq;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
