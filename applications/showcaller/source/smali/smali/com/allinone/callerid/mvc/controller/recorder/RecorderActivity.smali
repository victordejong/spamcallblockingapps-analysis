.class public Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "RecorderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private u:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

.field private v:Lcom/allinone/callerid/mvc/controller/recorder/a;

.field private w:Ljava/lang/Boolean;

.field private x:Ljava/lang/Boolean;

.field private y:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic X(Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->Z()V

    return-void
.end method

.method private Y()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x25eb

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private Z()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method private a0()V
    .locals 7

    const v0, 0x7f090499

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f09049d

    .line 2
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09049a

    .line 3
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f09049c

    .line 4
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;

    .line 5
    iget-object v4, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->w:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->x:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->d0()V

    :cond_0
    const v4, 0x7f040124

    const v5, 0x7f06004f

    .line 7
    invoke-static {p0, v4, v5}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v4

    iput v4, v3, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->r:I

    const v4, 0x7f040145

    const v5, 0x7f06005e

    .line 8
    invoke-static {p0, v4, v5}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v6

    iput v6, v3, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->q:I

    .line 9
    invoke-static {p0, v4, v5}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->setIndicatorColor(I)V

    const/16 v4, 0x10

    .line 10
    iput v4, v3, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->B:I

    const/4 v4, 0x0

    .line 11
    iput v4, v3, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->s:I

    const v4, 0x7f09049e

    .line 12
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/allinone/callerid/main/CustomViewPager;

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x7f08015b

    .line 14
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 16
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    new-instance v0, Lcom/allinone/callerid/b/z/h;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->A()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/allinone/callerid/b/z/h;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 19
    new-instance v1, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-direct {v1}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;-><init>()V

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->u:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    .line 20
    new-instance v1, Lcom/allinone/callerid/mvc/controller/recorder/a;

    invoke-direct {v1}, Lcom/allinone/callerid/mvc/controller/recorder/a;-><init>()V

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->v:Lcom/allinone/callerid/mvc/controller/recorder/a;

    .line 21
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->u:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    const v2, 0x7f1002bd

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/allinone/callerid/b/z/h;->y(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->v:Lcom/allinone/callerid/mvc/controller/recorder/a;

    const v2, 0x7f10034a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/allinone/callerid/b/z/h;->y(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v4, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    .line 24
    invoke-virtual {v3, v4}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method


# virtual methods
.method public b0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->v:Lcom/allinone/callerid/mvc/controller/recorder/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/allinone/callerid/mvc/controller/recorder/a;->k2()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->u:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->o2()V

    :cond_1
    return-void
.end method

.method public c0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->w:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/allinone/callerid/util/recorder/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "record_setting_guide"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->d0()V

    :cond_0
    return-void
.end method

.method public d0()V
    .locals 6

    .line 1
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f110234

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0c0126

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f0903b5

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0907db

    .line 4
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 8
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    const/4 v5, -0x1

    .line 9
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 10
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 11
    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 12
    :cond_0
    new-instance v3, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity$a;

    invoke-direct {v3, p0, v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity$a;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    new-instance v1, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity$b;

    invoke-direct {v1, p0, v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity$b;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/allinone/callerid/util/recorder/b;->o(Ljava/lang/Boolean;)V

    .line 3
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->Z()V

    goto :goto_0

    .line 4
    :pswitch_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/allinone/callerid/util/recorder/b;->o(Ljava/lang/Boolean;)V

    .line 5
    iget-boolean p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->y:Z

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 p1, 0x7f010000

    const v0, 0x7f010001

    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f090499
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0056

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/recorder/b;->c()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->w:Ljava/lang/Boolean;

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->w:Ljava/lang/Boolean;

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "record_success"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string v3, "recorder"

    if-eqz p1, :cond_2

    .line 8
    iput-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->y:Z

    .line 9
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v4, "record_push_click"

    invoke-virtual {p1, v4}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 10
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_1

    .line 11
    invoke-static {v3, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->Y()V

    .line 13
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "record_success_upload"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 14
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 15
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_3

    .line 16
    invoke-static {v3, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_3
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->Y()V

    .line 18
    :cond_4
    invoke-static {}, Lcom/allinone/callerid/util/recorder/b;->e()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 19
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->x:Ljava/lang/Boolean;

    goto :goto_1

    .line 20
    :cond_5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->x:Ljava/lang/Boolean;

    .line 21
    :goto_1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->a0()V

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 23
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt p1, v1, :cond_6

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_6
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/allinone/callerid/util/recorder/b;->o(Ljava/lang/Boolean;)V

    .line 2
    iget-boolean p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;->y:Z

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 p1, 0x7f010000

    const p2, 0x7f010001

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 6
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
