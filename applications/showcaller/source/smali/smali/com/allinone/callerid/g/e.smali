.class public Lcom/allinone/callerid/g/e;
.super Landroidx/fragment/app/Fragment;
.source "EZSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/g/e$v;,
        Lcom/allinone/callerid/g/e$u;,
        Lcom/allinone/callerid/g/e$t;,
        Lcom/allinone/callerid/g/e$r;,
        Lcom/allinone/callerid/g/e$s;
    }
.end annotation


# instance fields
.field public A0:I

.field private B0:Landroid/graphics/Typeface;

.field private C0:Landroid/content/Context;

.field private D0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private E0:Landroid/widget/FrameLayout;

.field private F0:Landroid/widget/TextView;

.field private G0:Landroid/widget/ImageView;

.field private H0:Z

.field private I0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private J0:Z

.field private K0:I

.field private L0:Z

.field private M0:Landroid/view/View;

.field private N0:Z

.field private O0:Landroid/os/Handler;

.field private P0:Ljava/lang/Runnable;

.field private Q0:Z

.field private R0:Landroid/os/Handler;

.field private S0:Lcom/allinone/callerid/customview/MyLinearLayoutManager;

.field private e0:Lcom/allinone/callerid/mvc/controller/MainActivity;

.field private f0:Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

.field private g0:Lcom/allinone/callerid/b/t;

.field private h0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private i0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private j0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l0:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m0:Lcom/allinone/callerid/g/e$u;

.field private n0:Landroid/widget/LinearLayout;

.field private o0:Landroid/widget/ProgressBar;

.field private p0:Lcom/github/clans/fab/FloatingActionButton;

.field private q0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/bean/SpamCall;",
            ">;"
        }
    .end annotation
.end field

.field private r0:Z

.field private s0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/bean/SpamCall;",
            ">;"
        }
    .end annotation
.end field

.field public t0:Lcom/allinone/callerid/g/e$s;

.field private u0:Z

.field private v0:Lcom/allinone/callerid/search/CallLogBean;

.field private w0:I

.field private x0:I

.field private y0:Landroid/widget/FrameLayout;

.field private z0:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/g/e;->h0:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/g/e;->i0:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/g/e;->j0:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/g/e;->k0:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/g/e;->l0:Ljava/util/HashMap;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/g/e;->q0:Ljava/util/ArrayList;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/g/e;->s0:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/allinone/callerid/g/e;->H0:Z

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/g/e;->I0:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/g/e;->O0:Landroid/os/Handler;

    .line 12
    new-instance v0, Lcom/allinone/callerid/g/e$m;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/g/e$m;-><init>(Lcom/allinone/callerid/g/e;)V

    iput-object v0, p0, Lcom/allinone/callerid/g/e;->P0:Ljava/lang/Runnable;

    .line 13
    new-instance v0, Lcom/allinone/callerid/g/e$t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/allinone/callerid/g/e$t;-><init>(Lcom/allinone/callerid/g/e;Lcom/allinone/callerid/g/e$k;)V

    iput-object v0, p0, Lcom/allinone/callerid/g/e;->R0:Landroid/os/Handler;

    return-void
.end method

