.class public final Lorg/mistergroup/shouldianswer/ui/search/j;
.super Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;
.source "SearchViewNumberHolder.kt"


# instance fields
.field private a:Lorg/mistergroup/shouldianswer/ui/search/d;

.field private final b:Lorg/mistergroup/shouldianswer/a/ag;


# direct methods
.method public constructor <init>(Lorg/mistergroup/shouldianswer/a/ag;Lorg/mistergroup/shouldianswer/ui/search/a;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/ag;->d()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    .line 14
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/ag;->d()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/search/j$1;

    invoke-direct {v0, p0, p2}, Lorg/mistergroup/shouldianswer/ui/search/j$1;-><init>(Lorg/mistergroup/shouldianswer/ui/search/j;Lorg/mistergroup/shouldianswer/ui/search/a;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/search/j$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/search/j$2;-><init>(Lorg/mistergroup/shouldianswer/ui/search/j;Landroid/view/View;Lorg/mistergroup/shouldianswer/ui/search/a;)V

    check-cast v0, Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 32
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ag;->c:Landroid/widget/ImageButton;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/search/j$3;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/search/j$3;-><init>(Lorg/mistergroup/shouldianswer/ui/search/j;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ag;->e:Landroid/widget/FrameLayout;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/search/j$4;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/search/j$4;-><init>(Lorg/mistergroup/shouldianswer/ui/search/j;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/search/j;)Lorg/mistergroup/shouldianswer/ui/search/d;
    .locals 1

    .line 11
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/search/j;->a:Lorg/mistergroup/shouldianswer/ui/search/d;

    if-nez p0, :cond_0

    const-string v0, "item"

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/search/j;)Lorg/mistergroup/shouldianswer/a/ag;
    .locals 0

    .line 11
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    return-object p0
.end method

.method private final b(Lorg/mistergroup/shouldianswer/ui/search/d;)V
    .locals 23

    move-object/from16 v1, p0

    const-string v0, "java.lang.String.format(format, *args)"

    const-string v2, "binding.tvDescription"

    const-string v3, "binding.tvTime"

    const-string v4, "binding.frameContactPhoto"

    const-string v5, "binding.imgRatingBig"

    const-string v6, "binding.imgRatingSmall"

    const-string v7, "binding.root.context"

    const-string v8, "binding.root"

    .line 58
    :try_start_0
    iget-object v10, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/a/ag;->d()Landroid/view/View;

    move-result-object v10

    invoke-static {v10, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 59
    invoke-virtual/range {p1 .. p1}, Lorg/mistergroup/shouldianswer/ui/search/d;->b()Lorg/mistergroup/shouldianswer/ui/main/c/c;

    move-result-object v11

    if-eqz v11, :cond_1a

    .line 60
    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->f()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v12

    .line 61
    invoke-virtual {v12}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->f()Ljava/lang/String;

    move-result-object v13

    .line 62
    invoke-virtual {v12}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->j()Ljava/lang/String;

    move-result-object v14

    .line 63
    move-object v15, v14

    check-cast v15, Ljava/lang/CharSequence;

    if-eqz v15, :cond_1

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-nez v15, :cond_0

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v15, 0x1

    :goto_1
    if-nez v15, :cond_2

    const/4 v15, 0x1

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    .line 65
    :goto_2
    move-object/from16 v16, v14

    check-cast v16, Ljava/lang/CharSequence;

    if-eqz v16, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v16

    if-nez v16, :cond_3

    goto :goto_3

    :cond_3
    const/16 v16, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/16 v16, 0x1

    :goto_4
    if-nez v16, :cond_5

    move-object v13, v14

    goto :goto_5

    :cond_5
    invoke-static {v12}, Lorg/mistergroup/shouldianswer/model/x;->e(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Z

    move-result v16

    if-eqz v16, :cond_6

    const v13, 0x7f10009a

    invoke-virtual {v10, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    :cond_6
    const-string v9, "if (numberInfo.isHiddenN\u2026        ) else itemNumber"

    invoke-static {v13, v9}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    :goto_5
    iget-object v9, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v9, v9, Lorg/mistergroup/shouldianswer/a/ag;->c:Landroid/widget/ImageButton;

    move/from16 v17, v15

    const-string v15, "binding.butCall"

    invoke-static {v9, v15}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v15, Lkotlin/e/b/p;->a:Lkotlin/e/b/p;

    const v15, 0x7f100164

    invoke-virtual {v10, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v10

    const-string v10, "context.getString(R.stri\u2026r_but_call_accessibility)"

    invoke-static {v15, v10}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v19, v14

    const/4 v10, 0x1

    new-array v14, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v13, v14, v10

    array-length v10, v14

    invoke-static {v14, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v15, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v9, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v9, v9, Lorg/mistergroup/shouldianswer/a/ag;->o:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v10, "binding.tvCaption"

    invoke-static {v9, v10}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v13

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v9, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v9, v9, Lorg/mistergroup/shouldianswer/a/ag;->h:Landroid/widget/ImageView;

    const-string v10, "binding.imgCallHistory1"

    invoke-static {v9, v10}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    iget-object v9, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v9, v9, Lorg/mistergroup/shouldianswer/a/ag;->i:Landroid/widget/ImageView;

    const-string v14, "binding.imgCallHistory2"

    invoke-static {v9, v14}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    iget-object v9, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v9, v9, Lorg/mistergroup/shouldianswer/a/ag;->l:Landroid/widget/ImageView;

    invoke-static {v9, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    iget-object v9, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v9, v9, Lorg/mistergroup/shouldianswer/a/ag;->m:Landroid/widget/ImageView;

    invoke-static {v9, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v14, 0x8

    invoke-virtual {v9, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    iget-object v9, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v9, v9, Lorg/mistergroup/shouldianswer/a/ag;->e:Landroid/widget/FrameLayout;

    invoke-static {v9, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 76
    iget-object v9, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v9, v9, Lorg/mistergroup/shouldianswer/a/ag;->r:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v9, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 77
    iget-object v9, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v9, v9, Lorg/mistergroup/shouldianswer/a/ag;->q:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v9, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 78
    iget-object v9, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v9, v9, Lorg/mistergroup/shouldianswer/a/ag;->j:Landroid/widget/ImageView;

    const-string v15, "binding.imgCallType"

    invoke-static {v9, v15}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    invoke-virtual {v12}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->n()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    goto :goto_6

    :cond_7
    const-string v9, ""

    .line 81
    :goto_6
    invoke-virtual {v12}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->p()Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v10

    if-eqz v10, :cond_8

    goto :goto_7

    :cond_8
    sget-object v10, Lorg/mistergroup/shouldianswer/model/ag;->a:Lorg/mistergroup/shouldianswer/model/ag;

    .line 82
    :goto_7
    invoke-virtual {v12}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->d()Lorg/mistergroup/shouldianswer/model/k;

    move-result-object v15

    .line 83
    invoke-virtual {v12}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->l()Lorg/mistergroup/shouldianswer/model/h;

    move-result-object v12

    .line 84
    sget-object v14, Lorg/mistergroup/shouldianswer/model/k;->i:Lorg/mistergroup/shouldianswer/model/k$a;

    invoke-virtual {v14, v15}, Lorg/mistergroup/shouldianswer/model/k$a;->b(Lorg/mistergroup/shouldianswer/model/k;)I

    move-result v14

    move/from16 v20, v14

    .line 85
    sget-object v14, Lorg/mistergroup/shouldianswer/model/k;->i:Lorg/mistergroup/shouldianswer/model/k$a;

    move-object/from16 v21, v10

    iget-object v10, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/a/ag;->d()Landroid/view/View;

    move-result-object v10

    invoke-static {v10, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14, v10, v15}, Lorg/mistergroup/shouldianswer/model/k$a;->a(Landroid/content/Context;Lorg/mistergroup/shouldianswer/model/k;)I

    move-result v10

    if-eqz v12, :cond_c

    .line 89
    sget-object v14, Lorg/mistergroup/shouldianswer/model/h;->a:Lorg/mistergroup/shouldianswer/model/h;

    if-eq v12, v14, :cond_c

    .line 92
    sget-object v10, Lorg/mistergroup/shouldianswer/utils/x;->a:Lorg/mistergroup/shouldianswer/utils/x;

    iget-object v14, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    invoke-virtual {v14}, Lorg/mistergroup/shouldianswer/a/ag;->d()Landroid/view/View;

    move-result-object v14

    invoke-static {v14, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v22, v6

    const v6, 0x7f0401e8

    invoke-virtual {v10, v14, v6}, Lorg/mistergroup/shouldianswer/utils/x;->a(Landroid/content/Context;I)I

    move-result v10

    .line 93
    sget-object v6, Lorg/mistergroup/shouldianswer/model/h;->m:Lorg/mistergroup/shouldianswer/model/h$a;

    invoke-virtual {v6, v12}, Lorg/mistergroup/shouldianswer/model/h$a;->a(Lorg/mistergroup/shouldianswer/model/h;)Ljava/lang/String;

    move-result-object v6

    .line 94
    sget-object v14, Lorg/mistergroup/shouldianswer/model/h;->h:Lorg/mistergroup/shouldianswer/model/h;

    if-eq v12, v14, :cond_9

    sget-object v14, Lorg/mistergroup/shouldianswer/model/h;->c:Lorg/mistergroup/shouldianswer/model/h;

    if-ne v12, v14, :cond_b

    :cond_9
    move-object v14, v9

    check-cast v14, Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-nez v14, :cond_a

    const/4 v14, 0x1

    goto :goto_8

    :cond_a
    const/4 v14, 0x0

    :goto_8
    if-nez v14, :cond_b

    goto :goto_9

    :cond_b
    move-object v9, v6

    :goto_9
    const v6, 0x7f0800a3

    goto :goto_a

    :cond_c
    move-object/from16 v22, v6

    move/from16 v6, v20

    .line 100
    :goto_a
    iget-object v14, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v14, v14, Lorg/mistergroup/shouldianswer/a/ag;->q:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v14, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v20, v5

    move-object v5, v9

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v14, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v5, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v5, v5, Lorg/mistergroup/shouldianswer/a/ag;->q:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v5, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_d

    const/4 v2, 0x1

    goto :goto_b

    :cond_d
    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_e

    const/16 v2, 0x8

    goto :goto_c

    :cond_e
    const/4 v2, 0x0

    :goto_c
    invoke-virtual {v5, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 103
    iget-object v2, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ag;->r:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->h()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v2, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ag;->r:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez v6, :cond_f

    sget-object v3, Lorg/mistergroup/shouldianswer/model/k;->h:Lorg/mistergroup/shouldianswer/model/k;

    if-eq v15, v3, :cond_f

    const/4 v3, 0x0

    goto :goto_d

    :cond_f
    const/16 v3, 0x8

    :goto_d
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 106
    iget-object v2, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ag;->j:Landroid/widget/ImageView;

    const-string v3, "binding.imgCallType"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez v6, :cond_10

    const/4 v3, 0x0

    goto :goto_e

    :cond_10
    const/16 v3, 0x8

    :goto_e
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-lez v6, :cond_11

    .line 108
    iget-object v2, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ag;->j:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    iget-object v2, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ag;->j:Landroid/widget/ImageView;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v10, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 112
    :cond_11
    iget-object v2, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ag;->h:Landroid/widget/ImageView;

    const-string v3, "binding.imgCallHistory1"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_12

    sget-object v3, Lorg/mistergroup/shouldianswer/model/h;->a:Lorg/mistergroup/shouldianswer/model/h;

    if-ne v12, v3, :cond_12

    const/4 v3, 0x0

    goto :goto_f

    :cond_12
    const/16 v3, 0x8

    :goto_f
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    iget-object v2, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ag;->i:Landroid/widget/ImageView;

    const-string v3, "binding.imgCallHistory2"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x2

    if-le v3, v5, :cond_13

    sget-object v3, Lorg/mistergroup/shouldianswer/model/h;->a:Lorg/mistergroup/shouldianswer/model/h;

    if-ne v12, v3, :cond_13

    const/4 v3, 0x0

    goto :goto_10

    :cond_13
    const/16 v3, 0x8

    :goto_10
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_14

    sget-object v2, Lorg/mistergroup/shouldianswer/model/h;->a:Lorg/mistergroup/shouldianswer/model/h;

    if-ne v12, v2, :cond_14

    .line 115
    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mistergroup/shouldianswer/model/j$b;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/j$b;->d()Lorg/mistergroup/shouldianswer/model/k;

    move-result-object v2

    .line 116
    iget-object v3, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/ag;->h:Landroid/widget/ImageView;

    sget-object v5, Lorg/mistergroup/shouldianswer/model/k;->i:Lorg/mistergroup/shouldianswer/model/k$a;

    invoke-virtual {v5, v2}, Lorg/mistergroup/shouldianswer/model/k$a;->b(Lorg/mistergroup/shouldianswer/model/k;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    iget-object v3, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/ag;->h:Landroid/widget/ImageView;

    sget-object v5, Lorg/mistergroup/shouldianswer/model/k;->i:Lorg/mistergroup/shouldianswer/model/k$a;

    iget-object v6, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/a/ag;->d()Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v2}, Lorg/mistergroup/shouldianswer/model/k$a;->a(Landroid/content/Context;Lorg/mistergroup/shouldianswer/model/k;)I

    move-result v2

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v2, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 119
    :cond_14
    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_15

    sget-object v2, Lorg/mistergroup/shouldianswer/model/h;->a:Lorg/mistergroup/shouldianswer/model/h;

    if-ne v12, v2, :cond_15

    .line 120
    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mistergroup/shouldianswer/model/j$b;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/j$b;->d()Lorg/mistergroup/shouldianswer/model/k;

    move-result-object v2

    .line 121
    iget-object v3, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/ag;->i:Landroid/widget/ImageView;

    sget-object v5, Lorg/mistergroup/shouldianswer/model/k;->i:Lorg/mistergroup/shouldianswer/model/k$a;

    invoke-virtual {v5, v2}, Lorg/mistergroup/shouldianswer/model/k$a;->b(Lorg/mistergroup/shouldianswer/model/k;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    iget-object v3, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/ag;->i:Landroid/widget/ImageView;

    sget-object v5, Lorg/mistergroup/shouldianswer/model/k;->i:Lorg/mistergroup/shouldianswer/model/k$a;

    iget-object v6, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/a/ag;->d()Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v2}, Lorg/mistergroup/shouldianswer/model/k$a;->a(Landroid/content/Context;Lorg/mistergroup/shouldianswer/model/k;)I

    move-result v2

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v2, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 125
    :cond_15
    move-object/from16 v14, v19

    check-cast v14, Ljava/lang/CharSequence;

    if-eqz v14, :cond_17

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_16

    goto :goto_11

    :cond_16
    const/4 v2, 0x0

    goto :goto_12

    :cond_17
    :goto_11
    const/4 v2, 0x1

    :goto_12
    const-string v3, "binding.imgContactPhoto"

    if-nez v2, :cond_18

    .line 126
    :try_start_1
    iget-object v2, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ag;->e:Landroid/widget/FrameLayout;

    invoke-static {v2, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 127
    iget-object v2, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ag;->e:Landroid/widget/FrameLayout;

    invoke-static {v2, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lkotlin/e/b/p;->a:Lkotlin/e/b/p;

    const v4, 0x7f100165

    move-object/from16 v5, v18

    .line 128
    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "context.getString(R.stri\u2026er_contact_accessibility)"

    invoke-static {v4, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v13, v5, v6

    .line 127
    array-length v6, v5

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ag;->k:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-static {v0, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/makeramen/roundedimageview/RoundedImageView;->setVisibility(I)V

    .line 132
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ag;->l:Landroid/widget/ImageView;

    move-object/from16 v2, v20

    invoke-static {v0, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ag;->m:Landroid/widget/ImageView;

    move-object/from16 v5, v22

    invoke-static {v0, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ag;->c:Lorg/mistergroup/shouldianswer/model/ag;

    move-object/from16 v10, v21

    if-ne v10, v0, :cond_19

    .line 135
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ag;->m:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/x;->a:Lorg/mistergroup/shouldianswer/utils/x;

    iget-object v2, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/a/ag;->d()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/ag;->m:Landroid/widget/ImageView;

    invoke-static {v4, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v4, v10}, Lorg/mistergroup/shouldianswer/utils/x;->b(Landroid/content/Context;Landroid/widget/ImageView;Lorg/mistergroup/shouldianswer/model/ag;)V

    goto :goto_13

    :cond_18
    move-object/from16 v2, v20

    move-object/from16 v10, v21

    move-object/from16 v5, v22

    .line 139
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ag;->e:Landroid/widget/FrameLayout;

    invoke-static {v0, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 140
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ag;->k:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-static {v0, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/makeramen/roundedimageview/RoundedImageView;->setVisibility(I)V

    .line 141
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ag;->l:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ag;->m:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/x;->a:Lorg/mistergroup/shouldianswer/utils/x;

    iget-object v4, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/a/ag;->d()Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v5, v5, Lorg/mistergroup/shouldianswer/a/ag;->l:Landroid/widget/ImageView;

    invoke-static {v5, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5, v10}, Lorg/mistergroup/shouldianswer/utils/x;->a(Landroid/content/Context;Landroid/widget/ImageView;Lorg/mistergroup/shouldianswer/model/ag;)V

    :cond_19
    :goto_13
    if-eqz v17, :cond_1a

    .line 147
    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 148
    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->c()Lorg/mistergroup/shouldianswer/ui/main/c/c$a;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 149
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/p;->a:Lorg/mistergroup/shouldianswer/utils/p;

    .line 150
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 152
    iget-object v4, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/ag;->k:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-static {v4, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object v3, v1, Lorg/mistergroup/shouldianswer/ui/search/j;->b:Lorg/mistergroup/shouldianswer/a/ag;

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/ag;->p:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v5, "binding.tvContactPhoto"

    invoke-static {v3, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v5, v19

    .line 149
    invoke-virtual {v2, v0, v5, v4, v3}, Lorg/mistergroup/shouldianswer/utils/p;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/makeramen/roundedimageview/RoundedImageView;Landroidx/appcompat/widget/AppCompatTextView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_14

    :catch_0
    move-exception v0

    .line 159
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2, v0, v3, v4, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1a
    :goto_14
    return-void
.end method


# virtual methods
.method public final a(Lorg/mistergroup/shouldianswer/ui/search/d;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/j;->a:Lorg/mistergroup/shouldianswer/ui/search/d;

    .line 52
    invoke-direct {p0, p1}, Lorg/mistergroup/shouldianswer/ui/search/j;->b(Lorg/mistergroup/shouldianswer/ui/search/d;)V

    return-void
.end method
