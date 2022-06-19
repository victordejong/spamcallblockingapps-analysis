.class final Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;
.super Lkotlin/c/b/a/k;
.source "NumberDetailFragment.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
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

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:Ljava/lang/Object;

.field e:Ljava/lang/Object;

.field f:Ljava/lang/Object;

.field g:Ljava/lang/Object;

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field final synthetic o:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field final synthetic p:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;

.field final synthetic q:Lorg/mistergroup/shouldianswer/ui/a;

.field private r:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;Lorg/mistergroup/shouldianswer/ui/a;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->o:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->p:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;

    iput-object p4, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->q:Lorg/mistergroup/shouldianswer/ui/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->o:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->p:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->q:Lorg/mistergroup/shouldianswer/ui/a;

    invoke-direct {v0, v1, p2, v2, v3}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->r:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v1, p0

    const-string v0, ""

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v2

    .line 317
    iget v3, v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->n:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    iget v3, v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->m:I

    iget v3, v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->l:I

    iget-object v3, v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->g:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v3, v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->f:Ljava/lang/Object;

    check-cast v3, Lkotlin/e/b/m$c;

    iget v3, v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->k:I

    iget v3, v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->j:I

    iget-object v3, v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->e:Ljava/lang/Object;

    check-cast v3, Lkotlin/e/b/m$c;

    iget-object v3, v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->d:Ljava/lang/Object;

    check-cast v3, Lorg/mistergroup/shouldianswer/model/j$b;

    iget v3, v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->i:I

    iget v6, v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->h:I

    iget-object v7, v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->c:Ljava/lang/Object;

    check-cast v7, Lorg/mistergroup/shouldianswer/model/j;

    iget-object v8, v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->b:Ljava/lang/Object;

    check-cast v8, Landroid/widget/LinearLayout;

    iget-object v9, v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->a:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/ad;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v21, v0

    move-object v10, v2

    move-object v2, v1

    move-object/from16 v26, v9

    move v9, v3

    move-object/from16 v3, v26

    goto/16 :goto_2

    .line 376
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_1
    iget v3, v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->i:I

    iget v6, v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->h:I

    iget-object v7, v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->c:Ljava/lang/Object;

    check-cast v7, Lorg/mistergroup/shouldianswer/model/j;

    iget-object v8, v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->b:Ljava/lang/Object;

    check-cast v8, Landroid/widget/LinearLayout;

    iget-object v9, v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->a:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/ad;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v11, p1

    move-object v10, v2

    move-object v2, v1

    move-object/from16 v26, v8

    move v8, v6

    move-object/from16 v6, v26

    goto :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object v3, v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->r:Lkotlinx/coroutines/ad;

    .line 319
    :try_start_2
    iget-object v6, v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->p:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;

    invoke-static {v6}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->b(Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;)Lorg/mistergroup/shouldianswer/a/au;

    move-result-object v6

    iget-object v6, v6, Lorg/mistergroup/shouldianswer/a/au;->D:Landroid/widget/LinearLayout;

    const-string v7, "binding.llCallHistory"

    invoke-static {v6, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    new-instance v7, Lorg/mistergroup/shouldianswer/model/j;

    const-string v8, "numberdetail"

    invoke-direct {v7, v8}, Lorg/mistergroup/shouldianswer/model/j;-><init>(Ljava/lang/String;)V

    .line 321
    iget-object v8, v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->o:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/mistergroup/shouldianswer/model/j;->a(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/16 v9, 0xa

    move-object v10, v2

    move-object v2, v1

    :goto_0
    if-gt v8, v9, :cond_9

    .line 323
    iput-object v3, v2, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->a:Ljava/lang/Object;

    iput-object v6, v2, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->b:Ljava/lang/Object;

    iput-object v7, v2, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->c:Ljava/lang/Object;

    iput v8, v2, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->h:I

    iput v9, v2, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->i:I

    iput v5, v2, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->n:I

    invoke-virtual {v7, v2}, Lorg/mistergroup/shouldianswer/model/j;->a(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v10, :cond_3

    return-object v10

    :cond_3
    move/from16 v26, v9

    move-object v9, v3

    move/from16 v3, v26

    .line 317
    :goto_1
    check-cast v11, Lorg/mistergroup/shouldianswer/model/j$b;

    if-eqz v11, :cond_9

    .line 324
    new-instance v15, Lkotlin/e/b/m$c;

    invoke-direct {v15}, Lkotlin/e/b/m$c;-><init>()V

    iput-object v0, v15, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 325
    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/model/j$b;->d()Lorg/mistergroup/shouldianswer/model/k;

    move-result-object v12

    sget-object v13, Lorg/mistergroup/shouldianswer/model/k;->c:Lorg/mistergroup/shouldianswer/model/k;

    if-eq v12, v13, :cond_4

    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/model/j$b;->d()Lorg/mistergroup/shouldianswer/model/k;

    move-result-object v12

    sget-object v13, Lorg/mistergroup/shouldianswer/model/k;->a:Lorg/mistergroup/shouldianswer/model/k;

    if-ne v12, v13, :cond_5

    .line 326
    :cond_4
    sget-object v12, Lorg/mistergroup/shouldianswer/model/r;->a:Lorg/mistergroup/shouldianswer/model/r;

    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/model/j$b;->b()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/model/j$b;->e()J

    move-result-wide v4

    invoke-virtual {v12, v13, v4, v5}, Lorg/mistergroup/shouldianswer/model/r;->a(Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 327
    sget-object v4, Lorg/mistergroup/shouldianswer/model/k;->f:Lorg/mistergroup/shouldianswer/model/k;

    invoke-virtual {v11, v4}, Lorg/mistergroup/shouldianswer/model/j$b;->a(Lorg/mistergroup/shouldianswer/model/k;)V

    .line 329
    :cond_5
    sget-object v4, Lorg/mistergroup/shouldianswer/model/k;->i:Lorg/mistergroup/shouldianswer/model/k$a;

    iget-object v5, v2, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->p:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;

    invoke-static {v5}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->c(Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;)Lorg/mistergroup/shouldianswer/ui/a;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/model/j$b;->d()Lorg/mistergroup/shouldianswer/model/k;

    move-result-object v12

    invoke-virtual {v4, v5, v12}, Lorg/mistergroup/shouldianswer/model/k$a;->b(Landroid/content/Context;Lorg/mistergroup/shouldianswer/model/k;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v15, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 330
    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/model/j$b;->f()I

    move-result v4

    div-int/lit8 v4, v4, 0x3c

    .line 331
    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/model/j$b;->f()I

    move-result v5

    rem-int/lit8 v5, v5, 0x3c

    .line 332
    new-instance v14, Lkotlin/e/b/m$c;

    invoke-direct {v14}, Lkotlin/e/b/m$c;-><init>()V

    iput-object v0, v14, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 333
    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/model/j$b;->f()I

    move-result v12

    if-lez v12, :cond_7

    if-lez v4, :cond_6

    .line 334
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " min "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v14, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 335
    :cond_6
    iget-object v12, v14, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " s"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v14, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 338
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v13}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v13

    invoke-virtual {v13}, Lorg/mistergroup/shouldianswer/MyApp;->a()Ljava/text/DateFormat;

    move-result-object v13

    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/model/j$b;->e()J

    move-result-wide v16

    move-object/from16 v21, v0

    invoke-static/range {v16 .. v17}, Lkotlin/c/b/a/b;->a(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp;->b()Ljava/text/DateFormat;

    move-result-object v0

    .line 339
    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/model/j$b;->e()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lkotlin/c/b/a/b;->a(J)Ljava/lang/Long;

    move-result-object v13

    .line 338
    invoke-virtual {v0, v13}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    sget-object v12, Lorg/mistergroup/shouldianswer/model/k;->i:Lorg/mistergroup/shouldianswer/model/k$a;

    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/model/j$b;->d()Lorg/mistergroup/shouldianswer/model/k;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/mistergroup/shouldianswer/model/k$a;->b(Lorg/mistergroup/shouldianswer/model/k;)I

    move-result v13

    .line 343
    sget-object v12, Lorg/mistergroup/shouldianswer/model/k;->i:Lorg/mistergroup/shouldianswer/model/k$a;

    iget-object v1, v2, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->p:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->b(Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;)Lorg/mistergroup/shouldianswer/a/au;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/a/au;->d()Landroid/view/View;

    move-result-object v1

    move/from16 p1, v13

    const-string v13, "binding.root"

    invoke-static {v1, v13}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v13, "binding.root.context"

    invoke-static {v1, v13}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/model/j$b;->d()Lorg/mistergroup/shouldianswer/model/k;

    move-result-object v13

    invoke-virtual {v12, v1, v13}, Lorg/mistergroup/shouldianswer/model/k$a;->a(Landroid/content/Context;Lorg/mistergroup/shouldianswer/model/k;)I

    move-result v1

    .line 346
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lkotlin/c/f;

    new-instance v22, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;

    const/16 v18, 0x0

    move-object/from16 v12, v22

    move/from16 v23, p1

    move-object/from16 p1, v10

    move-object v10, v13

    move-object v13, v15

    move-object/from16 v24, v14

    move-object v14, v0

    move-object/from16 v25, v10

    move-object v10, v15

    move-object/from16 v15, v24

    move/from16 v16, v23

    move/from16 v17, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v6

    invoke-direct/range {v12 .. v20}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j$1;-><init>(Lkotlin/e/b/m$c;Ljava/lang/String;Lkotlin/e/b/m$c;IILkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;Landroid/widget/LinearLayout;)V

    move-object/from16 v12, v22

    check-cast v12, Lkotlin/e/a/m;

    iput-object v9, v2, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->a:Ljava/lang/Object;

    iput-object v6, v2, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->b:Ljava/lang/Object;

    iput-object v7, v2, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->c:Ljava/lang/Object;

    iput v8, v2, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->h:I

    iput v3, v2, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->i:I

    iput-object v11, v2, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->d:Ljava/lang/Object;

    iput-object v10, v2, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->e:Ljava/lang/Object;

    iput v4, v2, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->j:I

    iput v5, v2, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->k:I

    move-object/from16 v4, v24

    iput-object v4, v2, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->f:Ljava/lang/Object;

    iput-object v0, v2, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->g:Ljava/lang/Object;

    move/from16 v0, v23

    iput v0, v2, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->l:I

    iput v1, v2, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->m:I

    const/4 v1, 0x2

    iput v1, v2, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$j;->n:I

    move-object/from16 v0, v25

    invoke-static {v0, v12, v2}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v10, p1

    if-ne v0, v10, :cond_8

    return-object v10

    :cond_8
    move-object/from16 v26, v9

    move v9, v3

    move-object/from16 v3, v26

    move/from16 v27, v8

    move-object v8, v6

    move/from16 v6, v27

    :goto_2
    const/4 v0, 0x1

    add-int/lit8 v1, v6, 0x1

    const/4 v4, 0x2

    move v5, v0

    move-object v6, v8

    move-object/from16 v0, v21

    move v8, v1

    move-object/from16 v1, p0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 374
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v0, v2, v3, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 376
    :cond_9
    sget-object v0, Lkotlin/o;->a:Lkotlin/o;

    return-object v0
.end method