.method static synthetic A2(Lcom/allinone/callerid/g/e;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/g/e;->N0:Z

    return p1
.end method

.method static synthetic B2(Lcom/allinone/callerid/g/e;)Lcom/github/jdsjlzx/recyclerview/LRecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/e;->f0:Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    return-object p0
.end method

.method static synthetic C2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/customview/MyLinearLayoutManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/e;->S0:Lcom/allinone/callerid/customview/MyLinearLayoutManager;

    return-object p0
.end method

.method static synthetic D2(Lcom/allinone/callerid/g/e;)Landroid/view/ViewStub;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/e;->z0:Landroid/view/ViewStub;

    return-object p0
.end method

.method static synthetic E2(Lcom/allinone/callerid/g/e;Lcom/allinone/callerid/customview/MyLinearLayoutManager;)Lcom/allinone/callerid/customview/MyLinearLayoutManager;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/e;->S0:Lcom/allinone/callerid/customview/MyLinearLayoutManager;

    return-object p1
.end method

.method static synthetic F2(Lcom/allinone/callerid/g/e;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/e;->i0:Ljava/util/List;

    return-object p0
.end method

.method static synthetic G2(Lcom/allinone/callerid/g/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/g/e;->m3()V

    return-void
.end method

.method static synthetic H2(Lcom/allinone/callerid/g/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/g/e;->r0:Z

    return p0
.end method

.method static synthetic I2(Lcom/allinone/callerid/g/e;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/g/e;->r0:Z

    return p1
.end method

.method static synthetic J2(Lcom/allinone/callerid/g/e;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/e;->s0:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic K2(Lcom/allinone/callerid/g/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/g/e;->H0:Z

    return p0
.end method

.method static synthetic L2(Lcom/allinone/callerid/g/e;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/g/e;->H0:Z

    return p1
.end method

.method static synthetic M2(Lcom/allinone/callerid/g/e;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/e;->C0:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic N2(Lcom/allinone/callerid/g/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/g/e;->o3()V

    return-void
.end method

.method static synthetic O2(Lcom/allinone/callerid/g/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/g/e;->u3()V

    return-void
.end method

.method static synthetic P2(Lcom/allinone/callerid/g/e;)Lcom/github/clans/fab/FloatingActionButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/e;->p0:Lcom/github/clans/fab/FloatingActionButton;

    return-object p0
.end method

.method static synthetic Q2(Lcom/allinone/callerid/g/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/g/e;->a2()V

    return-void
.end method

.method static synthetic R2(Lcom/allinone/callerid/g/e;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/e;->n0:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic S2(Lcom/allinone/callerid/g/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/g/e;->w3()V

    return-void
.end method

.method static synthetic T2(Lcom/allinone/callerid/g/e;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/e;->q0:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic U2(Lcom/allinone/callerid/g/e;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/e;->h0:Ljava/util/List;

    return-object p0
.end method

.method static synthetic V2(Lcom/allinone/callerid/g/e;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/e;->I0:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic W2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/b/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/e;->g0:Lcom/allinone/callerid/b/t;

    return-object p0
.end method

.method static synthetic X2(Lcom/allinone/callerid/g/e;Lcom/google/android/gms/ads/nativead/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/g/e;->s3(Lcom/google/android/gms/ads/nativead/a;)V

    return-void
.end method

.method static synthetic Y2(Lcom/allinone/callerid/g/e;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/g/e;->i3(Landroid/content/Context;)V

    return-void
.end method

.method private Z2()V
    .locals 2

    .line 1
    new-instance v0, Lcom/allinone/callerid/g/e$r;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/g/e$r;-><init>(Lcom/allinone/callerid/g/e;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private a2()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->q0:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/allinone/callerid/g/e;->q0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/g/e;->q0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/bean/SpamCall;

    .line 4
    invoke-virtual {v1}, Lcom/allinone/callerid/bean/SpamCall;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/allinone/callerid/bean/SpamCall;->getNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 6
    new-instance v3, Lcom/allinone/callerid/g/e$h;

    invoke-direct {v3, p0, v1, v2}, Lcom/allinone/callerid/g/e$h;-><init>(Lcom/allinone/callerid/g/e;Lcom/allinone/callerid/bean/SpamCall;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/allinone/callerid/i/a/f/b;->b(Ljava/lang/String;Lcom/allinone/callerid/i/a/f/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method static synthetic b2(Lcom/allinone/callerid/g/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/g/e;->w0:I

    return p0
.end method

.method private b3()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->h0:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/allinone/callerid/g/e;->I0:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->h0:Ljava/util/List;

    iget-object v1, p0, Lcom/allinone/callerid/g/e;->I0:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->g0:Lcom/allinone/callerid/b/t;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/allinone/callerid/g/e;->h0:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/b/t;->O(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->g0:Lcom/allinone/callerid/b/t;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->F0:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/g/e;->h0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->I0:Ljava/util/ArrayList;

    new-instance v1, Lcom/allinone/callerid/g/e$c;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/g/e$c;-><init>(Lcom/allinone/callerid/g/e;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/g/i;->d(Ljava/util/List;Lcom/allinone/callerid/i/a/g/h;)V
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

.method static synthetic c2(Lcom/allinone/callerid/g/e;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/g/e;->w0:I

    return p1
.end method

.method private c3(Landroid/database/Cursor;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    :try_start_0
    sget-boolean v2, Lcom/allinone/callerid/util/c0;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "tony"

    if-eqz v2, :cond_0

    .line 2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load_1:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/allinone/callerid/util/i;->d(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v2, v1, Lcom/allinone/callerid/g/e;->h0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 4
    iget-object v2, v1, Lcom/allinone/callerid/g/e;->i0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 5
    iget-object v2, v1, Lcom/allinone/callerid/g/e;->j0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 6
    iget-object v2, v1, Lcom/allinone/callerid/g/e;->l0:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 7
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 8
    iget-object v4, v1, Lcom/allinone/callerid/g/e;->C0:Landroid/content/Context;

    invoke-static {v4}, Lcom/allinone/callerid/util/b1;->j(Landroid/content/Context;)Z

    move-result v4

    .line 9
    iget-object v5, v1, Lcom/allinone/callerid/g/e;->C0:Landroid/content/Context;

    invoke-static {v5}, Lcom/allinone/callerid/util/b1;->e(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v5

    .line 10
    iget-object v6, v1, Lcom/allinone/callerid/g/e;->C0:Landroid/content/Context;

    invoke-static {v6}, Lcom/allinone/callerid/util/b1;->i(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v6

    .line 11
    sget-boolean v7, Lcom/allinone/callerid/util/c0;->a:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, "callLogs"

    if-eqz v7, :cond_1

    .line 12
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "iccIdMap:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "subIdMap:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_1
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 15
    new-instance v7, Ljava/util/Date;

    const-string v9, "date"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-direct {v7, v9, v10}, Ljava/util/Date;-><init>(J)V

    const-string v9, "number"

    .line 16
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "name"

    .line 17
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "type"

    .line 18
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v12, "_id"

    .line 19
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 20
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v14, 0x15

    const-string v15, ""

    if-lt v13, v14, :cond_2

    :try_start_3
    const-string v14, "photo_id"

    .line 21
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v16, v14

    const-string v14, "formatted_number"

    .line 22
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v17, v10

    move-object/from16 v24, v16

    move-object/from16 v16, v3

    move-object v3, v14

    move-object/from16 v14, v24

    goto :goto_1

    :cond_2
    move-object/from16 v16, v3

    move-object/from16 v17, v10

    move-object v3, v15

    move-object v14, v3

    :goto_1
    const-string v10, "numbertype"

    .line 23
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move-object/from16 v18, v3

    .line 24
    invoke-virtual {v2, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v2

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 26
    iget-object v3, v1, Lcom/allinone/callerid/g/e;->j0:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 v20, v7

    const/4 v7, 0x1

    if-eqz v3, :cond_4

    .line 27
    iget-object v3, v1, Lcom/allinone/callerid/g/e;->l0:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 28
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 29
    iget-object v7, v1, Lcom/allinone/callerid/g/e;->l0:Ljava/util/HashMap;

    invoke-virtual {v7, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    move-object/from16 v3, v16

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 30
    :cond_4
    iget-object v3, v1, Lcom/allinone/callerid/g/e;->j0:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v3, v1, Lcom/allinone/callerid/g/e;->l0:Ljava/util/HashMap;

    move/from16 v21, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "numberlabel"

    .line 32
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v10, :cond_5

    if-nez v3, :cond_5

    move-object v3, v15

    goto :goto_3

    .line 33
    :cond_5
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v11

    .line 34
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v11, v10, v3}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_3
    const/4 v10, 0x0

    const/16 v11, 0x15

    if-lt v13, v11, :cond_6

    const-string v11, "lookup_uri"

    .line 35
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    :cond_6
    move-object v11, v10

    :goto_4
    if-eqz v11, :cond_7

    .line 36
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 37
    :cond_7
    iget-boolean v11, v1, Lcom/allinone/callerid/g/e;->Q0:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v13, "simid"

    const/4 v7, -0x1

    if-eqz v11, :cond_8

    .line 38
    :try_start_4
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    if-eq v11, v7, :cond_8

    .line 39
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    :cond_8
    move-object v11, v15

    .line 40
    :goto_5
    invoke-static/range {p1 .. p1}, Lcom/allinone/callerid/util/b1;->g(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v22

    if-eqz v4, :cond_c

    .line 41
    invoke-static {}, Lcom/allinone/callerid/util/b1;->r()Z

    move-result v23

    if-nez v23, :cond_9

    invoke-static {}, Lcom/allinone/callerid/util/b1;->q()Z

    move-result v23

    if-nez v23, :cond_9

    invoke-static {}, Lcom/allinone/callerid/util/b1;->o()Z

    move-result v23

    if-eqz v23, :cond_a

    .line 42
    :cond_9
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    if-eq v13, v7, :cond_a

    .line 43
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 44
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 45
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 46
    :cond_a
    invoke-static {}, Lcom/allinone/callerid/util/b1;->n()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-static {}, Lcom/allinone/callerid/util/b1;->l()Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_b
    const-string v7, "subscription_id"

    .line 47
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const/4 v13, -0x1

    if-eq v7, v13, :cond_c

    .line 48
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 49
    invoke-interface {v5, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 50
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    :cond_c
    move-object/from16 v7, v22

    .line 51
    sget-boolean v13, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v13, :cond_d

    .line 52
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "slotId:"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_d
    new-instance v0, Lcom/allinone/callerid/search/CallLogBean;

    invoke-direct {v0}, Lcom/allinone/callerid/search/CallLogBean;-><init>()V

    .line 54
    invoke-virtual {v0, v12}, Lcom/allinone/callerid/search/CallLogBean;->y0(I)V

    .line 55
    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/CallLogBean;->b1(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, v14}, Lcom/allinone/callerid/search/CallLogBean;->I0(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, v9}, Lcom/allinone/callerid/search/CallLogBean;->E0(Ljava/lang/String;)V

    move-object/from16 v2, v18

    .line 58
    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/CallLogBean;->j0(Ljava/lang/String;)V

    move-object/from16 v2, v17

    .line 59
    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/CallLogBean;->C0(Ljava/lang/String;)V

    if-eqz v2, :cond_e

    .line 60
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const/4 v2, 0x1

    .line 61
    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/CallLogBean;->p0(Z)V

    if-eqz v14, :cond_e

    const-string v9, "0"

    .line 62
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 63
    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/CallLogBean;->u0(Z)V

    .line 64
    :cond_e
    invoke-virtual {v0, v10}, Lcom/allinone/callerid/search/CallLogBean;->A0(Landroid/net/Uri;)V

    .line 65
    invoke-virtual {v0, v3}, Lcom/allinone/callerid/search/CallLogBean;->F0(Ljava/lang/String;)V

    move/from16 v2, v21

    .line 66
    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/CallLogBean;->d1(I)V

    .line 67
    invoke-static/range {v20 .. v20}, Lcom/allinone/callerid/util/i;->h(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/CallLogBean;->i1(Ljava/lang/String;)V

    .line 68
    invoke-static/range {v20 .. v20}, Lcom/allinone/callerid/util/i;->c(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/CallLogBean;->s0(Ljava/lang/String;)V

    move-object/from16 v2, v20

    .line 69
    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/CallLogBean;->f0(Ljava/util/Date;)V

    .line 70
    invoke-virtual {v0, v7}, Lcom/allinone/callerid/search/CallLogBean;->S0(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, v11}, Lcom/allinone/callerid/search/CallLogBean;->c1(Ljava/lang/String;)V

    .line 72
    iget-object v2, v1, Lcom/allinone/callerid/g/e;->h0:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    goto/16 :goto_2

    :cond_f
    move-object/from16 v16, v3

    .line 73
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 74
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_10

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load_2:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/allinone/callerid/util/i;->d(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v16

    invoke-static {v2, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    :goto_6
    return-void
.end method

.method static synthetic d2(Lcom/allinone/callerid/g/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/g/e;->x0:I

    return p0
.end method

.method private d3()V
    .locals 10

    const-string v0, ""

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "tony"

    if-eqz v1, :cond_0

    .line 2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDataNumberDb_start:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/allinone/callerid/util/i;->d(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/MMM"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 4
    iget-object v3, p0, Lcom/allinone/callerid/g/e;->s0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 5
    iget-object v3, p0, Lcom/allinone/callerid/g/e;->h0:Ljava/util/List;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    .line 6
    :goto_0
    iget-object v4, p0, Lcom/allinone/callerid/g/e;->h0:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 7
    iget-object v4, p0, Lcom/allinone/callerid/g/e;->h0:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/allinone/callerid/search/CallLogBean;

    .line 8
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v5

    invoke-virtual {v4}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/allinone/callerid/f/f;->d(Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object v5

    .line 9
    invoke-virtual {v4}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    .line 10
    invoke-static {}, Lcom/allinone/callerid/f/k/b;->d()Lcom/allinone/callerid/f/k/b;

    move-result-object v6

    invoke-virtual {v4}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/allinone/callerid/f/k/b;->e(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_1

    .line 11
    invoke-virtual {v4, v7}, Lcom/allinone/callerid/search/CallLogBean;->R0(Z)V

    .line 12
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/allinone/callerid/search/CallLogBean;->K0(Ljava/lang/String;)V

    :cond_1
    if-eqz v5, :cond_5

    .line 13
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->isSearched()Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/allinone/callerid/search/CallLogBean;->P0(Z)V

    .line 14
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getSearch_time()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/allinone/callerid/search/CallLogBean;->N0(J)V

    .line 15
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->isIs_can_search()Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/allinone/callerid/search/CallLogBean;->k0(Z)V

    .line 16
    invoke-virtual {v4}, Lcom/allinone/callerid/search/CallLogBean;->Y()Z

    move-result v6

    if-nez v6, :cond_2

    .line 17
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v6

    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/allinone/callerid/util/h1;->D(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/allinone/callerid/search/CallLogBean;->e1(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/allinone/callerid/search/CallLogBean;->f1(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/allinone/callerid/search/CallLogBean;->L0(Ljava/lang/String;)V

    .line 20
    :cond_2
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/allinone/callerid/search/CallLogBean;->g0(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/allinone/callerid/search/CallLogBean;->M0(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    const-string v6, "Mobile"

    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "Fixed line"

    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 23
    :cond_3
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v6

    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/allinone/callerid/util/h1;->J(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/allinone/callerid/search/CallLogBean;->O0(Ljava/lang/String;)V

    .line 24
    :cond_4
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getTel_number()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/allinone/callerid/search/CallLogBean;->a1(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getT_p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/allinone/callerid/search/CallLogBean;->Z0(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getOld_tel_number()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/allinone/callerid/search/CallLogBean;->G0(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/allinone/callerid/search/CallLogBean;->x0(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/allinone/callerid/search/CallLogBean;->H0(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/allinone/callerid/search/CallLogBean;->d0(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getAvatar()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/allinone/callerid/search/CallLogBean;->e0(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getFb_avatar()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/allinone/callerid/search/CallLogBean;->w0(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_tags()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/allinone/callerid/search/CallLogBean;->g1(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getName_tags()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/allinone/callerid/search/CallLogBean;->D0(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getComment_tags()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/allinone/callerid/search/CallLogBean;->o0(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/allinone/callerid/search/CallLogBean;->r0(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getSubtype()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/allinone/callerid/search/CallLogBean;->W0(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getSubtype_cc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/allinone/callerid/search/CallLogBean;->X0(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getKeyword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/allinone/callerid/search/CallLogBean;->z0(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v4}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/allinone/callerid/util/h1;->w0(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/allinone/callerid/search/CallLogBean;->h1(Z)V

    .line 40
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getSubtype_pdt()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/allinone/callerid/search/CallLogBean;->Y0(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getComment_count()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/allinone/callerid/search/CallLogBean;->n0(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->isCan_search_commentcount()Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/allinone/callerid/search/CallLogBean;->l0(Z)V

    .line 43
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getFaild_error_log()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/allinone/callerid/search/CallLogBean;->v0(I)V

    .line 44
    iget-boolean v6, p0, Lcom/allinone/callerid/g/e;->r0:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/allinone/callerid/g/e;->s0:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x3

    if-ge v6, v8, :cond_5

    .line 45
    iget-object v6, p0, Lcom/allinone/callerid/g/e;->C0:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getOld_tel_number()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/allinone/callerid/util/h1;->Y(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 46
    new-instance v6, Lcom/allinone/callerid/bean/SpamCall;

    invoke-direct {v6}, Lcom/allinone/callerid/bean/SpamCall;-><init>()V

    .line 47
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getOld_tel_number()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/allinone/callerid/bean/SpamCall;->setNumber(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/allinone/callerid/bean/SpamCall;->setTypelabel(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/allinone/callerid/bean/SpamCall;->setReportcounts(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/allinone/callerid/bean/SpamCall;->setType(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getTel_number()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/allinone/callerid/bean/SpamCall;->setTel_number(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/allinone/callerid/bean/SpamCall;->setFormat_tel_number(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/allinone/callerid/bean/SpamCall;->setOperator(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/allinone/callerid/bean/SpamCall;->setName(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/allinone/callerid/bean/SpamCall;->setAddress(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/allinone/callerid/bean/SpamCall;->setBelong_area(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getAvatar()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/allinone/callerid/bean/SpamCall;->setAvatar(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getName_tags()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/allinone/callerid/bean/SpamCall;->setName_tags(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_tags()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/allinone/callerid/bean/SpamCall;->setType_tags(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getComment_tags()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/allinone/callerid/bean/SpamCall;->setComment_tags(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZSearchContacts;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/allinone/callerid/bean/SpamCall;->setCountry(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v4}, Lcom/allinone/callerid/search/CallLogBean;->b()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/allinone/callerid/bean/SpamCall;->setDate(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v4}, Lcom/allinone/callerid/search/CallLogBean;->O()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/allinone/callerid/bean/SpamCall;->setCalltype(I)V

    .line 64
    invoke-virtual {v6, v7}, Lcom/allinone/callerid/bean/SpamCall;->setSelected(Z)V

    .line 65
    iget-object v4, p0, Lcom/allinone/callerid/g/e;->s0:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 66
    :cond_6
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_7

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDataNumberDb_end:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/allinone/callerid/util/i;->d(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_1
    return-void
.end method

.method static synthetic e2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/mvc/controller/MainActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/e;->e0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    return-object p0
.end method

.method static synthetic f2(Lcom/allinone/callerid/g/e;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/g/e;->x0:I

    return p1
.end method

.method static synthetic g2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/g/e$u;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/e;->m0:Lcom/allinone/callerid/g/e$u;

    return-object p0
.end method

.method private g3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->e0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/g/e$n;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/g/e$n;-><init>(Lcom/allinone/callerid/g/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic h2(Lcom/allinone/callerid/g/e;Lcom/allinone/callerid/g/e$u;)Lcom/allinone/callerid/g/e$u;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/e;->m0:Lcom/allinone/callerid/g/e$u;

    return-object p1
.end method

.method private h3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->e0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    const v1, 0x7f0903b4

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/allinone/callerid/g/e;->D0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->e0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    const v1, 0x7f0904e7

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/g/e;->E0:Landroid/widget/FrameLayout;

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->e0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    const v1, 0x7f090311

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->e0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    const v1, 0x7f090531

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 6
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->e0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    const v1, 0x7f090532

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/g/e;->F0:Landroid/widget/TextView;

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->e0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    const v1, 0x7f090312

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/g/e;->G0:Landroid/widget/ImageView;

    .line 9
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic i2(Lcom/allinone/callerid/g/e;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/e;->l0:Ljava/util/HashMap;

    return-object p0
.end method

.method private i3(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/g/e$l;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/g/e$l;-><init>(Lcom/allinone/callerid/g/e;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/allinone/callerid/i/a/e/a;->a(Lcom/allinone/callerid/i/a/e/b;)V

    return-void
.end method

.method static synthetic j2(Lcom/allinone/callerid/g/e;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/g/e;->p3(Ljava/util/List;Ljava/util/HashMap;)V

    return-void
.end method

.method private j3()V
    .locals 6

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "tony"

    if-eqz v0, :cond_0

    .line 2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadDataContactsSim_start:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/allinone/callerid/util/i;->d(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->h0:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/allinone/callerid/g/e;->h0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/allinone/callerid/g/e;->h0:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/search/CallLogBean;

    .line 6
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v3

    const-string v4, "android.permission.READ_CONTACTS"

    invoke-static {v3, v4}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 7
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v3

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/allinone/callerid/g/e$b;

    invoke-direct {v5, p0, v2}, Lcom/allinone/callerid/g/e$b;-><init>(Lcom/allinone/callerid/g/e;Lcom/allinone/callerid/search/CallLogBean;)V

    invoke-static {v3, v4, v5}, Lcom/allinone/callerid/util/f;->a(Landroid/content/Context;Ljava/lang/String;Lcom/allinone/callerid/util/f$a;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_2
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_3

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadDataContactsSim_end:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/allinone/callerid/util/i;->d(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic k2(Lcom/allinone/callerid/g/e;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/e;->B0:Landroid/graphics/Typeface;

    return-object p1
.end method

.method private k3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->h0:Ljava/util/List;

    new-instance v1, Lcom/allinone/callerid/g/e$i;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/g/e$i;-><init>(Lcom/allinone/callerid/g/e;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/g/l;->a(Ljava/util/List;Lcom/allinone/callerid/i/a/g/e;)V

    .line 2
    iget-boolean v0, p0, Lcom/allinone/callerid/g/e;->u0:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/z0;->h(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/allinone/callerid/g/e;->u0:Z

    :cond_0
    return-void
.end method

.method static synthetic l2(Lcom/allinone/callerid/g/e;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/e;->P0:Ljava/lang/Runnable;

    return-object p0
.end method

.method private l3()V
    .locals 7

    const-string v0, "searchList"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/allinone/callerid/g/e;->k0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x14

    const/4 v4, 0x0

    if-le v1, v3, :cond_0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/allinone/callerid/g/e;->k0:Ljava/util/List;

    invoke-interface {v5, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    iget-object v3, p0, Lcom/allinone/callerid/g/e;->k0:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    const/4 v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/allinone/callerid/g/e;->k0:Ljava/util/List;

    const/4 v3, 0x0

    .line 5
    :goto_0
    sget-boolean v5, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v5, :cond_1

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "searchNumberList.size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/allinone/callerid/g/e;->k0:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/allinone/callerid/util/c0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canSearchList.size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/allinone/callerid/util/c0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    new-instance v0, Lcom/allinone/callerid/g/e$v;

    invoke-direct {v0, p0, v1, v3}, Lcom/allinone/callerid/g/e$v;-><init>(Lcom/allinone/callerid/g/e;Ljava/util/List;Z)V

    .line 9
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v5

    sget-object v6, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v5, v6, :cond_2

    .line 10
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 11
    new-instance v0, Lcom/allinone/callerid/g/e$v;

    invoke-direct {v0, p0, v1, v3}, Lcom/allinone/callerid/g/e$v;-><init>(Lcom/allinone/callerid/g/e;Ljava/util/List;Z)V

    .line 12
    invoke-static {}, Lcom/allinone/callerid/util/e1;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic m2(Lcom/allinone/callerid/g/e;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/e;->O0:Landroid/os/Handler;

    return-object p0
.end method

.method private m3()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "searchList"

    const-string v1, "\u9996\u6b21\u67e5\u8be2"

    .line 2
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/g/e;->h0:Ljava/util/List;

    new-instance v2, Lcom/allinone/callerid/g/e$o;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/g/e$o;-><init>(Lcom/allinone/callerid/g/e;)V

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/i/a/g/l;->c(Landroid/content/Context;Ljava/util/List;Lcom/allinone/callerid/i/a/g/n;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic n2(Lcom/allinone/callerid/g/e;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/e;->k0:Ljava/util/List;

    return-object p0
.end method

.method private n3(II)V
    .locals 3

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "searchList"

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6ed1\u52a8\u540e\u67e5\u8be2 start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " end:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->h0:Ljava/util/List;

    new-instance v1, Lcom/allinone/callerid/g/e$p;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/g/e$p;-><init>(Lcom/allinone/callerid/g/e;)V

    invoke-static {p1, p2, v0, v1}, Lcom/allinone/callerid/i/a/g/l;->b(IILjava/util/List;Lcom/allinone/callerid/i/a/g/e;)V
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

.method static synthetic o2(Lcom/allinone/callerid/g/e;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/e;->k0:Ljava/util/List;

    return-object p1
.end method

.method private o3()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->h0:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/allinone/callerid/g/e;->I0:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->F0:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/allinone/callerid/g/e;->I0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/g/e;->h0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->I0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->G0:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->G0:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic p2(Lcom/allinone/callerid/g/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/g/e;->l3()V

    return-void
.end method

.method private p3(Ljava/util/List;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->S0:Lcom/allinone/callerid/customview/MyLinearLayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/customview/MyLinearLayoutManager;

    iget-object v2, p0, Lcom/allinone/callerid/g/e;->C0:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/allinone/callerid/customview/MyLinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/allinone/callerid/g/e;->S0:Lcom/allinone/callerid/customview/MyLinearLayoutManager;

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->z2(I)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->f0:Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    iget-object v3, p0, Lcom/allinone/callerid/g/e;->S0:Lcom/allinone/callerid/customview/MyLinearLayoutManager;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->f0:Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/c;

    invoke-direct {v3}, Landroidx/recyclerview/widget/c;-><init>()V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->f0:Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->f0:Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    invoke-virtual {v0, v1}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->setPullRefreshEnabled(Z)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->g0:Lcom/allinone/callerid/b/t;

    if-nez v0, :cond_1

    .line 9
    new-instance v0, Lcom/allinone/callerid/b/t;

    iget-object v2, p0, Lcom/allinone/callerid/g/e;->q0:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/allinone/callerid/g/e;->e0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-direct {v0, v2, v3}, Lcom/allinone/callerid/b/t;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/allinone/callerid/g/e;->g0:Lcom/allinone/callerid/b/t;

    .line 10
    new-instance v0, Lcom/github/jdsjlzx/recyclerview/a;

    iget-object v2, p0, Lcom/allinone/callerid/g/e;->g0:Lcom/allinone/callerid/b/t;

    invoke-direct {v0, v2}, Lcom/github/jdsjlzx/recyclerview/a;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 11
    iget-object v2, p0, Lcom/allinone/callerid/g/e;->f0:Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    invoke-virtual {v2, v0}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->f0:Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    invoke-virtual {v0, v1}, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;->setLoadMoreEnabled(Z)V

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->g0:Lcom/allinone/callerid/b/t;

    invoke-virtual {v0, p1, p2}, Lcom/allinone/callerid/b/t;->M(Ljava/util/List;Ljava/util/HashMap;)V

    .line 14
    invoke-direct {p0}, Lcom/allinone/callerid/g/e;->r3()V

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/allinone/callerid/b/t;->M(Ljava/util/List;Ljava/util/HashMap;)V

    :goto_0
    return-void
.end method

.method static synthetic q2(Lcom/allinone/callerid/g/e;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/g/e;->n3(II)V

    return-void
.end method

.method private q3(Lcom/allinone/callerid/search/CallLogBean;)V
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

    iget-object v0, p0, Lcom/allinone/callerid/g/e;->e0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/b;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/g/e;->v0:Lcom/allinone/callerid/search/CallLogBean;

    .line 3
    new-instance p1, Lcom/allinone/callerid/dialog/f;

    iget-object v0, p0, Lcom/allinone/callerid/g/e;->e0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    const v1, 0x7f1100f6

    invoke-direct {p1, v0, v1}, Lcom/allinone/callerid/dialog/f;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/g/e$q;

    invoke-direct {v1, p0, p1}, Lcom/allinone/callerid/g/e$q;-><init>(Lcom/allinone/callerid/g/e;Lcom/allinone/callerid/search/CallLogBean;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/f/b;->b(Ljava/lang/String;Lcom/allinone/callerid/i/a/f/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic r2(Lcom/allinone/callerid/g/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/g/e;->k3()V

    return-void
.end method

.method private r3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->g0:Lcom/allinone/callerid/b/t;

    new-instance v1, Lcom/allinone/callerid/g/e$f;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/g/e$f;-><init>(Lcom/allinone/callerid/g/e;)V

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/b/t;->B(Lcom/allinone/callerid/b/t$m;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->g0:Lcom/allinone/callerid/b/t;

    new-instance v1, Lcom/allinone/callerid/g/e$g;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/g/e$g;-><init>(Lcom/allinone/callerid/g/e;)V

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/b/t;->A(Lcom/allinone/callerid/b/t$l;)V

    return-void
.end method

.method static synthetic s2(Lcom/allinone/callerid/g/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/g/e;->K0:I

    return p0
.end method

.method private s3(Lcom/google/android/gms/ads/nativead/a;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->e0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 2
    invoke-static {p1, v0}, Lcom/allinone/callerid/util/gg/d;->a(Lcom/google/android/gms/ads/nativead/a;Lcom/google/android/gms/ads/nativead/NativeAdView;)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/g/e;->y0:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/g/e;->y0:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/g/e;->y0:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/g/e;->n0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic t2(Lcom/allinone/callerid/g/e;Landroid/database/Cursor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/g/e;->c3(Landroid/database/Cursor;)V

    return-void
.end method

.method private t3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->D0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->E0:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iput-boolean v1, p0, Lcom/allinone/callerid/g/e;->H0:Z

    .line 4
    invoke-direct {p0}, Lcom/allinone/callerid/g/e;->Z2()V

    return-void
.end method

.method static synthetic u2(Lcom/allinone/callerid/g/e;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/e;->R0:Landroid/os/Handler;

    return-object p0
.end method

.method private u3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->D0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->E0:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic v2(Lcom/allinone/callerid/g/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/g/e;->d3()V

    return-void
.end method

.method private v3()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->z0:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0906d8

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/g/e;->B0:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->z0:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic w2(Lcom/allinone/callerid/g/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/g/e;->j3()V

    return-void
.end method

.method private w3()V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/g/e$j;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/g/e$j;-><init>(Lcom/allinone/callerid/g/e;)V

    invoke-static {v0}, Lcom/allinone/callerid/i/a/c0/b;->a(Lcom/allinone/callerid/i/a/c0/a;)V

    return-void
.end method

.method static synthetic x2(Lcom/allinone/callerid/g/e;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/e;->o0:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic y2(Lcom/allinone/callerid/g/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/g/e;->v3()V

    return-void
.end method

.method static synthetic z2(Lcom/allinone/callerid/g/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/g/e;->N0:Z

    return p0
.end method


# virtual methods
.method public G0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/allinone/callerid/g/e;->C0:Landroid/content/Context;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/main/EZCallApplication;->h:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/allinone/callerid/util/h1;->I0(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object p3, p0, Lcom/allinone/callerid/g/e;->M0:Landroid/view/View;

    if-nez p3, :cond_2

    const p3, 0x7f0c0074

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/g/e;->M0:Landroid/view/View;

    const p2, 0x7f09029d

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/allinone/callerid/g/e;->n0:Landroid/widget/LinearLayout;

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/g/e;->M0:Landroid/view/View;

    const p2, 0x7f0901f1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/allinone/callerid/g/e;->y0:Landroid/widget/FrameLayout;

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/g/e;->M0:Landroid/view/View;

    const p2, 0x7f0907ee

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/allinone/callerid/g/e;->z0:Landroid/view/ViewStub;

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/g/e;->M0:Landroid/view/View;

    const p2, 0x7f090466

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/allinone/callerid/g/e;->o0:Landroid/widget/ProgressBar;

    .line 8
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x14

    if-gt p2, p3, :cond_0

    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/g/e;->C0:Landroid/content/Context;

    const p2, 0x7f04011b

    const p3, 0x7f06003a

    invoke-static {p1, p2, p3}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/g/e;->K0:I

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/allinone/callerid/g/e;->L0:Z

    .line 12
    iput-boolean p1, p0, Lcom/allinone/callerid/g/e;->N0:Z

    .line 13
    iget-object p2, p0, Lcom/allinone/callerid/g/e;->M0:Landroid/view/View;

    const p3, 0x7f09043a

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    iput-object p2, p0, Lcom/allinone/callerid/g/e;->f0:Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    .line 14
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/allinone/callerid/g/e;->h0:Ljava/util/List;

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string p3, "launchapp"

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 16
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p2

    const-string p3, "wakeapp_noti_click"

    invoke-virtual {p2, p3}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 17
    iput-boolean p1, p0, Lcom/allinone/callerid/g/e;->r0:Z

    .line 18
    :cond_1
    invoke-direct {p0}, Lcom/allinone/callerid/g/e;->g3()V

    .line 19
    invoke-direct {p0}, Lcom/allinone/callerid/g/e;->h3()V

    .line 20
    iput-boolean p1, p0, Lcom/allinone/callerid/g/e;->u0:Z

    .line 21
    iget-object p1, p0, Lcom/allinone/callerid/g/e;->f0:Lcom/github/jdsjlzx/recyclerview/LRecyclerView;

    new-instance p2, Lcom/allinone/callerid/g/e$k;

    invoke-direct {p2, p0}, Lcom/allinone/callerid/g/e$k;-><init>(Lcom/allinone/callerid/g/e;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->l(Landroidx/recyclerview/widget/RecyclerView$s;)V

    .line 22
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string p2, "history_create_num"

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/allinone/callerid/g/e;->i3(Landroid/content/Context;)V

    .line 24
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/g/e;->M0:Landroid/view/View;

    return-object p1
.end method

.method public H0()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->H0()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->m0:Lcom/allinone/callerid/g/e$u;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->C0:Landroid/content/Context;

    invoke-static {v0}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/g/e;->m0:Lcom/allinone/callerid/g/e$u;

    invoke-virtual {v0, v1}, Lb/p/a/a;->e(Landroid/content/BroadcastReceiver;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->M0:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lcom/allinone/callerid/g/e;->M0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public T0()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->T0()V

    return-void
.end method

.method public V1(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->V1(Z)V

    if-eqz p1, :cond_2

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/g/e;->p0:Lcom/github/clans/fab/FloatingActionButton;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->y()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/g/e;->p0:Lcom/github/clans/fab/FloatingActionButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/github/clans/fab/FloatingActionButton;->H(Z)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/g/e;->e0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    if-eqz p1, :cond_2

    const-string v0, "input_method"

    .line 5
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->e0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->e0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 11
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "in_recent"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public Y0()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->Y0()V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/a1;->M()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/allinone/callerid/g/e;->r0:Z

    if-nez v0, :cond_0

    .line 3
    invoke-static {v1}, Lcom/allinone/callerid/util/a1;->q1(Z)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/allinone/callerid/g/e;->r0:Z

    .line 5
    invoke-virtual {p0}, Lcom/allinone/callerid/g/e;->e3()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->g0:Lcom/allinone/callerid/b/t;

    if-eqz v0, :cond_1

    sget-boolean v2, Lcom/allinone/callerid/main/EZCallApplication;->d:Z

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    .line 8
    sput-boolean v1, Lcom/allinone/callerid/main/EZCallApplication;->d:Z

    .line 9
    :cond_1
    sget-boolean v0, Lcom/allinone/callerid/util/j1/b;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/allinone/callerid/g/e;->v0:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->C0:Landroid/content/Context;

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v2, "dialog_notifi_per_tip_enalbleed"

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 12
    :cond_2
    sput-boolean v1, Lcom/allinone/callerid/util/j1/b;->a:Z

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->v0:Lcom/allinone/callerid/search/CallLogBean;

    invoke-direct {p0, v0}, Lcom/allinone/callerid/g/e;->q3(Lcom/allinone/callerid/search/CallLogBean;)V

    :cond_3
    return-void
.end method

.method public a3()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->k0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/allinone/callerid/g/e;->e0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/allinone/callerid/g/e;->e0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100125

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->X()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10035a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/g/e$e;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/g/e$e;-><init>(Lcom/allinone/callerid/g/e;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->X()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/g/e$d;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/g/e$d;-><init>(Lcom/allinone/callerid/g/e;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v1, -0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iget v2, p0, Lcom/allinone/callerid/g/e;->K0:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v1, -0x2

    .line 9
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->X()Landroid/content/res/Resources;

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

.method public e3()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->C0:Landroid/content/Context;

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/allinone/callerid/g/e;->L0:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->o0:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iput-boolean v1, p0, Lcom/allinone/callerid/g/e;->L0:Z

    .line 5
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/b1;->r()Z

    move-result v0

    iput-boolean v0, p0, Lcom/allinone/callerid/g/e;->Q0:Z

    .line 6
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/g/e$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/g/e$a;-><init>(Lcom/allinone/callerid/g/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public f3()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->i0:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/allinone/callerid/g/e;->i0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 5
    iget-object v3, p0, Lcom/allinone/callerid/g/e;->i0:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/allinone/callerid/search/CallLogBean;

    .line 6
    iget v4, p0, Lcom/allinone/callerid/g/e;->A0:I

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 7
    invoke-virtual {v3}, Lcom/allinone/callerid/search/CallLogBean;->O()I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 8
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 9
    invoke-virtual {v3}, Lcom/allinone/callerid/search/CallLogBean;->O()I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 10
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 11
    invoke-virtual {v3}, Lcom/allinone/callerid/search/CallLogBean;->O()I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 12
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 14
    iget-object v3, p0, Lcom/allinone/callerid/g/e;->i0:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 15
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 16
    iget-object v1, p0, Lcom/allinone/callerid/g/e;->g0:Lcom/allinone/callerid/b/t;

    if-eqz v1, :cond_6

    .line 17
    iget-object v1, p0, Lcom/allinone/callerid/g/e;->h0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 18
    iget-object v1, p0, Lcom/allinone/callerid/g/e;->h0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->g0:Lcom/allinone/callerid/b/t;

    iget-object v1, p0, Lcom/allinone/callerid/g/e;->h0:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/b/t;->O(Ljava/util/List;)V

    .line 20
    iget-object v0, p0, Lcom/allinone/callerid/g/e;->g0:Lcom/allinone/callerid/b/t;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    goto :goto_2

    .line 21
    :cond_5
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10021b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "android.app.role.DIALER"

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_3

    .line 2
    :sswitch_0
    invoke-direct {p0}, Lcom/allinone/callerid/g/e;->t3()V

    goto/16 :goto_3

    .line 3
    :sswitch_1
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_5

    .line 4
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/j1/a;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/allinone/callerid/g/e;->b3()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_3

    :cond_0
    const/16 v1, 0x1d

    const/16 v2, 0x3e7

    if-lt p1, v1, :cond_4

    .line 6
    :try_start_1
    iget-object p1, p0, Lcom/allinone/callerid/g/e;->C0:Landroid/content/Context;

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    if-eqz p1, :cond_a

    .line 7
    invoke-virtual {p1, v0}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 8
    invoke-virtual {p1, v0}, Landroid/app/role/RoleManager;->isRoleHeld(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "default_dialer"

    if-eqz v1, :cond_2

    .line 9
    :try_start_2
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_1

    const-string p1, "This app is the default dialer app"

    .line 10
    invoke-static {v3, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_1
    invoke-direct {p0}, Lcom/allinone/callerid/g/e;->b3()V

    goto/16 :goto_3

    .line 12
    :cond_2
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v1, :cond_3

    const-string v1, "This app isn\'t the default dialer app"

    .line 13
    invoke-static {v3, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_3
    invoke-virtual {p1, v0}, Landroid/app/role/RoleManager;->createRequestRoleIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 15
    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 16
    :cond_4
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.telecom.action.CHANGE_DEFAULT_DIALER"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME"

    .line 17
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/h1;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    .line 19
    :try_start_3
    invoke-direct {p0}, Lcom/allinone/callerid/g/e;->b3()V

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 21
    :cond_5
    invoke-direct {p0}, Lcom/allinone/callerid/g/e;->b3()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 23
    :sswitch_2
    :try_start_4
    iget-boolean p1, p0, Lcom/allinone/callerid/g/e;->J0:Z

    const/4 v0, 0x0

    if-nez p1, :cond_7

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/allinone/callerid/g/e;->J0:Z

    .line 25
    iget-object v1, p0, Lcom/allinone/callerid/g/e;->h0:Ljava/util/List;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 26
    :goto_0
    iget-object v1, p0, Lcom/allinone/callerid/g/e;->h0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 27
    iget-object v1, p0, Lcom/allinone/callerid/g/e;->h0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1, p1}, Lcom/allinone/callerid/search/CallLogBean;->Q0(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :cond_6
    iget-object p1, p0, Lcom/allinone/callerid/g/e;->I0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 29
    iget-object p1, p0, Lcom/allinone/callerid/g/e;->I0:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/allinone/callerid/g/e;->h0:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 30
    :cond_7
    iput-boolean v0, p0, Lcom/allinone/callerid/g/e;->J0:Z

    .line 31
    iget-object p1, p0, Lcom/allinone/callerid/g/e;->h0:Ljava/util/List;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8

    const/4 p1, 0x0

    .line 32
    :goto_1
    iget-object v1, p0, Lcom/allinone/callerid/g/e;->h0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_8

    .line 33
    iget-object v1, p0, Lcom/allinone/callerid/g/e;->h0:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1, v0}, Lcom/allinone/callerid/search/CallLogBean;->Q0(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 34
    :cond_8
    iget-object p1, p0, Lcom/allinone/callerid/g/e;->I0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 35
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/allinone/callerid/g/e;->o3()V

    .line 36
    iget-object p1, p0, Lcom/allinone/callerid/g/e;->g0:Lcom/allinone/callerid/b/t;

    if-eqz p1, :cond_a

    .line 37
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090311 -> :sswitch_2
        0x7f090312 -> :sswitch_1
        0x7f090531 -> :sswitch_0
    .end sparse-switch
.end method

.method public v0(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->v0(Landroid/os/Bundle;)V

    return-void
.end method

.method public w0(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->w0(IILandroid/content/Intent;)V

    const/16 p2, 0x3e7

    if-ne p1, p2, :cond_0

    .line 2
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/j1/a;->i(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string p2, "delete_request_default_dialer_enabled"

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public y0(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->y0(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/g/e;->C0:Landroid/content/Context;

    .line 3
    check-cast p1, Lcom/allinone/callerid/mvc/controller/MainActivity;

    iput-object p1, p0, Lcom/allinone/callerid/g/e;->e0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    const v0, 0x7f090237

    .line 4
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/clans/fab/FloatingActionButton;

    iput-object p1, p0, Lcom/allinone/callerid/g/e;->p0:Lcom/github/clans/fab/FloatingActionButton;

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/g/e;->e0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    instance-of v0, p1, Lcom/allinone/callerid/g/e$s;

    if-eqz v0, :cond_0

    .line 6
    iput-object p1, p0, Lcom/allinone/callerid/g/e;->t0:Lcom/allinone/callerid/g/e$s;

    :cond_0
    return-void
.end method
