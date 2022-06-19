.class final Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;
.super Lkotlin/c/b/a/k;
.source "SearchFragment.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;->a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
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
    b = "SearchFragment.kt"
    c = {
        0x7b,
        0x7f,
        0x8a
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.ui.search.SearchFragment$initWithActivity$4"
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

.field final synthetic k:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;

.field private l:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->k:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;
    .locals 2
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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->k:Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;

    invoke-direct {v0, v1, p2}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;-><init>(Lorg/mistergroup/shouldianswer/ui/search/SearchFragment;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->l:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 114
    iget v2, v1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->j:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->e:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/j;

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->b:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/s;

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_1
    iget-object v2, v1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->g:Ljava/lang/Object;

    check-cast v2, Lorg/mistergroup/shouldianswer/ui/main/c/c;

    iget-object v7, v1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->f:Ljava/lang/Object;

    check-cast v7, Lorg/mistergroup/shouldianswer/model/j$b;

    iget v8, v1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->i:I

    iget v9, v1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->h:I

    iget-object v10, v1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->e:Ljava/lang/Object;

    check-cast v10, Lorg/mistergroup/shouldianswer/model/j;

    iget-object v11, v1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->d:Ljava/lang/Object;

    check-cast v11, Ljava/util/HashMap;

    iget-object v12, v1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->c:Ljava/lang/Object;

    check-cast v12, Ljava/util/ArrayList;

    iget-object v13, v1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->b:Ljava/lang/Object;

    check-cast v13, Lorg/mistergroup/shouldianswer/model/s;

    iget-object v14, v1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->a:Ljava/lang/Object;

    check-cast v14, Lkotlinx/coroutines/ad;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v15, v2

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_2

    :cond_2
    iget v2, v1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->i:I

    iget v7, v1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->h:I

    iget-object v8, v1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->e:Ljava/lang/Object;

    check-cast v8, Lorg/mistergroup/shouldianswer/model/j;

    iget-object v9, v1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->d:Ljava/lang/Object;

    check-cast v9, Ljava/util/HashMap;

    iget-object v10, v1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->c:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    iget-object v11, v1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->b:Ljava/lang/Object;

    check-cast v11, Lorg/mistergroup/shouldianswer/model/s;

    iget-object v12, v1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->a:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/ad;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v14, p1

    move-object v13, v11

    move-object v11, v9

    move v9, v7

    move-object v7, v0

    move-object v0, v1

    move-object/from16 v16, v8

    move v8, v2

    move-object v2, v12

    move-object v12, v10

    move-object/from16 v10, v16

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object v2, v1, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->l:Lkotlinx/coroutines/ad;

    .line 115
    sget-object v7, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v8, "SearchFragment reading call log on background"

    invoke-static {v7, v8, v6, v5, v6}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 116
    new-instance v7, Lorg/mistergroup/shouldianswer/model/s;

    invoke-direct {v7}, Lorg/mistergroup/shouldianswer/model/s;-><init>()V

    .line 117
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 118
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 119
    new-instance v10, Lorg/mistergroup/shouldianswer/model/j;

    const-string v11, "search"

    invoke-direct {v10, v11}, Lorg/mistergroup/shouldianswer/model/j;-><init>(Ljava/lang/String;)V

    .line 121
    :try_start_3
    sget-object v11, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/utils/o;->f()Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v11, 0x0

    const/16 v12, 0x64

    move-object v13, v0

    move-object v0, v1

    :goto_0
    if-gt v11, v12, :cond_9

    .line 123
    iput-object v2, v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->a:Ljava/lang/Object;

    iput-object v7, v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->b:Ljava/lang/Object;

    iput-object v8, v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->c:Ljava/lang/Object;

    iput-object v9, v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->d:Ljava/lang/Object;

    iput-object v10, v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->e:Ljava/lang/Object;

    iput v11, v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->h:I

    iput v12, v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->i:I

    iput v4, v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->j:I

    invoke-virtual {v10, v0}, Lorg/mistergroup/shouldianswer/model/j;->a(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v13, :cond_4

    return-object v13

    :cond_4
    move-object/from16 v16, v13

    move-object v13, v7

    move-object/from16 v7, v16

    move/from16 v17, v12

    move-object v12, v8

    move/from16 v8, v17

    move/from16 v18, v11

    move-object v11, v9

    move/from16 v9, v18

    .line 114
    :goto_1
    check-cast v14, Lorg/mistergroup/shouldianswer/model/j$b;

    if-eqz v14, :cond_8

    .line 124
    invoke-virtual {v14}, Lorg/mistergroup/shouldianswer/model/j$b;->b()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 125
    new-instance v15, Lorg/mistergroup/shouldianswer/ui/main/c/c;

    invoke-direct {v15, v14}, Lorg/mistergroup/shouldianswer/ui/main/c/c;-><init>(Lorg/mistergroup/shouldianswer/model/j$b;)V

    .line 126
    new-instance v3, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;

    invoke-direct {v3}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;-><init>()V

    invoke-virtual {v15, v3}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->a(Lorg/mistergroup/shouldianswer/ui/main/c/c$a;)V

    .line 127
    iput-object v2, v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->a:Ljava/lang/Object;

    iput-object v13, v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->b:Ljava/lang/Object;

    iput-object v12, v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->c:Ljava/lang/Object;

    iput-object v11, v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->d:Ljava/lang/Object;

    iput-object v10, v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->e:Ljava/lang/Object;

    iput v9, v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->h:I

    iput v8, v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->i:I

    iput-object v14, v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->f:Ljava/lang/Object;

    iput-object v15, v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->g:Ljava/lang/Object;

    iput v5, v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->j:I

    invoke-virtual {v15, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->a(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v7, :cond_5

    return-object v7

    :cond_5
    move-object/from16 v16, v14

    move-object v14, v2

    move-object v2, v7

    move-object/from16 v7, v16

    .line 128
    :goto_2
    invoke-virtual {v15}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->c()Lorg/mistergroup/shouldianswer/ui/main/c/c$a;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 129
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/q;->a:Lorg/mistergroup/shouldianswer/utils/q;

    move-object/from16 p1, v7

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->h()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/mistergroup/shouldianswer/utils/q;->a(J)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->a(Landroid/graphics/Bitmap;)V

    .line 130
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->i()Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_7

    .line 131
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/q;->a:Lorg/mistergroup/shouldianswer/utils/q;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->h()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/mistergroup/shouldianswer/utils/q;->b(J)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->a(Landroid/graphics/Bitmap;)V

    goto :goto_3

    :cond_6
    move-object/from16 p1, v7

    .line 134
    :cond_7
    :goto_3
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    move-object v3, v11

    check-cast v3, Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lorg/mistergroup/shouldianswer/model/j$b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v13

    move-object v13, v2

    move-object v2, v14

    move-object/from16 v16, v12

    move v12, v8

    move-object/from16 v8, v16

    goto :goto_4

    :cond_8
    move-object/from16 v16, v13

    move-object v13, v7

    move-object/from16 v7, v16

    move-object/from16 v17, v12

    move v12, v8

    move-object/from16 v8, v17

    :goto_4
    add-int/lit8 v3, v9, 0x1

    move-object v9, v11

    const/4 v5, 0x2

    const/4 v6, 0x0

    move v11, v3

    const/4 v3, 0x3

    goto/16 :goto_0

    .line 138
    :cond_9
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v3

    check-cast v3, Lkotlin/c/f;

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e$1;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v8, v5}, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e$1;-><init>(Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;Ljava/util/ArrayList;Lkotlin/c/c;)V

    check-cast v4, Lkotlin/e/a/m;

    iput-object v2, v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->a:Ljava/lang/Object;

    iput-object v7, v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->b:Ljava/lang/Object;

    iput-object v8, v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->c:Ljava/lang/Object;

    iput-object v9, v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->d:Ljava/lang/Object;

    iput-object v10, v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->e:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, v0, Lorg/mistergroup/shouldianswer/ui/search/SearchFragment$e;->j:I

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-ne v0, v13, :cond_a

    return-object v13

    :cond_a
    :goto_5
    const/4 v3, 0x2

    const/4 v4, 0x0

    goto :goto_6

    :cond_b
    move v3, v5

    move-object v4, v6

    goto :goto_6

    :catch_0
    move-exception v0

    .line 143
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v0, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 145
    :goto_6
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v2, "SearchFragment reading call log on background FINISHED!"

    invoke-static {v0, v2, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 146
    sget-object v0, Lkotlin/o;->a:Lkotlin/o;

    return-object v0
.end method
