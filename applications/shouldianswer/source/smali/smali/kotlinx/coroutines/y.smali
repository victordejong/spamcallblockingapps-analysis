.class public abstract Lkotlinx/coroutines/y;
.super Lkotlin/c/a;
.source "CoroutineDispatcher.kt"

# interfaces
.implements Lkotlin/c/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    sget-object v0, Lkotlin/c/d;->a:Lkotlin/c/d$b;

    check-cast v0, Lkotlin/c/f$c;

    invoke-direct {p0, v0}, Lkotlin/c/a;-><init>(Lkotlin/c/f$c;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/c/c;)Lkotlin/c/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/c/c<",
            "-TT;>;)",
            "Lkotlin/c/c<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "continuation"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    new-instance v0, Lkotlinx/coroutines/ao;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/ao;-><init>(Lkotlinx/coroutines/y;Lkotlin/c/c;)V

    check-cast v0, Lkotlin/c/c;

    return-object v0
.end method

.method public abstract a(Lkotlin/c/f;Ljava/lang/Runnable;)V
.end method

.method public a(Lkotlin/c/f;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public b(Lkotlin/c/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "continuation"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {p0, p1}, Lkotlin/c/d$a;->a(Lkotlin/c/d;Lkotlin/c/c;)V

    return-void
.end method

.method public get(Lkotlin/c/f$c;)Lkotlin/c/f$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/c/f$b;",
            ">(",
            "Lkotlin/c/f$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {p0, p1}, Lkotlin/c/d$a;->a(Lkotlin/c/d;Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object p1

    return-object p1
.end method

.method public minusKey(Lkotlin/c/f$c;)Lkotlin/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/f$c<",
            "*>;)",
            "Lkotlin/c/f;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {p0, p1}, Lkotlin/c/d$a;->b(Lkotlin/c/d;Lkotlin/c/f$c;)Lkotlin/c/f;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lkotlinx/coroutines/ag;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/ag;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
