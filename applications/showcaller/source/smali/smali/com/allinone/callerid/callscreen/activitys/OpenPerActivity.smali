.class public Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "OpenPerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/widget/FrameLayout;

.field private C:Landroid/widget/ImageView;

.field private D:Landroid/graphics/Typeface;

.field private E:Landroid/widget/RelativeLayout;

.field private F:Landroid/widget/RelativeLayout;

.field private G:Landroid/widget/RelativeLayout;

.field private H:Landroid/widget/RelativeLayout;

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Ljava/util/Timer;

.field private M:Ljava/util/TimerTask;

.field private N:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

.field private O:Z

.field private final u:Ljava/lang/String;

.field private v:Landroid/widget/FrameLayout;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/widget/FrameLayout;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "OpenPerActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->u:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->I:Z

    return-void
.end method

.method private C()V
    .locals 15

    const v0, 0x7f090703

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0906eb

    .line 2
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0906ed

    .line 3
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090214

    .line 4
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->v:Landroid/widget/FrameLayout;

    const v3, 0x7f090753

    .line 5
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090319

    .line 6
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->w:Landroid/widget/ImageView;

    const v4, 0x7f090744

    .line 7
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090745

    .line 8
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f090217

    .line 9
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->x:Landroid/widget/FrameLayout;

    const v6, 0x7f090756

    .line 10
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f09031c

    .line 11
    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->y:Landroid/widget/ImageView;

    const v7, 0x7f09073c

    .line 12
    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f09073d

    .line 13
    invoke-virtual {p0, v8}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f090216

    .line 14
    invoke-virtual {p0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    iput-object v9, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->z:Landroid/widget/FrameLayout;

    const v9, 0x7f090755

    .line 15
    invoke-virtual {p0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f09031b

    .line 16
    invoke-virtual {p0, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->A:Landroid/widget/ImageView;

    const v10, 0x7f0906fe

    .line 17
    invoke-virtual {p0, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f0906ff

    .line 18
    invoke-virtual {p0, v11}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f090215

    .line 19
    invoke-virtual {p0, v12}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    iput-object v12, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->B:Landroid/widget/FrameLayout;

    const v12, 0x7f090754

    .line 20
    invoke-virtual {p0, v12}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v13, 0x7f09031a

    .line 21
    invoke-virtual {p0, v13}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->C:Landroid/widget/ImageView;

    const v13, 0x7f0902ca

    .line 22
    invoke-virtual {p0, v13}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    const v14, 0x7f0904f3

    .line 23
    invoke-virtual {p0, v14}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    iput-object v14, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->E:Landroid/widget/RelativeLayout;

    const v14, 0x7f090501

    .line 24
    invoke-virtual {p0, v14}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    iput-object v14, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->F:Landroid/widget/RelativeLayout;

    const v14, 0x7f090500

    .line 25
    invoke-virtual {p0, v14}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    iput-object v14, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->G:Landroid/widget/RelativeLayout;

    const v14, 0x7f0904f6

    .line 26
    invoke-virtual {p0, v14}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    iput-object v14, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->H:Landroid/widget/RelativeLayout;

    .line 27
    invoke-virtual {v13, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v13, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v13, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v13, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->x:Landroid/widget/FrameLayout;

    invoke-virtual {v13, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v13, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v13, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v13, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v13, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v13, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->D:Landroid/graphics/Typeface;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 33
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->D:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 34
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->D:Landroid/graphics/Typeface;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 35
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->D:Landroid/graphics/Typeface;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 36
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->D:Landroid/graphics/Typeface;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 37
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->D:Landroid/graphics/Typeface;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 38
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->D:Landroid/graphics/Typeface;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 39
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->D:Landroid/graphics/Typeface;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 40
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->D:Landroid/graphics/Typeface;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 41
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->D:Landroid/graphics/Typeface;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 42
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->D:Landroid/graphics/Typeface;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 43
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->D:Landroid/graphics/Typeface;

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 44
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->D:Landroid/graphics/Typeface;

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic X(Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->f0()V

    return-void
.end method

.method static synthetic Y(Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->x:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic Z(Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->y:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic a0(Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->c0()V

    return-void
.end method

.method static synthetic b0(Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->g0()V

    return-void
.end method

.method private c0()V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->N:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    const v1, 0x7f010001

    const/high16 v2, 0x7f010000

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isUnLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "homeinfo"

    .line 4
    iget-object v4, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->N:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 6
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 7
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v3, "callscreen_all_per_open"

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    const/16 v0, 0x3d4

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 10
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private d0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/app/a$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100267

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a$a;->q(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$a;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100266

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a$a;->h(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$a;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10018a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity$b;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity$b;-><init>(Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/a$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity$a;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity$a;-><init>(Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/a$a;->j(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/app/a$a;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v1, -0x1

    .line 9
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->g(I)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f04011b

    const v3, 0x7f06003a

    invoke-static {p0, v2, v3}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v1, -0x2

    .line 10
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->g(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 11
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "callscreen_leave_per"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    .line 13
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method

.method private e0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "homeinfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->N:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_diy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->O:Z

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/j1/a;->j()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->E:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->E:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 12
    :goto_2
    invoke-static {}, Lcom/allinone/callerid/util/j1/a;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->H:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->H:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method private f0()V
    .locals 5

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "callscreen"

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "judgeNotifiPer"

    .line 2
    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/j1/a;->l()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "\u5f00\u542f\u4e86"

    .line 5
    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->M:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->a(Landroid/content/Context;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "homeinfo"

    const v2, 0x7f010001

    const/high16 v3, 0x7f010000

    if-eqz v0, :cond_6

    .line 8
    :try_start_2
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->N:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    if-eqz v0, :cond_5

    .line 9
    iget-boolean v4, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->O:Z

    if-eqz v4, :cond_4

    .line 10
    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isContacts_diy()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->N:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isDefautl_diy()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 13
    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    .line 14
    :cond_3
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 16
    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    .line 17
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    iget-object v4, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->N:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 19
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 20
    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 21
    :cond_5
    :goto_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "callscreen_all_per_open"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 23
    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_2

    .line 24
    :cond_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 25
    const-class v4, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;

    invoke-virtual {v0, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 26
    iget-object v4, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->N:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    if-eqz v4, :cond_7

    .line 27
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "is_diy"

    .line 28
    iget-boolean v4, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->O:Z

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 29
    :cond_7
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 30
    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_2
    return-void
.end method

.method private g0()V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->M:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->a(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "homeinfo"

    const v2, 0x7f010001

    const/high16 v3, 0x7f010000

    if-eqz v0, :cond_4

    .line 4
    :try_start_1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->N:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    if-eqz v0, :cond_3

    .line 5
    iget-boolean v4, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->O:Z

    if-eqz v4, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isContacts_diy()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->N:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isDefautl_diy()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 9
    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 12
    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isUnLock()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    iget-object v4, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->N:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 16
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 17
    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 18
    :cond_3
    :goto_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "callscreen_all_per_open"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 20
    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_2

    .line 21
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 22
    const-class v4, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;

    invoke-virtual {v0, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 23
    iget-object v4, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->N:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    if-eqz v4, :cond_5

    .line 24
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "is_diy"

    .line 25
    iget-boolean v4, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->O:Z

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 26
    :cond_5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 27
    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0902ca

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "callscreen_sdcard_per_request"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity$d;

    invoke-direct {p1, p0}, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity$d;-><init>(Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;)V

    invoke-static {p0, p1}, Lcom/allinone/callerid/util/j1/a;->r(Landroid/app/Activity;Lcom/allinone/callerid/util/j1/a$g;)V

    goto :goto_0

    .line 4
    :pswitch_1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v1, "callscreen_ringtone_per_request"

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/j1/a;->s(Landroid/content/Context;)V

    .line 6
    iput-boolean v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->J:Z

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->M:Ljava/util/TimerTask;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    .line 9
    :cond_0
    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity$e;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity$e;-><init>(Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;)V

    iput-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->M:Ljava/util/TimerTask;

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->L:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 12
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/j1/a;->p(Landroid/content/Context;)V

    .line 13
    iput-boolean v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->K:Z

    goto :goto_0

    .line 14
    :pswitch_3
    :try_start_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v1, "callscreen_notifi_per_request"

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/j1/b;->c(Landroid/content/Context;)Z

    .line 16
    iput-boolean v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->I:Z

    .line 17
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->M:Ljava/util/TimerTask;

    if-eqz p1, :cond_1

    .line 18
    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    .line 19
    :cond_1
    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity$c;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity$c;-><init>(Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;)V

    iput-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->M:Ljava/util/TimerTask;

    .line 20
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->L:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 22
    :cond_2
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->d0()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090214
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c005c

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->D:Landroid/graphics/Typeface;

    .line 4
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->C()V

    .line 5
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->e0()V

    .line 6
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "callscreen_per_open"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 7
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->L:Ljava/util/Timer;

    .line 8
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "callscreen"

    const-string v0, "onCreate"

    .line 9
    invoke-static {p1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->M:Ljava/util/TimerTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 4
    iput-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->M:Ljava/util/TimerTask;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->L:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 7
    iput-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->L:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->d0()V

    const/4 p1, 0x1

    return p1

    .line 2
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
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onResume()V

    .line 2
    :try_start_0
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "callscreen"

    const-string v1, "onResume"

    .line 3
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->M:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 6
    :cond_1
    iget-boolean v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->I:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 7
    iput-boolean v2, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->I:Z

    .line 8
    invoke-static {}, Lcom/allinone/callerid/util/j1/a;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->c0()V

    .line 12
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v3, "callscreen_notifi_per_open"

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 13
    :cond_2
    iget-boolean v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->J:Z

    if-eqz v0, :cond_3

    .line 14
    iput-boolean v2, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->J:Z

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->c0()V

    .line 19
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v3, "callscreen_ringtone_per_open"

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 20
    :cond_3
    iget-boolean v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->K:Z

    if-eqz v0, :cond_4

    .line 21
    iput-boolean v2, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->K:Z

    .line 22
    invoke-static {}, Lcom/allinone/callerid/util/j1/a;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 23
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 24
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;->c0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method
