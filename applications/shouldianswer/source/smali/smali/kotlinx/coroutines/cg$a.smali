.class final Lkotlinx/coroutines/cg$a;
.super Ljava/lang/Object;
.source "ThreadPoolDispatcher.kt"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/cg;-><init>(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/cg;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/cg;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/cg$a;->a:Lkotlinx/coroutines/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)Lkotlinx/coroutines/bz;
    .locals 4

    .line 75
    new-instance v0, Lkotlinx/coroutines/bz;

    iget-object v1, p0, Lkotlinx/coroutines/cg$a;->a:Lkotlinx/coroutines/cg;

    const-string v2, "target"

    invoke-static {p1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lkotlinx/coroutines/cg$a;->a:Lkotlinx/coroutines/cg;

    invoke-static {v2}, Lkotlinx/coroutines/cg;->a(Lkotlinx/coroutines/cg;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lkotlinx/coroutines/cg$a;->a:Lkotlinx/coroutines/cg;

    invoke-static {v2}, Lkotlinx/coroutines/cg;->b(Lkotlinx/coroutines/cg;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lkotlinx/coroutines/cg$a;->a:Lkotlinx/coroutines/cg;

    invoke-static {v3}, Lkotlinx/coroutines/cg;->b(Lkotlinx/coroutines/cg;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lkotlinx/coroutines/cg$a;->a:Lkotlinx/coroutines/cg;

    invoke-static {v3}, Lkotlinx/coroutines/cg;->c(Lkotlinx/coroutines/cg;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {v0, v1, p1, v2}, Lkotlinx/coroutines/bz;-><init>(Lkotlinx/coroutines/cg;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/cg$a;->a(Ljava/lang/Runnable;)Lkotlinx/coroutines/bz;

    move-result-object p1

    check-cast p1, Ljava/lang/Thread;

    return-object p1
.end method
