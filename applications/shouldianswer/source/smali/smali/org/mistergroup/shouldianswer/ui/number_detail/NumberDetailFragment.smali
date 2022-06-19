.class public final Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;
.super Lorg/mistergroup/shouldianswer/ui/b;
.source "NumberDetailFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$b;
    }
.end annotation


# static fields
.field public static final b:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$b;


# instance fields
.field private c:Lorg/mistergroup/shouldianswer/a/au;

.field private d:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$b;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->b:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/b;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->e()V

    return-void
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;)Lorg/mistergroup/shouldianswer/a/au;
    .locals 1

    .line 39
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez p0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic c(Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;)Lorg/mistergroup/shouldianswer/ui/a;
    .locals 0

    .line 39
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->a()Lorg/mistergroup/shouldianswer/ui/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;)Lorg/mistergroup/shouldianswer/model/NumberInfo;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->d:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    return-object p0
.end method

.method private final d()V
    .locals 6

    .line 58
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "getResources()"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->a(Landroid/content/res/Resources;)I

    move-result v0

    .line 61
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    const-string v2, "binding"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/au;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/au;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v4, :cond_2

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/au;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v4}, Landroidx/appcompat/widget/Toolbar;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v5, :cond_3

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    iget-object v2, v5, Lorg/mistergroup/shouldianswer/a/au;->c:Landroidx/appcompat/widget/Toolbar;

    const-string v5, "binding.appToolbar"

    invoke-static {v2, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v1, v3, v0, v4, v2}, Landroidx/appcompat/widget/Toolbar;->setPadding(IIII)V

    return-void
.end method

