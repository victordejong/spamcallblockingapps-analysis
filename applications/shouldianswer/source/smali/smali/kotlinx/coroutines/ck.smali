.class Lkotlinx/coroutines/ck;
.super Lkotlinx/coroutines/a;
.source "Timeout.kt"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lkotlin/c/b/a/e;
.implements Lkotlin/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        "T::TU;>",
        "Lkotlinx/coroutines/a<",
        "TT;>;",
        "Ljava/lang/Runnable;",
        "Lkotlin/c/b/a/e;",
        "Lkotlin/c/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:J

.field public final d:Lkotlin/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/c/c<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLkotlin/c/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/c/c<",
            "-TU;>;)V"
        }
    .end annotation

    const-string v0, "uCont"

    invoke-static {p3, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-interface {p3}, Lkotlin/c/c;->a()Lkotlin/c/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/a;-><init>(Lkotlin/c/f;Z)V

    iput-wide p1, p0, Lkotlinx/coroutines/ck;->c:J

    iput-object p3, p0, Lkotlinx/coroutines/ck;->d:Lkotlin/c/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IZ)V
    .locals 0

    .line 95
    instance-of p3, p1, Lkotlinx/coroutines/t;

    if-eqz p3, :cond_0

    .line 96
    iget-object p3, p0, Lkotlinx/coroutines/ck;->d:Lkotlin/c/c;

    check-cast p1, Lkotlinx/coroutines/t;

    iget-object p1, p1, Lkotlinx/coroutines/t;->a:Ljava/lang/Throwable;

    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/cb;->b(Lkotlin/c/c;Ljava/lang/Throwable;I)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object p3, p0, Lkotlinx/coroutines/ck;->d:Lkotlin/c/c;

    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/cb;->b(Lkotlin/c/c;Ljava/lang/Object;I)V

    :goto_0
    return-void
.end method

.method public c()Lkotlin/c/b/a/e;
    .locals 3

    .line 86
    iget-object v0, p0, Lkotlinx/coroutines/ck;->d:Lkotlin/c/c;

    instance-of v1, v0, Lkotlin/c/b/a/e;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lkotlin/c/b/a/e;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlin/c/b/a/e;->c()Lkotlin/c/b/a/e;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public d()Ljava/lang/StackTraceElement;
    .locals 3

    .line 87
    iget-object v0, p0, Lkotlinx/coroutines/ck;->d:Lkotlin/c/c;

    instance-of v1, v0, Lkotlin/c/b/a/e;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lkotlin/c/b/a/e;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlin/c/b/a/e;->d()Ljava/lang/StackTraceElement;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public i()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lkotlinx/coroutines/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(timeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lkotlinx/coroutines/ck;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 3

    .line 90
    iget-wide v0, p0, Lkotlinx/coroutines/ck;->c:J

    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/bk;

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/cl;->a(JLkotlinx/coroutines/bk;)Lkotlinx/coroutines/TimeoutCancellationException;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/ck;->d(Ljava/lang/Throwable;)Z

    return-void
.end method
