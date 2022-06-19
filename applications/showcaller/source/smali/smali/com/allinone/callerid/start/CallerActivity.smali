.class public Lcom/allinone/callerid/start/CallerActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "CallerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/start/CallerActivity$r;,
        Lcom/allinone/callerid/start/CallerActivity$q;,
        Lcom/allinone/callerid/start/CallerActivity$s;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/RadioButton;

.field private final u:Ljava/lang/String;

.field private v:Landroid/graphics/Typeface;

.field private w:Landroid/widget/RadioButton;

.field private x:Landroid/widget/RadioButton;

.field private y:Landroid/widget/RadioButton;

.field private z:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "CallerActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/start/CallerActivity;->u:Ljava/lang/String;

    return-void
.end method

.method static synthetic X(Lcom/allinone/callerid/start/CallerActivity;)Landroid/widget/RadioButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/start/CallerActivity;->x:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic Y(Lcom/allinone/callerid/start/CallerActivity;)Landroid/widget/RadioButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/start/CallerActivity;->w:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic Z(Lcom/allinone/callerid/start/CallerActivity;)Landroid/widget/RadioButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/start/CallerActivity;->z:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic a0(Lcom/allinone/callerid/start/CallerActivity;)Landroid/widget/RadioButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/start/CallerActivity;->A:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic b0(Lcom/allinone/callerid/start/CallerActivity;)Landroid/widget/RadioButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/start/CallerActivity;->y:Landroid/widget/RadioButton;

    return-object p0
.end method

