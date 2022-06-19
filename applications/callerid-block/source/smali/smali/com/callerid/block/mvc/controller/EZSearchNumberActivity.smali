.class public Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;
.super Lcom/callerid/block/main/BaseActivity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;,
        Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p;,
        Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;,
        Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;,
        Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$s;,
        Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$u;,
        Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$o;
    }
.end annotation


# instance fields
.field public A:Landroid/widget/ListView;

.field public B:Ljava/util/List;

.field public C:Landroid/widget/LinearLayout;

.field public D:Lcom/rey/material/widget/Button;

.field public E:Landroid/widget/TextView;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field public H:Landroid/widget/TextView;

.field private I:Landroid/widget/ListView;

.field private J:Lcom/lidroid/xutils/DbUtils;

.field private K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callerid/block/bean/SearchHis;",
            ">;"
        }
    .end annotation
.end field

.field private L:Landroid/widget/TextView;

.field private M:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Landroid/widget/RelativeLayout;

.field private R:Landroid/widget/TextView;

.field private S:Landroid/widget/TextView;

.field private T:Landroid/widget/FrameLayout;

.field private U:Landroid/widget/TextView;

.field private V:Landroid/graphics/Typeface;

.field private W:Z

.field public s:Lcom/callerid/block/customview/DeletableEditText;

.field public t:Lcom/callerid/block/customview/LImageButton;

.field private u:Landroid/widget/ProgressBar;

.field public v:Landroid/widget/ListView;

.field public w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callerid/block/search/EZSearchResult;",
            ">;"
        }
    .end annotation
.end field

.field public x:Ljava/lang/String;

.field y:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;

.field public z:Lcom/rey/material/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/callerid/block/main/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->w:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->x:Ljava/lang/String;

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->F:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->O:Z

    return-void
.end method

