.class public Lcom/callerid/block/start/MissedCallActivity;
.super Lcom/callerid/block/main/BaseActivity;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/FrameLayout;

.field private B:Landroid/widget/FrameLayout;

.field private C:Ljava/lang/String;

.field private D:Landroid/content/Context;

.field E:Landroid/graphics/Typeface;

.field F:I

.field private G:Landroid/widget/ImageView;

.field private H:Z

.field private I:Z

.field private J:Lcom/rey/material/app/SimpleDialog$Builder;

.field private K:Z

.field private L:Lcom/callerid/block/search/CallLogBean;

.field private M:I

.field private N:Landroid/widget/FrameLayout;

.field private O:I

.field private P:Landroid/widget/FrameLayout;

.field private Q:Landroid/widget/FrameLayout;

.field private R:Landroid/widget/RelativeLayout;

.field private s:Lcom/callerid/block/search/EZSearchResult;

.field private t:Landroid/widget/LinearLayout;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/callerid/block/main/BaseActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->C:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/callerid/block/start/MissedCallActivity;->H:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/callerid/block/start/MissedCallActivity;->I:Z

    return-void
.end method

.method static synthetic Q(Lcom/callerid/block/start/MissedCallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/start/MissedCallActivity;->c0()V

    return-void
.end method

.method static synthetic R(Lcom/callerid/block/start/MissedCallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/start/MissedCallActivity;->h0()V

    return-void
.end method

.method static synthetic S(Lcom/callerid/block/start/MissedCallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/start/MissedCallActivity;->d0()V

    return-void
.end method

.method static synthetic T(Lcom/callerid/block/start/MissedCallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/start/MissedCallActivity;->e0()V

    return-void
.end method

.method static synthetic U(Lcom/callerid/block/start/MissedCallActivity;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/MissedCallActivity;->N:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic V(Lcom/callerid/block/start/MissedCallActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/MissedCallActivity;->u:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic W(Lcom/callerid/block/start/MissedCallActivity;)Lcom/callerid/block/search/EZSearchResult;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    return-object p0
.end method

.method static synthetic X(Lcom/callerid/block/start/MissedCallActivity;)Lcom/rey/material/app/SimpleDialog$Builder;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/MissedCallActivity;->J:Lcom/rey/material/app/SimpleDialog$Builder;

    return-object p0
.end method

.method static synthetic Y(Lcom/callerid/block/start/MissedCallActivity;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/MissedCallActivity;->P:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic Z(Lcom/callerid/block/start/MissedCallActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/MissedCallActivity;->R:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private a0()V
    .locals 5

    iget-boolean v0, p0, Lcom/callerid/block/start/MissedCallActivity;->H:Z

    const v1, 0x7f010001

    const/high16 v2, 0x7f010000

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetIsShowRateDialog:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/callerid/block/util/n0;->F(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "tony"

    invoke-static {v3, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetIsSpamOrName:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/callerid/block/util/n0;->G(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/n0;->F(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/n0;->G(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/callerid/block/start/MissedCallActivity;->I:Z

    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/callerid/block/mvc/controller/TipsDialogActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/callerid/block/util/n0;->P0(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/callerid/block/util/n0;->R0(Landroid/content/Context;Z)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method private b0()Lcom/google/android/gms/ads/f;
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v2, v3}, Lcom/callerid/block/util/g;->a(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p0, v0}, Lcom/google/android/gms/ads/f;->a(Landroid/content/Context;I)Lcom/google/android/gms/ads/f;

    move-result-object v0

    return-object v0
.end method

.method private c0()V
    .locals 8

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04047e

    const v2, 0x7f060139

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/p0;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/callerid/block/start/MissedCallActivity;->O:I

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040137

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/p0;->a(Landroid/content/Context;II)I

    const v0, 0x7f0902db

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->R:Landroid/widget/RelativeLayout;

    const v0, 0x7f090145

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->P:Landroid/widget/FrameLayout;

    const v0, 0x7f09012d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->N:Landroid/widget/FrameLayout;

    const v0, 0x7f09021c

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/customview/LImageButton;

    const v1, 0x7f0901e3

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/callerid/block/start/MissedCallActivity;->G:Landroid/widget/ImageView;

    const v1, 0x7f090083

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x7f090082

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/callerid/block/start/MissedCallActivity;->B:Landroid/widget/FrameLayout;

    const v2, 0x7f090084

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v3, 0x7f09007a

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/callerid/block/start/MissedCallActivity;->A:Landroid/widget/FrameLayout;

    const v3, 0x7f090158

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/callerid/block/start/MissedCallActivity;->Q:Landroid/widget/FrameLayout;

    const v3, 0x7f0902b7

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/callerid/block/start/MissedCallActivity;->y:Landroid/widget/ImageView;

    const v3, 0x7f0900ed

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v4, 0x7f0900ec

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->A:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->Q:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902e3

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->t:Landroid/widget/LinearLayout;

    const v0, 0x7f09040f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->u:Landroid/widget/TextView;

    const v0, 0x7f090425

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->v:Landroid/widget/TextView;

    const v0, 0x7f090424

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->w:Landroid/widget/TextView;

    const v0, 0x7f09040a

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->x:Landroid/widget/TextView;

    const v0, 0x7f09046b

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->z:Landroid/widget/TextView;

    const v0, 0x7f0903dc

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0903a8

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0903dd

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0903de

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f0901ba

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v5, 0x7f0901c1

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v5, 0x7f0901c0

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v5, 0x7f0901c2

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v5, 0x7f090465

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f090485

    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/callerid/block/start/MissedCallActivity;->E:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v6, p0, Lcom/callerid/block/start/MissedCallActivity;->E:Landroid/graphics/Typeface;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/callerid/block/start/MissedCallActivity;->E:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->u:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/start/MissedCallActivity;->E:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/start/MissedCallActivity;->E:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/start/MissedCallActivity;->E:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/start/MissedCallActivity;->E:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/start/MissedCallActivity;->E:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->E:Landroid/graphics/Typeface;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->E:Landroid/graphics/Typeface;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->E:Landroid/graphics/Typeface;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->E:Landroid/graphics/Typeface;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private d0()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/ads/d$a;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ca-app-pub-5825926894918682/9815758612"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/d$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/callerid/block/start/MissedCallActivity$e;

    invoke-direct {v1, p0}, Lcom/callerid/block/start/MissedCallActivity$e;-><init>(Lcom/callerid/block/start/MissedCallActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/d$a;->c(Lcom/google/android/gms/ads/nativead/a$c;)Lcom/google/android/gms/ads/d$a;

    new-instance v1, Lcom/google/android/gms/ads/s$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/s$a;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/s$a;->b(Z)Lcom/google/android/gms/ads/s$a;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/s$a;->a()Lcom/google/android/gms/ads/s;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/nativead/b$a;

    invoke-direct {v2}, Lcom/google/android/gms/ads/nativead/b$a;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/nativead/b$a;->g(Lcom/google/android/gms/ads/s;)Lcom/google/android/gms/ads/nativead/b$a;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/nativead/b$a;->a()Lcom/google/android/gms/ads/nativead/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/d$a;->g(Lcom/google/android/gms/ads/nativead/b;)Lcom/google/android/gms/ads/d$a;

    new-instance v1, Lcom/callerid/block/start/MissedCallActivity$f;

    invoke-direct {v1, p0}, Lcom/callerid/block/start/MissedCallActivity$f;-><init>(Lcom/callerid/block/start/MissedCallActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/d$a;->e(Lcom/google/android/gms/ads/b;)Lcom/google/android/gms/ads/d$a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/d$a;->a()Lcom/google/android/gms/ads/d;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/e$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/e$a;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/e$a;->c()Lcom/google/android/gms/ads/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/d;->a(Lcom/google/android/gms/ads/e;)V

    return-void
.end method

.method private e0()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    const-string v1, "ca-app-pub-5825926894918682/8835479396"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/BaseAdView;->setAdUnitId(Ljava/lang/String;)V

    new-instance v1, Lcom/callerid/block/start/MissedCallActivity$b;

    invoke-direct {v1, p0}, Lcom/callerid/block/start/MissedCallActivity$b;-><init>(Lcom/callerid/block/start/MissedCallActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/BaseAdView;->setAdListener(Lcom/google/android/gms/ads/b;)V

    iget-object v1, p0, Lcom/callerid/block/start/MissedCallActivity;->N:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/callerid/block/start/MissedCallActivity;->N:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/google/android/gms/ads/e$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/e$a;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/e$a;->c()Lcom/google/android/gms/ads/e;

    move-result-object v1

    invoke-direct {p0}, Lcom/callerid/block/start/MissedCallActivity;->b0()Lcom/google/android/gms/ads/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/BaseAdView;->setAdSize(Lcom/google/android/gms/ads/f;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/BaseAdView;->b(Lcom/google/android/gms/ads/e;)V

    return-void
.end method

.method private f0()V
    .locals 2

    new-instance v0, Lcom/callerid/block/start/MissedCallActivity$4;

    const v1, 0x7f110159

    invoke-direct {v0, p0, v1}, Lcom/callerid/block/start/MissedCallActivity$4;-><init>(Lcom/callerid/block/start/MissedCallActivity;I)V

    iput-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->J:Lcom/rey/material/app/SimpleDialog$Builder;

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/callerid/block/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/callerid/block/start/MissedCallActivity$d;

    invoke-direct {v1, p0}, Lcom/callerid/block/start/MissedCallActivity$d;-><init>(Lcom/callerid/block/start/MissedCallActivity;)V

    invoke-static {v0, v1}, Lcom/callerid/block/h/a/c/b;->b(Ljava/lang/String;Lcom/callerid/block/h/a/c/a;)V

    return-void
.end method

.method private g0(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    iget p1, p0, Lcom/callerid/block/start/MissedCallActivity;->M:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    const-string v1, ""

    const v2, 0x7f080064

    if-ne p1, v0, :cond_0

    :try_start_1
    sget-object p1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/callerid/block/search/EZSearchResult;->getRaw_contact_id()I

    move-result v0

    int-to-long v3, v0

    invoke-static {p1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->y:Landroid/widget/ImageView;

    invoke-static {p0, p1, v1, v2, v0}, Lcom/callerid/block/util/p;->c(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/widget/ImageView;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getIcon()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getIcon()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/start/MissedCallActivity;->D:Landroid/content/Context;

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/callerid/block/search/EZSearchResult;->getIcon()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/start/MissedCallActivity;->y:Landroid/widget/ImageView;

    invoke-static {p1, v0, v2, v1}, Lcom/callerid/block/util/p;->b(Landroid/content/Context;Ljava/lang/Object;ILandroid/widget/ImageView;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/callerid/block/start/MissedCallActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private h0()V
    .locals 6

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/callerid/block/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/callerid/block/start/MissedCallActivity;->g0(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ezSearchResult"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/callerid/block/search/EZSearchResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "missed_activity"

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/callerid/block/start/MissedCallActivity;->F:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->u:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100113

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/callerid/block/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/callerid/block/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/callerid/block/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->C:Ljava/lang/String;

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/callerid/block/search/EZSearchResult;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/callerid/block/start/MissedCallActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->w:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/callerid/block/start/MissedCallActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/callerid/block/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/callerid/block/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->v:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/callerid/block/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/callerid/block/search/EZSearchResult;->isContact()Z

    move-result v0

    const/16 v3, 0x8

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->Q:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->A:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->Q:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->A:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/callerid/block/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/callerid/block/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/callerid/block/search/EZSearchResult;->getReport_count()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->t:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/callerid/block/start/MissedCallActivity;->O:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->z:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v4}, Lcom/callerid/block/search/EZSearchResult;->getReport_count()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1001ba

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->w:Landroid/widget/TextView;

    iget v3, p0, Lcom/callerid/block/start/MissedCallActivity;->O:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->x:Landroid/widget/TextView;

    iget v3, p0, Lcom/callerid/block/start/MissedCallActivity;->O:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/callerid/block/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/callerid/block/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/callerid/block/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/callerid/block/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->v:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v4}, Lcom/callerid/block/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/callerid/block/util/t0;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/callerid/block/search/EZSearchResult;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/callerid/block/start/MissedCallActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->v:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/callerid/block/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/callerid/block/search/EZSearchResult;->getLocation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/callerid/block/search/EZSearchResult;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/callerid/block/search/EZSearchResult;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const-string v0, "name"

    const-string v1, ""

    const-string v2, "phone"

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v3, 0x7f010001

    const/high16 v4, 0x7f010000

    const/4 v5, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "missed_close"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/v0/b;->c()Lcom/callerid/block/util/v0/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/callerid/block/util/v0/b;->f(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/callerid/block/start/MissedCallActivity;->a0()V

    const-string p1, "testrecommend"

    const-string v0, "\u70b9\u51fb\u672a\u63a5\u5f39\u7a97\u4e0a\u7684X"

    invoke-static {p1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    sget-object v0, Lcom/callerid/block/util/s0;->g:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_1
    iput-boolean v5, p0, Lcom/callerid/block/start/MissedCallActivity;->H:Z

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "missed_dialog_removead_click"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/callerid/block/start/GgGuideActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v4, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/callerid/block/start/MissedCallActivity;->a0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto/16 :goto_4

    :sswitch_2
    :try_start_1
    iput-boolean v5, p0, Lcom/callerid/block/start/MissedCallActivity;->H:Z

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "SmsNumber"

    iget-object v1, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/callerid/block/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v4, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-direct {p0}, Lcom/callerid/block/start/MissedCallActivity;->a0()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :sswitch_3
    iput-boolean v5, p0, Lcom/callerid/block/start/MissedCallActivity;->H:Z

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "missed_adclick_num"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/callerid/block/start/GgGuideActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v4, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    :sswitch_4
    iput-boolean v5, p0, Lcom/callerid/block/start/MissedCallActivity;->H:Z

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.DIAL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v2}, Lcom/callerid/block/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :sswitch_5
    iput-boolean v5, p0, Lcom/callerid/block/start/MissedCallActivity;->H:Z

    iget-object p1, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->L:Lcom/callerid/block/search/CallLogBean;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->isContact()Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const/high16 v0, 0x10000000

    const-string v1, "contact_tony"

    if-eqz p1, :cond_1

    :try_start_3
    new-instance p1, Landroid/content/Intent;

    const-class v2, Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/callerid/block/start/MissedCallActivity;->L:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v2, Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/callerid/block/start/MissedCallActivity;->L:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_2

    :cond_2
    :goto_3
    invoke-direct {p0}, Lcom/callerid/block/start/MissedCallActivity;->a0()V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "missed_btn_detial"

    goto/16 :goto_0

    :sswitch_6
    iput-boolean v5, p0, Lcom/callerid/block/start/MissedCallActivity;->H:Z

    iget-object p1, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz p1, :cond_0

    :try_start_4
    new-instance p1, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "vnd.android.cursor.item/contact"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/callerid/block/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/callerid/block/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/callerid/block/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/callerid/block/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception p1

    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :try_start_6
    new-instance p1, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "vnd.android.cursor.dir/person"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "vnd.android.cursor.dir/contact"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "vnd.android.cursor.dir/raw_contact"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "phone_type"

    const/4 v4, 0x2

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/callerid/block/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v2}, Lcom/callerid/block/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v2}, Lcom/callerid/block/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/callerid/block/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception p1

    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :sswitch_7
    invoke-direct {p0}, Lcom/callerid/block/start/MissedCallActivity;->f0()V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "missed_btn_block"
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09007a -> :sswitch_7
        0x7f090082 -> :sswitch_6
        0x7f090083 -> :sswitch_5
        0x7f090084 -> :sswitch_4
        0x7f0900ed -> :sswitch_3
        0x7f090158 -> :sswitch_2
        0x7f0901e3 -> :sswitch_1
        0x7f09021c -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/callerid/block/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f06014d

    :try_start_0
    invoke-static {p0, p1}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/callerid/block/util/t0;->c0(Landroid/app/Activity;I)V

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/start/MissedCallActivity;->E:Landroid/graphics/Typeface;

    invoke-static {}, Lcom/callerid/block/util/r0;->a()Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/start/MissedCallActivity;->D:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "callstatus"

    const-string v1, "\u5373\u5c06\u663e\u793a\u672a\u63a5\u6765\u7535\u5f39\u7a97.......MissedCallActivity\u8c03\u7528......"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "contact_missed"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/search/EZSearchResult;

    iput-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    const-string v0, "internalDate"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    const-string v0, "calltypekey"

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/callerid/block/start/MissedCallActivity;->F:I

    const-string v0, "isContact"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/callerid/block/start/MissedCallActivity;->M:I

    :cond_0
    const p1, 0x7f0c0061

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/callerid/block/start/MissedCallActivity;->K:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->P(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_1
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "missed_activity"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/callerid/block/start/MissedCallActivity$a;

    invoke-direct {v0, p0}, Lcom/callerid/block/start/MissedCallActivity$a;-><init>(Lcom/callerid/block/start/MissedCallActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-boolean v0, p0, Lcom/callerid/block/start/MissedCallActivity;->H:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/callerid/block/start/MissedCallActivity;->I:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/callerid/block/util/v0/b;->c()Lcom/callerid/block/util/v0/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callerid/block/util/v0/b;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/callerid/block/start/MissedCallActivity;->F:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/callerid/block/util/j0;->b(Landroid/content/Context;I)V

    :cond_0
    iget v0, p0, Lcom/callerid/block/start/MissedCallActivity;->F:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/callerid/block/util/j0;->b(Landroid/content/Context;I)V

    :cond_1
    invoke-static {p0}, Lcom/callerid/block/util/a;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/callerid/block/start/MissedCallActivity;->a0()V

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
    .locals 2

    invoke-super {p0}, Lcom/callerid/block/main/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->C:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget v0, p0, Lcom/callerid/block/start/MissedCallActivity;->F:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->C:Ljava/lang/String;

    new-instance v1, Lcom/callerid/block/start/MissedCallActivity$c;

    invoke-direct {v1, p0}, Lcom/callerid/block/start/MissedCallActivity$c;-><init>(Lcom/callerid/block/start/MissedCallActivity;)V

    invoke-static {v0, v1}, Lcom/callerid/block/h/a/d/c;->b(Ljava/lang/String;Lcom/callerid/block/h/a/d/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/callerid/block/start/MissedCallActivity;->K:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/callerid/block/start/MissedCallActivity;->K:Z

    new-instance v0, Lcom/callerid/block/search/CallLogBean;

    invoke-direct {v0}, Lcom/callerid/block/search/CallLogBean;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->L:Lcom/callerid/block/search/CallLogBean;

    iget-object v1, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/callerid/block/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/search/CallLogBean;->l0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->L:Lcom/callerid/block/search/CallLogBean;

    iget-object v1, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/callerid/block/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/search/CallLogBean;->m0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->L:Lcom/callerid/block/search/CallLogBean;

    iget-object v1, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/callerid/block/search/EZSearchResult;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/search/CallLogBean;->T(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->L:Lcom/callerid/block/search/CallLogBean;

    iget-object v1, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/callerid/block/search/EZSearchResult;->getWebsite()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/search/CallLogBean;->I0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->L:Lcom/callerid/block/search/CallLogBean;

    iget-object v1, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/callerid/block/search/EZSearchResult;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/search/CallLogBean;->U(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->L:Lcom/callerid/block/search/CallLogBean;

    iget-object v1, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/callerid/block/search/EZSearchResult;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/search/CallLogBean;->v0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->L:Lcom/callerid/block/search/CallLogBean;

    iget-object v1, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/callerid/block/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/search/CallLogBean;->H0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->L:Lcom/callerid/block/search/CallLogBean;

    iget-object v1, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/callerid/block/search/EZSearchResult;->getT_p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/search/CallLogBean;->C0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->L:Lcom/callerid/block/search/CallLogBean;

    iget-object v1, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/callerid/block/search/EZSearchResult;->getTel_number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/search/CallLogBean;->D0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->L:Lcom/callerid/block/search/CallLogBean;

    iget-object v1, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/callerid/block/search/EZSearchResult;->getReport_count()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/search/CallLogBean;->s0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->L:Lcom/callerid/block/search/CallLogBean;

    iget-object v1, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/callerid/block/search/EZSearchResult;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/search/CallLogBean;->W(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->L:Lcom/callerid/block/search/CallLogBean;

    iget-object v1, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/callerid/block/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/search/CallLogBean;->t0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity;->L:Lcom/callerid/block/search/CallLogBean;

    iget-object v1, p0, Lcom/callerid/block/start/MissedCallActivity;->s:Lcom/callerid/block/search/EZSearchResult;

    invoke-virtual {v1}, Lcom/callerid/block/search/EZSearchResult;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/search/CallLogBean;->h0(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Lcom/callerid/block/start/MissedCallActivity;->a0()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
