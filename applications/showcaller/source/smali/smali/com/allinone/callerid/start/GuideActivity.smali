.class public Lcom/allinone/callerid/start/GuideActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "GuideActivity.java"


# instance fields
.field private A:Lcom/allinone/callerid/util/w;

.field private B:Landroidx/appcompat/app/a;

.field private final u:Ljava/lang/String;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/graphics/Typeface;

.field private x:Z

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/model/EZCountryCode;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lcom/allinone/callerid/model/EZCountryCode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "GuideActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->u:Ljava/lang/String;

    return-void
.end method

.method static synthetic X(Lcom/allinone/callerid/start/GuideActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/start/GuideActivity;->o0(Z)V

    return-void
.end method

.method static synthetic Y(Lcom/allinone/callerid/start/GuideActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/start/GuideActivity;->p0()V

    return-void
.end method

.method static synthetic Z(Lcom/allinone/callerid/start/GuideActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/start/GuideActivity;->l0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a0(Lcom/allinone/callerid/start/GuideActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->W(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b0(Lcom/allinone/callerid/start/GuideActivity;)Landroidx/appcompat/app/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/start/GuideActivity;->B:Landroidx/appcompat/app/a;

    return-object p0
.end method

.method static synthetic c0(Lcom/allinone/callerid/start/GuideActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/start/GuideActivity;->x:Z

    return p0
.end method

.method static synthetic d0(Lcom/allinone/callerid/start/GuideActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/start/GuideActivity;->x:Z

    return p1
.end method

.method static synthetic e0(Lcom/allinone/callerid/start/GuideActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/GuideActivity;->y:Ljava/util/List;

    return-object p1
.end method

.method static synthetic f0(Lcom/allinone/callerid/start/GuideActivity;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/start/GuideActivity;->k0()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g0(Lcom/allinone/callerid/start/GuideActivity;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/start/GuideActivity;->j0()I

    move-result p0

    return p0
.end method

.method static synthetic h0(Lcom/allinone/callerid/start/GuideActivity;)Lcom/allinone/callerid/model/EZCountryCode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/start/GuideActivity;->z:Lcom/allinone/callerid/model/EZCountryCode;

    return-object p0
.end method

.method private i0()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/s;->a()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/j1/a;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    const-class v1, Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 5
    :cond_0
    const-class v1, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private j0()I
    .locals 13

    const/4 v0, 0x2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/p;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2
    sget-boolean v2, Lcom/allinone/callerid/util/c0;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "country"

    if-eqz v2, :cond_0

    .line 3
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "countryISO="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    const-string v2, "    tempISO:"

    const-string v4, "countryISO:"

    const/4 v5, 0x1

    const-string v6, "/"

    const-string v7, ""

    const/4 v8, 0x0

    if-eqz v1, :cond_5

    .line 4
    :try_start_2
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v7, p0, Lcom/allinone/callerid/start/GuideActivity;->y:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 6
    check-cast v9, Lcom/allinone/callerid/model/EZCountryCode;

    .line 7
    invoke-virtual {v9}, Lcom/allinone/callerid/model/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v8

    .line 8
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 9
    sget-boolean v6, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v6, :cond_3

    .line 10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_3
    iput-object v9, p0, Lcom/allinone/callerid/start/GuideActivity;->z:Lcom/allinone/callerid/model/EZCountryCode;

    return v5

    :cond_4
    return v0

    .line 12
    :cond_5
    :goto_0
    invoke-static {}, Lcom/allinone/callerid/util/h1;->E()Ljava/lang/String;

    move-result-object v1

    .line 13
    sget-boolean v9, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v9, :cond_6

    .line 14
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "country="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v1, :cond_b

    .line 15
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_1

    .line 16
    :cond_7
    iget-object v7, p0, Lcom/allinone/callerid/start/GuideActivity;->y:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 17
    check-cast v9, Lcom/allinone/callerid/model/EZCountryCode;

    .line 18
    invoke-virtual {v9}, Lcom/allinone/callerid/model/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v8

    .line 19
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 20
    sget-boolean v6, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v6, :cond_9

    .line 21
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_9
    iput-object v9, p0, Lcom/allinone/callerid/start/GuideActivity;->z:Lcom/allinone/callerid/model/EZCountryCode;

    return v5

    :cond_a
    return v0

    .line 23
    :cond_b
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/allinone/callerid/util/h1;->K(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_10

    .line 24
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_2

    .line 25
    :cond_c
    iget-object v7, p0, Lcom/allinone/callerid/start/GuideActivity;->y:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 26
    check-cast v10, Lcom/allinone/callerid/model/EZCountryCode;

    .line 27
    invoke-virtual {v10}, Lcom/allinone/callerid/model/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v8

    .line 28
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 29
    sget-boolean v6, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v6, :cond_e

    .line 30
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_e
    iput-object v10, p0, Lcom/allinone/callerid/start/GuideActivity;->z:Lcom/allinone/callerid/model/EZCountryCode;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v5

    :cond_f
    return v0

    :cond_10
    :goto_2
    return v8

    :catch_0
    move-exception v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private k0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/model/EZCountryCode;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/allinone/callerid/util/p;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private l0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "English"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "en"

    goto/16 :goto_0

    :cond_0
    const-string v0, "\u0939\u093f\u0928\u094d\u0926\u0940"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "hi"

    goto/16 :goto_0

    :cond_1
    const-string v0, "\u09ac\u09be\u0982\u09b2\u09be \u09ad\u09be\u09b7\u09be"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "bn"

    goto/16 :goto_0

    :cond_2
    const-string v0, "\u0641\u0627\u0631\u0633\u06cc"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "fa"

    goto/16 :goto_0

    :cond_3
    const-string v0, "\u0440\u0443\u0441\u0441\u043a\u0438\u0439"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "ru"

    goto/16 :goto_0

    :cond_4
    const-string v0, "T\u00fcrk"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "tr"

    goto/16 :goto_0

    :cond_5
    const-string v0, "Indonesia"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "in"

    goto/16 :goto_0

    :cond_6
    const-string v0, "Melayu"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "ms"

    goto/16 :goto_0

    :cond_7
    const-string v0, "\u7b80\u4f53\u4e2d\u6587"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "zh"

    goto/16 :goto_0

    :cond_8
    const-string v0, "\u0627\u0644\u0639\u0631\u0628\u064a\u0629"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, "ar"

    goto/16 :goto_0

    :cond_9
    const-string v0, "Espanol"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p1, "es"

    goto/16 :goto_0

    :cond_a
    const-string v0, "Portugu\u00eas"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p1, "pt"

    goto/16 :goto_0

    :cond_b
    const-string v0, "\u0e20\u0e32\u0e29\u0e32\u0e44\u0e17\u0e22"

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "th"

    goto/16 :goto_0

    :cond_c
    const-string v0, "\u05e2\u05b4\u05d1\u05b0\u05e8\u05b4\u05d9\u05ea"

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p1, "iw"

    goto/16 :goto_0

    :cond_d
    const-string v0, "Deutsch"

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p1, "de"

    goto/16 :goto_0

    :cond_e
    const-string v0, "\u7e41\u4f53\u4e2d\u6587"

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p1, "zh-TW"

    goto :goto_0

    :cond_f
    const-string v0, "Franc\u0327ais"

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p1, "fr"

    goto :goto_0

    :cond_10
    const-string v0, "\ud55c\uad6d\uc5b4"

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p1, "ko"

    goto :goto_0

    :cond_11
    const-string v0, "Ti\u1ebfng Vi\u1ec7t"

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p1, "vi"

    goto :goto_0

    :cond_12
    const-string v0, "\u049b\u0430\u0437\u0430\u049b \u0442\u0456\u043b\u0456"

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string p1, "kk"

    goto :goto_0

    :cond_13
    const-string v0, "Italiano"

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string p1, "it"

    goto :goto_0

    :cond_14
    const-string v0, "\u0395\u03bb\u03bb\u03b7\u03bd\u03b9\u03ba\u03ac"

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string p1, "el"

    goto :goto_0

    :cond_15
    const-string v0, "\u09ac\u0c24\u0c46\u0c32\u0c41\u0c17\u0c41"

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p1, "te"

    goto :goto_0

    :cond_16
    const-string v0, "\u0627\u0631\u062f\u0648"

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    const-string p1, "ur"

    goto :goto_0

    :cond_17
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private m0()V
    .locals 13

    const-string v0, ""

    const v1, 0x7f09074c

    .line 1
    :try_start_0
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090709

    .line 2
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09074d

    .line 3
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09060f

    .line 4
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f09062c

    .line 5
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0904d0

    .line 6
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    const v7, 0x7f09063d

    .line 7
    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/allinone/callerid/start/GuideActivity;->v:Landroid/widget/TextView;

    const v7, 0x7f09022f

    .line 8
    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    const v8, 0x7f0907ec

    .line 9
    invoke-virtual {p0, v8}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/allinone/callerid/main/CustomViewPager;

    const v9, 0x7f0907ed

    .line 10
    invoke-virtual {p0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/allinone/callerid/customview/CirclePageIndicator;

    .line 11
    new-instance v10, Lcom/allinone/callerid/b/n;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->A()Landroidx/fragment/app/FragmentManager;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/allinone/callerid/b/n;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 12
    new-instance v11, Lcom/allinone/callerid/g/f;

    invoke-direct {v11}, Lcom/allinone/callerid/g/f;-><init>()V

    invoke-virtual {v10, v11, v0}, Lcom/allinone/callerid/b/n;->y(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 13
    new-instance v11, Lcom/allinone/callerid/g/h;

    invoke-direct {v11}, Lcom/allinone/callerid/g/h;-><init>()V

    invoke-virtual {v10, v11, v0}, Lcom/allinone/callerid/b/n;->y(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 14
    new-instance v11, Lcom/allinone/callerid/g/g;

    invoke-direct {v11}, Lcom/allinone/callerid/g/g;-><init>()V

    invoke-virtual {v10, v11, v0}, Lcom/allinone/callerid/b/n;->y(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v8, v10}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    .line 16
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v10, 0x40800000    # 4.0f

    mul-float v10, v10, v0

    .line 17
    invoke-virtual {v9, v10}, Lcom/allinone/callerid/customview/CirclePageIndicator;->setRadius(F)V

    .line 18
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060123

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/allinone/callerid/customview/CirclePageIndicator;->setPageColor(I)V

    .line 19
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f06003a

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/allinone/callerid/customview/CirclePageIndicator;->setFillColor(I)V

    .line 20
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/allinone/callerid/customview/CirclePageIndicator;->setStrokeColor(I)V

    const/high16 v10, 0x41200000    # 10.0f

    mul-float v0, v0, v10

    .line 21
    invoke-virtual {v9, v0}, Lcom/allinone/callerid/customview/CirclePageIndicator;->setPaddind(F)V

    .line 22
    invoke-virtual {v9, v8}, Lcom/allinone/callerid/customview/CirclePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 23
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->w:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 24
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->w:Landroid/graphics/Typeface;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 25
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->w:Landroid/graphics/Typeface;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 26
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->w:Landroid/graphics/Typeface;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 27
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->w:Landroid/graphics/Typeface;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 28
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/start/GuideActivity;->w:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 29
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 30
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 31
    new-instance v0, Lcom/allinone/callerid/start/GuideActivity$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/start/GuideActivity$a;-><init>(Lcom/allinone/callerid/start/GuideActivity;)V

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    new-instance v0, Lcom/allinone/callerid/start/GuideActivity$b;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/start/GuideActivity$b;-><init>(Lcom/allinone/callerid/start/GuideActivity;)V

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    invoke-direct {p0}, Lcom/allinone/callerid/start/GuideActivity;->q0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private n0()V
    .locals 2

    .line 1
    new-instance v0, Lcom/allinone/callerid/util/w;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/util/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->A:Lcom/allinone/callerid/util/w;

    .line 2
    new-instance v1, Lcom/allinone/callerid/start/GuideActivity$e;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/start/GuideActivity$e;-><init>(Lcom/allinone/callerid/start/GuideActivity;)V

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/w;->b(Lcom/allinone/callerid/util/w$b;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->A:Lcom/allinone/callerid/util/w;

    invoke-virtual {v0}, Lcom/allinone/callerid/util/w;->c()V

    return-void
.end method

.method private o0(Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    const-class v1, Lcom/allinone/callerid/mvc/controller/permission/RequestPermissionActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "isShowDefault"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/high16 p1, 0x7f010000

    const v0, 0x7f010001

    .line 5
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private p0()V
    .locals 29

    move-object/from16 v0, p0

    .line 1
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c013d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090580

    .line 2
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 3
    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double v4, v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v5, "English"

    const-string v6, "Deutsch"

    const-string v7, "Espanol"

    const-string v8, "Portugu\u00eas"

    const-string v9, "Indonesia"

    const-string v10, "Melayu"

    const-string v11, "\u0939\u093f\u0928\u094d\u0926\u0940"

    const-string v12, "\u09ac\u0c24\u0c46\u0c32\u0c41\u0c17\u0c41"

    const-string v13, "\u05e2\u05b4\u05d1\u05b0\u05e8\u05b4\u05d9\u05ea"

    const-string v14, "\u0e20\u0e32\u0e29\u0e32\u0e44\u0e17\u0e22"

    const-string v15, "\u0627\u0644\u0639\u0631\u0628\u064a\u0629"

    const-string v16, "\u0440\u0443\u0441\u0441\u043a\u0438\u0439"

    const-string v17, "Franc\u0327ais"

    const-string v18, "T\u00fcrk"

    const-string v19, "\ud55c\uad6d\uc5b4"

    const-string v20, "\u09ac\u09be\u0982\u09b2\u09be \u09ad\u09be\u09b7\u09be"

    const-string v21, "\u0641\u0627\u0631\u0633\u06cc"

    const-string v22, "Ti\u1ebfng Vi\u1ec7t"

    const-string v23, "\u049b\u0430\u0437\u0430\u049b \u0442\u0456\u043b\u0456"

    const-string v24, "Italiano"

    const-string v25, "\u0395\u03bb\u03bb\u03b7\u03bd\u03b9\u03ba\u03ac"

    const-string v26, "\u0627\u0631\u062f\u0648"

    const-string v27, "\u7b80\u4f53\u4e2d\u6587"

    const-string v28, "\u7e41\u4f53\u4e2d\u6587"

    .line 6
    filled-new-array/range {v5 .. v28}, [Ljava/lang/String;

    move-result-object v3

    .line 7
    new-instance v4, Lcom/allinone/callerid/b/x;

    invoke-direct {v4, v0, v3, v2}, Lcom/allinone/callerid/b/x;-><init>(Landroid/content/Context;[Ljava/lang/String;Landroid/widget/ListView;)V

    .line 8
    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 9
    new-instance v4, Lcom/allinone/callerid/start/GuideActivity$c;

    invoke-direct {v4, v0, v3}, Lcom/allinone/callerid/start/GuideActivity$c;-><init>(Lcom/allinone/callerid/start/GuideActivity;[Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 10
    new-instance v2, Landroidx/appcompat/app/a$a;

    invoke-direct {v2, v0}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1000c9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/a$a;->h(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$a;

    move-result-object v2

    .line 12
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/a$a;->r(Landroid/view/View;)Landroidx/appcompat/app/a$a;

    move-result-object v1

    const/4 v2, 0x1

    .line 13
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/a$a;->d(Z)Landroidx/appcompat/app/a$a;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroidx/appcompat/app/a$a;->s()Landroidx/appcompat/app/a;

    move-result-object v1

    iput-object v1, v0, Lcom/allinone/callerid/start/GuideActivity;->B:Landroidx/appcompat/app/a;

    return-void
.end method

.method private q0()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/main/EZCallApplication;->h:Ljava/lang/String;

    const-string v1, "en"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "English"

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "en_GB"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "en_CA"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    const-string v1, "hi"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->v:Landroid/widget/TextView;

    const-string v1, "\u0939\u093f\u0928\u094d\u0926\u0940"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "bn"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->v:Landroid/widget/TextView;

    const-string v1, "\u09ac\u09be\u0982\u09b2\u09be \u09ad\u09be\u09b7\u09be"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "fa"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->v:Landroid/widget/TextView;

    const-string v1, "\u0641\u0627\u0631\u0633\u06cc"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "ru"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 15
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->v:Landroid/widget/TextView;

    const-string v1, "\u0440\u0443\u0441\u0441\u043a\u0438\u0439"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "tr"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->v:Landroid/widget/TextView;

    const-string v1, "T\u00fcrk"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "in"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 19
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->v:Landroid/widget/TextView;

    const-string v1, "Indonesia"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "ms"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 21
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->v:Landroid/widget/TextView;

    const-string v1, "Melayu"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "zh"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 23
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->v:Landroid/widget/TextView;

    const-string v1, "\u7b80\u4f53\u4e2d\u6587"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_a
    const-string v1, "ar"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 25
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->v:Landroid/widget/TextView;

    const-string v1, "\u0627\u0644\u0639\u0631\u0628\u064a\u0629"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_b
    const-string v1, "es"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 27
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->v:Landroid/widget/TextView;

    const-string v1, "Espanol"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_c
    const-string v1, "pt"

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 29
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->v:Landroid/widget/TextView;

    const-string v1, "Portugu\u00eas"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_d
    const-string v1, "th"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 31
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->v:Landroid/widget/TextView;

    const-string v1, "\u0e20\u0e32\u0e29\u0e32\u0e44\u0e17\u0e22"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_e
    const-string v1, "iw"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 33
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->v:Landroid/widget/TextView;

    const-string v1, "\u05e2\u05b4\u05d1\u05b0\u05e8\u05b4\u05d9\u05ea"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_f
    const-string v1, "de"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 35
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->v:Landroid/widget/TextView;

    const-string v1, "Deutsch"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_10
    const-string v1, "zh-TW"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 37
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->v:Landroid/widget/TextView;

    const-string v1, "\u7e41\u4f53\u4e2d\u6587"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_11
    const-string v1, "fr"

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 39
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->v:Landroid/widget/TextView;

    const-string v1, "Franc\u0327ais"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_12
    const-string v1, "ko"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 41
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->v:Landroid/widget/TextView;

    const-string v1, "\ud55c\uad6d\uc5b4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_13
    const-string v1, "vi"

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 43
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->v:Landroid/widget/TextView;

    const-string v1, "Ti\u1ebfng Vi\u1ec7t"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_14
    const-string v1, "kk"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 45
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->v:Landroid/widget/TextView;

    const-string v1, "\u049b\u0430\u0437\u0430\u049b \u0442\u0456\u043b\u0456"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_15
    const-string v1, "it"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 47
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->v:Landroid/widget/TextView;

    const-string v1, "Italiano"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_16
    const-string v1, "el"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 49
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->v:Landroid/widget/TextView;

    const-string v1, "\u0395\u03bb\u03bb\u03b7\u03bd\u03b9\u03ba\u03ac"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_17
    const-string v1, "te"

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 51
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->v:Landroid/widget/TextView;

    const-string v1, "\u09ac\u0c24\u0c46\u0c32\u0c41\u0c17\u0c41"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_18
    const-string v1, "ur"

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 53
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->v:Landroid/widget/TextView;

    const-string v1, "\u0627\u0631\u062f\u0648"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_19
    :goto_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x3e7

    if-ne p1, p2, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/j1/a;->i(Landroid/content/Context;)Z

    move-result p1

    const-string p2, "default_dialer"

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/j1/a;->e(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/j1/a;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/allinone/callerid/start/GuideActivity;->i0()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p3}, Lcom/allinone/callerid/start/GuideActivity;->o0(Z)V

    .line 6
    :goto_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string p3, "first_request_default_dialer_enabled"

    invoke-virtual {p1, p3}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 7
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_2

    const-string p1, "isEnable"

    .line 8
    invoke-static {p2, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-direct {p0, p3}, Lcom/allinone/callerid/start/GuideActivity;->o0(Z)V

    .line 10
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_2

    const-string p1, "notEnable"

    .line 11
    invoke-static {p2, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const v0, 0x7f0c00d9

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->w:Landroid/graphics/Typeface;

    .line 5
    invoke-direct {p0}, Lcom/allinone/callerid/start/GuideActivity;->m0()V

    .line 6
    iput-boolean p1, p0, Lcom/allinone/callerid/start/GuideActivity;->x:Z

    .line 7
    invoke-direct {p0}, Lcom/allinone/callerid/start/GuideActivity;->n0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity;->A:Lcom/allinone/callerid/util/w;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/allinone/callerid/util/w;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 1
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->B(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 2
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "first_enter"

    const-string v0, "keycode_back"

    .line 3
    invoke-static {p1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "guide1_key_back"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/j1/a;->e(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/j1/a;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 7
    const-class v0, Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/high16 p1, 0x7f010000

    const v0, 0x7f010001

    .line 9
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 11
    :cond_1
    invoke-direct {p0, p2}, Lcom/allinone/callerid/start/GuideActivity;->o0(Z)V

    :cond_2
    :goto_0
    return p2

    .line 12
    :cond_3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcom/allinone/callerid/start/GuideActivity;->x:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/allinone/callerid/util/h1;->G0(Landroid/app/Activity;)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/start/GuideActivity$d;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/start/GuideActivity$d;-><init>(Lcom/allinone/callerid/start/GuideActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
