.class public final Lb/a$a$a;
.super Lkotlin/c/b/a/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/c/b/a/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/ak;",
        "Lkotlin/c/d<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation

.annotation runtime Lkotlin/c/b/a/e;
    b = "CoroutinesRunner.kt"
    c = {
        0x53
    }
    d = "invokeSuspend"
    e = "coroutinesrunner.CoroutinesRunner$Companion$await$1"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/callapp/contacts/manager/task/Task;

.field final synthetic c:J

.field private synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/manager/task/Task;JLkotlin/c/d;)V
    .locals 0

    iput-object p1, p0, Lb/a$a$a;->b:Lcom/callapp/contacts/manager/task/Task;

    iput-wide p2, p0, Lb/a$a$a;->c:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/c/b/a/j;-><init>(ILkotlin/c/d;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1057
    sget-object v0, Lkotlin/c/a/a;->COROUTINE_SUSPENDED:Lkotlin/c/a/a;

    .line 78
    iget v1, p0, Lb/a$a$a;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/p;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 86
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_1
    invoke-static {p1}, Lkotlin/p;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lb/a$a$a;->d:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/ak;

    .line 79
    new-instance v1, Lkotlin/jvm/internal/ab$e;

    invoke-direct {v1}, Lkotlin/jvm/internal/ab$e;-><init>()V

    new-instance v3, Lb/a$a$a$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lb/a$a$a$a;-><init>(Lb/a$a$a;Lkotlin/c/d;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    invoke-static {p1, v4, v3, v5}, Lkotlinx/coroutines/h;->a(Lkotlinx/coroutines/ak;Lkotlin/c/f;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/as;

    move-result-object p1

    iput-object p1, v1, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    .line 83
    iget-wide v5, p0, Lb/a$a$a;->c:J

    new-instance p1, Lb/a$a$a$1;

    invoke-direct {p1, v1, v4}, Lb/a$a$a$1;-><init>(Lkotlin/jvm/internal/ab$e;Lkotlin/c/d;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iput v2, p0, Lb/a$a$a;->a:I

    const-wide/16 v1, 0x0

    cmp-long v3, v5, v1

    if-lez v3, :cond_4

    .line 2044
    new-instance v1, Lkotlinx/coroutines/cq;

    invoke-direct {v1, v5, v6, p0}, Lkotlinx/coroutines/cq;-><init>(JLkotlin/c/d;)V

    .line 2143
    iget-object v2, v1, Lkotlinx/coroutines/cq;->g:Lkotlin/c/d;

    .line 2144
    invoke-interface {v2}, Lkotlin/c/d;->b()Lkotlin/c/f;

    move-result-object v2

    .line 2145
    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/bv;

    invoke-static {v2}, Lkotlinx/coroutines/av;->a(Lkotlin/c/f;)Lkotlinx/coroutines/au;

    move-result-object v2

    iget-wide v4, v1, Lkotlinx/coroutines/cq;->e:J

    move-object v6, v1

    check-cast v6, Ljava/lang/Runnable;

    .line 3047
    iget-object v7, v1, Lkotlinx/coroutines/a;->a:Lkotlin/c/f;

    .line 2145
    invoke-interface {v2, v4, v5, v6, v7}, Lkotlinx/coroutines/au;->a(JLjava/lang/Runnable;Lkotlin/c/f;)Lkotlinx/coroutines/bb;

    move-result-object v2

    .line 4493
    new-instance v4, Lkotlinx/coroutines/bd;

    invoke-direct {v4, v2}, Lkotlinx/coroutines/bd;-><init>(Lkotlinx/coroutines/bb;)V

    check-cast v4, Lkotlinx/coroutines/ab;

    .line 4682
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 4493
    invoke-interface {v3, v4}, Lkotlinx/coroutines/bv;->a(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/bb;

    .line 2148
    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/internal/t;

    invoke-static {v2, v1, p1}, Lkotlinx/coroutines/a/b;->a(Lkotlinx/coroutines/internal/t;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    .line 5057
    sget-object v1, Lkotlin/c/a/a;->COROUTINE_SUSPENDED:Lkotlin/c/a/a;

    if-ne p1, v1, :cond_2

    const-string v1, "frame"

    .line 2043
    invoke-static {p0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    if-ne p1, v0, :cond_3

    return-object v0

    .line 86
    :cond_3
    :goto_0
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    .line 2042
    :cond_4
    new-instance p1, Lkotlinx/coroutines/TimeoutCancellationException;

    const-string v0, "Timed out immediately"

    invoke-direct {p1, v0}, Lkotlinx/coroutines/TimeoutCancellationException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/d;)Lkotlin/c/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/c/d<",
            "*>;)",
            "Lkotlin/c/d<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lb/a$a$a;

    iget-object v1, p0, Lb/a$a$a;->b:Lcom/callapp/contacts/manager/task/Task;

    iget-wide v2, p0, Lb/a$a$a;->c:J

    invoke-direct {v0, v1, v2, v3, p2}, Lb/a$a$a;-><init>(Lcom/callapp/contacts/manager/task/Task;JLkotlin/c/d;)V

    iput-object p1, v0, Lb/a$a$a;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/d;

    invoke-virtual {p0, p1, p2}, Lb/a$a$a;->a(Ljava/lang/Object;Lkotlin/c/d;)Lkotlin/c/d;

    move-result-object p1

    check-cast p1, Lb/a$a$a;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lb/a$a$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
