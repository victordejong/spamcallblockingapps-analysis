.class public Lcom/callerid/block/start/BlockSettingActivity;
.super Lcom/callerid/block/main/BaseActivity;
.source ""


# instance fields
.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Lcom/rey/material/widget/Switch;

.field private w:Lcom/rey/material/widget/Switch;

.field private x:Lcom/rey/material/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/main/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic Q(Lcom/callerid/block/start/BlockSettingActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/BlockSettingActivity;->s:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic R(Lcom/callerid/block/start/BlockSettingActivity;)Lcom/rey/material/widget/Switch;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/BlockSettingActivity;->v:Lcom/rey/material/widget/Switch;

    return-object p0
.end method

.method static synthetic S(Lcom/callerid/block/start/BlockSettingActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/BlockSettingActivity;->t:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic T(Lcom/callerid/block/start/BlockSettingActivity;)Lcom/rey/material/widget/Switch;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/BlockSettingActivity;->w:Lcom/rey/material/widget/Switch;

    return-object p0
.end method

.method static synthetic U(Lcom/callerid/block/start/BlockSettingActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/BlockSettingActivity;->u:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic V(Lcom/callerid/block/start/BlockSettingActivity;)Lcom/rey/material/widget/Switch;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/BlockSettingActivity;->x:Lcom/rey/material/widget/Switch;

    return-object p0
.end method


# virtual methods
.method public W()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/n0;->y(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/callerid/block/start/BlockSettingActivity;->v:Lcom/rey/material/widget/Switch;

    invoke-virtual {v1, v0}, Lcom/rey/material/widget/Switch;->setChecked(Z)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/start/BlockSettingActivity;->s:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000e3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/start/BlockSettingActivity;->s:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000e2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public X()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/n0;->z(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/callerid/block/start/BlockSettingActivity;->w:Lcom/rey/material/widget/Switch;

    invoke-virtual {v1, v0}, Lcom/rey/material/widget/Switch;->setChecked(Z)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/start/BlockSettingActivity;->t:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000e4

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/start/BlockSettingActivity;->t:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000e2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public Y()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/n0;->A(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/callerid/block/start/BlockSettingActivity;->x:Lcom/rey/material/widget/Switch;

    invoke-virtual {v1, v0}, Lcom/rey/material/widget/Switch;->setChecked(Z)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/start/BlockSettingActivity;->u:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001de

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/start/BlockSettingActivity;->u:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000e2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/callerid/block/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0023

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
    const p1, 0x7f0903a7

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f09017d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/customview/LImageButton;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/callerid/block/util/t0;->P(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    new-instance v1, Lcom/callerid/block/start/BlockSettingActivity$a;

    invoke-direct {v1, p0}, Lcom/callerid/block/start/BlockSettingActivity$a;-><init>(Lcom/callerid/block/start/BlockSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x7f0903a9

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x7f0903aa

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x7f0903af

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x7f090490

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x7f09035f

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callerid/block/start/BlockSettingActivity;->s:Landroid/widget/TextView;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x7f090491

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callerid/block/start/BlockSettingActivity;->u:Landroid/widget/TextView;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x7f090358

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/rey/material/widget/Switch;

    iput-object p1, p0, Lcom/callerid/block/start/BlockSettingActivity;->v:Lcom/rey/material/widget/Switch;

    const p1, 0x7f09035e

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callerid/block/start/BlockSettingActivity;->t:Landroid/widget/TextView;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x7f090360

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/rey/material/widget/Switch;

    iput-object p1, p0, Lcom/callerid/block/start/BlockSettingActivity;->w:Lcom/rey/material/widget/Switch;

    const p1, 0x7f090362

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/rey/material/widget/Switch;

    iput-object p1, p0, Lcom/callerid/block/start/BlockSettingActivity;->x:Lcom/rey/material/widget/Switch;

    iget-object p1, p0, Lcom/callerid/block/start/BlockSettingActivity;->v:Lcom/rey/material/widget/Switch;

    new-instance v0, Lcom/callerid/block/start/BlockSettingActivity$b;

    invoke-direct {v0, p0}, Lcom/callerid/block/start/BlockSettingActivity$b;-><init>(Lcom/callerid/block/start/BlockSettingActivity;)V

    invoke-virtual {p1, v0}, Lcom/rey/material/widget/Switch;->setOnCheckedChangeListener(Lcom/rey/material/widget/Switch$b;)V

    iget-object p1, p0, Lcom/callerid/block/start/BlockSettingActivity;->w:Lcom/rey/material/widget/Switch;

    new-instance v0, Lcom/callerid/block/start/BlockSettingActivity$c;

    invoke-direct {v0, p0}, Lcom/callerid/block/start/BlockSettingActivity$c;-><init>(Lcom/callerid/block/start/BlockSettingActivity;)V

    invoke-virtual {p1, v0}, Lcom/rey/material/widget/Switch;->setOnCheckedChangeListener(Lcom/rey/material/widget/Switch$b;)V

    iget-object p1, p0, Lcom/callerid/block/start/BlockSettingActivity;->x:Lcom/rey/material/widget/Switch;

    new-instance v0, Lcom/callerid/block/start/BlockSettingActivity$d;

    invoke-direct {v0, p0}, Lcom/callerid/block/start/BlockSettingActivity$d;-><init>(Lcom/callerid/block/start/BlockSettingActivity;)V

    invoke-virtual {p1, v0}, Lcom/rey/material/widget/Switch;->setOnCheckedChangeListener(Lcom/rey/material/widget/Switch$b;)V

    invoke-virtual {p0}, Lcom/callerid/block/start/BlockSettingActivity;->W()V

    invoke-virtual {p0}, Lcom/callerid/block/start/BlockSettingActivity;->X()V

    invoke-virtual {p0}, Lcom/callerid/block/start/BlockSettingActivity;->Y()V

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
    .locals 0

    invoke-super {p0}, Lcom/callerid/block/main/BaseActivity;->onResume()V

    return-void
.end method
