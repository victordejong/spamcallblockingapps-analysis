.class public Lcom/callerid/block/fragment/EZInterceptFragment;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/fragment/EZInterceptFragment$p;,
        Lcom/callerid/block/fragment/EZInterceptFragment$q;
    }
.end annotation


# instance fields
.field private A0:Landroid/widget/TextView;

.field private B0:Lcom/rey/material/widget/Switch;

.field private C0:Landroid/widget/FrameLayout;

.field private D0:Landroid/widget/TextView;

.field private E0:Landroid/widget/TextView;

.field private F0:Lcom/rey/material/widget/Switch;

.field private G0:Landroid/widget/FrameLayout;

.field private H0:Landroid/widget/TextView;

.field private I0:Landroid/widget/TextView;

.field private J0:Lcom/rey/material/widget/Switch;

.field private K0:Landroid/widget/FrameLayout;

.field private L0:Landroid/widget/TextView;

.field private M0:Landroid/widget/TextView;

.field private N0:Landroid/widget/FrameLayout;

.field private O0:Landroid/widget/TextView;

.field private P0:Landroid/widget/TextView;

.field private Q0:Landroid/widget/FrameLayout;

.field private R0:Landroid/widget/TextView;

.field private S0:Landroid/widget/TextView;

.field private T0:Lcom/rey/material/widget/Switch;

.field private U0:Z

.field private V0:I

.field private W0:Z

.field private X:Lcom/rey/material/app/Dialog;

.field public Y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private Z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callerid/block/bean/EZSimpleContact;",
            ">;"
        }
    .end annotation
.end field

.field private a0:Landroid/widget/ListView;

.field private b0:Lcom/callerid/block/b/a;

.field private c0:Landroid/widget/ListView;

.field private d0:Lcom/callerid/block/b/b;

.field private e0:Lcom/github/clans/fab/FloatingActionMenu;

.field private f0:Landroid/widget/TextView;

.field private g0:Lcom/rey/material/widget/Button;

.field private h0:Landroid/widget/ImageView;

.field private i0:Lcom/victor/loading/rotate/RotateLoading;

.field private j0:Landroid/widget/TextView;

.field private k0:Landroid/widget/ImageView;

.field private l0:Landroid/widget/RelativeLayout;

.field private m0:Landroid/widget/LinearLayout;

.field private n0:Landroid/widget/FrameLayout;

.field private o0:Lcom/callerid/block/fragment/EZInterceptFragment$p;

.field private p0:Landroid/graphics/Typeface;

.field private q0:Landroid/widget/ImageView;

.field private r0:Landroid/content/Context;

.field private s0:Lcom/callerid/block/main/MainActivity;

.field private t0:Lcom/google/android/gms/ads/AdView;

.field private u0:Landroid/widget/FrameLayout;

.field private v0:Landroid/widget/TextView;

.field private w0:Landroid/widget/TextView;

.field private x0:Lcom/rey/material/widget/Switch;

.field private y0:Landroid/widget/FrameLayout;

.field private z0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->X:Lcom/rey/material/app/Dialog;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->Y:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->Z:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->U0:Z

    iput v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->V0:I

    iput-boolean v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->W0:Z

    return-void
.end method

