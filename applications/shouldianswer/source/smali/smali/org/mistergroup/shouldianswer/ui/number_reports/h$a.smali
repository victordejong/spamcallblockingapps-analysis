.class final Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;
.super Lkotlin/c/b/a/k;
.source "NumberReviewsViewModel.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/number_reports/h;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;Z)V
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
    b = "NumberReviewsViewModel.kt"
    c = {
        0x30,
        0x51,
        0x55
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.ui.number_reports.NumberReviewsViewModel$init$1"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:Ljava/lang/Object;

.field e:I

.field f:I

.field final synthetic g:Lorg/mistergroup/shouldianswer/ui/number_reports/h;

.field final synthetic h:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field final synthetic i:Landroid/content/Context;

.field private j:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/number_reports/h;Lorg/mistergroup/shouldianswer/model/NumberInfo;Landroid/content/Context;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->g:Lorg/mistergroup/shouldianswer/ui/number_reports/h;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->h:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->i:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->g:Lorg/mistergroup/shouldianswer/ui/number_reports/h;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->h:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->i:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;-><init>(Lorg/mistergroup/shouldianswer/ui/number_reports/h;Lorg/mistergroup/shouldianswer/model/NumberInfo;Landroid/content/Context;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->j:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v2

    .line 45
    iget v0, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v6, :cond_2

    if-eq v0, v5, :cond_1

    if-ne v0, v4, :cond_0

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->b:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader;

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    iget v0, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->e:I

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->b:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader;

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->a:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lkotlinx/coroutines/ad;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-object v8, v5

    goto/16 :goto_2

    :cond_2
    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->b:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader;

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->a:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lkotlinx/coroutines/ad;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v0, p1

    move-object v8, v6

    :cond_3
    move-object v6, v7

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v8, v6

    goto/16 :goto_1

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object v7, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->j:Lkotlinx/coroutines/ad;

    .line 46
    new-instance v8, Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader;

    iget-object v0, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->h:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v9, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->h:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {v9}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v0, v9, v6}, Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 48
    :try_start_2
    iput-object v7, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->a:Ljava/lang/Object;

    iput-object v8, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->b:Ljava/lang/Object;

    iput v6, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->f:I

    invoke-virtual {v8, v1}, Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader;->a(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-ne v0, v2, :cond_3

    return-object v2

    .line 45
    :goto_0
    :try_start_3
    check-cast v0, Ljava/util/ArrayList;

    .line 49
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 50
    iget-object v9, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->g:Lorg/mistergroup/shouldianswer/ui/number_reports/h;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/mistergroup/shouldianswer/ui/number_reports/h;->a(I)V

    const/4 v9, 0x0

    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v12, 0x5

    const/16 v13, 0xa

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;

    .line 53
    new-instance v14, Lorg/mistergroup/shouldianswer/ui/number_reports/a;

    sget-object v15, Lorg/mistergroup/shouldianswer/ui/number_reports/a$a;->a:Lorg/mistergroup/shouldianswer/ui/number_reports/a$a;

    invoke-direct {v14, v15}, Lorg/mistergroup/shouldianswer/ui/number_reports/a;-><init>(Lorg/mistergroup/shouldianswer/ui/number_reports/a$a;)V

    .line 54
    invoke-virtual {v14, v11}, Lorg/mistergroup/shouldianswer/ui/number_reports/a;->a(Lorg/mistergroup/shouldianswer/model/communityDatabase/d;)V

    .line 55
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v12, :cond_6

    .line 58
    new-instance v11, Lorg/mistergroup/shouldianswer/ui/number_reports/a;

    sget-object v14, Lorg/mistergroup/shouldianswer/ui/number_reports/a$a;->d:Lorg/mistergroup/shouldianswer/ui/number_reports/a$a;

    invoke-direct {v11, v14}, Lorg/mistergroup/shouldianswer/ui/number_reports/a;-><init>(Lorg/mistergroup/shouldianswer/ui/number_reports/a$a;)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-lt v9, v13, :cond_5

    .line 63
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_b

    .line 64
    new-instance v10, Lorg/mistergroup/shouldianswer/ui/number_reports/a;

    sget-object v11, Lorg/mistergroup/shouldianswer/ui/number_reports/a$a;->a:Lorg/mistergroup/shouldianswer/ui/number_reports/a$a;

    invoke-direct {v10, v11}, Lorg/mistergroup/shouldianswer/ui/number_reports/a;-><init>(Lorg/mistergroup/shouldianswer/ui/number_reports/a$a;)V

    .line 65
    new-instance v11, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;

    invoke-direct {v11}, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;-><init>()V

    invoke-virtual {v10, v11}, Lorg/mistergroup/shouldianswer/ui/number_reports/a;->a(Lorg/mistergroup/shouldianswer/model/communityDatabase/d;)V

    .line 66
    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/ui/number_reports/a;->a()Lorg/mistergroup/shouldianswer/model/communityDatabase/d;

    move-result-object v11

    if-nez v11, :cond_8

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_8
    iget-object v14, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->i:Landroid/content/Context;

    const v15, 0x7f100202

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "context.getString(R.stri\u2026_review_for_contact_nick)"

    invoke-static {v14, v15}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v14}, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->a(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/ui/number_reports/a;->a()Lorg/mistergroup/shouldianswer/model/communityDatabase/d;

    move-result-object v11

    if-nez v11, :cond_9

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_9
    iget-object v14, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->i:Landroid/content/Context;

    const v15, 0x7f100204

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "context.getString(R.stri\u2026o_community_review_title)"

    invoke-static {v14, v15}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v14}, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->b(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/ui/number_reports/a;->a()Lorg/mistergroup/shouldianswer/model/communityDatabase/d;

    move-result-object v11

    if-nez v11, :cond_a

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_a
    sget-object v14, Lorg/mistergroup/shouldianswer/model/ag;->a:Lorg/mistergroup/shouldianswer/model/ag;

    invoke-virtual {v11, v14}, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->a(Lorg/mistergroup/shouldianswer/model/ag;)V

    .line 70
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_b
    iget-object v10, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->g:Lorg/mistergroup/shouldianswer/ui/number_reports/h;

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/ui/number_reports/h;->c()I

    move-result v10

    if-le v10, v13, :cond_c

    .line 74
    new-instance v10, Lorg/mistergroup/shouldianswer/ui/number_reports/a;

    sget-object v11, Lorg/mistergroup/shouldianswer/ui/number_reports/a$a;->c:Lorg/mistergroup/shouldianswer/ui/number_reports/a$a;

    invoke-direct {v10, v11}, Lorg/mistergroup/shouldianswer/ui/number_reports/a;-><init>(Lorg/mistergroup/shouldianswer/ui/number_reports/a$a;)V

    .line 75
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    if-gt v9, v12, :cond_d

    .line 79
    new-instance v10, Lorg/mistergroup/shouldianswer/ui/number_reports/a;

    sget-object v11, Lorg/mistergroup/shouldianswer/ui/number_reports/a$a;->d:Lorg/mistergroup/shouldianswer/ui/number_reports/a$a;

    invoke-direct {v10, v11}, Lorg/mistergroup/shouldianswer/ui/number_reports/a;-><init>(Lorg/mistergroup/shouldianswer/ui/number_reports/a$a;)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_d
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v10

    check-cast v10, Lkotlin/c/f;

    new-instance v11, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a$1;

    invoke-direct {v11, v1, v7, v3}, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a$1;-><init>(Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;Ljava/util/ArrayList;Lkotlin/c/c;)V

    check-cast v11, Lkotlin/e/a/m;

    iput-object v6, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->a:Ljava/lang/Object;

    iput-object v8, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->b:Ljava/lang/Object;

    iput-object v0, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->c:Ljava/lang/Object;

    iput-object v7, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->d:Ljava/lang/Object;

    iput v9, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->e:I

    iput v5, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->f:I

    invoke-static {v10, v11, v1}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-ne v0, v2, :cond_e

    return-object v2

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    :goto_1
    move-object v6, v7

    .line 85
    :goto_2
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v5

    check-cast v5, Lkotlin/c/f;

    new-instance v7, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a$2;

    invoke-direct {v7, v1, v0, v3}, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a$2;-><init>(Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;Ljava/lang/Exception;Lkotlin/c/c;)V

    check-cast v7, Lkotlin/e/a/m;

    iput-object v6, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->a:Ljava/lang/Object;

    iput-object v8, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->b:Ljava/lang/Object;

    iput-object v0, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->c:Ljava/lang/Object;

    iput v4, v1, Lorg/mistergroup/shouldianswer/ui/number_reports/h$a;->f:I

    invoke-static {v5, v7, v1}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_e

    return-object v2

    .line 89
    :cond_e
    :goto_3
    sget-object v0, Lkotlin/o;->a:Lkotlin/o;

    return-object v0
.end method
