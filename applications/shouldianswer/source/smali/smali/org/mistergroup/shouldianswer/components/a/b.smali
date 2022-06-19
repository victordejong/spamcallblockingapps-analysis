.class public final Lorg/mistergroup/shouldianswer/components/a/b;
.super Landroidx/recyclerview/widget/RecyclerView$w;
.source "ContactViewContactHolder.kt"


# instance fields
.field private a:Lorg/mistergroup/shouldianswer/components/a/a;

.field private b:Lorg/mistergroup/shouldianswer/model/ac;

.field private final c:Lorg/mistergroup/shouldianswer/a/ag;

.field private final d:Lorg/mistergroup/shouldianswer/components/a/e;


# direct methods
.method public constructor <init>(Lorg/mistergroup/shouldianswer/a/ag;Lorg/mistergroup/shouldianswer/components/a/e;)V
    .locals 3

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/ag;->d()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/b;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/components/a/b;->d:Lorg/mistergroup/shouldianswer/components/a/e;

    .line 68
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/b;->c:Lorg/mistergroup/shouldianswer/a/ag;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/ag;->d()Landroid/view/View;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance p2, Lorg/mistergroup/shouldianswer/components/a/b$1;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/components/a/b$1;-><init>(Lorg/mistergroup/shouldianswer/components/a/b;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    new-instance p2, Lorg/mistergroup/shouldianswer/components/a/b$2;

    invoke-direct {p2, p0, p1}, Lorg/mistergroup/shouldianswer/components/a/b$2;-><init>(Lorg/mistergroup/shouldianswer/components/a/b;Landroid/view/View;)V

    check-cast p2, Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 86
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/components/a/b;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ag;->c:Landroid/widget/ImageButton;

    new-instance v0, Lorg/mistergroup/shouldianswer/components/a/b$3;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/components/a/b$3;-><init>(Lorg/mistergroup/shouldianswer/components/a/b;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/components/a/b;->d:Lorg/mistergroup/shouldianswer/components/a/e;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/components/a/e;->e()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 90
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/components/a/b;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ag;->d:Landroid/widget/FrameLayout;

    const-string v0, "binding.flCall"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v1, 0x19

    int-to-float v1, v1

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v2, "itemView.resources"

    invoke-static {p1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/16 v2, 0xa0

    int-to-float v2, v2

    div-float/2addr p1, v2

    mul-float/2addr v1, p1

    .line 92
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 93
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/b;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ag;->d:Landroid/widget/FrameLayout;

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 90
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/b;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ag;->e:Landroid/widget/FrameLayout;

    new-instance p2, Lorg/mistergroup/shouldianswer/components/a/b$4;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/components/a/b$4;-><init>(Lorg/mistergroup/shouldianswer/components/a/b;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/components/a/b;)Lorg/mistergroup/shouldianswer/components/a/a;
    .locals 0

    .line 18
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/components/a/b;->a:Lorg/mistergroup/shouldianswer/components/a/a;

    return-object p0
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/components/a/b;Lorg/mistergroup/shouldianswer/components/a/a;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lorg/mistergroup/shouldianswer/components/a/b;->b(Lorg/mistergroup/shouldianswer/components/a/a;)V

    return-void
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/components/a/b;)Lorg/mistergroup/shouldianswer/model/ac;
    .locals 0

    .line 18
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/components/a/b;->b:Lorg/mistergroup/shouldianswer/model/ac;

    return-object p0
.end method

.method private final b(Lorg/mistergroup/shouldianswer/components/a/a;)V
    .locals 12

    const-string v0, "binding.tvDescription"

    const-string v1, "java.lang.String.format(format, *args)"

    const-string v2, "binding.butCall"

    .line 25
    :try_start_0
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/components/a/b;->c:Lorg/mistergroup/shouldianswer/a/ag;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/a/ag;->d()Landroid/view/View;

    move-result-object v3

    const-string v4, "binding.root"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 26
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/components/a/b;->b:Lorg/mistergroup/shouldianswer/model/ac;

    if-eqz v4, :cond_8

    .line 27
    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/ac;->j()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v5

    .line 28
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/a/a;->a()Landroid/text/Spanned;

    move-result-object v6

    .line 29
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/a/a;->b()Landroid/text/Spanned;

    move-result-object p1

    .line 30
    iget-object v7, p0, Lorg/mistergroup/shouldianswer/components/a/b;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v7, v7, Lorg/mistergroup/shouldianswer/a/ag;->c:Landroid/widget/ImageButton;

    invoke-static {v7, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 31
    iget-object v7, p0, Lorg/mistergroup/shouldianswer/components/a/b;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v7, v7, Lorg/mistergroup/shouldianswer/a/ag;->c:Landroid/widget/ImageButton;

    invoke-static {v7, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/e/b/p;->a:Lkotlin/e/b/p;

    const v2, 0x7f100164

    .line 32
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v9, "context.getString(R.stri\u2026r_but_call_accessibility)"

    invoke-static {v2, v9}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    .line 33
    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/ac;->b()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v8

    .line 31
    array-length v11, v10

    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v7, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/components/a/b;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ag;->j:Landroid/widget/ImageView;

    const-string v7, "binding.imgCallType"

    invoke-static {v2, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/ac;->b()Ljava/lang/String;

    move-result-object v2

    .line 37
    iget-object v10, p0, Lorg/mistergroup/shouldianswer/components/a/b;->d:Lorg/mistergroup/shouldianswer/components/a/e;

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/components/a/e;->b()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 38
    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/ac;->g()Ljava/lang/String;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_0

    goto :goto_0

    :cond_0
    move v10, v8

    goto :goto_1

    :cond_1
    :goto_0
    move v10, v9

    :goto_1
    if-nez v10, :cond_4

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/ac;->h()Ljava/lang/String;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    if-eqz v10, :cond_3

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_2

    goto :goto_2

    :cond_2
    move v10, v8

    goto :goto_3

    :cond_3
    :goto_2
    move v10, v9

    :goto_3
    if-nez v10, :cond_4

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/ac;->g()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/ac;->h()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 42
    :cond_4
    iget-object v10, p0, Lorg/mistergroup/shouldianswer/components/a/b;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v10, v10, Lorg/mistergroup/shouldianswer/a/ag;->o:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v11, "binding.tvCaption"

    invoke-static {v10, v11}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v6, :cond_5

    check-cast v6, Ljava/lang/CharSequence;

    goto :goto_4

    :cond_5
    move-object v6, v2

    check-cast v6, Ljava/lang/CharSequence;

    :goto_4
    invoke-virtual {v10, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/components/a/b;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ag;->q:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    :goto_5
    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_6

    :cond_6
    if-nez v5, :cond_7

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_7
    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->f()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :goto_6
    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/b;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ag;->q:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 45
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/b;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ag;->r:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "binding.tvTime"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 46
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/b;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ag;->e:Landroid/widget/FrameLayout;

    const-string v0, "binding.frameContactPhoto"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/e/b/p;->a:Lkotlin/e/b/p;

    const v0, 0x7f100165

    .line 47
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "context.getString(R.stri\u2026er_contact_accessibility)"

    invoke-static {v0, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v9, [Ljava/lang/Object;

    .line 48
    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/ac;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 46
    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 50
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/p;->a:Lorg/mistergroup/shouldianswer/utils/p;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/a/b;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ag;->k:Lcom/makeramen/roundedimageview/RoundedImageView;

    const-string v1, "binding.imgContactPhoto"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/components/a/b;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/ag;->p:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvContactPhoto"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4, v0, v1}, Lorg/mistergroup/shouldianswer/utils/p;->a(Lorg/mistergroup/shouldianswer/model/ac;Lcom/makeramen/roundedimageview/RoundedImageView;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 51
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/b;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ag;->l:Landroid/widget/ImageView;

    const-string v0, "binding.imgRatingBig"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/b;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ag;->m:Landroid/widget/ImageView;

    const-string v0, "binding.imgRatingSmall"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception p1

    .line 55
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_8
    :goto_7
    return-void
.end method

.method public static final synthetic c(Lorg/mistergroup/shouldianswer/components/a/b;)Lorg/mistergroup/shouldianswer/a/ag;
    .locals 0

    .line 18
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/components/a/b;->c:Lorg/mistergroup/shouldianswer/a/ag;

    return-object p0
.end method


# virtual methods
.method public final a()Lorg/mistergroup/shouldianswer/components/a/e;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/a/b;->d:Lorg/mistergroup/shouldianswer/components/a/e;

    return-object v0
.end method

.method public final a(Lorg/mistergroup/shouldianswer/components/a/a;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/a/b;->a:Lorg/mistergroup/shouldianswer/components/a/a;

    .line 62
    new-instance v0, Lorg/mistergroup/shouldianswer/components/a/b$a;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/components/a/b$a;-><init>(Lorg/mistergroup/shouldianswer/components/a/b;Lorg/mistergroup/shouldianswer/components/a/a;)V

    check-cast v0, Ljava/util/Observer;

    .line 63
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/a/a;->f()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/components/a/b;->b:Lorg/mistergroup/shouldianswer/model/ac;

    .line 64
    invoke-direct {p0, p1}, Lorg/mistergroup/shouldianswer/components/a/b;->b(Lorg/mistergroup/shouldianswer/components/a/a;)V

    return-void
.end method
