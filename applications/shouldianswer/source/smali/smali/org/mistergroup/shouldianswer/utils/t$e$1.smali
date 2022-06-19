.class final Lorg/mistergroup/shouldianswer/utils/t$e$1;
.super Lkotlin/c/b/a/k;
.source "RingingAlertHelper.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/utils/t$e;->b(Ljava/lang/Object;)Ljava/lang/Object;
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
    e = "org.mistergroup.shouldianswer.utils.RingingAlertHelper$loadReviews$1$1"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lorg/mistergroup/shouldianswer/utils/t$e;

.field final synthetic c:Ljava/util/List;

.field private d:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/utils/t$e;Ljava/util/List;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t$e$1;->b:Lorg/mistergroup/shouldianswer/utils/t$e;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/utils/t$e$1;->c:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/utils/t$e$1;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/utils/t$e$1;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/utils/t$e$1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;
    .locals 3
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

    new-instance v0, Lorg/mistergroup/shouldianswer/utils/t$e$1;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/utils/t$e$1;->b:Lorg/mistergroup/shouldianswer/utils/t$e;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/utils/t$e$1;->c:Ljava/util/List;

    invoke-direct {v0, v1, v2, p2}, Lorg/mistergroup/shouldianswer/utils/t$e$1;-><init>(Lorg/mistergroup/shouldianswer/utils/t$e;Ljava/util/List;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/utils/t$e$1;->d:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    .line 140
    iget v0, p0, Lorg/mistergroup/shouldianswer/utils/t$e$1;->a:I

    if-nez v0, :cond_6

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t$e$1;->d:Lkotlinx/coroutines/ad;

    .line 142
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t$e$1;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mistergroup/shouldianswer/components/b/b;

    .line 143
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/utils/t$e$1;->b:Lorg/mistergroup/shouldianswer/utils/t$e;

    iget-object v4, v4, Lorg/mistergroup/shouldianswer/utils/t$e;->d:Lorg/mistergroup/shouldianswer/utils/t;

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/utils/t$e$1;->b:Lorg/mistergroup/shouldianswer/utils/t$e;

    iget-object v5, v5, Lorg/mistergroup/shouldianswer/utils/t$e;->e:Landroid/widget/LinearLayout;

    invoke-static {v4, v5, v2}, Lorg/mistergroup/shouldianswer/utils/t;->a(Lorg/mistergroup/shouldianswer/utils/t;Landroid/widget/LinearLayout;Lorg/mistergroup/shouldianswer/components/b/b;)V

    add-int/2addr v1, v3

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 147
    :cond_1
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t$e$1;->b:Lorg/mistergroup/shouldianswer/utils/t$e;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/utils/t$e;->d:Lorg/mistergroup/shouldianswer/utils/t;

    invoke-virtual {p1, v3}, Lorg/mistergroup/shouldianswer/utils/t;->c(Z)V

    .line 148
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t$e$1;->b:Lorg/mistergroup/shouldianswer/utils/t$e;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/utils/t$e;->d:Lorg/mistergroup/shouldianswer/utils/t;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/utils/t$e$1;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Lorg/mistergroup/shouldianswer/utils/t;->b(Z)V

    .line 149
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t$e$1;->b:Lorg/mistergroup/shouldianswer/utils/t$e;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/utils/t$e;->d:Lorg/mistergroup/shouldianswer/utils/t;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/utils/t;->k()Z

    move-result p1

    if-nez p1, :cond_3

    .line 150
    new-instance p1, Lorg/mistergroup/shouldianswer/components/b/b;

    invoke-direct {p1}, Lorg/mistergroup/shouldianswer/components/b/b;-><init>()V

    .line 151
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/utils/t$e$1;->b:Lorg/mistergroup/shouldianswer/utils/t$e;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/utils/t$e;->d:Lorg/mistergroup/shouldianswer/utils/t;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/t;->o()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f100206

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/mistergroup/shouldianswer/components/b/b;->a(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/utils/t$e$1;->b:Lorg/mistergroup/shouldianswer/utils/t$e;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/utils/t$e;->d:Lorg/mistergroup/shouldianswer/utils/t;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/t;->o()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f100205

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/mistergroup/shouldianswer/components/b/b;->c(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/utils/t$e$1;->b:Lorg/mistergroup/shouldianswer/utils/t$e;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/utils/t$e;->d:Lorg/mistergroup/shouldianswer/utils/t;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/t;->o()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f100202

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/mistergroup/shouldianswer/components/b/b;->b(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/utils/t$e$1;->b:Lorg/mistergroup/shouldianswer/utils/t$e;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/utils/t$e;->d:Lorg/mistergroup/shouldianswer/utils/t;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/utils/t$e$1;->b:Lorg/mistergroup/shouldianswer/utils/t$e;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/utils/t$e;->e:Landroid/widget/LinearLayout;

    invoke-static {v1, v2, p1}, Lorg/mistergroup/shouldianswer/utils/t;->a(Lorg/mistergroup/shouldianswer/utils/t;Landroid/widget/LinearLayout;Lorg/mistergroup/shouldianswer/components/b/b;)V

    .line 156
    :cond_3
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t$e$1;->b:Lorg/mistergroup/shouldianswer/utils/t$e;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/utils/t$e;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t$e$1;->b:Lorg/mistergroup/shouldianswer/utils/t$e;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/utils/t$e;->f:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 158
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t$e$1;->b:Lorg/mistergroup/shouldianswer/utils/t$e;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/utils/t$e;->g:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 159
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t$e$1;->b:Lorg/mistergroup/shouldianswer/utils/t$e;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/utils/t$e;->d:Lorg/mistergroup/shouldianswer/utils/t;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/utils/t$e$1;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x3

    if-le v2, v4, :cond_4

    goto :goto_1

    :cond_4
    move v3, v0

    :goto_1
    invoke-virtual {p1, v3}, Lorg/mistergroup/shouldianswer/utils/t;->d(Z)V

    .line 160
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/t$e$1;->b:Lorg/mistergroup/shouldianswer/utils/t$e;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/utils/t$e;->h:Landroid/widget/Button;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/utils/t$e$1;->b:Lorg/mistergroup/shouldianswer/utils/t$e;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/utils/t$e;->d:Lorg/mistergroup/shouldianswer/utils/t;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/utils/t;->m()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 161
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
