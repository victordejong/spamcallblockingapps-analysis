.class public Lcom/allinone/callerid/mvc/controller/MainActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/allinone/callerid/g/e$s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/mvc/controller/MainActivity$i0;,
        Lcom/allinone/callerid/mvc/controller/MainActivity$j0;,
        Lcom/allinone/callerid/mvc/controller/MainActivity$k0;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/TextView;

.field private A0:I

.field private B:Landroid/widget/TextView;

.field private B0:I

.field private C:Landroid/content/Intent;

.field private C0:I

.field private D:Lcom/allinone/callerid/dialog/d;

.field private D0:I

.field private E:Landroid/widget/FrameLayout;

.field private E0:I

.field private F:Lcom/allinone/callerid/mvc/controller/MainActivity$j0;

.field private F0:I

.field private G:Landroid/widget/FrameLayout;

.field private G0:I

.field private H:Landroid/widget/ImageView;

.field private H0:I

.field private I:Landroid/widget/ImageView;

.field private I0:I

.field private J:Landroid/view/animation/Animation;

.field private J0:Landroid/view/LayoutInflater;

.field private K:Landroid/widget/FrameLayout;

.field private K0:J

.field private L:Z

.field private L0:Landroid/widget/FrameLayout;

.field private M:Lcom/allinone/callerid/util/q0;

.field private M0:Landroid/widget/ImageView;

.field private N:J

.field private N0:Landroid/widget/TextView;

.field private O:I

.field private O0:I

.field private P:Z

.field private P0:I

.field private Q:Lcom/github/clans/fab/FloatingActionButton;

.field private Q0:Landroid/graphics/Typeface;

.field private R:Z

.field private R0:Landroid/view/animation/Animation;

.field private S:Landroid/widget/TextView;

.field private S0:Lcom/google/android/gms/ads/d;

.field private T:Landroid/widget/TextView;

.field private T0:Z

.field private U:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private U0:Z

.field private V:Lcom/allinone/callerid/inapputil/GoogleBillingUtil;

.field private V0:F

.field private W:Ljava/lang/String;

.field private W0:Landroid/os/Handler;

.field private X:Ljava/lang/String;

.field private Y:Landroid/widget/ImageView;

.field private Z:Lcom/allinone/callerid/receiver/DisturbNotifitcationReceiver;

.field private a0:Z

.field private b0:Landroid/widget/ImageView;

.field private c0:Landroid/widget/PopupWindow;

.field private d0:Lcom/allinone/callerid/g/e;

.field private e0:Landroid/widget/TextView;

.field private f0:Landroid/widget/TextView;

.field private g0:Landroid/widget/TextView;

.field private h0:Landroid/widget/TextView;

.field private i0:Landroid/widget/ImageView;

.field private j0:Landroid/widget/ImageView;

.field private k0:Landroid/widget/ImageView;

.field private l0:Landroid/widget/ImageView;

.field private m0:Landroid/view/View;

.field private n0:Lcom/github/clans/fab/FloatingActionMenu;

.field private o0:Landroid/widget/PopupWindow;

.field private p0:Landroid/widget/TextView;

.field private q0:Landroid/widget/TextView;

.field private r0:Landroid/widget/ImageView;

.field private s0:Landroid/os/Handler;

.field private t0:Landroid/widget/ImageView;

.field private u:Lcom/allinone/callerid/main/CustomViewPager;

.field private u0:Z

.field private v:Landroid/widget/ImageView;

.field private v0:Ljava/lang/String;

.field private w:Lcom/allinone/callerid/customview/AVLoadingIndicatorView;

.field private w0:Z

.field private x:Landroid/view/View;

.field private x0:Lcom/google/android/material/appbar/AppBarLayout;

.field private y:Landroidx/drawerlayout/widget/DrawerLayout;

.field private y0:I

.field private z:Landroid/widget/TextView;

