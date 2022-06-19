.class public Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "UnknownContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$m0;,
        Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$o0;,
        Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n0;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/LinearLayout;

.field private D:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private E:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$o0;

.field private F:Z

.field private G:Landroid/widget/FrameLayout;

.field private H:Landroid/widget/ImageView;

.field private I:Lcom/allinone/callerid/dialog/i;

.field private J:Lcom/google/android/material/appbar/AppBarLayout;

.field private K:Lcom/allinone/callerid/customview/AppBarStateChangeListener;

.field private L:Landroid/widget/LinearLayout;

.field private M:Landroidx/appcompat/widget/Toolbar;

.field private N:Landroid/widget/LinearLayout;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/widget/ImageView;

.field private Q:Landroid/widget/ImageView;

.field private R:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private S:Landroid/widget/ImageView;

.field private T:Landroid/widget/ImageView;

.field private U:Landroid/widget/TextView;

.field private V:Landroid/widget/FrameLayout;

.field private W:Landroid/widget/ProgressBar;

.field private X:I

.field private Y:Lcom/allinone/callerid/search/CallLogBean;

.field private Z:Ljava/lang/String;

.field private a0:Ljava/lang/String;

.field private b0:Ljava/lang/String;

.field private c0:Z

.field private d0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private e0:Landroid/widget/FrameLayout;

.field private f0:Landroid/widget/ImageView;

.field private g0:Z

.field private h0:Landroid/os/Handler;

.field private i0:Landroidx/appcompat/app/a;

.field private j0:I

.field private k0:I

.field private l0:I

.field private m0:I

.field private n0:I

.field private o0:Landroid/view/View;

.field private p0:Landroid/widget/ImageView;

.field private q0:Landroid/widget/ImageView;

.field private r0:Landroid/graphics/Typeface;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "SetJavaScriptEnabled",
            "SetTextI18n"
        }
    .end annotation
.end field

.field private s0:Landroid/widget/TextView;

.field private t0:Lcom/allinone/callerid/g/i;

.field private final u:Ljava/lang/String;

.field private u0:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$m0;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/PopupWindow;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "UnknownContactActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->u:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->a0:Ljava/lang/String;

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->h0:Landroid/os/Handler;

    return-void
.end method

.method static synthetic A0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroidx/appcompat/app/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->i0:Landroidx/appcompat/app/a;

    return-object p0
.end method

.method static synthetic B0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->p1()V

    return-void
.end method

.method static synthetic C0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->o1()V

    return-void
.end method

.method static synthetic E0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->V:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic F0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->G:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic G0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->e0:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic H0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->m0:I

    return p0
.end method

.method static synthetic I0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method static synthetic K0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0:I

    return p0
.end method

.method static synthetic L0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->C:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic M0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->w:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic N0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->f0:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic O0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->w1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic P0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/dialog/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->I:Lcom/allinone/callerid/dialog/i;

    return-object p0
.end method

.method static synthetic Q0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->v1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic R0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->L:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic S0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroidx/appcompat/widget/Toolbar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->M:Landroidx/appcompat/widget/Toolbar;

    return-object p0
.end method

