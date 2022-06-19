.class final Lkotlinx/coroutines/ca;
.super Lkotlinx/coroutines/bp;
.source "JobSupport.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/bp<",
        "Lkotlinx/coroutines/bq;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lkotlinx/coroutines/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/l<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/bq;Lkotlinx/coroutines/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/bq;",
            "Lkotlinx/coroutines/l<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1252
    check-cast p1, Lkotlinx/coroutines/bk;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/bp;-><init>(Lkotlinx/coroutines/bk;)V

    iput-object p2, p0, Lkotlinx/coroutines/ca;->a:Lkotlinx/coroutines/l;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1249
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/ca;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1254
    iget-object p1, p0, Lkotlinx/coroutines/ca;->b:Lkotlinx/coroutines/bk;

    check-cast p1, Lkotlinx/coroutines/bq;

    invoke-virtual {p1}, Lkotlinx/coroutines/bq;->p()Ljava/lang/Object;

    move-result-object p1

    .line 1255
    instance-of v0, p1, Lkotlinx/coroutines/bf;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1256
    instance-of v0, p1, Lkotlinx/coroutines/t;

    if-eqz v0, :cond_0

    .line 1258
    iget-object v0, p0, Lkotlinx/coroutines/ca;->a:Lkotlinx/coroutines/l;

    check-cast p1, Lkotlinx/coroutines/t;

    iget-object p1, p1, Lkotlinx/coroutines/t;->a:Ljava/lang/Throwable;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lkotlinx/coroutines/l;->a(Ljava/lang/Throwable;I)V

    goto :goto_0

    .line 1262
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/ca;->a:Lkotlinx/coroutines/l;

    check-cast v0, Lkotlin/c/c;

    invoke-static {p1}, Lkotlinx/coroutines/br;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lkotlin/j;->a:Lkotlin/j$a;

    invoke-static {p1}, Lkotlin/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/c/c;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 1255
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResumeAwaitOnCompletion["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/ca;->a:Lkotlinx/coroutines/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
