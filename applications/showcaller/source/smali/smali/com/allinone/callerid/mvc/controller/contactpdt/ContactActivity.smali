.class public Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "ContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Lcom/allinone/callerid/search/CallLogBean;

.field private C:Landroid/widget/PopupWindow;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/ProgressBar;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/ImageView;

.field private J:Landroid/widget/LinearLayout;

.field private K:Landroid/widget/FrameLayout;

.field private L:Landroid/widget/LinearLayout;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/ImageView;

.field private O:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private P:Lcom/allinone/callerid/customview/AppBarStateChangeListener;

.field private Q:Lcom/google/android/material/appbar/AppBarLayout;

.field private R:Landroidx/appcompat/widget/Toolbar;

.field private S:Landroid/widget/RelativeLayout;

.field private T:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private U:Landroid/widget/LinearLayout;

.field private V:Landroid/widget/ImageView;

.field private W:Landroid/widget/ImageView;

.field private X:Landroid/widget/TextView;

.field private Y:Landroid/widget/FrameLayout;

.field private Z:Landroid/view/View;

.field private a0:Landroid/widget/TextView;

.field private b0:Landroid/widget/ImageView;

.field private c0:Landroid/widget/ImageView;

.field private d0:Landroid/widget/ImageView;

.field private e0:Landroid/widget/ImageView;

.field private f0:Z

.field private g0:Landroid/view/View;

.field private h0:Landroid/view/animation/Animation;

.field private i0:Landroid/widget/TextView;

.field private j0:Landroid/widget/TextView;

.field private k0:Landroid/widget/ImageView;

.field private l0:Landroid/widget/ImageView;

.field private m0:Z

.field private n0:I

.field private o0:Landroid/widget/ImageView;

.field private p0:Landroid/widget/ImageView;

.field private q0:Landroid/graphics/Typeface;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "SetJavaScriptEnabled"
        }
    .end annotation
.end field

.field private final u:Ljava/lang/String;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "ContactActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->u:Ljava/lang/String;

    return-void
.end method

.method static synthetic A0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->T:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method static synthetic B0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroidx/appcompat/widget/Toolbar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->R:Landroidx/appcompat/widget/Toolbar;

    return-object p0
.end method

.method static synthetic C0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->S:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic E0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->a0:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic F0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->x:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic G0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Lcom/google/android/material/appbar/AppBarLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->Q:Lcom/google/android/material/appbar/AppBarLayout;

    return-object p0
.end method

.method static synthetic H0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->L0()V

    return-void
.end method

.method static synthetic I0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->R0()V

    return-void
.end method

.method static synthetic K0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->W0()V

    return-void
.end method