.method private E1(Landroid/content/Context;)V
    .locals 8

    :try_start_0
    invoke-static {p1}, Lcom/callerid/block/util/n0;->p(Landroid/content/Context;)J

    move-result-wide v0

    const-string v2, "checkupdate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lasttime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4}, Lcom/callerid/block/util/e;->d(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->f0:Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    const-wide/16 v3, 0x0

    const-string v5, " "

    const v6, 0x7f1000f4

    cmp-long v7, v0, v3

    if-nez v7, :cond_0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcom/callerid/block/util/e;->d(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4}, Lcom/callerid/block/util/e;->d(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->g0:Lcom/rey/material/widget/Button;

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/callerid/block/util/n0;->y(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->g0:Lcom/rey/material/widget/Button;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->g0:Lcom/rey/material/widget/Button;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    :goto_3
    invoke-static {p1}, Lcom/callerid/block/util/n0;->D(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->j0:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f10015f

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->h0:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->l0:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->h0:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->q0:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->j0:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f100160

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->h0:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->l0:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->h0:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->q0:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_4
    return-void
.end method

.method static synthetic F1(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->n0:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic G1(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->r0:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic H1(Lcom/callerid/block/fragment/EZInterceptFragment;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callerid/block/fragment/EZInterceptFragment;->o2(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic I1(Lcom/callerid/block/fragment/EZInterceptFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/fragment/EZInterceptFragment;->u2()V

    return-void
.end method

.method static synthetic J1(Lcom/callerid/block/fragment/EZInterceptFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/fragment/EZInterceptFragment;->h2()V

    return-void
.end method

.method static synthetic K1(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->l0:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic L1(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->h0:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic M1(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->q0:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic N1(Lcom/callerid/block/fragment/EZInterceptFragment;)Lcom/victor/loading/rotate/RotateLoading;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->i0:Lcom/victor/loading/rotate/RotateLoading;

    return-object p0
.end method

.method static synthetic O1(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->k0:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic P1(Lcom/callerid/block/fragment/EZInterceptFragment;)Lcom/rey/material/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->g0:Lcom/rey/material/widget/Button;

    return-object p0
.end method

.method static synthetic Q1(Lcom/callerid/block/fragment/EZInterceptFragment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callerid/block/fragment/EZInterceptFragment;->E1(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic R1(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->L0:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic S1(Lcom/callerid/block/fragment/EZInterceptFragment;)Lcom/callerid/block/b/a;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->b0:Lcom/callerid/block/b/a;

    return-object p0
.end method

.method static synthetic T1(Lcom/callerid/block/fragment/EZInterceptFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callerid/block/fragment/EZInterceptFragment;->p2(Ljava/util/List;)V

    return-void
.end method

.method static synthetic U1(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->a0:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic V1(Lcom/callerid/block/fragment/EZInterceptFragment;)Lcom/callerid/block/b/b;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->d0:Lcom/callerid/block/b/b;

    return-object p0
.end method

.method static synthetic W1(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->c0:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic X1(Lcom/callerid/block/fragment/EZInterceptFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/fragment/EZInterceptFragment;->m2()V

    return-void
.end method

.method static synthetic Y1(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->m0:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic Z1(Lcom/callerid/block/fragment/EZInterceptFragment;)Lcom/callerid/block/main/MainActivity;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->s0:Lcom/callerid/block/main/MainActivity;

    return-object p0
.end method

.method static synthetic a2(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->P0:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b2(Lcom/callerid/block/fragment/EZInterceptFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->U0:Z

    return p1
.end method

.method static synthetic c2(Lcom/callerid/block/fragment/EZInterceptFragment;I)I
    .locals 0

    iput p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->V0:I

    return p1
.end method

.method static synthetic d2(Lcom/callerid/block/fragment/EZInterceptFragment;)Lcom/rey/material/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->X:Lcom/rey/material/app/Dialog;

    return-object p0
.end method

.method static synthetic e2(Lcom/callerid/block/fragment/EZInterceptFragment;Lcom/rey/material/app/Dialog;)Lcom/rey/material/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->X:Lcom/rey/material/app/Dialog;

    return-object p1
.end method

.method static synthetic f2(Lcom/callerid/block/fragment/EZInterceptFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->Z:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g2(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->p0:Landroid/graphics/Typeface;

    return-object p0
.end method

.method private h2()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/ads/e$a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/e$a;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/e$a;->c()Lcom/google/android/gms/ads/e;

    move-result-object v0

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v1

    new-instance v2, Lcom/callerid/block/fragment/EZInterceptFragment$h;

    invoke-direct {v2, p0}, Lcom/callerid/block/fragment/EZInterceptFragment$h;-><init>(Lcom/callerid/block/fragment/EZInterceptFragment;)V

    const-string v3, "ca-app-pub-5825926894918682/2202978006"

    invoke-static {v1, v3, v0, v2}, Lcom/google/android/gms/ads/w/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/e;Lcom/google/android/gms/ads/w/b;)V

    return-void
.end method

.method private i2()Lcom/google/android/gms/ads/f;
    .locals 4

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->s0:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->r0:Landroid/content/Context;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v2, v3}, Lcom/callerid/block/util/g;->a(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->r0:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/f;->a(Landroid/content/Context;I)Lcom/google/android/gms/ads/f;

    move-result-object v0

    return-object v0
.end method

.method private j2()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->Z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/callerid/block/util/c0;->a()Lcom/callerid/block/util/c0;

    move-result-object v0

    iget-object v0, v0, Lcom/callerid/block/util/c0;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/callerid/block/fragment/EZInterceptFragment$g;

    invoke-direct {v1, p0}, Lcom/callerid/block/fragment/EZInterceptFragment$g;-><init>(Lcom/callerid/block/fragment/EZInterceptFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private k2()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->Y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/callerid/block/util/c0;->a()Lcom/callerid/block/util/c0;

    move-result-object v0

    iget-object v0, v0, Lcom/callerid/block/util/c0;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/callerid/block/fragment/EZInterceptFragment$f;

    invoke-direct {v1, p0}, Lcom/callerid/block/fragment/EZInterceptFragment$f;-><init>(Lcom/callerid/block/fragment/EZInterceptFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private l2(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0901aa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->m0:Landroid/widget/LinearLayout;

    const v0, 0x7f090146

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->n0:Landroid/widget/FrameLayout;

    const v0, 0x7f090493

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->f0:Landroid/widget/TextView;

    const v0, 0x7f090494

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->j0:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->p0:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f090094

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rey/material/widget/Button;

    iput-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->g0:Lcom/rey/material/widget/Button;

    const v0, 0x7f0901e2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->q0:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->g0:Lcom/rey/material/widget/Button;

    iget-object v1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->p0:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-direct {p0, p1}, Lcom/callerid/block/fragment/EZInterceptFragment;->E1(Landroid/content/Context;)V

    const v0, 0x7f0902fb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/victor/loading/rotate/RotateLoading;

    iput-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->i0:Lcom/victor/loading/rotate/RotateLoading;

    const v0, 0x7f0901ff

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->h0:Landroid/widget/ImageView;

    const v0, 0x7f0901bc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->k0:Landroid/widget/ImageView;

    const v0, 0x7f0902de

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->l0:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->s0:Lcom/callerid/block/main/MainActivity;

    const v1, 0x7f010039

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->g0:Lcom/rey/material/widget/Button;

    new-instance v2, Lcom/callerid/block/fragment/EZInterceptFragment$o;

    invoke-direct {v2, p0, p1, v0}, Lcom/callerid/block/fragment/EZInterceptFragment$o;-><init>(Lcom/callerid/block/fragment/EZInterceptFragment;Landroid/content/Context;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Lcom/rey/material/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090133

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->u0:Landroid/widget/FrameLayout;

    const p1, 0x7f09046d

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->v0:Landroid/widget/TextView;

    const p1, 0x7f09046c

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->w0:Landroid/widget/TextView;

    const p1, 0x7f090350

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/rey/material/widget/Switch;

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->x0:Lcom/rey/material/widget/Switch;

    const p1, 0x7f090132

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->y0:Landroid/widget/FrameLayout;

    const p1, 0x7f090437

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->z0:Landroid/widget/TextView;

    const p1, 0x7f090436

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->A0:Landroid/widget/TextView;

    const p1, 0x7f09034f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/rey/material/widget/Switch;

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->B0:Lcom/rey/material/widget/Switch;

    const p1, 0x7f09012e

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->C0:Landroid/widget/FrameLayout;

    const p1, 0x7f090402

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->D0:Landroid/widget/TextView;

    const p1, 0x7f090401

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->E0:Landroid/widget/TextView;

    const p1, 0x7f09034d

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/rey/material/widget/Switch;

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->F0:Lcom/rey/material/widget/Switch;

    const p1, 0x7f090130

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->G0:Landroid/widget/FrameLayout;

    const p1, 0x7f090421

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->H0:Landroid/widget/TextView;

    const p1, 0x7f090420

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->I0:Landroid/widget/TextView;

    const p1, 0x7f09034e

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/rey/material/widget/Switch;

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->J0:Lcom/rey/material/widget/Switch;

    const p1, 0x7f090150

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->K0:Landroid/widget/FrameLayout;

    const p1, 0x7f090419

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->L0:Landroid/widget/TextView;

    const p1, 0x7f09040d

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->M0:Landroid/widget/TextView;

    const p1, 0x7f09012f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->N0:Landroid/widget/FrameLayout;

    const p1, 0x7f0903ac

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->O0:Landroid/widget/TextView;

    const p1, 0x7f0903ab

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->P0:Landroid/widget/TextView;

    const p1, 0x7f090131

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->Q0:Landroid/widget/FrameLayout;

    const p1, 0x7f0903ae

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->R0:Landroid/widget/TextView;

    const p1, 0x7f0903ad

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->S0:Landroid/widget/TextView;

    const p1, 0x7f09034c

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/rey/material/widget/Switch;

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->T0:Lcom/rey/material/widget/Switch;

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->v0:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->p0:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->w0:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->p0:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->z0:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->p0:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->A0:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->p0:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->D0:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->p0:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->E0:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->p0:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->H0:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->p0:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->I0:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->p0:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->L0:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->p0:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->M0:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->p0:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->O0:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->p0:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->P0:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->p0:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->R0:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->p0:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->S0:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->p0:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->x0:Lcom/rey/material/widget/Switch;

    iget-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->r0:Landroid/content/Context;

    invoke-static {p2}, Lcom/callerid/block/util/n0;->f(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/rey/material/widget/Switch;->setChecked(Z)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->x0:Lcom/rey/material/widget/Switch;

    new-instance p2, Lcom/callerid/block/fragment/EZInterceptFragment$a;

    invoke-direct {p2, p0}, Lcom/callerid/block/fragment/EZInterceptFragment$a;-><init>(Lcom/callerid/block/fragment/EZInterceptFragment;)V

    invoke-virtual {p1, p2}, Lcom/rey/material/widget/Switch;->setOnCheckedChangeListener(Lcom/rey/material/widget/Switch$b;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->F0:Lcom/rey/material/widget/Switch;

    iget-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->r0:Landroid/content/Context;

    invoke-static {p2}, Lcom/callerid/block/util/n0;->d(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/rey/material/widget/Switch;->setChecked(Z)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->F0:Lcom/rey/material/widget/Switch;

    new-instance p2, Lcom/callerid/block/fragment/EZInterceptFragment$b;

    invoke-direct {p2, p0}, Lcom/callerid/block/fragment/EZInterceptFragment$b;-><init>(Lcom/callerid/block/fragment/EZInterceptFragment;)V

    invoke-virtual {p1, p2}, Lcom/rey/material/widget/Switch;->setOnCheckedChangeListener(Lcom/rey/material/widget/Switch$b;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->J0:Lcom/rey/material/widget/Switch;

    iget-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->r0:Landroid/content/Context;

    invoke-static {p2}, Lcom/callerid/block/util/n0;->z(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/rey/material/widget/Switch;->setChecked(Z)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->J0:Lcom/rey/material/widget/Switch;

    new-instance p2, Lcom/callerid/block/fragment/EZInterceptFragment$c;

    invoke-direct {p2, p0}, Lcom/callerid/block/fragment/EZInterceptFragment$c;-><init>(Lcom/callerid/block/fragment/EZInterceptFragment;)V

    invoke-virtual {p1, p2}, Lcom/rey/material/widget/Switch;->setOnCheckedChangeListener(Lcom/rey/material/widget/Switch$b;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->B0:Lcom/rey/material/widget/Switch;

    iget-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->r0:Landroid/content/Context;

    invoke-static {p2}, Lcom/callerid/block/util/n0;->A(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/rey/material/widget/Switch;->setChecked(Z)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->B0:Lcom/rey/material/widget/Switch;

    new-instance p2, Lcom/callerid/block/fragment/EZInterceptFragment$d;

    invoke-direct {p2, p0}, Lcom/callerid/block/fragment/EZInterceptFragment$d;-><init>(Lcom/callerid/block/fragment/EZInterceptFragment;)V

    invoke-virtual {p1, p2}, Lcom/rey/material/widget/Switch;->setOnCheckedChangeListener(Lcom/rey/material/widget/Switch$b;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->T0:Lcom/rey/material/widget/Switch;

    iget-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->r0:Landroid/content/Context;

    invoke-static {p2}, Lcom/callerid/block/util/n0;->g(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/rey/material/widget/Switch;->setChecked(Z)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->T0:Lcom/rey/material/widget/Switch;

    new-instance p2, Lcom/callerid/block/fragment/EZInterceptFragment$e;

    invoke-direct {p2, p0}, Lcom/callerid/block/fragment/EZInterceptFragment$e;-><init>(Lcom/callerid/block/fragment/EZInterceptFragment;)V

    invoke-virtual {p1, p2}, Lcom/rey/material/widget/Switch;->setOnCheckedChangeListener(Lcom/rey/material/widget/Switch$b;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->K0:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->N0:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/callerid/block/util/n0;->e()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->P0:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->J()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f100188

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private m2()V
    .locals 2

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "wbb"

    const-string v1, "\u5e7f\u544a\u52a0\u8f7d loadAD\u3002\u3002\u3002"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->r0:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->t0:Lcom/google/android/gms/ads/AdView;

    const-string v1, "ca-app-pub-5825926894918682/5274690090"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/BaseAdView;->setAdUnitId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->t0:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/callerid/block/fragment/EZInterceptFragment$j;

    invoke-direct {v1, p0}, Lcom/callerid/block/fragment/EZInterceptFragment$j;-><init>(Lcom/callerid/block/fragment/EZInterceptFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/BaseAdView;->setAdListener(Lcom/google/android/gms/ads/b;)V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->n0:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->n0:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->t0:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/callerid/block/fragment/EZInterceptFragment;->n2()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private n2()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/ads/e$a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/e$a;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/e$a;->c()Lcom/google/android/gms/ads/e;

    move-result-object v0

    invoke-direct {p0}, Lcom/callerid/block/fragment/EZInterceptFragment;->i2()Lcom/google/android/gms/ads/f;

    move-result-object v1

    iget-object v2, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->t0:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/BaseAdView;->setAdSize(Lcom/google/android/gms/ads/f;)V

    iget-object v1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->t0:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/BaseAdView;->b(Lcom/google/android/gms/ads/e;)V

    return-void
.end method

.method private o2(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/callerid/block/fragment/EZInterceptFragment$n;

    invoke-direct {v0, p0, p1, p2}, Lcom/callerid/block/fragment/EZInterceptFragment$n;-><init>(Lcom/callerid/block/fragment/EZInterceptFragment;Ljava/lang/String;Z)V

    invoke-static {p1, v0}, Lcom/callerid/block/h/a/c/b;->b(Ljava/lang/String;Lcom/callerid/block/h/a/c/a;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->s0:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1000ef

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private p2(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/callerid/block/b/a;

    iget-object v1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->s0:Lcom/callerid/block/main/MainActivity;

    iget-object v2, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->a0:Landroid/widget/ListView;

    invoke-direct {v0, v1, p1, v2}, Lcom/callerid/block/b/a;-><init>(Landroid/app/Activity;Ljava/util/List;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->b0:Lcom/callerid/block/b/a;

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->a0:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private q2()V
    .locals 4

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->r0:Landroid/content/Context;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Lcom/callerid/block/util/x0/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/rey/material/app/Dialog;

    iget-object v1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->s0:Lcom/callerid/block/main/MainActivity;

    const v2, 0x7f110159

    invoke-direct {v0, v1, v2}, Lcom/rey/material/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->X:Lcom/rey/material/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->X:Lcom/rey/material/app/Dialog;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog;->r0(Landroid/graphics/Typeface;)Lcom/rey/material/app/Dialog;

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->X:Lcom/rey/material/app/Dialog;

    const v1, 0x7f0c0075

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->X:Lcom/rey/material/app/Dialog;

    const v1, 0x7f100024

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog;->setTitle(I)V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->X:Lcom/rey/material/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->X:Lcom/rey/material/app/Dialog;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/rey/material/app/Dialog;->K(II)Lcom/rey/material/app/Dialog;

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->X:Lcom/rey/material/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog;->x(I)Lcom/rey/material/app/Dialog;

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->X:Lcom/rey/material/app/Dialog;

    const v1, 0x7f090228

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->c0:Landroid/widget/ListView;

    new-instance v0, Lcom/callerid/block/b/b;

    iget-object v1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->s0:Lcom/callerid/block/main/MainActivity;

    iget-object v2, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->Z:Ljava/util/List;

    iget-object v3, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->c0:Landroid/widget/ListView;

    invoke-direct {v0, v1, v2, v3}, Lcom/callerid/block/b/b;-><init>(Landroid/app/Activity;Ljava/util/List;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->d0:Lcom/callerid/block/b/b;

    iget-object v1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->c0:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->c0:Landroid/widget/ListView;

    new-instance v1, Lcom/callerid/block/fragment/EZInterceptFragment$5;

    invoke-direct {v1, p0}, Lcom/callerid/block/fragment/EZInterceptFragment$5;-><init>(Lcom/callerid/block/fragment/EZInterceptFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-direct {p0}, Lcom/callerid/block/fragment/EZInterceptFragment;->j2()V

    :cond_0
    return-void
.end method

.method private r2()V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->r0:Landroid/content/Context;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-static {v0, v1}, Lcom/callerid/block/util/x0/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/rey/material/app/Dialog;

    iget-object v1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->s0:Lcom/callerid/block/main/MainActivity;

    const v2, 0x7f110159

    invoke-direct {v0, v1, v2}, Lcom/rey/material/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->X:Lcom/rey/material/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->X:Lcom/rey/material/app/Dialog;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog;->r0(Landroid/graphics/Typeface;)Lcom/rey/material/app/Dialog;

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->X:Lcom/rey/material/app/Dialog;

    const v1, 0x7f0c0076

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->X:Lcom/rey/material/app/Dialog;

    const v1, 0x7f100026

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog;->setTitle(I)V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->X:Lcom/rey/material/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->X:Lcom/rey/material/app/Dialog;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/rey/material/app/Dialog;->K(II)Lcom/rey/material/app/Dialog;

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->X:Lcom/rey/material/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog;->x(I)Lcom/rey/material/app/Dialog;

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->X:Lcom/rey/material/app/Dialog;

    const v1, 0x7f090229

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->a0:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->Y:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/callerid/block/fragment/EZInterceptFragment;->p2(Ljava/util/List;)V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->a0:Landroid/widget/ListView;

    new-instance v1, Lcom/callerid/block/fragment/EZInterceptFragment$6;

    invoke-direct {v1, p0}, Lcom/callerid/block/fragment/EZInterceptFragment$6;-><init>(Lcom/callerid/block/fragment/EZInterceptFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-direct {p0}, Lcom/callerid/block/fragment/EZInterceptFragment;->k2()V

    :cond_0
    return-void
.end method

.method private s2()V
    .locals 3

    new-instance v0, Lcom/callerid/block/fragment/EZInterceptFragment$8;

    const v1, 0x7f110159

    invoke-direct {v0, p0, v1}, Lcom/callerid/block/fragment/EZInterceptFragment$8;-><init>(Lcom/callerid/block/fragment/EZInterceptFragment;I)V

    const v1, 0x7f0c00d4

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog$Builder;->f(I)Lcom/rey/material/app/Dialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->J()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100192

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog$Builder;->n(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->J()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog$Builder;->g(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->J()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog$Builder;->o(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    invoke-static {v0}, Lcom/rey/material/app/a;->K1(Lcom/rey/material/app/a$b;)Lcom/rey/material/app/a;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/j;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/b;->J1(Landroidx/fragment/app/j;Ljava/lang/String;)V

    return-void
.end method

.method private u2()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/callerid/block/fragment/EZInterceptFragment$q;

    invoke-direct {v0, p0}, Lcom/callerid/block/fragment/EZInterceptFragment$q;-><init>(Lcom/callerid/block/fragment/EZInterceptFragment;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

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


# virtual methods
.method public C0()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->C0()V

    return-void
.end method

.method public H0()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->H0()V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->s0:Lcom/callerid/block/main/MainActivity;

    invoke-direct {p0, v0}, Lcom/callerid/block/fragment/EZInterceptFragment;->E1(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->U0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->r0:Landroid/content/Context;

    invoke-static {v0}, Lcom/callerid/block/util/x0/a;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->V0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {v1}, Lcom/callerid/block/util/n0;->o0(I)V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->P0:Landroid/widget/TextView;

    const v1, 0x7f100188

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->Q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->U0:Z

    :cond_1
    return-void
.end method

.method public L0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->L0(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090357

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/github/clans/fab/FloatingActionMenu;

    iput-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->e0:Lcom/github/clans/fab/FloatingActionMenu;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/github/clans/fab/FloatingActionMenu;->setClosedOnTouchOutside(Z)V

    const p2, 0x7f09011e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/github/clans/fab/FloatingActionButton;

    const v0, 0x7f090120

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/FloatingActionButton;

    const v1, 0x7f09011f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p2, p0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/github/clans/fab/FloatingActionButton;->setLabelTextType(Landroid/graphics/Typeface;)V

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/github/clans/fab/FloatingActionButton;->setLabelTextType(Landroid/graphics/Typeface;)V

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/github/clans/fab/FloatingActionButton;->setLabelTextType(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->e0:Lcom/github/clans/fab/FloatingActionMenu;

    iget-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->s0:Lcom/callerid/block/main/MainActivity;

    const v0, 0x7f01003f

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/github/clans/fab/FloatingActionMenu;->setMenuButtonShowAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->e0:Lcom/github/clans/fab/FloatingActionMenu;

    iget-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->s0:Lcom/callerid/block/main/MainActivity;

    const v0, 0x7f010035

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/github/clans/fab/FloatingActionMenu;->setMenuButtonHideAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public j0(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->j0(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->r0:Landroid/content/Context;

    check-cast p1, Lcom/callerid/block/main/MainActivity;

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->s0:Lcom/callerid/block/main/MainActivity;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09012f

    if-eq p1, v0, :cond_4

    const v0, 0x7f090150

    if-eq p1, v0, :cond_3

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->e0:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionMenu;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->e0:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p1, v0}, Lcom/github/clans/fab/FloatingActionMenu;->u(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/callerid/block/fragment/EZInterceptFragment;->r2()V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->e0:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionMenu;->s()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->e0:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p1, v0}, Lcom/github/clans/fab/FloatingActionMenu;->u(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/callerid/block/fragment/EZInterceptFragment;->q2()V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->e0:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionMenu;->s()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->e0:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p1, v0}, Lcom/github/clans/fab/FloatingActionMenu;->u(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/callerid/block/fragment/EZInterceptFragment;->s2()V

    goto :goto_0

    :cond_3
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->s0:Lcom/callerid/block/main/MainActivity;

    const-class v1, Lcom/callerid/block/start/BlockListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->r0:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->s0:Lcom/callerid/block/main/MainActivity;

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const v0, 0x7f10017d

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->Q(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f100188

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->Q(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->r0:Landroid/content/Context;

    const v2, 0x1090003

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->r0:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/callerid/block/fragment/EZInterceptFragment$k;

    invoke-direct {v2, p0, p1}, Lcom/callerid/block/fragment/EZInterceptFragment$k;-><init>(Lcom/callerid/block/fragment/EZInterceptFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f09011e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public q0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c006b

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->p0:Landroid/graphics/Typeface;

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/callerid/block/fragment/EZInterceptFragment;->l2(Landroid/content/Context;Landroid/view/View;)V

    new-instance p2, Lcom/callerid/block/fragment/EZInterceptFragment$p;

    invoke-direct {p2, p0}, Lcom/callerid/block/fragment/EZInterceptFragment$p;-><init>(Lcom/callerid/block/fragment/EZInterceptFragment;)V

    iput-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->o0:Lcom/callerid/block/fragment/EZInterceptFragment$p;

    iget-object p2, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->r0:Landroid/content/Context;

    invoke-static {p2}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object p2

    iget-object p3, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->o0:Lcom/callerid/block/fragment/EZInterceptFragment$p;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.callerid.block.CLOSE_AD_VEST"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, v0}, Ld/p/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-object p1
.end method

.method public r0()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->r0()V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->r0:Landroid/content/Context;

    invoke-static {v0}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->o0:Lcom/callerid/block/fragment/EZInterceptFragment$p;

    invoke-virtual {v0, v1}, Ld/p/a/a;->e(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public t2(Landroid/app/Activity;)Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lcom/callerid/block/util/x0/a;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroidx/appcompat/app/a$a;

    invoke-direct {v1, p1}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f100002

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/a$a;->k(I)Landroidx/appcompat/app/a$a;

    const v2, 0x7f100189

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/a$a;->f(I)Landroidx/appcompat/app/a$a;

    const/high16 v2, 0x7f100000

    new-instance v3, Lcom/callerid/block/fragment/EZInterceptFragment$m;

    invoke-direct {v3, p0, p1}, Lcom/callerid/block/fragment/EZInterceptFragment$m;-><init>(Lcom/callerid/block/fragment/EZInterceptFragment;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/a$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    const p1, 0x7f100001

    new-instance v2, Lcom/callerid/block/fragment/EZInterceptFragment$l;

    invoke-direct {v2, p0}, Lcom/callerid/block/fragment/EZInterceptFragment$l;-><init>(Lcom/callerid/block/fragment/EZInterceptFragment;)V

    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/a$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    invoke-virtual {v1}, Landroidx/appcompat/app/a$a;->a()Landroidx/appcompat/app/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public y1(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->y1(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    :try_start_0
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v1, "in_block"

    invoke-virtual {p1, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/callerid/block/fragment/EZInterceptFragment;->E1(Landroid/content/Context;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v1, "enter_block_tab_page"

    invoke-virtual {p1, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->W0:Z

    if-nez p1, :cond_0

    new-instance p1, Lcom/callerid/block/fragment/EZInterceptFragment$i;

    invoke-direct {p1, p0}, Lcom/callerid/block/fragment/EZInterceptFragment$i;-><init>(Lcom/callerid/block/fragment/EZInterceptFragment;)V

    invoke-static {p1}, Lcom/callerid/block/h/a/b/a;->a(Lcom/callerid/block/h/a/b/b;)V

    iput-boolean v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->W0:Z

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->s0:Lcom/callerid/block/main/MainActivity;

    if-eqz p1, :cond_1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->s0:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->s0:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    invoke-direct {p0}, Lcom/callerid/block/fragment/EZInterceptFragment;->u2()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->e0:Lcom/github/clans/fab/FloatingActionMenu;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionMenu;->s()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment;->e0:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {p1, v0}, Lcom/github/clans/fab/FloatingActionMenu;->u(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method
