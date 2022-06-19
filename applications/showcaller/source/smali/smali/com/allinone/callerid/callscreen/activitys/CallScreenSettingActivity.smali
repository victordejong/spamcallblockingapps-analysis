.class public Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "CallScreenSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/TextView;

.field private final u:Ljava/lang/String;

.field private v:Landroid/widget/Switch;

.field private w:Landroid/widget/FrameLayout;

.field private x:Landroid/widget/Switch;

.field private y:Landroid/graphics/Typeface;

.field private z:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "CallScreenSettingActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->u:Ljava/lang/String;

    return-void
.end method

.method static synthetic X(Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->y:Landroid/graphics/Typeface;

    return-object p1
.end method

.method static synthetic Y(Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->b0()V

    return-void
.end method

.method static synthetic Z(Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->a0()V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->w:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->w:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->v:Landroid/widget/Switch;

    invoke-static {}, Lcom/allinone/callerid/d/f/f;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->x:Landroid/widget/Switch;

    invoke-static {}, Lcom/allinone/callerid/d/f/f;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->v:Landroid/widget/Switch;

    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$b;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->x:Landroid/widget/Switch;

    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$c;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$c;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private b0()V
    .locals 13

    const v0, 0x7f0902b7

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f08015b

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    const v1, 0x7f09074e

    .line 4
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090633

    .line 5
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0905a0

    .line 6
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->v:Landroid/widget/Switch;

    const v3, 0x7f090201

    .line 7
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->w:Landroid/widget/FrameLayout;

    const v3, 0x7f090700

    .line 8
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090702

    .line 9
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090225

    .line 10
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    const v6, 0x7f0907ae

    .line 11
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0907af

    .line 12
    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0907b8

    .line 13
    invoke-virtual {p0, v8}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0907b7

    .line 14
    invoke-virtual {p0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0905b4

    .line 15
    invoke-virtual {p0, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Switch;

    iput-object v10, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->x:Landroid/widget/Switch;

    const v10, 0x7f0901d8

    .line 16
    invoke-virtual {p0, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    const v11, 0x7f09062d

    .line 17
    invoke-virtual {p0, v11}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f090226

    .line 18
    invoke-virtual {p0, v12}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    iput-object v12, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->z:Landroid/widget/FrameLayout;

    const v12, 0x7f0907b1

    .line 19
    invoke-virtual {p0, v12}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->A:Landroid/widget/TextView;

    .line 20
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    invoke-virtual {v5, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    invoke-virtual {v10, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->y:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 26
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->y:Landroid/graphics/Typeface;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 27
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->y:Landroid/graphics/Typeface;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 28
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->y:Landroid/graphics/Typeface;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 29
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->y:Landroid/graphics/Typeface;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 30
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->y:Landroid/graphics/Typeface;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 31
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->y:Landroid/graphics/Typeface;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 32
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->y:Landroid/graphics/Typeface;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 33
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->y:Landroid/graphics/Typeface;

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 34
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->A:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->y:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/j1/a;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->w:Landroid/widget/FrameLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->w:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f010001

    const/high16 v1, 0x7f010000

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 4
    :sswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v2, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 6
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 7
    :sswitch_2
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 8
    const-class v2, Lcom/allinone/callerid/callscreen/activitys/CallScreenUploadActivity;

    invoke-virtual {p1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 10
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 12
    :sswitch_3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 13
    const-class v2, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;

    invoke-virtual {p1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/16 v2, 0x271a

    .line 14
    invoke-virtual {p0, p1, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 15
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 16
    :sswitch_4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 17
    new-instance p1, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$d;

    invoke-direct {p1, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$d;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;)V

    .line 18
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0901d8 -> :sswitch_4
        0x7f090201 -> :sswitch_3
        0x7f090225 -> :sswitch_2
        0x7f090226 -> :sswitch_1
        0x7f0902b7 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0032

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
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$a;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

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
