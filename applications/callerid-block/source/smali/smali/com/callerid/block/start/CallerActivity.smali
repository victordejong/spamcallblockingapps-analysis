.class public Lcom/callerid/block/start/CallerActivity;
.super Lcom/callerid/block/main/BaseActivity;
.source ""


# instance fields
.field private s:Landroid/graphics/Typeface;

.field private t:Lcom/rey/material/widget/RadioButton;

.field private u:Lcom/rey/material/widget/RadioButton;

.field private v:Lcom/rey/material/widget/RadioButton;

.field private w:Lcom/rey/material/widget/RadioButton;

.field private x:Z

.field private y:Lcom/rey/material/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/main/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic Q(Lcom/callerid/block/start/CallerActivity;)Lcom/rey/material/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/CallerActivity;->u:Lcom/rey/material/widget/RadioButton;

    return-object p0
.end method

.method static synthetic R(Lcom/callerid/block/start/CallerActivity;)Lcom/rey/material/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/CallerActivity;->t:Lcom/rey/material/widget/RadioButton;

    return-object p0
.end method

.method static synthetic S(Lcom/callerid/block/start/CallerActivity;)Lcom/rey/material/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/CallerActivity;->w:Lcom/rey/material/widget/RadioButton;

    return-object p0
.end method

