.class public Lcom/allinone/callerid/main/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public V()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/a1;->z2()I

    move-result v0

    const v1, 0x7f110115

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f1100ef

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    :goto_0
    return-void
.end method

.method protected W(Ljava/lang/String;)V
    .locals 25

    move-object/from16 v0, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 3
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "vi"

    const-string v6, "ur"

    const-string v7, "tr"

    const-string v8, "th"

    const-string v9, "te"

    const-string v10, "ru"

    const-string v11, "pt"

    const-string v12, "ms"

    const-string v13, "kk"

    const-string v14, "iw"

    const-string v15, "it"

    move-object/from16 v16, v1

    const-string v1, "in"

    move-object/from16 v17, v3

    const-string v3, "hi"

    move-object/from16 v18, v2

    const-string v2, "fa"

    move-object/from16 v19, v2

    const-string v2, "es"

    move-object/from16 v20, v2

    const-string v2, "el"

    move-object/from16 v21, v2

    const-string v2, "bn"

    move-object/from16 v22, v2

    const-string v2, "ar"

    move-object/from16 v23, v2

    const/16 v24, -0x1

    sparse-switch v4, :sswitch_data_0

    :goto_0
    move-object/from16 v4, v19

    :goto_1
    move-object/from16 v2, v23

    goto/16 :goto_6

    :sswitch_0
    const-string v4, "zh-TW"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v24, 0x19

    goto :goto_0

    :sswitch_1
    const-string v4, "en_GB"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/16 v24, 0x18

    goto :goto_0

    :sswitch_2
    const-string v4, "en_CA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/16 v24, 0x17

    goto :goto_0

    :sswitch_3
    const-string v4, "zh"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const/16 v24, 0x16

    goto :goto_0

    :sswitch_4
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    const/16 v24, 0x15

    goto :goto_0

    :sswitch_5
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    const/16 v24, 0x14

    goto :goto_0

    :sswitch_6
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    const/16 v24, 0x13

    goto :goto_0

    :sswitch_7
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_0

    :cond_7
    const/16 v24, 0x12

    goto :goto_0

    :sswitch_8
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_0

    :cond_8
    move-object/from16 v4, v19

    move-object/from16 v2, v23

    const/16 v24, 0x11

    goto/16 :goto_6

    :sswitch_9
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_0

    :cond_9
    const/16 v24, 0x10

    goto :goto_0

    :sswitch_a
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_0

    :cond_a
    const/16 v24, 0xf

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v24, 0xe

    goto/16 :goto_0

    :sswitch_c
    const-string v4, "ko"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v24, 0xd

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v24, 0xc

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v24, 0xb

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v24, 0xa

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v24, 0x9

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v24, 0x8

    goto/16 :goto_0

    :sswitch_12
    const-string v4, "fr"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v24, 0x7

    goto/16 :goto_0

    :sswitch_13
    move-object/from16 v4, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_13

    goto :goto_4

    :cond_13
    const/16 v24, 0x6

    goto/16 :goto_1

    :sswitch_14
    move-object/from16 v4, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_14

    goto :goto_2

    :cond_14
    const/16 v24, 0x5

    :goto_2
    move-object/from16 v20, v2

    goto/16 :goto_1

    :sswitch_15
    move-object/from16 v4, v19

    const-string v2, "en"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_4

    :cond_15
    const/16 v24, 0x4

    goto/16 :goto_1

    :sswitch_16
    move-object/from16 v4, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_16

    goto :goto_3

    :cond_16
    const/16 v24, 0x3

    :goto_3
    move-object/from16 v21, v2

    goto/16 :goto_1

    :sswitch_17
    move-object/from16 v4, v19

    const-string v2, "de"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    :goto_4
    goto/16 :goto_1

    :cond_17
    const/16 v24, 0x2

    goto/16 :goto_1

    :sswitch_18
    move-object/from16 v4, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_18

    goto :goto_5

    :cond_18
    const/16 v24, 0x1

    :goto_5
    move-object/from16 v22, v2

    goto/16 :goto_1

    :sswitch_19
    move-object/from16 v4, v19

    move-object/from16 v2, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_19

    goto :goto_6

    :cond_19
    const/16 v24, 0x0

    :goto_6
    packed-switch v24, :pswitch_data_0

    move-object/from16 v3, v16

    move-object/from16 v2, v17

    move-object/from16 v1, v18

    goto/16 :goto_9

    .line 5
    :pswitch_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1a

    .line 6
    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    move-object/from16 v4, v18

    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_7

    :cond_1a
    move-object/from16 v4, v18

    .line 7
    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    iput-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_7

    :pswitch_1
    move-object/from16 v4, v18

    const/16 v2, 0x11

    .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_1b

    .line 9
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_7

    .line 10
    :cond_1b
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    iput-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :goto_7
    move-object v1, v4

    goto/16 :goto_8

    :pswitch_2
    move-object/from16 v4, v18

    const/16 v2, 0x11

    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_1c

    .line 12
    sget-object v1, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_7

    .line 13
    :cond_1c
    sget-object v1, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    iput-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_7

    :pswitch_3
    move-object/from16 v4, v18

    const/16 v2, 0x11

    .line 14
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_1d

    .line 15
    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_7

    .line 16
    :cond_1d
    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    iput-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_7

    :pswitch_4
    move-object/from16 v4, v18

    const/16 v2, 0x11

    .line 17
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_1e

    .line 18
    new-instance v1, Ljava/util/Locale;

    const-string v2, "VI"

    invoke-direct {v1, v5, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_7

    .line 19
    :cond_1e
    new-instance v1, Ljava/util/Locale;

    const-string v2, "VI"

    invoke-direct {v1, v5, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_7

    :pswitch_5
    move-object/from16 v4, v18

    .line 20
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1f

    .line 21
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_7

    .line 22
    :cond_1f
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_7

    :pswitch_6
    move-object/from16 v4, v18

    const/16 v2, 0x11

    .line 23
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_20

    .line 24
    new-instance v1, Ljava/util/Locale;

    const-string v2, "TR"

    invoke-direct {v1, v7, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_7

    .line 25
    :cond_20
    new-instance v1, Ljava/util/Locale;

    const-string v2, "TR"

    invoke-direct {v1, v7, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_7

    :pswitch_7
    move-object/from16 v4, v18

    .line 26
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_21

    .line 27
    new-instance v1, Ljava/util/Locale;

    const-string v2, "TH"

    invoke-direct {v1, v8, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto/16 :goto_7

    .line 28
    :cond_21
    new-instance v1, Ljava/util/Locale;

    const-string v2, "TH"

    invoke-direct {v1, v8, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto/16 :goto_7

    :pswitch_8
    move-object/from16 v4, v18

    .line 29
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_22

    .line 30
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto/16 :goto_7

    .line 31
    :cond_22
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto/16 :goto_7

    :pswitch_9
    move-object/from16 v4, v18

    const/16 v2, 0x11

    .line 32
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_23

    .line 33
    new-instance v1, Ljava/util/Locale;

    const-string v2, "RU"

    invoke-direct {v1, v10, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto/16 :goto_7

    .line 34
    :cond_23
    new-instance v1, Ljava/util/Locale;

    const-string v2, "RU"

    invoke-direct {v1, v10, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto/16 :goto_7

    :pswitch_a
    move-object/from16 v4, v18

    .line 35
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_24

    .line 36
    new-instance v1, Ljava/util/Locale;

    const-string v2, "PT"

    invoke-direct {v1, v11, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto/16 :goto_7

    .line 37
    :cond_24
    new-instance v1, Ljava/util/Locale;

    const-string v2, "PT"

    invoke-direct {v1, v11, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto/16 :goto_7

    :pswitch_b
    move-object/from16 v4, v18

    .line 38
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_25

    .line 39
    new-instance v1, Ljava/util/Locale;

    const-string v2, "MY"

    invoke-direct {v1, v12, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto/16 :goto_7

    .line 40
    :cond_25
    new-instance v1, Ljava/util/Locale;

    const-string v2, "MY"

    invoke-direct {v1, v12, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto/16 :goto_7

    :pswitch_c
    move-object/from16 v4, v18

    .line 41
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_26

    .line 42
    sget-object v1, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto/16 :goto_7

    .line 43
    :cond_26
    sget-object v1, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    iput-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto/16 :goto_7

    :pswitch_d
    move-object/from16 v4, v18

    const/16 v2, 0x11

    .line 44
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_27

    .line 45
    new-instance v1, Ljava/util/Locale;

    const-string v2, "KK"

    invoke-direct {v1, v13, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto/16 :goto_7

    .line 46
    :cond_27
    new-instance v1, Ljava/util/Locale;

    const-string v2, "KK"

    invoke-direct {v1, v13, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto/16 :goto_7

    :pswitch_e
    move-object/from16 v4, v18

    .line 47
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_28

    .line 48
    new-instance v1, Ljava/util/Locale;

    const-string v2, "IL"

    invoke-direct {v1, v14, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto/16 :goto_7

    .line 49
    :cond_28
    new-instance v1, Ljava/util/Locale;

    const-string v2, "IL"

    invoke-direct {v1, v14, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto/16 :goto_7

    :pswitch_f
    move-object/from16 v4, v18

    .line 50
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_29

    .line 51
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v15}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto/16 :goto_7

    .line 52
    :cond_29
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v15}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto/16 :goto_7

    :pswitch_10
    move-object/from16 v4, v18

    const/16 v2, 0x11

    .line 53
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_2a

    .line 54
    new-instance v2, Ljava/util/Locale;

    const-string v3, "ID"

    invoke-direct {v2, v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto/16 :goto_7

    .line 55
    :cond_2a
    new-instance v2, Ljava/util/Locale;

    const-string v3, "ID"

    invoke-direct {v2, v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto/16 :goto_7

    :pswitch_11
    move-object/from16 v4, v18

    .line 56
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "IN"

    const/16 v5, 0x11

    if-lt v1, v5, :cond_2b

    .line 57
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v3, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto/16 :goto_7

    .line 58
    :cond_2b
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v3, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto/16 :goto_7

    :pswitch_12
    move-object/from16 v4, v18

    const/16 v5, 0x11

    .line 59
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_2c

    .line 60
    sget-object v1, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto/16 :goto_7

    .line 61
    :cond_2c
    sget-object v1, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    iput-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto/16 :goto_7

    :pswitch_13
    move-object/from16 v1, v18

    const/16 v5, 0x11

    .line 62
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "IR"

    if-lt v2, v5, :cond_2d

    .line 63
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v4, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_8

    .line 64
    :cond_2d
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v4, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_8

    :pswitch_14
    move-object/from16 v1, v18

    const/16 v5, 0x11

    .line 65
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v5, :cond_2e

    .line 66
    new-instance v2, Ljava/util/Locale;

    const-string v3, "ES"

    move-object/from16 v4, v20

    invoke-direct {v2, v4, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_8

    :cond_2e
    move-object/from16 v4, v20

    .line 67
    new-instance v2, Ljava/util/Locale;

    const-string v3, "ES"

    invoke-direct {v2, v4, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_8

    :pswitch_15
    move-object/from16 v1, v18

    .line 68
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_2f

    .line 69
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_8

    .line 70
    :cond_2f
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iput-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :goto_8
    move-object/from16 v3, v16

    move-object/from16 v2, v17

    goto/16 :goto_9

    :pswitch_16
    move-object/from16 v1, v18

    const/16 v3, 0x11

    .line 71
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_30

    .line 72
    new-instance v2, Ljava/util/Locale;

    move-object/from16 v3, v21

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_8

    :cond_30
    move-object/from16 v3, v21

    .line 73
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_8

    :pswitch_17
    move-object/from16 v1, v18

    const/16 v3, 0x11

    .line 74
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_31

    .line 75
    sget-object v2, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_8

    .line 76
    :cond_31
    sget-object v2, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    iput-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_8

    :pswitch_18
    move-object/from16 v1, v18

    const/16 v3, 0x11

    .line 77
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v4, "BD"

    if-lt v2, v3, :cond_32

    .line 78
    new-instance v2, Ljava/util/Locale;

    move-object/from16 v3, v22

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_8

    :cond_32
    move-object/from16 v3, v22

    .line 79
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_8

    :pswitch_19
    move-object/from16 v1, v18

    const/16 v3, 0x11

    .line 80
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v3, :cond_33

    .line 81
    new-instance v3, Ljava/util/Locale;

    const-string v4, "IQ"

    invoke-direct {v3, v2, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_8

    .line 82
    :cond_33
    new-instance v3, Ljava/util/Locale;

    const-string v4, "IQ"

    invoke-direct {v3, v2, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_8

    .line 83
    :goto_9
    invoke-virtual {v3, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 84
    sget-boolean v1, Lcom/allinone/callerid/util/h1;->a:Z

    if-eqz v1, :cond_34

    .line 85
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v1

    iget-object v1, v1, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/allinone/callerid/main/BaseActivity$a;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v0}, Lcom/allinone/callerid/main/BaseActivity$a;-><init>(Lcom/allinone/callerid/main/BaseActivity;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_a

    :cond_34
    move-object/from16 v3, p0

    :goto_a
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xc31 -> :sswitch_19
        0xc4c -> :sswitch_18
        0xc81 -> :sswitch_17
        0xca7 -> :sswitch_16
        0xca9 -> :sswitch_15
        0xcae -> :sswitch_14
        0xcbb -> :sswitch_13
        0xccc -> :sswitch_12
        0xd01 -> :sswitch_11
        0xd25 -> :sswitch_10
        0xd2b -> :sswitch_f
        0xd2e -> :sswitch_e
        0xd60 -> :sswitch_d
        0xd64 -> :sswitch_c
        0xda6 -> :sswitch_b
        0xe04 -> :sswitch_a
        0xe43 -> :sswitch_9
        0xe71 -> :sswitch_8
        0xe74 -> :sswitch_7
        0xe7e -> :sswitch_6
        0xe9d -> :sswitch_5
        0xeb3 -> :sswitch_4
        0xf2e -> :sswitch_3
        0x5c2b3b4 -> :sswitch_2
        0x5c2b431 -> :sswitch_1
        0x6e72d82 -> :sswitch_0
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

    .line 1
    invoke-virtual {p0}, Lcom/allinone/callerid/main/BaseActivity;->V()V

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    iget-object p1, p1, Lcom/allinone/callerid/main/EZCallApplication;->h:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->W(Ljava/lang/String;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method
