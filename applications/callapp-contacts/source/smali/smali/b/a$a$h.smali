.class final Lb/a$a$h;
.super Lkotlin/c/b/a/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a$a;->a(Lcom/callapp/contacts/manager/task/Task;JLkotlin/c/f;)Lkotlinx/coroutines/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
        0x48
    }
    d = "invokeSuspend"
    e = "coroutinesrunner.CoroutinesRunner$Companion$scheduleTask$1"
.end annotation


# instance fields
.field a:I

.field final synthetic b:J

.field final synthetic c:Lcom/callapp/contacts/manager/task/Task;


# direct methods
.method constructor <init>(JLcom/callapp/contacts/manager/task/Task;Lkotlin/c/d;)V
    .locals 0

    iput-wide p1, p0, Lb/a$a$h;->b:J

    iput-object p3, p0, Lb/a$a$h;->c:Lcom/callapp/contacts/manager/task/Task;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/c/b/a/j;-><init>(ILkotlin/c/d;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1057
    sget-object v0, Lkotlin/c/a/a;->COROUTINE_SUSPENDED:Lkotlin/c/a/a;

    .line 71
    iget v1, p0, Lb/a$a$h;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/p;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_1
    invoke-static {p1}, Lkotlin/p;->a(Ljava/lang/Object;)V

    .line 72
    iget-wide v3, p0, Lb/a$a$h;->b:J

    iput v2, p0, Lb/a$a$h;->a:I

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-gtz p1, :cond_2

    .line 1117
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    goto :goto_0

    .line 1167
    :cond_2
    new-instance p1, Lkotlinx/coroutines/o;

    invoke-static {p0}, Lkotlin/c/a/b;->a(Lkotlin/c/d;)Lkotlin/c/d;

    move-result-object v1

    invoke-direct {p1, v1, v2}, Lkotlinx/coroutines/o;-><init>(Lkotlin/c/d;I)V

    .line 2096
    invoke-virtual {p1}, Lkotlinx/coroutines/o;->e()V

    .line 1174
    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/n;

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v2, v3, v5

    if-gez v2, :cond_3

    .line 1121
    invoke-interface {v1}, Lkotlinx/coroutines/n;->b()Lkotlin/c/f;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/av;->a(Lkotlin/c/f;)Lkotlinx/coroutines/au;

    move-result-object v2

    invoke-interface {v2, v3, v4, v1}, Lkotlinx/coroutines/au;->a(JLkotlinx/coroutines/n;)V

    .line 1175
    :cond_3
    invoke-virtual {p1}, Lkotlinx/coroutines/o;->g()Ljava/lang/Object;

    move-result-object p1

    .line 3057
    sget-object v1, Lkotlin/c/a/a;->COROUTINE_SUSPENDED:Lkotlin/c/a/a;

    if-ne p1, v1, :cond_4

    const-string v1, "frame"

    .line 1166
    invoke-static {p0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    :goto_0
    if-ne p1, v0, :cond_5

    return-object v0

    .line 73
    :cond_5
    :goto_1
    iget-object p1, p0, Lb/a$a$h;->c:Lcom/callapp/contacts/manager/task/Task;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/task/Task;->run()V

    .line 74
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/d;)Lkotlin/c/d;
    .locals 3
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

    const-string p1, "completion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lb/a$a$h;

    iget-wide v0, p0, Lb/a$a$h;->b:J

    iget-object v2, p0, Lb/a$a$h;->c:Lcom/callapp/contacts/manager/task/Task;

    invoke-direct {p1, v0, v1, v2, p2}, Lb/a$a$h;-><init>(JLcom/callapp/contacts/manager/task/Task;Lkotlin/c/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/d;

    invoke-virtual {p0, p1, p2}, Lb/a$a$h;->a(Ljava/lang/Object;Lkotlin/c/d;)Lkotlin/c/d;

    move-result-object p1

    check-cast p1, Lb/a$a$h;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lb/a$a$h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
