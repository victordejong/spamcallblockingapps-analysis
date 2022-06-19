.class final Lorg/mistergroup/shouldianswer/utils/l$d$1;
.super Lkotlin/c/b/a/k;
.source "MigrationHelper.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/utils/l$d;->a(Ljava/lang/String;)V
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
    b = "MigrationHelper.kt"
    c = {
        0x34,
        0x41
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.utils.MigrationHelper$migrate$1$1"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:Ljava/lang/Object;

.field e:Ljava/lang/Object;

.field f:Ljava/lang/Object;

.field g:Ljava/lang/Object;

.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:Ljava/lang/Object;

.field k:Ljava/lang/Object;

.field l:Ljava/lang/Object;

.field m:Ljava/lang/Object;

.field n:Ljava/lang/Object;

.field o:I

.field p:I

.field q:I

.field r:I

.field s:Z

.field t:I

.field final synthetic u:Ljava/lang/String;

.field private v:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/l$d$1;->u:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/utils/l$d$1;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/utils/l$d$1;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/utils/l$d$1;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/utils/l$d$1;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/utils/l$d$1;->u:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Lorg/mistergroup/shouldianswer/utils/l$d$1;-><init>(Ljava/lang/String;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/utils/l$d$1;->v:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v1, p0

    const-string v2, "country"

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v3

    .line 25
    iget v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->t:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v7, :cond_1

    if-ne v0, v5, :cond_0

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->n:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberReport;

    iget-boolean v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->s:Z

    iget v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->r:I

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->m:Ljava/lang/Object;

    check-cast v0, Ljava/util/Date;

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->l:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->k:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->j:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->i:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->h:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/m;

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->g:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/ag;

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->q:I

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->d:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    iget v8, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->p:I

    iget v9, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->o:I

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->c:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lorg/json/JSONArray;

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->b:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->a:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lkotlinx/coroutines/ad;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v17, v2

    move-object v14, v3

    goto/16 :goto_3

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_1
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->n:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-boolean v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->s:Z

    iget v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->r:I

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->m:Ljava/lang/Object;

    check-cast v0, Ljava/util/Date;

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->l:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->k:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->j:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->i:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->h:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/m;

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->g:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/ag;

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->q:I

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->d:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    iget v8, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->p:I

    iget v9, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->o:I

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->c:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lorg/json/JSONArray;

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->b:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->a:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lkotlinx/coroutines/ad;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v17, v2

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v24, v3

    move-object v3, v1

    move-object/from16 v1, v24

    goto/16 :goto_11

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->v:Lkotlinx/coroutines/ad;

    .line 27
    :try_start_2
    iget-object v8, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->u:Ljava/lang/String;

    if-eqz v8, :cond_c

    .line 28
    sget-object v9, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v10, "MigrationHelper.migrate parsing JSON"

    invoke-static {v9, v10, v6, v5, v6}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 29
    new-instance v9, Lorg/json/JSONArray;

    iget-object v10, v1, Lorg/mistergroup/shouldianswer/utils/l$d$1;->u:Ljava/lang/String;

    invoke-direct {v9, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_d

    move-object v12, v0

    move-object v13, v3

    move-object v11, v8

    move v8, v10

    move-object v3, v1

    move-object v10, v9

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_c

    .line 32
    :try_start_3
    invoke-virtual {v10, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v14, "id"

    .line 33
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string v15, "number"

    .line 34
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v6, "numberNorm"

    .line 35
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 36
    sget-object v7, Lorg/mistergroup/shouldianswer/model/ag;->e:Lorg/mistergroup/shouldianswer/model/ag$a;

    const-string v5, "rating"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v7, v5}, Lorg/mistergroup/shouldianswer/model/ag$a;->a(I)Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v5

    .line 37
    sget-object v7, Lorg/mistergroup/shouldianswer/model/m;->w:Lorg/mistergroup/shouldianswer/model/m$a;

    const-string v4, "category"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v7, v4}, Lorg/mistergroup/shouldianswer/model/m$a;->a(I)Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v4

    const-string v7, "nick"

    .line 38
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "title"

    .line 39
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c

    move-object/from16 p1, v13

    :try_start_4
    const-string v13, "comment"

    .line 40
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v16, v7

    .line 41
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b

    move-object/from16 v17, v2

    .line 42
    :try_start_5
    new-instance v2, Ljava/util/Date;

    move/from16 v18, v14

    const-string v14, "dateTime"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a

    move/from16 v20, v8

    move/from16 v19, v9

    :try_start_6
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {v2, v8, v9}, Ljava/util/Date;-><init>(J)V

    const-string v8, "uploaded"

    .line 43
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v8, "realDbId"

    .line 44
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "privateReview"

    .line 45
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    const-string v14, "masked"

    .line 46
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v21, v0

    .line 48
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ag;->d:Lorg/mistergroup/shouldianswer/model/ag;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    if-ne v5, v0, :cond_4

    move-object/from16 v13, p1

    move/from16 v9, v19

    move/from16 v8, v20

    goto/16 :goto_a

    :cond_4
    if-nez v9, :cond_9

    if-eqz v14, :cond_5

    goto/16 :goto_7

    .line 54
    :cond_5
    :try_start_7
    new-instance v0, Lorg/mistergroup/shouldianswer/model/NumberReport;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;-><init>()V

    .line 55
    invoke-virtual {v0, v15}, Lorg/mistergroup/shouldianswer/model/NumberReport;->b(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, v6}, Lorg/mistergroup/shouldianswer/model/NumberReport;->c(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    if-lez v8, :cond_6

    .line 58
    :try_start_8
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/mistergroup/shouldianswer/model/NumberReport;->d(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v1, p1

    goto/16 :goto_5

    .line 59
    :cond_6
    :goto_2
    :try_start_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v22, v14

    const-string v14, " "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lkotlin/i/g;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/mistergroup/shouldianswer/model/NumberReport;->e(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, v5}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(Lorg/mistergroup/shouldianswer/model/ag;)V

    .line 61
    invoke-virtual {v0, v7}, Lorg/mistergroup/shouldianswer/model/NumberReport;->f(Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 62
    invoke-virtual {v0, v9}, Lorg/mistergroup/shouldianswer/model/NumberReport;->b(Z)V

    .line 63
    invoke-virtual {v0, v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(Ljava/util/Date;)V

    .line 64
    invoke-virtual {v0, v4}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(Lorg/mistergroup/shouldianswer/model/m;)V

    .line 65
    sget-object v14, Lorg/mistergroup/shouldianswer/model/aa;->a:Lorg/mistergroup/shouldianswer/model/aa;

    iput-object v12, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->a:Ljava/lang/Object;

    iput-object v11, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->b:Ljava/lang/Object;

    iput-object v10, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->c:Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    move/from16 v9, v19

    :try_start_a
    iput v9, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->o:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    move/from16 v19, v9

    move/from16 v9, v20

    :try_start_b
    iput v9, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->p:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    move/from16 v20, v9

    move-object/from16 v9, v21

    :try_start_c
    iput-object v9, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->d:Ljava/lang/Object;

    move/from16 v9, v18

    iput v9, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->q:I

    iput-object v15, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->e:Ljava/lang/Object;

    iput-object v6, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->f:Ljava/lang/Object;

    iput-object v5, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->g:Ljava/lang/Object;

    iput-object v4, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->h:Ljava/lang/Object;

    move-object/from16 v4, v16

    iput-object v4, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->i:Ljava/lang/Object;

    iput-object v1, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->j:Ljava/lang/Object;

    iput-object v13, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->k:Ljava/lang/Object;

    iput-object v7, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->l:Ljava/lang/Object;

    iput-object v2, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->m:Ljava/lang/Object;

    iput v8, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->r:I

    move/from16 v1, v22

    iput-boolean v1, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->s:Z

    iput-object v0, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->n:Ljava/lang/Object;

    const/4 v1, 0x2

    iput v1, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->t:I

    invoke-virtual {v14, v0, v3}, Lorg/mistergroup/shouldianswer/model/aa;->b(Lorg/mistergroup/shouldianswer/model/NumberReport;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    move-object/from16 v14, p1

    if-ne v0, v14, :cond_7

    return-object v14

    :cond_7
    move-object v1, v3

    move/from16 v9, v19

    move/from16 v8, v20

    :goto_3
    move-object v3, v1

    move-object v13, v14

    goto/16 :goto_a

    :catch_2
    move-exception v0

    move-object/from16 v14, p1

    move/from16 v20, v9

    goto :goto_4

    :catch_3
    move-exception v0

    move-object/from16 v14, p1

    move/from16 v19, v9

    move-object v1, v14

    goto :goto_6

    :cond_8
    move-object/from16 v14, p1

    .line 59
    :try_start_d
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    move-object/from16 v14, p1

    :goto_4
    move-object v1, v14

    :goto_5
    move/from16 v9, v19

    :goto_6
    move/from16 v8, v20

    goto/16 :goto_11

    :cond_9
    :goto_7
    move/from16 v23, v14

    move-object/from16 v14, v16

    move/from16 v0, v18

    move-object/from16 v9, v21

    move/from16 v16, v8

    .line 51
    :try_start_e
    new-instance v8, Lorg/mistergroup/shouldianswer/model/NumberInfo;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    move-object/from16 v18, v2

    move-object/from16 v2, v17

    :try_start_f
    invoke-static {v7, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    move-object/from16 v17, v2

    :try_start_10
    sget-object v2, Lorg/mistergroup/shouldianswer/model/k;->a:Lorg/mistergroup/shouldianswer/model/k;

    move-object/from16 v21, v13

    const/4 v13, 0x1

    invoke-direct {v8, v15, v7, v2, v13}, Lorg/mistergroup/shouldianswer/model/NumberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/k;Z)V

    .line 52
    sget-object v2, Lorg/mistergroup/shouldianswer/model/g;->a:Lorg/mistergroup/shouldianswer/model/g;

    sget-object v13, Lorg/mistergroup/shouldianswer/model/ag;->c:Lorg/mistergroup/shouldianswer/model/ag;

    if-ne v5, v13, :cond_a

    const/4 v13, 0x1

    goto :goto_8

    :cond_a
    const/4 v13, 0x0

    :goto_8
    iput-object v12, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->a:Ljava/lang/Object;

    iput-object v11, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->b:Ljava/lang/Object;

    iput-object v10, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->c:Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9

    move-object/from16 v22, v10

    move/from16 v10, v19

    :try_start_11
    iput v10, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->o:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    move/from16 v19, v10

    move/from16 v10, v20

    :try_start_12
    iput v10, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->p:I

    iput-object v9, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->d:Ljava/lang/Object;

    iput v0, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->q:I

    iput-object v15, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->e:Ljava/lang/Object;

    iput-object v6, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->f:Ljava/lang/Object;

    iput-object v5, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->g:Ljava/lang/Object;

    iput-object v4, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->h:Ljava/lang/Object;

    iput-object v14, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->i:Ljava/lang/Object;

    iput-object v1, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->j:Ljava/lang/Object;

    move-object/from16 v0, v21

    iput-object v0, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->k:Ljava/lang/Object;

    iput-object v7, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->l:Ljava/lang/Object;

    move-object/from16 v0, v18

    iput-object v0, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->m:Ljava/lang/Object;

    move/from16 v0, v16

    iput v0, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->r:I

    move/from16 v0, v23

    iput-boolean v0, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->s:Z

    iput-object v8, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->n:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, v3, Lorg/mistergroup/shouldianswer/utils/l$d$1;->t:I

    invoke-virtual {v2, v8, v13, v3}, Lorg/mistergroup/shouldianswer/model/g;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;ZLkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_b

    return-object v1

    :cond_b
    move v8, v10

    move/from16 v9, v19

    move-object/from16 v10, v22

    move-object/from16 v24, v3

    move-object v3, v1

    move-object/from16 v1, v24

    :goto_9
    move-object v13, v3

    move-object v3, v1

    :goto_a
    const/4 v1, 0x1

    goto :goto_12

    :catch_6
    move-exception v0

    move-object/from16 v1, p1

    goto :goto_d

    :catch_7
    move-exception v0

    move-object/from16 v1, p1

    move/from16 v19, v10

    goto :goto_c

    :catch_8
    move-exception v0

    move-object/from16 v1, p1

    move-object/from16 v17, v2

    goto :goto_b

    :catch_9
    move-exception v0

    move-object/from16 v1, p1

    :goto_b
    move-object/from16 v22, v10

    :goto_c
    move/from16 v10, v20

    :goto_d
    move v8, v10

    move/from16 v9, v19

    goto :goto_10

    :catch_a
    move-exception v0

    move-object/from16 v1, p1

    goto :goto_e

    :catch_b
    move-exception v0

    move-object/from16 v1, p1

    move-object/from16 v17, v2

    :goto_e
    move/from16 v19, v9

    move-object/from16 v22, v10

    goto :goto_f

    :catch_c
    move-exception v0

    move-object/from16 v17, v2

    move/from16 v19, v9

    move-object/from16 v22, v10

    move-object v1, v13

    :goto_f
    move v10, v8

    :goto_10
    move-object/from16 v10, v22

    .line 68
    :goto_11
    :try_start_13
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v0, v5, v4, v5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d

    move-object v13, v1

    goto :goto_a

    :goto_12
    add-int/2addr v9, v1

    const/4 v5, 0x2

    const/4 v6, 0x0

    move v7, v1

    move-object/from16 v2, v17

    move-object/from16 v1, p0

    goto/16 :goto_0

    :catch_d
    move-exception v0

    .line 73
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 75
    :cond_c
    sget-object v0, Lkotlin/o;->a:Lkotlin/o;

    return-object v0
.end method
