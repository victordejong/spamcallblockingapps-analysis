.class final Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a$1;
.super Lkotlin/c/b/a/k;
.source "NumberDetailFragment.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->b(Ljava/lang/Object;)Ljava/lang/Object;
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
.field a:I

.field final synthetic b:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;

.field final synthetic c:Ljava/lang/String;

.field private d:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;Ljava/lang/String;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a$1;->b:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a$1;->c:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a$1;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a$1;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a$1;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a$1;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a$1;->b:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a$1;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a$1;-><init>(Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;Ljava/lang/String;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a$1;->d:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    .line 434
    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a$1;->a:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a$1;->d:Lkotlinx/coroutines/ad;

    .line 435
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a$1;->b:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->d:Lorg/mistergroup/shouldianswer/a/au;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/au;->L:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "binding.tvCountry"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a$1;->c:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 436
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a$1;->b:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->d:Lorg/mistergroup/shouldianswer/a/au;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/au;->L:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a$1;->c:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
