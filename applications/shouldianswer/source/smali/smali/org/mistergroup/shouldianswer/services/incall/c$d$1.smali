.class final Lorg/mistergroup/shouldianswer/services/incall/c$d$1;
.super Lkotlin/c/b/a/k;
.source "MyInCallPresenter.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/services/incall/c$d;->b(Ljava/lang/Object;)Ljava/lang/Object;
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
    b = "MyInCallPresenter.kt"
    c = {
        0x83
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.services.incall.MyInCallPresenter$updateNotification$1$2"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field final synthetic d:Lorg/mistergroup/shouldianswer/model/ac;

.field private e:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/model/ac;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/services/incall/c$d$1;->d:Lorg/mistergroup/shouldianswer/model/ac;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/services/incall/c$d$1;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/services/incall/c$d$1;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/services/incall/c$d$1;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$1;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/services/incall/c$d$1;->d:Lorg/mistergroup/shouldianswer/model/ac;

    invoke-direct {v0, v1, p2}, Lorg/mistergroup/shouldianswer/services/incall/c$d$1;-><init>(Lorg/mistergroup/shouldianswer/model/ac;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d$1;->e:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 129
    iget v1, p0, Lorg/mistergroup/shouldianswer/services/incall/c$d$1;->c:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/services/incall/c$d$1;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/services/incall/c$d$1;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 132
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_1
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/services/incall/c$d$1;->e:Lkotlinx/coroutines/ad;

    .line 130
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/q;->a:Lorg/mistergroup/shouldianswer/utils/q;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/services/incall/c$d$1;->d:Lorg/mistergroup/shouldianswer/model/ac;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/ac;->d()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/mistergroup/shouldianswer/utils/q;->b(J)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 131
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v3

    check-cast v3, Lkotlin/c/f;

    new-instance v4, Lorg/mistergroup/shouldianswer/services/incall/c$d$1$1;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lorg/mistergroup/shouldianswer/services/incall/c$d$1$1;-><init>(Landroid/graphics/Bitmap;Lkotlin/c/c;)V

    check-cast v4, Lkotlin/e/a/m;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/services/incall/c$d$1;->a:Ljava/lang/Object;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/services/incall/c$d$1;->b:Ljava/lang/Object;

    iput v2, p0, Lorg/mistergroup/shouldianswer/services/incall/c$d$1;->c:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 132
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method
