.class final Lcom/google/android/gms/internal/ads/adj;
.super Landroid/webkit/WebView;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/webkit/DownloadListener;
.implements Lcom/google/android/gms/internal/ads/act;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private A:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private B:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private C:Lcom/google/android/gms/internal/ads/bj;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private D:Lcom/google/android/gms/internal/ads/bi;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private E:Lcom/google/android/gms/internal/ads/dva;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private F:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private G:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private H:Lcom/google/android/gms/internal/ads/m;

.field private I:Lcom/google/android/gms/internal/ads/m;

.field private J:Lcom/google/android/gms/internal/ads/m;

.field private K:Lcom/google/android/gms/internal/ads/p;

.field private L:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private M:Lcom/google/android/gms/ads/internal/overlay/c;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private N:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private O:Lcom/google/android/gms/internal/ads/xo;

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:Ljava/util/Map;
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

.field private final U:Landroid/view/WindowManager;

.field private final V:Lcom/google/android/gms/internal/ads/dwi;

.field private final a:Lcom/google/android/gms/internal/ads/aek;

.field private final b:Lcom/google/android/gms/internal/ads/ctl;

.field private final c:Lcom/google/android/gms/internal/ads/yd;

.field private final d:Lcom/google/android/gms/ads/internal/i;

.field private final e:Lcom/google/android/gms/ads/internal/a;

.field private final f:Landroid/util/DisplayMetrics;

.field private final g:F

.field private final h:Lcom/google/android/gms/internal/ads/dvk;

.field private final i:Z

.field private j:Z

.field private k:Z

.field private l:Lcom/google/android/gms/internal/ads/acs;

.field private m:Lcom/google/android/gms/ads/internal/overlay/c;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private n:Lcom/google/android/gms/dynamic/a;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private o:Lcom/google/android/gms/internal/ads/aei;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private p:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private q:Z
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

