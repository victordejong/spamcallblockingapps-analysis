.class final Lcom/google/android/gms/internal/ads/aer;
.super Lcom/google/android/gms/internal/ads/aex;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/webkit/DownloadListener;
.implements Lcom/google/android/gms/internal/ads/act;
.implements Lcom/google/android/gms/internal/ads/hk;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private A:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private B:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private C:Lcom/google/android/gms/internal/ads/m;

.field private D:Lcom/google/android/gms/internal/ads/m;

.field private E:Lcom/google/android/gms/internal/ads/m;

.field private F:Lcom/google/android/gms/internal/ads/p;

.field private G:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private H:Lcom/google/android/gms/ads/internal/overlay/c;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private I:Lcom/google/android/gms/internal/ads/xo;

.field private final J:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/gms/dynamic/a;",
            ">;"
        }
    .end annotation
.end field

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/abt;",
            ">;"
        }
    .end annotation
.end field

.field private final P:Landroid/view/WindowManager;

.field private final a:Lcom/google/android/gms/internal/ads/aek;

.field private final b:Lcom/google/android/gms/internal/ads/aem;

.field private final c:Lcom/google/android/gms/internal/ads/ctl;

.field private final d:Lcom/google/android/gms/internal/ads/yd;

.field private final e:Lcom/google/android/gms/ads/internal/i;

.field private final f:Lcom/google/android/gms/ads/internal/a;

.field private final g:Landroid/util/DisplayMetrics;

.field private final h:Lcom/google/android/gms/internal/ads/dwi;

.field private final i:Lcom/google/android/gms/internal/ads/dvk;

.field private final j:Z

