.class public Lcom/callerid/block/main/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public N()V
    .locals 3

    invoke-static {}, Lcom/callerid/block/util/n0;->B1()I

    move-result v0

    const v1, 0x7f110124

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f1100e4

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    :goto_1
    return-void
.end method

.method protected O(Ljava/lang/String;)V
    .locals 28

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "te"

    const-string v6, "ta"

    const-string v7, "ru"

    const-string v8, "pt"

    const-string v9, "pa"

    const-string v10, "ms"

    const-string v11, "mr"

    const-string v12, "ml"

    const-string v13, "kn"

    const-string v14, "iw"

    const-string v15, "it"

    move-object/from16 v16, v1

    const-string v1, "in"

    move-object/from16 v17, v3

    const-string v3, "hi"

    move-object/from16 v18, v2

    const-string v2, "gu"

    move-object/from16 v19, v2

    const-string v2, "fr"

    move-object/from16 v20, v2

    const-string v2, "es"

    move-object/from16 v21, v2

    const-string v2, "de"

    move-object/from16 v22, v2

    const-string v2, "cs"

    move-object/from16 v23, v2

    const-string v2, "bn"

    move-object/from16 v24, v2

    const-string v2, "ar"

    move-object/from16 v25, v2

    const-string v2, "am"

    move-object/from16 v26, v2

    const/16 v27, -0x1

    sparse-switch v4, :sswitch_data_0

    :goto_0
    move-object/from16 v4, v19

    :goto_1
    move-object/from16 v2, v26

    goto/16 :goto_9

    :sswitch_0
    const-string v4, "vi"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v27, 0x19

    goto :goto_0

    :sswitch_1
    const-string v4, "ur"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/16 v27, 0x18

    goto :goto_0

    :sswitch_2
    const-string v4, "tr"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/16 v27, 0x17

    goto :goto_0

    :sswitch_3
    const-string v4, "th"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const/16 v27, 0x16

    goto :goto_0

    :sswitch_4
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    const/16 v27, 0x15

    goto :goto_0

    :sswitch_5
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    const/16 v27, 0x14

    goto :goto_0

    :sswitch_6
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    const/16 v27, 0x13

    goto :goto_0

    :sswitch_7
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_0

    :cond_7
    const/16 v27, 0x12

    goto :goto_0

    :sswitch_8
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_0

    :cond_8
    move-object/from16 v4, v19

    move-object/from16 v2, v26

    const/16 v27, 0x11

    goto/16 :goto_9

    :sswitch_9
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_0

    :cond_9
    const/16 v27, 0x10

    goto :goto_0

    :sswitch_a
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_0

    :cond_a
    const/16 v27, 0xf

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v27, 0xe

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v27, 0xd

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v27, 0xc

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v27, 0xb

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v27, 0xa

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v27, 0x9

    goto/16 :goto_0

    :sswitch_11
    move-object/from16 v4, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_11

    goto :goto_4

    :cond_11
    const/16 v27, 0x8

    goto/16 :goto_1

    :sswitch_12
    move-object/from16 v4, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_12

    goto :goto_2

    :cond_12
    const/16 v27, 0x7

    :goto_2
    move-object/from16 v20, v2

    goto/16 :goto_1

    :sswitch_13
    move-object/from16 v4, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_13

    goto :goto_3

    :cond_13
    const/16 v27, 0x6

    :goto_3
    move-object/from16 v21, v2

    goto/16 :goto_1

    :sswitch_14
    move-object/from16 v4, v19

    const-string v2, "en"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    :goto_4
    goto/16 :goto_1

    :cond_14
    const/16 v27, 0x5

    goto/16 :goto_1

    :sswitch_15
    move-object/from16 v4, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_15

    goto :goto_5

    :cond_15
    const/16 v27, 0x4

    :goto_5
    move-object/from16 v22, v2

    goto/16 :goto_1

    :sswitch_16
    move-object/from16 v4, v19

    move-object/from16 v2, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_16

    goto :goto_6

    :cond_16
    const/16 v27, 0x3

    :goto_6
    move-object/from16 v23, v2

    goto/16 :goto_1

    :sswitch_17
    move-object/from16 v4, v19

    move-object/from16 v2, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_17

    goto :goto_7

    :cond_17
    const/16 v27, 0x2

    :goto_7
    move-object/from16 v24, v2

    goto/16 :goto_1

    :sswitch_18
    move-object/from16 v4, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_18

    goto :goto_8

    :cond_18
    const/16 v27, 0x1

    :goto_8
    move-object/from16 v25, v2

    goto/16 :goto_1

    :sswitch_19
    move-object/from16 v4, v19

    move-object/from16 v2, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_19

    goto :goto_9

    :cond_19
    const/16 v27, 0x0

    :goto_9
    packed-switch v27, :pswitch_data_0

    move-object/from16 v2, v16

    move-object/from16 v1, v17

    move-object/from16 v3, v18

    goto/16 :goto_e

    :pswitch_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1a

    new-instance v1, Ljava/util/Locale;

    const-string v2, "vi"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v18

    goto/16 :goto_a

    :cond_1a
    move-object/from16 v2, v18

    new-instance v1, Ljava/util/Locale;

    const-string v3, "vi"

    invoke-direct {v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_1
    move-object/from16 v2, v18

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v1, v3, :cond_1b

    new-instance v1, Ljava/util/Locale;

    const-string v3, "ur"

    invoke-direct {v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_1b
    new-instance v1, Ljava/util/Locale;

    const-string v3, "ur"

    invoke-direct {v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_2
    move-object/from16 v2, v18

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v1, v3, :cond_1c

    new-instance v1, Ljava/util/Locale;

    const-string v3, "tr"

    invoke-direct {v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_1c
    new-instance v1, Ljava/util/Locale;

    const-string v3, "tr"

    invoke-direct {v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_3
    move-object/from16 v2, v18

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v1, v3, :cond_1d

    new-instance v1, Ljava/util/Locale;

    const-string v3, "th"

    invoke-direct {v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_1d
    new-instance v1, Ljava/util/Locale;

    const-string v3, "th"

    invoke-direct {v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_4
    move-object/from16 v2, v18

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v1, v4, :cond_1e

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_1e
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_5
    move-object/from16 v2, v18

    const/16 v4, 0x11

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_1f

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_1f
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_6
    move-object/from16 v2, v18

    const/16 v4, 0x11

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_20

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_20
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_7
    move-object/from16 v2, v18

    const/16 v4, 0x11

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_21

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_21
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_8
    move-object/from16 v2, v18

    const/16 v4, 0x11

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_22

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_22
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_9
    move-object/from16 v2, v18

    const/16 v4, 0x11

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_23

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_23
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_a
    move-object/from16 v2, v18

    const/16 v4, 0x11

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_24

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_24
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_b
    move-object/from16 v2, v18

    const/16 v4, 0x11

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_25

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_25
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_c
    move-object/from16 v2, v18

    const/16 v4, 0x11

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_26

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v13}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_26
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v13}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_d
    move-object/from16 v2, v18

    const/16 v4, 0x11

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_27

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v14}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_27
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v14}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_e
    move-object/from16 v2, v18

    const/16 v4, 0x11

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_28

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v15}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_28
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v15}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_f
    move-object/from16 v2, v18

    const/16 v4, 0x11

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_29

    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto/16 :goto_c

    :cond_29
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto/16 :goto_c

    :pswitch_10
    move-object/from16 v2, v18

    const/16 v4, 0x11

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_2a

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :cond_2a
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :pswitch_11
    move-object/from16 v2, v18

    const/16 v1, 0x11

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_2b

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :cond_2b
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :pswitch_12
    move-object/from16 v2, v18

    const/16 v1, 0x11

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_2c

    new-instance v1, Ljava/util/Locale;

    move-object/from16 v3, v20

    invoke-direct {v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :cond_2c
    move-object/from16 v3, v20

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :pswitch_13
    move-object/from16 v2, v18

    const/16 v1, 0x11

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_2d

    new-instance v1, Ljava/util/Locale;

    move-object/from16 v3, v21

    invoke-direct {v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :cond_2d
    move-object/from16 v3, v21

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :pswitch_14
    move-object/from16 v2, v18

    const/16 v1, 0x11

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_2e

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    :goto_a
    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_c

    :cond_2e
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    :goto_b
    iput-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :goto_c
    move-object v3, v2

    :goto_d
    move-object/from16 v2, v16

    move-object/from16 v1, v17

    goto/16 :goto_e

    :pswitch_15
    move-object/from16 v2, v18

    const/16 v1, 0x11

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_2f

    new-instance v1, Ljava/util/Locale;

    move-object/from16 v3, v22

    invoke-direct {v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :cond_2f
    move-object/from16 v3, v22

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :pswitch_16
    move-object/from16 v2, v18

    const/16 v1, 0x11

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_30

    new-instance v1, Ljava/util/Locale;

    move-object/from16 v3, v23

    invoke-direct {v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :cond_30
    move-object/from16 v3, v23

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :pswitch_17
    move-object/from16 v2, v18

    const/16 v1, 0x11

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_31

    new-instance v1, Ljava/util/Locale;

    move-object/from16 v3, v24

    invoke-direct {v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :cond_31
    move-object/from16 v3, v24

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :pswitch_18
    move-object/from16 v2, v18

    const/16 v1, 0x11

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_32

    new-instance v1, Ljava/util/Locale;

    move-object/from16 v3, v25

    invoke-direct {v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :cond_32
    move-object/from16 v3, v25

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :pswitch_19
    move-object/from16 v3, v18

    const/16 v1, 0x11

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v1, :cond_33

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_d

    :cond_33
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_d

    :goto_e
    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    sget-boolean v1, Lcom/callerid/block/util/t0;->a:Z

    if-eqz v1, :cond_34

    invoke-static {}, Lcom/callerid/block/util/c0;->a()Lcom/callerid/block/util/c0;

    move-result-object v1

    iget-object v1, v1, Lcom/callerid/block/util/c0;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/callerid/block/main/BaseActivity$a;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v0}, Lcom/callerid/block/main/BaseActivity$a;-><init>(Lcom/callerid/block/main/BaseActivity;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_f

    :cond_34
    move-object/from16 v3, p0

    :goto_f
    return-void

    nop

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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Lcom/callerid/block/main/BaseActivity;->N()V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    iget-object p1, p1, Lcom/callerid/block/main/EZCallApplication;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/main/BaseActivity;->O(Ljava/lang/String;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method
