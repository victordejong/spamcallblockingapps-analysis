.class public Lcom/callerid/block/mvc/controller/UnknownContactActivity;
.super Lcom/callerid/block/main/BaseActivity;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/mvc/controller/UnknownContactActivity$k;,
        Lcom/callerid/block/mvc/controller/UnknownContactActivity$m;,
        Lcom/callerid/block/mvc/controller/UnknownContactActivity$l;,
        Lcom/callerid/block/mvc/controller/UnknownContactActivity$n;,
        Lcom/callerid/block/mvc/controller/UnknownContactActivity$o;
    }
.end annotation


# instance fields
.field private A:Lcom/callerid/block/search/CallLogBean;

.field private B:Landroid/widget/PopupWindow;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/RelativeLayout;

.field private F:Landroid/widget/LinearLayout;

.field private G:Landroid/graphics/Typeface;

.field H:Landroid/widget/RelativeLayout;

.field private I:Z

.field private J:I

.field private K:Landroid/widget/TextView;

.field private L:Landroid/widget/ImageView;

.field private M:Landroid/widget/FrameLayout;

.field private N:Landroid/view/View;

.field private O:Lcom/callerid/block/mvc/controller/UnknownContactActivity$k;

.field private P:Lcom/rey/material/app/SimpleDialog$Builder;

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:Landroid/widget/FrameLayout;

.field private V:Landroid/widget/FrameLayout;

.field private W:Lcom/callerid/block/customview/LImageButton;

.field private X:Lcom/callerid/block/customview/LImageButton;

.field private Y:Landroid/widget/LinearLayout;

.field private Z:Landroid/view/animation/Animation;

.field private s:Lcom/callerid/block/customview/LImageButton;

.field private t:Lcom/callerid/block/customview/LImageButton;

.field private u:Landroid/widget/ImageView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/callerid/block/main/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->I:Z

    return-void
.end method

