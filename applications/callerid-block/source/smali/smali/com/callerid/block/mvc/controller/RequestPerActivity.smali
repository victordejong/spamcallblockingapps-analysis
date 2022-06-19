.class public Lcom/callerid/block/mvc/controller/RequestPerActivity;
.super Lcom/callerid/block/main/BaseActivity;
.source ""


# instance fields
.field private A:Lcom/callerid/block/e/b;

.field private B:Z

.field private s:Landroid/graphics/Typeface;

.field private t:Landroid/graphics/Typeface;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/FrameLayout;

.field private x:Landroid/widget/TextView;

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/callerid/block/main/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->B:Z

    return-void
.end method

.method static synthetic Q(Lcom/callerid/block/mvc/controller/RequestPerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/RequestPerActivity;->V()V

    return-void
.end method

.method static synthetic R(Lcom/callerid/block/mvc/controller/RequestPerActivity;)Lcom/callerid/block/e/b;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->A:Lcom/callerid/block/e/b;

    return-object p0
.end method

.method static synthetic S(Lcom/callerid/block/mvc/controller/RequestPerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/RequestPerActivity;->Y()V

    return-void
.end method

.method static synthetic T(Lcom/callerid/block/mvc/controller/RequestPerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/RequestPerActivity;->W()V

    return-void
.end method

.method static synthetic U(Lcom/callerid/block/mvc/controller/RequestPerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->z:Z

    return p0
.end method

.method private V()V
    .locals 2

    iget-boolean v0, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->y:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "ou_meng_dialog_show"

    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/RequestPerActivity;->Z()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/RequestPerActivity;->Y()V

    :goto_0
    return-void
.end method

.method private W()V
    .locals 2

    invoke-static {}, Lcom/callerid/block/util/n;->a()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-boolean v1, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->z:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/callerid/block/util/x0/a;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-class v1, Lcom/callerid/block/mvc/controller/OverlayPerActivity;

    goto :goto_1

    :cond_1
    :goto_0
    const-class v1, Lcom/callerid/block/main/MainActivity;

    :goto_1
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private X(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/x0/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/x0/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/RequestPerActivity;->W()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->z:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "is_default_but_per_not_enabled"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/RequestPerActivity;->a0()V

    :goto_0
    return-void
.end method

.method private Y()V
    .locals 8

    const-string v0, "android.app.role.DIALER"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-lt v1, v3, :cond_8

    iget-boolean v3, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->z:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v3

    const-string v4, "android_version_m"

    invoke-virtual {v3, v4}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/callerid/block/util/x0/a;->g(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget-boolean v0, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->z:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "first_already_enable_dialer"

    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, v4}, Lcom/callerid/block/mvc/controller/RequestPerActivity;->X(Z)V

    goto/16 :goto_1

    :cond_2
    const/16 v3, 0x1d

    const-string v5, "first_request_default_dialer"

    const/16 v6, 0x3e7

    if-lt v1, v3, :cond_6

    :try_start_0
    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/role/RoleManager;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v0}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v1, v0}, Landroid/app/role/RoleManager;->isRoleHeld(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "default_dialer"

    if-eqz v3, :cond_4

    :try_start_1
    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "This app is the default dialer app"

    invoke-static {v7, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, v4}, Lcom/callerid/block/mvc/controller/RequestPerActivity;->X(Z)V

    goto :goto_1

    :cond_4
    sget-boolean v3, Lcom/callerid/block/util/w;->a:Z

    if-eqz v3, :cond_5

    const-string v3, "This app isn\'t the default dialer app"

    invoke-static {v7, v3}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1, v0}, Landroid/app/role/RoleManager;->createRequestRoleIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-boolean v0, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->z:Z

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, v5}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telecom.action.CHANGE_DEFAULT_DIALER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v6}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-boolean v0, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->z:Z

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->z:Z

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v1

    const-string v3, "request_default_dialer_exception"

    invoke-virtual {v1, v3}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_7
    invoke-direct {p0, v2}, Lcom/callerid/block/mvc/controller/RequestPerActivity;->X(Z)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_8
    iget-boolean v0, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->z:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "android_version_less_m"

    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_9
    invoke-direct {p0, v2}, Lcom/callerid/block/mvc/controller/RequestPerActivity;->X(Z)V

    :cond_a
    :goto_1
    return-void
.end method

.method private Z()V
    .locals 3

    new-instance v0, Lcom/callerid/block/e/b;

    new-instance v1, Lcom/callerid/block/mvc/controller/RequestPerActivity$b;

    invoke-direct {v1, p0}, Lcom/callerid/block/mvc/controller/RequestPerActivity$b;-><init>(Lcom/callerid/block/mvc/controller/RequestPerActivity;)V

    const v2, 0x7f1100e8

    invoke-direct {v0, p0, v2, v1}, Lcom/callerid/block/e/b;-><init>(Landroid/content/Context;ILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->A:Lcom/callerid/block/e/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->A:Lcom/callerid/block/e/b;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private a0()V
    .locals 2

    iget-boolean v0, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->z:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "request_permission_dialog_click"

    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/callerid/block/mvc/controller/RequestPerActivity$c;

    invoke-direct {v0, p0}, Lcom/callerid/block/mvc/controller/RequestPerActivity$c;-><init>(Lcom/callerid/block/mvc/controller/RequestPerActivity;)V

    invoke-static {p0, v0}, Lcom/callerid/block/util/x0/a;->j(Landroid/app/Activity;Lcom/callerid/block/util/x0/a$g;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x3e7

    if-ne p1, p2, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/x0/a;->g(Landroid/content/Context;)Z

    move-result p1

    const-string p2, "default_dialer"

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->z:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string p3, "first_request_default_dialer_enabled"

    invoke-virtual {p1, p3}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/callerid/block/mvc/controller/RequestPerActivity;->X(Z)V

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_2

    const-string p1, "isEnable"

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/callerid/block/mvc/controller/RequestPerActivity;->X(Z)V

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_2

    const-string p1, "notEnable"

    :goto_0
    invoke-static {p2, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/callerid/block/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0032

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->s:Landroid/graphics/Typeface;

    invoke-static {}, Lcom/callerid/block/util/r0;->a()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->t:Landroid/graphics/Typeface;

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "request_per_show"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    const p1, 0x7f090489

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->u:Landroid/widget/TextView;

    const p1, 0x7f0903c7

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->v:Landroid/widget/TextView;

    const p1, 0x7f0903c8

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f090136

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->w:Landroid/widget/FrameLayout;

    const v0, 0x7f0903f5

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->x:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->u:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->t:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->x:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/b;->b(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->y:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "is_first"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->z:Z

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->w:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/callerid/block/mvc/controller/RequestPerActivity$a;

    invoke-direct {v0, p0}, Lcom/callerid/block/mvc/controller/RequestPerActivity$a;-><init>(Lcom/callerid/block/mvc/controller/RequestPerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/RequestPerActivity;->V()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->B:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity;->B:Z

    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/RequestPerActivity;->V()V

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MAIN"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p2, "android.intent.category.HOME"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
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
