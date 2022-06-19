.class final Lorg/mistergroup/shouldianswer/utils/t$d;
.super Lkotlin/c/b/a/k;
.source "RingingAlertHelper.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/utils/t;->a(Landroid/widget/LinearLayout;Lkotlin/c/c;)Ljava/lang/Object;
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
    b = "RingingAlertHelper.kt"
    c = {}
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.utils.RingingAlertHelper$loadLocalReviews$2"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lorg/mistergroup/shouldianswer/utils/t;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Landroid/widget/LinearLayout;

.field private e:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/utils/t;Ljava/util/List;Landroid/widget/LinearLayout;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t$d;->b:Lorg/mistergroup/shouldianswer/utils/t;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/utils/t$d;->c:Ljava/util/List;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/utils/t$d;->d:Landroid/widget/LinearLayout;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/utils/t$d;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/utils/t$d;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/utils/t$d;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/utils/t$d;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/utils/t$d;->b:Lorg/mistergroup/shouldianswer/utils/t;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/utils/t$d;->c:Ljava/util/List;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/utils/t$d;->d:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/mistergroup/shouldianswer/utils/t$d;-><init>(Lorg/mistergroup/shouldianswer/utils/t;Ljava/util/List;Landroid/widget/LinearLayout;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/utils/t$d;->e:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    .line 121
    iget v0, p0, Lorg/mistergroup/shouldianswer/utils/t$d;->a:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t$d;->e:Lkotlinx/coroutines/ad;

    .line 123
    :try_start_0
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t$d;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mistergroup/shouldianswer/components/b/b;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/utils/t$d;->b:Lorg/mistergroup/shouldianswer/utils/t;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/utils/t$d;->d:Landroid/widget/LinearLayout;

    invoke-static {v1, v2, v0}, Lorg/mistergroup/shouldianswer/utils/t;->a(Lorg/mistergroup/shouldianswer/utils/t;Landroid/widget/LinearLayout;Lorg/mistergroup/shouldianswer/components/b/b;)V

    goto :goto_0

    .line 124
    :cond_0
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t$d;->b:Lorg/mistergroup/shouldianswer/utils/t;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/t$d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/utils/t;->a(Z)V

    .line 125
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t$d;->d:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/t$d;->b:Lorg/mistergroup/shouldianswer/utils/t;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/t;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 127
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 130
    :goto_3
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