.method static synthetic Q(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->Y:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic R(Lcom/callerid/block/mvc/controller/UnknownContactActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->Y:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic S(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->s0()V

    return-void
.end method

.method static synthetic T(Lcom/callerid/block/mvc/controller/UnknownContactActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->y0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic U(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)I
    .locals 0

    iget p0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->J:I

    return p0
.end method

.method static synthetic V(Lcom/callerid/block/mvc/controller/UnknownContactActivity;I)I
    .locals 0

    iput p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->J:I

    return p1
.end method

.method static synthetic W(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->v0()V

    return-void
.end method

.method static synthetic X(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->u0()V

    return-void
.end method

.method static synthetic Y(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Lcom/callerid/block/customview/LImageButton;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->t:Lcom/callerid/block/customview/LImageButton;

    return-object p0
.end method

.method static synthetic Z(Lcom/callerid/block/mvc/controller/UnknownContactActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->I:Z

    return p1
.end method

.method static synthetic a0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->v:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->F:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic c0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->E:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic d0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->w:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->M:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic f0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->u:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic g0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->p0()V

    return-void
.end method

.method static synthetic h0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Lcom/rey/material/app/SimpleDialog$Builder;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->P:Lcom/rey/material/app/SimpleDialog$Builder;

    return-object p0
.end method

.method static synthetic i0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->C:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic j0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->D:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic k0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->K:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic l0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->L:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic m0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->N:Landroid/view/View;

    return-object p0
.end method

.method static synthetic n0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->G:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic o0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Lcom/callerid/block/search/CallLogBean;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    return-object p0
.end method

.method private p0()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/callerid/block/mvc/controller/UnknownContactActivity$e;

    invoke-direct {v1, p0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity$e;-><init>(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)V

    invoke-static {v0, v1}, Lcom/callerid/block/h/a/c/b;->b(Ljava/lang/String;Lcom/callerid/block/h/a/c/a;)V

    :cond_0
    return-void
.end method

.method private q0()V
    .locals 7

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00b4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->H:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v1, 0x7f0902e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0902f4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v1, 0x7f090470

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/rey/material/widget/TextView;

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->G:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v2, 0x7f09043c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/rey/material/widget/TextView;

    iget-object v4, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->G:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v4, 0x7f0903c9

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/rey/material/widget/TextView;

    iget-object v5, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->G:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v5, 0x7f0903da

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/rey/material/widget/TextView;

    iget-object v6, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->G:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v4, p0}, Lcom/rey/material/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Lcom/rey/material/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, p0}, Lcom/rey/material/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Lcom/rey/material/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->B:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->B:Landroid/widget/PopupWindow;

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->B:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->B:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->B:Landroid/widget/PopupWindow;

    const v1, 0x7f11030d

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->B:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private r0()V
    .locals 12

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010037

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->Z:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010038

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->Z:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04047e

    const v2, 0x7f060139

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/p0;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->Q:I

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040106

    const v3, 0x7f06005a

    invoke-static {v0, v1, v3}, Lcom/callerid/block/util/p0;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->R:I

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040137

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/p0;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->S:I

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04012a

    const v2, 0x7f060074

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/p0;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->T:I

    const v0, 0x7f0902dc

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->E:Landroid/widget/RelativeLayout;

    const v0, 0x7f090234

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->F:Landroid/widget/LinearLayout;

    const v0, 0x7f090218

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/customview/LImageButton;

    const v1, 0x7f09021b

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callerid/block/customview/LImageButton;

    iput-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->s:Lcom/callerid/block/customview/LImageButton;

    const v1, 0x7f090219

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callerid/block/customview/LImageButton;

    iput-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->t:Lcom/callerid/block/customview/LImageButton;

    const v1, 0x7f090192

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->u:Landroid/widget/ImageView;

    const v1, 0x7f09007b

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x7f090318

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v3, 0x7f09008a

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v4, 0x7f09007f

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x7f09008f

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->U:Landroid/widget/FrameLayout;

    const v5, 0x7f090163

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->V:Landroid/widget/FrameLayout;

    const v5, 0x7f09007a

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    const v6, 0x7f090081

    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/callerid/block/customview/LImageButton;

    iput-object v6, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->W:Lcom/callerid/block/customview/LImageButton;

    const v6, 0x7f090096

    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/callerid/block/customview/LImageButton;

    iput-object v6, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->X:Lcom/callerid/block/customview/LImageButton;

    const v6, 0x7f09008e

    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f09019c

    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->L:Landroid/widget/ImageView;

    const v7, 0x7f0903b2

    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f090465

    invoke-virtual {p0, v8}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f09049b

    invoke-virtual {p0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f090455

    invoke-virtual {p0, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f0903a8

    invoke-virtual {p0, v11}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->K:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v11, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->s:Lcom/callerid/block/customview/LImageButton;

    invoke-virtual {v11, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v11, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->t:Lcom/callerid/block/customview/LImageButton;

    invoke-virtual {v11, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->W:Lcom/callerid/block/customview/LImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->X:Lcom/callerid/block/customview/LImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->U:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->V:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/callerid/block/util/t0;->P(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const v0, 0x7f09041a

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->v:Landroid/widget/TextView;

    const v0, 0x7f0903df

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->C:Landroid/widget/TextView;

    const v0, 0x7f0903c2

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->w:Landroid/widget/TextView;

    const v0, 0x7f0903c3

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->x:Landroid/widget/TextView;

    const v0, 0x7f0903c4

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->y:Landroid/widget/TextView;

    const v0, 0x7f0903c5

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->z:Landroid/widget/TextView;

    const v0, 0x7f090403

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->D:Landroid/widget/TextView;

    const v0, 0x7f090168

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->M:Landroid/widget/FrameLayout;

    const v0, 0x7f0902dd

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->N:Landroid/view/View;

    const v0, 0x7f09007c

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Lcom/callerid/block/mvc/controller/UnknownContactActivity$f;

    invoke-direct {v1, p0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity$f;-><init>(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)V

    invoke-static {v1}, Lcom/callerid/block/h/a/b/a;->a(Lcom/callerid/block/h/a/b/b;)V

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->G:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->D:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->G:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->G:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->G:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->G:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->G:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->G:Landroid/graphics/Typeface;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->G:Landroid/graphics/Typeface;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->G:Landroid/graphics/Typeface;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->G:Landroid/graphics/Typeface;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->G:Landroid/graphics/Typeface;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->K:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->G:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private s0()V
    .locals 4

    invoke-static {}, Lcom/callerid/block/util/v0/d;->a()Lcom/callerid/block/util/v0/d;

    move-result-object v0

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v1

    new-instance v2, Lcom/callerid/block/mvc/controller/UnknownContactActivity$d;

    invoke-direct {v2, p0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity$d;-><init>(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)V

    const-string v3, "ca-app-pub-5825926894918682/7734382574"

    invoke-virtual {v0, v1, v3, v2}, Lcom/callerid/block/util/v0/d;->b(Landroid/content/Context;Ljava/lang/String;Lcom/callerid/block/util/v0/d$c;)V

    return-void
.end method

.method private t0()V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$11;

    const v1, 0x7f110159

    invoke-direct {v0, p0, v1}, Lcom/callerid/block/mvc/controller/UnknownContactActivity$11;-><init>(Lcom/callerid/block/mvc/controller/UnknownContactActivity;I)V

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->P:Lcom/rey/material/app/SimpleDialog$Builder;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/callerid/block/mvc/controller/UnknownContactActivity$b;

    invoke-direct {v1, p0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity$b;-><init>(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)V

    invoke-static {v0, v1}, Lcom/callerid/block/h/a/c/b;->b(Ljava/lang/String;Lcom/callerid/block/h/a/c/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private u0()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$n;

    invoke-direct {v0, p0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity$n;-><init>(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private v0()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$o;

    invoke-direct {v0, p0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity$o;-><init>(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private w0()V
    .locals 8

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contact:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v1}, Lcom/callerid/block/search/CallLogBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sunny"

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->s()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    new-instance v0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$l;

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v3

    iget-object v4, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->u:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v5}, Lcom/callerid/block/search/CallLogBean;->s()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/callerid/block/mvc/controller/UnknownContactActivity$l;-><init>(Lcom/callerid/block/mvc/controller/UnknownContactActivity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/Long;)V

    new-array v3, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->c()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080064

    iget-object v5, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->u:Landroid/widget/ImageView;

    invoke-static {v0, v3, v4, v5}, Lcom/callerid/block/util/p;->b(Landroid/content/Context;Ljava/lang/Object;ILandroid/widget/ImageView;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->Q()Z

    move-result v0

    const/16 v3, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->V:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->U:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->X:Lcom/callerid/block/customview/LImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->W:Lcom/callerid/block/customview/LImageButton;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->V:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->X:Lcom/callerid/block/customview/LImageButton;

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object v0

    const v4, 0x7f1001df

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->v:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v5}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_3
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->w()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->v:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v5}, Lcom/callerid/block/search/CallLogBean;->w()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->v:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v5}, Lcom/callerid/block/search/CallLogBean;->f()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->v:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v5}, Lcom/callerid/block/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->Y(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->v:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v5}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->J()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->v()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->E:Landroid/widget/RelativeLayout;

    iget v3, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->R:I

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->w:Landroid/widget/TextView;

    iget v3, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->T:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->E:Landroid/widget/RelativeLayout;

    iget v3, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->Q:I

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->w:Landroid/widget/TextView;

    iget v3, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->S:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->w:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1001bb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v6}, Lcom/callerid/block/search/CallLogBean;->v()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1001c9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v5}, Lcom/callerid/block/search/CallLogBean;->J()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->x:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_b
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v1}, Lcom/callerid/block/search/CallLogBean;->f()Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_c
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v1}, Lcom/callerid/block/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->Y(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_7

    :cond_e
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :goto_7
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v1}, Lcom/callerid/block/search/CallLogBean;->p()Ljava/lang/String;

    move-result-object v1

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_f
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->y()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v1}, Lcom/callerid/block/search/CallLogBean;->y()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_10
    :goto_9
    return-void
.end method

.method private x0()V
    .locals 1

    new-instance v0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$c;

    invoke-direct {v0, p0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity$c;-><init>(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)V

    invoke-static {v0}, Lcom/callerid/block/h/a/b/a;->a(Lcom/callerid/block/h/a/b/b;)V

    return-void
.end method

.method private y0(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callerid/block/mvc/controller/SuggestNameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "number"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "suggest_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->q()Ljava/lang/String;

    move-result-object p1

    const-string v1, "old_tel_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->E()Ljava/lang/String;

    move-result-object p1

    const-string v1, "t_p"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0xf8

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/high16 p1, 0x7f010000

    const v0, 0x7f010001

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-wide/16 v0, 0x1f4

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_0

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/callerid/block/mvc/controller/UnknownContactActivity$j;

    invoke-direct {v3, p0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity$j;-><init>(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/16 v2, 0x64

    if-ne p1, v2, :cond_1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/callerid/block/mvc/controller/UnknownContactActivity$a;

    invoke-direct {v3, p0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity$a;-><init>(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    const/16 v0, 0x171

    const/4 v1, 0x0

    const-string v2, ""

    if-ne p1, v0, :cond_4

    const/16 v0, 0x3c3

    if-ne p2, v0, :cond_4

    if-eqz p3, :cond_4

    const-string v0, "typelabel"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->v()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->v()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const-string v3, "1"

    :goto_0
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, -0x80000000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    iget v5, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->Q:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->E:Landroid/widget/RelativeLayout;

    iget v5, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->Q:I

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->w:Landroid/widget/TextView;

    iget v5, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->S:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->w:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1001bb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f1001c9

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/callerid/block/util/t0;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    const/16 v0, 0xf8

    if-ne p1, v0, :cond_5

    const/16 p1, 0x34a

    if-ne p2, p1, :cond_5

    if-eqz p3, :cond_5

    const-string p1, "name"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->v:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f100182

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_5
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    const-string v0, "name"

    const-string v1, "phone"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v2, 0x16

    const-string v3, "SmsNumber"

    const/4 v4, -0x1

    const-string v5, ""

    const v6, 0x7f010001

    const/high16 v7, 0x7f010000

    const v8, 0x7f1001df

    const/4 v9, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_8

    :sswitch_0
    :try_start_0
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/t0;->Y(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$g;

    invoke-direct {v0, p0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity$g;-><init>(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)V

    invoke-static {p1, v0}, Lcom/callerid/block/h/a/g/b;->b(Ljava/lang/String;Lcom/callerid/block/h/a/g/a;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->B:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_8

    :sswitch_1
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "unkonwn_content_report_click"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/t0;->V(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/t0;->Y(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$h;

    invoke-direct {v0, p0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity$h;-><init>(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)V

    invoke-static {p1, v0}, Lcom/callerid/block/h/a/g/b;->a(Ljava/lang/String;Lcom/callerid/block/h/a/g/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    :goto_2
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100197

    invoke-static {p1, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_0

    :sswitch_2
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->B:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    new-instance p1, Lcom/callerid/block/mvc/controller/UnknownContactActivity$8;

    const v0, 0x7f110159

    invoke-direct {p1, p0, v0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity$8;-><init>(Lcom/callerid/block/mvc/controller/UnknownContactActivity;I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rey/material/app/Dialog$Builder;->n(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rey/material/app/Dialog$Builder;->g(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rey/material/app/SimpleDialog$Builder;->p(Ljava/lang/CharSequence;)Lcom/rey/material/app/SimpleDialog$Builder;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->G:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Lcom/rey/material/app/SimpleDialog$Builder;->q(Landroid/graphics/Typeface;)Lcom/rey/material/app/SimpleDialog$Builder;

    invoke-static {p1}, Lcom/rey/material/app/a;->K1(Lcom/rey/material/app/a$b;)Lcom/rey/material/app/a;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->v()Landroidx/fragment/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/j;->i()Landroidx/fragment/app/p;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/p;->d(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/p;

    invoke-virtual {v0}, Landroidx/fragment/app/p;->h()I

    goto/16 :goto_8

    :sswitch_3
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->B:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/t0;->Y(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_7

    :cond_3
    :try_start_2
    const-string p1, "clipboard"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    if-eqz p1, :cond_12

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100099

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_8

    :sswitch_4
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/callerid/block/mvc/controller/CallLogActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "call_log_number"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    :sswitch_5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/t0;->P(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/high16 v0, 0x41600000    # 14.0f

    const/4 v1, 0x5

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->B:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->s:Lcom/callerid/block/customview/LImageButton;

    const/16 v3, 0x33

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->B:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->s:Lcom/callerid/block/customview/LImageButton;

    const/16 v3, 0x35

    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/callerid/block/util/g;->a(Landroid/content/Context;F)I

    move-result v0

    add-int/lit8 v0, v0, 0x19

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_8

    :sswitch_6
    invoke-static {}, Lcom/callerid/block/util/c0;->a()Lcom/callerid/block/util/c0;

    move-result-object p1

    iget-object p1, p1, Lcom/callerid/block/util/c0;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$i;

    invoke-direct {v0, p0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity$i;-><init>(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_8

    :sswitch_7
    iget-boolean p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->I:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.callerid.block.RELOAD_DATA_VEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ld/p/a/a;->d(Landroid/content/Intent;)Z

    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_4
    invoke-virtual {p0, v7, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_8

    :sswitch_8
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/callerid/block/util/u0;->d(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_8

    :sswitch_9
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/t0;->Y(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto/16 :goto_7

    :cond_6
    :try_start_3
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v7, v6}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_8

    :sswitch_a
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/t0;->Y(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto/16 :goto_7

    :cond_7
    const/16 p1, 0x64

    :try_start_4
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "vnd.android.cursor.item/contact"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->w()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_8
    invoke-virtual {p0, v2, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_8

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :try_start_5
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "vnd.android.cursor.dir/person"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "vnd.android.cursor.dir/contact"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "vnd.android.cursor.dir/raw_contact"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "phone_type"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v1}, Lcom/callerid/block/search/CallLogBean;->w()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v1}, Lcom/callerid/block/search/CallLogBean;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v1}, Lcom/callerid/block/search/CallLogBean;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_9
    invoke-virtual {p0, v2, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_8

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto/16 :goto_8

    :sswitch_b
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/t0;->Y(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto/16 :goto_7

    :cond_a
    :try_start_6
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v7, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_8

    :sswitch_c
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/o0;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-static {}, Lcom/callerid/block/util/n0;->v()I

    move-result p1

    if-ne p1, v4, :cond_c

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_b

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/callerid/block/util/o0;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_b
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-static {p1, v0}, Lcom/callerid/block/util/i0;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_c
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/callerid/block/util/o0;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_8

    :cond_d
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :sswitch_d
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->N:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "call_announcer_click"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/callerid/block/util/d0;->F(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/callerid/block/util/d0;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "england_call"

    invoke-static {p1, v0, v1}, Lcom/callerid/block/util/t0;->i0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :sswitch_e
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/o0;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-static {}, Lcom/callerid/block/util/n0;->v()I

    move-result p1

    if-ne p1, v4, :cond_f

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_e

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/callerid/block/util/o0;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8

    :cond_e
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-static {p1, v0}, Lcom/callerid/block/util/i0;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8

    :cond_f
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/callerid/block/util/o0;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_8

    :cond_10
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :sswitch_f
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "unkonwn_content_block_click"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/t0;->Y(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    :goto_7
    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_8

    :cond_11
    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->t0()V

    :cond_12
    :goto_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09007a -> :sswitch_f
        0x7f09007b -> :sswitch_e
        0x7f09007c -> :sswitch_d
        0x7f09007f -> :sswitch_c
        0x7f090081 -> :sswitch_b
        0x7f09008a -> :sswitch_a
        0x7f09008f -> :sswitch_9
        0x7f090096 -> :sswitch_8
        0x7f090163 -> :sswitch_8
        0x7f090218 -> :sswitch_7
        0x7f090219 -> :sswitch_6
        0x7f09021b -> :sswitch_5
        0x7f090318 -> :sswitch_4
        0x7f0903c9 -> :sswitch_3
        0x7f0903da -> :sswitch_2
        0x7f09043c -> :sswitch_1
        0x7f090470 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/callerid/block/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->G:Landroid/graphics/Typeface;

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "enter_number_detail_page"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    const-string p1, "testenter"

    const-string v0, "11\u53f7\u7801\u8be6\u60c5\u9875\u5c55\u793a\u6b21\u6570"

    invoke-static {p1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "contact_tony"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/search/CallLogBean;

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->J()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->J()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->v()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->v()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->A:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f110124

    goto :goto_1

    :cond_1
    :goto_0
    const p1, 0x7f110009

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    :cond_2
    const p1, 0x7f0c003c

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/t0;->P(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_3
    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->r0()V

    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->w0()V

    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->q0()V

    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->p0()V

    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->x0()V

    new-instance p1, Lcom/callerid/block/mvc/controller/UnknownContactActivity$k;

    invoke-direct {p1, p0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity$k;-><init>(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)V

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->O:Lcom/callerid/block/mvc/controller/UnknownContactActivity$k;

    invoke-static {p0}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->O:Lcom/callerid/block/mvc/controller/UnknownContactActivity$k;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.callerid.block.CLOSE_AD_VEST"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ld/p/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->O:Lcom/callerid/block/mvc/controller/UnknownContactActivity$k;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->O:Lcom/callerid/block/mvc/controller/UnknownContactActivity$k;

    invoke-virtual {v0, v1}, Ld/p/a/a;->e(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->I:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.callerid.block.RELOAD_DATA_VEST"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ld/p/a/a;->d(Landroid/content/Intent;)Z

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 p1, 0x7f010000

    const p2, 0x7f010001

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

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
