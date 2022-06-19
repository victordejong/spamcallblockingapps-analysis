.class public Lcom/callerid/block/start/StartActivity;
.super Lcom/callerid/block/main/BaseActivity;
.source ""


# instance fields
.field private s:Lcom/callerid/block/util/s;

.field private t:Z

.field private u:Z

.field private v:Landroid/widget/TextView;

.field private w:Lcom/rey/material/app/Dialog;

.field private x:Z

.field private y:Ljava/util/List;

.field private z:Lcom/callerid/block/bean/EZCountryCode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/main/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic Q(Lcom/callerid/block/start/StartActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/callerid/block/start/StartActivity;->u:Z

    return p0
.end method

.method static synthetic R(Lcom/callerid/block/start/StartActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/start/StartActivity;->Z()V

    return-void
.end method

.method static synthetic S(Lcom/callerid/block/start/StartActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/start/StartActivity;->a0()V

    return-void
.end method

.method static synthetic T(Lcom/callerid/block/start/StartActivity;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/callerid/block/main/BaseActivity;->O(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic U(Lcom/callerid/block/start/StartActivity;)Lcom/rey/material/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/StartActivity;->w:Lcom/rey/material/app/Dialog;

    return-object p0
.end method

.method private V()I
    .locals 14

    const-string v0, "country"

    const/4 v1, 0x2

    :try_start_0
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/callerid/block/util/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "countryISO="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    const-string v4, "tempISO:"

    const-string v5, "    "

    const-string v6, "countryISO:"

    const-string v7, "/"

    const-string v8, ""

    const/4 v9, 0x0

    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/callerid/block/start/StartActivity;->y:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/callerid/block/bean/EZCountryCode;

    invoke-virtual {v10}, Lcom/callerid/block/bean/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v9

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, p0, Lcom/callerid/block/start/StartActivity;->z:Lcom/callerid/block/bean/EZCountryCode;

    return v3

    :cond_2
    return v1

    :cond_3
    :goto_0
    invoke-static {}, Lcom/callerid/block/util/t0;->s()Ljava/lang/String;

    move-result-object v2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "country="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_7

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_1

    :cond_4
    iget-object v8, p0, Lcom/callerid/block/start/StartActivity;->y:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/callerid/block/bean/EZCountryCode;

    invoke-virtual {v10}, Lcom/callerid/block/bean/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v9

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, p0, Lcom/callerid/block/start/StartActivity;->z:Lcom/callerid/block/bean/EZCountryCode;

    return v3

    :cond_6
    return v1

    :cond_7
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/callerid/block/util/t0;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_2

    :cond_8
    iget-object v8, p0, Lcom/callerid/block/start/StartActivity;->y:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/callerid/block/bean/EZCountryCode;

    invoke-virtual {v11}, Lcom/callerid/block/bean/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v9

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v11, p0, Lcom/callerid/block/start/StartActivity;->z:Lcom/callerid/block/bean/EZCountryCode;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    :cond_a
    return v1

    :cond_b
    :goto_2
    return v9

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method private W()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {p0}, Lcom/callerid/block/util/j;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private X()V
    .locals 7

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v0

    const v1, 0x7f0903a4

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090136

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v3, 0x7f0903b1

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090433

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0903be

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0903bc

    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/callerid/block/start/StartActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/callerid/block/start/StartActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v0, Lcom/callerid/block/start/StartActivity$a;

    invoke-direct {v0, p0}, Lcom/callerid/block/start/StartActivity$a;-><init>(Lcom/callerid/block/start/StartActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/callerid/block/start/StartActivity;->v:Landroid/widget/TextView;

    new-instance v1, Lcom/callerid/block/start/StartActivity$b;

    invoke-direct {v1, p0}, Lcom/callerid/block/start/StartActivity$b;-><init>(Lcom/callerid/block/start/StartActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/start/StartActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    iget-object v0, p0, Lcom/callerid/block/start/StartActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-direct {p0}, Lcom/callerid/block/start/StartActivity;->b0()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->N(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {p0}, Lcom/android/boom/w;->a(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    return-void
.end method

.method private Y()V
    .locals 2

    new-instance v0, Lcom/callerid/block/util/s;

    invoke-direct {v0, p0}, Lcom/callerid/block/util/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/callerid/block/start/StartActivity;->s:Lcom/callerid/block/util/s;

    new-instance v1, Lcom/callerid/block/start/StartActivity$d;

    invoke-direct {v1, p0}, Lcom/callerid/block/start/StartActivity$d;-><init>(Lcom/callerid/block/start/StartActivity;)V

    invoke-virtual {v0, v1}, Lcom/callerid/block/util/s;->b(Lcom/callerid/block/util/s$b;)V

    iget-object v0, p0, Lcom/callerid/block/start/StartActivity;->s:Lcom/callerid/block/util/s;

    invoke-virtual {v0}, Lcom/callerid/block/util/s;->c()V

    return-void
.end method

.method private Z()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/callerid/block/start/PrivacyActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method private a0()V
    .locals 27

    move-object/from16 v0, p0

    new-instance v1, Lcom/rey/material/app/Dialog;

    const v2, 0x7f110159

    invoke-direct {v1, v0, v2}, Lcom/rey/material/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, v0, Lcom/callerid/block/start/StartActivity;->w:Lcom/rey/material/app/Dialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/rey/material/app/Dialog;->setCancelable(Z)V

    iget-object v1, v0, Lcom/callerid/block/start/StartActivity;->w:Lcom/rey/material/app/Dialog;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/rey/material/app/Dialog;->r0(Landroid/graphics/Typeface;)Lcom/rey/material/app/Dialog;

    iget-object v1, v0, Lcom/callerid/block/start/StartActivity;->w:Lcom/rey/material/app/Dialog;

    const v3, 0x7f0c00c2

    invoke-virtual {v1, v3}, Lcom/rey/material/app/Dialog;->setContentView(I)V

    iget-object v1, v0, Lcom/callerid/block/start/StartActivity;->w:Lcom/rey/material/app/Dialog;

    const v3, 0x7f10007c

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/rey/material/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/callerid/block/start/StartActivity;->w:Lcom/rey/material/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iget-object v1, v0, Lcom/callerid/block/start/StartActivity;->w:Lcom/rey/material/app/Dialog;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v1, v3, v4}, Lcom/rey/material/app/Dialog;->K(II)Lcom/rey/material/app/Dialog;

    iget-object v1, v0, Lcom/callerid/block/start/StartActivity;->w:Lcom/rey/material/app/Dialog;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/rey/material/app/Dialog;->x(I)Lcom/rey/material/app/Dialog;

    iget-object v1, v0, Lcom/callerid/block/start/StartActivity;->w:Lcom/rey/material/app/Dialog;

    const v4, 0x7f090342

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    const/16 v4, 0x17

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "English"

    aput-object v6, v5, v3

    const-string v6, "\u0939\u093f\u0928\u094d\u0926\u0940"

    aput-object v6, v5, v2

    const-string v6, "\u0ba4\u0bae\u0bbf\u0bb4\u0bcd"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const-string v6, "\u09ac\u0c24\u0c46\u0c32\u0c41\u0c17\u0c41"

    const/4 v8, 0x3

    aput-object v6, v5, v8

    const-string v6, "\u0c95\u0ca8\u0ccd\u0ca8\u0ca1"

    const/4 v9, 0x4

    aput-object v6, v5, v9

    const-string v6, "\u0a97\u0ac1\u0a9c\u0ab0\u0abe\u0aa4\u0ac0"

    const/4 v10, 0x5

    aput-object v6, v5, v10

    const-string v6, "\u092e\u0930\u093e\u0920\u0940"

    const/4 v11, 0x6

    aput-object v6, v5, v11

    const-string v6, "\u0d2e\u0d32\u0d2f\u0d3e\u0d33\u0d02"

    const/4 v12, 0x7

    aput-object v6, v5, v12

    const-string v6, "\u0a2a\u0a70\u0a1c\u0a3e\u0a2c\u0a40"

    const/16 v13, 0x8

    aput-object v6, v5, v13

    const-string v6, "Indonesia"

    const/16 v14, 0x9

    aput-object v6, v5, v14

    const-string v6, "\u0627\u0644\u0639\u0631\u0628\u064a\u0629"

    const/16 v15, 0xa

    aput-object v6, v5, v15

    const-string v6, "Fran\u00e7ais"

    const/16 v16, 0xb

    aput-object v6, v5, v16

    const-string v6, "Ti\u1ebfng Vi\u1ec7t"

    const/16 v17, 0xc

    aput-object v6, v5, v17

    const-string v6, "\u0420\u0443\u0441\u0441\u043a\u0438\u0439 \u044f\u0437\u044b\u043a"

    const/16 v18, 0xd

    aput-object v6, v5, v18

    const-string v6, "lingua italiana"

    const/16 v19, 0xe

    aput-object v6, v5, v19

    const-string v6, "Portugu\u00eas"

    const/16 v20, 0xf

    aput-object v6, v5, v20

    const-string v6, "Espa\u00f1ol"

    const/16 v21, 0x10

    aput-object v6, v5, v21

    const-string v6, "Deutsch"

    const/16 v22, 0x11

    aput-object v6, v5, v22

    const-string v6, "\u0627\u0631\u062f\u0648"

    const/16 v23, 0x12

    aput-object v6, v5, v23

    const-string v6, "\u09ac\u09be\u0982\u09b2\u09be \u09ad\u09be\u09b7\u09be"

    const/16 v24, 0x13

    aput-object v6, v5, v24

    const-string v6, "\u05e2\u05b4\u05d1\u05b0\u05e8\u05b4\u05d9\u05ea"

    const/16 v25, 0x14

    aput-object v6, v5, v25

    const/16 v6, 0x15

    const-string v26, "\u010de\u0161tina"

    aput-object v26, v5, v6

    const/16 v6, 0x16

    const-string v26, "Melayu"

    aput-object v26, v5, v6

    new-array v4, v4, [Ljava/lang/String;

    const-string v6, "en"

    aput-object v6, v4, v3

    const-string v3, "hi"

    aput-object v3, v4, v2

    const-string v2, "ta"

    aput-object v2, v4, v7

    const-string v2, "te"

    aput-object v2, v4, v8

    const-string v2, "kn"

    aput-object v2, v4, v9

    const-string v2, "gu"

    aput-object v2, v4, v10

    const-string v2, "mr"

    aput-object v2, v4, v11

    const-string v2, "ml"

    aput-object v2, v4, v12

    const-string v2, "pa"

    aput-object v2, v4, v13

    const-string v2, "in"

    aput-object v2, v4, v14

    const-string v2, "ar"

    aput-object v2, v4, v15

    const-string v2, "fr"

    aput-object v2, v4, v16

    const-string v2, "vi"

    aput-object v2, v4, v17

    const-string v2, "ru"

    aput-object v2, v4, v18

    const-string v2, "it"

    aput-object v2, v4, v19

    const-string v2, "pt"

    aput-object v2, v4, v20

    const-string v2, "es"

    aput-object v2, v4, v21

    const-string v2, "de"

    aput-object v2, v4, v22

    const-string v2, "ur"

    aput-object v2, v4, v23

    const-string v2, "bn"

    aput-object v2, v4, v24

    const-string v2, "iw"

    aput-object v2, v4, v25

    const/16 v2, 0x15

    const-string v3, "cs"

    aput-object v3, v4, v2

    const/16 v2, 0x16

    const-string v3, "ms"

    aput-object v3, v4, v2

    new-instance v2, Lcom/callerid/block/b/n;

    invoke-direct {v2, v0, v5, v1}, Lcom/callerid/block/b/n;-><init>(Landroid/content/Context;[Ljava/lang/String;Landroid/widget/ListView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/callerid/block/start/StartActivity$c;

    invoke-direct {v2, v0, v4}, Lcom/callerid/block/start/StartActivity$c;-><init>(Lcom/callerid/block/start/StartActivity;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private b0()V
    .locals 3

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/callerid/block/main/EZCallApplication;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "vi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x16

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "ur"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x15

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "te"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x14

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "ta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x13

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "ru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "pa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "mr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "ml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "kn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "in"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "hi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "gu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_10
    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_11
    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_12
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_0

    :cond_12
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_13
    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_0

    :cond_13
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_14
    const-string v1, "cs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_0

    :cond_14
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_15
    const-string v1, "bn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_0

    :cond_15
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_16
    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_0

    :cond_16
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/callerid/block/start/StartActivity;->v:Landroid/widget/TextView;

    const-string v1, "Ti\u1ebfng Vi\u1ec7t"

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/callerid/block/start/StartActivity;->v:Landroid/widget/TextView;

    const-string v1, "\u0627\u0631\u062f\u0648"

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/callerid/block/start/StartActivity;->v:Landroid/widget/TextView;

    const-string v1, "\u09ac\u0c24\u0c46\u0c32\u0c41\u0c17\u0c41"

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/callerid/block/start/StartActivity;->v:Landroid/widget/TextView;

    const-string v1, "\u0ba4\u0bae\u0bbf\u0bb4\u0bcd"

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/callerid/block/start/StartActivity;->v:Landroid/widget/TextView;

    const-string v1, "\u0420\u0443\u0441\u0441\u043a\u0438\u0439 \u044f\u0437\u044b\u043a"

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/callerid/block/start/StartActivity;->v:Landroid/widget/TextView;

    const-string v1, "Portugu\u00eas"

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/callerid/block/start/StartActivity;->v:Landroid/widget/TextView;

    const-string v1, "\u0a2a\u0a70\u0a1c\u0a3e\u0a2c\u0a40"

    goto :goto_1

    :pswitch_7
    iget-object v0, p0, Lcom/callerid/block/start/StartActivity;->v:Landroid/widget/TextView;

    const-string v1, "Melayu"

    goto :goto_1

    :pswitch_8
    iget-object v0, p0, Lcom/callerid/block/start/StartActivity;->v:Landroid/widget/TextView;

    const-string v1, "\u092e\u0930\u093e\u0920\u0940"

    goto :goto_1

    :pswitch_9
    iget-object v0, p0, Lcom/callerid/block/start/StartActivity;->v:Landroid/widget/TextView;

    const-string v1, "\u0d2e\u0d32\u0d2f\u0d3e\u0d33\u0d02"

    goto :goto_1

    :pswitch_a
    iget-object v0, p0, Lcom/callerid/block/start/StartActivity;->v:Landroid/widget/TextView;

    const-string v1, "\u0c95\u0ca8\u0ccd\u0ca8\u0ca1"

    goto :goto_1

    :pswitch_b
    iget-object v0, p0, Lcom/callerid/block/start/StartActivity;->v:Landroid/widget/TextView;

    const-string v1, "\u05e2\u05b4\u05d1\u05b0\u05e8\u05b4\u05d9\u05ea"

    goto :goto_1

    :pswitch_c
    iget-object v0, p0, Lcom/callerid/block/start/StartActivity;->v:Landroid/widget/TextView;

    const-string v1, "lingua italiana"

    goto :goto_1

    :pswitch_d
    iget-object v0, p0, Lcom/callerid/block/start/StartActivity;->v:Landroid/widget/TextView;

    const-string v1, "Indonesia"

    goto :goto_1

    :pswitch_e
    iget-object v0, p0, Lcom/callerid/block/start/StartActivity;->v:Landroid/widget/TextView;

    const-string v1, "\u0939\u093f\u0928\u094d\u0926\u0940"

    goto :goto_1

    :pswitch_f
    iget-object v0, p0, Lcom/callerid/block/start/StartActivity;->v:Landroid/widget/TextView;

    const-string v1, "\u0a97\u0ac1\u0a9c\u0ab0\u0abe\u0aa4\u0ac0"

    goto :goto_1

    :pswitch_10
    iget-object v0, p0, Lcom/callerid/block/start/StartActivity;->v:Landroid/widget/TextView;

    const-string v1, "Fran\u00e7ais"

    goto :goto_1

    :pswitch_11
    iget-object v0, p0, Lcom/callerid/block/start/StartActivity;->v:Landroid/widget/TextView;

    const-string v1, "Espa\u00f1ol"

    goto :goto_1

    :pswitch_12
    iget-object v0, p0, Lcom/callerid/block/start/StartActivity;->v:Landroid/widget/TextView;

    const-string v1, "English"

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_13
    iget-object v0, p0, Lcom/callerid/block/start/StartActivity;->v:Landroid/widget/TextView;

    const-string v1, "Deutsch"

    goto :goto_1

    :pswitch_14
    iget-object v0, p0, Lcom/callerid/block/start/StartActivity;->v:Landroid/widget/TextView;

    const-string v1, "\u010de\u0161tina"

    goto :goto_1

    :pswitch_15
    iget-object v0, p0, Lcom/callerid/block/start/StartActivity;->v:Landroid/widget/TextView;

    const-string v1, "\u09ac\u09be\u0982\u09b2\u09be \u09ad\u09be\u09b7\u09be"

    goto :goto_1

    :pswitch_16
    iget-object v0, p0, Lcom/callerid/block/start/StartActivity;->v:Landroid/widget/TextView;

    const-string v1, "\u0627\u0644\u0639\u0631\u0628\u064a\u0629"

    goto :goto_1

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0xc31 -> :sswitch_16
        0xc4c -> :sswitch_15
        0xc70 -> :sswitch_14
        0xc81 -> :sswitch_13
        0xca9 -> :sswitch_12
        0xcae -> :sswitch_11
        0xccc -> :sswitch_10
        0xcee -> :sswitch_f
        0xd01 -> :sswitch_e
        0xd25 -> :sswitch_d
        0xd2b -> :sswitch_c
        0xd2e -> :sswitch_b
        0xd63 -> :sswitch_a
        0xd9f -> :sswitch_9
        0xda5 -> :sswitch_8
        0xda6 -> :sswitch_7
        0xdf1 -> :sswitch_6
        0xe04 -> :sswitch_5
        0xe43 -> :sswitch_4
        0xe6d -> :sswitch_3
        0xe71 -> :sswitch_2
        0xe9d -> :sswitch_1
        0xeb3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/callerid/block/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const v0, 0x7f0c0038

    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    iput-boolean p1, p0, Lcom/callerid/block/start/StartActivity;->x:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->P(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_0
    invoke-direct {p0}, Lcom/callerid/block/start/StartActivity;->Y()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "is_first"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/callerid/block/start/StartActivity;->u:Z

    :cond_1
    invoke-direct {p0}, Lcom/callerid/block/start/StartActivity;->X()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/callerid/block/start/StartActivity;->s:Lcom/callerid/block/util/s;

    invoke-virtual {v0}, Lcom/callerid/block/util/s;->d()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/t0;->q(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "first_enter"

    const-string p2, "keycode_back"

    invoke-static {p1, p2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string p2, "start_key_back"

    invoke-virtual {p1, p2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/callerid/block/start/StartActivity;->Z()V

    const/4 p1, 0x1

    return p1

    :cond_2
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
    .locals 3

    invoke-super {p0}, Lcom/callerid/block/main/BaseActivity;->onResume()V

    iget-boolean v0, p0, Lcom/callerid/block/start/StartActivity;->x:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/callerid/block/start/StartActivity;->x:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/n0;->L0(Landroid/content/Context;J)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/b;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/callerid/block/start/StartActivity;->t:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "is_ou_meng_country"

    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_0
    const-string v0, "first_enter"

    const-string v1, "\u9996\u6b21\u8fdb\u5165\u542f\u52a8\u9875"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "first_enter_launch_page"

    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/callerid/block/start/StartActivity;->W()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/start/StartActivity;->y:Ljava/util/List;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callerid/block/bean/EZCountryCode;->getCountry_name()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/callerid/block/start/StartActivity;->V()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "get_unmatched_countrycode"

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "get_matched_countrycode"

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "not_get_countrycode"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/callerid/block/start/StartActivity;->z:Lcom/callerid/block/bean/EZCountryCode;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/start/StartActivity;->z:Lcom/callerid/block/bean/EZCountryCode;

    invoke-static {v0, v1}, Lcom/callerid/block/util/j;->h(Landroid/content/Context;Lcom/callerid/block/bean/EZCountryCode;)V

    :cond_6
    :goto_2
    return-void
.end method
