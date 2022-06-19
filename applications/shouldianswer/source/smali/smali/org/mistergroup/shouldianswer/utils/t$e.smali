.class final Lorg/mistergroup/shouldianswer/utils/t$e;
.super Lkotlin/c/b/a/k;
.source "RingingAlertHelper.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/utils/t;->a(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/ProgressBar;Landroidx/appcompat/widget/AppCompatTextView;)V
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
    c = {
        0x8b,
        0x8c,
        0xa3
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.utils.RingingAlertHelper$loadReviews$1"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field final synthetic d:Lorg/mistergroup/shouldianswer/utils/t;

.field final synthetic e:Landroid/widget/LinearLayout;

.field final synthetic f:Landroid/widget/ProgressBar;

.field final synthetic g:Landroidx/appcompat/widget/AppCompatTextView;

.field final synthetic h:Landroid/widget/Button;

.field private i:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/utils/t;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/Button;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t$e;->d:Lorg/mistergroup/shouldianswer/utils/t;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/utils/t$e;->e:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/utils/t$e;->f:Landroid/widget/ProgressBar;

    iput-object p4, p0, Lorg/mistergroup/shouldianswer/utils/t$e;->g:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p5, p0, Lorg/mistergroup/shouldianswer/utils/t$e;->h:Landroid/widget/Button;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/utils/t$e;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/utils/t$e;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/utils/t$e;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/utils/t$e;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/utils/t$e;->d:Lorg/mistergroup/shouldianswer/utils/t;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/utils/t$e;->e:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/utils/t$e;->f:Landroid/widget/ProgressBar;

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/utils/t$e;->g:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v6, p0, Lorg/mistergroup/shouldianswer/utils/t$e;->h:Landroid/widget/Button;

    move-object v1, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/mistergroup/shouldianswer/utils/t$e;-><init>(Lorg/mistergroup/shouldianswer/utils/t;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/Button;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/utils/t$e;->i:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 137
    iget v1, p0, Lorg/mistergroup/shouldianswer/utils/t$e;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/t$e;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/t$e;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 173
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_1
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/utils/t$e;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/utils/t$e;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/ad;

    :try_start_0
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/utils/t$e;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/ad;

    :try_start_1
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/utils/t$e;->i:Lkotlinx/coroutines/ad;

    .line 139
    :try_start_2
    sget-object p1, Lorg/mistergroup/shouldianswer/components/b/a;->a:Lorg/mistergroup/shouldianswer/components/b/a;

    iget-object v6, p0, Lorg/mistergroup/shouldianswer/utils/t$e;->d:Lorg/mistergroup/shouldianswer/utils/t;

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/utils/t;->n()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v6

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/utils/t$e;->a:Ljava/lang/Object;

    iput v5, p0, Lorg/mistergroup/shouldianswer/utils/t$e;->c:I

    invoke-virtual {p1, v6, v5, p0}, Lorg/mistergroup/shouldianswer/components/b/a;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;ZLkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 137
    :cond_4
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 140
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v5

    check-cast v5, Lkotlin/c/f;

    new-instance v6, Lorg/mistergroup/shouldianswer/utils/t$e$1;

    invoke-direct {v6, p0, p1, v2}, Lorg/mistergroup/shouldianswer/utils/t$e$1;-><init>(Lorg/mistergroup/shouldianswer/utils/t$e;Ljava/util/List;Lkotlin/c/c;)V

    check-cast v6, Lkotlin/e/a/m;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/utils/t$e;->a:Ljava/lang/Object;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t$e;->b:Ljava/lang/Object;

    iput v4, p0, Lorg/mistergroup/shouldianswer/utils/t$e;->c:I

    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne p1, v0, :cond_5

    return-object v0

    :catch_0
    move-exception p1

    .line 163
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v4

    check-cast v4, Lkotlin/c/f;

    new-instance v5, Lorg/mistergroup/shouldianswer/utils/t$e$2;

    invoke-direct {v5, p0, p1, v2}, Lorg/mistergroup/shouldianswer/utils/t$e$2;-><init>(Lorg/mistergroup/shouldianswer/utils/t$e;Ljava/lang/Exception;Lkotlin/c/c;)V

    check-cast v5, Lkotlin/e/a/m;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/utils/t$e;->a:Ljava/lang/Object;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t$e;->b:Ljava/lang/Object;

    iput v3, p0, Lorg/mistergroup/shouldianswer/utils/t$e;->c:I

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 173
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method
