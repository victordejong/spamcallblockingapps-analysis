.class public Lcom/allinone/callerid/start/SelfStartAcitity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "SelfStartAcitity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final u:Ljava/lang/String;

.field private v:Landroid/widget/RelativeLayout;

.field private w:Landroid/widget/RelativeLayout;

.field private x:Z

.field private y:Lcom/allinone/callerid/util/w;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "SelfStartAcitity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/start/SelfStartAcitity;->u:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/allinone/callerid/start/SelfStartAcitity;->x:Z

    return-void
.end method

.method private X()V
    .locals 2

    .line 1
    new-instance v0, Lcom/allinone/callerid/util/w;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/util/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/allinone/callerid/start/SelfStartAcitity;->y:Lcom/allinone/callerid/util/w;

    .line 2
    new-instance v1, Lcom/allinone/callerid/start/SelfStartAcitity$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/start/SelfStartAcitity$a;-><init>(Lcom/allinone/callerid/start/SelfStartAcitity;)V

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/w;->b(Lcom/allinone/callerid/util/w$b;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/start/SelfStartAcitity;->y:Lcom/allinone/callerid/util/w;

    invoke-virtual {v0}, Lcom/allinone/callerid/util/w;->c()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x6f

    const/4 v1, 0x1

    const-string v2, "isopen"

    const v3, 0x7f010001

    const/high16 v4, 0x7f010000

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iput-boolean v1, p0, Lcom/allinone/callerid/start/SelfStartAcitity;->x:Z

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "selfactivity_continue"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/allinone/callerid/util/g0;

    invoke-direct {p1}, Lcom/allinone/callerid/util/g0;-><init>()V

    invoke-virtual {p1, p0}, Lcom/allinone/callerid/util/g0;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 5
    :pswitch_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v1, "selfactivity_notenable"

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/allinone/callerid/util/a1;->D2(Ljava/lang/Boolean;)V

    .line 7
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 11
    invoke-virtual {p0, v4, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 12
    :pswitch_2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v5, "selfactivity_enable"

    invoke-virtual {p1, v5}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 13
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 14
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 15
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 17
    invoke-virtual {p0, v4, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 18
    :pswitch_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 19
    invoke-virtual {p0, v4, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f09008f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f060121

    .line 2
    invoke-static {p0, p1}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/allinone/callerid/util/h1;->C0(Landroid/app/Activity;I)V

    const p1, 0x7f0c005f

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "selfactivity_show"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object p1

    const v0, 0x7f0904df

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/allinone/callerid/start/SelfStartAcitity;->v:Landroid/widget/RelativeLayout;

    const v0, 0x7f090503

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/allinone/callerid/start/SelfStartAcitity;->w:Landroid/widget/RelativeLayout;

    const v0, 0x7f09063e

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090797

    .line 9
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090798

    .line 10
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09074a

    .line 11
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0906e8

    .line 12
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090678

    .line 13
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f090749

    .line 14
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f090092

    .line 15
    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    const v8, 0x7f09008f

    .line 16
    invoke-virtual {p0, v8}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    const v9, 0x7f090090

    .line 17
    invoke-virtual {p0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    const v10, 0x7f090091

    .line 18
    invoke-virtual {p0, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 20
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 21
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 22
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 23
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 24
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 25
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 26
    invoke-virtual {v8, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    invoke-virtual {v7, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    invoke-virtual {v9, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    invoke-virtual {v10, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    invoke-direct {p0}, Lcom/allinone/callerid/start/SelfStartAcitity;->X()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/start/SelfStartAcitity;->y:Lcom/allinone/callerid/util/w;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/allinone/callerid/util/w;->d()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onPause()V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/j0;->b()Lcom/allinone/callerid/util/j0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/allinone/callerid/util/j0;->c(Landroid/content/Context;)V

    .line 3
    iget-boolean v0, p0, Lcom/allinone/callerid/start/SelfStartAcitity;->x:Z

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/start/SelfStartAcitity;->w:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/start/SelfStartAcitity;->v:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/start/SelfStartAcitity;->w:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 8
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "selfactivity_second_show"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 10
    const-class v1, Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    .line 12
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onResume()V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/j0;->b()Lcom/allinone/callerid/util/j0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/allinone/callerid/util/j0;->c(Landroid/content/Context;)V

    return-void
.end method