.method private L0()V
    .locals 3

    const-string v0, ""

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$k;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$k;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/f/b;->b(Ljava/lang/String;Lcom/allinone/callerid/i/a/f/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private M0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->v()I

    move-result v1

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$m;

    invoke-direct {v3, p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$m;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)V

    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/i/a/q/a;->e(Landroid/content/Context;ILjava/lang/String;Lcom/allinone/callerid/i/a/r/d;)V

    return-void
.end method

.method private O0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$a;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private P0()V
    .locals 10

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0121

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901dc

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const v3, 0x7f0901cd

    .line 5
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 6
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const v4, 0x7f0901df

    .line 7
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 8
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const v5, 0x7f0901e4

    .line 9
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 10
    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const v6, 0x7f090618

    .line 11
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->F:Landroid/widget/TextView;

    const v6, 0x7f090668

    .line 12
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f090658

    .line 13
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f090674

    .line 14
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 15
    iget-object v9, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->q0:Landroid/graphics/Typeface;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 16
    iget-object v7, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->q0:Landroid/graphics/Typeface;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v7, 0x7f09021b

    .line 17
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    const v8, 0x7f090758

    .line 18
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->q0:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 19
    invoke-virtual {v7, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 20
    invoke-virtual {v7, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v7, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->F:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->q0:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 22
    iget-object v7, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->q0:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 23
    invoke-virtual {v4, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    invoke-virtual {v5, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->C:Landroid/widget/PopupWindow;

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 29
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->C:Landroid/widget/PopupWindow;

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 30
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->C:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 31
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->C:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->C:Landroid/widget/PopupWindow;

    const v1, 0x7f110305

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->C:Landroid/widget/PopupWindow;

    const v1, 0x7f110304

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 35
    :goto_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 36
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->C:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private Q0()V
    .locals 15

    const v0, 0x7f04011b

    const v1, 0x7f06003a

    .line 1
    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->n0:I

    const v0, 0x7f090360

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f08015b

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    const v1, 0x7f0902c5

    .line 5
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->o0:Landroid/widget/ImageView;

    const v1, 0x7f0902ba

    .line 6
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->p0:Landroid/widget/ImageView;

    const v1, 0x7f09079f

    .line 7
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->a0:Landroid/widget/TextView;

    const v1, 0x7f090061

    .line 8
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->Q:Lcom/google/android/material/appbar/AppBarLayout;

    const v1, 0x7f0905e4

    .line 9
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->R:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0904d7

    .line 10
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->S:Landroid/widget/RelativeLayout;

    const v1, 0x7f090394

    .line 11
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->O:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f090393

    .line 12
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->T:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f090361

    .line 13
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->v:Landroid/widget/ImageView;

    const v1, 0x7f09028c

    .line 14
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->I:Landroid/widget/ImageView;

    const v1, 0x7f09027f

    .line 15
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->N:Landroid/widget/ImageView;

    const v1, 0x7f09028d

    .line 16
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->V:Landroid/widget/ImageView;

    const v1, 0x7f090280

    .line 17
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->W:Landroid/widget/ImageView;

    const v1, 0x7f090275

    .line 18
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->w:Landroid/widget/ImageView;

    const v1, 0x7f09009b

    .line 19
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x7f090530

    .line 20
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v3, 0x7f090093

    .line 21
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v4, 0x7f0900a7

    .line 22
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x7f0900a9

    .line 23
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    const v6, 0x7f090095

    .line 24
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    const v7, 0x7f090094

    .line 25
    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    const v8, 0x7f0900a8

    .line 26
    invoke-virtual {p0, v8}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    const v9, 0x7f0900aa

    .line 27
    invoke-virtual {p0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    const v10, 0x7f090096

    .line 28
    invoke-virtual {p0, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    const v11, 0x7f0900a4

    .line 29
    invoke-virtual {p0, v11}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->l0:Landroid/widget/ImageView;

    .line 30
    invoke-virtual {v11, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v11, 0x7f0903ab

    .line 31
    invoke-virtual {p0, v11}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->L:Landroid/widget/LinearLayout;

    const v11, 0x7f0904e6

    .line 32
    invoke-virtual {p0, v11}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    iput-object v11, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->Y:Landroid/widget/FrameLayout;

    const v11, 0x7f090375

    .line 33
    invoke-virtual {p0, v11}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->Z:Landroid/view/View;

    const v11, 0x7f0900a5

    .line 34
    invoke-virtual {p0, v11}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    const v12, 0x7f0900b0

    .line 35
    invoke-virtual {p0, v12}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v13, 0x7f090466

    .line 36
    invoke-virtual {p0, v13}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ProgressBar;

    iput-object v13, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->G:Landroid/widget/ProgressBar;

    const v13, 0x7f0903a3

    .line 37
    invoke-virtual {p0, v13}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    iput-object v13, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->U:Landroid/widget/LinearLayout;

    const v13, 0x7f090320

    .line 38
    invoke-virtual {p0, v13}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->b0:Landroid/widget/ImageView;

    const v13, 0x7f090321

    .line 39
    invoke-virtual {p0, v13}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->c0:Landroid/widget/ImageView;

    const v13, 0x7f0900b1

    .line 40
    invoke-virtual {p0, v13}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->d0:Landroid/widget/ImageView;

    const v13, 0x7f0900b2

    .line 41
    invoke-virtual {p0, v13}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->e0:Landroid/widget/ImageView;

    .line 42
    iget-object v13, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->b0:Landroid/widget/ImageView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    iget-object v13, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->c0:Landroid/widget/ImageView;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-virtual {v11, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {v4, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual {v5, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-virtual {v6, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-virtual {v7, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {v8, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {v9, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {v10, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->d0:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->e0:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->o0:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->Y:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0906d0

    .line 61
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->x:Landroid/widget/TextView;

    const v0, 0x7f09066f

    .line 62
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->D:Landroid/widget/TextView;

    const v0, 0x7f09069b

    .line 63
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->E:Landroid/widget/TextView;

    const v0, 0x7f09064a

    .line 64
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->y:Landroid/widget/TextView;

    const v0, 0x7f09064b

    .line 65
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->z:Landroid/widget/TextView;

    const v0, 0x7f09064d

    .line 66
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->A:Landroid/widget/TextView;

    const v0, 0x7f0906fc

    .line 67
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->M:Landroid/widget/TextView;

    const v0, 0x7f09067d

    .line 68
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090604

    .line 69
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->H:Landroid/widget/TextView;

    const v1, 0x7f09067e

    .line 70
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090605

    .line 71
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->X:Landroid/widget/TextView;

    const v2, 0x7f090600

    .line 72
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090606

    .line 73
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090601

    .line 74
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090607

    .line 75
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 76
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v6

    iput-object v6, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->q0:Landroid/graphics/Typeface;

    .line 77
    iget-object v7, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->E:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 78
    iget-object v6, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->x:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->q0:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 79
    iget-object v6, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->y:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->q0:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 80
    iget-object v6, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->z:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->q0:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 81
    iget-object v6, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->A:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->q0:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 82
    iget-object v6, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->M:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->q0:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 83
    iget-object v6, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->q0:Landroid/graphics/Typeface;

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 84
    iget-object v6, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->q0:Landroid/graphics/Typeface;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 85
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->H:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->q0:Landroid/graphics/Typeface;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 86
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->q0:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 87
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->X:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->q0:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 88
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->q0:Landroid/graphics/Typeface;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 89
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->q0:Landroid/graphics/Typeface;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 90
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->q0:Landroid/graphics/Typeface;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 91
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->q0:Landroid/graphics/Typeface;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 92
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->a0:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->q0:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0904fa

    .line 93
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->g0:Landroid/view/View;

    const v0, 0x7f0900ac

    .line 94
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x7f09079a

    .line 95
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->i0:Landroid/widget/TextView;

    const v1, 0x7f090650

    .line 96
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->j0:Landroid/widget/TextView;

    const v1, 0x7f090277

    .line 97
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->k0:Landroid/widget/ImageView;

    const v1, 0x7f0902ca

    .line 98
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 99
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->i0:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->q0:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 100
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->j0:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->q0:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v2, 0x7f0905fa

    .line 101
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->q0:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 102
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    new-instance v0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$q;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$q;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)V

    invoke-static {v0}, Lcom/allinone/callerid/i/a/e/a;->a(Lcom/allinone/callerid/i/a/e/b;)V

    return-void
.end method

.method private R0()V
    .locals 4

    const v0, 0x7f0901f1

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->K:Landroid/widget/FrameLayout;

    const v0, 0x7f09029d

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->J:Landroid/widget/LinearLayout;

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/gg/c;->c()Lcom/allinone/callerid/util/gg/c;

    move-result-object v0

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$j;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$j;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)V

    const-string v3, "ca-app-pub-5825926894918682/5960855653"

    invoke-virtual {v0, v1, v3, v2}, Lcom/allinone/callerid/util/gg/c;->d(Landroid/content/Context;Ljava/lang/String;Lcom/allinone/callerid/util/gg/c$c;)V

    return-void
.end method

.method private S0()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/util/a1;->x2()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/b;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/dialog/f;

    const v1, 0x7f1100f6

    invoke-direct {v0, p0, v1}, Lcom/allinone/callerid/dialog/f;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$h;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/f/b;->b(Ljava/lang/String;Lcom/allinone/callerid/i/a/f/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private T0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->v()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    .line 3
    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->v()I

    move-result v2

    int-to-long v2, v2

    .line 4
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const v2, 0x7f0801b4

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->w:Landroid/widget/ImageView;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/allinone/callerid/util/t;->c(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/widget/ImageView;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$p;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$p;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/q/a;->a(Ljava/lang/String;Lcom/allinone/callerid/i/a/q/c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private U0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$o;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$o;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/q/a;->b(Ljava/lang/String;Lcom/allinone/callerid/i/a/q/e;)V

    return-void
.end method

.method private V0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->v()I

    move-result v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$n;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$n;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)V

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/i/a/q/a;->c(ILjava/lang/String;Lcom/allinone/callerid/i/a/q/b;)V

    return-void
.end method

.method private W0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v0, :cond_d

    .line 2
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->V0()V

    .line 3
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->T0()V

    .line 4
    iget-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->f0:Z

    const-string v1, "0"

    const-string v2, "1"

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->d0:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->e0:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->b0:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->c0:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->b0:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->c0:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->d0:Landroid/widget/ImageView;

    const v5, 0x7f0801d4

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->b0:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->c0:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->E()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/CallLogBean;->V0(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->I:Landroid/widget/ImageView;

    const v1, 0x7f080184

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->V:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 21
    :cond_3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/search/CallLogBean;->V0(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->I:Landroid/widget/ImageView;

    const v1, 0x7f080185

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->V:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 24
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 25
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->x:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->a0:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 27
    :cond_5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->x:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->a0:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    :goto_2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 30
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->y:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->Y:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 32
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->Z:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 33
    :cond_6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->Y:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->Z:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 35
    :goto_3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->d()Ljava/lang/String;

    move-result-object v0

    .line 36
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 37
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->z:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_8

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 39
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 40
    :cond_8
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->z:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :goto_4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 42
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->l()Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 43
    array-length v0, v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_9

    .line 44
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->M0()V

    .line 45
    :cond_9
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->r()Ljava/lang/String;

    move-result-object v0

    const-string v2, " \u2022 "

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 46
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->A:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v3}, Lcom/allinone/callerid/search/CallLogBean;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 49
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->M:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->M:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 51
    :cond_a
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->B()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 52
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->A:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v3}, Lcom/allinone/callerid/search/CallLogBean;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 55
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->M:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->M:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 57
    :cond_b
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->A:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f1001e6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 60
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->M:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->M:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 63
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$l;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$l;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 64
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_d
    return-void
.end method

.method static synthetic X(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->Q0()V

    return-void
.end method

.method static synthetic Y(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->P0()V

    return-void
.end method

.method static synthetic Z(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->K:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic a0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->J:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic b0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->D:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->E:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->F:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->N:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic f0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->H:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic g0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->W:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic h0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->X:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic i0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Lcom/allinone/callerid/search/CallLogBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    return-object p0
.end method

.method static synthetic j0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Lcom/allinone/callerid/customview/AppBarStateChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->P:Lcom/allinone/callerid/customview/AppBarStateChangeListener;

    return-object p0
.end method

.method static synthetic k0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->l0:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic l0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;Lcom/allinone/callerid/customview/AppBarStateChangeListener;)Lcom/allinone/callerid/customview/AppBarStateChangeListener;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->P:Lcom/allinone/callerid/customview/AppBarStateChangeListener;

    return-object p1
.end method

.method static synthetic m0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->L:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic n0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->I:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic o0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->V:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic p0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->w:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic q0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->k0:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic r0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->i0:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic s0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->j0:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic t0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->g0:Landroid/view/View;

    return-object p0
.end method

.method static synthetic u0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->h0:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic v0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->h0:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic w0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->O:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method static synthetic x0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->G:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic y0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->n0:I

    return p0
.end method

.method static synthetic z0(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->U:Landroid/widget/LinearLayout;

    return-object p0
.end method


# virtual methods
.method public N0()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->m0:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    const-string v2, "missedcall"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->T0()V

    .line 3
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->U0()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 16

    move-object/from16 v9, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100295

    const v2, 0x7f100059

    const-string v3, "1"

    const/16 v5, 0x8

    const-string v6, "btn_favorite"

    const-string v7, "btn_add_block"

    const v10, 0x7f010001

    const/high16 v11, 0x7f010000

    const-string v12, "smsto:"

    const-string v13, "vnd.android-dir/mms-sms"

    const-string v14, "android.intent.action.VIEW"

    const/4 v15, 0x1

    const-string v4, ""

    const/4 v8, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    .line 2
    :sswitch_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/allinone/callerid/mvc/controller/CallLogActivity;

    invoke-direct {v0, v9, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "call_log_number"

    .line 3
    iget-object v2, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {v9, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 5
    invoke-virtual {v9, v11, v10}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 6
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "see_history"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 8
    :sswitch_1
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/h1;->y0(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 10
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v2, 0x5

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->C:Landroid/widget/PopupWindow;

    iget-object v3, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->v:Landroid/widget/ImageView;

    const/16 v4, 0x33

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result v1

    add-int/lit8 v1, v1, 0x19

    .line 13
    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2

    .line 14
    :cond_0
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->C:Landroid/widget/PopupWindow;

    iget-object v3, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->v:Landroid/widget/ImageView;

    const/16 v4, 0x35

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result v1

    add-int/lit8 v1, v1, 0x19

    .line 16
    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2

    .line 17
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->N0()V

    goto/16 :goto_2

    .line 18
    :sswitch_4
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->g0:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/a1;->y1(J)V

    goto/16 :goto_2

    .line 20
    :sswitch_5
    :try_start_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "number_pdt_callscreen_click"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 21
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-direct {v0, v9, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "is_callscreen"

    .line 22
    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 23
    invoke-virtual {v9, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 24
    invoke-virtual {v9, v11, v10}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 27
    :sswitch_6
    :try_start_2
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->C:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 28
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "number_content_share_click"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 29
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/h1;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 30
    new-instance v0, Lcom/allinone/callerid/dialog/n;

    const v3, 0x7f1100f6

    .line 31
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    const/4 v11, 0x0

    move-object v8, v10

    invoke-direct/range {v1 .. v8}, Lcom/allinone/callerid/dialog/n;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    invoke-virtual {v0, v11}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 34
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 35
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x50

    .line 37
    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 39
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 40
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 41
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 42
    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 45
    :sswitch_7
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->C:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 46
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/contacts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v3}, Lcom/allinone/callerid/search/CallLogBean;->v()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v1, 0xc8

    .line 47
    invoke-virtual {v9, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    :goto_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "btn_add_edit"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 50
    :sswitch_8
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->C:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 51
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100127

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100128

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$g;

    invoke-direct {v2, v9}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$g;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$f;

    invoke-direct {v2, v9}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$f;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v1, -0x1

    .line 57
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iget v2, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->n0:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v1, -0x2

    .line 58
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_2

    .line 59
    :sswitch_9
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->C:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :try_start_4
    const-string v0, "clipboard"

    .line 60
    invoke-virtual {v9, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const/4 v1, 0x0

    .line 61
    iget-object v2, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10010f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_2

    :catch_4
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 64
    :sswitch_a
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->C:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 65
    invoke-direct/range {p0 .. p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->S0()V

    goto/16 :goto_2

    .line 66
    :sswitch_b
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v0, :cond_6

    .line 67
    iget-boolean v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->f0:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-static {v0, v1, v9}, Lcom/allinone/callerid/util/b1;->b(Ljava/lang/Boolean;Lcom/allinone/callerid/search/CallLogBean;Landroid/content/Context;)V

    goto/16 :goto_2

    .line 68
    :sswitch_c
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v0, :cond_6

    .line 69
    iget-boolean v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->f0:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-static {v0, v1, v9}, Lcom/allinone/callerid/util/b1;->a(Ljava/lang/Boolean;Lcom/allinone/callerid/search/CallLogBean;Landroid/content/Context;)V

    goto/16 :goto_2

    .line 70
    :sswitch_d
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "pdt_recommend_click"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/allinone/callerid/util/k0;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "showcaller"

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/h1;->K0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->g0:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 73
    :sswitch_e
    :try_start_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, v13}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v1, 0x10008000

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    invoke-virtual {v9, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_2

    :catch_5
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 79
    :sswitch_f
    :try_start_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, v13}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v1, 0x10008000

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    invoke-virtual {v9, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_2

    :catch_6
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :sswitch_10
    const/4 v11, 0x0

    .line 85
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 86
    :try_start_7
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->E()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 87
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    .line 89
    :try_start_8
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->v()I

    move-result v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$d;

    invoke-direct {v1, v9}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$d;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/k/a;->b(ILcom/allinone/callerid/i/a/a;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_2

    :catch_7
    move-exception v0

    .line 90
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 91
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 92
    :try_start_a
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->v()I

    move-result v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$e;

    invoke-direct {v1, v9}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$e;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/k/a;->a(ILcom/allinone/callerid/i/a/a;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto/16 :goto_2

    :catch_8
    move-exception v0

    .line 93
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    goto/16 :goto_2

    :catch_9
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :sswitch_11
    const/4 v11, 0x0

    .line 95
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 96
    :try_start_c
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->E()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 97
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 99
    :try_start_d
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->v()I

    move-result v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$b;

    invoke-direct {v1, v9}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$b;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/k/a;->b(ILcom/allinone/callerid/i/a/a;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    goto/16 :goto_2

    :catch_a
    move-exception v0

    .line 100
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 101
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    .line 102
    :try_start_f
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->v()I

    move-result v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$c;

    invoke-direct {v1, v9}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$c;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/k/a;->a(ILcom/allinone/callerid/i/a/a;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    goto/16 :goto_2

    :catch_b
    move-exception v0

    .line 103
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    goto/16 :goto_2

    :catch_c
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 105
    :sswitch_12
    :try_start_11
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, v13}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v1, 0x10008000

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 109
    invoke-virtual {v9, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d

    goto :goto_1

    :catch_d
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    :goto_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "btn_contact_sms"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 112
    :sswitch_13
    :try_start_12
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;

    invoke-direct {v0, v9, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "recordnumber"

    .line 113
    iget-object v2, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "recordname"

    .line 114
    iget-object v2, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 116
    invoke-virtual {v9, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 117
    invoke-virtual {v9, v11, v10}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_e

    goto/16 :goto_2

    :catch_e
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 119
    :sswitch_14
    :try_start_13
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/p0;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_f

    goto/16 :goto_2

    .line 120
    :catch_f
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100229

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 121
    :sswitch_15
    :try_start_14
    invoke-static/range {p0 .. p0}, Lcom/allinone/callerid/util/b1;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 122
    invoke-static {}, Lcom/allinone/callerid/util/a1;->G()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    invoke-static {}, Lcom/allinone/callerid/util/a1;->p()I

    move-result v0

    .line 124
    iget-object v1, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Lcom/allinone/callerid/util/b1;->d(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_2

    .line 125
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_4

    .line 126
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/allinone/callerid/util/b1;->s(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 127
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/p0;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 128
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/p0;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_10

    goto :goto_2

    .line 129
    :catch_10
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100229

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 130
    :sswitch_16
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 131
    invoke-direct/range {p0 .. p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->S0()V

    goto :goto_2

    .line 132
    :sswitch_17
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 133
    invoke-direct/range {p0 .. p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->S0()V

    :cond_6
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090093 -> :sswitch_17
        0x7f090094 -> :sswitch_16
        0x7f090095 -> :sswitch_15
        0x7f090096 -> :sswitch_14
        0x7f0900a4 -> :sswitch_13
        0x7f0900a5 -> :sswitch_12
        0x7f0900a7 -> :sswitch_11
        0x7f0900a8 -> :sswitch_10
        0x7f0900a9 -> :sswitch_f
        0x7f0900aa -> :sswitch_e
        0x7f0900ac -> :sswitch_d
        0x7f0900b1 -> :sswitch_c
        0x7f0900b2 -> :sswitch_b
        0x7f0901cd -> :sswitch_a
        0x7f0901dc -> :sswitch_9
        0x7f0901df -> :sswitch_8
        0x7f0901e4 -> :sswitch_7
        0x7f09021b -> :sswitch_6
        0x7f0902c5 -> :sswitch_5
        0x7f0902ca -> :sswitch_4
        0x7f090360 -> :sswitch_3
        0x7f090361 -> :sswitch_2
        0x7f0904e6 -> :sswitch_1
        0x7f090530 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "contact_tony"

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/search/CallLogBean;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->B:Lcom/allinone/callerid/search/CallLogBean;

    const-string v1, "is_missed"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->m0:Z

    :cond_0
    const p1, 0x7f0c0036

    .line 5
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt p1, v2, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 9
    :cond_1
    invoke-static {p0}, Lcom/allinone/callerid/util/b1;->j(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    iput-boolean v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->f0:Z

    goto :goto_0

    .line 11
    :cond_2
    iput-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->f0:Z

    .line 12
    :goto_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "contact_content_show"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->O0()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->Q:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->P:Lcom/allinone/callerid/customview/AppBarStateChangeListener;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->p(Lcom/google/android/material/appbar/AppBarLayout$d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->N0()V

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
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$i;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$i;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3
    sget-boolean v0, Lcom/allinone/callerid/util/j1/b;->a:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "dialog_notifi_per_tip_enalbleed"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/allinone/callerid/util/j1/b;->a:Z

    .line 7
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;->S0()V

    :cond_1
    return-void
.end method
