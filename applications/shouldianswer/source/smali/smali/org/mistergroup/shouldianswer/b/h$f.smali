.class final Lorg/mistergroup/shouldianswer/b/h$f;
.super Lkotlin/c/b/a/k;
.source "RingingAlertPopup.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/b/h;->a(Lorg/mistergroup/shouldianswer/a/e;)V
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


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lorg/mistergroup/shouldianswer/utils/t;

.field final synthetic d:Lorg/mistergroup/shouldianswer/b/h;

.field final synthetic e:Lorg/mistergroup/shouldianswer/a/e;

.field private f:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/utils/t;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/b/h;Lorg/mistergroup/shouldianswer/a/e;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/b/h$f;->c:Lorg/mistergroup/shouldianswer/utils/t;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/b/h$f;->d:Lorg/mistergroup/shouldianswer/b/h;

    iput-object p4, p0, Lorg/mistergroup/shouldianswer/b/h$f;->e:Lorg/mistergroup/shouldianswer/a/e;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/b/h$f;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/b/h$f;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/b/h$f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;
    .locals 4
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

    new-instance v0, Lorg/mistergroup/shouldianswer/b/h$f;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/h$f;->c:Lorg/mistergroup/shouldianswer/utils/t;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/b/h$f;->d:Lorg/mistergroup/shouldianswer/b/h;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/b/h$f;->e:Lorg/mistergroup/shouldianswer/a/e;

    invoke-direct {v0, v1, p2, v2, v3}, Lorg/mistergroup/shouldianswer/b/h$f;-><init>(Lorg/mistergroup/shouldianswer/utils/t;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/b/h;Lorg/mistergroup/shouldianswer/a/e;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/b/h$f;->f:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 195
    iget v1, p0, Lorg/mistergroup/shouldianswer/b/h$f;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/h$f;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 198
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 195
    :cond_1
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/b/h$f;->f:Lkotlinx/coroutines/ad;

    .line 196
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/h$f;->c:Lorg/mistergroup/shouldianswer/utils/t;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/b/h$f;->e:Lorg/mistergroup/shouldianswer/a/e;

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/e;->l:Landroid/widget/LinearLayout;

    const-string v4, "binding.llLocalReviews"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/b/h$f;->a:Ljava/lang/Object;

    iput v2, p0, Lorg/mistergroup/shouldianswer/b/h$f;->b:I

    invoke-virtual {v1, v3, p0}, Lorg/mistergroup/shouldianswer/utils/t;->a(Landroid/widget/LinearLayout;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 197
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/b/h$f;->d:Lorg/mistergroup/shouldianswer/b/h;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/b/h;->g(Lorg/mistergroup/shouldianswer/b/h;)V

    .line 198
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method
