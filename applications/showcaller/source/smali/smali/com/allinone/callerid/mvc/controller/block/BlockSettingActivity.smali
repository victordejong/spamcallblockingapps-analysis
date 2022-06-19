.class public Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "BlockSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/Switch;

.field private B:Landroid/widget/LinearLayout;

.field private C:Landroid/widget/FrameLayout;

.field private D:Landroid/widget/FrameLayout;

.field private E:Landroid/widget/FrameLayout;

.field private F:Landroid/widget/FrameLayout;

.field private G:Z

.field private H:I

.field private final u:Ljava/lang/String;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/Switch;

.field private z:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "BlockSettingActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->u:Ljava/lang/String;

    return-void
.end method

.method private X()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100278

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100277

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100333

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$b;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$b;-><init>(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v1, -0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iget v2, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->H:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v1, -0x2

    .line 8
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic Y(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->H:I

    return p1
.end method

.method static synthetic Z(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;)Landroid/widget/Switch;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->z:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic a0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;Landroid/widget/Switch;)Landroid/widget/Switch;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->z:Landroid/widget/Switch;

    return-object p1
.end method

.method static synthetic b0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->D:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic c0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;)Landroid/widget/Switch;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->A:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic d0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;Landroid/widget/Switch;)Landroid/widget/Switch;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->A:Landroid/widget/Switch;

    return-object p1
.end method

.method static synthetic e0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->s0()V

    return-void
.end method

.method static synthetic f0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->E:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic g0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->F:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic h0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->C:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic i0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->B:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic j0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->v:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic k0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->v:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic l0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->x:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic m0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->x:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic n0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;)Landroid/widget/Switch;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->y:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic o0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;Landroid/widget/Switch;)Landroid/widget/Switch;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->y:Landroid/widget/Switch;

    return-object p1
.end method

.method static synthetic p0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->w:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic q0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->w:Landroid/widget/TextView;

    return-object p1
.end method

.method private s0()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/util/a1;->x2()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_0

    const/16 v3, 0x1c

    if-ge v0, v3, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/b;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v3, "setting_norifi_per_show"

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->C:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->D:Landroid/widget/FrameLayout;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->E:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->F:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->y:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->z:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->A:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->C:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->D:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 14
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->E:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 15
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->F:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 16
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->y:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 17
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->z:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 18
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->A:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "setting_norifi_per_click"

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->X()V

    goto :goto_0

    .line 3
    :sswitch_1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->X()V

    goto :goto_0

    .line 4
    :sswitch_2
    iput-boolean v1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->G:Z

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/j1/b;->c(Landroid/content/Context;)Z

    goto :goto_0

    .line 7
    :sswitch_3
    iput-boolean v1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->G:Z

    .line 8
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/j1/b;->c(Landroid/content/Context;)Z

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090231 -> :sswitch_3
        0x7f090232 -> :sswitch_2
        0x7f0902ea -> :sswitch_1
        0x7f0907a9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0029

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;

    invoke-direct {v1, p0, p1}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;-><init>(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;Landroid/graphics/Typeface;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

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

.method protected onRestart()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 2
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->s0()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->G:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->G:Z

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "setting_norifi_per_enalbleed"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public r0()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/a1;->t()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->y:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->v:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->v:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public t0()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/a1;->u()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->z:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->w:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->w:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public u0()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/a1;->v()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->A:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->x:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100352

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->x:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