.field private z0:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->L:Z

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->O:I

    .line 4
    iput-boolean v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->P:Z

    const-string v2, "$1.99"

    .line 5
    iput-object v2, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->W:Ljava/lang/String;

    const-string v2, "$12.99"

    .line 6
    iput-object v2, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->X:Ljava/lang/String;

    .line 7
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->s0:Landroid/os/Handler;

    .line 8
    iput-boolean v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->T0:Z

    .line 9
    iput-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->U0:Z

    const/high16 v0, 0x42400000    # 48.0f

    .line 10
    iput v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->V0:F

    .line 11
    new-instance v0, Lcom/allinone/callerid/mvc/controller/MainActivity$i0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/allinone/callerid/mvc/controller/MainActivity$i0;-><init>(Landroid/app/Activity;Lcom/allinone/callerid/mvc/controller/MainActivity$k;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->W0:Landroid/os/Handler;

    return-void
.end method

.method static synthetic A0(Lcom/allinone/callerid/mvc/controller/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->x1()V

    return-void
.end method

.method private A1(Z)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->R:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x3dc00000    # -48.0f

    .line 2
    iput v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->V0:F

    :cond_0
    const-wide/16 v0, 0x12c

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_1

    .line 3
    iget-boolean p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->U0:Z

    if-nez p1, :cond_2

    new-array p1, v5, [Landroid/view/View;

    .line 4
    iget-object v6, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->b0:Landroid/widget/ImageView;

    aput-object v6, p1, v4

    invoke-static {p1}, Lcom/allinone/callerid/customview/e/d;->h([Landroid/view/View;)Lcom/allinone/callerid/customview/e/a;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/allinone/callerid/customview/e/a;->d()Lcom/allinone/callerid/customview/e/a;

    move-result-object p1

    new-array v6, v3, [F

    iget v7, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->V0:F

    aput v7, v6, v4

    aput v2, v6, v5

    invoke-virtual {p1, v6}, Lcom/allinone/callerid/customview/e/a;->k([F)Lcom/allinone/callerid/customview/e/a;

    move-result-object p1

    new-array v6, v5, [Landroid/view/View;

    iget-object v7, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->E:Landroid/widget/FrameLayout;

    aput-object v7, v6, v4

    .line 6
    invoke-virtual {p1, v6}, Lcom/allinone/callerid/customview/e/a;->a([Landroid/view/View;)Lcom/allinone/callerid/customview/e/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/customview/e/a;->d()Lcom/allinone/callerid/customview/e/a;

    move-result-object p1

    new-array v6, v3, [F

    iget v7, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->V0:F

    aput v7, v6, v4

    aput v2, v6, v5

    invoke-virtual {p1, v6}, Lcom/allinone/callerid/customview/e/a;->k([F)Lcom/allinone/callerid/customview/e/a;

    move-result-object p1

    new-array v6, v5, [Landroid/view/View;

    iget-object v7, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->r0:Landroid/widget/ImageView;

    aput-object v7, v6, v4

    .line 7
    invoke-virtual {p1, v6}, Lcom/allinone/callerid/customview/e/a;->a([Landroid/view/View;)Lcom/allinone/callerid/customview/e/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/customview/e/a;->d()Lcom/allinone/callerid/customview/e/a;

    move-result-object p1

    new-array v3, v3, [F

    iget v6, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->V0:F

    aput v6, v3, v4

    aput v2, v3, v5

    invoke-virtual {p1, v3}, Lcom/allinone/callerid/customview/e/a;->k([F)Lcom/allinone/callerid/customview/e/a;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/allinone/callerid/customview/e/a;->c()Lcom/allinone/callerid/customview/e/d;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/allinone/callerid/customview/e/d;->j(J)Lcom/allinone/callerid/customview/e/d;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/mvc/controller/MainActivity$p;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/MainActivity$p;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    .line 10
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/customview/e/d;->l(Lcom/allinone/callerid/customview/e/c;)Lcom/allinone/callerid/customview/e/d;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/allinone/callerid/customview/e/d;->n()Lcom/allinone/callerid/customview/e/d;

    goto :goto_0

    .line 12
    :cond_1
    iget-boolean p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->U0:Z

    if-eqz p1, :cond_2

    new-array p1, v5, [Landroid/view/View;

    .line 13
    iget-object v6, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->b0:Landroid/widget/ImageView;

    aput-object v6, p1, v4

    invoke-static {p1}, Lcom/allinone/callerid/customview/e/d;->h([Landroid/view/View;)Lcom/allinone/callerid/customview/e/a;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/allinone/callerid/customview/e/a;->d()Lcom/allinone/callerid/customview/e/a;

    move-result-object p1

    new-array v6, v3, [F

    aput v2, v6, v4

    iget v7, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->V0:F

    aput v7, v6, v5

    .line 15
    invoke-virtual {p1, v6}, Lcom/allinone/callerid/customview/e/a;->k([F)Lcom/allinone/callerid/customview/e/a;

    move-result-object p1

    new-array v6, v5, [Landroid/view/View;

    iget-object v7, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->E:Landroid/widget/FrameLayout;

    aput-object v7, v6, v4

    .line 16
    invoke-virtual {p1, v6}, Lcom/allinone/callerid/customview/e/a;->a([Landroid/view/View;)Lcom/allinone/callerid/customview/e/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/customview/e/a;->d()Lcom/allinone/callerid/customview/e/a;

    move-result-object p1

    new-array v6, v3, [F

    aput v2, v6, v4

    iget v7, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->V0:F

    aput v7, v6, v5

    invoke-virtual {p1, v6}, Lcom/allinone/callerid/customview/e/a;->k([F)Lcom/allinone/callerid/customview/e/a;

    move-result-object p1

    new-array v6, v5, [Landroid/view/View;

    iget-object v7, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->r0:Landroid/widget/ImageView;

    aput-object v7, v6, v4

    .line 17
    invoke-virtual {p1, v6}, Lcom/allinone/callerid/customview/e/a;->a([Landroid/view/View;)Lcom/allinone/callerid/customview/e/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/customview/e/a;->d()Lcom/allinone/callerid/customview/e/a;

    move-result-object p1

    new-array v3, v3, [F

    aput v2, v3, v4

    iget v2, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->V0:F

    aput v2, v3, v5

    invoke-virtual {p1, v3}, Lcom/allinone/callerid/customview/e/a;->k([F)Lcom/allinone/callerid/customview/e/a;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/allinone/callerid/customview/e/a;->c()Lcom/allinone/callerid/customview/e/d;

    move-result-object p1

    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/allinone/callerid/customview/e/d;->j(J)Lcom/allinone/callerid/customview/e/d;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/mvc/controller/MainActivity$q;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/MainActivity$q;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    .line 20
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/customview/e/d;->l(Lcom/allinone/callerid/customview/e/c;)Lcom/allinone/callerid/customview/e/d;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/allinone/callerid/customview/e/d;->n()Lcom/allinone/callerid/customview/e/d;

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic B0(Lcom/allinone/callerid/mvc/controller/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->w1()V

    return-void
.end method

.method private B1()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/allinone/callerid/mvc/controller/ShareActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method static synthetic C0(Lcom/allinone/callerid/mvc/controller/MainActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->U0:Z

    return p1
.end method

.method static synthetic E0(Lcom/allinone/callerid/mvc/controller/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->W:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic F0(Lcom/allinone/callerid/mvc/controller/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->X:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic G0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Lcom/allinone/callerid/inapputil/GoogleBillingUtil;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->V:Lcom/allinone/callerid/inapputil/GoogleBillingUtil;

    return-object p0
.end method

.method static synthetic H0(Lcom/allinone/callerid/mvc/controller/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->v0:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic I0(Lcom/allinone/callerid/mvc/controller/MainActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->w0:Z

    return p1
.end method

.method static synthetic K0(Lcom/allinone/callerid/mvc/controller/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->d1()V

    return-void
.end method

.method static synthetic L0(Lcom/allinone/callerid/mvc/controller/MainActivity;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->K0:J

    return-wide p1
.end method

.method static synthetic M0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->q0:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic N0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->p0:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic O0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/content/Intent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->C:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic P0(Lcom/allinone/callerid/mvc/controller/MainActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->C:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic Q0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method static synthetic R0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->T:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic S0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->S:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic T0(Lcom/allinone/callerid/mvc/controller/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->z1()V

    return-void
.end method

.method static synthetic U0(Lcom/allinone/callerid/mvc/controller/MainActivity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/allinone/callerid/mvc/controller/MainActivity;->s1(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic V0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Lcom/allinone/callerid/main/CustomViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->u:Lcom/allinone/callerid/main/CustomViewPager;

    return-object p0
.end method

.method static synthetic W0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/view/LayoutInflater;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->J0:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method private X()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/a1;->P()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->I:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->P:Z

    const/16 v2, 0x8

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->G:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->G:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->A:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/allinone/callerid/util/h1;->W(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->z:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->Q0:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->A:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->Q0:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->B:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->Q0:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 11
    invoke-static {}, Lcom/allinone/callerid/util/recorder/b;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->Y:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->Y:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method static synthetic X0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->Q0:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic Y(Lcom/allinone/callerid/mvc/controller/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->q1()V

    return-void
.end method

.method static synthetic Y0(Lcom/allinone/callerid/mvc/controller/MainActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->I0:I

    return p0
.end method

.method static synthetic Z(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->E:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic Z0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->m0:Landroid/view/View;

    return-object p0
.end method

.method static synthetic a0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Lcom/github/clans/fab/FloatingActionButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->Q:Lcom/github/clans/fab/FloatingActionButton;

    return-object p0
.end method

.method static synthetic a1(Lcom/allinone/callerid/mvc/controller/MainActivity;)Lcom/github/clans/fab/FloatingActionMenu;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->n0:Lcom/github/clans/fab/FloatingActionMenu;

    return-object p0
.end method

.method static synthetic b0(Lcom/allinone/callerid/mvc/controller/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->u1()V

    return-void
.end method

.method static synthetic b1(Lcom/allinone/callerid/mvc/controller/MainActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->A1(Z)V

    return-void
.end method

.method static synthetic c0(Lcom/allinone/callerid/mvc/controller/MainActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->P0:I

    return p0
.end method

.method static synthetic c1(Lcom/allinone/callerid/mvc/controller/MainActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->O0:I

    return p0
.end method

.method static synthetic d0(Lcom/allinone/callerid/mvc/controller/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->v1()V

    return-void
.end method

.method private d1()V
    .locals 2

    .line 1
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
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->n0:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionMenu;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->n0:Lcom/github/clans/fab/FloatingActionMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->u(Z)V

    :cond_0
    return-void
.end method

.method static synthetic e0(Lcom/allinone/callerid/mvc/controller/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->t1()V

    return-void
.end method

.method private e1(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10010d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10010c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10037c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/mvc/controller/MainActivity$a;

    invoke-direct {v2, p0, p1}, Lcom/allinone/callerid/mvc/controller/MainActivity$a;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100214

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/MainActivity$h0;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/MainActivity$h0;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 v0, -0x1

    .line 9
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->I0:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v0, -0x2

    .line 10
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

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

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic f0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->R:Z

    return p0
.end method

.method private f1()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/MainActivity$g0;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/MainActivity$g0;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic g0(Lcom/allinone/callerid/mvc/controller/MainActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->R:Z

    return p1
.end method

.method private g1()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/allinone/callerid/inapputil/GoogleBillingUtil;->s(Z)V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/inapputil/GoogleBillingUtil;->p()Lcom/allinone/callerid/inapputil/GoogleBillingUtil;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/allinone/callerid/mvc/controller/MainActivity$k0;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;Lcom/allinone/callerid/mvc/controller/MainActivity$k;)V

    .line 3
    invoke-virtual {v0, p0, v1}, Lcom/allinone/callerid/inapputil/GoogleBillingUtil;->k(Landroid/app/Activity;Lcom/allinone/callerid/inapputil/c;)Lcom/allinone/callerid/inapputil/GoogleBillingUtil;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Lcom/allinone/callerid/inapputil/GoogleBillingUtil;->l(Landroid/app/Activity;)Lcom/allinone/callerid/inapputil/GoogleBillingUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->V:Lcom/allinone/callerid/inapputil/GoogleBillingUtil;

    return-void
.end method

.method static synthetic h0(Lcom/allinone/callerid/mvc/controller/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->l1()V

    return-void
.end method

.method private h1()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->J0:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0120

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09074e

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090210

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 5
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->o0:Landroid/widget/PopupWindow;

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 9
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->o0:Landroid/widget/PopupWindow;

    div-int/lit8 v0, v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->o0:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->o0:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->o0:Landroid/widget/PopupWindow;

    const v1, 0x7f110304

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 13
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 14
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->o0:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic i0(Lcom/allinone/callerid/mvc/controller/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->k1()V

    return-void
.end method

.method private i1()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->p1()V

    return-void
.end method

.method static synthetic j0(Lcom/allinone/callerid/mvc/controller/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->o1()V

    return-void
.end method

.method private j1()V
    .locals 12

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->J0:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0122

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090682

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090684

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090686

    .line 4
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090685

    .line 5
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090683

    .line 6
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0901e9

    .line 7
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    const v7, 0x7f0901eb

    .line 8
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    const v8, 0x7f0901ed

    .line 9
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    const v9, 0x7f0901ec

    .line 10
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    const v10, 0x7f0901ea

    .line 11
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .line 12
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 13
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 14
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 15
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 16
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 17
    invoke-virtual {v6, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-virtual {v7, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    invoke-virtual {v8, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    invoke-virtual {v9, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-virtual {v10, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->c0:Landroid/widget/PopupWindow;

    const/4 v0, -0x2

    .line 23
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 24
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->c0:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 25
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->c0:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->c0:Landroid/widget/PopupWindow;

    const v1, 0x7f110305

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->c0:Landroid/widget/PopupWindow;

    const v1, 0x7f110304

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 29
    :goto_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 30
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->c0:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic k0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->u0:Z

    return p0
.end method

.method private k1()V
    .locals 2

    .line 1
    new-instance v0, Lcom/allinone/callerid/util/y;

    invoke-direct {v0}, Lcom/allinone/callerid/util/y;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/allinone/callerid/util/h1;->s0(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/allinone/callerid/mvc/controller/MainActivity$v;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/MainActivity$v;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/y;->c(Lcom/allinone/callerid/util/y$b;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/y;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method static synthetic l0(Lcom/allinone/callerid/mvc/controller/MainActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->u0:Z

    return p1
.end method

.method private l1()V
    .locals 7

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->J0:Landroid/view/LayoutInflater;

    const v0, 0x7f0404ec

    const v1, 0x7f08018e

    .line 2
    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->y0:I

    const v0, 0x7f0404ea

    const v1, 0x7f0802d4

    .line 3
    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->z0:I

    const v0, 0x7f0404eb

    const v1, 0x7f0801ac

    .line 4
    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->A0:I

    const v0, 0x7f0404e9

    const v1, 0x7f080294

    .line 5
    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->B0:I

    const v0, 0x7f0404f0

    const v1, 0x7f08018f

    .line 6
    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->C0:I

    const v0, 0x7f0404ee

    const v1, 0x7f0802d6

    .line 7
    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->D0:I

    const v0, 0x7f0404ef

    const v1, 0x7f0801ad

    .line 8
    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->E0:I

    const v0, 0x7f0404ed

    const v1, 0x7f080292

    .line 9
    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->F0:I

    const v0, 0x7f040142

    const v1, 0x7f06003a

    .line 10
    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->G0:I

    const v0, 0x7f040143

    const v2, 0x7f06011e

    .line 11
    invoke-static {p0, v0, v2}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->H0:I

    const v0, 0x7f04011b

    .line 12
    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->I0:I

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01004c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->R0:Landroid/view/animation/Animation;

    .line 14
    invoke-static {}, Lcom/allinone/callerid/util/f1;->a()Landroid/graphics/Typeface;

    move-result-object v0

    .line 15
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->Q0:Landroid/graphics/Typeface;

    const v1, 0x7f09055d

    .line 16
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->b0:Landroid/widget/ImageView;

    const v1, 0x7f09005e

    .line 17
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->x0:Lcom/google/android/material/appbar/AppBarLayout;

    .line 18
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->b0:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0904e5

    .line 19
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->E:Landroid/widget/FrameLayout;

    const v1, 0x7f090537

    .line 20
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->v:Landroid/widget/ImageView;

    const v1, 0x7f090310

    .line 21
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->r0:Landroid/widget/ImageView;

    .line 22
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->v:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09006e

    .line 24
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->w:Lcom/allinone/callerid/customview/AVLoadingIndicatorView;

    const v1, 0x7f090251

    .line 25
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 26
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0903db

    .line 27
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->x:Landroid/view/View;

    const v1, 0x7f09017d

    .line 28
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->y:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x7f0905d1

    .line 29
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 30
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f0903dd

    .line 32
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/main/CustomViewPager;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->u:Lcom/allinone/callerid/main/CustomViewPager;

    const/4 v2, 0x2

    .line 33
    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    const v1, 0x7f09055e

    .line 34
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 35
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0901cc

    .line 36
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 37
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090538

    .line 38
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 39
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090124

    .line 40
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 41
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090498

    .line 42
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 43
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    const/4 v3, 0x0

    .line 44
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    const v3, 0x7f09049b

    .line 45
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->Y:Landroid/widget/ImageView;

    .line 46
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09021c

    .line 47
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->K:Landroid/widget/FrameLayout;

    .line 48
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09030b

    .line 49
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->I:Landroid/widget/ImageView;

    const v3, 0x7f0900cc

    .line 50
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->z:Landroid/widget/TextView;

    const v3, 0x7f0900cd

    .line 51
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->A:Landroid/widget/TextView;

    const v3, 0x7f090764

    .line 52
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->B:Landroid/widget/TextView;

    const v3, 0x7f0902fb

    .line 53
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->H:Landroid/widget/ImageView;

    const v3, 0x7f0903b6

    .line 54
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v4, 0x7f0901c6

    .line 55
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->G:Landroid/widget/FrameLayout;

    const v4, 0x7f09039f

    .line 56
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v4, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v4, 0x7f09039e

    .line 57
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v5, 0x7f09038a

    .line 58
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 59
    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f090697

    .line 61
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->S:Landroid/widget/TextView;

    const v4, 0x7f090625

    .line 62
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->T:Landroid/widget/TextView;

    .line 63
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->I:Landroid/widget/ImageView;

    const v1, 0x7f0907d5

    .line 64
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->m0:Landroid/view/View;

    .line 65
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->G:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090759

    .line 66
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f090757

    .line 67
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f090717

    .line 68
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f090615

    .line 69
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f0905fa

    .line 70
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->p0:Landroid/widget/TextView;

    const v1, 0x7f090777

    .line 71
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->q0:Landroid/widget/TextView;

    .line 72
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->p0:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 73
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->q0:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f090664

    .line 74
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f090696

    .line 75
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f090624

    .line 76
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f090221

    .line 77
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->L0:Landroid/widget/FrameLayout;

    const v1, 0x7f090339

    .line 78
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->M0:Landroid/widget/ImageView;

    const v1, 0x7f090792

    .line 79
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->N0:Landroid/widget/TextView;

    .line 80
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 81
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->L0:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-static {}, Lcom/allinone/callerid/util/a1;->z2()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 83
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->M0:Landroid/widget/ImageView;

    const v5, 0x7f080165

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->N0:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100090

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->M0:Landroid/widget/ImageView;

    const v5, 0x7f08017c

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->N0:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10011a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :goto_0
    iget-boolean v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->R:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x11

    if-lt v2, v1, :cond_2

    const v1, 0x7f08027e

    .line 88
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_2
    const v1, 0x7f0901d3

    .line 89
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x7f090636

    .line 90
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->e0:Landroid/widget/TextView;

    const v2, 0x7f0901d4

    .line 91
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v3, 0x7f090637

    .line 92
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->f0:Landroid/widget/TextView;

    const v3, 0x7f0901da

    .line 93
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v5, 0x7f09064e

    .line 94
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->g0:Landroid/widget/TextView;

    const v5, 0x7f0901cd

    .line 95
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    const v6, 0x7f090618

    .line 96
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->h0:Landroid/widget/TextView;

    const v6, 0x7f090286

    .line 97
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->i0:Landroid/widget/ImageView;

    const v6, 0x7f090287

    .line 98
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->j0:Landroid/widget/ImageView;

    const v6, 0x7f090289

    .line 99
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->k0:Landroid/widget/ImageView;

    const v6, 0x7f090282

    .line 100
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->l0:Landroid/widget/ImageView;

    const v6, 0x7f0902e5

    .line 101
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->t0:Landroid/widget/ImageView;

    .line 102
    iget-object v6, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->e0:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 103
    iget-object v6, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->f0:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 104
    iget-object v6, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->g0:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 105
    iget-object v6, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->h0:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 106
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-virtual {v5, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0905a5

    .line 110
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/FloatingActionMenu;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->n0:Lcom/github/clans/fab/FloatingActionMenu;

    .line 111
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->setContentDescription(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->n0:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {v0, v4}, Lcom/github/clans/fab/FloatingActionMenu;->setClosedOnTouchOutside(Z)V

    const v0, 0x7f0901b5

    .line 113
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/FloatingActionButton;

    const v1, 0x7f0901b7

    .line 114
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/github/clans/fab/FloatingActionButton;

    const v2, 0x7f0901b6

    .line 115
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/github/clans/fab/FloatingActionButton;

    const v3, 0x7f0901b4

    .line 116
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/github/clans/fab/FloatingActionButton;

    .line 117
    invoke-virtual {v0, p0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {v1, p0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-virtual {v2, p0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-virtual {v3, p0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v4, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->Q0:Landroid/graphics/Typeface;

    invoke-virtual {v0, v4}, Lcom/github/clans/fab/FloatingActionButton;->setLabelTextType(Landroid/graphics/Typeface;)V

    .line 122
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->Q0:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Lcom/github/clans/fab/FloatingActionButton;->setLabelTextType(Landroid/graphics/Typeface;)V

    .line 123
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->Q0:Landroid/graphics/Typeface;

    invoke-virtual {v2, v0}, Lcom/github/clans/fab/FloatingActionButton;->setLabelTextType(Landroid/graphics/Typeface;)V

    .line 124
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->Q0:Landroid/graphics/Typeface;

    invoke-virtual {v3, v0}, Lcom/github/clans/fab/FloatingActionButton;->setLabelTextType(Landroid/graphics/Typeface;)V

    .line 125
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->n0:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f01004d

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->setMenuButtonShowAnimation(Landroid/view/animation/Animation;)V

    .line 126
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->n0:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f010041

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->setMenuButtonHideAnimation(Landroid/view/animation/Animation;)V

    .line 127
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->n0:Lcom/github/clans/fab/FloatingActionMenu;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/MainActivity$l;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/MainActivity$l;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->setOnMenuToggleListener(Lcom/github/clans/fab/FloatingActionMenu$h;)V

    const v0, 0x7f090237

    .line 128
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/FloatingActionButton;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->Q:Lcom/github/clans/fab/FloatingActionButton;

    .line 129
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 130
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->Q:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setHideAnimation(Landroid/view/animation/Animation;)V

    const v0, 0x7f0402ed

    const v1, 0x7f08024f

    .line 131
    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->O0:I

    const v0, 0x7f040239

    const v1, 0x7f080157

    .line 132
    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->P0:I

    .line 133
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->Q:Lcom/github/clans/fab/FloatingActionButton;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/MainActivity$b0;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/MainActivity$b0;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->u:Lcom/allinone/callerid/main/CustomViewPager;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/MainActivity$c0;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/MainActivity$c0;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->c(Landroidx/viewpager/widget/ViewPager$i;)V

    .line 135
    new-instance v0, Lcom/allinone/callerid/b/n;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->A()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/allinone/callerid/b/n;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 136
    new-instance v1, Lcom/allinone/callerid/g/e;

    invoke-direct {v1}, Lcom/allinone/callerid/g/e;-><init>()V

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->d0:Lcom/allinone/callerid/g/e;

    .line 137
    new-instance v1, Lcom/allinone/callerid/g/d;

    invoke-direct {v1}, Lcom/allinone/callerid/g/d;-><init>()V

    .line 138
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->d0:Lcom/allinone/callerid/g/e;

    const v2, 0x7f100349

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/allinone/callerid/b/n;->y(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 139
    new-instance v1, Lcom/allinone/callerid/g/c;

    invoke-direct {v1}, Lcom/allinone/callerid/g/c;-><init>()V

    const v2, 0x7f1002f3

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/allinone/callerid/b/n;->y(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 140
    new-instance v1, Lcom/allinone/callerid/g/b;

    invoke-direct {v1}, Lcom/allinone/callerid/g/b;-><init>()V

    const v2, 0x7f10007a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/allinone/callerid/b/n;->y(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->u:Lcom/allinone/callerid/main/CustomViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic m0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Lcom/allinone/callerid/customview/AVLoadingIndicatorView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->w:Lcom/allinone/callerid/customview/AVLoadingIndicatorView;

    return-object p0
.end method

.method private m1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/MainActivity$d0;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/MainActivity$d0;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic n0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->t0:Landroid/widget/ImageView;

    return-object p0
.end method

.method private n1()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/a1;->n2()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/a1;->B()J

    move-result-wide v1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-eqz v6, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    const-wide/32 v1, 0x5265c00

    cmp-long v6, v4, v1

    if-lez v6, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-static {}, Lcom/allinone/callerid/util/a1;->k0()J

    move-result-wide v4

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/a1;->v0()I

    move-result v2

    .line 6
    sget-boolean v6, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v6, :cond_1

    .line 7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCanShow:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "oldtime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "counts:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "tony"

    invoke-static {v7, v6}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v6, v0, v4

    if-lez v6, :cond_2

    if-lt v2, v3, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->B1()V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xa4cb800

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/a1;->P1(J)V

    :cond_2
    return-void
.end method

.method static synthetic o0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->x:Landroid/view/View;

    return-object p0
.end method

.method private o1()V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/mvc/controller/MainActivity$u;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/MainActivity$u;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    invoke-static {v0}, Lcom/allinone/callerid/i/a/p/c;->b(Lcom/allinone/callerid/i/a/p/b;)V

    return-void
.end method

.method static synthetic p0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroidx/drawerlayout/widget/DrawerLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->y:Landroidx/drawerlayout/widget/DrawerLayout;

    return-object p0
.end method

.method private p1()V
    .locals 4

    const v0, 0x7f01004c

    .line 1
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->J:Landroid/view/animation/Animation;

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->y:Landroidx/drawerlayout/widget/DrawerLayout;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/MainActivity$e0;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/MainActivity$e0;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroidx/drawerlayout/widget/DrawerLayout$d;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "shortcutcontacts"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v3, "shortcut_contacts"

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->u:Lcom/allinone/callerid/main/CustomViewPager;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->v1()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->u:Lcom/allinone/callerid/main/CustomViewPager;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 10
    :cond_2
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->u1()V

    .line 11
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "is_callscreen"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->u:Lcom/allinone/callerid/main/CustomViewPager;

    if-eqz v0, :cond_3

    .line 13
    sput-boolean v1, Lcom/allinone/callerid/d/f/a;->e:Z

    .line 14
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 15
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "offline_notifi"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "open_offline"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "fcm"

    .line 17
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->u:Lcom/allinone/callerid/main/CustomViewPager;

    if-eqz v0, :cond_5

    .line 19
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 20
    :cond_5
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "fcm_open_notifi"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 21
    :cond_6
    new-instance v0, Lcom/allinone/callerid/mvc/controller/MainActivity$j0;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/MainActivity$j0;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->F:Lcom/allinone/callerid/mvc/controller/MainActivity$j0;

    .line 22
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.allinone.callerid.CLOSE_AD"

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.allinone.callerid.SET_SHORTCUT"

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.allinone.callerid.IDENTIFY_NUMBER"

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->F:Lcom/allinone/callerid/mvc/controller/MainActivity$j0;

    invoke-virtual {v1, v2, v0}, Lb/p/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 27
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->r1()V

    .line 28
    new-instance v0, Lcom/allinone/callerid/util/q0;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/util/q0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->M:Lcom/allinone/callerid/util/q0;

    .line 29
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->z1()V

    .line 30
    new-instance v0, Lcom/allinone/callerid/receiver/DisturbNotifitcationReceiver;

    invoke-direct {v0}, Lcom/allinone/callerid/receiver/DisturbNotifitcationReceiver;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->Z:Lcom/allinone/callerid/receiver/DisturbNotifitcationReceiver;

    .line 31
    invoke-static {p0}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->Z:Lcom/allinone/callerid/receiver/DisturbNotifitcationReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.allinone.callerid.DISTURB_NOTIFICATION_TUENOFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lb/p/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :try_start_0
    const-string v0, "clipboard"

    .line 32
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_7

    .line 33
    new-instance v1, Lcom/allinone/callerid/mvc/controller/MainActivity$f0;

    invoke-direct {v1, p0, v0}, Lcom/allinone/callerid/mvc/controller/MainActivity$f0;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;Landroid/content/ClipboardManager;)V

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->j1()V

    .line 36
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->h1()V

    .line 37
    invoke-static {p0}, Lcom/allinone/callerid/util/h1;->G0(Landroid/app/Activity;)V

    .line 38
    invoke-static {p0}, Lcom/allinone/callerid/util/h1;->j0(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->P:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    const-string v1, "showcaller_removeads_month"

    const-string v2, "showcaller_removeads_year"

    .line 39
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/inapputil/GoogleBillingUtil;->I([Ljava/lang/String;[Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->g1()V

    .line 41
    :cond_8
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->X()V

    .line 42
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->f1()V

    return-void
.end method

.method static synthetic q0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->I:Landroid/widget/ImageView;

    return-object p0
.end method

.method private q1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/d$a;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ca-app-pub-5825926894918682/4484122459"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/d$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/allinone/callerid/mvc/controller/MainActivity$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/MainActivity$b;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/d$a;->c(Lcom/google/android/gms/ads/nativead/a$c;)Lcom/google/android/gms/ads/d$a;

    .line 3
    new-instance v1, Lcom/google/android/gms/ads/t$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/t$a;-><init>()V

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/t$a;->b(Z)Lcom/google/android/gms/ads/t$a;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/ads/t$a;->a()Lcom/google/android/gms/ads/t;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/google/android/gms/ads/formats/c$a;

    invoke-direct {v2}, Lcom/google/android/gms/ads/formats/c$a;-><init>()V

    .line 7
    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/formats/c$a;->h(Lcom/google/android/gms/ads/t;)Lcom/google/android/gms/ads/formats/c$a;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/c$a;->a()Lcom/google/android/gms/ads/formats/c;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/d$a;->f(Lcom/google/android/gms/ads/formats/c;)Lcom/google/android/gms/ads/d$a;

    .line 10
    new-instance v1, Lcom/allinone/callerid/mvc/controller/MainActivity$c;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/MainActivity$c;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/d$a;->e(Lcom/google/android/gms/ads/b;)Lcom/google/android/gms/ads/d$a;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/ads/d$a;->a()Lcom/google/android/gms/ads/d;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->S0:Lcom/google/android/gms/ads/d;

    .line 12
    new-instance v1, Lcom/google/android/gms/ads/e$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/e$a;-><init>()V

    const-class v2, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 13
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/ads/e$a;->b(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/e$a;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/ads/e$a;->c()Lcom/google/android/gms/ads/e;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/d;->b(Lcom/google/android/gms/ads/e;)V

    return-void
.end method

.method static synthetic r0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->J:Landroid/view/animation/Animation;

    return-object p0
.end method

.method private r1()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/e/a;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->W0:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/allinone/callerid/e/a;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic s0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->H:Landroid/widget/ImageView;

    return-object p0
.end method

.method private s1(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, ""

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/mvc/controller/MainActivity$z;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/allinone/callerid/mvc/controller/MainActivity$z;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p2, v0}, Lcom/allinone/callerid/i/a/f/b;->b(Ljava/lang/String;Lcom/allinone/callerid/i/a/f/a;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1001b0

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic t0(Lcom/allinone/callerid/mvc/controller/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->e1(Ljava/lang/String;)V

    return-void
.end method

.method private t1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->i0:Landroid/widget/ImageView;

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->C0:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->j0:Landroid/widget/ImageView;

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->D0:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->k0:Landroid/widget/ImageView;

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->E0:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->l0:Landroid/widget/ImageView;

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->B0:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->e0:Landroid/widget/TextView;

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->H0:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->f0:Landroid/widget/TextView;

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->H0:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->g0:Landroid/widget/TextView;

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->H0:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->h0:Landroid/widget/TextView;

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->G0:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method static synthetic u0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->R0:Landroid/view/animation/Animation;

    return-object p0
.end method

.method private u1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->i0:Landroid/widget/ImageView;

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->y0:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->j0:Landroid/widget/ImageView;

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->D0:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->k0:Landroid/widget/ImageView;

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->E0:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->l0:Landroid/widget/ImageView;

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->F0:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->e0:Landroid/widget/TextView;

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->G0:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->f0:Landroid/widget/TextView;

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->H0:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->g0:Landroid/widget/TextView;

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->H0:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->h0:Landroid/widget/TextView;

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->H0:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method static synthetic v0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->T0:Z

    return p0
.end method

.method private v1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->i0:Landroid/widget/ImageView;

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->C0:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->j0:Landroid/widget/ImageView;

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->D0:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->k0:Landroid/widget/ImageView;

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->A0:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->l0:Landroid/widget/ImageView;

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->F0:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->e0:Landroid/widget/TextView;

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->H0:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->f0:Landroid/widget/TextView;

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->H0:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->g0:Landroid/widget/TextView;

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->G0:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->h0:Landroid/widget/TextView;

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->H0:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method static synthetic w0(Lcom/allinone/callerid/mvc/controller/MainActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->T0:Z

    return p1
.end method

.method private w1()V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/mvc/controller/MainActivity$y;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/MainActivity$y;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    invoke-static {p0, v0}, Lcom/allinone/callerid/dialog/m;->h(Landroid/app/Activity;Lcom/allinone/callerid/i/a/g/f;)V

    return-void
.end method

.method static synthetic x0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Lcom/allinone/callerid/dialog/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->D:Lcom/allinone/callerid/dialog/d;

    return-object p0
.end method

.method private x1()V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/mvc/controller/MainActivity$a0;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/MainActivity$a0;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    invoke-static {p0, v0}, Lcom/allinone/callerid/dialog/m;->g(Landroid/app/Activity;Lcom/allinone/callerid/i/a/g/b;)V

    return-void
.end method

.method static synthetic y0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->v:Landroid/widget/ImageView;

    return-object p0
.end method

.method private y1()V
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->J0:Landroid/view/LayoutInflater;

    const v1, 0x7f0c015b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090185

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/customview/DeletableEditText;

    const v2, 0x7f090186

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/customview/DeletableEditText;

    const v3, 0x7f100080

    .line 5
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 6
    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->Q0:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    const v3, 0x7f100083

    .line 7
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 8
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100053

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 10
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1002bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/allinone/callerid/mvc/controller/MainActivity$x;

    invoke-direct {v4, p0, v2, v1}, Lcom/allinone/callerid/mvc/controller/MainActivity$x;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;Lcom/allinone/callerid/customview/DeletableEditText;Lcom/allinone/callerid/customview/DeletableEditText;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/mvc/controller/MainActivity$w;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/MainActivity$w;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v1, -0x1

    .line 15
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iget v2, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->I0:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v1, -0x2

    .line 16
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

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

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic z0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Lcom/google/android/gms/ads/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->S0:Lcom/google/android/gms/ads/d;

    return-object p0
.end method

.method private z1()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->M:Lcom/allinone/callerid/util/q0;

    invoke-static {p0, v0}, Lcom/allinone/callerid/i/a/t/c;->b(Landroid/content/Context;Lcom/allinone/callerid/util/q0;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "inappbilling"

    invoke-static {v0, p3}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 p3, 0x29a

    if-ne p1, p3, :cond_1

    const/16 p1, 0x309

    if-ne p2, p1, :cond_1

    .line 4
    iget-boolean p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->P:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/allinone/callerid/util/a1;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Lcom/allinone/callerid/dialog/h;

    const v2, 0x7f1100f6

    iget-object v4, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->W:Ljava/lang/String;

    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->X:Ljava/lang/String;

    iget-object v6, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->V:Lcom/allinone/callerid/inapputil/GoogleBillingUtil;

    iget-boolean v7, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->w0:Z

    iget-object v8, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->v0:Ljava/lang/String;

    iget-wide v9, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->K0:J

    const/4 v11, 0x1

    move-object v0, p1

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v11}, Lcom/allinone/callerid/dialog/h;-><init>(Landroid/content/Context;ILandroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/inapputil/GoogleBillingUtil;ZLjava/lang/String;JZ)V

    .line 6
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x0

    .line 7
    invoke-static {p1}, Lcom/allinone/callerid/util/a1;->J0(Z)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 16

    move-object/from16 v13, p0

    move-object/from16 v0, p1

    const-string v1, "android.app.role.DIALER"

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    const/16 v3, 0x29a

    const-string v9, "window"

    const-string v4, "main_cardview"

    const-string v5, "tony"

    const/16 v10, 0x8

    const/4 v11, 0x2

    const/4 v12, 0x0

    const v8, 0x7f010001

    const/high16 v14, 0x7f010000

    const v15, 0x800003

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_3

    .line 2
    :sswitch_0
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v5, v4}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5
    const-class v1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-virtual {v0, v13, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v13, v0, v3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 7
    invoke-virtual {v13, v14, v8}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 9
    :sswitch_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "share"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 10
    :try_start_1
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->y:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v15}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)V

    .line 11
    new-instance v0, Lcom/allinone/callerid/dialog/n;

    const v3, 0x7f1100f6

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/allinone/callerid/dialog/n;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 15
    invoke-virtual {v0, v12}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 16
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 17
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x50

    .line 19
    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 21
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 22
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 23
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 24
    div-int/2addr v2, v11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    :goto_0
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->I:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 28
    :sswitch_2
    iget-object v1, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->u:Lcom/allinone/callerid/main/CustomViewPager;

    if-eqz v1, :cond_1f

    .line 29
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    .line 30
    :cond_1
    iget-object v1, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->c0:Landroid/widget/PopupWindow;

    if-nez v1, :cond_2

    .line 31
    invoke-direct/range {p0 .. p0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->j1()V

    .line 32
    :cond_2
    iget-object v1, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->c0:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1f

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x5

    if-eqz v1, :cond_3

    .line 34
    iget-object v1, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->c0:Landroid/widget/PopupWindow;

    const v4, 0x800033

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result v2

    add-int/lit8 v2, v2, 0x19

    .line 36
    invoke-virtual {v1, v0, v4, v3, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_3

    .line 37
    :cond_3
    iget-object v1, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->c0:Landroid/widget/PopupWindow;

    const v4, 0x800035

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result v2

    add-int/lit8 v2, v2, 0x19

    .line 39
    invoke-virtual {v1, v0, v4, v3, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_3

    .line 40
    :sswitch_3
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->y:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v15}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)V

    .line 41
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->s0:Landroid/os/Handler;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/MainActivity$f;

    invoke-direct {v1, v13}, Lcom/allinone/callerid/mvc/controller/MainActivity$f;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    .line 42
    :sswitch_4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "main_liwuhe"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 43
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->D:Lcom/allinone/callerid/dialog/d;

    if-nez v0, :cond_4

    .line 44
    new-instance v0, Lcom/allinone/callerid/dialog/d;

    const v1, 0x7f1100f6

    invoke-direct {v0, v13, v1}, Lcom/allinone/callerid/dialog/d;-><init>(Landroid/content/Context;I)V

    iput-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->D:Lcom/allinone/callerid/dialog/d;

    .line 45
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 46
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->D:Lcom/allinone/callerid/dialog/d;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/MainActivity$m;

    invoke-direct {v1, v13}, Lcom/allinone/callerid/mvc/controller/MainActivity$m;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 47
    :cond_4
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->D:Lcom/allinone/callerid/dialog/d;

    invoke-virtual {v0}, Lcom/allinone/callerid/dialog/d;->show()V

    .line 48
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->D:Lcom/allinone/callerid/dialog/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 49
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    .line 50
    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 51
    invoke-virtual {v13, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    if-eqz v2, :cond_1f

    .line 52
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_3

    .line 54
    :sswitch_5
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->y:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v15}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)V

    .line 55
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->s0:Landroid/os/Handler;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/MainActivity$d;

    invoke-direct {v1, v13}, Lcom/allinone/callerid/mvc/controller/MainActivity$d;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->Y:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 57
    invoke-static {v6}, Lcom/allinone/callerid/util/recorder/b;->p(Z)V

    .line 58
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->Y:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_6

    .line 60
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "click_cehua_record_p"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 61
    :cond_6
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "recorder_home_sideslip_click"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 62
    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;

    invoke-direct {v0, v13, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v13, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 63
    invoke-virtual {v13, v14, v8}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 64
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->s0:Landroid/os/Handler;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/MainActivity$i;

    invoke-direct {v1, v13}, Lcom/allinone/callerid/mvc/controller/MainActivity$i;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    :sswitch_7
    const-wide/16 v2, 0x64

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-direct {v0, v13, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v13, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 66
    invoke-virtual {v13, v14, v8}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 67
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->s0:Landroid/os/Handler;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/MainActivity$j;

    invoke-direct {v1, v13}, Lcom/allinone/callerid/mvc/controller/MainActivity$j;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    .line 68
    :sswitch_8
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_7

    .line 69
    invoke-static {v5, v4}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_7
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 71
    const-class v1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-virtual {v0, v13, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 72
    invoke-virtual {v13, v0, v3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 73
    invoke-virtual {v13, v14, v8}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 75
    :sswitch_9
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->y:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800005

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->C(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 76
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->y:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)V

    .line 77
    :cond_8
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->y:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v15}, Landroidx/drawerlayout/widget/DrawerLayout;->C(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 78
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->y:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v15}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)V

    goto/16 :goto_3

    .line 79
    :cond_9
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->y:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v15}, Landroidx/drawerlayout/widget/DrawerLayout;->J(I)V

    goto/16 :goto_3

    .line 80
    :sswitch_a
    invoke-static {}, Lcom/allinone/callerid/util/a1;->z2()I

    move-result v0

    if-nez v0, :cond_a

    .line 81
    invoke-static {v6}, Lcom/allinone/callerid/util/a1;->S2(I)V

    goto :goto_1

    .line 82
    :cond_a
    invoke-static {v12}, Lcom/allinone/callerid/util/a1;->S2(I)V

    .line 83
    :goto_1
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->L0:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/MainActivity$g;

    invoke-direct {v1, v13}, Lcom/allinone/callerid/mvc/controller/MainActivity$g;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    .line 84
    :sswitch_b
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/allinone/callerid/main/LogActivity;

    invoke-direct {v0, v13, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    invoke-virtual {v13, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 86
    invoke-virtual {v13, v14, v8}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 87
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->y:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v15}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)V

    goto/16 :goto_3

    .line 88
    :sswitch_c
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->o0:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_b

    .line 89
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 90
    :cond_b
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    const-class v1, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;

    invoke-virtual {v0, v13, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 92
    invoke-virtual {v13, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 93
    invoke-virtual {v13, v14, v8}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 95
    :sswitch_d
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->d0:Lcom/allinone/callerid/g/e;

    if-eqz v0, :cond_c

    .line 96
    iput v11, v0, Lcom/allinone/callerid/g/e;->A0:I

    .line 97
    invoke-virtual {v0}, Lcom/allinone/callerid/g/e;->f3()V

    .line 98
    :cond_c
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->c0:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1f

    .line 99
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_3

    .line 100
    :sswitch_e
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->d0:Lcom/allinone/callerid/g/e;

    if-eqz v0, :cond_d

    const/4 v1, 0x3

    .line 101
    iput v1, v0, Lcom/allinone/callerid/g/e;->A0:I

    .line 102
    invoke-virtual {v0}, Lcom/allinone/callerid/g/e;->f3()V

    .line 103
    :cond_d
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->c0:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1f

    .line 104
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_3

    .line 105
    :sswitch_f
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->d0:Lcom/allinone/callerid/g/e;

    if-eqz v0, :cond_e

    .line 106
    iput v6, v0, Lcom/allinone/callerid/g/e;->A0:I

    .line 107
    invoke-virtual {v0}, Lcom/allinone/callerid/g/e;->f3()V

    .line 108
    :cond_e
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->c0:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1f

    .line 109
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_3

    .line 110
    :sswitch_10
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->c0:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 111
    :try_start_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_15

    .line 112
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/allinone/callerid/util/j1/a;->i(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 113
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->d0:Lcom/allinone/callerid/g/e;

    if-eqz v0, :cond_1f

    .line 114
    invoke-virtual {v0}, Lcom/allinone/callerid/g/e;->a3()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_3

    :cond_f
    const/16 v2, 0x1d

    const/16 v3, 0x3e7

    if-lt v0, v2, :cond_13

    .line 115
    :try_start_5
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {v13, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    if-eqz v0, :cond_14

    .line 116
    invoke-virtual {v0, v1}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 117
    invoke-virtual {v0, v1}, Landroid/app/role/RoleManager;->isRoleHeld(Ljava/lang/String;)Z

    move-result v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    const-string v4, "default_dialer"

    if-eqz v2, :cond_11

    .line 118
    :try_start_6
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_10

    const-string v0, "This app is the default dialer app"

    .line 119
    invoke-static {v4, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_10
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->d0:Lcom/allinone/callerid/g/e;

    invoke-virtual {v0}, Lcom/allinone/callerid/g/e;->a3()V

    goto :goto_2

    .line 121
    :cond_11
    sget-boolean v2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v2, :cond_12

    const-string v2, "This app isn\'t the default dialer app"

    .line 122
    invoke-static {v4, v2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_12
    invoke-virtual {v0, v1}, Landroid/app/role/RoleManager;->createRequestRoleIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 124
    invoke-virtual {v13, v0, v3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 125
    :cond_13
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telecom.action.CHANGE_DEFAULT_DIALER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME"

    .line 126
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/allinone/callerid/util/h1;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-virtual {v13, v0, v3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 128
    :cond_14
    :goto_2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "delete_request_default_dialer"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_3

    :catch_4
    move-exception v0

    .line 129
    :try_start_7
    iget-object v1, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->d0:Lcom/allinone/callerid/g/e;

    invoke-virtual {v1}, Lcom/allinone/callerid/g/e;->a3()V

    .line 130
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 131
    :cond_15
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->d0:Lcom/allinone/callerid/g/e;

    invoke-virtual {v0}, Lcom/allinone/callerid/g/e;->a3()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_3

    :catch_5
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 133
    :sswitch_11
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->d0:Lcom/allinone/callerid/g/e;

    if-eqz v0, :cond_16

    .line 134
    iput v12, v0, Lcom/allinone/callerid/g/e;->A0:I

    .line 135
    invoke-virtual {v0}, Lcom/allinone/callerid/g/e;->f3()V

    .line 136
    :cond_16
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->c0:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1f

    .line 137
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_3

    .line 138
    :sswitch_12
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->u:Lcom/allinone/callerid/main/CustomViewPager;

    if-eqz v0, :cond_1f

    .line 139
    invoke-virtual {v0, v6}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_3

    .line 140
    :sswitch_13
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->u:Lcom/allinone/callerid/main/CustomViewPager;

    if-eqz v0, :cond_1f

    .line 141
    invoke-virtual {v0, v11}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_3

    .line 142
    :sswitch_14
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->u:Lcom/allinone/callerid/main/CustomViewPager;

    if-eqz v0, :cond_17

    .line 143
    invoke-virtual {v0, v12}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 144
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->u1()V

    goto/16 :goto_3

    .line 145
    :sswitch_15
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->u:Lcom/allinone/callerid/main/CustomViewPager;

    if-eqz v0, :cond_1f

    .line 146
    invoke-virtual {v0, v11}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_3

    .line 147
    :sswitch_16
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->y:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v15}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)V

    .line 148
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->s0:Landroid/os/Handler;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/MainActivity$e;

    invoke-direct {v1, v13}, Lcom/allinone/callerid/mvc/controller/MainActivity$e;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    .line 149
    :sswitch_17
    :try_start_8
    new-instance v0, Lcom/allinone/callerid/dialog/h;

    const v3, 0x7f1100f6

    iget-object v5, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->W:Ljava/lang/String;

    iget-object v6, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->X:Ljava/lang/String;

    iget-object v7, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->V:Lcom/allinone/callerid/inapputil/GoogleBillingUtil;

    iget-boolean v8, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->w0:Z

    iget-object v9, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->v0:Ljava/lang/String;

    iget-wide v10, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->K0:J

    const/4 v12, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v4, p0

    invoke-direct/range {v1 .. v12}, Lcom/allinone/callerid/dialog/h;-><init>(Landroid/content/Context;ILandroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/inapputil/GoogleBillingUtil;ZLjava/lang/String;JZ)V

    .line 150
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 151
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->y:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v15}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_3

    :catch_6
    move-exception v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 153
    :sswitch_18
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-static {v0, v1}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_18

    .line 154
    invoke-direct/range {p0 .. p0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->x1()V

    .line 155
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->n0:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionMenu;->s()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 156
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->n0:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {v0, v6}, Lcom/github/clans/fab/FloatingActionMenu;->u(Z)V

    goto/16 :goto_3

    .line 157
    :cond_18
    new-instance v0, Lcom/allinone/callerid/mvc/controller/MainActivity$n;

    invoke-direct {v0, v13}, Lcom/allinone/callerid/mvc/controller/MainActivity$n;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    invoke-static {v13, v0}, Lcom/allinone/callerid/util/j1/a;->q(Landroid/app/Activity;Lcom/allinone/callerid/util/j1/a$g;)V

    goto/16 :goto_3

    .line 158
    :sswitch_19
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 159
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->n0:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionMenu;->s()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 160
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->n0:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {v0, v6}, Lcom/github/clans/fab/FloatingActionMenu;->u(Z)V

    .line 161
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->w1()V

    goto/16 :goto_3

    .line 162
    :cond_1a
    new-instance v0, Lcom/allinone/callerid/mvc/controller/MainActivity$o;

    invoke-direct {v0, v13}, Lcom/allinone/callerid/mvc/controller/MainActivity$o;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    invoke-static {v13, v0}, Lcom/allinone/callerid/util/j1/a;->m(Landroid/app/Activity;Lcom/allinone/callerid/util/j1/a$g;)V

    goto/16 :goto_3

    .line 163
    :sswitch_1a
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->n0:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionMenu;->s()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 164
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->n0:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {v0, v6}, Lcom/github/clans/fab/FloatingActionMenu;->u(Z)V

    .line 165
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->y1()V

    goto :goto_3

    .line 166
    :sswitch_1b
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->n0:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionMenu;->s()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 167
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->n0:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {v0, v6}, Lcom/github/clans/fab/FloatingActionMenu;->u(Z)V

    .line 168
    :cond_1c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 169
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    sget-object v2, Lcom/allinone/callerid/util/g1;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 170
    const-class v1, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    invoke-virtual {v0, v13, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 171
    invoke-virtual {v13, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 172
    invoke-virtual {v13, v14, v8}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_3

    .line 173
    :sswitch_1c
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->y:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v15}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)V

    .line 174
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->s0:Landroid/os/Handler;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/MainActivity$h;

    invoke-direct {v1, v13}, Lcom/allinone/callerid/mvc/controller/MainActivity$h;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 175
    :sswitch_1d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 176
    iget-wide v2, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->N:J

    sub-long v2, v0, v2

    .line 177
    iput-wide v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->N:J

    const-wide/16 v0, 0x258

    cmp-long v4, v2, v0

    if-gez v4, :cond_1e

    .line 178
    iget v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->O:I

    add-int/2addr v0, v6

    iput v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->O:I

    const/4 v1, 0x4

    if-ne v1, v0, :cond_1f

    .line 179
    iget-boolean v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->L:Z

    if-eqz v0, :cond_1d

    .line 180
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->K:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 181
    iput-boolean v12, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->L:Z

    goto :goto_3

    .line 182
    :cond_1d
    iget-object v0, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->K:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 183
    iput-boolean v6, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->L:Z

    goto :goto_3

    .line 184
    :cond_1e
    iput v12, v13, Lcom/allinone/callerid/mvc/controller/MainActivity;->O:I

    :cond_1f
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0900cd -> :sswitch_1d
        0x7f090124 -> :sswitch_1c
        0x7f0901b4 -> :sswitch_1b
        0x7f0901b5 -> :sswitch_1a
        0x7f0901b6 -> :sswitch_19
        0x7f0901b7 -> :sswitch_18
        0x7f0901c6 -> :sswitch_17
        0x7f0901cc -> :sswitch_16
        0x7f0901cd -> :sswitch_15
        0x7f0901d3 -> :sswitch_14
        0x7f0901d4 -> :sswitch_13
        0x7f0901da -> :sswitch_12
        0x7f0901e9 -> :sswitch_11
        0x7f0901ea -> :sswitch_10
        0x7f0901eb -> :sswitch_f
        0x7f0901ec -> :sswitch_e
        0x7f0901ed -> :sswitch_d
        0x7f090210 -> :sswitch_c
        0x7f09021c -> :sswitch_b
        0x7f090221 -> :sswitch_a
        0x7f090251 -> :sswitch_9
        0x7f090310 -> :sswitch_8
        0x7f09038a -> :sswitch_7
        0x7f09039e -> :sswitch_6
        0x7f090498 -> :sswitch_5
        0x7f090537 -> :sswitch_4
        0x7f090538 -> :sswitch_3
        0x7f09055d -> :sswitch_2
        0x7f09055e -> :sswitch_1
        0x7f0905d1 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/a1;->y0()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x10

    const-string v1, "tony"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_1

    const-string p1, "Night mode is active, we\'re using dark theme"

    .line 5
    invoke-static {v1, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-static {v2}, Lcom/allinone/callerid/util/a1;->S2(I)V

    goto :goto_0

    .line 7
    :cond_2
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_3

    const-string p1, "Night mode is not active, we\'re using the light theme"

    .line 8
    invoke-static {v1, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x0

    .line 9
    invoke-static {p1}, Lcom/allinone/callerid/util/a1;->S2(I)V

    .line 10
    :goto_0
    sput-boolean v2, Lcom/allinone/callerid/util/h1;->a:Z

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 12
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/main/EZCallApplication;->e()V

    .line 13
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/allinone/callerid/start/StartActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0042

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->m1()V

    .line 4
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "fcm"

    const-string v0, "main_onCreate"

    .line 5
    invoke-static {p1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->F:Lcom/allinone/callerid/mvc/controller/MainActivity$j0;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->F:Lcom/allinone/callerid/mvc/controller/MainActivity$j0;

    invoke-virtual {v0, v1}, Lb/p/a/a;->e(Landroid/content/BroadcastReceiver;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->Z:Lcom/allinone/callerid/receiver/DisturbNotifitcationReceiver;

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p0}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->Z:Lcom/allinone/callerid/receiver/DisturbNotifitcationReceiver;

    invoke-virtual {v0, v1}, Lb/p/a/a;->e(Landroid/content/BroadcastReceiver;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->V:Lcom/allinone/callerid/inapputil/GoogleBillingUtil;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, p0}, Lcom/allinone/callerid/inapputil/GoogleBillingUtil;->x(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->a0:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->a0:Z

    .line 3
    new-instance v0, Lcom/allinone/callerid/dialog/g;

    const v3, 0x7f1100f6

    invoke-direct {v0, p0, v3}, Lcom/allinone/callerid/dialog/g;-><init>(Landroid/content/Context;I)V

    .line 4
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 6
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v2, "over_per_first_show"

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    iput-boolean v2, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->a0:Z

    .line 8
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 9
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.category.HOME"

    .line 10
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    :try_start_0
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "fcm"

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "mian_onNewIntent"

    .line 3
    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_7

    .line 4
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "is_callscreen"

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->u:Lcom/allinone/callerid/main/CustomViewPager;

    if-eqz v0, :cond_2

    .line 9
    sput-boolean v2, Lcom/allinone/callerid/d/f/a;->e:Z

    const/4 v3, 0x2

    .line 10
    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_2
    const-string v0, "shortcutcontacts"

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v3, "shortcut_contacts"

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->u:Lcom/allinone/callerid/main/CustomViewPager;

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_3
    const-string v0, "launchapp"

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v3, "wakeapp_noti_click"

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 17
    invoke-static {v2}, Lcom/allinone/callerid/util/a1;->q1(Z)V

    :cond_4
    const-string v0, "open_notifi_overlay"

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 21
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 22
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->s0:Landroid/os/Handler;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/MainActivity$r;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/MainActivity$r;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 23
    :cond_5
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->C:Landroid/content/Intent;

    .line 24
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_6

    const-string p1, "shortcut"

    const-string v0, "onNewIntent"

    .line 25
    invoke-static {p1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->s0:Landroid/os/Handler;

    new-instance v0, Lcom/allinone/callerid/mvc/controller/MainActivity$s;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/MainActivity$s;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    const-wide/16 v1, 0x320

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_1
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/allinone/callerid/util/h1;->b:Z

    .line 3
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "fcm"

    const-string v1, "main_onRestart"

    .line 4
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onResume()V

    .line 2
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/util/gg/f;->a()Lcom/allinone/callerid/util/gg/f;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/gg/f;->b:Lcom/google/android/gms/ads/nativead/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/allinone/callerid/util/a1;->w()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2dc6c0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 4
    new-instance v0, Lcom/allinone/callerid/mvc/controller/MainActivity$t;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/MainActivity$t;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    invoke-static {v0}, Lcom/allinone/callerid/i/a/e/a;->a(Lcom/allinone/callerid/i/a/e/b;)V

    .line 5
    :cond_0
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "tony"

    if-eqz v0, :cond_1

    :try_start_1
    const-string v0, "onResume"

    .line 6
    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "fcm"

    const-string v2, "main_onResume"

    .line 8
    invoke-static {v0, v2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_2
    sget-boolean v0, Lcom/allinone/callerid/util/h1;->b:Z

    if-eqz v0, :cond_4

    .line 10
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "isShowShare"

    .line 11
    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_3
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->n1()V

    :cond_4
    const/4 v0, 0x1

    .line 13
    sput-boolean v0, Lcom/allinone/callerid/util/h1;->b:Z

    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "notification"

    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_5

    const v1, 0x314c2

    .line 16
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 2
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "fcm"

    const-string v1, "main_onStart"

    .line 3
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "fcm"

    const-string v1, "main_onStop"

    .line 3
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->E:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity;->w:Lcom/allinone/callerid/customview/AVLoadingIndicatorView;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;->setVisibility(I)V

    .line 3
    new-instance v0, Lcom/allinone/callerid/mvc/controller/MainActivity$k;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/MainActivity$k;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    invoke-static {v0}, Lcom/allinone/callerid/i/a/e/a;->a(Lcom/allinone/callerid/i/a/e/b;)V

    .line 4
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->i1()V

    return-void
.end method
