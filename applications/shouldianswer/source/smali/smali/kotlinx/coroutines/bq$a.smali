.class final Lkotlinx/coroutines/bq$a;
.super Lkotlinx/coroutines/l;
.source "JobSupport.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/bq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/l<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lkotlinx/coroutines/bq;


# direct methods
.method public constructor <init>(Lkotlin/c/c;Lkotlinx/coroutines/bq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-TT;>;",
            "Lkotlinx/coroutines/bq;",
            ")V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "job"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1039
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/l;-><init>(Lkotlin/c/c;I)V

    iput-object p2, p0, Lkotlinx/coroutines/bq$a;->a:Lkotlinx/coroutines/bq;

    return-void
.end method


# virtual methods
.method public a(Lkotlinx/coroutines/bk;)Ljava/lang/Throwable;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1041
    iget-object v0, p0, Lkotlinx/coroutines/bq$a;->a:Lkotlinx/coroutines/bq;

    invoke-virtual {v0}, Lkotlinx/coroutines/bq;->p()Ljava/lang/Object;

    move-result-object v0

    .line 1046
    instance-of v1, v0, Lkotlinx/coroutines/bq$c;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/bq$c;

    iget-object v1, v1, Lkotlinx/coroutines/bq$c;->rootCause:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    return-object v1

    .line 1047
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/t;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/t;

    iget-object p1, v0, Lkotlinx/coroutines/t;->a:Ljava/lang/Throwable;

    return-object p1

    .line 1048
    :cond_1
    invoke-interface {p1}, Lkotlinx/coroutines/bk;->m()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1
.end method

.method protected h()Ljava/lang/String;
    .locals 1

    const-string v0, "AwaitContinuation"

    return-object v0
.end method