.method static synthetic Q(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->v0()V

    return-void
.end method

.method static synthetic R(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->L:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic S(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->P:Z

    return p1
.end method

.method static synthetic T(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->r0()V

    return-void
.end method

.method static synthetic U(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->F:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic V(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->F:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic W(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->G:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic X(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->G:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic Y(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->u:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic Z(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->N:Z

    return p0
.end method

.method static synthetic a0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->N:Z

    return p1
.end method

.method static synthetic b0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->V:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic c0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->O:Z

    return p0
.end method

.method static synthetic d0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->O:Z

    return p1
.end method

.method static synthetic e0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->I:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic f0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->z0()V

    return-void
.end method

.method static synthetic g0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->K:Ljava/util/List;

    return-object p0
.end method

.method static synthetic h0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->q0()V

    return-void
.end method

.method static synthetic i0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->W:Z

    return p0
.end method

.method static synthetic j0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->W:Z

    return p1
.end method

.method static synthetic k0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->Q:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic l0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Lcom/lidroid/xutils/DbUtils;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->J:Lcom/lidroid/xutils/DbUtils;

    return-object p0
.end method

.method static synthetic m0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->M:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;

    return-object p0
.end method

.method static synthetic n0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;)Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->M:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;

    return-object p1
.end method

.method private q0()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$o;

    invoke-direct {v0, p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$o;-><init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)V

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

.method private r0()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$a;

    invoke-direct {v0, p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$a;-><init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)V

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

.method private u0()V
    .locals 4

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00b9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->I:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    const v1, 0x7f09008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$m;

    invoke-direct {v1, p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$m;-><init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private v0()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/ads/e$a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/e$a;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/e$a;->c()Lcom/google/android/gms/ads/e;

    move-result-object v0

    new-instance v1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$n;

    invoke-direct {v1, p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$n;-><init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)V

    const-string v2, "ca-app-pub-5825926894918682/2460969316"

    invoke-static {p0, v2, v0, v1}, Lcom/google/android/gms/ads/z/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/e;Lcom/google/android/gms/ads/z/c;)V

    return-void
.end method

.method private w0(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->G:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->G:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->x:Ljava/lang/String;

    new-instance v1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$e;

    invoke-direct {v1, p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$e;-><init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)V

    invoke-static {v0, p1, v1}, Lcom/callerid/block/k/a/e;->f(Ljava/lang/String;Ljava/lang/String;Lcom/callerid/block/k/a/f;)V

    return-void
.end method

.method private z0()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->s:Lcom/callerid/block/customview/DeletableEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$u;

    invoke-direct {v1, p0, v0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$u;-><init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;Ljava/lang/String;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
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
.method public A0()V
    .locals 5

    new-instance v0, Lcom/rey/material/app/Dialog;

    const v1, 0x7f110159

    invoke-direct {v0, p0, v1}, Lcom/rey/material/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->z:Lcom/rey/material/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->z:Lcom/rey/material/app/Dialog;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->V:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog;->r0(Landroid/graphics/Typeface;)Lcom/rey/material/app/Dialog;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->z:Lcom/rey/material/app/Dialog;

    const v1, 0x7f0c004e

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->z:Lcom/rey/material/app/Dialog;

    const v1, 0x7f1001bd

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog;->setTitle(I)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->z:Lcom/rey/material/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->z:Lcom/rey/material/app/Dialog;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/rey/material/app/Dialog;->K(II)Lcom/rey/material/app/Dialog;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->z:Lcom/rey/material/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog;->x(I)Lcom/rey/material/app/Dialog;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->z:Lcom/rey/material/app/Dialog;

    const v1, 0x7f09009c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->A:Landroid/widget/ListView;

    new-instance v0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p;

    invoke-direct {v0, p0, p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p;-><init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->A:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->A:Landroid/widget/ListView;

    new-instance v1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$d;

    invoke-direct {v1, p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$d;-><init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->A:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->B:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x14

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->A:Landroid/widget/ListView;

    invoke-static {v2}, Lcom/callerid/block/util/g;->b(Landroid/widget/ListView;)V

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-le v2, v1, :cond_1

    :cond_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->A:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public o0()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->s:Lcom/callerid/block/customview/DeletableEditText;

    new-instance v1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$c;

    invoke-direct {v1, p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$c;-><init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x2712

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    const-string p1, "android.speech.extra.RESULTS"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/callerid/block/util/e0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "[0-9]+"

    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-boolean p2, Lcom/callerid/block/util/w;->a:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "voiceText: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "wbb"

    invoke-static {p3, p2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->O:Z

    iget-object p2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->s:Lcom/callerid/block/customview/DeletableEditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->s:Lcom/callerid/block/customview/DeletableEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->I:Landroid/widget/ListView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->p0()V

    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->z0()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/callerid/block/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0033

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/t0;->P(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_0
    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->V:Landroid/graphics/Typeface;

    const p1, 0x7f09005f

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/customview/LImageButton;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/callerid/block/util/t0;->P(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080165

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v1

    const-string v2, "callid.search.history.vest"

    invoke-static {v1, v2}, Lcom/lidroid/xutils/DbUtils;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/lidroid/xutils/DbUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->J:Lcom/lidroid/xutils/DbUtils;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->K:Ljava/util/List;

    const v1, 0x7f0901a9

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callerid/block/customview/DeletableEditText;

    iput-object v1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->s:Lcom/callerid/block/customview/DeletableEditText;

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->V:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f090328

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callerid/block/customview/LImageButton;

    iput-object v1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->t:Lcom/callerid/block/customview/LImageButton;

    const v1, 0x7f0902be

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->u:Landroid/widget/ProgressBar;

    const v1, 0x7f090313

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->v:Landroid/widget/ListView;

    const v1, 0x7f090312

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->I:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->u0()V

    const v1, 0x7f09035a

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->C:Landroid/widget/LinearLayout;

    const v1, 0x7f090356

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/rey/material/widget/Button;

    iput-object v1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->D:Lcom/rey/material/widget/Button;

    const v1, 0x7f090091

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callerid/block/customview/LImageButton;

    const v2, 0x7f09035b

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->E:Landroid/widget/TextView;

    const v2, 0x7f090457

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->L:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->E:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->V:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->L:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->V:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v2, 0x7f090359

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->H:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->V:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v2, 0x7f0902ef

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->Q:Landroid/widget/RelativeLayout;

    const v2, 0x7f0903d1

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->R:Landroid/widget/TextView;

    const v2, 0x7f09049a

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->S:Landroid/widget/TextView;

    const v2, 0x7f090162

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->T:Landroid/widget/FrameLayout;

    const v2, 0x7f090499

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->U:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->R:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->V:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->S:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->V:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->U:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->V:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->T:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$f;

    invoke-direct {v3, p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$f;-><init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$g;

    invoke-direct {v2, p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$g;-><init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)V

    invoke-static {v2}, Lcom/callerid/block/h/a/b/a;->a(Lcom/callerid/block/h/a/b/b;)V

    new-instance v2, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$h;

    invoke-direct {v2, p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$h;-><init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->t:Lcom/callerid/block/customview/LImageButton;

    new-instance v2, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$i;

    invoke-direct {v2, p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$i;-><init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->D:Lcom/rey/material/widget/Button;

    new-instance v2, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$j;

    invoke-direct {v2, p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$j;-><init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)V

    invoke-virtual {p1, v2}, Lcom/rey/material/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$k;

    invoke-direct {p1, p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$k;-><init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)V

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->s:Lcom/callerid/block/customview/DeletableEditText;

    new-instance v1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$l;

    invoke-direct {v1, p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$l;-><init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-virtual {p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->o0()V

    invoke-virtual {p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->x0()V

    new-instance p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->w:Ljava/util/List;

    invoke-direct {p1, p0, p0, v1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;-><init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->y:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->v:Landroid/widget/ListView;

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->t0()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->B:Ljava/util/List;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->y0(Lcom/callerid/block/bean/EZCountryCode;)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->K:Ljava/util/List;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v0, :cond_2

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->L:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->I:Landroid/widget/ListView;

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->I:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setClickable(Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->L:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->L:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10019a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->I:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->I:Landroid/widget/ListView;

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setClickable(Z)V

    :goto_0
    new-instance p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;

    invoke-direct {p1, p0, p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;-><init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->M:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;

    iget-object v3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->I:Landroid/widget/ListView;

    invoke-virtual {v3, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v3, "searchnumber"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iput-boolean v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->O:Z

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->s:Lcom/callerid/block/customview/DeletableEditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->s:Lcom/callerid/block/customview/DeletableEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->I:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->I:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->p0()V

    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->z0()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->r0()V

    :goto_1
    const-string v0, "speak_search_number"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.speech.extra.LANGUAGE_MODEL"

    const-string v1, "free_form"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x2712

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_2
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->s0()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/callerid/block/main/BaseActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/callerid/block/main/BaseActivity;->onResume()V

    return-void
.end method

.method public p0()V
    .locals 9

    :try_start_0
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callerid/block/bean/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->s:Lcom/callerid/block/customview/DeletableEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->x:Ljava/lang/String;

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->u:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/callerid/block/util/t0;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->w0(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->W:Z

    new-instance v0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;

    iget-object v4, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->x:Ljava/lang/String;

    const-string v5, "android"

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/callerid/block/util/t0;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->G:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->x:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/callerid/block/util/t0;->A(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;-><init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "time"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u51c6\u5907\u641c\u7d22\u53f7\u7801:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/callerid/block/util/t0;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/q0;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "search_number"

    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f1001bd

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public s0()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->s:Lcom/callerid/block/customview/DeletableEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public t0()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {p0}, Lcom/callerid/block/util/j;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public x0()V
    .locals 4

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$b;

    invoke-direct {v1, p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$b;-><init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)V

    const-wide/16 v2, 0x378

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public y0(Lcom/callerid/block/bean/EZCountryCode;)V
    .locals 3

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->G:Ljava/lang/String;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->E:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZCountryCode;->getCountry_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->H:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object p1

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aget-object p1, p1, v1

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
