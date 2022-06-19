.class public Lcom/allinone/callerid/start/Generalsettings;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "Generalsettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/RadioButton;

.field private B:Landroid/widget/RadioButton;

.field private C:Landroid/widget/FrameLayout;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/Switch;

.field private final u:Ljava/lang/String;

.field private v:Landroid/graphics/Typeface;

.field private w:Landroid/widget/Switch;

.field private x:Landroid/widget/Switch;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "Generalsettings"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/start/Generalsettings;->u:Ljava/lang/String;

    return-void
.end method

.method static synthetic X(Lcom/allinone/callerid/start/Generalsettings;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/start/Generalsettings;->C:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic Y(Lcom/allinone/callerid/start/Generalsettings;)Landroid/widget/RadioButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/start/Generalsettings;->z:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic Z(Lcom/allinone/callerid/start/Generalsettings;)Landroid/widget/RadioButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/start/Generalsettings;->A:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic a0(Lcom/allinone/callerid/start/Generalsettings;)Landroid/widget/RadioButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/start/Generalsettings;->B:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic b0(Lcom/allinone/callerid/start/Generalsettings;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/start/Generalsettings;->y:Landroid/widget/TextView;

    return-object p0
.end method

.method private c0()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x16
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c006d

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09046c

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/allinone/callerid/start/Generalsettings;->z:Landroid/widget/RadioButton;

    const v1, 0x7f09046d

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/allinone/callerid/start/Generalsettings;->A:Landroid/widget/RadioButton;

    const v1, 0x7f09046e

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/allinone/callerid/start/Generalsettings;->B:Landroid/widget/RadioButton;

    .line 5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1002cb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 8
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 9
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 10
    invoke-static {}, Lcom/allinone/callerid/util/a1;->p()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/start/Generalsettings;->z:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/start/Generalsettings;->A:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/start/Generalsettings;->B:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/start/Generalsettings;->z:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 15
    iget-object v0, p0, Lcom/allinone/callerid/start/Generalsettings;->A:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 16
    iget-object v0, p0, Lcom/allinone/callerid/start/Generalsettings;->B:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/allinone/callerid/start/Generalsettings;->z:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 18
    iget-object v0, p0, Lcom/allinone/callerid/start/Generalsettings;->A:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 19
    iget-object v0, p0, Lcom/allinone/callerid/start/Generalsettings;->B:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 20
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/start/Generalsettings;->z:Landroid/widget/RadioButton;

    new-instance v1, Lcom/allinone/callerid/start/Generalsettings$e;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/start/Generalsettings$e;-><init>(Lcom/allinone/callerid/start/Generalsettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 21
    iget-object v0, p0, Lcom/allinone/callerid/start/Generalsettings;->A:Landroid/widget/RadioButton;

    new-instance v1, Lcom/allinone/callerid/start/Generalsettings$f;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/start/Generalsettings$f;-><init>(Lcom/allinone/callerid/start/Generalsettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 22
    iget-object v0, p0, Lcom/allinone/callerid/start/Generalsettings;->B:Landroid/widget/RadioButton;

    new-instance v1, Lcom/allinone/callerid/start/Generalsettings$g;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/start/Generalsettings$g;-><init>(Lcom/allinone/callerid/start/Generalsettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private d0()V
    .locals 16

    move-object/from16 v0, p0

    const v1, 0x7f0907a0

    .line 1
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0905f5

    .line 2
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09065a

    .line 3
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090659

    .line 4
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0906f6

    .line 5
    invoke-virtual {v0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0906f7

    .line 6
    invoke-virtual {v0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0906ef

    .line 7
    invoke-virtual {v0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v7, 0x7f0906ee

    .line 8
    invoke-virtual {v0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9
    invoke-static {}, Lcom/allinone/callerid/util/a1;->m()J

    move-result-wide v7

    const-string v9, " "

    const v10, 0x7f1001bb

    const-wide/16 v11, 0x0

    cmp-long v13, v7, v11

    if-nez v13, :cond_0

    .line 10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/allinone/callerid/util/i;->f(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 11
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Lcom/allinone/callerid/util/i;->f(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v7, 0x7f09078c

    .line 12
    invoke-virtual {v0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f090709

    .line 13
    invoke-virtual {v0, v8}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f090258

    .line 14
    invoke-virtual {v0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    const v10, 0x7f090266

    .line 15
    invoke-virtual {v0, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    const v10, 0x7f0901dc

    .line 16
    invoke-virtual {v0, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    const v11, 0x7f0901fd

    .line 17
    invoke-virtual {v0, v11}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    const v12, 0x7f090203

    .line 18
    invoke-virtual {v0, v12}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    const v13, 0x7f090221

    .line 19
    invoke-virtual {v0, v13}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    iput-object v13, v0, Lcom/allinone/callerid/start/Generalsettings;->C:Landroid/widget/FrameLayout;

    const v13, 0x7f090792

    .line 20
    invoke-virtual {v0, v13}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v0, Lcom/allinone/callerid/start/Generalsettings;->D:Landroid/widget/TextView;

    const v13, 0x7f090793

    .line 21
    invoke-virtual {v0, v13}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v0, Lcom/allinone/callerid/start/Generalsettings;->E:Landroid/widget/TextView;

    const v13, 0x7f0905b2

    .line 22
    invoke-virtual {v0, v13}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Switch;

    iput-object v13, v0, Lcom/allinone/callerid/start/Generalsettings;->F:Landroid/widget/Switch;

    .line 23
    invoke-static {}, Lcom/allinone/callerid/util/a1;->y0()Z

    move-result v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v13, :cond_1

    .line 24
    iget-object v13, v0, Lcom/allinone/callerid/start/Generalsettings;->F:Landroid/widget/Switch;

    invoke-virtual {v13, v14}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    .line 25
    :cond_1
    iget-object v13, v0, Lcom/allinone/callerid/start/Generalsettings;->F:Landroid/widget/Switch;

    invoke-virtual {v13, v15}, Landroid/widget/Switch;->setChecked(Z)V

    .line 26
    :goto_1
    iget-object v13, v0, Lcom/allinone/callerid/start/Generalsettings;->F:Landroid/widget/Switch;

    new-instance v14, Lcom/allinone/callerid/start/Generalsettings$b;

    invoke-direct {v14, v0}, Lcom/allinone/callerid/start/Generalsettings$b;-><init>(Lcom/allinone/callerid/start/Generalsettings;)V

    invoke-virtual {v13, v14}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 27
    invoke-virtual {v12, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-virtual {v10, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v9, v0, Lcom/allinone/callerid/start/Generalsettings;->C:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v9, 0x7f09020f

    .line 34
    invoke-virtual {v0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    const v10, 0x7f090534

    .line 35
    invoke-virtual {v0, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const v11, 0x7f09075e

    .line 36
    invoke-virtual {v0, v11}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v0, Lcom/allinone/callerid/start/Generalsettings;->y:Landroid/widget/TextView;

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/allinone/callerid/util/b1;->j(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 38
    invoke-virtual {v9, v15}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 39
    invoke-virtual {v10, v15}, Landroid/view/View;->setVisibility(I)V

    .line 40
    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-static {}, Lcom/allinone/callerid/util/a1;->p()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_4

    if-eqz v9, :cond_3

    const/4 v10, 0x1

    if-eq v9, v10, :cond_2

    goto :goto_2

    .line 42
    :cond_2
    iget-object v9, v0, Lcom/allinone/callerid/start/Generalsettings;->y:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f1000be

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v9

    sget-object v10, Lcom/allinone/callerid/util/g1;->o:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_2

    .line 44
    :cond_3
    iget-object v9, v0, Lcom/allinone/callerid/start/Generalsettings;->y:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f1000bd

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v9

    sget-object v10, Lcom/allinone/callerid/util/g1;->n:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_2

    .line 46
    :cond_4
    iget-object v9, v0, Lcom/allinone/callerid/start/Generalsettings;->y:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f1002fb

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v9

    sget-object v10, Lcom/allinone/callerid/util/g1;->p:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/16 v11, 0x8

    .line 48
    invoke-virtual {v9, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 49
    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    const v9, 0x7f0905a3

    .line 50
    invoke-virtual {v0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Switch;

    iput-object v9, v0, Lcom/allinone/callerid/start/Generalsettings;->w:Landroid/widget/Switch;

    .line 51
    invoke-static {}, Lcom/allinone/callerid/util/a1;->l0()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 52
    iget-object v9, v0, Lcom/allinone/callerid/start/Generalsettings;->w:Landroid/widget/Switch;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_3

    .line 53
    :cond_6
    iget-object v9, v0, Lcom/allinone/callerid/start/Generalsettings;->w:Landroid/widget/Switch;

    invoke-virtual {v9, v15}, Landroid/widget/Switch;->setChecked(Z)V

    .line 54
    :goto_3
    iget-object v9, v0, Lcom/allinone/callerid/start/Generalsettings;->w:Landroid/widget/Switch;

    new-instance v10, Lcom/allinone/callerid/start/Generalsettings$c;

    invoke-direct {v10, v0}, Lcom/allinone/callerid/start/Generalsettings$c;-><init>(Lcom/allinone/callerid/start/Generalsettings;)V

    invoke-virtual {v9, v10}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v9, 0x7f0905ad

    .line 55
    invoke-virtual {v0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Switch;

    iput-object v9, v0, Lcom/allinone/callerid/start/Generalsettings;->x:Landroid/widget/Switch;

    .line 56
    invoke-static {}, Lcom/allinone/callerid/util/a1;->q0()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 57
    iget-object v9, v0, Lcom/allinone/callerid/start/Generalsettings;->x:Landroid/widget/Switch;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_4

    .line 58
    :cond_7
    iget-object v9, v0, Lcom/allinone/callerid/start/Generalsettings;->x:Landroid/widget/Switch;

    invoke-virtual {v9, v15}, Landroid/widget/Switch;->setChecked(Z)V

    .line 59
    :goto_4
    iget-object v9, v0, Lcom/allinone/callerid/start/Generalsettings;->x:Landroid/widget/Switch;

    new-instance v10, Lcom/allinone/callerid/start/Generalsettings$d;

    invoke-direct {v10, v0}, Lcom/allinone/callerid/start/Generalsettings$d;-><init>(Lcom/allinone/callerid/start/Generalsettings;)V

    invoke-virtual {v9, v10}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v9, 0x7f09070c

    .line 60
    invoke-virtual {v0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f09070d

    .line 61
    invoke-virtual {v0, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 62
    iget-object v11, v0, Lcom/allinone/callerid/start/Generalsettings;->v:Landroid/graphics/Typeface;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 63
    iget-object v9, v0, Lcom/allinone/callerid/start/Generalsettings;->v:Landroid/graphics/Typeface;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 64
    iget-object v9, v0, Lcom/allinone/callerid/start/Generalsettings;->v:Landroid/graphics/Typeface;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 65
    iget-object v1, v0, Lcom/allinone/callerid/start/Generalsettings;->v:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 66
    iget-object v1, v0, Lcom/allinone/callerid/start/Generalsettings;->v:Landroid/graphics/Typeface;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 67
    iget-object v1, v0, Lcom/allinone/callerid/start/Generalsettings;->v:Landroid/graphics/Typeface;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 68
    iget-object v1, v0, Lcom/allinone/callerid/start/Generalsettings;->v:Landroid/graphics/Typeface;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 69
    iget-object v1, v0, Lcom/allinone/callerid/start/Generalsettings;->v:Landroid/graphics/Typeface;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 70
    iget-object v1, v0, Lcom/allinone/callerid/start/Generalsettings;->v:Landroid/graphics/Typeface;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 71
    iget-object v1, v0, Lcom/allinone/callerid/start/Generalsettings;->v:Landroid/graphics/Typeface;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 72
    iget-object v1, v0, Lcom/allinone/callerid/start/Generalsettings;->D:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/allinone/callerid/start/Generalsettings;->v:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 73
    iget-object v1, v0, Lcom/allinone/callerid/start/Generalsettings;->E:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/allinone/callerid/start/Generalsettings;->v:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "android.intent.action.VIEW"

    const v1, 0x7f010001

    const/high16 v2, 0x7f010000

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    :try_start_0
    const-string p1, "https://www.show-caller.com/terms.html"

    .line 2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 3
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 5
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 8
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :sswitch_1
    :try_start_1
    const-string p1, "https://www.show-caller.com/privacy.html"

    .line 10
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 11
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 13
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 16
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 18
    :sswitch_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/allinone/callerid/start/AboutActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 19
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 20
    :sswitch_3
    iget-object p1, p0, Lcom/allinone/callerid/start/Generalsettings;->F:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 21
    invoke-static {v3}, Lcom/allinone/callerid/util/a1;->f2(Z)V

    .line 22
    iget-object p1, p0, Lcom/allinone/callerid/start/Generalsettings;->F:Landroid/widget/Switch;

    invoke-virtual {p1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 23
    :cond_0
    invoke-static {v4}, Lcom/allinone/callerid/util/a1;->f2(Z)V

    .line 24
    iget-object p1, p0, Lcom/allinone/callerid/start/Generalsettings;->F:Landroid/widget/Switch;

    invoke-virtual {p1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 25
    :sswitch_4
    invoke-direct {p0}, Lcom/allinone/callerid/start/Generalsettings;->c0()V

    goto :goto_0

    .line 26
    :sswitch_5
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/allinone/callerid/start/PushControlActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 27
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 28
    :sswitch_6
    iget-object p1, p0, Lcom/allinone/callerid/start/Generalsettings;->x:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 29
    invoke-static {v3}, Lcom/allinone/callerid/util/a1;->W1(Z)V

    .line 30
    iget-object p1, p0, Lcom/allinone/callerid/start/Generalsettings;->x:Landroid/widget/Switch;

    invoke-virtual {p1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 31
    :cond_1
    invoke-static {v4}, Lcom/allinone/callerid/util/a1;->W1(Z)V

    .line 32
    iget-object p1, p0, Lcom/allinone/callerid/start/Generalsettings;->x:Landroid/widget/Switch;

    invoke-virtual {p1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 33
    :sswitch_7
    iget-object p1, p0, Lcom/allinone/callerid/start/Generalsettings;->w:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 34
    invoke-static {v3}, Lcom/allinone/callerid/util/a1;->Q1(Z)V

    .line 35
    iget-object p1, p0, Lcom/allinone/callerid/start/Generalsettings;->w:Landroid/widget/Switch;

    invoke-virtual {p1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 36
    :cond_2
    invoke-static {v4}, Lcom/allinone/callerid/util/a1;->Q1(Z)V

    .line 37
    iget-object p1, p0, Lcom/allinone/callerid/start/Generalsettings;->w:Landroid/widget/Switch;

    invoke-virtual {p1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_3
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0901dc -> :sswitch_7
        0x7f0901fd -> :sswitch_6
        0x7f090203 -> :sswitch_5
        0x7f09020f -> :sswitch_4
        0x7f090221 -> :sswitch_3
        0x7f090258 -> :sswitch_2
        0x7f090709 -> :sswitch_1
        0x7f09078c -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003e

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/start/Generalsettings;->v:Landroid/graphics/Typeface;

    const p1, 0x7f090367

    .line 7
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f08015b

    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    :cond_1
    new-instance v0, Lcom/allinone/callerid/start/Generalsettings$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/start/Generalsettings$a;-><init>(Lcom/allinone/callerid/start/Generalsettings;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-direct {p0}, Lcom/allinone/callerid/start/Generalsettings;->d0()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 p1, 0x7f010000

    const p2, 0x7f010001

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onResume()V

    return-void
.end method