.method private c0()V
    .locals 14

    const v0, 0x7f090634

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090635

    .line 2
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09067a

    .line 3
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09064e

    .line 4
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0906e7

    .line 5
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090762

    .line 6
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0906e6

    .line 7
    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/allinone/callerid/start/CallerActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8
    iget-object v7, p0, Lcom/allinone/callerid/start/CallerActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9
    iget-object v7, p0, Lcom/allinone/callerid/start/CallerActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v7, 0x7f090761

    .line 10
    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/allinone/callerid/start/CallerActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 11
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/allinone/callerid/start/CallerActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v5, 0x7f0906c1

    .line 12
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/allinone/callerid/start/CallerActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v5, 0x7f0907a1

    .line 13
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f0907a2

    .line 14
    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f09047f

    .line 15
    invoke-virtual {p0, v8}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iput-object v8, p0, Lcom/allinone/callerid/start/CallerActivity;->y:Landroid/widget/RadioButton;

    const v8, 0x7f090629

    .line 16
    invoke-virtual {p0, v8}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f09062a

    .line 17
    invoke-virtual {p0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f09046f

    .line 18
    invoke-virtual {p0, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    iput-object v10, p0, Lcom/allinone/callerid/start/CallerActivity;->z:Landroid/widget/RadioButton;

    const v10, 0x7f090665

    .line 19
    invoke-virtual {p0, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f090667

    .line 20
    invoke-virtual {p0, v11}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f090471

    .line 21
    invoke-virtual {p0, v12}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RadioButton;

    iput-object v12, p0, Lcom/allinone/callerid/start/CallerActivity;->A:Landroid/widget/RadioButton;

    const v12, 0x7f090708

    .line 22
    invoke-virtual {p0, v12}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 23
    iget-object v13, p0, Lcom/allinone/callerid/start/CallerActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 24
    iget-object v12, p0, Lcom/allinone/callerid/start/CallerActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 25
    iget-object v5, p0, Lcom/allinone/callerid/start/CallerActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 26
    iget-object v5, p0, Lcom/allinone/callerid/start/CallerActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 27
    iget-object v5, p0, Lcom/allinone/callerid/start/CallerActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 28
    iget-object v5, p0, Lcom/allinone/callerid/start/CallerActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 29
    iget-object v5, p0, Lcom/allinone/callerid/start/CallerActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 30
    new-instance v5, Lcom/allinone/callerid/start/CallerActivity$i;

    invoke-direct {v5, p0}, Lcom/allinone/callerid/start/CallerActivity$i;-><init>(Lcom/allinone/callerid/start/CallerActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    new-instance v4, Lcom/allinone/callerid/start/CallerActivity$j;

    invoke-direct {v4, p0}, Lcom/allinone/callerid/start/CallerActivity$j;-><init>(Lcom/allinone/callerid/start/CallerActivity;)V

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0905a1

    .line 32
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    .line 33
    invoke-static {}, Lcom/allinone/callerid/util/a1;->t0()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_0

    .line 34
    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v4, v8}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    const v5, 0x7f0905a2

    .line 36
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    .line 37
    invoke-static {}, Lcom/allinone/callerid/util/a1;->u0()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 38
    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {v5, v8}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_1
    const v10, 0x7f0905a7

    .line 40
    invoke-virtual {p0, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Switch;

    .line 41
    new-instance v12, Lcom/allinone/callerid/start/CallerActivity$k;

    invoke-direct {v12, p0}, Lcom/allinone/callerid/start/CallerActivity$k;-><init>(Lcom/allinone/callerid/start/CallerActivity;)V

    invoke-virtual {v10, v12}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 42
    invoke-static {}, Lcom/allinone/callerid/util/a1;->p2()Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 43
    invoke-virtual {v10, v6}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_2

    .line 44
    :cond_2
    invoke-virtual {v10, v8}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_2
    const v10, 0x7f0905ae

    .line 45
    invoke-virtual {p0, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Switch;

    .line 46
    new-instance v12, Lcom/allinone/callerid/start/CallerActivity$l;

    invoke-direct {v12, p0}, Lcom/allinone/callerid/start/CallerActivity$l;-><init>(Lcom/allinone/callerid/start/CallerActivity;)V

    invoke-virtual {v10, v12}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 47
    invoke-static {}, Lcom/allinone/callerid/util/a1;->y2()Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 48
    invoke-virtual {v10, v6}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_3

    .line 49
    :cond_3
    invoke-virtual {v10, v8}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_3
    const v10, 0x7f0905ac

    .line 50
    invoke-virtual {p0, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Switch;

    .line 51
    invoke-static {}, Lcom/allinone/callerid/util/a1;->n0()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 52
    invoke-virtual {v10, v6}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_4

    .line 53
    :cond_4
    invoke-virtual {v10, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 54
    :goto_4
    new-instance v12, Lcom/allinone/callerid/start/CallerActivity$m;

    invoke-direct {v12, p0}, Lcom/allinone/callerid/start/CallerActivity$m;-><init>(Lcom/allinone/callerid/start/CallerActivity;)V

    invoke-virtual {v4, v12}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 55
    new-instance v4, Lcom/allinone/callerid/start/CallerActivity$n;

    invoke-direct {v4, p0}, Lcom/allinone/callerid/start/CallerActivity$n;-><init>(Lcom/allinone/callerid/start/CallerActivity;)V

    invoke-virtual {v5, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 56
    new-instance v4, Lcom/allinone/callerid/start/CallerActivity$o;

    invoke-direct {v4, p0}, Lcom/allinone/callerid/start/CallerActivity$o;-><init>(Lcom/allinone/callerid/start/CallerActivity;)V

    invoke-virtual {v10, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v4, 0x7f090476

    .line 57
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/allinone/callerid/start/CallerActivity;->w:Landroid/widget/RadioButton;

    const v4, 0x7f09047e

    .line 58
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/allinone/callerid/start/CallerActivity;->x:Landroid/widget/RadioButton;

    .line 59
    invoke-static {}, Lcom/allinone/callerid/util/a1;->w0()I

    move-result v4

    if-eqz v4, :cond_6

    if-eq v4, v6, :cond_5

    goto :goto_5

    .line 60
    :cond_5
    iget-object v4, p0, Lcom/allinone/callerid/start/CallerActivity;->x:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 61
    iget-object v4, p0, Lcom/allinone/callerid/start/CallerActivity;->w:Landroid/widget/RadioButton;

    invoke-virtual {v4, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_5

    .line 62
    :cond_6
    iget-object v4, p0, Lcom/allinone/callerid/start/CallerActivity;->w:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 63
    iget-object v4, p0, Lcom/allinone/callerid/start/CallerActivity;->x:Landroid/widget/RadioButton;

    invoke-virtual {v4, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 64
    :goto_5
    iget-object v4, p0, Lcom/allinone/callerid/start/CallerActivity;->w:Landroid/widget/RadioButton;

    new-instance v5, Lcom/allinone/callerid/start/CallerActivity$p;

    invoke-direct {v5, p0}, Lcom/allinone/callerid/start/CallerActivity$p;-><init>(Lcom/allinone/callerid/start/CallerActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 65
    iget-object v4, p0, Lcom/allinone/callerid/start/CallerActivity;->x:Landroid/widget/RadioButton;

    new-instance v5, Lcom/allinone/callerid/start/CallerActivity$a;

    invoke-direct {v5, p0}, Lcom/allinone/callerid/start/CallerActivity$a;-><init>(Lcom/allinone/callerid/start/CallerActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    invoke-static {}, Lcom/allinone/callerid/util/a1;->a0()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_9

    if-eqz v4, :cond_8

    if-eq v4, v6, :cond_7

    goto :goto_6

    .line 67
    :cond_7
    iget-object v4, p0, Lcom/allinone/callerid/start/CallerActivity;->A:Landroid/widget/RadioButton;

    invoke-virtual {v4, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 68
    iget-object v4, p0, Lcom/allinone/callerid/start/CallerActivity;->y:Landroid/widget/RadioButton;

    invoke-virtual {v4, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 69
    iget-object v4, p0, Lcom/allinone/callerid/start/CallerActivity;->z:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_6

    .line 70
    :cond_8
    iget-object v4, p0, Lcom/allinone/callerid/start/CallerActivity;->A:Landroid/widget/RadioButton;

    invoke-virtual {v4, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 71
    iget-object v4, p0, Lcom/allinone/callerid/start/CallerActivity;->y:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 72
    iget-object v4, p0, Lcom/allinone/callerid/start/CallerActivity;->z:Landroid/widget/RadioButton;

    invoke-virtual {v4, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_6

    .line 73
    :cond_9
    iget-object v4, p0, Lcom/allinone/callerid/start/CallerActivity;->A:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 74
    iget-object v4, p0, Lcom/allinone/callerid/start/CallerActivity;->y:Landroid/widget/RadioButton;

    invoke-virtual {v4, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 75
    iget-object v4, p0, Lcom/allinone/callerid/start/CallerActivity;->z:Landroid/widget/RadioButton;

    invoke-virtual {v4, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 76
    :goto_6
    iget-object v4, p0, Lcom/allinone/callerid/start/CallerActivity;->y:Landroid/widget/RadioButton;

    new-instance v5, Lcom/allinone/callerid/start/CallerActivity$b;

    invoke-direct {v5, p0}, Lcom/allinone/callerid/start/CallerActivity$b;-><init>(Lcom/allinone/callerid/start/CallerActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 77
    iget-object v4, p0, Lcom/allinone/callerid/start/CallerActivity;->z:Landroid/widget/RadioButton;

    new-instance v5, Lcom/allinone/callerid/start/CallerActivity$c;

    invoke-direct {v5, p0}, Lcom/allinone/callerid/start/CallerActivity$c;-><init>(Lcom/allinone/callerid/start/CallerActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 78
    iget-object v4, p0, Lcom/allinone/callerid/start/CallerActivity;->A:Landroid/widget/RadioButton;

    new-instance v5, Lcom/allinone/callerid/start/CallerActivity$d;

    invoke-direct {v5, p0}, Lcom/allinone/callerid/start/CallerActivity$d;-><init>(Lcom/allinone/callerid/start/CallerActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 79
    new-instance v4, Lcom/allinone/callerid/start/CallerActivity$e;

    invoke-direct {v4, p0}, Lcom/allinone/callerid/start/CallerActivity$e;-><init>(Lcom/allinone/callerid/start/CallerActivity;)V

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    new-instance v4, Lcom/allinone/callerid/start/CallerActivity$f;

    invoke-direct {v4, p0}, Lcom/allinone/callerid/start/CallerActivity$f;-><init>(Lcom/allinone/callerid/start/CallerActivity;)V

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    new-instance v4, Lcom/allinone/callerid/start/CallerActivity$g;

    invoke-direct {v4, p0}, Lcom/allinone/callerid/start/CallerActivity$g;-><init>(Lcom/allinone/callerid/start/CallerActivity;)V

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f090698

    .line 82
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0906fd

    .line 83
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 84
    iget-object v6, p0, Lcom/allinone/callerid/start/CallerActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 85
    iget-object v4, p0, Lcom/allinone/callerid/start/CallerActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v4, 0x7f090776

    .line 86
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 87
    iget-object v5, p0, Lcom/allinone/callerid/start/CallerActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 88
    iget-object v2, p0, Lcom/allinone/callerid/start/CallerActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 89
    iget-object v2, p0, Lcom/allinone/callerid/start/CallerActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 90
    iget-object v0, p0, Lcom/allinone/callerid/start/CallerActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 91
    iget-object v0, p0, Lcom/allinone/callerid/start/CallerActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002c

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
    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "Roboto-Regular.ttf"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/start/CallerActivity;->v:Landroid/graphics/Typeface;

    const p1, 0x7f09035e

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
    new-instance v0, Lcom/allinone/callerid/start/CallerActivity$h;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/start/CallerActivity$h;-><init>(Lcom/allinone/callerid/start/CallerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-direct {p0}, Lcom/allinone/callerid/start/CallerActivity;->c0()V

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
