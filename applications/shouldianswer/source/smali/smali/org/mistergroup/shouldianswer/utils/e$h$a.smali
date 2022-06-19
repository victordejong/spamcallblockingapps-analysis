.class final Lorg/mistergroup/shouldianswer/utils/e$h$a;
.super Lkotlin/c/b/a/k;
.source "CallHelper.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/utils/e$h;->b(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = {
        0x151,
        0x152
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.utils.CallHelper$onOutgoingCall$2$d$1"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field final synthetic d:Lorg/mistergroup/shouldianswer/utils/e$h;

.field private e:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/utils/e$h;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/e$h$a;->d:Lorg/mistergroup/shouldianswer/utils/e$h;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/utils/e$h$a;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/utils/e$h$a;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/utils/e$h$a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;
    .locals 2
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

    new-instance v0, Lorg/mistergroup/shouldianswer/utils/e$h$a;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/utils/e$h$a;->d:Lorg/mistergroup/shouldianswer/utils/e$h;

    invoke-direct {v0, v1, p2}, Lorg/mistergroup/shouldianswer/utils/e$h$a;-><init>(Lorg/mistergroup/shouldianswer/utils/e$h;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/utils/e$h$a;->e:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 336
    iget v1, p0, Lorg/mistergroup/shouldianswer/utils/e$h$a;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/e$h$a;->b:Ljava/lang/Object;

    check-cast v0, Lkotlin/e/b/m$a;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/utils/e$h$a;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 339
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 336
    :cond_1
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/utils/e$h$a;->b:Ljava/lang/Object;

    check-cast v1, Lkotlin/e/b/m$a;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/utils/e$h$a;->a:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/e$h$a;->e:Lkotlinx/coroutines/ad;

    .line 337
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/utils/e$h$a;->d:Lorg/mistergroup/shouldianswer/utils/e$h;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/utils/e$h;->d:Lkotlin/e/b/m$a;

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/utils/e$h$a;->d:Lorg/mistergroup/shouldianswer/utils/e$h;

    iget-object v4, v4, Lorg/mistergroup/shouldianswer/utils/e$h;->e:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/e$h$a;->a:Ljava/lang/Object;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/utils/e$h$a;->b:Ljava/lang/Object;

    iput v3, p0, Lorg/mistergroup/shouldianswer/utils/e$h$a;->c:I

    invoke-virtual {v4, p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->g(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    return-object v0

    :cond_3
    move-object v5, v3

    move-object v3, p1

    move-object p1, v5

    .line 336
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v1, Lkotlin/e/b/m$a;->a:Z

    .line 338
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/e$h$a;->d:Lorg/mistergroup/shouldianswer/utils/e$h;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/utils/e$h;->f:Lkotlin/e/b/m$a;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/utils/e$h$a;->d:Lorg/mistergroup/shouldianswer/utils/e$h;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/utils/e$h;->e:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object v3, p0, Lorg/mistergroup/shouldianswer/utils/e$h$a;->a:Ljava/lang/Object;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/e$h$a;->b:Ljava/lang/Object;

    iput v2, p0, Lorg/mistergroup/shouldianswer/utils/e$h$a;->c:I

    invoke-virtual {v1, p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->j(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    move-object p1, v1

    .line 336
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lkotlin/e/b/m$a;->a:Z

    .line 339
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method
