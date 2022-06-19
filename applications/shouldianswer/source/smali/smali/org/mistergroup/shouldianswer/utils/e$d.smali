.class final Lorg/mistergroup/shouldianswer/utils/e$d;
.super Lkotlin/c/b/a/k;
.source "CallHelper.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/utils/e;->a(Lorg/mistergroup/shouldianswer/utils/e$a;Lorg/mistergroup/shouldianswer/model/NumberInfo;JLkotlin/c/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/c/b/a/k;",
        "Lkotlin/e/a/m<",
        "Lkotlinx/coroutines/ad;",
        "Lkotlin/c/c<",
        "-",
        "Lkotlin/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/c/b/a/f;
    b = "CallHelper.kt"
    c = {}
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.utils.CallHelper$checkNumber$2"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Z

.field final synthetic c:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field final synthetic d:Lorg/mistergroup/shouldianswer/MyApp;

.field final synthetic e:Lorg/mistergroup/shouldianswer/model/ag;

.field private f:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(ZLorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/MyApp;Lorg/mistergroup/shouldianswer/model/ag;Lkotlin/c/c;)V
    .locals 0

    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/utils/e$d;->b:Z

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/utils/e$d;->c:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/utils/e$d;->d:Lorg/mistergroup/shouldianswer/MyApp;

    iput-object p4, p0, Lorg/mistergroup/shouldianswer/utils/e$d;->e:Lorg/mistergroup/shouldianswer/model/ag;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/utils/e$d;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/utils/e$d;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/utils/e$d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/c/c<",
            "*>;)",
            "Lkotlin/c/c<",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/mistergroup/shouldianswer/utils/e$d;

    iget-boolean v2, p0, Lorg/mistergroup/shouldianswer/utils/e$d;->b:Z

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/utils/e$d;->c:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/utils/e$d;->d:Lorg/mistergroup/shouldianswer/MyApp;

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/utils/e$d;->e:Lorg/mistergroup/shouldianswer/model/ag;

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/mistergroup/shouldianswer/utils/e$d;-><init>(ZLorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/MyApp;Lorg/mistergroup/shouldianswer/model/ag;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/utils/e$d;->f:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    .line 98
    iget v0, p0, Lorg/mistergroup/shouldianswer/utils/e$d;->a:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/e$d;->f:Lkotlinx/coroutines/ad;

    .line 100
    :try_start_0
    iget-boolean p1, p0, Lorg/mistergroup/shouldianswer/utils/e$d;->b:Z

    if-eqz p1, :cond_3

    .line 102
    sget-object p1, Lorg/mistergroup/shouldianswer/services/OnCallService;->a:Lorg/mistergroup/shouldianswer/services/OnCallService$a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/services/OnCallService$a;->b()V

    .line 104
    sget-object p1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ai;->e()Lorg/mistergroup/shouldianswer/model/a;

    move-result-object p1

    sget-object v0, Lorg/mistergroup/shouldianswer/model/a;->b:Lorg/mistergroup/shouldianswer/model/a;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    .line 105
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/e;->a:Lorg/mistergroup/shouldianswer/utils/e;

    invoke-static {p1, v1}, Lorg/mistergroup/shouldianswer/utils/e;->a(Lorg/mistergroup/shouldianswer/utils/e;Z)V

    .line 108
    :cond_0
    sget-object p1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ai;->e()Lorg/mistergroup/shouldianswer/model/a;

    move-result-object p1

    sget-object v0, Lorg/mistergroup/shouldianswer/model/a;->c:Lorg/mistergroup/shouldianswer/model/a;

    if-ne p1, v0, :cond_2

    .line 109
    sget-object p1, Lorg/mistergroup/shouldianswer/b/h;->a:Lorg/mistergroup/shouldianswer/b/h$a;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/e$d;->c:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/utils/e$d;->d:Lorg/mistergroup/shouldianswer/MyApp;

    check-cast v2, Landroid/content/Context;

    sget-object v3, Lorg/mistergroup/shouldianswer/services/MonitoringService;->a:Lorg/mistergroup/shouldianswer/services/MonitoringService$a;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/services/MonitoringService$a;->d()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v2, v1}, Lorg/mistergroup/shouldianswer/b/h$a;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;Landroid/content/Context;Z)V

    .line 111
    :cond_2
    sget-object p1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ai;->e()Lorg/mistergroup/shouldianswer/model/a;

    move-result-object p1

    sget-object v0, Lorg/mistergroup/shouldianswer/model/a;->d:Lorg/mistergroup/shouldianswer/model/a;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/e$d;->e:Lorg/mistergroup/shouldianswer/model/ag;

    sget-object v0, Lorg/mistergroup/shouldianswer/model/ag;->a:Lorg/mistergroup/shouldianswer/model/ag;

    if-eq p1, v0, :cond_4

    .line 112
    new-instance p1, Lorg/mistergroup/shouldianswer/b/i;

    invoke-direct {p1}, Lorg/mistergroup/shouldianswer/b/i;-><init>()V

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/e$d;->c:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/b/i;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)V

    goto :goto_1

    .line 115
    :cond_3
    sget-object p1, Lorg/mistergroup/shouldianswer/b/h;->a:Lorg/mistergroup/shouldianswer/b/h$a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/b/h$a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 118
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 120
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