.method static synthetic T(Lcom/callerid/block/start/CallerActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/start/CallerActivity;->x:Z

    return p1
.end method

.method static synthetic U(Lcom/callerid/block/start/CallerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/start/CallerActivity;->X()V

    return-void
.end method

.method static synthetic V(Lcom/callerid/block/start/CallerActivity;)Lcom/rey/material/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/CallerActivity;->v:Lcom/rey/material/widget/RadioButton;

    return-object p0
.end method

.method private W()V
    .locals 11

    const v0, 0x7f0903b7

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0903b8

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0903e7

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0903c6

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09041f

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/rey/material/widget/TextView;

    const v5, 0x7f090462

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/rey/material/widget/TextView;

    const v7, 0x7f09041e

    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/callerid/block/start/CallerActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v7, p0, Lcom/callerid/block/start/CallerActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v7, p0, Lcom/callerid/block/start/CallerActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v7, 0x7f090461

    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/callerid/block/start/CallerActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/callerid/block/start/CallerActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v5, 0x7f09040e

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/callerid/block/start/CallerActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v5, Lcom/callerid/block/start/CallerActivity$d;

    invoke-direct {v5, p0}, Lcom/callerid/block/start/CallerActivity$d;-><init>(Lcom/callerid/block/start/CallerActivity;)V

    invoke-virtual {v4, v5}, Lcom/rey/material/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lcom/callerid/block/start/CallerActivity$e;

    invoke-direct {v4, p0}, Lcom/callerid/block/start/CallerActivity$e;-><init>(Lcom/callerid/block/start/CallerActivity;)V

    invoke-virtual {v6, v4}, Lcom/rey/material/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f090353

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/rey/material/widget/Switch;

    invoke-static {p0}, Lcom/callerid/block/util/n0;->Z(Landroid/content/Context;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v4, v6}, Lcom/rey/material/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v7}, Lcom/rey/material/widget/Switch;->setChecked(Z)V

    :goto_0
    const v5, 0x7f090354

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/rey/material/widget/Switch;

    invoke-static {p0}, Lcom/callerid/block/util/n0;->a0(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v5, v6}, Lcom/rey/material/widget/Switch;->setChecked(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v7}, Lcom/rey/material/widget/Switch;->setChecked(Z)V

    :goto_1
    const v8, 0x7f09035c

    invoke-virtual {p0, v8}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/rey/material/widget/Switch;

    invoke-static {p0}, Lcom/callerid/block/util/n0;->U(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8, v6}, Lcom/rey/material/widget/Switch;->setChecked(Z)V

    goto :goto_2

    :cond_2
    invoke-virtual {v8, v7}, Lcom/rey/material/widget/Switch;->setChecked(Z)V

    :goto_2
    const v9, 0x7f090351

    invoke-virtual {p0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/rey/material/widget/Switch;

    iput-object v9, p0, Lcom/callerid/block/start/CallerActivity;->y:Lcom/rey/material/widget/Switch;

    const v9, 0x7f0903a3

    invoke-virtual {p0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/callerid/block/start/CallerActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {p0}, Lcom/callerid/block/util/n0;->P(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/callerid/block/start/CallerActivity;->y:Lcom/rey/material/widget/Switch;

    invoke-virtual {v9, v6}, Lcom/rey/material/widget/Switch;->setChecked(Z)V

    goto :goto_3

    :cond_3
    iget-object v9, p0, Lcom/callerid/block/start/CallerActivity;->y:Lcom/rey/material/widget/Switch;

    invoke-virtual {v9, v7}, Lcom/rey/material/widget/Switch;->setChecked(Z)V

    :goto_3
    new-instance v9, Lcom/callerid/block/start/CallerActivity$f;

    invoke-direct {v9, p0}, Lcom/callerid/block/start/CallerActivity$f;-><init>(Lcom/callerid/block/start/CallerActivity;)V

    invoke-virtual {v4, v9}, Lcom/rey/material/widget/Switch;->setOnCheckedChangeListener(Lcom/rey/material/widget/Switch$b;)V

    new-instance v4, Lcom/callerid/block/start/CallerActivity$g;

    invoke-direct {v4, p0}, Lcom/callerid/block/start/CallerActivity$g;-><init>(Lcom/callerid/block/start/CallerActivity;)V

    invoke-virtual {v5, v4}, Lcom/rey/material/widget/Switch;->setOnCheckedChangeListener(Lcom/rey/material/widget/Switch$b;)V

    new-instance v4, Lcom/callerid/block/start/CallerActivity$h;

    invoke-direct {v4, p0}, Lcom/callerid/block/start/CallerActivity$h;-><init>(Lcom/callerid/block/start/CallerActivity;)V

    invoke-virtual {v8, v4}, Lcom/rey/material/widget/Switch;->setOnCheckedChangeListener(Lcom/rey/material/widget/Switch$b;)V

    iget-object v4, p0, Lcom/callerid/block/start/CallerActivity;->y:Lcom/rey/material/widget/Switch;

    new-instance v5, Lcom/callerid/block/start/CallerActivity$i;

    invoke-direct {v5, p0}, Lcom/callerid/block/start/CallerActivity$i;-><init>(Lcom/callerid/block/start/CallerActivity;)V

    invoke-virtual {v4, v5}, Lcom/rey/material/widget/Switch;->setOnCheckedChangeListener(Lcom/rey/material/widget/Switch$b;)V

    const v4, 0x7f0902c5

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/rey/material/widget/RadioButton;

    iput-object v4, p0, Lcom/callerid/block/start/CallerActivity;->t:Lcom/rey/material/widget/RadioButton;

    const v4, 0x7f0902c7

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/rey/material/widget/RadioButton;

    iput-object v4, p0, Lcom/callerid/block/start/CallerActivity;->u:Lcom/rey/material/widget/RadioButton;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/callerid/block/util/n0;->d0(Landroid/content/Context;)I

    move-result v4

    if-eqz v4, :cond_5

    if-eq v4, v6, :cond_4

    goto :goto_5

    :cond_4
    iget-object v4, p0, Lcom/callerid/block/start/CallerActivity;->u:Lcom/rey/material/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v4, p0, Lcom/callerid/block/start/CallerActivity;->t:Lcom/rey/material/widget/RadioButton;

    goto :goto_4

    :cond_5
    iget-object v4, p0, Lcom/callerid/block/start/CallerActivity;->t:Lcom/rey/material/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v4, p0, Lcom/callerid/block/start/CallerActivity;->u:Lcom/rey/material/widget/RadioButton;

    :goto_4
    invoke-virtual {v4, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_5
    iget-object v4, p0, Lcom/callerid/block/start/CallerActivity;->t:Lcom/rey/material/widget/RadioButton;

    new-instance v5, Lcom/callerid/block/start/CallerActivity$j;

    invoke-direct {v5, p0}, Lcom/callerid/block/start/CallerActivity$j;-><init>(Lcom/callerid/block/start/CallerActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v4, p0, Lcom/callerid/block/start/CallerActivity;->u:Lcom/rey/material/widget/RadioButton;

    new-instance v5, Lcom/callerid/block/start/CallerActivity$k;

    invoke-direct {v5, p0}, Lcom/callerid/block/start/CallerActivity$k;-><init>(Lcom/callerid/block/start/CallerActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v4, 0x7f09046e

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/callerid/block/start/CallerActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, p0, Lcom/callerid/block/start/CallerActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, p0, Lcom/callerid/block/start/CallerActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/start/CallerActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/start/CallerActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f090422

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/start/CallerActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f09039f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/start/CallerActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0903a0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/start/CallerActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0903bf

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/start/CallerActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0903c0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/start/CallerActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f09023c

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_6

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6

    :cond_6
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_6
    const v0, 0x7f0902c2

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rey/material/widget/RadioButton;

    iput-object v0, p0, Lcom/callerid/block/start/CallerActivity;->v:Lcom/rey/material/widget/RadioButton;

    const v0, 0x7f0902c4

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rey/material/widget/RadioButton;

    iput-object v0, p0, Lcom/callerid/block/start/CallerActivity;->w:Lcom/rey/material/widget/RadioButton;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/n0;->V(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/callerid/block/start/CallerActivity;->v:Lcom/rey/material/widget/RadioButton;

    invoke-virtual {v0, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/callerid/block/start/CallerActivity;->w:Lcom/rey/material/widget/RadioButton;

    goto :goto_7

    :cond_7
    iget-object v0, p0, Lcom/callerid/block/start/CallerActivity;->w:Lcom/rey/material/widget/RadioButton;

    invoke-virtual {v0, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/callerid/block/start/CallerActivity;->v:Lcom/rey/material/widget/RadioButton;

    :goto_7
    invoke-virtual {v0, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/callerid/block/start/CallerActivity;->v:Lcom/rey/material/widget/RadioButton;

    new-instance v1, Lcom/callerid/block/start/CallerActivity$a;

    invoke-direct {v1, p0}, Lcom/callerid/block/start/CallerActivity$a;-><init>(Lcom/callerid/block/start/CallerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/callerid/block/start/CallerActivity;->w:Lcom/rey/material/widget/RadioButton;

    new-instance v1, Lcom/callerid/block/start/CallerActivity$b;

    invoke-direct {v1, p0}, Lcom/callerid/block/start/CallerActivity$b;-><init>(Lcom/callerid/block/start/CallerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private X()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/x0/a;->e(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/callerid/block/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0025

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/start/CallerActivity;->s:Landroid/graphics/Typeface;

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
    const p1, 0x7f090216

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/customview/LImageButton;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->P(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    new-instance v0, Lcom/callerid/block/start/CallerActivity$c;

    invoke-direct {v0, p0}, Lcom/callerid/block/start/CallerActivity$c;-><init>(Lcom/callerid/block/start/CallerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/callerid/block/start/CallerActivity;->W()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

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
    .locals 3

    invoke-super {p0}, Lcom/callerid/block/main/BaseActivity;->onResume()V

    iget-boolean v0, p0, Lcom/callerid/block/start/CallerActivity;->x:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/callerid/block/start/CallerActivity;->x:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/callerid/block/util/x0/a;->a(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/callerid/block/util/n0;->h1(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/callerid/block/start/CallerActivity;->v:Lcom/rey/material/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/callerid/block/start/CallerActivity;->w:Lcom/rey/material/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v1

    iput-boolean v0, v1, Lcom/callerid/block/main/EZCallApplication;->b:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.callerid.block.CLOSE_NOTIFI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Ld/p/a/a;->d(Landroid/content/Intent;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/callerid/block/util/n0;->h1(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/callerid/block/start/CallerActivity;->v:Lcom/rey/material/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/callerid/block/start/CallerActivity;->w:Lcom/rey/material/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method
