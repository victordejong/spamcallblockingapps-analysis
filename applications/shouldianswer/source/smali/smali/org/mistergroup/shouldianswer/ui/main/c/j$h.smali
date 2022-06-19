.class final Lorg/mistergroup/shouldianswer/ui/main/c/j$h;
.super Lkotlin/c/b/a/k;
.source "LogsDataSource.kt"

# interfaces
.implements Lkotlin/e/a/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/c/j;->a(Ljava/util/ArrayList;Lkotlin/c/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/c/b/a/k;",
        "Lkotlin/e/a/q<",
        "Lorg/mistergroup/shouldianswer/model/j$a;",
        "Ljava/util/ArrayList<",
        "Lorg/mistergroup/shouldianswer/model/j$b;",
        ">;",
        "Lkotlin/c/c<",
        "-",
        "Lkotlin/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/c/b/a/f;
    b = "LogsDataSource.kt"
    c = {
        0xd0,
        0xe8,
        0x124,
        0x13a
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.ui.main.logs.LogsDataSource$update$2"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:Ljava/lang/Object;

.field e:Ljava/lang/Object;

.field f:Ljava/lang/Object;

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field final synthetic m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

.field final synthetic n:Lkotlin/e/b/m$a;

.field private o:Lorg/mistergroup/shouldianswer/model/j$a;

.field private p:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/c/j;Lkotlin/e/b/m$a;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->n:Lkotlin/e/b/m$a;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/mistergroup/shouldianswer/model/j$a;

    check-cast p2, Ljava/util/ArrayList;

    check-cast p3, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2, p3}, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->a(Lorg/mistergroup/shouldianswer/model/j$a;Ljava/util/ArrayList;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/j$a;Ljava/util/ArrayList;Lkotlin/c/c;)Lkotlin/c/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mistergroup/shouldianswer/model/j$a;",
            "Ljava/util/ArrayList<",
            "Lorg/mistergroup/shouldianswer/model/j$b;",
            ">;",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;)",
            "Lkotlin/c/c<",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p3, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->n:Lkotlin/e/b/m$a;

    invoke-direct {v0, v1, v2, p3}, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/j;Lkotlin/e/b/m$a;Lkotlin/c/c;)V

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->o:Lorg/mistergroup/shouldianswer/model/j$a;

    iput-object p2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->p:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 195
    iget v2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->l:I

    const-string v3, "sections[sectionIndex]"

    const-string v4, "items[i]"

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v9, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v9, :cond_3

    if-eq v2, v7, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v5, :cond_0

    iget-object v2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->c:Ljava/lang/Object;

    check-cast v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;

    iget v2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->i:I

    iget v4, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->h:I

    iget v6, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->g:I

    iget-object v7, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->b:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    iget-object v8, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->a:Ljava/lang/Object;

    check-cast v8, Lorg/mistergroup/shouldianswer/model/j$a;

    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    move-object v13, v1

    move-object v1, v0

    move v0, v5

    goto/16 :goto_7

    .line 324
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_1
    iget v2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->k:I

    iget-object v2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->f:Ljava/lang/Object;

    check-cast v2, Lorg/mistergroup/shouldianswer/ui/main/c/c;

    iget v2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->j:I

    iget-object v2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->e:Ljava/lang/Object;

    check-cast v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;

    iget v2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->i:I

    iget-object v2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->d:Ljava/lang/Object;

    check-cast v2, Lorg/mistergroup/shouldianswer/ui/main/c/j;

    iget-object v2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->c:Ljava/lang/Object;

    check-cast v2, Lorg/mistergroup/shouldianswer/model/j$b;

    iget v2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->h:I

    iget v7, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->g:I

    iget-object v11, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->b:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    iget-object v12, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->a:Ljava/lang/Object;

    check-cast v12, Lorg/mistergroup/shouldianswer/model/j$a;

    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->d:Ljava/lang/Object;

    check-cast v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;

    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedList;

    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->a:Ljava/lang/Object;

    check-cast v1, Lorg/mistergroup/shouldianswer/model/j$a;

    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_3
    iget-object v2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->f:Ljava/lang/Object;

    check-cast v2, Lorg/mistergroup/shouldianswer/ui/main/c/c;

    iget-object v3, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->e:Ljava/lang/Object;

    check-cast v3, Lorg/mistergroup/shouldianswer/model/j$b;

    iget v5, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->h:I

    iget v11, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->g:I

    iget-object v12, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->d:Ljava/lang/Object;

    check-cast v12, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;

    iget-object v13, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->c:Ljava/lang/Object;

    check-cast v13, Ljava/util/LinkedList;

    iget-object v14, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->b:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    iget-object v15, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->a:Ljava/lang/Object;

    check-cast v15, Lorg/mistergroup/shouldianswer/model/j$a;

    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    move v8, v6

    move-object/from16 v6, p1

    goto/16 :goto_9

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object v2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->o:Lorg/mistergroup/shouldianswer/model/j$a;

    iget-object v11, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->p:Ljava/util/ArrayList;

    .line 196
    sget-object v12, Lorg/mistergroup/shouldianswer/ui/main/c/l;->b:[I

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/j$a;->ordinal()I

    move-result v13

    aget v12, v12, v13

    if-eq v12, v9, :cond_f

    if-eq v12, v7, :cond_5

    goto/16 :goto_10

    .line 283
    :cond_5
    move-object v7, v11

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lkotlin/a/g;->a(Ljava/util/List;)I

    move-result v7

    move-object v13, v1

    move-object v12, v2

    const/4 v2, 0x0

    move-object v1, v0

    :goto_0
    if-lt v7, v2, :cond_b

    .line 284
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Lorg/mistergroup/shouldianswer/model/j$b;

    .line 285
    iget-object v15, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    .line 286
    invoke-virtual {v15}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->c()Ljava/util/LinkedList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_a

    .line 287
    invoke-virtual {v15}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->c()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;

    .line 288
    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v10

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v10, :cond_9

    .line 289
    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mistergroup/shouldianswer/ui/main/c/c;

    .line 290
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->b()Ljava/util/ArrayList;

    move-result-object v16

    move/from16 p1, v8

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v8

    move/from16 v16, v10

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v8, :cond_8

    move/from16 v17, v8

    .line 291
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->b()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/mistergroup/shouldianswer/model/j$b;

    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/model/j$b;->a()J

    move-result-wide v18

    invoke-virtual {v14}, Lorg/mistergroup/shouldianswer/model/j$b;->a()J

    move-result-wide v20

    cmp-long v8, v18, v20

    if-nez v8, :cond_7

    .line 292
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v8

    check-cast v8, Lkotlin/c/f;

    new-instance v23, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;

    const/16 v22, 0x0

    move-object/from16 v24, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v24

    move-object/from16 v17, v0

    move/from16 v18, v10

    move-object/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v9

    invoke-direct/range {v15 .. v22}, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$a;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/j;Lorg/mistergroup/shouldianswer/ui/main/c/c;ILorg/mistergroup/shouldianswer/ui/main/c/j$b;IILkotlin/c/c;)V

    move-object/from16 v15, v23

    check-cast v15, Lkotlin/e/a/m;

    iput-object v12, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->a:Ljava/lang/Object;

    iput-object v11, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->b:Ljava/lang/Object;

    iput v7, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->g:I

    iput v2, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->h:I

    iput-object v14, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->c:Ljava/lang/Object;

    move-object/from16 v14, v24

    iput-object v14, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->d:Ljava/lang/Object;

    iput v9, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->i:I

    iput-object v5, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->e:Ljava/lang/Object;

    iput v6, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->j:I

    iput-object v0, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->f:Ljava/lang/Object;

    iput v10, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->k:I

    const/4 v0, 0x3

    iput v0, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->l:I

    invoke-static {v8, v15, v1}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v13, :cond_6

    return-object v13

    :cond_6
    move-object v0, v1

    move-object v1, v13

    :goto_4
    move-object v13, v1

    move-object v1, v0

    goto :goto_5

    :cond_7
    move-object v8, v15

    add-int/lit8 v10, v10, 0x1

    move/from16 v8, v17

    goto :goto_3

    :cond_8
    move-object v8, v15

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v10, v16

    move/from16 v8, p1

    goto/16 :goto_2

    :cond_9
    move/from16 p1, v8

    move-object v8, v15

    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move/from16 v8, p1

    goto/16 :goto_1

    :cond_a
    :goto_5
    add-int/lit8 v7, v7, -0x1

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v9, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 310
    :cond_b
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->c()Ljava/util/LinkedList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/a/g;->a(Ljava/util/List;)I

    move-result v0

    move v4, v0

    move v6, v4

    move-object v7, v11

    move-object v8, v12

    const/4 v2, 0x0

    :goto_6
    if-lt v4, v2, :cond_e

    .line 312
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->c()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;

    .line 313
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_c

    .line 314
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v5

    check-cast v5, Lkotlin/c/f;

    new-instance v9, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$2;

    const/4 v10, 0x0

    invoke-direct {v9, v1, v4, v10}, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$2;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/j$h;ILkotlin/c/c;)V

    check-cast v9, Lkotlin/e/a/m;

    iput-object v8, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->a:Ljava/lang/Object;

    iput-object v7, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->b:Ljava/lang/Object;

    iput v6, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->g:I

    iput v4, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->h:I

    iput v2, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->i:I

    iput-object v0, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->c:Ljava/lang/Object;

    const/4 v0, 0x4

    iput v0, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->l:I

    invoke-static {v5, v9, v1}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v13, :cond_d

    return-object v13

    :cond_c
    const/4 v0, 0x4

    :cond_d
    :goto_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    :cond_e
    move-object v0, v1

    goto/16 :goto_10

    .line 199
    :cond_f
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v3, 0x0

    .line 200
    move-object v10, v3

    check-cast v10, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;

    .line 201
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object v13, v0

    move-object v15, v2

    move v5, v3

    move-object v12, v10

    move-object v14, v11

    const/4 v11, 0x0

    move-object/from16 v0, p0

    :goto_8
    if-ge v11, v5, :cond_1b

    .line 202
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v2

    check-cast v3, Lorg/mistergroup/shouldianswer/model/j$b;

    .line 203
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LogsDataSourceCallLog.update CallLogs.Action.NEW number="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b:Lorg/mistergroup/shouldianswer/model/NumberInfo$a;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/j$b;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/mistergroup/shouldianswer/model/NumberInfo$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-static {v2, v6, v8, v7, v8}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 204
    new-instance v2, Lorg/mistergroup/shouldianswer/ui/main/c/c;

    invoke-direct {v2, v3}, Lorg/mistergroup/shouldianswer/ui/main/c/c;-><init>(Lorg/mistergroup/shouldianswer/model/j$b;)V

    .line 205
    iget-object v6, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->f()Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    move-result-object v6

    sget-object v8, Lorg/mistergroup/shouldianswer/ui/main/c/l;->a:[I

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->ordinal()I

    move-result v6

    aget v6, v8, v6

    const/4 v8, 0x1

    if-eq v6, v8, :cond_14

    if-eq v6, v7, :cond_13

    const/4 v8, 0x3

    if-eq v6, v8, :cond_10

    goto :goto_b

    .line 208
    :cond_10
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->f()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v6

    iput-object v15, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->a:Ljava/lang/Object;

    iput-object v14, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->b:Ljava/lang/Object;

    iput-object v13, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->c:Ljava/lang/Object;

    iput-object v12, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->d:Ljava/lang/Object;

    iput v11, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->g:I

    iput v5, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->h:I

    iput-object v3, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->e:Ljava/lang/Object;

    iput-object v2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->f:Ljava/lang/Object;

    const/4 v9, 0x1

    iput v9, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->l:I

    invoke-virtual {v6, v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->e(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_11

    return-object v1

    .line 195
    :cond_11
    :goto_9
    check-cast v6, Lorg/mistergroup/shouldianswer/model/h;

    sget-object v9, Lorg/mistergroup/shouldianswer/model/h;->a:Lorg/mistergroup/shouldianswer/model/h;

    if-ne v6, v9, :cond_12

    :goto_a
    move v6, v5

    move-object v5, v1

    move-object v1, v0

    const/4 v0, 0x1

    goto :goto_c

    :cond_12
    :goto_b
    move v6, v5

    move-object v5, v1

    move-object v1, v0

    const/4 v0, 0x0

    goto :goto_c

    :cond_13
    const/4 v8, 0x3

    .line 207
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->f()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v6

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v6

    if-eqz v6, :cond_12

    goto :goto_a

    :cond_14
    const/4 v8, 0x3

    .line 206
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->f()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v6

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v6

    if-nez v6, :cond_12

    goto :goto_a

    :goto_c
    if-nez v0, :cond_1a

    .line 212
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->b:Lorg/mistergroup/shouldianswer/ui/main/c/h$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/h$a;->a()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/j$b;->e()J

    move-result-wide v9

    invoke-static {v9, v10}, Lkotlin/c/b/a/b;->a(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v12, :cond_15

    .line 213
    invoke-virtual {v12}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 214
    :cond_15
    new-instance v12, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/j$b;->e()J

    move-result-wide v9

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->f()Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    move-result-object v0

    invoke-direct {v12, v9, v10, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;-><init>(JLorg/mistergroup/shouldianswer/ui/main/c/j$a;)V

    .line 215
    invoke-virtual {v13, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v9, "LogsDataSourceCallLog.update newSection.add"

    const/4 v10, 0x0

    invoke-static {v0, v9, v10, v7, v10}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 220
    :cond_16
    invoke-virtual {v12}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/a/g;->e(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mistergroup/shouldianswer/ui/main/c/c;

    if-eqz v0, :cond_18

    .line 221
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->b()Ljava/util/ArrayList;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lkotlin/a/g;->e(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/mistergroup/shouldianswer/model/j$b;

    if-eqz v9, :cond_17

    invoke-virtual {v9}, Lorg/mistergroup/shouldianswer/model/j$b;->b()Ljava/lang/String;

    move-result-object v10

    goto :goto_d

    :cond_17
    const/4 v10, 0x0

    :goto_d
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/j$b;->b()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v16, v1

    const/4 v1, 0x0

    const/4 v8, 0x0

    invoke-static {v10, v9, v8, v7, v1}, Lkotlin/i/g;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 222
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v2, "LogsDataSourceCallLog.update lastSectionLogItem.callLogs.add"

    invoke-static {v0, v2, v1, v7, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_e

    :cond_18
    move-object/from16 v16, v1

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 226
    :cond_19
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "LogsDataSourceCallLog.update lastNewSection.items.add"

    invoke-static {v0, v3, v1, v7, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 227
    invoke-virtual {v12}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1a
    move-object/from16 v16, v1

    const/4 v8, 0x0

    :goto_e
    const/4 v0, 0x1

    add-int/2addr v11, v0

    move-object v1, v5

    move v5, v6

    move-object/from16 v0, v16

    goto/16 :goto_8

    .line 231
    :cond_1b
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    iget-object v3, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-static {v3}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->b(Lorg/mistergroup/shouldianswer/ui/main/c/j;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "LogsDataSourceCallLog.update uiContext.start"

    invoke-virtual {v2, v4, v3}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v2

    check-cast v2, Lkotlin/c/f;

    new-instance v3, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v13, v4}, Lorg/mistergroup/shouldianswer/ui/main/c/j$h$1;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/j$h;Ljava/util/LinkedList;Lkotlin/c/c;)V

    check-cast v3, Lkotlin/e/a/m;

    iput-object v15, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->a:Ljava/lang/Object;

    iput-object v14, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->b:Ljava/lang/Object;

    iput-object v13, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->c:Ljava/lang/Object;

    iput-object v12, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->d:Ljava/lang/Object;

    iput v7, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->l:I

    invoke-static {v2, v3, v0}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1c

    return-object v1

    .line 279
    :cond_1c
    :goto_f
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    iget-object v2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-static {v2}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->b(Lorg/mistergroup/shouldianswer/ui/main/c/j;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LogsDataSourceCallLog.update uiContext.end"

    invoke-virtual {v1, v3, v2}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :goto_10
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;->n:Lkotlin/e/b/m$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/e/b/m$a;->a:Z

    .line 324
    sget-object v0, Lkotlin/o;->a:Lkotlin/o;

    return-object v0
.end method
