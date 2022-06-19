.class final Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;
.super Lkotlin/c/b/a/k;
.source "InCallActivity.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->u()V
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
    b = "InCallActivity.kt"
    c = {
        0x11c,
        0x12f,
        0x13e,
        0x145,
        0x148,
        0x160
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.ui.incall.InCallActivity$updateUI$1"
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

.field k:Z

.field l:Z

.field m:J

.field n:I

.field final synthetic o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

.field private p:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-direct {v0, v1, p2}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;-><init>(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->p:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v8, p0

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 271
    iget v1, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->n:I

    const/4 v2, 0x1

    const/4 v9, 0x2

    const/4 v3, 0x0

    const/4 v10, 0x0

    packed-switch v1, :pswitch_data_0

    .line 463
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :pswitch_0
    iget-object v0, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object v0, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->b:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/services/incall/a;

    iget-object v0, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_a

    :pswitch_1
    iget-object v1, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->i:Ljava/lang/Object;

    check-cast v1, Lkotlin/e/b/m$c;

    iget-object v1, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->h:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v1, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->g:Ljava/lang/Object;

    check-cast v1, Lorg/mistergroup/shouldianswer/model/ag;

    iget-object v1, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->f:Ljava/lang/Object;

    check-cast v1, Lorg/mistergroup/shouldianswer/model/ac;

    iget-boolean v1, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->k:Z

    iget-object v1, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->e:Ljava/lang/Object;

    check-cast v1, Lorg/mistergroup/shouldianswer/utils/t;

    iget-object v1, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->d:Ljava/lang/Object;

    check-cast v1, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v1, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v1, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->b:Ljava/lang/Object;

    check-cast v1, Lorg/mistergroup/shouldianswer/services/incall/a;

    iget-object v2, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->a:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/ad;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v7, v0

    move-object v14, v2

    goto/16 :goto_8

    :pswitch_2
    iget-boolean v1, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->l:Z

    iget-object v2, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->i:Ljava/lang/Object;

    check-cast v2, Lkotlin/e/b/m$c;

    iget-object v3, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->h:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->g:Ljava/lang/Object;

    check-cast v4, Lorg/mistergroup/shouldianswer/model/ag;

    iget-object v5, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->f:Ljava/lang/Object;

    check-cast v5, Lorg/mistergroup/shouldianswer/model/ac;

    iget-boolean v6, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->k:Z

    iget-object v7, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->e:Ljava/lang/Object;

    check-cast v7, Lorg/mistergroup/shouldianswer/utils/t;

    iget-object v11, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->d:Ljava/lang/Object;

    check-cast v11, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v12, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->c:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->b:Ljava/lang/Object;

    check-cast v13, Lorg/mistergroup/shouldianswer/services/incall/a;

    iget-object v14, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->a:Ljava/lang/Object;

    check-cast v14, Lkotlinx/coroutines/ad;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :pswitch_3
    iget-wide v1, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->m:J

    iget-boolean v1, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->l:Z

    iget-object v2, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->i:Ljava/lang/Object;

    check-cast v2, Lkotlin/e/b/m$c;

    iget-object v3, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->h:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->g:Ljava/lang/Object;

    check-cast v4, Lorg/mistergroup/shouldianswer/model/ag;

    iget-object v5, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->f:Ljava/lang/Object;

    check-cast v5, Lorg/mistergroup/shouldianswer/model/ac;

    iget-boolean v6, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->k:Z

    iget-object v7, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->e:Ljava/lang/Object;

    check-cast v7, Lorg/mistergroup/shouldianswer/utils/t;

    iget-object v11, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->d:Ljava/lang/Object;

    check-cast v11, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v12, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->c:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->b:Ljava/lang/Object;

    check-cast v13, Lorg/mistergroup/shouldianswer/services/incall/a;

    iget-object v14, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->a:Ljava/lang/Object;

    check-cast v14, Lkotlinx/coroutines/ad;

    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :pswitch_4
    iget-object v1, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->j:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    iget-wide v1, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->m:J

    iget-boolean v1, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->l:Z

    iget-object v2, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->i:Ljava/lang/Object;

    check-cast v2, Lkotlin/e/b/m$c;

    iget-object v3, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->h:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->g:Ljava/lang/Object;

    check-cast v4, Lorg/mistergroup/shouldianswer/model/ag;

    iget-object v5, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->f:Ljava/lang/Object;

    check-cast v5, Lorg/mistergroup/shouldianswer/model/ac;

    iget-boolean v6, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->k:Z

    iget-object v7, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->e:Ljava/lang/Object;

    check-cast v7, Lorg/mistergroup/shouldianswer/utils/t;

    iget-object v11, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->d:Ljava/lang/Object;

    check-cast v11, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v12, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->c:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->b:Ljava/lang/Object;

    check-cast v13, Lorg/mistergroup/shouldianswer/services/incall/a;

    iget-object v14, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->a:Ljava/lang/Object;

    check-cast v14, Lkotlinx/coroutines/ad;

    :try_start_4
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_0
    move v15, v6

    move-object v6, v0

    move-object v0, v3

    goto/16 :goto_6

    :pswitch_5
    iget-object v1, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->e:Ljava/lang/Object;

    check-cast v1, Lorg/mistergroup/shouldianswer/utils/t;

    iget-object v4, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->d:Ljava/lang/Object;

    check-cast v4, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v5, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->c:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->b:Ljava/lang/Object;

    check-cast v6, Lorg/mistergroup/shouldianswer/services/incall/a;

    iget-object v7, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->a:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/ad;

    :try_start_5
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    move-object v7, v1

    goto/16 :goto_2

    :pswitch_6
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object v1, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->p:Lkotlinx/coroutines/ad;

    .line 273
    :try_start_6
    iget-object v4, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v4}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->b(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/services/incall/a;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 274
    iget-object v5, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v5}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->c(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/services/incall/a;

    move-result-object v5

    if-ne v4, v5, :cond_1

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/services/incall/a;->b()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->e()Z

    move-result v5

    iget-object v6, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v6}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->d(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Z

    move-result v6

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    move-object v7, v0

    move-object v14, v1

    move-object v0, v4

    goto/16 :goto_9

    .line 275
    :cond_1
    :goto_1
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InCallActivity.updateUI for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/services/incall/a;->b()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v7

    invoke-static {v7}, Lorg/mistergroup/shouldianswer/model/x;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v10, v9, v10}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 276
    iget-object v5, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v5, v4}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->b(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;Lorg/mistergroup/shouldianswer/services/incall/a;)V

    .line 277
    iget-object v5, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/services/incall/a;->b()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v6

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->e()Z

    move-result v6

    invoke-static {v5, v6}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;Z)V

    .line 278
    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/services/incall/a;->f()Ljava/lang/String;

    move-result-object v5

    .line 279
    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/services/incall/a;->b()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v6

    .line 280
    invoke-virtual {v6, v5}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a(Ljava/lang/String;)V

    .line 282
    new-instance v7, Lorg/mistergroup/shouldianswer/utils/t;

    iget-object v11, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    check-cast v11, Landroid/content/Context;

    invoke-direct {v7, v6, v11, v3}, Lorg/mistergroup/shouldianswer/utils/t;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Landroid/content/Context;Z)V

    .line 283
    iget-object v11, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v11, v7}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;Lorg/mistergroup/shouldianswer/utils/t;)V

    .line 284
    iput-object v1, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->a:Ljava/lang/Object;

    iput-object v4, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->b:Ljava/lang/Object;

    iput-object v5, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->c:Ljava/lang/Object;

    iput-object v6, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->d:Ljava/lang/Object;

    iput-object v7, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->e:Ljava/lang/Object;

    iput v2, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->n:I

    invoke-virtual {v7, v8}, Lorg/mistergroup/shouldianswer/utils/t;->a(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v0, :cond_2

    return-object v0

    :cond_2
    move-object v14, v1

    move-object v13, v4

    move-object v12, v5

    move-object v11, v6

    .line 286
    :goto_2
    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->e()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 288
    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v1

    move-object v6, v1

    goto :goto_3

    :cond_3
    move-object v6, v10

    .line 289
    :goto_3
    invoke-virtual {v7}, Lorg/mistergroup/shouldianswer/utils/t;->i()Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v5

    .line 290
    invoke-virtual {v7}, Lorg/mistergroup/shouldianswer/utils/t;->b()Ljava/lang/String;

    move-result-object v4

    .line 291
    new-instance v1, Lkotlin/e/b/m$c;

    invoke-direct {v1}, Lkotlin/e/b/m$c;-><init>()V

    invoke-virtual {v7}, Lorg/mistergroup/shouldianswer/utils/t;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    if-eqz v15, :cond_4

    if-eqz v6, :cond_4

    .line 292
    sget-object v2, Lorg/mistergroup/shouldianswer/model/ag;->b:Lorg/mistergroup/shouldianswer/model/ag;

    if-ne v5, v2, :cond_4

    .line 293
    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 294
    :cond_4
    sget-object v2, Lorg/mistergroup/shouldianswer/model/ag;->a:Lorg/mistergroup/shouldianswer/model/ag;

    if-eq v5, v2, :cond_5

    if-nez v6, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    move v2, v3

    .line 296
    :goto_4
    iget-object v10, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    if-eqz v6, :cond_6

    sget-object v9, Lorg/mistergroup/shouldianswer/model/ag;->b:Lorg/mistergroup/shouldianswer/model/ag;

    if-ne v5, v9, :cond_6

    const/4 v9, 0x1

    goto :goto_5

    :cond_6
    move v9, v3

    :goto_5
    invoke-static {v10, v9}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->b(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;Z)V

    .line 298
    iget-object v9, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v9, v3}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->c(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;Z)V

    if-eqz v6, :cond_9

    .line 300
    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/model/ac;->d()J

    move-result-wide v9

    const-wide/16 v17, 0x0

    cmp-long v3, v9, v17

    if-lez v3, :cond_8

    .line 302
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/q;->a:Lorg/mistergroup/shouldianswer/utils/q;

    invoke-virtual {v3, v9, v10}, Lorg/mistergroup/shouldianswer/utils/q;->b(J)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 303
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v16

    move-object/from16 p1, v5

    move-object/from16 v5, v16

    check-cast v5, Lkotlin/c/f;

    new-instance v16, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$a;

    const/16 v17, 0x0

    move-object/from16 v19, v1

    move-object/from16 v1, v16

    move/from16 v20, v2

    move-object v2, v3

    move-object/from16 v21, v3

    move-object v3, v12

    move-object/from16 v18, v0

    move-object v0, v4

    move-object v4, v6

    move-wide/from16 v22, v9

    move-object/from16 v9, p1

    move-object v10, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v10

    move-object v10, v6

    move-object/from16 v6, p0

    invoke-direct/range {v1 .. v6}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$a;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/ac;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;)V

    move-object/from16 v1, v16

    check-cast v1, Lkotlin/e/a/m;

    iput-object v14, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->a:Ljava/lang/Object;

    iput-object v13, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->b:Ljava/lang/Object;

    iput-object v12, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->c:Ljava/lang/Object;

    iput-object v11, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->d:Ljava/lang/Object;

    iput-object v7, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->e:Ljava/lang/Object;

    iput-boolean v15, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->k:Z

    iput-object v10, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->f:Ljava/lang/Object;

    iput-object v9, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->g:Ljava/lang/Object;

    iput-object v0, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->h:Ljava/lang/Object;

    move-object/from16 v2, v19

    iput-object v2, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->i:Ljava/lang/Object;

    move/from16 v3, v20

    iput-boolean v3, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->l:Z

    move-wide/from16 v4, v22

    iput-wide v4, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->m:J

    move-object/from16 v4, v21

    iput-object v4, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->j:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->n:I

    move-object/from16 v4, v17

    invoke-static {v4, v1, v8}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v6, v18

    if-ne v1, v6, :cond_7

    return-object v6

    :cond_7
    move v1, v3

    move-object v4, v9

    move-object v5, v10

    :goto_6
    move-object v9, v2

    move-object v10, v7

    move-object v7, v5

    move v5, v1

    goto/16 :goto_7

    :cond_8
    move v3, v2

    move-object v2, v1

    move-object/from16 v27, v6

    move-object v6, v0

    move-object v0, v4

    move-wide/from16 v28, v9

    move-object v9, v5

    move-object/from16 v10, v27

    move-wide/from16 v4, v28

    .line 318
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v1

    check-cast v1, Lkotlin/c/f;

    move-object/from16 v18, v6

    new-instance v6, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$b;

    move-object/from16 p1, v1

    const/4 v1, 0x0

    invoke-direct {v6, v0, v1, v8}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$b;-><init>(Ljava/lang/String;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;)V

    check-cast v6, Lkotlin/e/a/m;

    iput-object v14, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->a:Ljava/lang/Object;

    iput-object v13, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->b:Ljava/lang/Object;

    iput-object v12, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->c:Ljava/lang/Object;

    iput-object v11, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->d:Ljava/lang/Object;

    iput-object v7, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->e:Ljava/lang/Object;

    iput-boolean v15, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->k:Z

    iput-object v10, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->f:Ljava/lang/Object;

    iput-object v9, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->g:Ljava/lang/Object;

    iput-object v0, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->h:Ljava/lang/Object;

    iput-object v2, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->i:Ljava/lang/Object;

    iput-boolean v3, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->l:Z

    iput-wide v4, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->m:J

    const/4 v1, 0x3

    iput v1, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->n:I

    move-object/from16 v1, p1

    invoke-static {v1, v6, v8}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v6, v18

    if-ne v1, v6, :cond_7

    return-object v6

    :cond_9
    move v3, v2

    move-object v9, v5

    move-object v10, v6

    move-object v6, v0

    move-object v2, v1

    move-object v0, v4

    .line 325
    iget-object v1, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v1

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/ai;->z:Landroid/widget/LinearLayout;

    const-string v4, "binding.llLocalReviews"

    invoke-static {v1, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v14, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->a:Ljava/lang/Object;

    iput-object v13, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->b:Ljava/lang/Object;

    iput-object v12, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->c:Ljava/lang/Object;

    iput-object v11, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->d:Ljava/lang/Object;

    iput-object v7, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->e:Ljava/lang/Object;

    iput-boolean v15, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->k:Z

    iput-object v10, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->f:Ljava/lang/Object;

    iput-object v9, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->g:Ljava/lang/Object;

    iput-object v0, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->h:Ljava/lang/Object;

    iput-object v2, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->i:Ljava/lang/Object;

    iput-boolean v3, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->l:Z

    const/4 v4, 0x4

    iput v4, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->n:I

    invoke-virtual {v7, v1, v8}, Lorg/mistergroup/shouldianswer/utils/t;->a(Landroid/widget/LinearLayout;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_7

    return-object v6

    .line 328
    :goto_7
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlin/c/f;

    new-instance v16, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;

    const/16 v17, 0x0

    move-object/from16 v1, v16

    move-object v2, v0

    move-object/from16 v24, v3

    move-object v3, v9

    move-object/from16 v25, v4

    move-object v4, v10

    move-object/from16 v26, v6

    move-object/from16 v6, v17

    move-object/from16 p1, v9

    move-object v9, v7

    move-object/from16 v7, p0

    invoke-direct/range {v1 .. v7}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$c;-><init>(Ljava/lang/String;Lkotlin/e/b/m$c;Lorg/mistergroup/shouldianswer/utils/t;ZLkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;)V

    move-object/from16 v1, v16

    check-cast v1, Lkotlin/e/a/m;

    iput-object v14, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->a:Ljava/lang/Object;

    iput-object v13, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->b:Ljava/lang/Object;

    iput-object v12, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->c:Ljava/lang/Object;

    iput-object v11, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->d:Ljava/lang/Object;

    iput-object v10, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->e:Ljava/lang/Object;

    iput-boolean v15, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->k:Z

    iput-object v9, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->f:Ljava/lang/Object;

    move-object/from16 v4, v25

    iput-object v4, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->g:Ljava/lang/Object;

    iput-object v0, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->h:Ljava/lang/Object;

    move-object/from16 v2, p1

    iput-object v2, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->i:Ljava/lang/Object;

    const/4 v0, 0x5

    iput v0, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->n:I

    move-object/from16 v0, v24

    invoke-static {v0, v1, v8}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v7, v26

    if-ne v0, v7, :cond_a

    return-object v7

    :cond_a
    move-object v1, v13

    :goto_8
    move-object v0, v1

    .line 349
    :goto_9
    iget-object v1, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->c(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/services/incall/a;

    move-result-object v1

    if-nez v1, :cond_b

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_b
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/services/incall/a;->g()Ljava/lang/Integer;

    move-result-object v9

    .line 350
    iget-object v1, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->c(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/services/incall/a;

    move-result-object v1

    if-nez v1, :cond_c

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_c
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/services/incall/a;->h()Ljava/lang/String;

    move-result-object v10

    .line 352
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lkotlin/c/f;

    new-instance v12, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;

    const/4 v5, 0x0

    move-object v1, v12

    move-object v2, v9

    move-object v3, v0

    move-object v4, v10

    move-object/from16 v6, p0

    invoke-direct/range {v1 .. v6}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;-><init>(Ljava/lang/Integer;Lorg/mistergroup/shouldianswer/services/incall/a;Ljava/lang/String;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;)V

    check-cast v12, Lkotlin/e/a/m;

    iput-object v14, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->a:Ljava/lang/Object;

    iput-object v0, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->b:Ljava/lang/Object;

    iput-object v9, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->c:Ljava/lang/Object;

    iput-object v10, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->d:Ljava/lang/Object;

    const/4 v0, 0x6

    iput v0, v8, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->n:I

    invoke-static {v11, v12, v8}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-ne v0, v7, :cond_d

    return-object v7

    :catch_0
    move-exception v0

    .line 461
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 463
    :cond_d
    :goto_a
    sget-object v0, Lkotlin/o;->a:Lkotlin/o;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
