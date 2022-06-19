.class public Lcom/callerid/block/start/GgGuideActivity;
.super Lcom/callerid/block/main/BaseActivity;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/start/GgGuideActivity$a;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/FrameLayout;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/FrameLayout;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/TextView;

.field private s:Landroid/graphics/Typeface;

.field t:Ljava/lang/String;

.field private u:Lcom/callerid/block/inapputil/GoogleBillingUtil;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Landroid/widget/TextView;

.field private y:Ljava/lang/String;

.field private z:Lcom/callerid/block/customview/LImageButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/callerid/block/main/BaseActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/callerid/block/start/GgGuideActivity;->t:Ljava/lang/String;

    const-string v0, "$0.99"

    iput-object v0, p0, Lcom/callerid/block/start/GgGuideActivity;->v:Ljava/lang/String;

    const-string v0, "$9.99"

    iput-object v0, p0, Lcom/callerid/block/start/GgGuideActivity;->w:Ljava/lang/String;

    return-void
.end method

.method static synthetic Q(Lcom/callerid/block/start/GgGuideActivity;)Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/GgGuideActivity;->s:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic R(Lcom/callerid/block/start/GgGuideActivity;)Lcom/callerid/block/inapputil/GoogleBillingUtil;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/GgGuideActivity;->u:Lcom/callerid/block/inapputil/GoogleBillingUtil;

    return-object p0
.end method

.method static synthetic S(Lcom/callerid/block/start/GgGuideActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/GgGuideActivity;->y:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic T(Lcom/callerid/block/start/GgGuideActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/GgGuideActivity;->x:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic U(Lcom/callerid/block/start/GgGuideActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/GgGuideActivity;->v:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic V(Lcom/callerid/block/start/GgGuideActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/GgGuideActivity;->v:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic W(Lcom/callerid/block/start/GgGuideActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/GgGuideActivity;->F:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic X(Lcom/callerid/block/start/GgGuideActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/GgGuideActivity;->w:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Y(Lcom/callerid/block/start/GgGuideActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/GgGuideActivity;->w:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic Z(Lcom/callerid/block/start/GgGuideActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/GgGuideActivity;->H:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic a0(Lcom/callerid/block/start/GgGuideActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/GgGuideActivity;->I:Landroid/widget/TextView;

    return-object p0
.end method

.method private b0()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "free_ad_plan_month"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "free_ad_plan"

    aput-object v2, v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->H([Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->p()Lcom/callerid/block/inapputil/GoogleBillingUtil;

    move-result-object v0

    new-instance v2, Lcom/callerid/block/start/GgGuideActivity$a;

    invoke-direct {v2, p0, v1}, Lcom/callerid/block/start/GgGuideActivity$a;-><init>(Lcom/callerid/block/start/GgGuideActivity;Lcom/callerid/block/start/GgGuideActivity$1;)V

    invoke-virtual {v0, p0, v2}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->k(Landroid/app/Activity;Lcom/callerid/block/inapputil/c;)Lcom/callerid/block/inapputil/GoogleBillingUtil;

    invoke-virtual {v0, p0}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->l(Landroid/app/Activity;)Lcom/callerid/block/inapputil/GoogleBillingUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/start/GgGuideActivity;->u:Lcom/callerid/block/inapputil/GoogleBillingUtil;

    return-void
.end method

.method private c0()V
    .locals 3

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/start/GgGuideActivity;->s:Landroid/graphics/Typeface;

    const v0, 0x7f09017d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/customview/LImageButton;

    iput-object v0, p0, Lcom/callerid/block/start/GgGuideActivity;->z:Lcom/callerid/block/customview/LImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090197

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v0, 0x7f0900e3

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/start/GgGuideActivity;->A:Landroid/widget/TextView;

    const v0, 0x7f09041c

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/start/GgGuideActivity;->B:Landroid/widget/TextView;

    const v0, 0x7f0903e8

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/start/GgGuideActivity;->C:Landroid/widget/TextView;

    const v0, 0x7f090492

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/start/GgGuideActivity;->D:Landroid/widget/TextView;

    const v0, 0x7f09014c

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/callerid/block/start/GgGuideActivity;->E:Landroid/widget/FrameLayout;

    const v0, 0x7f090414

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/start/GgGuideActivity;->F:Landroid/widget/TextView;

    const v0, 0x7f090164

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/callerid/block/start/GgGuideActivity;->G:Landroid/widget/FrameLayout;

    const v0, 0x7f09049f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/start/GgGuideActivity;->H:Landroid/widget/TextView;

    const v0, 0x7f09049e

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/start/GgGuideActivity;->I:Landroid/widget/TextView;

    const v0, 0x7f090413

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/start/GgGuideActivity;->J:Landroid/widget/TextView;

    const v0, 0x7f09043d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/start/GgGuideActivity;->x:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/callerid/block/start/GgGuideActivity;->A:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/start/GgGuideActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/start/GgGuideActivity;->B:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/start/GgGuideActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/start/GgGuideActivity;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/start/GgGuideActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/start/GgGuideActivity;->D:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/start/GgGuideActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/start/GgGuideActivity;->F:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/start/GgGuideActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/start/GgGuideActivity;->H:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/start/GgGuideActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/start/GgGuideActivity;->J:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/start/GgGuideActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/start/GgGuideActivity;->I:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/start/GgGuideActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f090411

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/start/GgGuideActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f09049c

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/start/GgGuideActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f090412

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/start/GgGuideActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f09049d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/start/GgGuideActivity;->s:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/start/GgGuideActivity;->E:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/callerid/block/start/GgGuideActivity;->G:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/callerid/block/start/GgGuideActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/callerid/block/start/GgGuideActivity;->b0()V

    iget-object v0, p0, Lcom/callerid/block/start/GgGuideActivity;->t:Ljava/lang/String;

    const-string v1, "maigou"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "wjjj"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "haha:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/start/GgGuideActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "\u6ca1\u4e70\u8fc7"

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://play.google.com/store/account/subscriptions?sku="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callerid/block/start/GgGuideActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 p1, 0x7f010000

    const v0, 0x7f010001

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    :sswitch_2
    iget-object p1, p0, Lcom/callerid/block/start/GgGuideActivity;->u:Lcom/callerid/block/inapputil/GoogleBillingUtil;

    if-eqz p1, :cond_0

    const-string v0, "free_ad_plan"

    invoke-virtual {p1, p0, v0}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->y(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "guide_year_click"

    goto :goto_0

    :sswitch_3
    iget-object p1, p0, Lcom/callerid/block/start/GgGuideActivity;->u:Lcom/callerid/block/inapputil/GoogleBillingUtil;

    if-eqz p1, :cond_1

    const-string v0, "free_ad_plan_month"

    invoke-virtual {p1, p0, v0}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->y(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "guide_month_click"

    :goto_0
    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09014c -> :sswitch_3
        0x7f090164 -> :sswitch_2
        0x7f09017d -> :sswitch_1
        0x7f09043d -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/callerid/block/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c006e

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
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "isbug"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/start/GgGuideActivity;->t:Ljava/lang/String;

    :cond_1
    invoke-direct {p0}, Lcom/callerid/block/start/GgGuideActivity;->c0()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/start/GgGuideActivity;->u:Lcom/callerid/block/inapputil/GoogleBillingUtil;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->w(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
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
