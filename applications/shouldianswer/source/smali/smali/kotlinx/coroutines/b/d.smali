.class public Lkotlinx/coroutines/b/d;
.super Lkotlinx/coroutines/bb;
.source "Dispatcher.kt"


# instance fields
.field private b:Lkotlinx/coroutines/b/a;

.field private final c:I

.field private final d:I

.field private final e:J

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 1

    const-string v0, "schedulerName"

    invoke-static {p5, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Lkotlinx/coroutines/bb;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/b/d;->c:I

    iput p2, p0, Lkotlinx/coroutines/b/d;->d:I

    iput-wide p3, p0, Lkotlinx/coroutines/b/d;->e:J

    iput-object p5, p0, Lkotlinx/coroutines/b/d;->f:Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Lkotlinx/coroutines/b/d;->b()Lkotlinx/coroutines/b/a;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/b/d;->b:Lkotlinx/coroutines/b/a;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 7

    const-string v0, "schedulerName"

    invoke-static {p3, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-wide v4, Lkotlinx/coroutines/b/m;->f:J

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lkotlinx/coroutines/b/d;-><init>(IIJLjava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;ILkotlin/e/b/e;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 42
    sget p1, Lkotlinx/coroutines/b/m;->d:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 43
    sget p2, Lkotlinx/coroutines/b/m;->e:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const-string p3, "DefaultDispatcher"

    .line 44
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/b/d;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method private final b()Lkotlinx/coroutines/b/a;
    .locals 7

    .line 113
    new-instance v6, Lkotlinx/coroutines/b/a;

    iget v1, p0, Lkotlinx/coroutines/b/d;->c:I

    iget v2, p0, Lkotlinx/coroutines/b/d;->d:I

    iget-wide v3, p0, Lkotlinx/coroutines/b/d;->e:J

    iget-object v5, p0, Lkotlinx/coroutines/b/d;->f:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/b/a;-><init>(IIJLjava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public a()Ljava/util/concurrent/Executor;
    .locals 1

    .line 54
    iget-object v0, p0, Lkotlinx/coroutines/b/d;->b:Lkotlinx/coroutines/b/a;

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final a(I)Lkotlinx/coroutines/y;
    .locals 2

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 88
    new-instance v0, Lkotlinx/coroutines/b/f;

    sget-object v1, Lkotlinx/coroutines/b/l;->b:Lkotlinx/coroutines/b/l;

    invoke-direct {v0, p0, p1, v1}, Lkotlinx/coroutines/b/f;-><init>(Lkotlinx/coroutines/b/d;ILkotlinx/coroutines/b/l;)V

    check-cast v0, Lkotlinx/coroutines/y;

    return-object v0

    .line 87
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected positive parallelism level, but have "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final a(Ljava/lang/Runnable;Lkotlinx/coroutines/b/j;Z)V
    .locals 1

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/b/d;->b:Lkotlinx/coroutines/b/a;

    invoke-virtual {v0, p1, p2, p3}, Lkotlinx/coroutines/b/a;->a(Ljava/lang/Runnable;Lkotlinx/coroutines/b/j;Z)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    sget-object p3, Lkotlinx/coroutines/ah;->b:Lkotlinx/coroutines/ah;

    iget-object v0, p0, Lkotlinx/coroutines/b/d;->b:Lkotlinx/coroutines/b/a;

    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/b/a;->a(Ljava/lang/Runnable;Lkotlinx/coroutines/b/j;)Lkotlinx/coroutines/b/i;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p3, p1}, Lkotlinx/coroutines/ah;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public a(Lkotlin/c/f;Ljava/lang/Runnable;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    :try_start_0
    iget-object v1, p0, Lkotlinx/coroutines/b/d;->b:Lkotlinx/coroutines/b/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/b/a;->a(Lkotlinx/coroutines/b/a;Ljava/lang/Runnable;Lkotlinx/coroutines/b/j;ZILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    sget-object v0, Lkotlinx/coroutines/ah;->b:Lkotlinx/coroutines/ah;

    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/ah;->a(Lkotlin/c/f;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public close()V
    .locals 1

    .line 73
    iget-object v0, p0, Lkotlinx/coroutines/b/d;->b:Lkotlinx/coroutines/b/a;

    invoke-virtual {v0}, Lkotlinx/coroutines/b/a;->close()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lkotlinx/coroutines/bb;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[scheduler = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/b/d;->b:Lkotlinx/coroutines/b/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
