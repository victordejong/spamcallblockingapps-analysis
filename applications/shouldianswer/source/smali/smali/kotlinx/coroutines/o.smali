.class public final Lkotlinx/coroutines/o;
.super Lkotlinx/coroutines/bl;
.source "JobSupport.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/bl<",
        "Lkotlinx/coroutines/bk;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lkotlinx/coroutines/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/l<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/bk;Lkotlinx/coroutines/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/bk;",
            "Lkotlinx/coroutines/l<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1333
    invoke-direct {p0, p1}, Lkotlinx/coroutines/bl;-><init>(Lkotlinx/coroutines/bk;)V

    iput-object p2, p0, Lkotlinx/coroutines/o;->a:Lkotlinx/coroutines/l;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1330
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/o;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1335
    iget-object p1, p0, Lkotlinx/coroutines/o;->a:Lkotlinx/coroutines/l;

    iget-object v0, p0, Lkotlinx/coroutines/o;->b:Lkotlinx/coroutines/bk;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/l;->a(Lkotlinx/coroutines/bk;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/l;->a(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChildContinuation["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/o;->a:Lkotlinx/coroutines/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