.method private final e()V
    .locals 41

    move-object/from16 v1, p0

    const-string v0, "binding.cardNumberHasReport"

    const-string v2, "binding.cardNumberDefault"

    const-string v3, "binding.cardNumberIsInContact"

    const-string v4, "binding.tvRating"

    const-string v5, "binding.tvFeaturedInfo"

    const-string v6, "binding.tvDisplayCaptionSecondary"

    const-string v7, ""

    .line 386
    iget-object v15, v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->d:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    if-eqz v15, :cond_32

    .line 387
    invoke-virtual {v15}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->e()Z

    move-result v8

    const/4 v14, 0x0

    if-nez v8, :cond_0

    .line 388
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object v8

    check-cast v8, Lkotlin/c/f;

    new-instance v9, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$t;

    invoke-direct {v9, v15, v14}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$t;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)V

    check-cast v9, Lkotlin/e/a/m;

    invoke-static {v8, v9}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;)Ljava/lang/Object;

    :cond_0
    const/4 v13, 0x1

    .line 398
    iput-boolean v13, v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->f:Z

    const/4 v12, 0x2

    .line 400
    :try_start_0
    sget-object v8, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NumberDetailActivity.updateUI number="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Lorg/mistergroup/shouldianswer/model/x;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " country="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " isAfterCallAction="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->e:Z

    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v14, v12, v14}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 401
    invoke-virtual/range {p0 .. p0}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    if-nez v8, :cond_1

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_1
    const-string v9, "context!!"

    invoke-static {v8, v9}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 402
    invoke-virtual {v15}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->j()Ljava/lang/String;

    move-result-object v17

    .line 403
    invoke-virtual {v15}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->n()Ljava/lang/String;

    move-result-object v10

    .line 404
    sget-object v8, Lorg/mistergroup/shouldianswer/model/communityDatabase/e;->a:Lorg/mistergroup/shouldianswer/model/communityDatabase/e;

    invoke-virtual {v15}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/mistergroup/shouldianswer/model/communityDatabase/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 405
    invoke-virtual {v15}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v8

    if-eqz v8, :cond_2

    move/from16 v24, v13

    goto :goto_0

    :cond_2
    const/16 v24, 0x0

    .line 407
    :goto_0
    invoke-virtual {v15}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->p()Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v9

    .line 408
    invoke-virtual {v15}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->r()Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v8

    move-object/from16 v25, v2

    .line 409
    new-instance v2, Lkotlin/e/b/m$c;

    invoke-direct {v2}, Lkotlin/e/b/m$c;-><init>()V

    iput-object v7, v2, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 410
    sget-object v11, Lorg/mistergroup/shouldianswer/model/ag;->a:Lorg/mistergroup/shouldianswer/model/ag;

    if-eq v8, v11, :cond_4

    .line 411
    sget-object v11, Lorg/mistergroup/shouldianswer/model/ag;->e:Lorg/mistergroup/shouldianswer/model/ag$a;

    invoke-virtual {v11, v8}, Lorg/mistergroup/shouldianswer/model/ag$a;->a(Lorg/mistergroup/shouldianswer/model/ag;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    if-eqz v10, :cond_4

    .line 412
    move-object v11, v10

    check-cast v11, Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lez v11, :cond_3

    move v11, v13

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    :goto_1
    if-eqz v11, :cond_4

    iget-object v11, v2, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 414
    :cond_4
    invoke-virtual {v15}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->s()Ljava/lang/Integer;

    move-result-object v26

    .line 415
    invoke-virtual {v15}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->t()Ljava/lang/Integer;

    move-result-object v27

    .line 416
    invoke-virtual {v15}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->i()Ljava/lang/Boolean;

    move-result-object v12

    .line 417
    invoke-virtual {v15}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->q()Lorg/mistergroup/shouldianswer/model/NumberReport;

    move-result-object v28

    .line 419
    iget-object v11, v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v11, :cond_5

    const-string v21, "binding"

    invoke-static/range {v21 .. v21}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    .line 420
    :cond_5
    iget-object v13, v11, Lorg/mistergroup/shouldianswer/a/au;->N:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v13, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v22, v10

    if-eqz v17, :cond_6

    const/4 v10, 0x0

    goto :goto_2

    :cond_6
    const/16 v10, 0x8

    :goto_2
    invoke-virtual {v13, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const-string v10, "binding.tvDisplayCaptionPrimary"

    if-eqz v17, :cond_7

    .line 422
    :try_start_2
    iget-object v13, v11, Lorg/mistergroup/shouldianswer/a/au;->M:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v13, v10}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v10, v17

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v13, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v10, v11, Lorg/mistergroup/shouldianswer/a/au;->N:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v10, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v6, v16

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v10, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 425
    :cond_7
    iget-object v6, v11, Lorg/mistergroup/shouldianswer/a/au;->M:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v6, v10}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v10, v16

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v6, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    :goto_3
    iget-object v6, v11, Lorg/mistergroup/shouldianswer/a/au;->O:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v6, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v10, v18

    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-lez v10, :cond_8

    const/4 v10, 0x1

    goto :goto_4

    :cond_8
    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_9

    const/4 v10, 0x0

    goto :goto_5

    :cond_9
    const/16 v10, 0x8

    :goto_5
    invoke-virtual {v6, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 429
    iget-object v6, v11, Lorg/mistergroup/shouldianswer/a/au;->O:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v6, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v5, v18

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    sget-object v5, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object/from16 v29, v5

    check-cast v29, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object v5

    move-object/from16 v30, v5

    check-cast v30, Lkotlin/c/f;

    const/16 v31, 0x0

    new-instance v5, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v10, 0x0

    move-object v6, v8

    move-object v8, v5

    move-object v13, v9

    move-object v9, v11

    move-object/from16 v35, v22

    const/16 v1, 0x8

    move-object v1, v11

    const/16 v36, 0x0

    move-object/from16 v11, v17

    move-object/from16 v37, v12

    move-object/from16 v12, v16

    move-object/from16 v38, v13

    const/16 v39, 0x1

    move-object/from16 v13, v18

    move-object v14, v15

    move-object/from16 v40, v15

    move-object/from16 v15, v38

    move-object/from16 v16, v35

    move-object/from16 v17, v37

    move/from16 v18, v24

    move-object/from16 v19, v6

    move-object/from16 v20, v28

    move-object/from16 v21, v26

    move-object/from16 v22, v27

    move-object/from16 v23, v2

    :try_start_3
    invoke-direct/range {v8 .. v23}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;-><init>(Lorg/mistergroup/shouldianswer/a/au;Lkotlin/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/model/ag;Ljava/lang/String;Ljava/lang/Boolean;ZLorg/mistergroup/shouldianswer/model/ag;Lorg/mistergroup/shouldianswer/model/NumberReport;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/e/b/m$c;)V

    move-object/from16 v32, v5

    check-cast v32, Lkotlin/e/a/m;

    const/16 v33, 0x2

    const/16 v34, 0x0

    invoke-static/range {v29 .. v34}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    .line 444
    iget-object v5, v1, Lorg/mistergroup/shouldianswer/a/au;->R:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v5, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lorg/mistergroup/shouldianswer/model/ag;->c:Lorg/mistergroup/shouldianswer/model/ag;

    move-object/from16 v9, v38

    if-ne v9, v8, :cond_a

    move/from16 v8, v36

    goto :goto_6

    :cond_a
    const/16 v8, 0x8

    :goto_6
    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 445
    sget-object v5, Lorg/mistergroup/shouldianswer/model/ag;->e:Lorg/mistergroup/shouldianswer/model/ag$a;

    invoke-virtual {v5, v9}, Lorg/mistergroup/shouldianswer/model/ag$a;->a(Lorg/mistergroup/shouldianswer/model/ag;)Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x20

    move-object/from16 v9, v35

    if-eqz v9, :cond_d

    .line 447
    move-object v10, v9

    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-lez v10, :cond_b

    move/from16 v10, v39

    goto :goto_7

    :cond_b
    move/from16 v10, v36

    :goto_7
    if-eqz v10, :cond_c

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 448
    :cond_c
    sget-object v9, Lkotlin/o;->a:Lkotlin/o;

    .line 450
    :cond_d
    iget-object v9, v1, Lorg/mistergroup/shouldianswer/a/au;->R:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v9, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v9, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    invoke-virtual/range {v40 .. v40}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m()Lorg/mistergroup/shouldianswer/model/h;

    move-result-object v4

    .line 453
    sget-object v5, Lorg/mistergroup/shouldianswer/model/h;->a:Lorg/mistergroup/shouldianswer/model/h;

    if-eq v4, v5, :cond_f

    sget-object v5, Lorg/mistergroup/shouldianswer/model/h;->i:Lorg/mistergroup/shouldianswer/model/h;

    if-ne v4, v5, :cond_e

    goto :goto_8

    :cond_e
    move/from16 v4, v36

    goto :goto_9

    :cond_f
    :goto_8
    move/from16 v4, v39

    .line 454
    :goto_9
    iget-object v5, v1, Lorg/mistergroup/shouldianswer/a/au;->e:Landroidx/appcompat/widget/AppCompatButton;

    const-string v9, "binding.butBlock"

    invoke-static {v5, v9}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v9, v37

    if-nez v9, :cond_10

    if-eqz v4, :cond_10

    move/from16 v10, v36

    goto :goto_a

    :cond_10
    const/16 v10, 0x8

    :goto_a
    invoke-virtual {v5, v10}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 455
    iget-object v5, v1, Lorg/mistergroup/shouldianswer/a/au;->t:Landroidx/appcompat/widget/AppCompatButton;

    const-string v10, "binding.butUnblock"

    invoke-static {v5, v10}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    move/from16 v10, v36

    goto :goto_b

    :cond_11
    const/16 v10, 0x8

    :goto_b
    invoke-virtual {v5, v10}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 456
    iget-object v5, v1, Lorg/mistergroup/shouldianswer/a/au;->d:Landroidx/appcompat/widget/AppCompatButton;

    const-string v10, "binding.butAllow"

    invoke-static {v5, v10}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v9, :cond_12

    if-nez v4, :cond_12

    move/from16 v4, v36

    goto :goto_c

    :cond_12
    const/16 v4, 0x8

    :goto_c
    invoke-virtual {v5, v4}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 457
    iget-object v4, v1, Lorg/mistergroup/shouldianswer/a/au;->s:Landroidx/appcompat/widget/AppCompatButton;

    const-string v5, "binding.butUnallow"

    invoke-static {v4, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v9, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    move/from16 v5, v36

    goto :goto_d

    :cond_13
    const/16 v5, 0x8

    :goto_d
    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 460
    iget-object v4, v1, Lorg/mistergroup/shouldianswer/a/au;->y:Lcom/google/android/material/card/MaterialCardView;

    invoke-static {v4, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v24, :cond_14

    sget-object v5, Lorg/mistergroup/shouldianswer/model/ag;->c:Lorg/mistergroup/shouldianswer/model/ag;

    if-ne v6, v5, :cond_14

    if-nez v28, :cond_14

    move/from16 v5, v36

    goto :goto_e

    :cond_14
    const/16 v5, 0x8

    :goto_e
    invoke-virtual {v4, v5}, Lcom/google/android/material/card/MaterialCardView;->setVisibility(I)V

    .line 461
    iget-object v4, v1, Lorg/mistergroup/shouldianswer/a/au;->v:Lcom/google/android/material/card/MaterialCardView;

    move-object/from16 v5, v25

    invoke-static {v4, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v1, Lorg/mistergroup/shouldianswer/a/au;->y:Lcom/google/android/material/card/MaterialCardView;

    invoke-static {v6, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/google/android/material/card/MaterialCardView;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_15

    if-nez v28, :cond_15

    move/from16 v3, v36

    goto :goto_f

    :cond_15
    move v3, v6

    :goto_f
    invoke-virtual {v4, v3}, Lcom/google/android/material/card/MaterialCardView;->setVisibility(I)V

    .line 462
    iget-object v3, v1, Lorg/mistergroup/shouldianswer/a/au;->v:Lcom/google/android/material/card/MaterialCardView;

    invoke-static {v3, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/material/card/MaterialCardView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_18

    .line 463
    iget-object v3, v1, Lorg/mistergroup/shouldianswer/a/au;->P:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v4, "binding.tvNumberInContacts"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v24, :cond_16

    move/from16 v4, v36

    goto :goto_10

    :cond_16
    move v4, v6

    :goto_10
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 464
    iget-object v3, v1, Lorg/mistergroup/shouldianswer/a/au;->Q:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v4, "binding.tvNumberNotInContacts"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v24, :cond_17

    move/from16 v4, v36

    goto :goto_11

    :cond_17
    move v4, v6

    :goto_11
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 466
    :cond_18
    iget-object v3, v1, Lorg/mistergroup/shouldianswer/a/au;->w:Lcom/google/android/material/card/MaterialCardView;

    invoke-static {v3, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v28, :cond_19

    invoke-virtual/range {v28 .. v28}, Lorg/mistergroup/shouldianswer/model/NumberReport;->l()Z

    move-result v4

    if-nez v4, :cond_19

    move/from16 v4, v36

    goto :goto_12

    :cond_19
    move v4, v6

    :goto_12
    invoke-virtual {v3, v4}, Lcom/google/android/material/card/MaterialCardView;->setVisibility(I)V

    .line 467
    iget-object v3, v1, Lorg/mistergroup/shouldianswer/a/au;->w:Lcom/google/android/material/card/MaterialCardView;

    invoke-static {v3, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/material/card/MaterialCardView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2a

    if-eqz v28, :cond_2a

    .line 469
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/a/au;->z:Landroid/widget/ImageView;

    const-string v3, "binding.imgNegativeReport"

    invoke-static {v0, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Lorg/mistergroup/shouldianswer/model/NumberReport;->e()Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v3

    sget-object v4, Lorg/mistergroup/shouldianswer/model/ag;->c:Lorg/mistergroup/shouldianswer/model/ag;

    if-ne v3, v4, :cond_1a

    move/from16 v3, v36

    goto :goto_13

    :cond_1a
    move v3, v6

    :goto_13
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 470
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/a/au;->A:Landroid/widget/ImageView;

    const-string v3, "binding.imgPositiveReport"

    invoke-static {v0, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Lorg/mistergroup/shouldianswer/model/NumberReport;->e()Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v3

    sget-object v4, Lorg/mistergroup/shouldianswer/model/ag;->b:Lorg/mistergroup/shouldianswer/model/ag;

    if-ne v3, v4, :cond_1b

    move/from16 v3, v36

    goto :goto_14

    :cond_1b
    move v3, v6

    :goto_14
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 471
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/a/au;->S:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "binding.tvReportInfo1"

    invoke-static {v0, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/mistergroup/shouldianswer/model/ag;->e:Lorg/mistergroup/shouldianswer/model/ag$a;

    invoke-virtual/range {v28 .. v28}, Lorg/mistergroup/shouldianswer/model/NumberReport;->e()Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/mistergroup/shouldianswer/model/ag$a;->a(Lorg/mistergroup/shouldianswer/model/ag;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/mistergroup/shouldianswer/model/m;->w:Lorg/mistergroup/shouldianswer/model/m$a;

    invoke-virtual/range {v28 .. v28}, Lorg/mistergroup/shouldianswer/model/NumberReport;->f()Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/mistergroup/shouldianswer/model/m$a;->a(Lorg/mistergroup/shouldianswer/model/m;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    invoke-virtual/range {v28 .. v28}, Lorg/mistergroup/shouldianswer/model/NumberReport;->f()Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v0

    sget-object v3, Lorg/mistergroup/shouldianswer/model/m;->u:Lorg/mistergroup/shouldianswer/model/m;

    if-eq v0, v3, :cond_1d

    invoke-virtual/range {v28 .. v28}, Lorg/mistergroup/shouldianswer/model/NumberReport;->f()Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v0

    sget-object v3, Lorg/mistergroup/shouldianswer/model/m;->t:Lorg/mistergroup/shouldianswer/model/m;

    if-eq v0, v3, :cond_1d

    invoke-virtual/range {v28 .. v28}, Lorg/mistergroup/shouldianswer/model/NumberReport;->f()Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v0

    sget-object v3, Lorg/mistergroup/shouldianswer/model/m;->v:Lorg/mistergroup/shouldianswer/model/m;

    if-ne v0, v3, :cond_1c

    goto :goto_16

    .line 490
    :cond_1c
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/a/au;->T:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "binding.tvReportInfo2"

    invoke-static {v0, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Lorg/mistergroup/shouldianswer/model/NumberReport;->h()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_15
    const/4 v4, 0x2

    const/4 v5, 0x0

    goto/16 :goto_20

    .line 474
    :cond_1d
    :goto_16
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual/range {v28 .. v28}, Lorg/mistergroup/shouldianswer/model/NumberReport;->h()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "comment"

    .line 476
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const-string v3, "comment"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_17

    :cond_1e
    move-object v3, v7

    :goto_17
    const-string v4, "companyName"

    .line 477
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v4, "companyName"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_18

    :cond_1f
    move-object v4, v7

    :goto_18
    const-string v5, "companyAction"

    .line 478
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    const-string v5, "companyAction"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_19

    :cond_20
    move-object v5, v7

    :goto_19
    const-string v8, "companyWebsite"

    .line 479
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_21

    const-string v8, "companyWebsite"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_21
    move-object v0, v7

    :goto_1a
    const-string v8, "jComment"

    .line 481
    invoke-static {v3, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v3

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-lez v8, :cond_22

    move/from16 v8, v39

    goto :goto_1b

    :cond_22
    move/from16 v8, v36

    :goto_1b
    const-string v9, ", "

    if-eqz v8, :cond_23

    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v9

    goto :goto_1c

    :cond_23
    move-object v3, v7

    :goto_1c
    const-string v8, "jCompanyName"

    .line 482
    invoke-static {v4, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v4

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_24

    move/from16 v8, v39

    goto :goto_1d

    :cond_24
    move/from16 v8, v36

    :goto_1d
    if-eqz v8, :cond_25

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v9

    :cond_25
    const-string v4, "jCompanyAction"

    .line 483
    invoke-static {v5, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v5

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_26

    move/from16 v4, v39

    goto :goto_1e

    :cond_26
    move/from16 v4, v36

    :goto_1e
    if-eqz v4, :cond_27

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v9

    :cond_27
    const-string v4, "jCompanyWebsite"

    .line 484
    invoke-static {v0, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_28

    goto :goto_1f

    :cond_28
    move/from16 v39, v36

    :goto_1f
    if-eqz v39, :cond_29

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 485
    :cond_29
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/a/au;->T:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "binding.tvReportInfo2"

    invoke-static {v0, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_15

    :catch_0
    move-exception v0

    .line 487
    :try_start_6
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    const/4 v4, 0x2

    const/4 v5, 0x0

    :try_start_7
    invoke-static {v3, v0, v5, v4, v5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 492
    :goto_20
    sget-object v0, Lkotlin/o;->a:Lkotlin/o;

    goto :goto_21

    :cond_2a
    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 496
    :goto_21
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/a/au;->x:Lcom/google/android/material/card/MaterialCardView;

    const-string v3, "binding.cardNumberHasUnfinishedReport"

    invoke-static {v0, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v28, :cond_2b

    invoke-virtual/range {v28 .. v28}, Lorg/mistergroup/shouldianswer/model/NumberReport;->l()Z

    move-result v3

    if-eqz v3, :cond_2b

    move/from16 v3, v36

    goto :goto_22

    :cond_2b
    move v3, v6

    :goto_22
    invoke-virtual {v0, v3}, Lcom/google/android/material/card/MaterialCardView;->setVisibility(I)V

    .line 498
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/a/au;->u:Lcom/google/android/material/card/MaterialCardView;

    const-string v3, "binding.cardCommunityReport"

    invoke-static {v0, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v26, :cond_2c

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_2c
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v27, :cond_2d

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_2d
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v3, v7

    if-lez v3, :cond_2e

    move/from16 v3, v36

    goto :goto_23

    :cond_2e
    move v3, v6

    :goto_23
    invoke-virtual {v0, v3}, Lcom/google/android/material/card/MaterialCardView;->setVisibility(I)V

    .line 499
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/a/au;->u:Lcom/google/android/material/card/MaterialCardView;

    const-string v3, "binding.cardCommunityReport"

    invoke-static {v0, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2f

    .line 500
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/a/au;->J:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "binding.tvCommunitySafeCount"

    invoke-static {v0, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/a/au;->K:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "binding.tvCommunitySpamCount"

    invoke-static {v0, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/a/au;->I:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "binding.tvCommunityRating"

    invoke-static {v0, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v2, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    :cond_2f
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/a/au;->C:Landroid/widget/LinearLayout;

    const-string v2, "binding.llBlockReason"

    invoke-static {v0, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {v40 .. v40}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->l()Lorg/mistergroup/shouldianswer/model/h;

    move-result-object v2

    if-eqz v2, :cond_30

    invoke-virtual/range {v40 .. v40}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->l()Lorg/mistergroup/shouldianswer/model/h;

    move-result-object v2

    sget-object v3, Lorg/mistergroup/shouldianswer/model/h;->a:Lorg/mistergroup/shouldianswer/model/h;

    if-eq v2, v3, :cond_30

    invoke-virtual/range {v40 .. v40}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->l()Lorg/mistergroup/shouldianswer/model/h;

    move-result-object v2

    sget-object v3, Lorg/mistergroup/shouldianswer/model/h;->i:Lorg/mistergroup/shouldianswer/model/h;

    if-eq v2, v3, :cond_30

    move/from16 v6, v36

    :cond_30
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 507
    invoke-virtual/range {v40 .. v40}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->l()Lorg/mistergroup/shouldianswer/model/h;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 508
    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/au;->G:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "binding.tvBlockReason"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lorg/mistergroup/shouldianswer/model/h;->m:Lorg/mistergroup/shouldianswer/model/h$a;

    invoke-virtual {v2, v0}, Lorg/mistergroup/shouldianswer/model/h$a;->a(Lorg/mistergroup/shouldianswer/model/h;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    sget-object v0, Lkotlin/o;->a:Lkotlin/o;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_26

    :catch_1
    move-exception v0

    goto :goto_25

    :catch_2
    move-exception v0

    const/4 v4, 0x2

    const/4 v5, 0x0

    goto :goto_25

    :catch_3
    move-exception v0

    move-object v5, v14

    const/4 v4, 0x2

    goto :goto_24

    :catch_4
    move-exception v0

    move v4, v12

    move-object v5, v14

    :goto_24
    const/16 v36, 0x0

    .line 513
    :goto_25
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v1, v0, v5, v4, v5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_31
    :goto_26
    move-object/from16 v1, p0

    move/from16 v2, v36

    .line 516
    iput-boolean v2, v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->f:Z

    .line 519
    sget-object v0, Lkotlin/o;->a:Lkotlin/o;

    :cond_32
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/res/Resources;)I
    .locals 3

    const-string v0, "resources"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    .line 66
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
    .locals 13

    const-string p2, "numberInfo"

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "NumberDetailFragment.initWithActivity"

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 78
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->b()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, ""

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/a;->a(Ljava/lang/CharSequence;)V

    .line 81
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 82
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "uri"

    .line 84
    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    .line 85
    new-instance v3, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    sget-object v4, Lorg/mistergroup/shouldianswer/utils/f;->a:Lorg/mistergroup/shouldianswer/utils/f;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/utils/f;->a()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/mistergroup/shouldianswer/model/k;->h:Lorg/mistergroup/shouldianswer/model/k;

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lorg/mistergroup/shouldianswer/model/NumberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/k;ZILkotlin/e/b/e;)V

    iput-object v3, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->d:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    .line 88
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 89
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->d:Lorg/mistergroup/shouldianswer/model/NumberInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 95
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v0, p2, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 98
    :cond_2
    :goto_0
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->d:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    if-nez p2, :cond_3

    .line 99
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/a;->finish()V

    return-void

    :cond_3
    if-eqz p2, :cond_27

    .line 104
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    const-string v1, "binding"

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/au;->t:Landroidx/appcompat/widget/AppCompatButton;

    const-string v3, "binding.butUnblock"

    invoke-static {v0, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_5
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/au;->x:Lcom/google/android/material/card/MaterialCardView;

    const-string v4, "binding.cardNumberHasUnfinishedReport"

    invoke-static {v0, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/android/material/card/MaterialCardView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_6
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/au;->w:Lcom/google/android/material/card/MaterialCardView;

    const-string v4, "binding.cardNumberHasReport"

    invoke-static {v0, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/android/material/card/MaterialCardView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v0, :cond_7

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_7
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/au;->u:Lcom/google/android/material/card/MaterialCardView;

    const-string v4, "binding.cardCommunityReport"

    invoke-static {v0, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/android/material/card/MaterialCardView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v0, :cond_8

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_8
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/au;->v:Lcom/google/android/material/card/MaterialCardView;

    const-string v4, "binding.cardNumberDefault"

    invoke-static {v0, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/android/material/card/MaterialCardView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v0, :cond_9

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_9
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/au;->y:Lcom/google/android/material/card/MaterialCardView;

    const-string v4, "binding.cardNumberIsInContact"

    invoke-static {v0, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/android/material/card/MaterialCardView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v0, :cond_a

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_a
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/au;->R:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v4, "binding.tvRating"

    invoke-static {v0, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v0, :cond_b

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_b
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/au;->L:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v4, "binding.tvCountry"

    invoke-static {v0, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v0, :cond_c

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_c
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/au;->N:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v4, "binding.tvDisplayCaptionSecondary"

    invoke-static {v0, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v0, :cond_d

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_d
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/au;->O:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v4, "binding.tvFeaturedInfo"

    invoke-static {v0, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v0, :cond_e

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_e
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/au;->M:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v4, "binding.tvDisplayCaptionPrimary"

    invoke-static {v0, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->f()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v0, :cond_f

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_f
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/au;->f:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$c;

    invoke-direct {v4, p2, p0, p1}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$c;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v0, :cond_10

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_10
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/au;->q:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$k;

    invoke-direct {v4, p2, p0, p1}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$k;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v0, :cond_11

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_11
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/au;->e:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$l;

    invoke-direct {v4, p2, p0, p1}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$l;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v0, :cond_12

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_12
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/au;->t:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$m;

    invoke-direct {v4, p2, p0, p1}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$m;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v0, :cond_13

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_13
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/au;->d:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$n;

    invoke-direct {v4, p2, p0, p1}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$n;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v0, :cond_14

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_14
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/au;->s:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$o;

    invoke-direct {v4, p2, p0, p1}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$o;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v0, :cond_15

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_15
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/au;->B:Landroid/widget/ImageView;

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$p;

    invoke-direct {v4, p2, p0, p1}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$p;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v0

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_16

    .line 201
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ac;->a()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-lez v6, :cond_16

    .line 202
    sget-object v6, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v7, v6

    check-cast v7, Lkotlinx/coroutines/ad;

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v6, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$q;

    invoke-direct {v6, v0, v2, p0, p1}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$q;-><init>(Lorg/mistergroup/shouldianswer/model/ac;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    move-object v10, v6

    check-cast v10, Lkotlin/e/a/m;

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    .line 229
    :cond_16
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v0

    if-nez v0, :cond_17

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_17
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ac;->a()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-nez v0, :cond_1b

    .line 230
    :cond_18
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v0, :cond_19

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_19
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/au;->B:Landroid/widget/ImageView;

    const-string v4, "binding.ivPhoto"

    invoke-static {v0, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v0, :cond_1a

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1a
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/au;->E:Landroid/widget/LinearLayout;

    const-string v3, "binding.llGroupWithShadow"

    invoke-static {v0, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v2

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 234
    :cond_1b
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v0, :cond_1c

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1c
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/au;->r:Lcom/google/android/material/button/MaterialButton;

    new-instance v3, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$r;

    invoke-direct {v3, p2, p0, p1}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$r;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$d;

    invoke-direct {v0, p2, p0, p1}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$d;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    .line 251
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v3, :cond_1d

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1d
    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/au;->o:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v3, v0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v3, :cond_1e

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1e
    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/au;->p:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v3, v0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$e;

    invoke-direct {v0, p2, p0, p1}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$e;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    .line 262
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v3, :cond_1f

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1f
    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/au;->m:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v3, v0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v3, :cond_20

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_20
    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/au;->n:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v3, v0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f;

    invoke-direct {v0, p2, p0, p1}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$f;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    .line 286
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v3, :cond_21

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_21
    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/au;->h:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v3, v0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v3, :cond_22

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_22
    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/au;->i:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v3, v0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g;

    invoke-direct {v0, p2, p0, p1}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$g;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    .line 306
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v3, :cond_23

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_23
    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/au;->g:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v3, v0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v3, :cond_24

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_24
    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/au;->j:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v3, v0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v0, :cond_25

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_25
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/au;->k:Landroid/widget/ImageButton;

    new-instance v3, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$h;

    invoke-direct {v3, p0, p1}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$h;-><init>(Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v0, :cond_26

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_26
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/au;->l:Landroid/widget/ImageButton;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$i;

    invoke-direct {v1, p0, p1}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$i;-><init>(Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    sget-object v0, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lkotlin/c/f;

    const/4 v5, 0x0

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;

    invoke-direct {v0, p2, v2, p0, p1}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    move-object v6, v0

    check-cast v6, Lkotlin/e/a/m;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    .line 378
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->e()V

    :cond_27
    return-void
.end method

.method public c()Landroidx/appcompat/widget/Toolbar;
    .locals 2

    .line 524
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/au;->c:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/b;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 47
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0e0002

    .line 528
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 529
    invoke-super {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/b;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d004a

    const/4 v0, 0x0

    .line 51
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(\u2026agment, container, false)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/a/au;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    .line 52
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    const-string p2, "binding"

    if-nez p1, :cond_0

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/au;->L:Landroidx/appcompat/widget/AppCompatTextView;

    const-string p3, "binding.tvCountry"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 53
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->d()V

    .line 54
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c:Lorg/mistergroup/shouldianswer/a/au;

    if-nez p1, :cond_1

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/au;->d()Landroid/view/View;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0031

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 535
    :cond_0
    new-instance v0, Landroidx/appcompat/app/d$a;

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->a()Lorg/mistergroup/shouldianswer/ui/a;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100191

    .line 536
    invoke-virtual {p0, v1}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/d$a;->b(Ljava/lang/CharSequence;)Landroidx/appcompat/app/d$a;

    move-result-object v0

    const v1, 0x7f1000d3

    .line 537
    invoke-virtual {p0, v1}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/d$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    move-result-object v0

    .line 538
    invoke-virtual {v0}, Landroidx/appcompat/app/d$a;->c()Landroidx/appcompat/app/d;

    .line 541
    :goto_0
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 7

    .line 546
    invoke-super {p0}, Lorg/mistergroup/shouldianswer/ui/b;->onResume()V

    .line 547
    sget-object v0, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/c/f;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$s;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$s;-><init>(Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;Lkotlin/c/c;)V

    move-object v4, v0

    check-cast v4, Lkotlin/e/a/m;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    return-void
.end method
