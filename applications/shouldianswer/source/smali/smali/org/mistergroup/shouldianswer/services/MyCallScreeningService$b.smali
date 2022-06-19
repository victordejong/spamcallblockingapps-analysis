.class final Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;
.super Lkotlin/c/b/a/k;
.source "MyCallScreeningService.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/services/MyCallScreeningService;->onScreenCall(Landroid/telecom/Call$Details;)V
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
    b = "MyCallScreeningService.kt"
    c = {
        0x9f,
        0xa0,
        0xa1
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.services.MyCallScreeningService$onScreenCall$1"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field final synthetic d:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field final synthetic e:J

.field final synthetic f:Lkotlin/e/b/m$c;

.field final synthetic g:Lkotlin/e/b/m$a;

.field private h:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;JLkotlin/e/b/m$c;Lkotlin/e/b/m$a;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;->d:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-wide p2, p0, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;->e:J

    iput-object p4, p0, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;->f:Lkotlin/e/b/m$c;

    iput-object p5, p0, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;->g:Lkotlin/e/b/m$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;
    .locals 8
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

    new-instance v0, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;->d:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-wide v3, p0, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;->e:J

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;->f:Lkotlin/e/b/m$c;

    iget-object v6, p0, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;->g:Lkotlin/e/b/m$a;

    move-object v1, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;JLkotlin/e/b/m$c;Lkotlin/e/b/m$a;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;->h:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 158
    iget v1, p0, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;->c:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;->b:Ljava/lang/Object;

    check-cast v0, Lkotlin/e/b/m$a;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 162
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 158
    :cond_1
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;->b:Ljava/lang/Object;

    check-cast v1, Lkotlin/e/b/m$c;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;->a:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    move-object p1, v1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;->h:Lkotlinx/coroutines/ad;

    .line 159
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/e;->a:Lorg/mistergroup/shouldianswer/utils/e;

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;->d:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-wide v6, p0, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;->e:J

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;->a:Ljava/lang/Object;

    iput v4, p0, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;->c:I

    invoke-virtual {v1, v5, v6, v7, p0}, Lorg/mistergroup/shouldianswer/utils/e;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;JLkotlin/c/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    .line 160
    :cond_4
    :goto_0
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;->f:Lkotlin/e/b/m$c;

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;->d:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;->a:Ljava/lang/Object;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;->b:Ljava/lang/Object;

    iput v3, p0, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;->c:I

    invoke-virtual {v4, p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->e(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_5

    return-object v0

    :cond_5
    move-object v8, v3

    move-object v3, p1

    move-object p1, v8

    .line 158
    :goto_1
    check-cast p1, Lorg/mistergroup/shouldianswer/model/h;

    iput-object p1, v1, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 161
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;->g:Lkotlin/e/b/m$a;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;->d:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object v3, p0, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;->a:Ljava/lang/Object;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;->b:Ljava/lang/Object;

    iput v2, p0, Lorg/mistergroup/shouldianswer/services/MyCallScreeningService$b;->c:I

    invoke-virtual {v1, p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->j(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v0, p1

    move-object p1, v1

    .line 158
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lkotlin/e/b/m$a;->a:Z

    .line 162
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method
