.class final Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;
.super Lkotlin/c/b/a/k;
.source "NumberDetailFragment.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->b(Ljava/lang/Object;)Ljava/lang/Object;
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

.field final synthetic b:Lkotlin/e/b/m$c;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lkotlin/e/b/m$c;

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;

.field final synthetic h:Landroid/widget/LinearLayout;

.field private i:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lkotlin/e/b/m$c;Ljava/lang/String;Lkotlin/e/b/m$c;IILkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;->b:Lkotlin/e/b/m$c;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;->c:Ljava/lang/String;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;->d:Lkotlin/e/b/m$c;

    iput p4, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;->e:I

    iput p5, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;->f:I

    iput-object p7, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;->g:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;

    iput-object p8, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;->h:Landroid/widget/LinearLayout;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;
    .locals 10
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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;->b:Lkotlin/e/b/m$c;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;->c:Ljava/lang/String;

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;->d:Lkotlin/e/b/m$c;

    iget v5, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;->e:I

    iget v6, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;->f:I

    iget-object v8, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;->g:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;

    iget-object v9, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;->h:Landroid/widget/LinearLayout;

    move-object v1, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v9}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;-><init>(Lkotlin/e/b/m$c;Ljava/lang/String;Lkotlin/e/b/m$c;IILkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;Landroid/widget/LinearLayout;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;->i:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    .line 346
    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;->a:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;->i:Lkotlinx/coroutines/ad;

    .line 348
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;->g:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->p:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0049

    .line 350
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;->h:Landroid/widget/LinearLayout;

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 347
    invoke-static {p1, v0, v1, v2}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/a/as;

    .line 353
    iget-object v0, p1, Lorg/mistergroup/shouldianswer/a/as;->g:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "itemBinding.tvCaption"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;->b:Lkotlin/e/b/m$c;

    iget-object v1, v1, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v0, p1, Lorg/mistergroup/shouldianswer/a/as;->h:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "itemBinding.tvDescription"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;->c:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v0, p1, Lorg/mistergroup/shouldianswer/a/as;->i:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "itemBinding.tvTime"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;->d:Lkotlin/e/b/m$c;

    iget-object v3, v3, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/16 v4, 0x8

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 357
    iget-object v0, p1, Lorg/mistergroup/shouldianswer/a/as;->i:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;->d:Lkotlin/e/b/m$c;

    iget-object v1, v1, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p1, Lorg/mistergroup/shouldianswer/a/as;->e:Landroid/widget/ImageView;

    const-string v1, "itemBinding.imgCallType"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;->e:I

    if-lez v1, :cond_2

    move v4, v2

    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 360
    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;->e:I

    if-lez v0, :cond_3

    .line 361
    iget-object v0, p1, Lorg/mistergroup/shouldianswer/a/as;->e:Landroid/widget/ImageView;

    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 362
    iget-object v0, p1, Lorg/mistergroup/shouldianswer/a/as;->e:Landroid/widget/ImageView;

    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;->f:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 364
    :cond_3
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    .line 368
    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 369
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;->h:Landroid/widget/LinearLayout;

    const-string v2, "itemBinding"

    invoke-static {p1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/as;->d()Landroid/view/View;

    move-result-object p1

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
