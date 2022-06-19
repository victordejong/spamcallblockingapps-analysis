.class public final Lorg/mistergroup/shouldianswer/ui/search/f;
.super Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;
.source "SearchViewContactHolder.kt"


# instance fields
.field private a:Lorg/mistergroup/shouldianswer/ui/search/d;

.field private b:Lorg/mistergroup/shouldianswer/model/ac;

.field private final c:Lorg/mistergroup/shouldianswer/a/ag;


# direct methods
.method public constructor <init>(Lorg/mistergroup/shouldianswer/a/ag;Lorg/mistergroup/shouldianswer/ui/search/a;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/ag;->d()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/f;->c:Lorg/mistergroup/shouldianswer/a/ag;

    .line 60
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/f;->c:Lorg/mistergroup/shouldianswer/a/ag;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/ag;->d()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/search/f$1;

    invoke-direct {v0, p0, p2}, Lorg/mistergroup/shouldianswer/ui/search/f$1;-><init>(Lorg/mistergroup/shouldianswer/ui/search/f;Lorg/mistergroup/shouldianswer/ui/search/a;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/search/f$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/search/f$2;-><init>(Lorg/mistergroup/shouldianswer/ui/search/f;Landroid/view/View;Lorg/mistergroup/shouldianswer/ui/search/a;)V

    check-cast v0, Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 77
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/f;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ag;->c:Landroid/widget/ImageButton;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/search/f$3;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/search/f$3;-><init>(Lorg/mistergroup/shouldianswer/ui/search/f;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/f;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ag;->e:Landroid/widget/FrameLayout;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/search/f$4;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/search/f$4;-><init>(Lorg/mistergroup/shouldianswer/ui/search/f;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/search/f;)Lorg/mistergroup/shouldianswer/ui/search/d;
    .locals 0

    .line 16
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/search/f;->a:Lorg/mistergroup/shouldianswer/ui/search/d;

    return-object p0
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/search/f;Lorg/mistergroup/shouldianswer/ui/search/d;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lorg/mistergroup/shouldianswer/ui/search/f;->b(Lorg/mistergroup/shouldianswer/ui/search/d;)V

    return-void
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/search/f;)Lorg/mistergroup/shouldianswer/model/ac;
    .locals 0

    .line 16
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/search/f;->b:Lorg/mistergroup/shouldianswer/model/ac;

    return-object p0
.end method

.method private final b(Lorg/mistergroup/shouldianswer/ui/search/d;)V
    .locals 12

    const-string v0, "binding.tvDescription"

    const-string v1, "java.lang.String.format(format, *args)"

    const-string v2, "binding.butCall"

    .line 23
    :try_start_0
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/search/f;->c:Lorg/mistergroup/shouldianswer/a/ag;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/a/ag;->d()Landroid/view/View;

    move-result-object v3

    const-string v4, "binding.root"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 24
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/search/f;->b:Lorg/mistergroup/shouldianswer/model/ac;

    if-eqz v4, :cond_3

    .line 25
    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/ac;->j()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v5

    .line 26
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/search/d;->d()Landroid/text/Spanned;

    move-result-object v6

    .line 27
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/search/d;->e()Landroid/text/Spanned;

    move-result-object p1

    .line 28
    iget-object v7, p0, Lorg/mistergroup/shouldianswer/ui/search/f;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v7, v7, Lorg/mistergroup/shouldianswer/a/ag;->c:Landroid/widget/ImageButton;

    invoke-static {v7, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 29
    iget-object v7, p0, Lorg/mistergroup/shouldianswer/ui/search/f;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v7, v7, Lorg/mistergroup/shouldianswer/a/ag;->c:Landroid/widget/ImageButton;

    invoke-static {v7, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/e/b/p;->a:Lkotlin/e/b/p;

    const v2, 0x7f100164

    .line 30
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v9, "context.getString(R.stri\u2026r_but_call_accessibility)"

    invoke-static {v2, v9}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    .line 31
    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/ac;->b()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v8

    .line 29
    array-length v11, v10

    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v7, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/search/f;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ag;->j:Landroid/widget/ImageView;

    const-string v7, "binding.imgCallType"

    invoke-static {v2, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/search/f;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ag;->o:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v10, "binding.tvCaption"

    invoke-static {v2, v10}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v6, :cond_0

    :goto_0
    check-cast v6, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/ac;->b()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :goto_1
    invoke-virtual {v2, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/search/f;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ag;->q:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    :goto_2
    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_3

    :cond_1
    if-nez v5, :cond_2

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_2
    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->f()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :goto_3
    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/f;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ag;->q:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 37
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/f;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ag;->r:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "binding.tvTime"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 38
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/f;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ag;->e:Landroid/widget/FrameLayout;

    const-string v0, "binding.frameContactPhoto"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/e/b/p;->a:Lkotlin/e/b/p;

    const v0, 0x7f100165

    .line 39
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "context.getString(R.stri\u2026er_contact_accessibility)"

    invoke-static {v0, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v9, [Ljava/lang/Object;

    .line 40
    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/ac;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 38
    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 42
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/p;->a:Lorg/mistergroup/shouldianswer/utils/p;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/f;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ag;->k:Lcom/makeramen/roundedimageview/RoundedImageView;

    const-string v1, "binding.imgContactPhoto"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/search/f;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/ag;->p:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvContactPhoto"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4, v0, v1}, Lorg/mistergroup/shouldianswer/utils/p;->a(Lorg/mistergroup/shouldianswer/model/ac;Lcom/makeramen/roundedimageview/RoundedImageView;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 43
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/f;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ag;->l:Landroid/widget/ImageView;

    const-string v0, "binding.imgRatingBig"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/f;->c:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ag;->m:Landroid/widget/ImageView;

    const-string v0, "binding.imgRatingSmall"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 47
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_3
    :goto_4
    return-void
.end method

.method public static final synthetic c(Lorg/mistergroup/shouldianswer/ui/search/f;)Lorg/mistergroup/shouldianswer/a/ag;
    .locals 0

    .line 16
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/search/f;->c:Lorg/mistergroup/shouldianswer/a/ag;

    return-object p0
.end method


# virtual methods
.method public final a(Lorg/mistergroup/shouldianswer/ui/search/d;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/f;->a:Lorg/mistergroup/shouldianswer/ui/search/d;

    .line 54
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/search/f$a;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/ui/search/f$a;-><init>(Lorg/mistergroup/shouldianswer/ui/search/f;Lorg/mistergroup/shouldianswer/ui/search/d;)V

    check-cast v0, Ljava/util/Observer;

    .line 55
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/search/d;->c()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/f;->b:Lorg/mistergroup/shouldianswer/model/ac;

    .line 56
    invoke-direct {p0, p1}, Lorg/mistergroup/shouldianswer/ui/search/f;->b(Lorg/mistergroup/shouldianswer/ui/search/d;)V

    return-void
.end method