.field private t:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private u:Ljava/lang/Boolean;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private v:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private w:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private x:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private y:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private z:Lcom/google/android/gms/internal/ads/adn;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/aek;Lcom/google/android/gms/internal/ads/aei;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ctl;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/dwi;Lcom/google/android/gms/internal/ads/dvk;Z)V
    .locals 6

    .prologue
    .line 3
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/adj;->j:Z

    .line 5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/adj;->k:Z

    .line 6
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/adj;->w:Z

    .line 7
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/adj;->x:Z

    .line 8
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/adj;->y:Ljava/lang/String;

    .line 9
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/adj;->P:I

    .line 10
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/adj;->Q:I

    .line 11
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/adj;->R:I

    .line 12
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/adj;->S:I

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/adj;->a:Lcom/google/android/gms/internal/ads/aek;

    .line 14
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/adj;->o:Lcom/google/android/gms/internal/ads/aei;

    .line 15
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/adj;->p:Ljava/lang/String;

    .line 16
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/adj;->s:Z

    .line 17
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/adj;->v:I

    .line 18
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/adj;->b:Lcom/google/android/gms/internal/ads/ctl;

    .line 19
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/adj;->c:Lcom/google/android/gms/internal/ads/yd;

    .line 20
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/adj;->d:Lcom/google/android/gms/ads/internal/i;

    .line 21
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->e:Lcom/google/android/gms/ads/internal/a;

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/adj;->U:Landroid/view/WindowManager;

    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adj;->U:Landroid/view/WindowManager;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ve;->a(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/adj;->f:Landroid/util/DisplayMetrics;

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adj;->f:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/google/android/gms/internal/ads/adj;->g:F

    .line 25
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->V:Lcom/google/android/gms/internal/ads/dwi;

    .line 26
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->h:Lcom/google/android/gms/internal/ads/dvk;

    .line 27
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/adj;->i:Z

    .line 28
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/adj;->setBackgroundColor(I)V

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 30
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 31
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 36
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 37
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 38
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 39
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 40
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    move-result-object v2

    iget-object v3, p7, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v1}, Lcom/google/android/gms/internal/ads/ve;->a(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V

    .line 41
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/vj;->a(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    .line 42
    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/ads/adj;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 43
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/adj;->S()V

    .line 44
    invoke-static {}, Lcom/google/android/gms/common/util/m;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ado;->a(Lcom/google/android/gms/internal/ads/act;)Lcom/google/android/gms/internal/ads/ado;

    move-result-object v1

    const-string/jumbo v2, "googleAdsJsInterface"

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/adj;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    :cond_1
    const-string/jumbo v1, "accessibility"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/adj;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 47
    const-string/jumbo v1, "accessibilityTraversal"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/adj;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 48
    new-instance v1, Lcom/google/android/gms/internal/ads/xo;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/adj;->a:Lcom/google/android/gms/internal/ads/aek;

    .line 49
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/aek;->a()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, p0, v3}, Lcom/google/android/gms/internal/ads/xo;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/adj;->O:Lcom/google/android/gms/internal/ads/xo;

    .line 51
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/adj;->X()V

    .line 52
    new-instance v1, Lcom/google/android/gms/internal/ads/p;

    new-instance v2, Lcom/google/android/gms/internal/ads/o;

    const/4 v3, 0x1

    const-string/jumbo v4, "make_wv"

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/adj;->p:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/o;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/p;-><init>(Lcom/google/android/gms/internal/ads/o;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/adj;->K:Lcom/google/android/gms/internal/ads/p;

    .line 53
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adj;->K:Lcom/google/android/gms/internal/ads/p;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/p;->a()Lcom/google/android/gms/internal/ads/o;

    move-result-object v1

    invoke-virtual {v1, p8}, Lcom/google/android/gms/internal/ads/o;->a(Lcom/google/android/gms/internal/ads/o;)V

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adj;->K:Lcom/google/android/gms/internal/ads/p;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/p;->a()Lcom/google/android/gms/internal/ads/o;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/j;->a(Lcom/google/android/gms/internal/ads/o;)Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/adj;->I:Lcom/google/android/gms/internal/ads/m;

    .line 55
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adj;->K:Lcom/google/android/gms/internal/ads/p;

    const-string/jumbo v2, "native:view_create"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/adj;->I:Lcom/google/android/gms/internal/ads/m;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/p;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/m;)V

    .line 56
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/adj;->J:Lcom/google/android/gms/internal/ads/m;

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/adj;->H:Lcom/google/android/gms/internal/ads/m;

    .line 58
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/vj;->b(Landroid/content/Context;)V

    .line 59
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ug;->e()V

    .line 60
    return-void

    .line 33
    :catch_0
    move-exception v2

    .line 34
    const-string/jumbo v3, "Unable to enable Javascript."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private final O()Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 68
    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->l:Lcom/google/android/gms/internal/ads/acs;

    .line 70
    check-cast v0, Lcom/google/android/gms/internal/ads/acs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/acs;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->l:Lcom/google/android/gms/internal/ads/acs;

    .line 72
    check-cast v0, Lcom/google/android/gms/internal/ads/acs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/acs;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v5

    .line 74
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->f:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adj;->f:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/xr;->b(Landroid/util/DisplayMetrics;I)I

    move-result v1

    .line 75
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->f:Landroid/util/DisplayMetrics;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/adj;->f:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/xr;->b(Landroid/util/DisplayMetrics;I)I

    move-result v2

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->a:Lcom/google/android/gms/internal/ads/aek;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aek;->a()Landroid/app/Activity;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-nez v3, :cond_5

    :cond_2
    move v4, v2

    move v3, v1

    .line 85
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/adj;->Q:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/adj;->P:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/adj;->R:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/adj;->S:I

    if-eq v0, v4, :cond_0

    .line 87
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/adj;->Q:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/ads/adj;->P:I

    if-eq v0, v2, :cond_6

    :cond_4
    move v7, v6

    .line 88
    :goto_2
    iput v1, p0, Lcom/google/android/gms/internal/ads/adj;->Q:I

    .line 89
    iput v2, p0, Lcom/google/android/gms/internal/ads/adj;->P:I

    .line 90
    iput v3, p0, Lcom/google/android/gms/internal/ads/adj;->R:I

    .line 91
    iput v4, p0, Lcom/google/android/gms/internal/ads/adj;->S:I

    .line 92
    new-instance v0, Lcom/google/android/gms/internal/ads/nt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/nt;-><init>(Lcom/google/android/gms/internal/ads/act;)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/adj;->f:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/adj;->U:Landroid/view/WindowManager;

    .line 93
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    .line 94
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/nt;->a(IIIIFI)V

    move v5, v7

    .line 95
    goto :goto_0

    .line 82
    :cond_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ve;->a(Landroid/app/Activity;)[I

    move-result-object v0

    .line 83
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/adj;->f:Landroid/util/DisplayMetrics;

    aget v4, v0, v5

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/xr;->b(Landroid/util/DisplayMetrics;I)I

    move-result v3

    .line 84
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/adj;->f:Landroid/util/DisplayMetrics;

    aget v0, v0, v6

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/xr;->b(Landroid/util/DisplayMetrics;I)I

    move-result v4

    goto :goto_1

    :cond_6
    move v7, v5

    .line 87
    goto :goto_2
.end method

.method private final declared-synchronized P()V
    .locals 2

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ug;->b()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->u:Ljava/lang/Boolean;

    .line 158
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->u:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 159
    :try_start_1
    const-string/jumbo v0, "(function(){})()"

    .line 160
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/adj;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 161
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/adj;->a(Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 164
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/adj;->a(Ljava/lang/Boolean;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized Q()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->u:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final R()V
    .locals 5

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->K:Lcom/google/android/gms/internal/ads/p;

    .line 211
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p;->a()Lcom/google/android/gms/internal/ads/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adj;->I:Lcom/google/android/gms/internal/ads/m;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "aeh2"

    aput-object v4, v2, v3

    .line 212
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/j;->a(Lcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/internal/ads/m;[Ljava/lang/String;)Z

    .line 213
    return-void
.end method

.method private final declared-synchronized S()V
    .locals 2

    .prologue
    .line 451
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adj;->s:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->o:Lcom/google/android/gms/internal/ads/aei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aei;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    :cond_0
    const-string/jumbo v0, "Enabling hardware acceleration on an overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 453
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/adj;->U()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    :goto_0
    monitor-exit p0

    return-void

    .line 454
    :cond_1
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_2

    .line 455
    const-string/jumbo v0, "Disabling hardware acceleration on an AdView."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 456
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/adj;->T()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 457
    :cond_2
    :try_start_2
    const-string/jumbo v0, "Enabling hardware acceleration on an AdView."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 458
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/adj;->U()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private final declared-synchronized T()V
    .locals 2

    .prologue
    .line 460
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adj;->t:Z

    if-nez v0, :cond_0

    .line 461
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    .line 462
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 463
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/adj;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    monitor-exit p0

    return-void

    .line 460
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized U()V
    .locals 2

    .prologue
    .line 465
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adj;->t:Z

    if-eqz v0, :cond_0

    .line 466
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    .line 467
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 468
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/adj;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    monitor-exit p0

    return-void

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized V()V
    .locals 1

    .prologue
    .line 502
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adj;->N:Z

    if-nez v0, :cond_0

    .line 503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/adj;->N:Z

    .line 504
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ug;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    :cond_0
    monitor-exit p0

    return-void

    .line 502
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized W()V
    .locals 2

    .prologue
    .line 558
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->T:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->T:Ljava/util/Map;

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

    .line 560
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abt;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 562
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->T:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 563
    monitor-exit p0

    return-void
.end method

.method private final X()V
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->K:Lcom/google/android/gms/internal/ads/p;

    if-nez v0, :cond_1

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->K:Lcom/google/android/gms/internal/ads/p;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p;->a()Lcom/google/android/gms/internal/ads/o;

    move-result-object v0

    .line 603
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ug;->a()Lcom/google/android/gms/internal/ads/e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 604
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ug;->a()Lcom/google/android/gms/internal/ads/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/e;->a(Lcom/google/android/gms/internal/ads/o;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/adj;)I
    .locals 1

    .prologue
    .line 675
    iget v0, p0, Lcom/google/android/gms/internal/ads/adj;->G:I

    return v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/adj;I)I
    .locals 0

    .prologue
    .line 676
    iput p1, p0, Lcom/google/android/gms/internal/ads/adj;->G:I

    return p1
.end method

.method static a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aei;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ctl;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/dwi;Lcom/google/android/gms/internal/ads/dvk;Z)Lcom/google/android/gms/internal/ads/adj;
    .locals 14

    .prologue
    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/aek;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/aek;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/adj;

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/adj;-><init>(Lcom/google/android/gms/internal/ads/aek;Lcom/google/android/gms/internal/ads/aei;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ctl;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/dwi;Lcom/google/android/gms/internal/ads/dvk;Z)V

    return-object v0
.end method

.method private final a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 166
    monitor-enter p0

    .line 167
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/adj;->u:Ljava/lang/Boolean;

    .line 168
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ug;->a(Ljava/lang/Boolean;)V

    .line 170
    return-void

    .line 168
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final declared-synchronized a(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/adj;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :goto_0
    monitor-exit p0

    return-void

    .line 145
    :cond_0
    :try_start_1
    const-string/jumbo v0, "#004 The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static final synthetic a(ZILcom/google/android/gms/internal/ads/dwv$n$a;)V
    .locals 2

    .prologue
    .line 668
    invoke-static {}, Lcom/google/android/gms/internal/ads/dwv$f;->b()Lcom/google/android/gms/internal/ads/dwv$f$a;

    move-result-object v0

    .line 669
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dwv$f$a;->a()Z

    move-result v1

    if-eq v1, p0, :cond_0

    .line 670
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/dwv$f$a;->a(Z)Lcom/google/android/gms/internal/ads/dwv$f$a;

    .line 672
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dwv$f$a;->a(I)Lcom/google/android/gms/internal/ads/dwv$f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dwv$f;

    .line 673
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/dwv$n$a;->a(Lcom/google/android/gms/internal/ads/dwv$f;)Lcom/google/android/gms/internal/ads/dwv$n$a;

    .line 674
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/adj;)V
    .locals 0

    .prologue
    .line 677
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method private final declared-synchronized b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/adj;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :goto_0
    monitor-exit p0

    return-void

    .line 112
    :cond_0
    :try_start_1
    const-string/jumbo v0, "#004 The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :goto_0
    monitor-exit p0

    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v1

    const-string/jumbo v2, "AdWebViewImpl.loadUrlUnsafe"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/ug;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 127
    const-string/jumbo v1, "Could not call loadUrl. "

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 125
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private final e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 147
    invoke-static {}, Lcom/google/android/gms/common/util/m;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/adj;->Q()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/adj;->P()V

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/adj;->Q()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/adj;->a(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_1
    const-string/jumbo v1, "javascript:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/adj;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 153
    :cond_3
    const-string/jumbo v1, "javascript:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/adj;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private final g(Z)V
    .locals 3

    .prologue
    .line 631
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 632
    const-string/jumbo v2, "isVisible"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    const-string/jumbo v0, "onAdVisibilityChanged"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/adj;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 634
    return-void

    .line 632
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized A()Z
    .locals 1

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adj;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized B()Z
    .locals 1

    .prologue
    .line 506
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adj;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized C()V
    .locals 2

    .prologue
    .line 498
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "Destroying WebView!"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 499
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/adj;->V()V

    .line 500
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/adk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/adk;-><init>(Lcom/google/android/gms/internal/ads/adj;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    monitor-exit p0

    return-void

    .line 498
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized D()Z
    .locals 1

    .prologue
    .line 549
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adj;->w:Z
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
    .line 595
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/adj;->F:I
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
    .line 394
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->O:Lcom/google/android/gms/internal/ads/xo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xo;->a()V

    .line 395
    return-void
.end method

.method public final G()V
    .locals 3

    .prologue
    .line 518
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->J:Lcom/google/android/gms/internal/ads/m;

    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->K:Lcom/google/android/gms/internal/ads/p;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p;->a()Lcom/google/android/gms/internal/ads/o;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j;->a(Lcom/google/android/gms/internal/ads/o;)Lcom/google/android/gms/internal/ads/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->J:Lcom/google/android/gms/internal/ads/m;

    .line 520
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->K:Lcom/google/android/gms/internal/ads/p;

    const-string/jumbo v1, "native:view_load"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/adj;->J:Lcom/google/android/gms/internal/ads/m;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/p;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/m;)V

    .line 521
    :cond_0
    return-void
.end method

.method public final declared-synchronized H()Lcom/google/android/gms/internal/ads/bj;
    .locals 1

    .prologue
    .line 588
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->C:Lcom/google/android/gms/internal/ads/bj;
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
    .line 606
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/adj;->setBackgroundColor(I)V

    .line 607
    return-void
.end method

.method public final J()V
    .locals 1

    .prologue
    .line 536
    const-string/jumbo v0, "Cannot add text view to inner AdWebView"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method public final declared-synchronized K()Lcom/google/android/gms/internal/ads/dva;
    .locals 1

    .prologue
    .line 580
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->E:Lcom/google/android/gms/internal/ads/dva;
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
    .line 648
    const/4 v0, 0x0

    return v0
.end method

.method public final M()Lcom/google/android/gms/internal/ads/dvk;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->h:Lcom/google/android/gms/internal/ads/dvk;

    return-object v0
.end method

.method public final N()Z
    .locals 2

    .prologue
    .line 662
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->df:Lcom/google/android/gms/internal/ads/ect;

    .line 663
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 664
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->h:Lcom/google/android/gms/internal/ads/dvk;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adj;->i:Z

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
    .line 568
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->T:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 569
    const/4 v0, 0x0

    .line 570
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->T:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/abt;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 568
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 550
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/adj;->x:Z

    .line 551
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->d:Lcom/google/android/gms/ads/internal/i;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->d:Lcom/google/android/gms/ads/internal/i;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/i;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    :cond_0
    monitor-exit p0

    return-void

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(I)V
    .locals 5

    .prologue
    .line 197
    if-nez p1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->K:Lcom/google/android/gms/internal/ads/p;

    .line 200
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p;->a()Lcom/google/android/gms/internal/ads/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adj;->I:Lcom/google/android/gms/internal/ads/m;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "aebb2"

    aput-object v4, v2, v3

    .line 201
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/j;->a(Lcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/internal/ads/m;[Ljava/lang/String;)Z

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/adj;->R()V

    .line 203
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->K:Lcom/google/android/gms/internal/ads/p;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p;->a()Lcom/google/android/gms/internal/ads/o;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->K:Lcom/google/android/gms/internal/ads/p;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p;->a()Lcom/google/android/gms/internal/ads/o;

    move-result-object v0

    const-string/jumbo v1, "close_type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 206
    const-string/jumbo v1, "closetype"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string/jumbo v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/adj;->c:Lcom/google/android/gms/internal/ads/yd;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string/jumbo v1, "onhide"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/adj;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 209
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->a:Lcom/google/android/gms/internal/ads/aek;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/aek;->setBaseContext(Landroid/content/Context;)V

    .line 439
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->O:Lcom/google/android/gms/internal/ads/xo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adj;->a:Lcom/google/android/gms/internal/ads/aek;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aek;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/xo;->a(Landroid/app/Activity;)V

    .line 440
    return-void
.end method

.method public final a(Landroid/view/ViewGroup;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 649
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->N()Z

    move-result v0

    if-nez v0, :cond_0

    .line 650
    const-string/jumbo v0, "AR ad is not enabled or the ad from the server is not an AR ad."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 660
    :goto_0
    return-void

    .line 652
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 653
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez p0, :cond_1

    throw v1

    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 654
    :cond_2
    const-string/jumbo v0, "Initializing ArWebView object."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->h:Lcom/google/android/gms/internal/ads/dvk;

    if-nez p0, :cond_3

    throw v1

    :cond_3
    invoke-interface {v0, p2, p0}, Lcom/google/android/gms/internal/ads/dvk;->a(Landroid/app/Activity;Landroid/webkit/WebView;)V

    .line 656
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->h:Lcom/google/android/gms/internal/ads/dvk;

    invoke-interface {v0, p3, p4}, Lcom/google/android/gms/internal/ads/dvk;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    if-eqz p1, :cond_4

    .line 658
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->h:Lcom/google/android/gms/internal/ads/dvk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dvk;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 659
    :cond_4
    const-string/jumbo v0, "The FrameLayout object cannot be null."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/ads/internal/overlay/c;)V
    .locals 1

    .prologue
    .line 377
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/adj;->m:Lcom/google/android/gms/ads/internal/overlay/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    monitor-exit p0

    return-void

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/ads/internal/overlay/d;)V
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->l:Lcom/google/android/gms/internal/ads/acs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/acs;->a(Lcom/google/android/gms/ads/internal/overlay/d;)V

    .line 619
    return-void
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/dynamic/a;)V
    .locals 1

    .prologue
    .line 379
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/adj;->n:Lcom/google/android/gms/dynamic/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    monitor-exit p0

    return-void

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/adn;)V
    .locals 1

    .prologue
    .line 590
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->z:Lcom/google/android/gms/internal/ads/adn;

    if-eqz v0, :cond_0

    .line 591
    const-string/jumbo v0, "Attempt to create multiple AdWebViewVideoControllers."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    :goto_0
    monitor-exit p0

    return-void

    .line 593
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/adj;->z:Lcom/google/android/gms/internal/ads/adn;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 590
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/aei;)V
    .locals 1

    .prologue
    .line 383
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/adj;->o:Lcom/google/android/gms/internal/ads/aei;

    .line 384
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    monitor-exit p0

    return-void

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/bi;)V
    .locals 1

    .prologue
    .line 576
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/adj;->D:Lcom/google/android/gms/internal/ads/bi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    monitor-exit p0

    return-void

    .line 576
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/bj;)V
    .locals 1

    .prologue
    .line 586
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/adj;->C:Lcom/google/android/gms/internal/ads/bj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    monitor-exit p0

    return-void

    .line 586
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dtt;)V
    .locals 1

    .prologue
    .line 626
    monitor-enter p0

    .line 627
    :try_start_0
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/dtt;->j:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/adj;->A:Z

    .line 628
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/dtt;->j:Z

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/adj;->g(Z)V

    .line 630
    return-void

    .line 628
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
    .line 578
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/adj;->E:Lcom/google/android/gms/internal/ads/dva;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    monitor-exit p0

    return-void

    .line 578
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
    .line 641
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->l:Lcom/google/android/gms/internal/ads/acs;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->l:Lcom/google/android/gms/internal/ads/acs;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/lang/String;Lcom/google/android/gms/common/util/n;)V

    .line 643
    :cond_0
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/abt;)V
    .locals 1

    .prologue
    .line 564
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->T:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 565
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->T:Ljava/util/Map;

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->T:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    monitor-exit p0

    return-void

    .line 564
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
    .line 635
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->l:Lcom/google/android/gms/internal/ads/acs;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->l:Lcom/google/android/gms/internal/ads/acs;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/acs;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 637
    :cond_0
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 139
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

    .line 140
    invoke-super/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :goto_0
    monitor-exit p0

    return-void

    .line 141
    :cond_0
    :try_start_1
    const-string/jumbo v0, "#004 The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 96
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/ve;->a(Ljava/util/Map;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 101
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/adj;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 102
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    const-string/jumbo v0, "Could not convert parameters to JSON."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 172
    if-nez p2, :cond_0

    .line 173
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 174
    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/adj;->e(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 608
    .line 609
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->l:Lcom/google/android/gms/internal/ads/acs;

    .line 610
    check-cast v0, Lcom/google/android/gms/internal/ads/acs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/acs;->a(Z)V

    .line 611
    return-void
.end method

.method public final a(ZILjava/lang/String;)V
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->l:Lcom/google/android/gms/internal/ads/acs;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/acs;->a(ZILjava/lang/String;)V

    .line 623
    return-void
.end method

.method public final a(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->l:Lcom/google/android/gms/internal/ads/acs;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/acs;->a(ZILjava/lang/String;Ljava/lang/String;)V

    .line 625
    return-void
.end method

.method public final a(ZJ)V
    .locals 4

    .prologue
    .line 232
    new-instance v1, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 233
    const-string/jumbo v2, "success"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string/jumbo v0, "duration"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string/jumbo v0, "onCacheAccessComplete"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/adj;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 236
    return-void

    .line 233
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public final a(ZI)Z
    .locals 2

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->destroy()V

    .line 645
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->V:Lcom/google/android/gms/internal/ads/dwi;

    new-instance v1, Lcom/google/android/gms/internal/ads/adh;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/adh;-><init>(ZI)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwl;)V

    .line 646
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->V:Lcom/google/android/gms/internal/ads/dwi;

    sget-object v1, Lcom/google/android/gms/internal/ads/dwk$a$a;->Q:Lcom/google/android/gms/internal/ads/dwk$a$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwk$a$a;)V

    .line 647
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized b()V
    .locals 1

    .prologue
    .line 554
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/adj;->x:Z

    .line 555
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->d:Lcom/google/android/gms/ads/internal/i;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->d:Lcom/google/android/gms/ads/internal/i;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/i;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    :cond_0
    monitor-exit p0

    return-void

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/google/android/gms/ads/internal/overlay/c;)V
    .locals 1

    .prologue
    .line 381
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/adj;->M:Lcom/google/android/gms/ads/internal/overlay/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    monitor-exit p0

    return-void

    .line 381
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
    .line 638
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->l:Lcom/google/android/gms/internal/ads/acs;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->l:Lcom/google/android/gms/internal/ads/acs;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/acs;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 640
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 179
    if-nez p2, :cond_0

    .line 180
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 181
    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    const-string/jumbo v2, "(window.AFMA_ReceiveMessage || function() {})(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string/jumbo v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string/jumbo v2, "Dispatching AFMA event: "

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/adj;->e(Ljava/lang/String;)V

    .line 191
    return-void

    .line 189
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final declared-synchronized b(Z)V
    .locals 2

    .prologue
    .line 386
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adj;->s:Z

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    .line 387
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/adj;->s:Z

    .line 388
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/adj;->S()V

    .line 389
    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->G:Lcom/google/android/gms/internal/ads/ect;

    .line 390
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 391
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->o:Lcom/google/android/gms/internal/ads/aei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aei;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 392
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/nt;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/nt;-><init>(Lcom/google/android/gms/internal/ads/act;)V

    if-eqz p1, :cond_3

    const-string/jumbo v0, "expanded"

    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/nt;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    :cond_1
    monitor-exit p0

    return-void

    .line 386
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 392
    :cond_3
    :try_start_1
    const-string/jumbo v0, "default"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(ZI)V
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->l:Lcom/google/android/gms/internal/ads/acs;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/acs;->a(ZI)V

    .line 621
    return-void
