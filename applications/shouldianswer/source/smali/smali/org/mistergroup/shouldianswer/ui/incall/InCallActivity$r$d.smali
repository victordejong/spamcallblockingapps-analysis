.class final Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;
.super Lkotlin/c/b/a/k;
.source "InCallActivity.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->b(Ljava/lang/Object;)Ljava/lang/Object;
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
.field a:I

.field final synthetic b:Ljava/lang/Integer;

.field final synthetic c:Lorg/mistergroup/shouldianswer/services/incall/a;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

.field private f:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Ljava/lang/Integer;Lorg/mistergroup/shouldianswer/services/incall/a;Ljava/lang/String;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->b:Ljava/lang/Integer;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->c:Lorg/mistergroup/shouldianswer/services/incall/a;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->d:Ljava/lang/String;

    iput-object p5, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;
    .locals 7
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

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->b:Ljava/lang/Integer;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->c:Lorg/mistergroup/shouldianswer/services/incall/a;

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->d:Ljava/lang/String;

    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    move-object v1, v0

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;-><init>(Ljava/lang/Integer;Lorg/mistergroup/shouldianswer/services/incall/a;Ljava/lang/String;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->f:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    .line 352
    iget v1, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->a:I

    if-nez v1, :cond_4c

    invoke-static/range {p1 .. p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->f:Lkotlinx/coroutines/ad;

    .line 353
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->g(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/ui/incall/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/incall/a;->a()V

    .line 356
    :cond_0
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->b:Ljava/lang/Integer;

    iget-object v2, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v2}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->h(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x3

    const/16 v4, 0x9

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-eqz v1, :cond_1a

    .line 358
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->b:Ljava/lang/Integer;

    if-nez v1, :cond_1

    goto :goto_0

    .line 359
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_2

    const-string v1, "STATE_NEW"

    goto/16 :goto_a

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    goto :goto_1

    .line 360
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v5, :cond_4

    const-string v1, "STATE_ACTIVE"

    goto/16 :goto_a

    :cond_4
    :goto_1
    if-nez v1, :cond_5

    goto :goto_2

    .line 361
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v4, :cond_6

    const-string v1, "STATE_CONNECTING"

    goto/16 :goto_a

    :cond_6
    :goto_2
    if-nez v1, :cond_7

    goto :goto_3

    .line 362
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v2, :cond_8

    const-string v1, "STATE_DIALING"

    goto :goto_a

    :cond_8
    :goto_3
    const/4 v9, 0x7

    if-nez v1, :cond_9

    goto :goto_4

    .line 363
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v9, :cond_a

    const-string v1, "STATE_DISCONNECTED"

    goto :goto_a

    :cond_a
    :goto_4
    const/16 v9, 0xa

    if-nez v1, :cond_b

    goto :goto_5

    .line 364
    :cond_b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v9, :cond_c

    const-string v1, "STATE_DISCONNECTING"

    goto :goto_a

    :cond_c
    :goto_5
    if-nez v1, :cond_d

    goto :goto_6

    .line 365
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v3, :cond_e

    const-string v1, "STATE_HOLDING"

    goto :goto_a

    :cond_e
    :goto_6
    const/16 v9, 0xb

    if-nez v1, :cond_f

    goto :goto_7

    .line 366
    :cond_f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v9, :cond_10

    const-string v1, "STATE_PULLING_CALL"

    goto :goto_a

    :cond_10
    :goto_7
    if-nez v1, :cond_11

    goto :goto_8

    .line 367
    :cond_11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v6, :cond_12

    const-string v1, "STATE_RINGING"

    goto :goto_a

    :cond_12
    :goto_8
    if-nez v1, :cond_13

    goto :goto_9

    .line 368
    :cond_13
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v7, :cond_14

    const-string v1, "STATE_SELECT_PHONE_ACCOUNT"

    goto :goto_a

    :cond_14
    :goto_9
    const-string v1, "undefined"

    .line 371
    :goto_a
    sget-object v9, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "InCallActivity.updateUI state changed to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1, v8, v6, v8}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 372
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->h(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_15

    goto :goto_b

    :cond_15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_17

    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->i(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/utils/b;

    move-result-object v1

    if-nez v1, :cond_16

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_16
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/b;->b()V

    .line 373
    :cond_17
    :goto_b
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    iget-object v9, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->b:Ljava/lang/Integer;

    invoke-static {v1, v9}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;Ljava/lang/Integer;)V

    .line 374
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->b:Ljava/lang/Integer;

    if-nez v1, :cond_18

    goto :goto_c

    :cond_18
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_1a

    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->i(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/utils/b;

    move-result-object v1

    if-nez v1, :cond_19

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_19
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/b;->a()V

    .line 377
    :cond_1a
    :goto_c
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->c:Lorg/mistergroup/shouldianswer/services/incall/a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/services/incall/a;->i()Landroid/telecom/Call;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Landroid/telecom/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lkotlin/c/b/a/b;->a(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_d

    :cond_1b
    move-object v1, v8

    :goto_d
    if-nez v1, :cond_1c

    goto :goto_e

    .line 379
    :cond_1c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v7, :cond_1d

    .line 380
    iget-object v9, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v9, v9, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v9}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->j(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V

    :cond_1d
    :goto_e
    const/4 v9, 0x0

    if-nez v1, :cond_1e

    goto :goto_f

    .line 382
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v6, :cond_1f

    move v10, v2

    goto :goto_10

    :cond_1f
    :goto_f
    move v10, v9

    :goto_10
    if-nez v1, :cond_20

    goto :goto_11

    .line 383
    :cond_20
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v11, v4, :cond_23

    :goto_11
    if-nez v1, :cond_21

    goto :goto_12

    :cond_21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_22

    goto :goto_13

    :cond_22
    :goto_12
    move v4, v9

    goto :goto_14

    :cond_23
    :goto_13
    move v4, v2

    :goto_14
    if-nez v1, :cond_24

    goto :goto_15

    .line 384
    :cond_24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v11, v5, :cond_27

    :goto_15
    if-nez v1, :cond_25

    goto :goto_16

    :cond_25
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_26

    goto :goto_17

    :cond_26
    :goto_16
    move v1, v9

    goto :goto_18

    :cond_27
    :goto_17
    move v1, v2

    :goto_18
    if-nez v1, :cond_29

    if-eqz v4, :cond_28

    goto :goto_19

    :cond_28
    move v3, v9

    goto :goto_1a

    :cond_29
    :goto_19
    move v3, v2

    .line 386
    :goto_1a
    iget-object v11, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v11, v11, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v11}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v11

    iget-object v11, v11, Lorg/mistergroup/shouldianswer/a/ai;->J:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v12, "binding.tvCallType"

    invoke-static {v11, v12}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v12, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->d:Ljava/lang/String;

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v11, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v10, :cond_2a

    .line 388
    iget-object v11, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v11, v11, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v11}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->f(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Z

    move-result v11

    if-nez v11, :cond_2a

    iget-object v11, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v11, v11, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v11}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->e(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Z

    move-result v11

    if-nez v11, :cond_2a

    move v11, v2

    goto :goto_1b

    :cond_2a
    move v11, v9

    :goto_1b
    if-eqz v3, :cond_2b

    .line 389
    iget-object v12, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v12, v12, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v12}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->f(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Z

    move-result v12

    if-eqz v12, :cond_2b

    move v12, v2

    goto :goto_1c

    :cond_2b
    move v12, v9

    :goto_1c
    if-nez v11, :cond_2c

    .line 390
    iget-object v13, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v13, v13, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v13}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->e(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Z

    move-result v13

    if-nez v13, :cond_2c

    move v13, v2

    goto :goto_1d

    :cond_2c
    move v13, v9

    :goto_1d
    if-eqz v10, :cond_2d

    .line 392
    iget-object v14, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v14, v14, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v14}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->f(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Z

    move-result v14

    if-eqz v14, :cond_2d

    move v14, v2

    goto :goto_1e

    :cond_2d
    move v14, v9

    .line 394
    :goto_1e
    iget-object v15, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v15, v15, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v15}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v15

    iget-object v15, v15, Lorg/mistergroup/shouldianswer/a/ai;->s:Landroid/widget/ImageView;

    const-string v5, "binding.imgMainRatingInTitle"

    invoke-static {v15, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v11, :cond_2e

    move v5, v9

    goto :goto_1f

    :cond_2e
    move v5, v7

    :goto_1f
    invoke-virtual {v15, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 395
    iget-object v5, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v5, v5, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v5}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v5

    iget-object v5, v5, Lorg/mistergroup/shouldianswer/a/ai;->m:Landroid/widget/FrameLayout;

    const-string v15, "binding.frameContactPhotoInTitle"

    invoke-static {v5, v15}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v12, :cond_2f

    move v11, v9

    goto :goto_20

    :cond_2f
    if-eqz v11, :cond_30

    move v11, v7

    goto :goto_20

    :cond_30
    const/4 v11, 0x4

    :goto_20
    invoke-virtual {v5, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 397
    iget-object v5, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v5, v5, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v5}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v5

    iget-object v5, v5, Lorg/mistergroup/shouldianswer/a/ai;->r:Landroid/widget/ImageView;

    const-string v11, "binding.imgMainRatingInSubtitle"

    invoke-static {v5, v11}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v13, :cond_31

    move v11, v9

    goto :goto_21

    :cond_31
    move v11, v7

    :goto_21
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 399
    iget-object v5, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v5, v5, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v5}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v5

    iget-object v5, v5, Lorg/mistergroup/shouldianswer/a/ai;->l:Landroid/widget/FrameLayout;

    const-string v11, "binding.frameContactPhotoBig"

    invoke-static {v5, v11}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v14, :cond_32

    move v11, v9

    goto :goto_22

    :cond_32
    move v11, v7

    :goto_22
    invoke-virtual {v5, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-string v5, "binding.llContent"

    if-eqz v1, :cond_33

    .line 401
    iget-object v11, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v11, v11, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v11}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->k(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Z

    move-result v11

    if-eqz v11, :cond_33

    .line 402
    iget-object v11, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v11, v11, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v11, v9}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->d(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;Z)V

    .line 403
    iget-object v11, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v11, v11, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v11}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v11

    iget-object v11, v11, Lorg/mistergroup/shouldianswer/a/ai;->w:Landroid/widget/LinearLayout;

    invoke-static {v11, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 406
    :cond_33
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    iget-object v13, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->c:Lorg/mistergroup/shouldianswer/services/incall/a;

    invoke-virtual {v13}, Lorg/mistergroup/shouldianswer/services/incall/a;->i()Landroid/telecom/Call;

    move-result-object v13

    if-nez v13, :cond_34

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_34
    invoke-virtual {v13}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v13

    const-string v14, "callInfo.call!!.details"

    invoke-static {v13, v14}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/telecom/Call$Details;->getConnectTimeMillis()J

    move-result-wide v13

    sub-long/2addr v11, v13

    const/16 v13, 0x3e8

    int-to-long v13, v13

    div-long/2addr v11, v13

    .line 408
    sget-object v13, Lkotlin/e/b/p;->a:Lkotlin/e/b/p;

    new-array v13, v6, [Ljava/lang/Object;

    const/16 v14, 0x3c

    int-to-long v14, v14

    div-long v16, v11, v14

    invoke-static/range {v16 .. v17}, Lkotlin/c/b/a/b;->a(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v13, v9

    rem-long/2addr v11, v14

    invoke-static {v11, v12}, Lkotlin/c/b/a/b;->a(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v13, v2

    array-length v11, v13

    invoke-static {v13, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    const-string v12, "%02d:%02d"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "java.lang.String.format(format, *args)"

    invoke-static {v11, v12}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    iget-object v12, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v12, v12, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v12}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v12

    iget-object v12, v12, Lorg/mistergroup/shouldianswer/a/ai;->N:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v13, "binding.tvDuration"

    invoke-static {v12, v13}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_35

    move v14, v9

    goto :goto_23

    :cond_35
    move v14, v7

    :goto_23
    invoke-virtual {v12, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 410
    iget-object v12, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v12, v12, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v12}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v12

    iget-object v12, v12, Lorg/mistergroup/shouldianswer/a/ai;->N:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v12, v13}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v12, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v11, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v11, v11, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v11}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v11

    iget-object v11, v11, Lorg/mistergroup/shouldianswer/a/ai;->B:Landroid/widget/LinearLayout;

    const-string v12, "binding.llOffHookActions"

    invoke-static {v11, v12}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_36

    move v3, v9

    goto :goto_24

    :cond_36
    move v3, v7

    :goto_24
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 413
    iget-object v3, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v3}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v3

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/ai;->D:Landroid/widget/LinearLayout;

    const-string v11, "binding.llRingingActions"

    invoke-static {v3, v11}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v10, :cond_37

    move v11, v9

    goto :goto_25

    :cond_37
    move v11, v7

    :goto_25
    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 414
    iget-object v3, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v3}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v3

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/ai;->k:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const-string v11, "binding.fabDisconnect"

    invoke-static {v3, v11}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v4, :cond_39

    if-eqz v1, :cond_38

    goto :goto_26

    :cond_38
    move v1, v7

    goto :goto_27

    :cond_39
    :goto_26
    move v1, v9

    :goto_27
    invoke-virtual {v3, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 415
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v1

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/ai;->I:Lorg/mistergroup/shouldianswer/components/LimitedScrollView;

    const-string v3, "binding.scrollView"

    invoke-static {v1, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v10, :cond_3a

    move v3, v9

    goto :goto_28

    :cond_3a
    move v3, v7

    :goto_28
    invoke-virtual {v1, v3}, Lorg/mistergroup/shouldianswer/components/LimitedScrollView;->setVisibility(I)V

    .line 416
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v1

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/ai;->w:Landroid/widget/LinearLayout;

    invoke-static {v1, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 417
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v1

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/ai;->o:Landroid/widget/ImageView;

    const-string v3, "binding.imgChangeTheme"

    invoke-static {v1, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 419
    sget-object v1, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/services/incall/c;->b()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mistergroup/shouldianswer/services/incall/MyInCallService;

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/services/incall/MyInCallService;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v1

    goto :goto_29

    :cond_3b
    move-object v1, v8

    :goto_29
    if-eqz v1, :cond_4a

    .line 421
    invoke-virtual {v1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v3

    .line 422
    invoke-virtual {v1}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result v4

    .line 423
    invoke-virtual {v1}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v1

    .line 424
    iget-object v5, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v5, v5, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v5}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->l(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_3c

    goto :goto_2a

    :cond_3c
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v1, :cond_42

    .line 425
    :goto_2a
    iget-object v5, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v5, v5, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v1}, Lkotlin/c/b/a/b;->a(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v5, v10}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->b(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;Ljava/lang/Integer;)V

    const-string v5, ""

    and-int/lit8 v10, v1, 0x8

    if-eqz v10, :cond_3d

    .line 427
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "SPEAKER,"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_3d
    and-int/lit8 v10, v1, 0x1

    if-eqz v10, :cond_3e

    .line 428
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "EARPIECE,"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_3e
    and-int/lit8 v10, v1, 0x2

    if-eqz v10, :cond_3f

    .line 429
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "BLUETOOTH,"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_3f
    and-int/lit8 v10, v1, 0x4

    if-eqz v10, :cond_40

    .line 430
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "WIRED_HEADSET,"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_40
    and-int/lit8 v10, v1, 0x5

    if-eqz v10, :cond_41

    .line 431
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "WIRED_OR_EARPIECE,"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 432
    :cond_41
    sget-object v10, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallActivity.updateUI supported routes "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5, v8, v6, v8}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_42
    if-ne v3, v7, :cond_43

    move v5, v2

    goto :goto_2b

    :cond_43
    move v5, v9

    :goto_2b
    if-ne v3, v6, :cond_44

    goto :goto_2c

    :cond_44
    move v2, v9

    .line 437
    :goto_2c
    iget-object v3, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    if-eqz v4, :cond_45

    invoke-static {v3}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_2d

    :cond_45
    invoke-static {v3}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->n(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 438
    :goto_2d
    iget-object v7, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v7, v7, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v7}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v7

    iget-object v7, v7, Lorg/mistergroup/shouldianswer/a/ai;->g:Landroid/widget/ToggleButton;

    invoke-virtual {v7, v8, v3, v8, v8}, Landroid/widget/ToggleButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 439
    iget-object v3, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v3}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v3

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/ai;->g:Landroid/widget/ToggleButton;

    const-string v7, "binding.butMicrophone"

    invoke-static {v3, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 441
    iget-object v3, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    if-eqz v5, :cond_46

    invoke-static {v3}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->o(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_2e

    :cond_46
    invoke-static {v3}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->p(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 442
    :goto_2e
    iget-object v4, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v4, v4, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v4}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v4

    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/ai;->j:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v8, v3, v8, v8}, Landroid/widget/ToggleButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 443
    iget-object v3, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v3}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v3

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/ai;->j:Landroid/widget/ToggleButton;

    const-string v4, "binding.butReprodutor"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_47

    move v7, v9

    goto :goto_2f

    :cond_47
    const/4 v7, 0x4

    :goto_2f
    invoke-virtual {v3, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 444
    iget-object v3, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v3}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v3

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/ai;->j:Landroid/widget/ToggleButton;

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 446
    iget-object v3, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    if-eqz v2, :cond_48

    invoke-static {v3}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->q(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_30

    :cond_48
    invoke-static {v3}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->r(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 447
    :goto_30
    iget-object v4, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v4, v4, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v4}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v4

    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/ai;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v8, v3, v8, v8}, Landroid/widget/ToggleButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 448
    iget-object v3, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v3}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v3

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/ai;->d:Landroid/widget/ToggleButton;

    const-string v4, "binding.butBluetooth"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/2addr v1, v6

    if-eqz v1, :cond_49

    move v1, v9

    goto :goto_31

    :cond_49
    const/4 v1, 0x4

    :goto_31
    invoke-virtual {v3, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 449
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v1

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/ai;->d:Landroid/widget/ToggleButton;

    invoke-static {v1, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 452
    :cond_4a
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->s(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->t(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_32

    :cond_4b
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->u(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 453
    :goto_32
    iget-object v2, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v2}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v2

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ai;->i:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v8, v1, v8, v8}, Landroid/widget/ToggleButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 454
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v1

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/ai;->i:Landroid/widget/ToggleButton;

    const-string v2, "binding.butPause"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v2}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->s(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 456
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r$d;->e:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;->o:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;

    move-result-object v1

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/ai;->c:Landroid/widget/Button;

    const-string v2, "binding.butAddCall"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 457
    sget-object v1, Lkotlin/o;->a:Lkotlin/o;

    return-object v1

    :cond_4c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