.field private k:Lcom/google/android/gms/ads/internal/overlay/c;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private l:Lcom/google/android/gms/internal/ads/aei;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private m:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private n:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private o:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private p:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private q:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private r:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private s:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private t:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private u:Lcom/google/android/gms/internal/ads/adn;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private v:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private w:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private x:Lcom/google/android/gms/internal/ads/bj;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private y:Lcom/google/android/gms/internal/ads/bi;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private z:Lcom/google/android/gms/internal/ads/dva;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/aek;Lcom/google/android/gms/internal/ads/aem;Lcom/google/android/gms/internal/ads/aei;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ctl;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/dwi;Lcom/google/android/gms/internal/ads/dvk;Z)V
    .locals 6

    .prologue
    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/aex;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aev;)V

    .line 2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/aer;->r:Z

    .line 3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/aer;->s:Z

    .line 4
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/aer;->t:Ljava/lang/String;

    .line 5
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/aer;->J:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/aer;->K:I

    .line 7
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/aer;->L:I

    .line 8
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/aer;->M:I

    .line 9
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/aer;->N:I

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aer;->a:Lcom/google/android/gms/internal/ads/aek;

    .line 11
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aer;->b:Lcom/google/android/gms/internal/ads/aem;

    .line 12
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/aer;->l:Lcom/google/android/gms/internal/ads/aei;

    .line 13
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/aer;->m:Ljava/lang/String;

    .line 14
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/aer;->o:Z

    .line 15
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/aer;->q:I

    .line 16
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/aer;->c:Lcom/google/android/gms/internal/ads/ctl;

    .line 17
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/aer;->d:Lcom/google/android/gms/internal/ads/yd;

    .line 18
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->e:Lcom/google/android/gms/ads/internal/i;

    .line 19
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->f:Lcom/google/android/gms/ads/internal/a;

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aer;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/aer;->P:Landroid/view/WindowManager;

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aer;->P:Landroid/view/WindowManager;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ve;->a(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/aer;->g:Landroid/util/DisplayMetrics;

    .line 22
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->h:Lcom/google/android/gms/internal/ads/dwi;

    .line 23
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->i:Lcom/google/android/gms/internal/ads/dvk;

    .line 24
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aer;->j:Z

    .line 25
    new-instance v1, Lcom/google/android/gms/internal/ads/xo;

    .line 26
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aer;->a:Lcom/google/android/gms/internal/ads/aek;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/aek;->a()Landroid/app/Activity;

    move-result-object v2

    .line 27
    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, p0, v3}, Lcom/google/android/gms/internal/ads/xo;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/aer;->I:Lcom/google/android/gms/internal/ads/xo;

    .line 28
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    move-result-object v1

    iget-object v2, p8, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aer;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ve;->a(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V

    .line 29
    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/ads/aer;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 30
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aer;->R()V

    .line 31
    invoke-static {}, Lcom/google/android/gms/common/util/m;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ado;->a(Lcom/google/android/gms/internal/ads/act;)Lcom/google/android/gms/internal/ads/ado;

    move-result-object v1

    const-string/jumbo v2, "googleAdsJsInterface"

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/aew;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aer;->V()V

    .line 35
    new-instance v1, Lcom/google/android/gms/internal/ads/p;

    new-instance v2, Lcom/google/android/gms/internal/ads/o;

    const/4 v3, 0x1

    const-string/jumbo v4, "make_wv"

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/aer;->m:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/o;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/p;-><init>(Lcom/google/android/gms/internal/ads/o;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/aer;->F:Lcom/google/android/gms/internal/ads/p;

    .line 36
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aer;->F:Lcom/google/android/gms/internal/ads/p;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/p;->a()Lcom/google/android/gms/internal/ads/o;

    move-result-object v1

    invoke-virtual {v1, p9}, Lcom/google/android/gms/internal/ads/o;->a(Lcom/google/android/gms/internal/ads/o;)V

    .line 37
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aer;->F:Lcom/google/android/gms/internal/ads/p;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/p;->a()Lcom/google/android/gms/internal/ads/o;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/j;->a(Lcom/google/android/gms/internal/ads/o;)Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/aer;->D:Lcom/google/android/gms/internal/ads/m;

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aer;->F:Lcom/google/android/gms/internal/ads/p;

    const-string/jumbo v2, "native:view_create"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aer;->D:Lcom/google/android/gms/internal/ads/m;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/p;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/m;)V

    .line 39
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/aer;->E:Lcom/google/android/gms/internal/ads/m;

    .line 40
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/aer;->C:Lcom/google/android/gms/internal/ads/m;

    .line 41
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/vj;->b(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method private final P()Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 46
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->b:Lcom/google/android/gms/internal/ads/aem;

    .line 48
    check-cast v0, Lcom/google/android/gms/internal/ads/aem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aem;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->b:Lcom/google/android/gms/internal/ads/aem;

    .line 50
    check-cast v0, Lcom/google/android/gms/internal/ads/aem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aem;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v5

    .line 52
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->g:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aer;->g:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/xr;->b(Landroid/util/DisplayMetrics;I)I

    move-result v1

    .line 53
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->g:Landroid/util/DisplayMetrics;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aer;->g:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/xr;->b(Landroid/util/DisplayMetrics;I)I

    move-result v2

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->a:Lcom/google/android/gms/internal/ads/aek;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aek;->a()Landroid/app/Activity;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-nez v3, :cond_5

    :cond_2
    move v4, v2

    move v3, v1

    .line 63
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/aer;->L:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/aer;->K:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/aer;->M:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/aer;->N:I

    if-eq v0, v4, :cond_0

    .line 65
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/aer;->L:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/ads/aer;->K:I

    if-eq v0, v2, :cond_6

    :cond_4
    move v7, v6

    .line 66
    :goto_2
    iput v1, p0, Lcom/google/android/gms/internal/ads/aer;->L:I

    .line 67
    iput v2, p0, Lcom/google/android/gms/internal/ads/aer;->K:I

    .line 68
    iput v3, p0, Lcom/google/android/gms/internal/ads/aer;->M:I

    .line 69
    iput v4, p0, Lcom/google/android/gms/internal/ads/aer;->N:I

    .line 70
    new-instance v0, Lcom/google/android/gms/internal/ads/nt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/nt;-><init>(Lcom/google/android/gms/internal/ads/act;)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/aer;->g:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/aer;->P:Landroid/view/WindowManager;

    .line 71
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    .line 72
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/nt;->a(IIIIFI)V

    move v5, v7

    .line 73
    goto :goto_0

    .line 60
    :cond_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ve;->a(Landroid/app/Activity;)[I

    move-result-object v0

    .line 61
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aer;->g:Landroid/util/DisplayMetrics;

    aget v4, v0, v5

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/xr;->b(Landroid/util/DisplayMetrics;I)I

    move-result v3

    .line 62
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aer;->g:Landroid/util/DisplayMetrics;

    aget v0, v0, v6

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/xr;->b(Landroid/util/DisplayMetrics;I)I

    move-result v4

    goto :goto_1

    :cond_6
    move v7, v5

    .line 65
    goto :goto_2
.end method

.method private final Q()V
    .locals 5

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->F:Lcom/google/android/gms/internal/ads/p;

    .line 103
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p;->a()Lcom/google/android/gms/internal/ads/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aer;->D:Lcom/google/android/gms/internal/ads/m;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "aeh2"

    aput-object v4, v2, v3

    .line 104
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/j;->a(Lcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/internal/ads/m;[Ljava/lang/String;)Z

    .line 105
    return-void
.end method

.method private final declared-synchronized R()V
    .locals 2

    .prologue
    .line 338
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aer;->o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->l:Lcom/google/android/gms/internal/ads/aei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aei;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    :cond_0
    const-string/jumbo v0, "Enabling hardware acceleration on an overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 340
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aer;->T()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    :goto_0
    monitor-exit p0

    return-void

    .line 341
    :cond_1
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_2

    .line 342
    const-string/jumbo v0, "Disabling hardware acceleration on an AdView."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 343
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aer;->S()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 344
    :cond_2
    :try_start_2
    const-string/jumbo v0, "Enabling hardware acceleration on an AdView."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 345
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aer;->T()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private final declared-synchronized S()V
    .locals 2

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aer;->p:Z

    if-nez v0, :cond_0

    .line 348
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    .line 349
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 350
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aer;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    monitor-exit p0

    return-void

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized T()V
    .locals 2

    .prologue
    .line 352
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aer;->p:Z

    if-eqz v0, :cond_0

    .line 353
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    .line 354
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 355
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aer;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    monitor-exit p0

    return-void

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized U()V
    .locals 2

    .prologue
    .line 414
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->O:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->O:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/abt;

    .line 416
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abt;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 418
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->O:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 419
    monitor-exit p0

    return-void
.end method

.method private final V()V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->F:Lcom/google/android/gms/internal/ads/p;

    if-nez v0, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->F:Lcom/google/android/gms/internal/ads/p;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p;->a()Lcom/google/android/gms/internal/ads/o;

    move-result-object v0

    .line 459
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ug;->a()Lcom/google/android/gms/internal/ads/e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 460
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ug;->a()Lcom/google/android/gms/internal/ads/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/e;->a(Lcom/google/android/gms/internal/ads/o;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/aer;)I
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Lcom/google/android/gms/internal/ads/aer;->B:I

    return v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/aer;I)I
    .locals 0

    .prologue
    .line 533
    iput p1, p0, Lcom/google/android/gms/internal/ads/aer;->B:I

    return p1
.end method

.method static final synthetic a(ZILcom/google/android/gms/internal/ads/dwv$n$a;)V
    .locals 2

    .prologue
    .line 525
    invoke-static {}, Lcom/google/android/gms/internal/ads/dwv$f;->b()Lcom/google/android/gms/internal/ads/dwv$f$a;

    move-result-object v0

    .line 526
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dwv$f$a;->a()Z

    move-result v1

    if-eq v1, p0, :cond_0

    .line 527
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/dwv$f$a;->a(Z)Lcom/google/android/gms/internal/ads/dwv$f$a;

    .line 529
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dwv$f$a;->a(I)Lcom/google/android/gms/internal/ads/dwv$f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dwv$f;

    .line 530
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/dwv$n$a;->a(Lcom/google/android/gms/internal/ads/dwv$f;)Lcom/google/android/gms/internal/ads/dwv$n$a;

    .line 531
    return-void
.end method

.method private final h(Z)V
    .locals 3

    .prologue
    .line 487
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 488
    const-string/jumbo v2, "isVisible"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const-string/jumbo v0, "onAdVisibilityChanged"

    .line 490
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/hj;->a(Lcom/google/android/gms/internal/ads/hk;Ljava/lang/String;Ljava/util/Map;)V

    .line 491
    return-void

    .line 488
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized A()Z
    .locals 1

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aer;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final C()V
    .locals 0

    .prologue
    .line 331
    return-void
.end method

.method public final declared-synchronized D()Z
    .locals 1

    .prologue
    .line 405
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aer;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized E()Z
    .locals 1

    .prologue
    .line 451
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/aer;->A:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final F()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->I:Lcom/google/android/gms/internal/ads/xo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xo;->a()V

    .line 281
    return-void
.end method

.method public final G()V
    .locals 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->E:Lcom/google/android/gms/internal/ads/m;

    if-nez v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->F:Lcom/google/android/gms/internal/ads/p;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p;->a()Lcom/google/android/gms/internal/ads/o;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j;->a(Lcom/google/android/gms/internal/ads/o;)Lcom/google/android/gms/internal/ads/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->E:Lcom/google/android/gms/internal/ads/m;

    .line 380
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->F:Lcom/google/android/gms/internal/ads/p;

    const-string/jumbo v1, "native:view_load"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aer;->E:Lcom/google/android/gms/internal/ads/m;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/p;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/m;)V

    .line 381
    :cond_0
    return-void
.end method

.method public final declared-synchronized H()Lcom/google/android/gms/internal/ads/bj;
    .locals 1

    .prologue
    .line 436
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->x:Lcom/google/android/gms/internal/ads/bj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final I()V
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/aer;->setBackgroundColor(I)V

    .line 463
    return-void
.end method

.method public final J()V
    .locals 1

    .prologue
    .line 392
    const-string/jumbo v0, "Cannot add text view to inner AdWebView"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public final declared-synchronized K()Lcom/google/android/gms/internal/ads/dva;
    .locals 1

    .prologue
    .line 444
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->z:Lcom/google/android/gms/internal/ads/dva;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final L()Z
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x0

    return v0
.end method

.method public final M()Lcom/google/android/gms/internal/ads/dvk;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->i:Lcom/google/android/gms/internal/ads/dvk;

    return-object v0
.end method

.method public final N()Z
    .locals 2

    .prologue
    .line 519
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->df:Lcom/google/android/gms/internal/ads/ect;

    .line 520
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 521
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->i:Lcom/google/android/gms/internal/ads/dvk;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aer;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/abt;
    .locals 1

    .prologue
    .line 424
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->O:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 425
    const/4 v0, 0x0

    .line 426
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->O:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/abt;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 406
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aer;->s:Z

    .line 407
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->e:Lcom/google/android/gms/ads/internal/i;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->e:Lcom/google/android/gms/ads/internal/i;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/i;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    :cond_0
    monitor-exit p0

    return-void

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(I)V
    .locals 5

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->F:Lcom/google/android/gms/internal/ads/p;

    .line 91
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p;->a()Lcom/google/android/gms/internal/ads/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aer;->D:Lcom/google/android/gms/internal/ads/m;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "aebb2"

    aput-object v4, v2, v3

    .line 92
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/j;->a(Lcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/internal/ads/m;[Ljava/lang/String;)Z

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aer;->Q()V

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->F:Lcom/google/android/gms/internal/ads/p;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p;->a()Lcom/google/android/gms/internal/ads/o;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->F:Lcom/google/android/gms/internal/ads/p;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p;->a()Lcom/google/android/gms/internal/ads/o;

    move-result-object v0

    const-string/jumbo v1, "close_type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 97
    const-string/jumbo v1, "closetype"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string/jumbo v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aer;->d:Lcom/google/android/gms/internal/ads/yd;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string/jumbo v1, "onhide"

    .line 100
    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/hj;->a(Lcom/google/android/gms/internal/ads/hk;Ljava/lang/String;Ljava/util/Map;)V

    .line 101
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->a:Lcom/google/android/gms/internal/ads/aek;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/aek;->setBaseContext(Landroid/content/Context;)V

    .line 325
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->I:Lcom/google/android/gms/internal/ads/xo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aer;->a:Lcom/google/android/gms/internal/ads/aek;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aek;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/xo;->a(Landroid/app/Activity;)V

    .line 326
    return-void
.end method

.method public final a(Landroid/view/ViewGroup;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 506
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aer;->N()Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    const-string/jumbo v0, "AR ad is not enabled or the ad from the server is not an AR ad."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 517
    :goto_0
    return-void

    .line 509
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 510
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez p0, :cond_1

    throw v1

    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 511
    :cond_2
    const-string/jumbo v0, "Initializing ArWebView object."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->i:Lcom/google/android/gms/internal/ads/dvk;

    if-nez p0, :cond_3

    throw v1

    :cond_3
    invoke-interface {v0, p2, p0}, Lcom/google/android/gms/internal/ads/dvk;->a(Landroid/app/Activity;Landroid/webkit/WebView;)V

    .line 513
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->i:Lcom/google/android/gms/internal/ads/dvk;

    invoke-interface {v0, p3, p4}, Lcom/google/android/gms/internal/ads/dvk;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    if-eqz p1, :cond_4

    .line 515
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->i:Lcom/google/android/gms/internal/ads/dvk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dvk;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 516
    :cond_4
    const-string/jumbo v0, "The FrameLayout object cannot be null."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/ads/internal/overlay/c;)V
    .locals 1

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aer;->k:Lcom/google/android/gms/ads/internal/overlay/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    monitor-exit p0

    return-void

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/ads/internal/overlay/d;)V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->b:Lcom/google/android/gms/internal/ads/aem;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/aem;->a(Lcom/google/android/gms/ads/internal/overlay/d;)V

    .line 475
    return-void
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;)V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->J:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 266
    return-void
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/adn;)V
    .locals 1

    .prologue
    .line 446
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->u:Lcom/google/android/gms/internal/ads/adn;

    if-eqz v0, :cond_0

    .line 447
    const-string/jumbo v0, "Attempt to create multiple AdWebViewVideoControllers."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    :goto_0
    monitor-exit p0

    return-void

    .line 449
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aer;->u:Lcom/google/android/gms/internal/ads/adn;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/aei;)V
    .locals 1

    .prologue
    .line 269
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aer;->l:Lcom/google/android/gms/internal/ads/aei;

    .line 270
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aer;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    monitor-exit p0

    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/bi;)V
    .locals 1

    .prologue
    .line 440
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aer;->y:Lcom/google/android/gms/internal/ads/bi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    monitor-exit p0

    return-void

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/bj;)V
    .locals 1

    .prologue
    .line 434
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aer;->x:Lcom/google/android/gms/internal/ads/bj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    monitor-exit p0

    return-void

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dtt;)V
    .locals 1

    .prologue
    .line 482
    monitor-enter p0

    .line 483
    :try_start_0
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/dtt;->j:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aer;->v:Z

    .line 484
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/dtt;->j:Z

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/aer;->h(Z)V

    .line 486
    return-void

    .line 484
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/dva;)V
    .locals 1

    .prologue
    .line 442
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aer;->z:Lcom/google/android/gms/internal/ads/dva;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    monitor-exit p0

    return-void

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/common/util/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/util/n",
            "<",
            "Lcom/google/android/gms/internal/ads/fa",
            "<-",
            "Lcom/google/android/gms/internal/ads/act;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->b:Lcom/google/android/gms/internal/ads/aem;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->b:Lcom/google/android/gms/internal/ads/aem;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/aem;->a(Ljava/lang/String;Lcom/google/android/gms/common/util/n;)V

    .line 500
    :cond_0
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/abt;)V
    .locals 1

    .prologue
    .line 420
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->O:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 421
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->O:Ljava/util/Map;

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->O:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    monitor-exit p0

    return-void

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/fa",
            "<-",
            "Lcom/google/android/gms/internal/ads/act;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 492
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->b:Lcom/google/android/gms/internal/ads/aem;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->b:Lcom/google/android/gms/internal/ads/aem;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/aem;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 494
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/hj;->a(Lcom/google/android/gms/internal/ads/hk;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 74
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 75
    invoke-static {}, Lcom/google/android/gms/internal/ads/ady;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/ady;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "UTF-8"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    .line 76
    invoke-super/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aex;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/hj;->a(Lcom/google/android/gms/internal/ads/hk;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/hj;->a(Lcom/google/android/gms/internal/ads/hk;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 464
    .line 465
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->b:Lcom/google/android/gms/internal/ads/aem;

    .line 466
    check-cast v0, Lcom/google/android/gms/internal/ads/aem;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/aem;->a(Z)V

    .line 467
    return-void
.end method

.method public final a(ZILjava/lang/String;)V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->b:Lcom/google/android/gms/internal/ads/aem;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/aem;->a(ZILjava/lang/String;)V

    .line 479
    return-void
.end method

.method public final a(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->b:Lcom/google/android/gms/internal/ads/aem;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/aem;->a(ZILjava/lang/String;Ljava/lang/String;)V

    .line 481
    return-void
.end method

.method public final a(ZJ)V
    .locals 4

    .prologue
    .line 126
    new-instance v1, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 127
    const-string/jumbo v2, "success"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string/jumbo v0, "duration"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string/jumbo v0, "onCacheAccessComplete"

    .line 130
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/hj;->a(Lcom/google/android/gms/internal/ads/hk;Ljava/lang/String;Ljava/util/Map;)V

    .line 131
    return-void

    .line 127
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public final a(ZI)Z
    .locals 2

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aex;->destroy()V

    .line 502
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->h:Lcom/google/android/gms/internal/ads/dwi;

    new-instance v1, Lcom/google/android/gms/internal/ads/aeu;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/aeu;-><init>(ZI)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwl;)V

    .line 503
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->h:Lcom/google/android/gms/internal/ads/dwi;

    sget-object v1, Lcom/google/android/gms/internal/ads/dwk$a$a;->Q:Lcom/google/android/gms/internal/ads/dwk$a$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwk$a$a;)V

    .line 504
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized b()V
    .locals 1

    .prologue
    .line 410
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aer;->s:Z

    .line 411
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->e:Lcom/google/android/gms/ads/internal/i;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->e:Lcom/google/android/gms/ads/internal/i;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/i;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    :cond_0
    monitor-exit p0

    return-void

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/google/android/gms/ads/internal/overlay/c;)V
    .locals 1

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aer;->H:Lcom/google/android/gms/ads/internal/overlay/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    monitor-exit p0

    return-void

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/fa",
            "<-",
            "Lcom/google/android/gms/internal/ads/act;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->b:Lcom/google/android/gms/internal/ads/aem;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->b:Lcom/google/android/gms/internal/ads/aem;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/aem;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 497
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/hj;->b(Lcom/google/android/gms/internal/ads/hk;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final declared-synchronized b(Z)V
    .locals 2

    .prologue
    .line 272
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aer;->o:Z

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    .line 273
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/aer;->o:Z

    .line 274
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aer;->R()V

    .line 275
    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->G:Lcom/google/android/gms/internal/ads/ect;

    .line 276
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 277
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->l:Lcom/google/android/gms/internal/ads/aei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aei;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 278
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/nt;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/nt;-><init>(Lcom/google/android/gms/internal/ads/act;)V

    if-eqz p1, :cond_3

    const-string/jumbo v0, "expanded"

    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/nt;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    :cond_1
    monitor-exit p0

    return-void

    .line 272
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 278
    :cond_3
    :try_start_1
    const-string/jumbo v0, "default"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(ZI)V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->b:Lcom/google/android/gms/internal/ads/aem;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/aem;->a(ZI)V

    .line 477
    return-void
.end method

.method public final c()Lcom/google/android/gms/internal/ads/zw;
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized c(Z)V
    .locals 2

    .prologue
    .line 327
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->k:Lcom/google/android/gms/ads/internal/overlay/c;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->k:Lcom/google/android/gms/ads/internal/overlay/c;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aer;->b:Lcom/google/android/gms/internal/ads/aem;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aem;->b()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/ads/internal/overlay/c;->a(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    :goto_0
    monitor-exit p0

    return-void

    .line 329
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/aer;->n:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Lcom/google/android/gms/internal/ads/adn;
    .locals 1

    .prologue
    .line 445
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->u:Lcom/google/android/gms/internal/ads/adn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aex;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/aex;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :goto_0
    monitor-exit p0

    return-void

    .line 80
    :cond_0
    :try_start_1
    const-string/jumbo v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(Z)V
    .locals 1

    .prologue
    .line 403
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/aer;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    monitor-exit p0

    return-void

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/m;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->D:Lcom/google/android/gms/internal/ads/m;

    return-object v0
.end method

.method public final declared-synchronized e(Z)V
    .locals 2

    .prologue
    .line 452
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/aer;->A:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/aer;->A:I

    .line 453
    iget v0, p0, Lcom/google/android/gms/internal/ads/aer;->A:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->k:Lcom/google/android/gms/ads/internal/overlay/c;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->k:Lcom/google/android/gms/ads/internal/overlay/c;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/c;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    :cond_0
    monitor-exit p0

    return-void

    .line 452
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->a:Lcom/google/android/gms/internal/ads/aek;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aek;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final f(Z)V
    .locals 1

    .prologue
    .line 394
    .line 395
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->b:Lcom/google/android/gms/internal/ads/aem;

    .line 396
    check-cast v0, Lcom/google/android/gms/internal/ads/aem;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/aem;->b(Z)V

    .line 397
    return-void
.end method

.method public final g()Lcom/google/android/gms/ads/internal/a;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->f:Lcom/google/android/gms/ads/internal/a;

    return-object v0
.end method

.method protected final declared-synchronized g(Z)V
    .locals 2

    .prologue
    .line 357
    monitor-enter p0

    if-nez p1, :cond_0

    .line 358
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aer;->V()V

    .line 359
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->I:Lcom/google/android/gms/internal/ads/xo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xo;->b()V

    .line 360
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->k:Lcom/google/android/gms/ads/internal/overlay/c;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->k:Lcom/google/android/gms/ads/internal/overlay/c;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/c;->a()V

    .line 362
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->k:Lcom/google/android/gms/ads/internal/overlay/c;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/c;->k()V

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->k:Lcom/google/android/gms/ads/internal/overlay/c;

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->J:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 365
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->b:Lcom/google/android/gms/internal/ads/aem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aem;->k()V

    .line 366
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->y()Lcom/google/android/gms/internal/ads/abu;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/abu;->a(Lcom/google/android/gms/internal/ads/aad;)Z

    .line 367
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aer;->U()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    monitor-exit p0

    return-void

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->t:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 44
    return-object p0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .locals 0

    .prologue
    .line 43
    return-object p0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aer;->r()Lcom/google/android/gms/ads/internal/overlay/c;

    move-result-object v0

    .line 469
    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/c;->p()V

    .line 471
    :cond_0
    return-void
.end method

.method public final i()Lcom/google/android/gms/internal/ads/p;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->F:Lcom/google/android/gms/internal/ads/p;

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/internal/ads/yd;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->d:Lcom/google/android/gms/internal/ads/yd;

    return-object v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aer;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aer;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public final declared-synchronized m()V
    .locals 1

    .prologue
    .line 437
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->y:Lcom/google/android/gms/internal/ads/bi;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->y:Lcom/google/android/gms/internal/ads/bi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bi;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    :cond_0
    monitor-exit p0

    return-void

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final n()V
    .locals 3

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aer;->Q()V

    .line 83
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 84
    const-string/jumbo v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aer;->d:Lcom/google/android/gms/internal/ads/yd;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string/jumbo v1, "onhide"

    .line 86
    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/hj;->a(Lcom/google/android/gms/internal/ads/hk;Ljava/lang/String;Ljava/util/Map;)V

    .line 87
    return-void
.end method

.method public final o()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->C:Lcom/google/android/gms/internal/ads/m;

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->F:Lcom/google/android/gms/internal/ads/p;

    .line 108
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p;->a()Lcom/google/android/gms/internal/ads/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aer;->D:Lcom/google/android/gms/internal/ads/m;

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "aes2"

    aput-object v4, v2, v3

    .line 109
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/j;->a(Lcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/internal/ads/m;[Ljava/lang/String;)Z

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->F:Lcom/google/android/gms/internal/ads/p;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p;->a()Lcom/google/android/gms/internal/ads/o;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j;->a(Lcom/google/android/gms/internal/ads/o;)Lcom/google/android/gms/internal/ads/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->C:Lcom/google/android/gms/internal/ads/m;

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->F:Lcom/google/android/gms/internal/ads/p;

    const-string/jumbo v1, "native:view_show"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aer;->C:Lcom/google/android/gms/internal/ads/m;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/p;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/m;)V

    .line 112
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 113
    const-string/jumbo v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aer;->d:Lcom/google/android/gms/internal/ads/yd;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string/jumbo v1, "onshow"

    .line 115
    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/hj;->a(Lcom/google/android/gms/internal/ads/hk;Ljava/lang/String;Ljava/util/Map;)V

    .line 116
    return-void
.end method

.method protected final declared-synchronized onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 282
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/aex;->onAttachedToWindow()V

    .line 283
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aex;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->I:Lcom/google/android/gms/internal/ads/xo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xo;->c()V

    .line 285
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/aer;->v:Z

    .line 287
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->b:Lcom/google/android/gms/internal/ads/aem;

    .line 288
    check-cast v0, Lcom/google/android/gms/internal/ads/aem;

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->b:Lcom/google/android/gms/internal/ads/aem;

    .line 290
    check-cast v0, Lcom/google/android/gms/internal/ads/aem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aem;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aer;->w:Z

    if-nez v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->b:Lcom/google/android/gms/internal/ads/aem;

    .line 295
    check-cast v0, Lcom/google/android/gms/internal/ads/aem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aem;->e()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 297
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->b:Lcom/google/android/gms/internal/ads/aem;

    .line 298
    check-cast v0, Lcom/google/android/gms/internal/ads/aem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aem;->f()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aer;->w:Z

    .line 300
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aer;->P()Z

    move v0, v1

    .line 301
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/aer;->h(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    monitor-exit p0

    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method protected final onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 303
    monitor-enter p0

    .line 304
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aex;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->I:Lcom/google/android/gms/internal/ads/xo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xo;->d()V

    .line 306
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/aex;->onDetachedFromWindow()V

    .line 307
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aer;->w:Z

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->b:Lcom/google/android/gms/internal/ads/aem;

    .line 309
    check-cast v0, Lcom/google/android/gms/internal/ads/aem;

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->b:Lcom/google/android/gms/internal/ads/aem;

    .line 311
    check-cast v0, Lcom/google/android/gms/internal/ads/aem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aem;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 313
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->b:Lcom/google/android/gms/internal/ads/aem;

    .line 316
    check-cast v0, Lcom/google/android/gms/internal/ads/aem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aem;->e()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 318
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->b:Lcom/google/android/gms/internal/ads/aem;

    .line 319
    check-cast v0, Lcom/google/android/gms/internal/ads/aem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aem;->f()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aer;->w:Z

    .line 321
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/aer;->h(Z)V

    .line 323
    return-void

    .line 321
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 142
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ve;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x33

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v0, "Couldn\'t find an Activity to view url/mimetype: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 369
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    .line 370
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aer;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/aex;->onDraw(Landroid/graphics/Canvas;)V

    .line 375
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->b:Lcom/google/android/gms/internal/ads/aem;

    .line 376
    check-cast v0, Lcom/google/android/gms/internal/ads/aem;

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 161
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 162
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 164
    cmpl-float v2, v0, v4

    if-lez v2, :cond_0

    .line 165
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/aer;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    .line 166
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/aer;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    cmpl-float v0, v1, v4

    if-lez v0, :cond_2

    .line 167
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/aer;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    cmpg-float v0, v1, v4

    if-gez v0, :cond_4

    .line 168
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/aer;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 169
    :cond_3
    const/4 v0, 0x0

    .line 170
    :goto_0
    return v0

    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/aex;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onGlobalLayout()V
    .locals 2

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aer;->P()Z

    move-result v0

    .line 259
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aer;->r()Lcom/google/android/gms/ads/internal/overlay/c;

    move-result-object v1

    .line 260
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/c;->o()V

    .line 262
    :cond_0
    return-void
.end method

.method protected final declared-synchronized onMeasure(II)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v2, 0x1

    const/high16 v8, -0x80000000

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 171
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aex;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aer;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :goto_0
    monitor-exit p0

    return-void

    .line 174
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aer;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aer;->o:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->l:Lcom/google/android/gms/internal/ads/aei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aei;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/aex;->onMeasure(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 177
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->l:Lcom/google/android/gms/internal/ads/aei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aei;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/aex;->onMeasure(II)V

    goto :goto_0

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->l:Lcom/google/android/gms/internal/ads/aei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aei;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 181
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bA:Lcom/google/android/gms/internal/ads/ect;

    .line 182
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 183
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 184
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/aex;->onMeasure(II)V

    goto :goto_0

    .line 187
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aer;->d()Lcom/google/android/gms/internal/ads/adn;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_19

    .line 189
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/adn;->i()F

    move-result v0

    .line 190
    :goto_1
    cmpl-float v1, v0, v1

    if-nez v1, :cond_5

    .line 191
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/aex;->onMeasure(II)V

    goto :goto_0

    .line 193
    :cond_5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 194
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 195
    int-to-float v1, v4

    mul-float/2addr v1, v0

    float-to-int v3, v1

    .line 196
    int-to-float v1, v5

    div-float/2addr v1, v0

    float-to-int v1, v1

    .line 197
    if-nez v4, :cond_6

    if-eqz v1, :cond_6

    .line 199
    int-to-float v2, v1

    mul-float/2addr v0, v2

    float-to-int v2, v0

    move v0, v1

    move v4, v1

    .line 203
    :goto_2
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 204
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 205
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/aer;->setMeasuredDimension(II)V

    goto :goto_0

    .line 200
    :cond_6
    if-nez v5, :cond_18

    if-eqz v3, :cond_18

    .line 202
    int-to-float v1, v3

    div-float v0, v1, v0

    float-to-int v0, v0

    move v2, v3

    move v5, v3

    goto :goto_2

    .line 207
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->l:Lcom/google/android/gms/internal/ads/aei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aei;->d()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 208
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bC:Lcom/google/android/gms/internal/ads/ect;

    .line 209
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 210
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/common/util/m;->d()Z

    move-result v0

    if-nez v0, :cond_9

    .line 211
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/aex;->onMeasure(II)V

    goto/16 :goto_0

    .line 213
    :cond_9
    const-string/jumbo v0, "/contentHeight"

    .line 214
    new-instance v1, Lcom/google/android/gms/internal/ads/aet;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/aet;-><init>(Lcom/google/android/gms/internal/ads/aer;)V

    .line 215
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aer;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 216
    const-string/jumbo v0, "(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = \'gmsg://mobileads.google.com/contentHeight?\';  url += \'height=\' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById(\'afma-notify-fluid\');    if (!frame) {      frame = document.createElement(\'IFRAME\');      frame.id = \'afma-notify-fluid\';      frame.style.display = \'none\';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();"

    .line 217
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/aew;->d(Ljava/lang/String;)V

    .line 218
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 219
    iget v0, p0, Lcom/google/android/gms/internal/ads/aer;->B:I

    packed-switch v0, :pswitch_data_0

    .line 222
    iget v0, p0, Lcom/google/android/gms/internal/ads/aer;->B:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aer;->g:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 223
    :goto_3
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/aer;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 220
    :pswitch_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_3

    .line 225
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->l:Lcom/google/android/gms/internal/ads/aei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aei;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 226
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->g:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aer;->g:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aer;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 228
    :cond_b
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 229
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 230
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 231
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 232
    const v0, 0x7fffffff

    .line 233
    if-eq v1, v8, :cond_c

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v1, v6, :cond_17

    :cond_c
    move v6, v7

    .line 235
    :goto_4
    const v0, 0x7fffffff

    .line 236
    if-eq v4, v8, :cond_d

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v4, v1, :cond_16

    :cond_d
    move v4, v5

    .line 239
    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->l:Lcom/google/android/gms/internal/ads/aei;

    iget v0, v0, Lcom/google/android/gms/internal/ads/aei;->b:I

    if-gt v0, v6, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->l:Lcom/google/android/gms/internal/ads/aei;

    iget v0, v0, Lcom/google/android/gms/internal/ads/aei;->a:I

    if-le v0, v4, :cond_10

    :cond_e
    move v1, v2

    .line 240
    :goto_6
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cs:Lcom/google/android/gms/internal/ads/ect;

    .line 241
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 242
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 243
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->l:Lcom/google/android/gms/internal/ads/aei;

    iget v0, v0, Lcom/google/android/gms/internal/ads/aei;->b:I

    int-to-float v0, v0

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/aer;->g:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v8

    int-to-float v6, v6

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/aer;->g:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v6, v8

    cmpl-float v0, v0, v6

    if-gtz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->l:Lcom/google/android/gms/internal/ads/aei;

    iget v0, v0, Lcom/google/android/gms/internal/ads/aei;->a:I

    int-to-float v0, v0

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/aer;->g:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v6

    int-to-float v4, v4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/aer;->g:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v6

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_11

    move v0, v2

    .line 244
    :goto_7
    if-eqz v1, :cond_12

    .line 249
    :goto_8
    if-eqz v0, :cond_14

    .line 250
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->l:Lcom/google/android/gms/internal/ads/aei;

    iget v0, v0, Lcom/google/android/gms/internal/ads/aei;->b:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aer;->g:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aer;->l:Lcom/google/android/gms/internal/ads/aei;

    iget v1, v1, Lcom/google/android/gms/internal/ads/aei;->a:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aer;->g:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, v7

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aer;->g:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, v5

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aer;->g:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    const/16 v4, 0x67

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Not enough space to show ad. Needs "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " dp, but only has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " dp."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aer;->getVisibility()I

    move-result v0

    if-eq v0, v9, :cond_f

    .line 252
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/aer;->setVisibility(I)V

    .line 253
    :cond_f
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aer;->setMeasuredDimension(II)V

    goto/16 :goto_0

    :cond_10
    move v1, v3

    .line 239
    goto/16 :goto_6

    :cond_11
    move v0, v3

    .line 243
    goto :goto_7

    :cond_12
    move v0, v1

    .line 247
    goto :goto_8

    :cond_13
    move v0, v1

    .line 248
    goto :goto_8

    .line 254
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aer;->getVisibility()I

    move-result v0

    if-eq v0, v9, :cond_15

    .line 255
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/aer;->setVisibility(I)V

    .line 256
    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->l:Lcom/google/android/gms/internal/ads/aei;

    iget v0, v0, Lcom/google/android/gms/internal/ads/aei;->b:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aer;->l:Lcom/google/android/gms/internal/ads/aei;

    iget v1, v1, Lcom/google/android/gms/internal/ads/aei;->a:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aer;->setMeasuredDimension(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_16
    move v4, v0

    goto/16 :goto_5

    :cond_17
    move v6, v0

    goto/16 :goto_4

    :cond_18
    move v0, v1

    move v2, v3

    goto/16 :goto_2

    :cond_19
    move v0, v1

    goto/16 :goto_1

    .line 219
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onPause()V
    .locals 2

    .prologue
    .line 382
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/aex;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :goto_0
    return-void

    .line 384
    :catch_0
    move-exception v0

    .line 385
    const-string/jumbo v1, "Could not pause webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onResume()V
    .locals 2

    .prologue
    .line 387
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/aex;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v0

    .line 390
    const-string/jumbo v1, "Could not resume webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 149
    .line 150
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->b:Lcom/google/android/gms/internal/ads/aem;

    .line 151
    check-cast v0, Lcom/google/android/gms/internal/ads/aem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aem;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->b:Lcom/google/android/gms/internal/ads/aem;

    .line 153
    check-cast v0, Lcom/google/android/gms/internal/ads/aem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aem;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 154
    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->x:Lcom/google/android/gms/internal/ads/bj;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->x:Lcom/google/android/gms/internal/ads/bj;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/bj;->a(Landroid/view/MotionEvent;)V

    .line 157
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/aex;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 157
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->c:Lcom/google/android/gms/internal/ads/ctl;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->c:Lcom/google/android/gms/internal/ads/ctl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ctl;->a(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public final p()V
    .locals 3

    .prologue
    .line 117
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 118
    const-string/jumbo v1, "app_muted"

    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->h()Lcom/google/android/gms/internal/ads/vw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/vw;->b()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string/jumbo v1, "app_volume"

    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->h()Lcom/google/android/gms/internal/ads/vw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/vw;->a()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string/jumbo v1, "device_volume"

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/vw;->a(Landroid/content/Context;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string/jumbo v1, "volume"

    .line 124
    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/hj;->a(Lcom/google/android/gms/internal/ads/hk;Ljava/lang/String;Ljava/util/Map;)V

    .line 125
    return-void
.end method

.method public final q()Landroid/content/Context;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->a:Lcom/google/android/gms/internal/ads/aek;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aek;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized r()Lcom/google/android/gms/ads/internal/overlay/c;
    .locals 1

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->k:Lcom/google/android/gms/ads/internal/overlay/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized s()Lcom/google/android/gms/ads/internal/overlay/c;
    .locals 1

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->H:Lcom/google/android/gms/ads/internal/overlay/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 431
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->G:Ljava/lang/ref/WeakReference;

    .line 432
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/aex;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    return-void
.end method

.method public final declared-synchronized setRequestedOrientation(I)V
    .locals 2

    .prologue
    .line 332
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/aer;->q:I

    .line 333
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->k:Lcom/google/android/gms/ads/internal/overlay/c;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->k:Lcom/google/android/gms/ads/internal/overlay/c;

    iget v1, p0, Lcom/google/android/gms/internal/ads/aer;->q:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/c;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :cond_0
    monitor-exit p0

    return-void

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final stopLoading()V
    .locals 2

    .prologue
    .line 398
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/aex;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :goto_0
    return-void

    .line 400
    :catch_0
    move-exception v0

    .line 401
    const-string/jumbo v1, "Could not stop loading webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final declared-synchronized t()Lcom/google/android/gms/internal/ads/aei;
    .locals 1

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->l:Lcom/google/android/gms/internal/ads/aei;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->m:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic v()Lcom/google/android/gms/internal/ads/aef;
    .locals 1

    .prologue
    .line 522
    .line 523
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->b:Lcom/google/android/gms/internal/ads/aem;

    .line 524
    return-object v0
.end method

.method public final w()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->b:Lcom/google/android/gms/internal/ads/aem;

    return-object v0
.end method

.method public final declared-synchronized x()Z
    .locals 1

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aer;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final y()Lcom/google/android/gms/internal/ads/ctl;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->c:Lcom/google/android/gms/internal/ads/ctl;

    return-object v0
.end method

.method public final z()Lcom/google/android/gms/dynamic/a;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aer;->J:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/dynamic/a;

    return-object v0
.end method