.end method

.method public final c()Lcom/google/android/gms/internal/ads/zw;
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized c(Z)V
    .locals 2

    .prologue
    .line 441
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->m:Lcom/google/android/gms/ads/internal/overlay/c;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->m:Lcom/google/android/gms/ads/internal/overlay/c;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adj;->l:Lcom/google/android/gms/internal/ads/acs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/acs;->b()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/ads/internal/overlay/c;->a(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    :goto_0
    monitor-exit p0

    return-void

    .line 443
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/adj;->q:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Lcom/google/android/gms/internal/ads/adn;
    .locals 1

    .prologue
    .line 589
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->z:Lcom/google/android/gms/internal/ads/adn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/adj;->e(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public final declared-synchronized d(Z)V
    .locals 1

    .prologue
    .line 547
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/adj;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    monitor-exit p0

    return-void

    .line 547
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized destroy()V
    .locals 1

    .prologue
    .line 470
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/adj;->X()V

    .line 471
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->O:Lcom/google/android/gms/internal/ads/xo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xo;->b()V

    .line 472
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->m:Lcom/google/android/gms/ads/internal/overlay/c;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->m:Lcom/google/android/gms/ads/internal/overlay/c;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/c;->a()V

    .line 474
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->m:Lcom/google/android/gms/ads/internal/overlay/c;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/c;->k()V

    .line 475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->m:Lcom/google/android/gms/ads/internal/overlay/c;

    .line 476
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->n:Lcom/google/android/gms/dynamic/a;

    .line 477
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->l:Lcom/google/android/gms/internal/ads/acs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/acs;->k()V

    .line 478
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adj;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 486
    :goto_0
    monitor-exit p0

    return-void

    .line 480
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->y()Lcom/google/android/gms/internal/ads/abu;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/abu;->a(Lcom/google/android/gms/internal/ads/aad;)Z

    .line 481
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/adj;->W()V

    .line 482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/adj;->r:Z

    .line 483
    const-string/jumbo v0, "Initiating WebView self destruct sequence in 3..."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 484
    const-string/jumbo v0, "Loading blank page in WebView, 2..."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 485
    const-string/jumbo v0, "about:blank"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/adj;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/m;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->I:Lcom/google/android/gms/internal/ads/m;

    return-object v0
.end method

.method public final declared-synchronized e(Z)V
    .locals 2

    .prologue
    .line 596
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/adj;->F:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/adj;->F:I

    .line 597
    iget v0, p0, Lcom/google/android/gms/internal/ads/adj;->F:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->m:Lcom/google/android/gms/ads/internal/overlay/c;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->m:Lcom/google/android/gms/ads/internal/overlay/c;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/c;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    :cond_0
    monitor-exit p0

    return-void

    .line 596
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    const-string/jumbo v0, "#004 The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->f(Ljava/lang/String;)V

    .line 105
    if-eqz p2, :cond_0

    .line 106
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 108
    :cond_1
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->a:Lcom/google/android/gms/internal/ads/aek;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aek;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final f(Z)V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->l:Lcom/google/android/gms/internal/ads/acs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/acs;->b(Z)V

    .line 539
    return-void
.end method

.method protected final finalize()V
    .locals 1

    .prologue
    .line 487
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 488
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adj;->r:Z

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->l:Lcom/google/android/gms/internal/ads/acs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/acs;->k()V

    .line 490
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->y()Lcom/google/android/gms/internal/ads/abu;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/abu;->a(Lcom/google/android/gms/internal/ads/aad;)Z

    .line 491
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/adj;->W()V

    .line 492
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/adj;->V()V

    .line 493
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 494
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 495
    return-void

    .line 493
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 496
    :catchall_1
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 497
    throw v0
.end method

.method public final g()Lcom/google/android/gms/ads/internal/a;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->e:Lcom/google/android/gms/ads/internal/a;

    return-object v0
.end method

.method public final declared-synchronized getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 571
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->y:Ljava/lang/String;
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
    .line 66
    return-object p0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .locals 0

    .prologue
    .line 65
    return-object p0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->r()Lcom/google/android/gms/ads/internal/overlay/c;

    move-result-object v0

    .line 613
    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/c;->p()V

    .line 615
    :cond_0
    return-void
.end method

.method public final i()Lcom/google/android/gms/internal/ads/p;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->K:Lcom/google/android/gms/internal/ads/p;

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/internal/ads/yd;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->c:Lcom/google/android/gms/internal/ads/yd;

    return-object v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public final declared-synchronized loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :goto_0
    monitor-exit p0

    return-void

    .line 131
    :cond_0
    :try_start_1
    const-string/jumbo v0, "#004 The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :goto_0
    monitor-exit p0

    return-void

    .line 135
    :cond_0
    :try_start_1
    const-string/jumbo v0, "#004 The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized loadUrl(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->B()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 115
    :try_start_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :goto_0
    monitor-exit p0

    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v1

    const-string/jumbo v2, "AdWebViewImpl.loadUrl"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/ug;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 119
    const-string/jumbo v1, "Could not call loadUrl. "

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 121
    :cond_0
    :try_start_3
    const-string/jumbo v0, "#004 The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 117
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public final declared-synchronized m()V
    .locals 1

    .prologue
    .line 573
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->D:Lcom/google/android/gms/internal/ads/bi;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->D:Lcom/google/android/gms/internal/ads/bi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bi;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    :cond_0
    monitor-exit p0

    return-void

    .line 573
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final n()V
    .locals 3

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/adj;->R()V

    .line 193
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 194
    const-string/jumbo v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/adj;->c:Lcom/google/android/gms/internal/ads/yd;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string/jumbo v1, "onhide"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/adj;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 196
    return-void
.end method

.method public final o()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 214
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->H:Lcom/google/android/gms/internal/ads/m;

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->K:Lcom/google/android/gms/internal/ads/p;

    .line 216
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p;->a()Lcom/google/android/gms/internal/ads/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adj;->I:Lcom/google/android/gms/internal/ads/m;

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "aes2"

    aput-object v4, v2, v3

    .line 217
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/j;->a(Lcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/internal/ads/m;[Ljava/lang/String;)Z

    .line 218
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->K:Lcom/google/android/gms/internal/ads/p;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p;->a()Lcom/google/android/gms/internal/ads/o;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j;->a(Lcom/google/android/gms/internal/ads/o;)Lcom/google/android/gms/internal/ads/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->H:Lcom/google/android/gms/internal/ads/m;

    .line 219
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->K:Lcom/google/android/gms/internal/ads/p;

    const-string/jumbo v1, "native:view_show"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/adj;->H:Lcom/google/android/gms/internal/ads/m;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/p;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/m;)V

    .line 220
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 221
    const-string/jumbo v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/adj;->c:Lcom/google/android/gms/internal/ads/yd;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string/jumbo v1, "onshow"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/adj;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 223
    return-void
.end method

.method protected final declared-synchronized onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 396
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 397
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->O:Lcom/google/android/gms/internal/ads/xo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xo;->c()V

    .line 399
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/adj;->A:Z

    .line 401
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->l:Lcom/google/android/gms/internal/ads/acs;

    .line 402
    check-cast v0, Lcom/google/android/gms/internal/ads/acs;

    if-eqz v0, :cond_2

    .line 403
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->l:Lcom/google/android/gms/internal/ads/acs;

    .line 404
    check-cast v0, Lcom/google/android/gms/internal/ads/acs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/acs;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 406
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adj;->B:Z

    if-nez v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->l:Lcom/google/android/gms/internal/ads/acs;

    .line 409
    check-cast v0, Lcom/google/android/gms/internal/ads/acs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/acs;->e()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 411
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->l:Lcom/google/android/gms/internal/ads/acs;

    .line 412
    check-cast v0, Lcom/google/android/gms/internal/ads/acs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/acs;->f()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/adj;->B:Z

    .line 414
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/adj;->O()Z

    move v0, v1

    .line 415
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/adj;->g(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    monitor-exit p0

    return-void

    .line 396
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

    .line 417
    monitor-enter p0

    .line 418
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->O:Lcom/google/android/gms/internal/ads/xo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xo;->d()V

    .line 420
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 421
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adj;->B:Z

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->l:Lcom/google/android/gms/internal/ads/acs;

    .line 423
    check-cast v0, Lcom/google/android/gms/internal/ads/acs;

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->l:Lcom/google/android/gms/internal/ads/acs;

    .line 425
    check-cast v0, Lcom/google/android/gms/internal/ads/acs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/acs;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 427
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->l:Lcom/google/android/gms/internal/ads/acs;

    .line 430
    check-cast v0, Lcom/google/android/gms/internal/ads/acs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/acs;->e()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 432
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->l:Lcom/google/android/gms/internal/ads/acs;

    .line 433
    check-cast v0, Lcom/google/android/gms/internal/ads/acs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/acs;->f()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/adj;->B:Z

    .line 435
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/adj;->g(Z)V

    .line 437
    return-void

    .line 435
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
    .line 247
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ve;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return-void

    .line 252
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
    .line 507
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_2

    .line 510
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 511
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    :cond_2
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 515
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->l:Lcom/google/android/gms/internal/ads/acs;

    .line 516
    check-cast v0, Lcom/google/android/gms/internal/ads/acs;

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 268
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 269
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 271
    cmpl-float v2, v0, v4

    if-lez v2, :cond_0

    .line 272
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/adj;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    .line 273
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/adj;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    cmpl-float v0, v1, v4

    if-lez v0, :cond_2

    .line 274
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/adj;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    cmpg-float v0, v1, v4

    if-gez v0, :cond_4

    .line 275
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/adj;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 276
    :cond_3
    const/4 v0, 0x0

    .line 277
    :goto_0
    return v0

    :cond_4
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onGlobalLayout()V
    .locals 2

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/adj;->O()Z

    move-result v0

    .line 373
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->r()Lcom/google/android/gms/ads/internal/overlay/c;

    move-result-object v1

    .line 374
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/c;->o()V

    .line 376
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

    const/high16 v8, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 278
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/adj;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 281
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adj;->s:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->o:Lcom/google/android/gms/internal/ads/aei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aei;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 282
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 284
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->o:Lcom/google/android/gms/internal/ads/aei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aei;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 285
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    goto :goto_0

    .line 287
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->o:Lcom/google/android/gms/internal/ads/aei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aei;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 288
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bA:Lcom/google/android/gms/internal/ads/ect;

    .line 289
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 290
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 291
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    goto :goto_0

    .line 294
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->d()Lcom/google/android/gms/internal/ads/adn;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_1b

    .line 296
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/adn;->i()F

    move-result v0

    .line 297
    :goto_1
    cmpl-float v1, v0, v1

    if-nez v1, :cond_6

    .line 298
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    goto :goto_0

    .line 300
    :cond_6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 301
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 302
    int-to-float v1, v4

    mul-float/2addr v1, v0

    float-to-int v3, v1

    .line 303
    int-to-float v1, v5

    div-float/2addr v1, v0

    float-to-int v1, v1

    .line 304
    if-nez v4, :cond_7

    if-eqz v1, :cond_7

    .line 306
    int-to-float v2, v1

    mul-float/2addr v0, v2

    float-to-int v2, v0

    move v0, v1

    move v4, v1

    .line 310
    :goto_2
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 311
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 312
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/adj;->setMeasuredDimension(II)V

    goto :goto_0

    .line 307
    :cond_7
    if-nez v5, :cond_1a

    if-eqz v3, :cond_1a

    .line 309
    int-to-float v1, v3

    div-float v0, v1, v0

    float-to-int v0, v0

    move v2, v3

    move v5, v3

    goto :goto_2

    .line 314
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->o:Lcom/google/android/gms/internal/ads/aei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aei;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 315
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bC:Lcom/google/android/gms/internal/ads/ect;

    .line 316
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 317
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/google/android/gms/common/util/m;->d()Z

    move-result v0

    if-nez v0, :cond_a

    .line 318
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    goto/16 :goto_0

    .line 320
    :cond_a
    const-string/jumbo v0, "/contentHeight"

    .line 321
    new-instance v1, Lcom/google/android/gms/internal/ads/adl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/adl;-><init>(Lcom/google/android/gms/internal/ads/adj;)V

    .line 322
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/adj;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 323
    const-string/jumbo v0, "(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = \'gmsg://mobileads.google.com/contentHeight?\';  url += \'height=\' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById(\'afma-notify-fluid\');    if (!frame) {      frame = document.createElement(\'IFRAME\');      frame.id = \'afma-notify-fluid\';      frame.style.display = \'none\';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();"

    .line 324
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/adj;->e(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->f:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 326
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 327
    iget v2, p0, Lcom/google/android/gms/internal/ads/adj;->G:I

    packed-switch v2, :pswitch_data_0

    .line 330
    iget v2, p0, Lcom/google/android/gms/internal/ads/adj;->G:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 331
    :goto_3
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/adj;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 328
    :pswitch_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_3

    .line 333
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->o:Lcom/google/android/gms/internal/ads/aei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aei;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 334
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->f:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adj;->f:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/adj;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 336
    :cond_c
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 337
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 338
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 339
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 340
    const v0, 0x7fffffff

    .line 341
    if-eq v1, v8, :cond_d

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v1, v6, :cond_19

    :cond_d
    move v6, v7

    .line 343
    :goto_4
    const v0, 0x7fffffff

    .line 344
    if-eq v4, v8, :cond_e

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v4, v1, :cond_18

    :cond_e
    move v4, v5

    .line 347
    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->o:Lcom/google/android/gms/internal/ads/aei;

    iget v0, v0, Lcom/google/android/gms/internal/ads/aei;->b:I

    if-gt v0, v6, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->o:Lcom/google/android/gms/internal/ads/aei;

    iget v0, v0, Lcom/google/android/gms/internal/ads/aei;->a:I

    if-le v0, v4, :cond_11

    :cond_f
    move v1, v2

    .line 348
    :goto_6
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cs:Lcom/google/android/gms/internal/ads/ect;

    .line 349
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 350
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 351
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->o:Lcom/google/android/gms/internal/ads/aei;

    iget v0, v0, Lcom/google/android/gms/internal/ads/aei;->b:I

    int-to-float v0, v0

    iget v8, p0, Lcom/google/android/gms/internal/ads/adj;->g:F

    div-float/2addr v0, v8

    int-to-float v6, v6

    iget v8, p0, Lcom/google/android/gms/internal/ads/adj;->g:F

    div-float/2addr v6, v8

    cmpl-float v0, v0, v6

    if-gtz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->o:Lcom/google/android/gms/internal/ads/aei;

    iget v0, v0, Lcom/google/android/gms/internal/ads/aei;->a:I

    int-to-float v0, v0

    iget v6, p0, Lcom/google/android/gms/internal/ads/adj;->g:F

    div-float/2addr v0, v6

    int-to-float v4, v4

    iget v6, p0, Lcom/google/android/gms/internal/ads/adj;->g:F

    div-float/2addr v4, v6

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_12

    move v0, v2

    .line 352
    :goto_7
    if-eqz v1, :cond_13

    .line 357
    :goto_8
    if-eqz v0, :cond_15

    .line 358
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->o:Lcom/google/android/gms/internal/ads/aei;

    iget v0, v0, Lcom/google/android/gms/internal/ads/aei;->b:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/adj;->g:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adj;->o:Lcom/google/android/gms/internal/ads/aei;

    iget v1, v1, Lcom/google/android/gms/internal/ads/aei;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/adj;->g:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, v7

    iget v3, p0, Lcom/google/android/gms/internal/ads/adj;->g:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, v5

    iget v4, p0, Lcom/google/android/gms/internal/ads/adj;->g:F

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

    .line 359
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->getVisibility()I

    move-result v0

    if-eq v0, v9, :cond_10

    .line 360
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/adj;->setVisibility(I)V

    .line 361
    :cond_10
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/adj;->setMeasuredDimension(II)V

    .line 362
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adj;->j:Z

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->V:Lcom/google/android/gms/internal/ads/dwi;

    sget-object v1, Lcom/google/android/gms/internal/ads/dwk$a$a;->O:Lcom/google/android/gms/internal/ads/dwk$a$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwk$a$a;)V

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/adj;->j:Z

    goto/16 :goto_0

    :cond_11
    move v1, v3

    .line 347
    goto/16 :goto_6

    :cond_12
    move v0, v3

    .line 351
    goto/16 :goto_7

    :cond_13
    move v0, v1

    .line 355
    goto/16 :goto_8

    :cond_14
    move v0, v1

    .line 356
    goto/16 :goto_8

    .line 365
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->getVisibility()I

    move-result v0

    if-eq v0, v9, :cond_16

    .line 366
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/adj;->setVisibility(I)V

    .line 367
    :cond_16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adj;->k:Z

    if-nez v0, :cond_17

    .line 368
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->V:Lcom/google/android/gms/internal/ads/dwi;

    sget-object v1, Lcom/google/android/gms/internal/ads/dwk$a$a;->P:Lcom/google/android/gms/internal/ads/dwk$a$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwk$a$a;)V

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/adj;->k:Z

    .line 370
    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->o:Lcom/google/android/gms/internal/ads/aei;

    iget v0, v0, Lcom/google/android/gms/internal/ads/aei;->b:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adj;->o:Lcom/google/android/gms/internal/ads/aei;

    iget v1, v1, Lcom/google/android/gms/internal/ads/aei;->a:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/adj;->setMeasuredDimension(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_18
    move v4, v0

    goto/16 :goto_5

    :cond_19
    move v6, v0

    goto/16 :goto_4

    :cond_1a
    move v0, v1

    move v2, v3

    goto/16 :goto_2

    :cond_1b
    move v0, v1

    goto/16 :goto_1

    .line 327
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onPause()V
    .locals 2

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    :goto_0
    return-void

    .line 524
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 526
    :catch_0
    move-exception v0

    .line 527
    const-string/jumbo v1, "Could not pause webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onResume()V
    .locals 2

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    :goto_0
    return-void

    .line 531
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    const-string/jumbo v1, "Could not resume webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 254
    .line 255
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->l:Lcom/google/android/gms/internal/ads/acs;

    .line 256
    check-cast v0, Lcom/google/android/gms/internal/ads/acs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/acs;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->l:Lcom/google/android/gms/internal/ads/acs;

    .line 258
    check-cast v0, Lcom/google/android/gms/internal/ads/acs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/acs;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 259
    monitor-enter p0

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->C:Lcom/google/android/gms/internal/ads/bj;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->C:Lcom/google/android/gms/internal/ads/bj;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/bj;->a(Landroid/view/MotionEvent;)V

    .line 262
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->B()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 266
    const/4 v0, 0x0

    .line 267
    :goto_1
    return v0

    .line 262
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->b:Lcom/google/android/gms/internal/ads/ctl;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->b:Lcom/google/android/gms/internal/ads/ctl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ctl;->a(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 267
    :cond_3
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public final p()V
    .locals 3

    .prologue
    .line 224
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 225
    const-string/jumbo v1, "app_muted"

    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->h()Lcom/google/android/gms/internal/ads/vw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/vw;->b()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string/jumbo v1, "app_volume"

    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->h()Lcom/google/android/gms/internal/ads/vw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/vw;->a()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string/jumbo v1, "device_volume"

    .line 228
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/vw;->a(Landroid/content/Context;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string/jumbo v1, "volume"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/adj;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 231
    return-void
.end method

.method public final q()Landroid/content/Context;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->a:Lcom/google/android/gms/internal/ads/aek;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aek;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized r()Lcom/google/android/gms/ads/internal/overlay/c;
    .locals 1

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->m:Lcom/google/android/gms/ads/internal/overlay/c;
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
    .line 239
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->M:Lcom/google/android/gms/ads/internal/overlay/c;
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
    .line 583
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->L:Ljava/lang/ref/WeakReference;

    .line 584
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    return-void
.end method

.method public final declared-synchronized setRequestedOrientation(I)V
    .locals 2

    .prologue
    .line 445
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/adj;->v:I

    .line 446
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->m:Lcom/google/android/gms/ads/internal/overlay/c;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->m:Lcom/google/android/gms/ads/internal/overlay/c;

    iget v1, p0, Lcom/google/android/gms/internal/ads/adj;->v:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/c;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    :cond_0
    monitor-exit p0

    return-void

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 62
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/acs;

    if-eqz v0, :cond_0

    .line 63
    check-cast p1, Lcom/google/android/gms/internal/ads/acs;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/adj;->l:Lcom/google/android/gms/internal/ads/acs;

    .line 64
    :cond_0
    return-void
.end method

.method public final stopLoading()V
    .locals 2

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adj;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    :goto_0
    return-void

    .line 542
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 544
    :catch_0
    move-exception v0

    .line 545
    const-string/jumbo v1, "Could not stop loading webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final declared-synchronized t()Lcom/google/android/gms/internal/ads/aei;
    .locals 1

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->o:Lcom/google/android/gms/internal/ads/aei;
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
    .line 241
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->p:Ljava/lang/String;
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
    .line 665
    .line 666
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->l:Lcom/google/android/gms/internal/ads/acs;

    .line 667
    return-object v0
.end method

.method public final w()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->l:Lcom/google/android/gms/internal/ads/acs;

    return-object v0
.end method

.method public final declared-synchronized x()Z
    .locals 1

    .prologue
    .line 243
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adj;->q:Z
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
    .line 244
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->b:Lcom/google/android/gms/internal/ads/ctl;

    return-object v0
.end method

.method public final declared-synchronized z()Lcom/google/android/gms/dynamic/a;
    .locals 1

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adj;->n:Lcom/google/android/gms/dynamic/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
