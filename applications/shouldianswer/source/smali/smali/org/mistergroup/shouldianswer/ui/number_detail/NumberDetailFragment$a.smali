.class final Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;
.super Lkotlin/c/b/a/k;
.source "NumberDetailFragment.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->e()V
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

.field c:I

.field final synthetic d:Lorg/mistergroup/shouldianswer/a/au;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field final synthetic i:Lorg/mistergroup/shouldianswer/model/ag;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/Boolean;

.field final synthetic l:Z

.field final synthetic m:Lorg/mistergroup/shouldianswer/model/ag;

.field final synthetic n:Lorg/mistergroup/shouldianswer/model/NumberReport;

.field final synthetic o:Ljava/lang/Integer;

.field final synthetic p:Ljava/lang/Integer;

.field final synthetic q:Lkotlin/e/b/m$c;

.field private r:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/a/au;Lkotlin/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/model/ag;Ljava/lang/String;Ljava/lang/Boolean;ZLorg/mistergroup/shouldianswer/model/ag;Lorg/mistergroup/shouldianswer/model/NumberReport;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/e/b/m$c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->d:Lorg/mistergroup/shouldianswer/a/au;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->e:Ljava/lang/String;

    iput-object p4, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->f:Ljava/lang/String;

    iput-object p5, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->g:Ljava/lang/String;

    iput-object p6, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->h:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object p7, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->i:Lorg/mistergroup/shouldianswer/model/ag;

    iput-object p8, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->j:Ljava/lang/String;

    iput-object p9, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->k:Ljava/lang/Boolean;

    iput-boolean p10, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->l:Z

    iput-object p11, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->m:Lorg/mistergroup/shouldianswer/model/ag;

    iput-object p12, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->n:Lorg/mistergroup/shouldianswer/model/NumberReport;

    iput-object p13, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->o:Ljava/lang/Integer;

    iput-object p14, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->p:Ljava/lang/Integer;

    iput-object p15, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->q:Lkotlin/e/b/m$c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;
    .locals 19
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

    move-object/from16 v0, p0

    const-string v1, "completion"

    move-object/from16 v4, p2

    invoke-static {v4, v1}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;

    iget-object v3, v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->d:Lorg/mistergroup/shouldianswer/a/au;

    iget-object v5, v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->e:Ljava/lang/String;

    iget-object v6, v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->f:Ljava/lang/String;

    iget-object v7, v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->g:Ljava/lang/String;

    iget-object v8, v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->h:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v9, v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->i:Lorg/mistergroup/shouldianswer/model/ag;

    iget-object v10, v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->j:Ljava/lang/String;

    iget-object v11, v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->k:Ljava/lang/Boolean;

    iget-boolean v12, v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->l:Z

    iget-object v13, v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->m:Lorg/mistergroup/shouldianswer/model/ag;

    iget-object v14, v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->n:Lorg/mistergroup/shouldianswer/model/NumberReport;

    iget-object v15, v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->o:Ljava/lang/Integer;

    iget-object v2, v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->p:Ljava/lang/Integer;

    move-object/from16 v16, v15

    iget-object v15, v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->q:Lkotlin/e/b/m$c;

    move-object/from16 v17, v2

    move-object v2, v1

    move-object/from16 v18, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    invoke-direct/range {v2 .. v17}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;-><init>(Lorg/mistergroup/shouldianswer/a/au;Lkotlin/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/model/ag;Ljava/lang/String;Ljava/lang/Boolean;ZLorg/mistergroup/shouldianswer/model/ag;Lorg/mistergroup/shouldianswer/model/NumberReport;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/e/b/m$c;)V

    move-object/from16 v2, p1

    check-cast v2, Lkotlinx/coroutines/ad;

    iput-object v2, v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->r:Lkotlinx/coroutines/ad;

    return-object v1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 431
    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->c:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v4, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    :try_start_0
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 441
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 431
    :cond_1
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/ad;

    :try_start_1
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->r:Lkotlinx/coroutines/ad;

    .line 433
    :try_start_2
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->h:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->a:Ljava/lang/Object;

    iput v2, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->c:I

    invoke-virtual {p1, p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 431
    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 434
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v2

    check-cast v2, Lkotlin/c/f;

    new-instance v5, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a$1;

    invoke-direct {v5, p0, p1, v3}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a$1;-><init>(Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;Ljava/lang/String;Lkotlin/c/c;)V

    check-cast v5, Lkotlin/e/a/m;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->a:Ljava/lang/Object;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->b:Ljava/lang/Object;

    iput v4, p0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$a;->c:I

    invoke-static {v2, v5, p0}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne p1, v0, :cond_4

    return-object v0

    :catch_0
    move-exception p1

    .line 439
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v0, p1, v3, v4, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 441
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method