.method static synthetic T0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->N:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic U0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->O:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic V0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->x:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic W0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->a0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic X(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->i1()V

    return-void
.end method

.method static synthetic X0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->b0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Y(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/customview/AppBarStateChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->K:Lcom/allinone/callerid/customview/AppBarStateChangeListener;

    return-object p0
.end method

.method static synthetic Y0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->s0:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic Z(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/google/android/material/appbar/AppBarLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->J:Lcom/google/android/material/appbar/AppBarLayout;

    return-object p0
.end method

.method private Z0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$y;

    invoke-direct {v1, p0, p1, p2}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$y;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;Lcom/allinone/callerid/customview/AppBarStateChangeListener;)Lcom/allinone/callerid/customview/AppBarStateChangeListener;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->K:Lcom/allinone/callerid/customview/AppBarStateChangeListener;

    return-object p1
.end method

.method private a1()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$v;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$v;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V

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

.method static synthetic b0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->h1()V

    return-void
.end method

.method private b1()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/allinone/callerid/util/b1;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/a1;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/a1;->p()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/b1;->d(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/allinone/callerid/util/b1;->s(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/p0;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/p0;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100229

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method static synthetic c0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->q1()V

    return-void
.end method

.method private c1()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "btn_favorite"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->E()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->E()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100295

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 5
    :try_start_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->v()I

    move-result v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$f;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$f;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/k/a;->b(ILcom/allinone/callerid/i/a/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 8
    :try_start_3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->v()I

    move-result v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$g;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$g;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/k/a;->a(ILcom/allinone/callerid/i/a/a;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 9
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic d0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->a1()V

    return-void
.end method

.method private d1()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/app/a$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100127

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a$a;->h(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$a;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100128

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$e;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$e;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/a$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$d;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$d;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/a$a;->j(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroidx/appcompat/app/a$a;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v1, -0x1

    .line 8
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->g(I)Landroid/widget/Button;

    move-result-object v1

    iget v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->j0:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v1, -0x2

    .line 9
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->g(I)Landroid/widget/Button;

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

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic e0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->z:Landroid/widget/TextView;

    return-object p0
.end method

.method private e1()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic f0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->H:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic g0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->A:Landroid/widget/TextView;

    return-object p0
.end method

.method private g1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic h0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->T:Landroid/widget/ImageView;

    return-object p0
.end method

.method private h1()V
    .locals 7

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0121

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901e4

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->e0:Landroid/widget/FrameLayout;

    const v1, 0x7f0901df

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->V:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    .line 5
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const v1, 0x7f0901dc

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const v4, 0x7f09020e

    .line 8
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 9
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const v5, 0x7f09022c

    .line 10
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->G:Landroid/widget/FrameLayout;

    .line 11
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v5, ""

    iget-object v6, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v6}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 12
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->G:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->G:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    const v2, 0x7f0901cd

    .line 14
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v5, 0x7f090618

    .line 15
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->z:Landroid/widget/TextView;

    const v5, 0x7f090747

    .line 16
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->r0:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 17
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->z:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->r0:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v5, 0x7f090658

    .line 18
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 19
    iget-object v6, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->r0:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 20
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0907bb

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v5, 0x7f090674

    .line 22
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->r0:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 23
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->r0:Landroid/graphics/Typeface;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f09021b

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v5, 0x7f090758

    .line 25
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->r0:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 26
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 27
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->G:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->e0:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->V:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-virtual {v4, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->y:Landroid/widget/PopupWindow;

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 36
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->y:Landroid/widget/PopupWindow;

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 37
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->y:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 38
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->y:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->y:Landroid/widget/PopupWindow;

    const v1, 0x7f110305

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_1

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->y:Landroid/widget/PopupWindow;

    const v1, 0x7f110304

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 42
    :goto_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 43
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->y:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method static synthetic i0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->U:Landroid/widget/TextView;

    return-object p0
.end method

.method private i1()V
    .locals 10

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->r0:Landroid/graphics/Typeface;

    const v0, 0x7f04011b

    const v1, 0x7f06003a

    .line 2
    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->j0:I

    const v0, 0x7f040133

    .line 3
    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0:I

    const v0, 0x7f040134

    const v1, 0x7f060112

    .line 4
    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->l0:I

    const v0, 0x7f04010e

    const v1, 0x7f06003b

    .line 5
    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->m0:I

    const v0, 0x7f040135

    const v1, 0x7f060115

    .line 6
    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->n0:I

    const v0, 0x7f090392

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0901e7

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0901d2

    .line 9
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0901f4

    .line 10
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v3, 0x7f0901c7

    .line 11
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v4, 0x7f09028c

    .line 12
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->S:Landroid/widget/ImageView;

    const v4, 0x7f0902bc

    .line 13
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->T:Landroid/widget/ImageView;

    const v4, 0x7f090619

    .line 14
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->U:Landroid/widget/TextView;

    const v4, 0x7f090466

    .line 15
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->W:Landroid/widget/ProgressBar;

    const v4, 0x7f0902c5

    .line 16
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->p0:Landroid/widget/ImageView;

    const v4, 0x7f0902ba

    .line 17
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->q0:Landroid/widget/ImageView;

    const v4, 0x7f0907e5

    .line 18
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/ViewPager;

    const v5, 0x7f090299

    .line 19
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;

    const v6, 0x7f090390

    .line 20
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v6, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->d0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v6, 0x7f0907de

    .line 21
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->o0:Landroid/view/View;

    .line 22
    new-instance v6, Lcom/allinone/callerid/b/n;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->A()Landroidx/fragment/app/FragmentManager;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/allinone/callerid/b/n;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 23
    new-instance v7, Lcom/allinone/callerid/g/i;

    invoke-direct {v7}, Lcom/allinone/callerid/g/i;-><init>()V

    iput-object v7, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->t0:Lcom/allinone/callerid/g/i;

    const v8, 0x7f100130

    .line 24
    invoke-virtual {p0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/allinone/callerid/b/n;->y(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 25
    new-instance v7, Lcom/allinone/callerid/g/a;

    invoke-direct {v7}, Lcom/allinone/callerid/g/a;-><init>()V

    const v8, 0x7f1000ea

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/allinone/callerid/b/n;->y(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v4, v6}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    const/16 v6, 0x10

    .line 27
    iput v6, v5, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->B:I

    const/4 v6, 0x0

    .line 28
    iput v6, v5, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->s:I

    const v7, 0x7f040144

    const v8, 0x7f06004d

    .line 29
    invoke-static {p0, v7, v8}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v7

    iput v7, v5, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->r:I

    const v7, 0x7f040117

    const v9, 0x7f060047

    .line 30
    invoke-static {p0, v7, v9}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v7

    iput v7, v5, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->q:I

    const v7, 0x7f040141

    .line 31
    invoke-static {p0, v7, v8}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->setIndicatorColor(I)V

    .line 32
    invoke-virtual {v5, v4}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 33
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->p0:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090239

    .line 38
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/FloatingActionButton;

    .line 39
    invoke-virtual {v0, p0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->c0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 41
    invoke-virtual {v4, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_0
    const v0, 0x7f0904c3

    .line 42
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->C:Landroid/widget/LinearLayout;

    const v0, 0x7f090061

    .line 43
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->J:Lcom/google/android/material/appbar/AppBarLayout;

    const v0, 0x7f0905e4

    .line 44
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->M:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f09050b

    .line 45
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->N:Landroid/widget/LinearLayout;

    const v0, 0x7f090393

    .line 46
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f090360

    .line 47
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f08015b

    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    const v1, 0x7f090361

    .line 50
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->v:Landroid/widget/ImageView;

    const v1, 0x7f09079f

    .line 51
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->O:Landroid/widget/TextView;

    const v1, 0x7f090275

    .line 52
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->w:Landroid/widget/ImageView;

    const v1, 0x7f09027f

    .line 53
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->H:Landroid/widget/ImageView;

    const v1, 0x7f090093

    .line 54
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x7f090097

    .line 55
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v3, 0x7f0900b7

    .line 56
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v5, 0x7f090098

    .line 57
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    const v7, 0x7f0903a3

    .line 58
    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->L:Landroid/widget/LinearLayout;

    const v7, 0x7f090320

    .line 59
    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->P:Landroid/widget/ImageView;

    const v7, 0x7f090321

    .line 60
    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Q:Landroid/widget/ImageView;

    .line 61
    iget-object v7, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->P:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    iget-object v7, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Q:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {v5, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0906d0

    .line 69
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->x:Landroid/widget/TextView;

    const v0, 0x7f090335

    .line 70
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->f0:Landroid/widget/ImageView;

    .line 71
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090602

    .line 72
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090604

    .line 73
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->A:Landroid/widget/TextView;

    const v1, 0x7f090609

    .line 74
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->B:Landroid/widget/TextView;

    const v1, 0x7f090608

    .line 75
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0900d7

    .line 76
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->s0:Landroid/widget/TextView;

    .line 77
    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->r0:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 78
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->x:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->r0:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 79
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->r0:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 80
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->A:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->r0:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 81
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->B:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->r0:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 82
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->r0:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 83
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->O:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->r0:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 84
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->a0:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v1, ""

    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->s0:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->s0:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->s0:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->a0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->a0:Ljava/lang/String;

    if-nez v0, :cond_3

    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 91
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->B:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :cond_4
    :goto_0
    new-instance v0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$f0;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$f0;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V

    invoke-virtual {v4, v0}, Landroidx/viewpager/widget/ViewPager;->c(Landroidx/viewpager/widget/ViewPager$i;)V

    return-void
.end method

.method static synthetic j0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$m0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->u0:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$m0;

    return-object p0
.end method

.method private j1(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->W(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {p1}, Lcom/allinone/callerid/util/p;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/allinone/callerid/util/h1;->Q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-static {p2}, Lcom/allinone/callerid/util/v;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v0, :cond_0

    const-string p1, ""

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    if-eqz v4, :cond_0

    .line 10
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    if-eqz v6, :cond_0

    .line 11
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    if-eqz v8, :cond_0

    .line 12
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 13
    new-instance p1, Lcom/allinone/callerid/util/s0;

    const-string p2, "/"

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v2, "android"

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/allinone/callerid/util/s0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method static synthetic k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    return-object p0
.end method

.method private k1(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11

    const-string v0, ""

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100338

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->t1(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/h1;->W(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {p1}, Lcom/allinone/callerid/util/p;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1, v7}, Lcom/allinone/callerid/util/h1;->Q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 9
    invoke-static {p2}, Lcom/allinone/callerid/util/v;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v5, :cond_1

    .line 11
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v6, :cond_1

    .line 12
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v8, :cond_1

    .line 13
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v10, :cond_1

    .line 14
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 15
    new-instance p1, Lcom/allinone/callerid/util/v0;

    const-string v4, "android"

    const-string p2, "/"

    .line 16
    invoke-virtual {v1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/allinone/callerid/util/v0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v2, [Ljava/lang/Void;

    invoke-virtual {p1, p2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1002c3

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic l0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->d0:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method private l1()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android-dir/mms-sms"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smsto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v1, 0x10008000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :goto_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "btn_contact_sms"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic m0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->y:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method private m1()V
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
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V

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

.method static synthetic n0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->y1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic o0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->x1(Ljava/lang/String;)V

    return-void
.end method

.method private o1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$b0;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$b0;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/q/a;->a(Ljava/lang/String;Lcom/allinone/callerid/i/a/q/c;)V

    :cond_0
    return-void
.end method

.method static synthetic p0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->X:I

    return p0
.end method

.method private p1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$a0;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/q/a;->b(Ljava/lang/String;Lcom/allinone/callerid/i/a/q/e;)V

    return-void
.end method

.method static synthetic q0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->X:I

    return p1
.end method

.method private q1()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v0, :cond_e

    .line 2
    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->w0(Ljava/lang/String;)Z

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v1, "0"

    const-string v2, ""

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->s0:Landroid/widget/TextView;

    const v3, 0x7f0802cd

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->s0:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06003a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/util/a1;->s2()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->d0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->K2(Ljava/lang/Boolean;)V

    .line 10
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->b0:Ljava/lang/String;

    const/16 v4, 0x8

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->s0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->s0:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->s0:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->b0:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :cond_3
    invoke-static {p0}, Lcom/allinone/callerid/util/b1;->j(Landroid/content/Context;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_6

    .line 15
    :try_start_2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->P:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->C()Ljava/lang/String;

    move-result-object v0

    const-string v5, "1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Q:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->P:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Q:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 21
    :cond_6
    :try_start_3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->P:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Q:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :catch_0
    :goto_2
    const v0, 0x7f0801b4

    .line 23
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    const v6, 0x7f0801b5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 24
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->C:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->l0:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 25
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->o0:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 26
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0801b5

    .line 27
    :cond_7
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 28
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->w:Landroid/widget/ImageView;

    invoke-static {p0, v1, v0, v4}, Lcom/allinone/callerid/util/t;->a(Landroid/app/Activity;Ljava/lang/Object;ILandroid/widget/ImageView;)V

    .line 29
    :cond_8
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 30
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->O:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 32
    :cond_9
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 33
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->O:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 35
    :cond_a
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->w0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 36
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->O:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100353

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->x:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 38
    :cond_b
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->f0:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 40
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->O:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 42
    :cond_c
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 43
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->O:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 45
    :cond_d
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->O:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :goto_3
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "unknown_name_show"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_4
    return-void
.end method

.method static synthetic r0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->W:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private r1(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$h0;

    invoke-direct {v1, p0, p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$h0;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic s0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->h0:Landroid/os/Handler;

    return-object p0
.end method

.method private s1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "tel_number"

    .line 2
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "name"

    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "type"

    .line 4
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "t_p"

    .line 5
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    sget-boolean p2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p2, :cond_0

    const-string p2, "reportName"

    .line 8
    invoke-static {p2, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->j1(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic t0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->S:Landroid/widget/ImageView;

    return-object p0
.end method

.method private t1(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$g0;

    invoke-direct {v1, p0, p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$g0;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic u0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->u1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private u1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "tel_number"

    .line 2
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "wrong_type"

    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "t_p"

    .line 4
    invoke-static {p3}, Lcom/allinone/callerid/util/h1;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    sget-boolean p2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p2, :cond_0

    const-string p2, "reportWrongInfo"

    .line 7
    invoke-static {p2, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k1(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic v0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->j0:I

    return p0
.end method

.method private v1(Ljava/lang/String;)V
    .locals 9

    .line 1
    :try_start_0
    new-instance v8, Lcom/allinone/callerid/dialog/n;

    const v2, 0x7f1100f6

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100242

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, v8

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/allinone/callerid/dialog/n;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v8, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 6
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x50

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/Window;->setGravity(I)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 10
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 11
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 12
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 13
    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic w0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method private w1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    :try_start_0
    new-instance v6, Lcom/allinone/callerid/dialog/i;

    const v2, 0x7f1100f6

    new-instance v3, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$d0;

    invoke-direct {v3, p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$d0;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/allinone/callerid/dialog/i;-><init>(Landroid/content/Context;ILandroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->I:Lcom/allinone/callerid/dialog/i;

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string p2, "number_dialog_show"

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->I:Lcom/allinone/callerid/dialog/i;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->I:Lcom/allinone/callerid/dialog/i;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
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

.method static synthetic x0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->s1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private x1(Ljava/lang/String;)V
    .locals 25

    move-object/from16 v10, p0

    .line 1
    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 2
    :try_start_1
    iget-object v0, v10, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 6
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c015d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09077c

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    .line 10
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f090185

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/allinone/callerid/customview/DeletableEditText;

    const v1, 0x7f0901f5

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/widget/FrameLayout;

    const v1, 0x7f0901f6

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/FrameLayout;

    const v1, 0x7f0901f7

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/FrameLayout;

    const v1, 0x7f090473

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/RadioButton;

    const v1, 0x7f090474

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/RadioButton;

    const v1, 0x7f090475

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/RadioButton;

    const v1, 0x7f0906cc

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    const v1, 0x7f0906cd

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/TextView;

    const v1, 0x7f0906ce

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    const v1, 0x7f09062c

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 22
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 23
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 24
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 25
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 26
    new-instance v12, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$l;

    move-object v1, v12

    move-object/from16 v17, v2

    move-object/from16 v2, p0

    move-object/from16 v18, v3

    move-object v3, v14

    move-object/from16 v19, v4

    move-object v4, v7

    move-object/from16 v20, v5

    move-object v5, v6

    move-object/from16 v21, v6

    move-object/from16 v6, v20

    move-object/from16 v22, v7

    move-object/from16 v7, v19

    move-object/from16 v23, v0

    move-object v0, v8

    move-object/from16 v8, v18

    move-object/from16 v24, v13

    move-object v13, v9

    move-object/from16 v9, v17

    invoke-direct/range {v1 .. v9}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$l;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;Lcom/allinone/callerid/customview/DeletableEditText;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v14, v12}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 27
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 28
    iget-object v1, v10, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->h0:Landroid/os/Handler;

    new-instance v2, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$m;

    invoke-direct {v2, v10, v14}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$m;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;Lcom/allinone/callerid/customview/DeletableEditText;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 30
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 31
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    move-object/from16 v12, v19

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    invoke-virtual {v15, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    :cond_1
    move-object/from16 v12, v19

    .line 33
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    const/4 v1, 0x0

    .line 34
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {v15, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 36
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    move-object/from16 v9, v18

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {v13, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    :cond_2
    move-object/from16 v9, v18

    .line 38
    :goto_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    const/4 v1, 0x0

    .line 39
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {v15, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 41
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {v13, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 43
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    move-object/from16 v11, v17

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3

    :cond_3
    move-object/from16 v11, v17

    goto :goto_3

    :cond_4
    move-object/from16 v11, v17

    move-object/from16 v9, v18

    move-object/from16 v12, v19

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100317

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v24

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :goto_3
    new-instance v8, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v3, v22

    move-object v4, v12

    move-object v5, v14

    move-object/from16 v6, v21

    move-object/from16 v7, v20

    move-object v10, v8

    move-object v8, v9

    move-object/from16 v16, v9

    move-object v9, v11

    :try_start_3
    invoke-direct/range {v1 .. v9}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$n;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;Landroid/widget/RadioButton;Landroid/widget/TextView;Lcom/allinone/callerid/customview/DeletableEditText;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v15, v10}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    new-instance v10, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$o;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v3, v21

    move-object/from16 v4, v16

    move-object v5, v14

    move-object/from16 v6, v22

    move-object/from16 v7, v20

    move-object v8, v12

    move-object v9, v11

    invoke-direct/range {v1 .. v9}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$o;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;Landroid/widget/RadioButton;Landroid/widget/TextView;Lcom/allinone/callerid/customview/DeletableEditText;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v13, v10}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    new-instance v10, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$p;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v3, v20

    move-object v4, v12

    move-object v5, v14

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object v8, v11

    move-object/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$p;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;Landroid/widget/RadioButton;Landroid/widget/TextView;Lcom/allinone/callerid/customview/DeletableEditText;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    new-instance v0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$q;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, v21

    move-object/from16 v4, v20

    move-object v5, v14

    move-object v6, v12

    move-object v7, v11

    move-object/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$q;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Lcom/allinone/callerid/customview/DeletableEditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    move-object/from16 v9, v22

    invoke-virtual {v9, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 50
    new-instance v0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$r;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v9

    move-object/from16 v4, v20

    move-object v5, v14

    move-object/from16 v6, v16

    move-object v7, v11

    move-object v8, v12

    invoke-direct/range {v1 .. v8}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$r;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Lcom/allinone/callerid/customview/DeletableEditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    move-object/from16 v3, v21

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 51
    new-instance v0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$s;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v4, v9

    move-object v5, v14

    move-object v6, v11

    move-object v7, v12

    move-object/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$s;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Lcom/allinone/callerid/customview/DeletableEditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f090470

    move-object/from16 v7, v23

    .line 52
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/RadioButton;

    const v0, 0x7f090479

    .line 53
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/RadioButton;

    .line 54
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 55
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 56
    new-instance v0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$t;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v8, p0

    :try_start_4
    invoke-direct {v0, v8, v5}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$t;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;Landroid/widget/RadioButton;)V

    invoke-virtual {v4, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 57
    new-instance v0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$u;

    invoke-direct {v0, v8, v4}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$u;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;Landroid/widget/RadioButton;)V

    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f09035f

    .line 58
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0900b6

    .line 59
    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/FrameLayout;

    .line 60
    new-instance v10, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$w;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v3, v14

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$w;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;Lcom/allinone/callerid/customview/DeletableEditText;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$x;

    invoke-direct {v1, v8}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$x;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    .line 63
    new-instance v0, Landroidx/appcompat/app/a$a;

    invoke-direct {v0, v8}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {v0, v7}, Landroidx/appcompat/app/a$a;->r(Landroid/view/View;)Landroidx/appcompat/app/a$a;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroidx/appcompat/app/a$a;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    iput-object v0, v8, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->i0:Landroidx/appcompat/app/a;

    .line 66
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v8, p0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v8, v10

    .line 67
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_5
    return-void
.end method

.method static synthetic y0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Z0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private y1(Ljava/lang/String;)V
    .locals 9

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c015f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090472

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/RadioButton;

    const v1, 0x7f090477

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/RadioButton;

    const v1, 0x7f090478

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/RadioButton;

    .line 5
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->r0:Landroid/graphics/Typeface;

    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 6
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->r0:Landroid/graphics/Typeface;

    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 7
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->r0:Landroid/graphics/Typeface;

    invoke-virtual {v6, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8
    iget-boolean v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->F:Z

    if-nez v1, :cond_0

    const/16 v1, 0x8

    .line 9
    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 10
    :cond_0
    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$h;

    invoke-direct {v1, p0, v5, v6}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$h;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 11
    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$i;

    invoke-direct {v1, p0, v4, v6}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$i;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 12
    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$j;

    invoke-direct {v1, p0, v4, v5}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$j;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    invoke-virtual {v6, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 14
    new-instance v1, Landroidx/appcompat/app/a$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100378

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/a$a;->q(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$a;

    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/a$a;->r(Landroid/view/View;)Landroidx/appcompat/app/a$a;

    move-result-object v0

    .line 17
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10029a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$k;

    move-object v2, v8

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$k;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v8}, Landroidx/appcompat/app/a$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroidx/appcompat/app/a$a;->a()Landroidx/appcompat/app/a;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 v0, -0x1

    .line 20
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->g(I)Landroid/widget/Button;

    move-result-object v0

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->j0:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v0, -0x2

    .line 21
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->g(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic z0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->r1(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public f1()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->g0:Z

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

.method public n1(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$m0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->u0:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$m0;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x6e

    const v1, 0x7f0801b4

    const v2, 0x7f0801b5

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/high16 v5, -0x80000000

    const/16 v6, 0x15

    const/4 v7, 0x0

    const-string v8, ""

    if-eq p1, v0, :cond_7

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_6

    const/16 v0, 0x12c

    const-string v9, "typelabel"

    if-eq p1, v0, :cond_2

    const/16 v0, 0x171

    if-eq p1, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/16 v0, 0x3c3

    if-ne p2, v0, :cond_c

    if-eqz p3, :cond_c

    .line 2
    :try_start_0
    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 3
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 4
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/allinone/callerid/util/h1;->D(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/allinone/callerid/search/CallLogBean;->e1(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v5}, Landroid/view/Window;->addFlags(I)V

    .line 8
    iget v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->n0:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->C:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->l0:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->o0:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->u0:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$m0;

    if-eqz v0, :cond_c

    .line 14
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$m0;->b(ZLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    :cond_2
    if-eqz p3, :cond_c

    .line 16
    :try_start_3
    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 18
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v7, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Z:Ljava/lang/String;

    invoke-static {v1, v7}, Lcom/allinone/callerid/util/h1;->D(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/search/CallLogBean;->e1(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 19
    :try_start_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_3

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 21
    invoke-virtual {v0, v5}, Landroid/view/Window;->addFlags(I)V

    .line 22
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f060115

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 23
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->C:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->l0:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 25
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->o0:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 26
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 27
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->u0:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$m0;

    if-eqz v0, :cond_c

    .line 28
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$m0;->b(ZLjava/lang/String;)V

    goto/16 :goto_6

    .line 29
    :cond_4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0, v8}, Lcom/allinone/callerid/search/CallLogBean;->e1(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 30
    :try_start_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_5

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 32
    invoke-virtual {v0, v5}, Landroid/view/Window;->addFlags(I)V

    .line 33
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 34
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->C:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 36
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->u0:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$m0;

    if-eqz v0, :cond_c

    .line 38
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$m0;->b(ZLjava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_6

    :catch_4
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 40
    :cond_6
    :try_start_8
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->h0:Landroid/os/Handler;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$z;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$z;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_6

    :catch_5
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    :cond_7
    const/16 v0, 0x77

    if-ne p2, v0, :cond_9

    if-eqz p3, :cond_c

    :try_start_9
    const-string v0, "isrefush"

    .line 42
    invoke-virtual {p3, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 43
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    const-string v2, "The type deleted successfully!"

    invoke-static {v0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 44
    :try_start_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_8

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 46
    invoke-virtual {v0, v5}, Landroid/view/Window;->addFlags(I)V

    .line 47
    iget v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->m0:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_3

    :catch_6
    move-exception v0

    .line 48
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->C:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 50
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->s0:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    iput-object v8, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->a0:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0, v8}, Lcom/allinone/callerid/search/CallLogBean;->Y0(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->B:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10029a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->u0:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$m0;

    if-eqz v0, :cond_c

    .line 56
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$m0;->b(ZLjava/lang/String;)V

    goto/16 :goto_6

    :catch_7
    move-exception v0

    goto/16 :goto_5

    :cond_9
    const/16 v0, 0x78

    if-ne p2, v0, :cond_c

    if-eqz p3, :cond_c

    const-string v0, "edittype"

    .line 57
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 58
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 59
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->a0:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->s0:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->s0:Landroid/widget/TextView;

    const v1, 0x7f0802cf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 62
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->s0:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v9, 0x7f060112

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->s0:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->a0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/search/CallLogBean;->Y0(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 65
    :try_start_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_a

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v5}, Landroid/view/Window;->addFlags(I)V

    .line 68
    iget v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->n0:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_4

    :catch_8
    move-exception v0

    .line 69
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->C:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->l0:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 71
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->o0:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->s0:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->B:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f10007e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 76
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->u0:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$m0;

    if-eqz v0, :cond_b

    .line 77
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$m0;->b(ZLjava/lang/String;)V

    .line 78
    :cond_b
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/search/CallLogBean;->L0(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_6

    .line 79
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    :cond_c
    :goto_6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->t0:Lcom/allinone/callerid/g/i;

    if-eqz v0, :cond_d

    .line 81
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->w0(IILandroid/content/Intent;)V

    :cond_d
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 16

    move-object/from16 v9, p0

    const-string v1, "name"

    const-string v2, "phone"

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f010042

    const/16 v4, 0x6e

    const v5, 0x7f1002a0

    const-string v6, "contact_subtype_activity"

    const/4 v7, 0x1

    const-string v8, "android.intent.action.VIEW"

    const-string v11, "btn_add_block"

    const v12, 0x7f010001

    const/high16 v13, 0x7f010000

    const-string v14, ""

    const v15, 0x7f100353

    const/4 v10, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_4

    .line 2
    :sswitch_0
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/allinone/callerid/mvc/controller/CallLogActivity;

    invoke-direct {v0, v9, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    iget-object v1, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "call_log_number"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {v9, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 6
    invoke-virtual {v9, v13, v12}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 7
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "see_history"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 8
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v2, 0x5

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->y:Landroid/widget/PopupWindow;

    iget-object v3, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->v:Landroid/widget/ImageView;

    const/16 v4, 0x33

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result v1

    add-int/lit8 v1, v1, 0x19

    .line 11
    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_4

    .line 12
    :cond_1
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->y:Landroid/widget/PopupWindow;

    iget-object v3, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->v:Landroid/widget/ImageView;

    const/16 v4, 0x35

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result v1

    add-int/lit8 v1, v1, 0x19

    .line 14
    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_4

    .line 15
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->f1()V

    goto/16 :goto_4

    .line 16
    :sswitch_3
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "unknown_name_click"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 17
    :try_start_0
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->w0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 18
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$k0;

    invoke-direct {v1, v9}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$k0;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/m/b;->d(Ljava/lang/String;Lcom/allinone/callerid/i/a/m/a;)V

    goto/16 :goto_4

    .line 19
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 21
    :sswitch_4
    :try_start_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "number_pdt_callscreen_click"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 22
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-direct {v0, v9, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "is_callscreen"

    .line 23
    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 24
    invoke-virtual {v9, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 25
    invoke-virtual {v9, v13, v12}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 26
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 28
    :sswitch_5
    :try_start_2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "write_comment_button_click"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 29
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$b;

    invoke-direct {v1, v9}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$b;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/m/b;->c(Ljava/lang/String;Lcom/allinone/callerid/i/a/m/a;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 31
    :sswitch_6
    :try_start_3
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "wrong_info_click"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 32
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$i0;

    invoke-direct {v1, v9}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$i0;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/m/b;->e(Ljava/lang/String;Lcom/allinone/callerid/i/a/m/a;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_4

    :catch_3
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 34
    :sswitch_7
    :try_start_4
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->y:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 35
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "number_content_share_click"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 36
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->O:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/h1;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 37
    new-instance v0, Lcom/allinone/callerid/dialog/n;

    const v3, 0x7f1100f6

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/allinone/callerid/dialog/n;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 40
    invoke-virtual {v0, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 41
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 42
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x50

    .line 44
    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 46
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 47
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 48
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, 0x2

    .line 49
    div-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_4

    :catch_4
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 52
    :sswitch_8
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->y:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 53
    :try_start_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www.google.com/search?q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "android.intent.category.BROWSABLE"

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 58
    invoke-virtual {v9, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 59
    invoke-virtual {v9, v13, v12}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_4

    :catch_5
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 61
    :sswitch_9
    invoke-direct/range {p0 .. p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->l1()V

    goto/16 :goto_4

    .line 62
    :sswitch_a
    invoke-direct/range {p0 .. p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->c1()V

    goto/16 :goto_4

    .line 63
    :sswitch_b
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->y:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 64
    invoke-direct/range {p0 .. p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->e1()V

    goto/16 :goto_4

    .line 65
    :sswitch_c
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->y:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 66
    invoke-direct/range {p0 .. p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->d1()V

    goto/16 :goto_4

    .line 67
    :sswitch_d
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->y:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 68
    :try_start_6
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->w0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "clipboard"

    .line 69
    invoke-virtual {v9, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const/4 v1, 0x0

    .line 70
    iget-object v2, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10010f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 72
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_4

    :catch_6
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 74
    :sswitch_e
    invoke-direct/range {p0 .. p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->b1()V

    goto/16 :goto_4

    .line 75
    :sswitch_f
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->y:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 76
    :try_start_7
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->w0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 77
    invoke-direct/range {p0 .. p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->m1()V

    goto/16 :goto_4

    .line 78
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_4

    :catch_7
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 80
    :sswitch_10
    :try_start_8
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->w0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 81
    invoke-direct/range {p0 .. p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->m1()V

    .line 82
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 83
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_4

    :catch_8
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 85
    :sswitch_11
    :try_start_9
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->a0:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 86
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 87
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 88
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;

    invoke-direct {v0, v9, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 90
    iget-object v2, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 92
    invoke-virtual {v9, v0, v4}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 93
    invoke-virtual {v9, v3, v10}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_4

    :catch_9
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 95
    :sswitch_12
    :try_start_a
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->w0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 96
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$j0;

    invoke-direct {v1, v9}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$j0;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/m/b;->d(Ljava/lang/String;Lcom/allinone/callerid/i/a/m/a;)V

    goto :goto_0

    .line 97
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_0

    :catch_a
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    :goto_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "btn_suggest"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 100
    :sswitch_13
    :try_start_b
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->w0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 101
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android-dir/mms-sms"

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smsto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v1, 0x10008000

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 105
    invoke-virtual {v9, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 106
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_1

    :catch_b
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    :goto_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "btn_contact_sms"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 109
    :sswitch_14
    :try_start_c
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->a0:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 110
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 112
    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;

    invoke-direct {v0, v9, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 114
    iget-object v2, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 116
    invoke-virtual {v9, v0, v4}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 117
    invoke-virtual {v9, v3, v10}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d

    goto/16 :goto_4

    .line 118
    :cond_a
    :try_start_d
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->w0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 119
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$l0;

    invoke-direct {v1, v9}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$l0;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/m/b;->a(Ljava/lang/String;Lcom/allinone/callerid/i/a/m/a;)V

    goto :goto_2

    .line 120
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_2

    :catch_c
    move-exception v0

    .line 121
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    :goto_2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "btn_add_report"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    goto/16 :goto_4

    :catch_d
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 124
    :sswitch_15
    :try_start_f
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->w0(Ljava/lang/String;)Z

    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_10

    if-nez v0, :cond_e

    const/16 v3, 0xc8

    .line 125
    :try_start_10
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "vnd.android.cursor.item/contact"

    .line 126
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    iget-object v4, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v4}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    iget-object v4, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v4}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    iget-object v4, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v4}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 129
    iget-object v4, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v4}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    :cond_c
    invoke-virtual {v9, v0, v3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e

    goto :goto_3

    :catch_e
    move-exception v0

    .line 131
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_10

    .line 132
    :try_start_12
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.INSERT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "vnd.android.cursor.dir/person"

    .line 133
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "vnd.android.cursor.dir/contact"

    .line 134
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "vnd.android.cursor.dir/raw_contact"

    .line 135
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "phone_type"

    const/4 v5, 0x2

    .line 136
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    iget-object v4, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v4}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    iget-object v2, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-object v2, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 139
    iget-object v2, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    :cond_d
    invoke-virtual {v9, v0, v3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_f

    goto :goto_3

    :catch_f
    move-exception v0

    .line 141
    :try_start_13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 142
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_10

    goto :goto_3

    :catch_10
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    :goto_3
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "btn_add_contact"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_4

    .line 145
    :sswitch_16
    :try_start_14
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->w0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 146
    invoke-direct/range {p0 .. p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->m1()V

    .line 147
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_4

    .line 148
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_11

    goto :goto_4

    :catch_11
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 150
    :sswitch_17
    :try_start_15
    iget-object v0, v9, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->w0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 151
    invoke-direct/range {p0 .. p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->m1()V

    .line 152
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_4

    .line 153
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_15} :catch_12

    goto :goto_4

    :catch_12
    move-exception v0

    .line 154
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    :cond_11
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090093 -> :sswitch_17
        0x7f090094 -> :sswitch_16
        0x7f090097 -> :sswitch_15
        0x7f090098 -> :sswitch_14
        0x7f0900a5 -> :sswitch_13
        0x7f0900b7 -> :sswitch_12
        0x7f0900d7 -> :sswitch_11
        0x7f0901c7 -> :sswitch_10
        0x7f0901cd -> :sswitch_f
        0x7f0901d2 -> :sswitch_e
        0x7f0901dc -> :sswitch_d
        0x7f0901df -> :sswitch_c
        0x7f0901e4 -> :sswitch_b
        0x7f0901e7 -> :sswitch_a
        0x7f0901f4 -> :sswitch_9
        0x7f09020e -> :sswitch_8
        0x7f09021b -> :sswitch_7
        0x7f09022c -> :sswitch_6
        0x7f090239 -> :sswitch_5
        0x7f0902c5 -> :sswitch_4
        0x7f090335 -> :sswitch_3
        0x7f090360 -> :sswitch_2
        0x7f090361 -> :sswitch_1
        0x7f090530 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$o0;

    invoke-direct {p1, p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$o0;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V

    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->E:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$o0;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->E:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$o0;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.allinone.callerid.REPORT_BLOCK"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lb/p/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, ""

    if-eqz p1, :cond_0

    const-string v2, "contact_tony"

    .line 5
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/search/CallLogBean;

    iput-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    const-string v2, "is_to_comment"

    const/4 v3, 0x0

    .line 6
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->c0:Z

    const-string v2, "is_missed"

    .line 7
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->g0:Z

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object p1

    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f11000d

    .line 9
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 10
    iput-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->F:Z

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/f0;->s(Landroid/content/Context;)V

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Z:Ljava/lang/String;

    .line 13
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->H()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->a0:Ljava/lang/String;

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->a0:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object p1

    .line 16
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    const-string v2, "US/USA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 17
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/search/CallLogBean;->Y0(Ljava/lang/String;)V

    .line 18
    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->a0:Ljava/lang/String;

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->e()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->Y:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 20
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v1, "unknow_content_has_comment"

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    :cond_3
    const p1, 0x7f0c0065

    .line 21
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 23
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt p1, v1, :cond_4

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    .line 25
    :cond_4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "number_content_show"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->g1()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->E:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$o0;

    invoke-virtual {v0, v1}, Lb/p/a/a;->e(Landroid/content/BroadcastReceiver;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->J:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->K:Lcom/allinone/callerid/customview/AppBarStateChangeListener;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->p(Lcom/google/android/material/appbar/AppBarLayout$d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
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
    invoke-virtual {p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->f1()V

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
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->h0:Landroid/os/Handler;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$e0;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$e0;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V

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
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->m1()V

    :cond_1
    return-void
.end method
