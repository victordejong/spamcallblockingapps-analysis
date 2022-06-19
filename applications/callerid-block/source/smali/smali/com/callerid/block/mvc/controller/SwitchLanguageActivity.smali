.class public Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;
.super Lcom/callerid/block/main/BaseActivity;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/widget/ImageView;

.field private C:Landroid/widget/ImageView;

.field private D:Landroid/widget/ImageView;

.field private E:Landroid/widget/ImageView;

.field private F:Landroid/widget/ImageView;

.field private G:Landroid/widget/ImageView;

.field private H:Landroid/widget/ImageView;

.field private I:Landroid/widget/ImageView;

.field private J:Landroid/widget/ImageView;

.field private K:Landroid/widget/ImageView;

.field private L:Landroid/widget/ImageView;

.field private M:Landroid/widget/ImageView;

.field private N:Landroid/widget/ImageView;

.field private O:Landroid/widget/ImageView;

.field private P:Landroid/widget/ImageView;

.field private Q:Landroid/widget/ImageView;

.field private R:Landroid/widget/ImageView;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/widget/ImageView;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/main/BaseActivity;-><init>()V

    return-void
.end method

.method private Q()V
    .locals 4

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/callerid/block/main/EZCallApplication;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "vi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x19

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "ur"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x18

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "te"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "ta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "ru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "pa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "mr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "ml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "kn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "in"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "hi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "gu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_0

    :cond_12
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_13
    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_0

    :cond_13
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_14
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_0

    :cond_14
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_15
    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_0

    :cond_15
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_16
    const-string v1, "cs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_0

    :cond_16
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_17
    const-string v1, "bn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_0

    :cond_17
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_18
    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_0

    :cond_18
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_19
    const-string v1, "am"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_0

    :cond_19
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->v:Landroid/widget/ImageView;

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->D:Landroid/widget/ImageView;

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->Q:Landroid/widget/ImageView;

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->P:Landroid/widget/ImageView;

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->G:Landroid/widget/ImageView;

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->F:Landroid/widget/ImageView;

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->y:Landroid/widget/ImageView;

    goto :goto_1

    :pswitch_7
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->A:Landroid/widget/ImageView;

    goto :goto_1

    :pswitch_8
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->L:Landroid/widget/ImageView;

    goto :goto_1

    :pswitch_9
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->O:Landroid/widget/ImageView;

    goto :goto_1

    :pswitch_a
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->J:Landroid/widget/ImageView;

    goto :goto_1

    :pswitch_b
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->K:Landroid/widget/ImageView;

    goto :goto_1

    :pswitch_c
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->H:Landroid/widget/ImageView;

    goto :goto_1

    :pswitch_d
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->M:Landroid/widget/ImageView;

    goto :goto_1

    :pswitch_e
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->z:Landroid/widget/ImageView;

    goto :goto_1

    :pswitch_f
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->x:Landroid/widget/ImageView;

    goto :goto_1

    :pswitch_10
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->w:Landroid/widget/ImageView;

    goto :goto_1

    :pswitch_11
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->I:Landroid/widget/ImageView;

    goto :goto_1

    :pswitch_12
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->u:Landroid/widget/ImageView;

    goto :goto_1

    :pswitch_13
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->B:Landroid/widget/ImageView;

    goto :goto_1

    :pswitch_14
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->s:Landroid/widget/ImageView;

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :pswitch_15
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->C:Landroid/widget/ImageView;

    goto :goto_1

    :pswitch_16
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->N:Landroid/widget/ImageView;

    goto :goto_1

    :pswitch_17
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->E:Landroid/widget/ImageView;

    goto :goto_1

    :pswitch_18
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->t:Landroid/widget/ImageView;

    goto :goto_1

    :pswitch_19
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->R:Landroid/widget/ImageView;

    goto :goto_1

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0xc2c -> :sswitch_19
        0xc31 -> :sswitch_18
        0xc4c -> :sswitch_17
        0xc70 -> :sswitch_16
        0xc81 -> :sswitch_15
        0xca9 -> :sswitch_14
        0xcae -> :sswitch_13
        0xccc -> :sswitch_12
        0xcee -> :sswitch_11
        0xd01 -> :sswitch_10
        0xd25 -> :sswitch_f
        0xd2b -> :sswitch_e
        0xd2e -> :sswitch_d
        0xd63 -> :sswitch_c
        0xd9f -> :sswitch_b
        0xda5 -> :sswitch_a
        0xda6 -> :sswitch_9
        0xdf1 -> :sswitch_8
        0xe04 -> :sswitch_7
        0xe43 -> :sswitch_6
        0xe6d -> :sswitch_5
        0xe71 -> :sswitch_4
        0xe74 -> :sswitch_3
        0xe7e -> :sswitch_2
        0xe9d -> :sswitch_1
        0xeb3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private R()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/callerid/block/start/SettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private S()V
    .locals 56

    move-object/from16 v0, p0

    const v1, 0x7f09017d

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callerid/block/customview/LImageButton;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/callerid/block/util/t0;->P(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const v2, 0x7f09048b

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090188

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v4, 0x7f0903e3

    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0901c5

    invoke-virtual {v0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->s:Landroid/widget/ImageView;

    const v5, 0x7f090185

    invoke-virtual {v0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    const v6, 0x7f09039e

    invoke-virtual {v0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0901b6

    invoke-virtual {v0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->t:Landroid/widget/ImageView;

    const v7, 0x7f09018b

    invoke-virtual {v0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    const v8, 0x7f0903f3

    invoke-virtual {v0, v8}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0901ca

    invoke-virtual {v0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->u:Landroid/widget/ImageView;

    const v9, 0x7f090191

    invoke-virtual {v0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    const v10, 0x7f090496

    invoke-virtual {v0, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f090201

    invoke-virtual {v0, v11}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->v:Landroid/widget/ImageView;

    const v11, 0x7f09018c

    invoke-virtual {v0, v11}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    const v12, 0x7f0903fb

    invoke-virtual {v0, v12}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v13, 0x7f0901d1

    invoke-virtual {v0, v13}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->w:Landroid/widget/ImageView;

    const v13, 0x7f09018d

    invoke-virtual {v0, v13}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    const v14, 0x7f0903fd

    invoke-virtual {v0, v14}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v15, 0x7f0901d4

    invoke-virtual {v0, v15}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    iput-object v15, v0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->x:Landroid/widget/ImageView;

    const v15, 0x7f090154

    invoke-virtual {v0, v15}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout;

    move-object/from16 v16, v15

    const v15, 0x7f090454

    invoke-virtual {v0, v15}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v17, v13

    const v13, 0x7f0901e4

    invoke-virtual {v0, v13}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->y:Landroid/widget/ImageView;

    const v13, 0x7f090143

    invoke-virtual {v0, v13}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    move-object/from16 v18, v13

    const v13, 0x7f090404

    invoke-virtual {v0, v13}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v19, v11

    const v11, 0x7f0901d5

    invoke-virtual {v0, v11}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->z:Landroid/widget/ImageView;

    const v11, 0x7f090152

    invoke-virtual {v0, v11}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    move-object/from16 v20, v11

    const v11, 0x7f090438

    invoke-virtual {v0, v11}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v21, v9

    const v9, 0x7f0901de

    invoke-virtual {v0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->A:Landroid/widget/ImageView;

    const v9, 0x7f09013e

    invoke-virtual {v0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    move-object/from16 v22, v9

    const v9, 0x7f0903e6

    invoke-virtual {v0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    move-object/from16 v23, v7

    const v7, 0x7f0901c6

    invoke-virtual {v0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->B:Landroid/widget/ImageView;

    const v7, 0x7f09013b

    invoke-virtual {v0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    move-object/from16 v24, v7

    const v7, 0x7f0903d5

    invoke-virtual {v0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    move-object/from16 v25, v5

    const v5, 0x7f0901bf

    invoke-virtual {v0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->C:Landroid/widget/ImageView;

    const v5, 0x7f090161

    invoke-virtual {v0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    move-object/from16 v26, v5

    const v5, 0x7f090495

    invoke-virtual {v0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v27, v3

    const v3, 0x7f090200

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->D:Landroid/widget/ImageView;

    const v3, 0x7f090134

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v28, v3

    const v3, 0x7f0903b0

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v29, v1

    const v1, 0x7f0901bb

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->E:Landroid/widget/ImageView;

    const v1, 0x7f09015b

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    move-object/from16 v30, v1

    const v1, 0x7f090472

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v31, v1

    const v1, 0x7f0901f7

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->F:Landroid/widget/ImageView;

    const v1, 0x7f09015c

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    move-object/from16 v32, v1

    const v1, 0x7f09047a

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v33, v1

    const v1, 0x7f0901fa

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->G:Landroid/widget/ImageView;

    const v1, 0x7f090148

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    move-object/from16 v34, v1

    const v1, 0x7f090406

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v35, v1

    const v1, 0x7f0901d7

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->H:Landroid/widget/ImageView;

    const v1, 0x7f090140

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    move-object/from16 v36, v1

    const v1, 0x7f0903f6

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v37, v1

    const v1, 0x7f0901cd

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->I:Landroid/widget/ImageView;

    const v1, 0x7f09014e

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    move-object/from16 v38, v1

    const v1, 0x7f090417

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v39, v1

    const v1, 0x7f0901da

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->J:Landroid/widget/ImageView;

    const v1, 0x7f09014b

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    move-object/from16 v40, v1

    const v1, 0x7f090410

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v41, v1

    const v1, 0x7f0901d9

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->K:Landroid/widget/ImageView;

    const v1, 0x7f090151

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    move-object/from16 v42, v1

    const v1, 0x7f09042d

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v43, v1

    const v1, 0x7f0901dd

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->L:Landroid/widget/ImageView;

    const v1, 0x7f090144

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    move-object/from16 v44, v1

    const v1, 0x7f090405

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v45, v1

    const v1, 0x7f0901d6

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->M:Landroid/widget/ImageView;

    const v1, 0x7f09013a

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    move-object/from16 v46, v1

    const v1, 0x7f0903d0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v47, v1

    const v1, 0x7f0901be

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->N:Landroid/widget/ImageView;

    const v1, 0x7f09014f

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    move-object/from16 v48, v1

    const v1, 0x7f090418

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v49, v1

    const v1, 0x7f0901db

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->O:Landroid/widget/ImageView;

    const v1, 0x7f09015d

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    move-object/from16 v50, v1

    const v1, 0x7f09047f

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v51, v1

    const v1, 0x7f0901fc

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->P:Landroid/widget/ImageView;

    const v1, 0x7f090160

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    move-object/from16 v52, v1

    const v1, 0x7f09048d

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v53, v1

    const v1, 0x7f0901fe

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->Q:Landroid/widget/ImageView;

    const v1, 0x7f09012c

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    move-object/from16 v54, v1

    const v1, 0x7f0903a2

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v55, v1

    const v1, 0x7f0901b7

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->R:Landroid/widget/ImageView;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v2, v31

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v2, v33

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v2, v35

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v2, v37

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v2, v39

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v2, v41

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v2, v43

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v2, v45

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v2, v47

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v2, v49

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v2, v51

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v2, v53

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v2, v55

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v1, v29

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v3, v27

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v5, v25

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v7, v23

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v9, v21

    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v11, v19

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v13, v17

    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v15, v16

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v13, v18

    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v11, v20

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v9, v22

    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v7, v24

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v5, v26

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v3, v28

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v1, v30

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v1, v32

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v1, v34

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v1, v36

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v1, v38

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v1, v40

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v1, v42

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v1, v44

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v1, v46

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v1, v48

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v1, v50

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v1, v52

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v1, v54

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    sput-boolean v0, Lcom/callerid/block/util/t0;->a:Z

    const-string p1, "vi"

    invoke-virtual {p0, p1}, Lcom/callerid/block/main/BaseActivity;->O(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    const-string v0, "vi"

    goto :goto_0

    :sswitch_1
    sput-boolean v0, Lcom/callerid/block/util/t0;->a:Z

    const-string p1, "in"

    invoke-virtual {p0, p1}, Lcom/callerid/block/main/BaseActivity;->O(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    const-string v0, "in"

    goto :goto_0

    :sswitch_2
    sput-boolean v0, Lcom/callerid/block/util/t0;->a:Z

    const-string p1, "hi"

    invoke-virtual {p0, p1}, Lcom/callerid/block/main/BaseActivity;->O(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    const-string v0, "hi"

    goto :goto_0

    :sswitch_3
    sput-boolean v0, Lcom/callerid/block/util/t0;->a:Z

    const-string p1, "fr"

    invoke-virtual {p0, p1}, Lcom/callerid/block/main/BaseActivity;->O(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    const-string v0, "fr"

    goto :goto_0

    :sswitch_4
    sput-boolean v0, Lcom/callerid/block/util/t0;->a:Z

    const-string p1, "en"

    invoke-virtual {p0, p1}, Lcom/callerid/block/main/BaseActivity;->O(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    const-string v0, "en"

    :goto_0
    iput-object v0, p1, Lcom/callerid/block/main/EZCallApplication;->c:Ljava/lang/String;

    goto/16 :goto_2

    :sswitch_5
    sput-boolean v0, Lcom/callerid/block/util/t0;->a:Z

    const-string p1, "ar"

    goto/16 :goto_1

    :sswitch_6
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/callerid/block/start/SettingActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 p1, 0x7f010000

    const v0, 0x7f010001

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_3

    :sswitch_7
    sput-boolean v0, Lcom/callerid/block/util/t0;->a:Z

    const-string p1, "ur"

    goto/16 :goto_1

    :sswitch_8
    sput-boolean v0, Lcom/callerid/block/util/t0;->a:Z

    const-string p1, "tr"

    goto :goto_1

    :sswitch_9
    sput-boolean v0, Lcom/callerid/block/util/t0;->a:Z

    const-string p1, "th"

    goto :goto_1

    :sswitch_a
    sput-boolean v0, Lcom/callerid/block/util/t0;->a:Z

    const-string p1, "te"

    goto :goto_1

    :sswitch_b
    sput-boolean v0, Lcom/callerid/block/util/t0;->a:Z

    const-string p1, "ta"

    goto :goto_1

    :sswitch_c
    sput-boolean v0, Lcom/callerid/block/util/t0;->a:Z

    const-string p1, "ru"

    goto :goto_1

    :sswitch_d
    sput-boolean v0, Lcom/callerid/block/util/t0;->a:Z

    const-string p1, "pt"

    goto :goto_1

    :sswitch_e
    sput-boolean v0, Lcom/callerid/block/util/t0;->a:Z

    const-string p1, "pa"

    goto :goto_1

    :sswitch_f
    sput-boolean v0, Lcom/callerid/block/util/t0;->a:Z

    const-string p1, "ms"

    goto :goto_1

    :sswitch_10
    sput-boolean v0, Lcom/callerid/block/util/t0;->a:Z

    const-string p1, "mr"

    goto :goto_1

    :sswitch_11
    sput-boolean v0, Lcom/callerid/block/util/t0;->a:Z

    const-string p1, "ml"

    goto :goto_1

    :sswitch_12
    sput-boolean v0, Lcom/callerid/block/util/t0;->a:Z

    const-string p1, "kn"

    goto :goto_1

    :sswitch_13
    sput-boolean v0, Lcom/callerid/block/util/t0;->a:Z

    const-string p1, "iw"

    goto :goto_1

    :sswitch_14
    sput-boolean v0, Lcom/callerid/block/util/t0;->a:Z

    const-string p1, "it"

    goto :goto_1

    :sswitch_15
    sput-boolean v0, Lcom/callerid/block/util/t0;->a:Z

    const-string p1, "gu"

    goto :goto_1

    :sswitch_16
    sput-boolean v0, Lcom/callerid/block/util/t0;->a:Z

    const-string p1, "es"

    goto :goto_1

    :sswitch_17
    sput-boolean v0, Lcom/callerid/block/util/t0;->a:Z

    const-string p1, "de"

    goto :goto_1

    :sswitch_18
    sput-boolean v0, Lcom/callerid/block/util/t0;->a:Z

    const-string p1, "cs"

    goto :goto_1

    :sswitch_19
    sput-boolean v0, Lcom/callerid/block/util/t0;->a:Z

    const-string p1, "bn"

    goto :goto_1

    :sswitch_1a
    sput-boolean v0, Lcom/callerid/block/util/t0;->a:Z

    const-string p1, "am"

    :goto_1
    invoke-virtual {p0, p1}, Lcom/callerid/block/main/BaseActivity;->O(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    iput-object p1, v0, Lcom/callerid/block/main/EZCallApplication;->c:Ljava/lang/String;

    :goto_2
    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->R()V

    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09012c -> :sswitch_1a
        0x7f090134 -> :sswitch_19
        0x7f09013a -> :sswitch_18
        0x7f09013b -> :sswitch_17
        0x7f09013e -> :sswitch_16
        0x7f090140 -> :sswitch_15
        0x7f090143 -> :sswitch_14
        0x7f090144 -> :sswitch_13
        0x7f090148 -> :sswitch_12
        0x7f09014b -> :sswitch_11
        0x7f09014e -> :sswitch_10
        0x7f09014f -> :sswitch_f
        0x7f090151 -> :sswitch_e
        0x7f090152 -> :sswitch_d
        0x7f090154 -> :sswitch_c
        0x7f09015b -> :sswitch_b
        0x7f09015c -> :sswitch_a
        0x7f09015d -> :sswitch_9
        0x7f090160 -> :sswitch_8
        0x7f090161 -> :sswitch_7
        0x7f09017d -> :sswitch_6
        0x7f090185 -> :sswitch_5
        0x7f090188 -> :sswitch_4
        0x7f09018b -> :sswitch_3
        0x7f09018c -> :sswitch_2
        0x7f09018d -> :sswitch_1
        0x7f090191 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/callerid/block/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003a

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/t0;->P(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_0
    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->S()V

    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;->Q()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lcom/callerid/block/start/SettingActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 p1, 0x7f010000

    const p2, 0x7f010001

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/callerid/block/main/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/callerid/block/main/BaseActivity;->onResume()V

    return-void
.end method
