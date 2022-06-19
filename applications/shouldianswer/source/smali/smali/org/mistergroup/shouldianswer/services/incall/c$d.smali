.class final Lorg/mistergroup/shouldianswer/services/incall/c$d;
.super Lkotlin/c/b/a/k;
.source "MyInCallPresenter.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/services/incall/c;->h()V
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
    b = "MyInCallPresenter.kt"
    c = {
        0x72,
        0xb1
    }
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.services.incall.MyInCallPresenter$updateNotification$1"
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

.field o:Ljava/lang/Object;

.field p:Ljava/lang/Object;

.field q:Ljava/lang/Object;

.field r:I

.field s:I

.field final synthetic t:Lorg/mistergroup/shouldianswer/MyApp;

.field final synthetic u:Lorg/mistergroup/shouldianswer/services/incall/a;

.field private v:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/MyApp;Lorg/mistergroup/shouldianswer/services/incall/a;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/services/incall/c$d;->t:Lorg/mistergroup/shouldianswer/MyApp;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/services/incall/c$d;->u:Lorg/mistergroup/shouldianswer/services/incall/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/services/incall/c$d;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/services/incall/c$d;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/services/incall/c$d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;
    .locals 3
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

    new-instance v0, Lorg/mistergroup/shouldianswer/services/incall/c$d;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/services/incall/c$d;->t:Lorg/mistergroup/shouldianswer/MyApp;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/services/incall/c$d;->u:Lorg/mistergroup/shouldianswer/services/incall/a;

    invoke-direct {v0, v1, v2, p2}, Lorg/mistergroup/shouldianswer/services/incall/c$d;-><init>(Lorg/mistergroup/shouldianswer/MyApp;Lorg/mistergroup/shouldianswer/services/incall/a;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/services/incall/c$d;->v:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 40

    move-object/from16 v15, p0

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 100
    iget v1, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->s:I

    const-string v3, ""

    const/4 v14, 0x2

    const/4 v4, 0x1

    const/4 v13, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v14, :cond_0

    iget-object v0, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/core/app/h$a;

    iget-object v0, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->p:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    iget-object v0, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->o:Ljava/lang/Object;

    check-cast v0, Landroidx/core/app/h$a;

    iget-object v0, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->n:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    iget-object v0, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->m:Ljava/lang/Object;

    check-cast v0, Landroidx/core/app/h$a;

    iget-object v0, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->l:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    iget-object v0, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->k:Ljava/lang/Object;

    check-cast v0, Landroidx/core/app/h$g;

    iget-object v0, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->j:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object v0, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->i:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget v0, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->r:I

    iget-object v0, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->h:Ljava/lang/Object;

    check-cast v0, Lkotlin/e/b/m$c;

    iget-object v0, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->g:Ljava/lang/Object;

    check-cast v0, Lkotlin/e/b/m$c;

    iget-object v0, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->f:Ljava/lang/Object;

    check-cast v0, Lkotlin/e/b/m$c;

    iget-object v0, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v0, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->c:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    iget-object v0, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    iget-object v0, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ad;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    move-object v2, v15

    goto/16 :goto_8

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1
    iget v1, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->r:I

    iget-object v6, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->h:Ljava/lang/Object;

    check-cast v6, Lkotlin/e/b/m$c;

    iget-object v7, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->g:Ljava/lang/Object;

    check-cast v7, Lkotlin/e/b/m$c;

    iget-object v8, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->f:Ljava/lang/Object;

    check-cast v8, Lkotlin/e/b/m$c;

    iget-object v9, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->e:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->d:Ljava/lang/Object;

    check-cast v10, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v11, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->c:Ljava/lang/Object;

    check-cast v11, Landroid/app/PendingIntent;

    iget-object v12, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->b:Ljava/lang/Object;

    check-cast v12, Landroid/content/Intent;

    iget-object v2, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->a:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/ad;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move-object/from16 v23, v12

    move-object v12, v11

    move v11, v1

    move-object/from16 v1, p1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object v2, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->v:Lkotlinx/coroutines/ad;

    .line 102
    :try_start_2
    sget-object v1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->l:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$a;

    iget-object v6, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->t:Lorg/mistergroup/shouldianswer/MyApp;

    check-cast v6, Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v5, v5}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$a;->a(Landroid/content/Context;ZZZ)Landroid/content/Intent;

    move-result-object v12

    .line 103
    iget-object v1, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->t:Lorg/mistergroup/shouldianswer/MyApp;

    check-cast v1, Landroid/content/Context;

    const/16 v6, 0x21

    invoke-static {v1, v6, v12, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 104
    iget-object v1, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->u:Lorg/mistergroup/shouldianswer/services/incall/a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/services/incall/a;->b()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v10

    .line 106
    iget-object v1, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->u:Lorg/mistergroup/shouldianswer/services/incall/a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/services/incall/a;->h()Ljava/lang/String;

    move-result-object v9

    .line 108
    new-instance v8, Lkotlin/e/b/m$c;

    invoke-direct {v8}, Lkotlin/e/b/m$c;-><init>()V

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 109
    new-instance v7, Lkotlin/e/b/m$c;

    invoke-direct {v7}, Lkotlin/e/b/m$c;-><init>()V

    iput-object v9, v7, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 110
    new-instance v6, Lkotlin/e/b/m$c;

    invoke-direct {v6}, Lkotlin/e/b/m$c;-><init>()V

    iput-object v3, v6, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 113
    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->e()Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    if-eqz v1, :cond_d

    .line 114
    :try_start_3
    iput-object v2, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->a:Ljava/lang/Object;

    iput-object v12, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->b:Ljava/lang/Object;

    iput-object v11, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->c:Ljava/lang/Object;

    iput-object v10, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->d:Ljava/lang/Object;

    iput-object v9, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->e:Ljava/lang/Object;

    iput-object v8, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->f:Ljava/lang/Object;

    iput-object v7, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->g:Ljava/lang/Object;

    iput-object v6, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->h:Ljava/lang/Object;

    iput v5, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->r:I

    iput v4, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->s:I

    invoke-virtual {v10, v15}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    :cond_3
    move-object/from16 v23, v12

    move-object v12, v11

    move v11, v5

    .line 100
    :goto_0
    check-cast v1, Lorg/mistergroup/shouldianswer/model/ag;

    .line 115
    iget-object v5, v15, Lorg/mistergroup/shouldianswer/services/incall/c$d;->t:Lorg/mistergroup/shouldianswer/MyApp;

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v10, v5}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 116
    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->k()Ljava/lang/String;

    move-result-object v5

    .line 118
    iput-object v5, v7, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 119
    iput-object v9, v6, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 122
    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 124
    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/model/ac;->b()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_4

    move-object/from16 v3, v17

    :cond_4
    iput-object v3, v8, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 125
    sget-object v3, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    invoke-static {v3}, Lorg/mistergroup/shouldianswer/services/incall/c;->a(Lorg/mistergroup/shouldianswer/services/incall/c;)J

    move-result-wide v17

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/model/ac;->d()J

    move-result-wide v19

    cmp-long v3, v17, v19

    if-eqz v3, :cond_6

    .line 126
    sget-object v3, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/model/ac;->d()J

    move-result-wide v14

    invoke-static {v3, v14, v15}, Lorg/mistergroup/shouldianswer/services/incall/c;->a(Lorg/mistergroup/shouldianswer/services/incall/c;J)V

    .line 127
    sget-object v3, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    move-object v14, v13

    check-cast v14, Landroid/graphics/Bitmap;

    invoke-static {v3, v14}, Lorg/mistergroup/shouldianswer/services/incall/c;->a(Lorg/mistergroup/shouldianswer/services/incall/c;Landroid/graphics/Bitmap;)V

    .line 128
    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/model/ac;->d()J

    move-result-wide v14

    const-wide/16 v17, 0x0

    cmp-long v3, v14, v17

    if-lez v3, :cond_6

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 129
    new-instance v3, Lorg/mistergroup/shouldianswer/services/incall/c$d$1;

    invoke-direct {v3, v5, v13}, Lorg/mistergroup/shouldianswer/services/incall/c$d$1;-><init>(Lorg/mistergroup/shouldianswer/model/ac;Lkotlin/c/c;)V

    move-object/from16 v20, v3

    check-cast v20, Lkotlin/e/a/m;

    const/16 v21, 0x3

    const/16 v22, 0x0

    move-object/from16 v17, v2

    invoke-static/range {v17 .. v22}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    goto :goto_1

    .line 136
    :cond_5
    sget-object v3, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    move-object v5, v13

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-static {v3, v5}, Lorg/mistergroup/shouldianswer/services/incall/c;->a(Lorg/mistergroup/shouldianswer/services/incall/c;Landroid/graphics/Bitmap;)V

    .line 138
    :cond_6
    :goto_1
    sget-object v3, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    invoke-static {v3}, Lorg/mistergroup/shouldianswer/services/incall/c;->c(Lorg/mistergroup/shouldianswer/services/incall/c;)Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v3

    if-eq v1, v3, :cond_c

    .line 139
    sget-object v3, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    invoke-static {v3, v1}, Lorg/mistergroup/shouldianswer/services/incall/c;->a(Lorg/mistergroup/shouldianswer/services/incall/c;Lorg/mistergroup/shouldianswer/model/ag;)V

    .line 140
    sget-object v3, Lorg/mistergroup/shouldianswer/services/incall/d;->a:[I

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ag;->ordinal()I

    move-result v1

    aget v1, v3, v1

    if-eq v1, v4, :cond_a

    const/4 v3, 0x2

    if-eq v1, v3, :cond_9

    const/4 v3, 0x3

    if-eq v1, v3, :cond_8

    const/4 v3, 0x4

    if-ne v1, v3, :cond_7

    const v1, 0x7f08010e

    goto :goto_2

    .line 144
    :cond_7
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_8
    const v1, 0x7f08010a

    goto :goto_2

    :cond_9
    const v1, 0x7f08010c

    goto :goto_2

    :cond_a
    const v1, 0x7f080108

    :goto_2
    move v5, v1

    .line 146
    sget-object v1, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    sget-object v3, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v3

    invoke-virtual {v3, v5}, Lorg/mistergroup/shouldianswer/MyApp;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_b

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/mistergroup/shouldianswer/services/incall/c;->b(Lorg/mistergroup/shouldianswer/services/incall/c;Landroid/graphics/Bitmap;)V

    move-object v14, v6

    move-object v11, v7

    move-object v15, v8

    move-object v6, v9

    move-object v7, v10

    move-object v10, v12

    move-object/from16 v8, v23

    move-object v9, v2

    move v12, v5

    goto :goto_3

    :cond_b
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move-object v14, v6

    move-object v15, v8

    move-object v6, v9

    move-object/from16 v8, v23

    move-object v9, v2

    move/from16 v39, v11

    move-object v11, v7

    move-object v7, v10

    move-object v10, v12

    move/from16 v12, v39

    goto :goto_3

    :catch_0
    move-exception v0

    const/4 v3, 0x2

    move-object/from16 v2, p0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v2, p0

    move v3, v14

    goto/16 :goto_7

    :cond_d
    move-object v14, v6

    move-object v15, v8

    move-object v6, v9

    move-object v8, v12

    const/4 v12, 0x0

    move-object v9, v2

    move-object/from16 v39, v11

    move-object v11, v7

    move-object v7, v10

    move-object/from16 v10, v39

    .line 150
    :goto_3
    sget-object v1, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/services/incall/c;->b(Lorg/mistergroup/shouldianswer/services/incall/c;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_e

    sget-object v1, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/services/incall/c;->b(Lorg/mistergroup/shouldianswer/services/incall/c;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_4

    :cond_e
    sget-object v1, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/services/incall/c;->d(Lorg/mistergroup/shouldianswer/services/incall/c;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    move-object/from16 v5, p0

    move-object v3, v1

    .line 151
    :try_start_5
    iget-object v1, v5, Lorg/mistergroup/shouldianswer/services/incall/c$d;->u:Lorg/mistergroup/shouldianswer/services/incall/a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/services/incall/a;->g()Ljava/lang/Integer;

    move-result-object v2

    .line 155
    sget-object v1, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/services/incall/c;->e(Lorg/mistergroup/shouldianswer/services/incall/c;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/services/incall/c;->f(Lorg/mistergroup/shouldianswer/services/incall/c;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v15, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v17, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    invoke-static/range {v17 .. v17}, Lorg/mistergroup/shouldianswer/services/incall/c;->g(Lorg/mistergroup/shouldianswer/services/incall/c;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v14, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v4, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    invoke-static {v4}, Lorg/mistergroup/shouldianswer/services/incall/c;->h(Lorg/mistergroup/shouldianswer/services/incall/c;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_5

    :cond_f
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_10

    .line 156
    sget-object v0, Lkotlin/o;->a:Lkotlin/o;

    return-object v0

    .line 157
    :cond_10
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MyInCallPresenter.updateNotification showAsStickyNotification="

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    invoke-static {v13}, Lorg/mistergroup/shouldianswer/services/incall/c;->i(Lorg/mistergroup/shouldianswer/services/incall/c;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move-object/from16 p1, v10

    const/4 v10, 0x0

    const/4 v13, 0x2

    :try_start_6
    invoke-static {v1, v4, v10, v13, v10}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 158
    :try_start_7
    sget-object v1, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    invoke-static {v1, v2}, Lorg/mistergroup/shouldianswer/services/incall/c;->a(Lorg/mistergroup/shouldianswer/services/incall/c;Ljava/lang/Integer;)V

    .line 159
    sget-object v1, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    invoke-static {v1, v3}, Lorg/mistergroup/shouldianswer/services/incall/c;->c(Lorg/mistergroup/shouldianswer/services/incall/c;Landroid/graphics/Bitmap;)V

    .line 160
    sget-object v1, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    iget-object v4, v15, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v1, v4}, Lorg/mistergroup/shouldianswer/services/incall/c;->a(Lorg/mistergroup/shouldianswer/services/incall/c;Ljava/lang/String;)V

    .line 161
    sget-object v1, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    iget-object v4, v14, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v1, v4}, Lorg/mistergroup/shouldianswer/services/incall/c;->b(Lorg/mistergroup/shouldianswer/services/incall/c;Ljava/lang/String;)V

    .line 163
    new-instance v13, Landroidx/core/app/h$g;

    invoke-direct {v13}, Landroidx/core/app/h$g;-><init>()V

    const/4 v1, 0x1

    .line 164
    invoke-virtual {v13, v1}, Landroidx/core/app/h$g;->a(Z)Landroidx/core/app/h$g;

    if-eqz v3, :cond_11

    .line 165
    invoke-virtual {v13, v3}, Landroidx/core/app/h$g;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/h$g;

    .line 166
    :cond_11
    invoke-virtual {v13, v12}, Landroidx/core/app/h$g;->a(I)Landroidx/core/app/h$g;

    .line 168
    iget-object v1, v5, Lorg/mistergroup/shouldianswer/services/incall/c$d;->t:Lorg/mistergroup/shouldianswer/MyApp;

    check-cast v1, Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    sget-object v17, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    invoke-static/range {v17 .. v17}, Lorg/mistergroup/shouldianswer/services/incall/c;->j(Lorg/mistergroup/shouldianswer/services/incall/c;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v2

    const/4 v2, 0x0

    const/4 v10, 0x1

    invoke-static {v1, v10, v4, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 169
    new-instance v1, Landroidx/core/app/h$a$a;

    iget-object v4, v5, Lorg/mistergroup/shouldianswer/services/incall/c$d;->t:Lorg/mistergroup/shouldianswer/MyApp;

    const v2, 0x7f100149

    invoke-virtual {v4, v2}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v10}, Landroidx/core/app/h$a$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroidx/core/app/h$a$a;->a()Landroidx/core/app/h$a;

    move-result-object v4

    .line 171
    iget-object v1, v5, Lorg/mistergroup/shouldianswer/services/incall/c$d;->t:Lorg/mistergroup/shouldianswer/MyApp;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/MyApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    sget-object v18, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    move-object/from16 v20, v3

    invoke-static/range {v18 .. v18}, Lorg/mistergroup/shouldianswer/services/incall/c;->k(Lorg/mistergroup/shouldianswer/services/incall/c;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move-object/from16 v18, v4

    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_8
    invoke-static {v1, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 172
    new-instance v1, Landroidx/core/app/h$a$a;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :try_start_9
    iget-object v3, v5, Lorg/mistergroup/shouldianswer/services/incall/c$d;->t:Lorg/mistergroup/shouldianswer/MyApp;

    const v4, 0x7f10014b

    invoke-virtual {v3, v4}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v3, v2}, Landroidx/core/app/h$a$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroidx/core/app/h$a$a;->a()Landroidx/core/app/h$a;

    move-result-object v4

    .line 174
    iget-object v1, v5, Lorg/mistergroup/shouldianswer/services/incall/c$d;->t:Lorg/mistergroup/shouldianswer/MyApp;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/MyApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    sget-object v21, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    move-object/from16 v22, v2

    invoke-static/range {v21 .. v21}, Lorg/mistergroup/shouldianswer/services/incall/c;->l(Lorg/mistergroup/shouldianswer/services/incall/c;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v4

    const/4 v2, 0x3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 175
    new-instance v1, Landroidx/core/app/h$a$a;

    iget-object v2, v5, Lorg/mistergroup/shouldianswer/services/incall/c$d;->t:Lorg/mistergroup/shouldianswer/MyApp;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/MyApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f10014a

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Landroidx/core/app/h$a$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroidx/core/app/h$a$a;->a()Landroidx/core/app/h$a;

    move-result-object v4

    .line 177
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlin/c/f;

    new-instance v21, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    const/16 v23, 0x0

    move-object/from16 v1, v21

    move-object/from16 v24, v17

    move-object/from16 v17, v0

    move-object v0, v2

    move-object/from16 v2, p0

    move-object/from16 v26, v20

    const/16 v25, 0x2

    move-object/from16 v20, v3

    move-object v3, v15

    move-object/from16 v28, v4

    move-object/from16 v27, v18

    move-object/from16 v18, v16

    move-object v4, v14

    move-object v5, v11

    move-object/from16 v29, v0

    move-object v0, v6

    move-object/from16 v6, v26

    move-object/from16 v30, v0

    move-object v0, v7

    move-object v7, v10

    move-object/from16 v31, v0

    move-object v0, v8

    move-object/from16 v8, v22

    move-object/from16 v32, v0

    move-object v0, v9

    move-object/from16 v9, v20

    move-object/from16 v33, v10

    const/16 v16, 0x0

    move-object v10, v13

    move-object/from16 v34, v11

    move-object/from16 v11, p1

    move/from16 v35, v12

    move-object/from16 v12, v24

    move-object/from16 v36, v13

    move-object/from16 v13, v27

    move-object/from16 v37, v14

    move-object/from16 v14, v18

    move-object/from16 v38, v15

    move-object/from16 v15, v28

    move-object/from16 v16, v23

    :try_start_a
    invoke-direct/range {v1 .. v16}, Lorg/mistergroup/shouldianswer/services/incall/c$d$2;-><init>(Lorg/mistergroup/shouldianswer/services/incall/c$d;Lkotlin/e/b/m$c;Lkotlin/e/b/m$c;Lkotlin/e/b/m$c;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/core/app/h$g;Landroid/app/PendingIntent;Ljava/lang/Integer;Landroidx/core/app/h$a;Landroidx/core/app/h$a;Landroidx/core/app/h$a;Lkotlin/c/c;)V

    move-object/from16 v1, v21

    check-cast v1, Lkotlin/e/a/m;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    move-object/from16 v2, p0

    :try_start_b
    iput-object v0, v2, Lorg/mistergroup/shouldianswer/services/incall/c$d;->a:Ljava/lang/Object;

    move-object/from16 v12, v32

    iput-object v12, v2, Lorg/mistergroup/shouldianswer/services/incall/c$d;->b:Ljava/lang/Object;

    move-object/from16 v12, p1

    iput-object v12, v2, Lorg/mistergroup/shouldianswer/services/incall/c$d;->c:Ljava/lang/Object;

    move-object/from16 v10, v31

    iput-object v10, v2, Lorg/mistergroup/shouldianswer/services/incall/c$d;->d:Ljava/lang/Object;

    move-object/from16 v9, v30

    iput-object v9, v2, Lorg/mistergroup/shouldianswer/services/incall/c$d;->e:Ljava/lang/Object;

    move-object/from16 v8, v38

    iput-object v8, v2, Lorg/mistergroup/shouldianswer/services/incall/c$d;->f:Ljava/lang/Object;

    move-object/from16 v7, v34

    iput-object v7, v2, Lorg/mistergroup/shouldianswer/services/incall/c$d;->g:Ljava/lang/Object;

    move-object/from16 v6, v37

    iput-object v6, v2, Lorg/mistergroup/shouldianswer/services/incall/c$d;->h:Ljava/lang/Object;

    move/from16 v5, v35

    iput v5, v2, Lorg/mistergroup/shouldianswer/services/incall/c$d;->r:I

    move-object/from16 v0, v26

    iput-object v0, v2, Lorg/mistergroup/shouldianswer/services/incall/c$d;->i:Ljava/lang/Object;

    move-object/from16 v0, v24

    iput-object v0, v2, Lorg/mistergroup/shouldianswer/services/incall/c$d;->j:Ljava/lang/Object;

    move-object/from16 v0, v36

    iput-object v0, v2, Lorg/mistergroup/shouldianswer/services/incall/c$d;->k:Ljava/lang/Object;

    move-object/from16 v0, v33

    iput-object v0, v2, Lorg/mistergroup/shouldianswer/services/incall/c$d;->l:Ljava/lang/Object;

    move-object/from16 v0, v27

    iput-object v0, v2, Lorg/mistergroup/shouldianswer/services/incall/c$d;->m:Ljava/lang/Object;

    move-object/from16 v0, v22

    iput-object v0, v2, Lorg/mistergroup/shouldianswer/services/incall/c$d;->n:Ljava/lang/Object;

    move-object/from16 v0, v18

    iput-object v0, v2, Lorg/mistergroup/shouldianswer/services/incall/c$d;->o:Ljava/lang/Object;

    move-object/from16 v0, v20

    iput-object v0, v2, Lorg/mistergroup/shouldianswer/services/incall/c$d;->p:Ljava/lang/Object;

    move-object/from16 v0, v28

    iput-object v0, v2, Lorg/mistergroup/shouldianswer/services/incall/c$d;->q:Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    const/4 v3, 0x2

    :try_start_c
    iput v3, v2, Lorg/mistergroup/shouldianswer/services/incall/c$d;->s:I

    move-object/from16 v0, v29

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_12

    return-object v1

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v2, v5

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v2, v5

    move v3, v13

    goto :goto_7

    :catch_6
    move-exception v0

    move-object v2, v5

    :goto_6
    const/4 v3, 0x2

    goto :goto_7

    :catch_7
    move-exception v0

    move v3, v14

    move-object v2, v15

    .line 253
    :goto_7
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v4, 0x0

    invoke-static {v1, v0, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 255
    :cond_12
    :goto_8
    sget-object v0, Lkotlin/o;->a:Lkotlin/o;

    return-object v0
.end method
