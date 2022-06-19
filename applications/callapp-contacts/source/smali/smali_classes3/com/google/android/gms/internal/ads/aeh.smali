.class final Lcom/google/android/gms/internal/ads/aeh;
.super Landroid/webkit/WebView;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/webkit/DownloadListener;
.implements Lcom/google/android/gms/internal/ads/adt;


# instance fields
.field private A:Lcom/google/android/gms/internal/ads/aem;

.field private B:Z

.field private C:Z

.field private D:Lcom/google/android/gms/internal/ads/dg;

.field private E:Lcom/google/android/gms/internal/ads/df;

.field private F:Lcom/google/android/gms/internal/ads/efu;

.field private G:I

.field private H:I

.field private I:Lcom/google/android/gms/internal/ads/bg;

.field private J:Lcom/google/android/gms/internal/ads/bg;

.field private K:Lcom/google/android/gms/internal/ads/bg;

.field private L:Lcom/google/android/gms/internal/ads/bf;

.field private M:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private N:I

.field private O:I

.field private P:I

.field private Q:Lcom/google/android/gms/ads/internal/overlay/zze;

.field private R:Z

.field private S:Lcom/google/android/gms/ads/internal/util/zzbz;

.field private T:I

.field private U:I

.field private V:I

.field private W:I

.field private final a:Lcom/google/android/gms/internal/ads/afi;

.field private aa:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/acu;",
            ">;"
        }
    .end annotation
.end field

.field private final ab:Landroid/view/WindowManager;

.field private final ac:Lcom/google/android/gms/internal/ads/ehk;

.field private final b:Lcom/google/android/gms/internal/ads/die;

.field private final c:Lcom/google/android/gms/internal/ads/bw;

.field private final d:Lcom/google/android/gms/internal/ads/zzbar;

.field private final e:Lcom/google/android/gms/ads/internal/zzm;

.field private final f:Lcom/google/android/gms/ads/internal/zzb;

.field private final g:Landroid/util/DisplayMetrics;

.field private final h:F

.field private i:Lcom/google/android/gms/internal/ads/cov;

.field private j:Lcom/google/android/gms/internal/ads/coz;

.field private k:Z

.field private l:Z

.field private m:Lcom/google/android/gms/internal/ads/ads;

.field private n:Lcom/google/android/gms/ads/internal/overlay/zze;

.field private o:Lcom/google/android/gms/dynamic/b;

.field private p:Lcom/google/android/gms/internal/ads/afh;

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Ljava/lang/Boolean;

.field private w:I

.field private x:Z

.field private y:Z

.field private z:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/afi;Lcom/google/android/gms/internal/ads/afh;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/die;Lcom/google/android/gms/internal/ads/bw;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/internal/ads/bi;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/ehk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/coz;)V
    .locals 8

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p8

    .line 3
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 4
    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/aeh;->k:Z

    .line 5
    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/aeh;->l:Z

    const/4 v5, 0x1

    .line 6
    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/aeh;->x:Z

    .line 7
    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/aeh;->y:Z

    const-string v0, ""

    .line 8
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/aeh;->z:Ljava/lang/String;

    const/4 v0, -0x1

    .line 9
    iput v0, v1, Lcom/google/android/gms/internal/ads/aeh;->T:I

    .line 10
    iput v0, v1, Lcom/google/android/gms/internal/ads/aeh;->U:I

    .line 11
    iput v0, v1, Lcom/google/android/gms/internal/ads/aeh;->V:I

    .line 12
    iput v0, v1, Lcom/google/android/gms/internal/ads/aeh;->W:I

    .line 13
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/aeh;->a:Lcom/google/android/gms/internal/ads/afi;

    move-object v6, p2

    .line 14
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/aeh;->p:Lcom/google/android/gms/internal/ads/afh;

    move-object v6, p3

    .line 15
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/aeh;->q:Ljava/lang/String;

    move v6, p4

    .line 16
    iput-boolean v6, v1, Lcom/google/android/gms/internal/ads/aeh;->t:Z

    .line 17
    iput v0, v1, Lcom/google/android/gms/internal/ads/aeh;->w:I

    move-object v0, p6

    .line 18
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/aeh;->b:Lcom/google/android/gms/internal/ads/die;

    move-object v0, p7

    .line 19
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/aeh;->c:Lcom/google/android/gms/internal/ads/bw;

    .line 20
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/aeh;->d:Lcom/google/android/gms/internal/ads/zzbar;

    move-object/from16 v0, p10

    .line 21
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/aeh;->e:Lcom/google/android/gms/ads/internal/zzm;

    move-object/from16 v0, p11

    .line 22
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/aeh;->f:Lcom/google/android/gms/ads/internal/zzb;

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aeh;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v6, "window"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/aeh;->ab:Landroid/view/WindowManager;

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zza(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/aeh;->g:Landroid/util/DisplayMetrics;

    .line 25
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, v1, Lcom/google/android/gms/internal/ads/aeh;->h:F

    move-object/from16 v0, p12

    .line 26
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/aeh;->ac:Lcom/google/android/gms/internal/ads/ehk;

    move-object/from16 v0, p13

    .line 27
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/aeh;->i:Lcom/google/android/gms/internal/ads/cov;

    move-object/from16 v0, p14

    .line 28
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/aeh;->j:Lcom/google/android/gms/internal/ads/coz;

    .line 29
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/aeh;->setBackgroundColor(I)V

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aeh;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    .line 31
    invoke-virtual {v6, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 32
    :try_start_0
    invoke-virtual {v6, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v7, v0

    const-string v0, "Unable to enable Javascript."

    .line 35
    invoke-static {v0, v7}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    :goto_0
    invoke-virtual {v6, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 37
    invoke-virtual {v6, v5}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 38
    invoke-virtual {v6, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v0, v4, :cond_0

    const/4 v0, 0x2

    .line 40
    invoke-virtual {v6, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 41
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v0

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzbar;->zzbrz:Ljava/lang/String;

    .line 42
    invoke-virtual {v0, p1, v3}, Lcom/google/android/gms/ads/internal/util/zzj;->zzq(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aeh;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Lcom/google/android/gms/ads/internal/util/zzr;->zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    .line 44
    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/ads/aeh;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 45
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aeh;->X()V

    .line 46
    invoke-static {}, Lcom/google/android/gms/common/util/n;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    new-instance v0, Lcom/google/android/gms/internal/ads/aeq;

    new-instance v3, Lcom/google/android/gms/internal/ads/aep;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/aep;-><init>(Lcom/google/android/gms/internal/ads/adt;)V

    invoke-direct {v0, p0, v3}, Lcom/google/android/gms/internal/ads/aeq;-><init>(Lcom/google/android/gms/internal/ads/aeu;Lcom/google/android/gms/internal/ads/aer;)V

    const-string v3, "googleAdsJsInterface"

    .line 49
    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/internal/ads/aeh;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    const-string v0, "accessibility"

    .line 50
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/aeh;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibilityTraversal"

    .line 51
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/aeh;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzbz;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/aeh;->a:Lcom/google/android/gms/internal/ads/afi;

    .line 1014
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/afi;->a:Landroid/app/Activity;

    const/4 v4, 0x0

    .line 53
    invoke-direct {v0, v3, p0, p0, v4}, Lcom/google/android/gms/ads/internal/util/zzbz;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/aeh;->S:Lcom/google/android/gms/ads/internal/util/zzbz;

    .line 55
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aeh;->ac()V

    .line 56
    new-instance v0, Lcom/google/android/gms/internal/ads/bf;

    new-instance v3, Lcom/google/android/gms/internal/ads/bi;

    const-string v6, "make_wv"

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/aeh;->q:Ljava/lang/String;

    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/gms/internal/ads/bi;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/bf;-><init>(Lcom/google/android/gms/internal/ads/bi;)V

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/aeh;->L:Lcom/google/android/gms/internal/ads/bf;

    .line 1018
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bf;->b:Lcom/google/android/gms/internal/ads/bi;

    .line 2009
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bi;->b:Ljava/lang/Object;

    monitor-enter v3

    move-object/from16 v5, p9

    .line 2010
    :try_start_1
    iput-object v5, v0, Lcom/google/android/gms/internal/ads/bi;->c:Lcom/google/android/gms/internal/ads/bi;

    .line 2011
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->bl:Lcom/google/android/gms/internal/ads/af;

    .line 59
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/aeh;->j:Lcom/google/android/gms/internal/ads/coz;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/coz;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/aeh;->L:Lcom/google/android/gms/internal/ads/bf;

    .line 2018
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bf;->b:Lcom/google/android/gms/internal/ads/bi;

    const-string v3, "gqi"

    .line 62
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/aeh;->j:Lcom/google/android/gms/internal/ads/coz;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/coz;->b:Ljava/lang/String;

    .line 63
    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/internal/ads/bi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/aeh;->L:Lcom/google/android/gms/internal/ads/bf;

    .line 3018
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bf;->b:Lcom/google/android/gms/internal/ads/bi;

    .line 64
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ay;->a(Lcom/google/android/gms/internal/ads/bi;)Lcom/google/android/gms/internal/ads/bg;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/aeh;->J:Lcom/google/android/gms/internal/ads/bg;

    .line 65
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/aeh;->L:Lcom/google/android/gms/internal/ads/bf;

    const-string v5, "native:view_create"

    invoke-virtual {v3, v5, v0}, Lcom/google/android/gms/internal/ads/bf;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/bg;)V

    .line 66
    iput-object v4, v1, Lcom/google/android/gms/internal/ads/aeh;->K:Lcom/google/android/gms/internal/ads/bg;

    .line 67
    iput-object v4, v1, Lcom/google/android/gms/internal/ads/aeh;->I:Lcom/google/android/gms/internal/ads/bg;

    .line 68
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzr;->zzbh(Landroid/content/Context;)V

    .line 69
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v0

    .line 3065
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/yd;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void

    :catchall_0
    move-exception v0

    .line 2011
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private final T()Z
    .locals 10

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->m:Lcom/google/android/gms/internal/ads/ads;

    .line 80
    check-cast v0, Lcom/google/android/gms/internal/ads/ads;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ads;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->m:Lcom/google/android/gms/internal/ads/ads;

    .line 82
    check-cast v0, Lcom/google/android/gms/internal/ads/ads;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ads;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 84
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->g:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/yq;->b(Landroid/util/DisplayMetrics;I)I

    move-result v4

    .line 85
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->g:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/yq;->b(Landroid/util/DisplayMetrics;I)I

    move-result v5

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->a:Lcom/google/android/gms/internal/ads/afi;

    .line 4014
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/afi;->a:Landroid/app/Activity;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 89
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzf(Landroid/app/Activity;)[I

    move-result-object v0

    .line 93
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aeh;->g:Landroid/util/DisplayMetrics;

    aget v6, v0, v1

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/yq;->b(Landroid/util/DisplayMetrics;I)I

    move-result v3

    .line 94
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/aeh;->g:Landroid/util/DisplayMetrics;

    aget v0, v0, v2

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/yq;->b(Landroid/util/DisplayMetrics;I)I

    move-result v0

    move v7, v0

    move v6, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v4

    move v7, v5

    .line 95
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/aeh;->U:I

    if-ne v0, v4, :cond_3

    iget v3, p0, Lcom/google/android/gms/internal/ads/aeh;->T:I

    if-ne v3, v5, :cond_3

    iget v3, p0, Lcom/google/android/gms/internal/ads/aeh;->V:I

    if-ne v3, v6, :cond_3

    iget v3, p0, Lcom/google/android/gms/internal/ads/aeh;->W:I

    if-ne v3, v7, :cond_3

    return v1

    :cond_3
    if-ne v0, v4, :cond_4

    .line 97
    iget v0, p0, Lcom/google/android/gms/internal/ads/aeh;->T:I

    if-eq v0, v5, :cond_5

    :cond_4
    const/4 v1, 0x1

    .line 98
    :cond_5
    iput v4, p0, Lcom/google/android/gms/internal/ads/aeh;->U:I

    .line 99
    iput v5, p0, Lcom/google/android/gms/internal/ads/aeh;->T:I

    .line 100
    iput v6, p0, Lcom/google/android/gms/internal/ads/aeh;->V:I

    .line 101
    iput v7, p0, Lcom/google/android/gms/internal/ads/aeh;->W:I

    .line 102
    new-instance v3, Lcom/google/android/gms/internal/ads/qa;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/qa;-><init>(Lcom/google/android/gms/internal/ads/adt;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->g:Landroid/util/DisplayMetrics;

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->ab:Landroid/view/WindowManager;

    .line 103
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v9

    .line 104
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/qa;->a(IIIIFI)V

    return v1
.end method

.method private final declared-synchronized U()V
    .locals 2

    monitor-enter p0

    .line 167
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yd;->b()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->v:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "(function(){})()"

    const/4 v1, 0x0

    .line 170
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aeh;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 171
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/aeh;->a(Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    .line 174
    :catch_0
    :try_start_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/aeh;->a(Ljava/lang/Boolean;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized V()Ljava/lang/Boolean;
    .locals 1

    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->v:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final W()V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->L:Lcom/google/android/gms/internal/ads/bf;

    .line 7018
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bf;->b:Lcom/google/android/gms/internal/ads/bi;

    .line 221
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aeh;->J:Lcom/google/android/gms/internal/ads/bg;

    const-string v2, "aeh2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ay;->a(Lcom/google/android/gms/internal/ads/bi;Lcom/google/android/gms/internal/ads/bg;[Ljava/lang/String;)Z

    return-void
.end method

.method private final declared-synchronized X()V
    .locals 2

    monitor-enter p0

    .line 463
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aeh;->t:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->p:Lcom/google/android/gms/internal/ads/afh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/afh;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 466
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1

    const-string v0, "Disabling hardware acceleration on an AdView."

    .line 467
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    .line 468
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aeh;->Y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "Enabling hardware acceleration on an AdView."

    .line 469
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    .line 470
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aeh;->Z()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    :try_start_2
    const-string v0, "Enabling hardware acceleration on an overlay."

    .line 464
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    .line 465
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aeh;->Z()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized Y()V
    .locals 2

    monitor-enter p0

    .line 472
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aeh;->u:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 473
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/aeh;->setLayerType(ILandroid/graphics/Paint;)V

    .line 474
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/aeh;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized Z()V
    .locals 2

    monitor-enter p0

    .line 476
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aeh;->u:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 477
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/aeh;->setLayerType(ILandroid/graphics/Paint;)V

    .line 478
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/aeh;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/aeh;)I
    .locals 0

    .line 694
    iget p0, p0, Lcom/google/android/gms/internal/ads/aeh;->H:I

    return p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/aeh;I)I
    .locals 0

    .line 695
    iput p1, p0, Lcom/google/android/gms/internal/ads/aeh;->H:I

    return p1
.end method

.method static a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/afh;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/die;Lcom/google/android/gms/internal/ads/bw;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/internal/ads/bi;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/ehk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/coz;)Lcom/google/android/gms/internal/ads/aeh;
    .locals 16

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/afi;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/afi;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v15, Lcom/google/android/gms/internal/ads/aeh;

    const/4 v9, 0x0

    move-object v0, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/ads/aeh;-><init>(Lcom/google/android/gms/internal/ads/afi;Lcom/google/android/gms/internal/ads/afh;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/die;Lcom/google/android/gms/internal/ads/bw;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/internal/ads/bi;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/ehk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/coz;)V

    return-object v15
.end method

.method private final a(Ljava/lang/Boolean;)V
    .locals 1

    .line 176
    monitor-enter p0

    .line 177
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aeh;->v:Ljava/lang/Boolean;

    .line 178
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/yd;->a(Ljava/lang/Boolean;)V

    return-void

    :catchall_0
    move-exception p1

    .line 178
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static final synthetic a(ZILcom/google/android/gms/internal/ads/eht$n$a;)V
    .locals 2

    .line 687
    invoke-static {}, Lcom/google/android/gms/internal/ads/eht$f;->a()Lcom/google/android/gms/internal/ads/eht$f$a;

    move-result-object v0

    .line 688
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/eht$f$a;->a()Z

    move-result v1

    if-eq v1, p0, :cond_0

    .line 689
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/eht$f$a;->a(Z)Lcom/google/android/gms/internal/ads/eht$f$a;

    .line 691
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/eht$f$a;->a(I)Lcom/google/android/gms/internal/ads/eht$f$a;

    move-result-object p0

    .line 18067
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dnh$b;->d()Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p0

    .line 691
    check-cast p0, Lcom/google/android/gms/internal/ads/dnh;

    check-cast p0, Lcom/google/android/gms/internal/ads/eht$f;

    .line 692
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/eht$n$a;->a(Lcom/google/android/gms/internal/ads/eht$f;)Lcom/google/android/gms/internal/ads/eht$n$a;

    return-void
.end method

.method private final declared-synchronized aa()V
    .locals 1

    monitor-enter p0

    .line 512
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aeh;->R:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 513
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aeh;->R:Z

    .line 514
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v0

    .line 14067
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/yd;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized ab()V
    .locals 2

    monitor-enter p0

    .line 565
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->aa:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 566
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/acu;

    .line 567
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/acu;->a()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 569
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->aa:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final ac()V
    .locals 2

    .line 613
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->L:Lcom/google/android/gms/internal/ads/bf;

    if-nez v0, :cond_0

    return-void

    .line 16018
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bf;->b:Lcom/google/android/gms/internal/ads/bi;

    if-eqz v0, :cond_1

    .line 616
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yd;->a()Lcom/google/android/gms/internal/ads/ax;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 617
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yd;->a()Lcom/google/android/gms/internal/ads/ax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ax;->a(Lcom/google/android/gms/internal/ads/bi;)Z

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/aeh;)V
    .locals 0

    .line 696
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method private final declared-synchronized c(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aeh;->H()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/aeh;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 122
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized d(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 133
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    .line 136
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v0

    const-string v1, "AdWebViewImpl.loadUrlUnsafe"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/yd;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "Could not call loadUrl. "

    .line 137
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized e(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 153
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aeh;->H()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/aeh;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 155
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final f(Ljava/lang/String;)V
    .locals 2

    .line 157
    invoke-static {}, Lcom/google/android/gms/common/util/n;->e()Z

    move-result v0

    const-string v1, "javascript:"

    if-eqz v0, :cond_3

    .line 158
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aeh;->V()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aeh;->U()V

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aeh;->V()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/aeh;->e(Ljava/lang/String;)V

    return-void

    .line 162
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/aeh;->c(Ljava/lang/String;)V

    return-void

    .line 163
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/aeh;->c(Ljava/lang/String;)V

    return-void
.end method

.method private final h(Z)V
    .locals 2

    .line 652
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v1, "isVisible"

    .line 653
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onAdVisibilityChanged"

    .line 654
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/aeh;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized A()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->q:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic B()Lcom/google/android/gms/internal/ads/afe;
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->m:Lcom/google/android/gms/internal/ads/ads;

    return-object v0
.end method

.method public final C()Landroid/webkit/WebViewClient;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->m:Lcom/google/android/gms/internal/ads/ads;

    return-object v0
.end method

.method public final declared-synchronized D()Z
    .locals 1

    monitor-enter p0

    .line 253
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aeh;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final E()Lcom/google/android/gms/internal/ads/die;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->b:Lcom/google/android/gms/internal/ads/die;

    return-object v0
.end method

.method public final declared-synchronized F()Lcom/google/android/gms/dynamic/b;
    .locals 1

    monitor-enter p0

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->o:Lcom/google/android/gms/dynamic/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized G()Z
    .locals 1

    monitor-enter p0

    .line 256
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aeh;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized H()Z
    .locals 1

    monitor-enter p0

    .line 516
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aeh;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized I()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "Destroying WebView!"

    .line 508
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 509
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aeh;->aa()V

    .line 510
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lcom/google/android/gms/internal/ads/cxg;

    new-instance v1, Lcom/google/android/gms/internal/ads/aei;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/aei;-><init>(Lcom/google/android/gms/internal/ads/aeh;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cxg;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized J()Z
    .locals 1

    monitor-enter p0

    .line 556
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aeh;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized K()Z
    .locals 1

    monitor-enter p0

    .line 608
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/aeh;->G:I
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

.method public final L()V
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->S:Lcom/google/android/gms/ads/internal/util/zzbz;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzaal()V

    return-void
.end method

.method public final M()V
    .locals 3

    .line 525
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->K:Lcom/google/android/gms/internal/ads/bg;

    if-nez v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->L:Lcom/google/android/gms/internal/ads/bf;

    .line 15018
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bf;->b:Lcom/google/android/gms/internal/ads/bi;

    .line 526
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ay;->a(Lcom/google/android/gms/internal/ads/bi;)Lcom/google/android/gms/internal/ads/bg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->K:Lcom/google/android/gms/internal/ads/bg;

    .line 527
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aeh;->L:Lcom/google/android/gms/internal/ads/bf;

    const-string v2, "native:view_load"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/bf;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/bg;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized N()Lcom/google/android/gms/internal/ads/dg;
    .locals 1

    monitor-enter p0

    .line 601
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->D:Lcom/google/android/gms/internal/ads/dg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final O()V
    .locals 1

    const/4 v0, 0x0

    .line 619
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/aeh;->setBackgroundColor(I)V

    return-void
.end method

.method public final P()V
    .locals 1

    const-string v0, "Cannot add text view to inner AdWebView"

    .line 543
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized Q()Lcom/google/android/gms/internal/ads/efu;
    .locals 1

    monitor-enter p0

    .line 593
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->F:Lcom/google/android/gms/internal/ads/efu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final R()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final S()Lcom/google/android/gms/internal/ads/coz;
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->j:Lcom/google/android/gms/internal/ads/coz;

    return-object v0
.end method

.method public final a()Lcom/google/android/gms/internal/ads/aaq;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized a(I)V
    .locals 0

    monitor-enter p0

    .line 582
    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/aeh;->N:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->a:Lcom/google/android/gms/internal/ads/afi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/afi;->setBaseContext(Landroid/content/Context;)V

    .line 451
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aeh;->S:Lcom/google/android/gms/ads/internal/util/zzbz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->a:Lcom/google/android/gms/internal/ads/afi;

    .line 13014
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/afi;->a:Landroid/app/Activity;

    .line 451
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzj(Landroid/app/Activity;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/internal/overlay/zzb;)V
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->m:Lcom/google/android/gms/internal/ads/ads;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ads;->a(Lcom/google/android/gms/ads/internal/overlay/zzb;)V

    return-void
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/ads/internal/overlay/zze;)V
    .locals 0

    monitor-enter p0

    .line 389
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aeh;->n:Lcom/google/android/gms/ads/internal/overlay/zze;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/ads/internal/util/zzbg;Lcom/google/android/gms/internal/ads/brs;Lcom/google/android/gms/internal/ads/bli;Lcom/google/android/gms/internal/ads/cty;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .line 645
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->m:Lcom/google/android/gms/internal/ads/ads;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/ads;->a(Lcom/google/android/gms/ads/internal/util/zzbg;Lcom/google/android/gms/internal/ads/brs;Lcom/google/android/gms/internal/ads/bli;Lcom/google/android/gms/internal/ads/cty;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/dynamic/b;)V
    .locals 0

    monitor-enter p0

    .line 391
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aeh;->o:Lcom/google/android/gms/dynamic/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/aem;)V
    .locals 1

    monitor-enter p0

    .line 603
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->A:Lcom/google/android/gms/internal/ads/aem;

    if-eqz v0, :cond_0

    const-string p1, "Attempt to create multiple AdWebViewVideoControllers."

    .line 604
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    monitor-exit p0

    return-void

    .line 606
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aeh;->A:Lcom/google/android/gms/internal/ads/aem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 607
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/afh;)V
    .locals 0

    monitor-enter p0

    .line 395
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aeh;->p:Lcom/google/android/gms/internal/ads/afh;

    .line 396
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aeh;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/coz;)V
    .locals 0

    .line 675
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aeh;->i:Lcom/google/android/gms/internal/ads/cov;

    .line 676
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aeh;->j:Lcom/google/android/gms/internal/ads/coz;

    return-void
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/df;)V
    .locals 0

    monitor-enter p0

    .line 589
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aeh;->E:Lcom/google/android/gms/internal/ads/df;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/dg;)V
    .locals 0

    monitor-enter p0

    .line 599
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aeh;->D:Lcom/google/android/gms/internal/ads/dg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/eeh;)V
    .locals 1

    .line 647
    monitor-enter p0

    .line 648
    :try_start_0
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/eeh;->j:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aeh;->B:Z

    .line 649
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/eeh;->j:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/aeh;->h(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 649
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/efu;)V
    .locals 0

    monitor-enter p0

    .line 591
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aeh;->F:Lcom/google/android/gms/internal/ads/efu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/aeh;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/common/util/o;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/util/o<",
            "Lcom/google/android/gms/internal/ads/hi<",
            "-",
            "Lcom/google/android/gms/internal/ads/adt;",
            ">;>;)V"
        }
    .end annotation

    .line 662
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->m:Lcom/google/android/gms/internal/ads/ads;

    if-eqz v0, :cond_3

    .line 17213
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ads;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 17214
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ads;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 17216
    monitor-exit v1

    return-void

    .line 17217
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17218
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/hi;

    .line 17219
    invoke-interface {p2, v3}, Lcom/google/android/gms/common/util/o;->a(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 17220
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17222
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 17223
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/acu;)V
    .locals 1

    monitor-enter p0

    .line 571
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->aa:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 572
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->aa:Ljava/util/Map;

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->aa:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/hi<",
            "-",
            "Lcom/google/android/gms/internal/ads/adt;",
            ">;)V"
        }
    .end annotation

    .line 656
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->m:Lcom/google/android/gms/internal/ads/ads;

    if-eqz v0, :cond_0

    .line 657
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ads;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    monitor-enter p0

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aeh;->H()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 149
    invoke-static {}, Lcom/google/android/gms/internal/ads/aex;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/aex;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "text/html"

    const-string v7, "UTF-8"

    move-object v3, p0

    move-object v4, p1

    move-object v8, p3

    .line 150
    invoke-super/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 151
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 106
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzj(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/aeh;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_0
    const-string p1, "Could not convert parameters to JSON."

    .line 109
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    if-nez p2, :cond_0

    .line 190
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 191
    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(window.AFMA_ReceiveMessage || function() {})(\'"

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    .line 195
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    .line 196
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    .line 198
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Dispatching AFMA event: "

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/aeh;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->m:Lcom/google/android/gms/internal/ads/ads;

    .line 623
    check-cast v0, Lcom/google/android/gms/internal/ads/ads;

    .line 16364
    iput-boolean p1, v0, Lcom/google/android/gms/internal/ads/ads;->d:Z

    return-void
.end method

.method public final a(ZILjava/lang/String;)V
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->m:Lcom/google/android/gms/internal/ads/ads;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ads;->a(ZILjava/lang/String;)V

    return-void
.end method

.method public final a(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->m:Lcom/google/android/gms/internal/ads/ads;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/ads;->a(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(ZJ)V
    .locals 2

    .line 242
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v1, "success"

    .line 243
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "duration"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onCacheAccessComplete"

    .line 245
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/aeh;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final a(ZI)Z
    .locals 2

    .line 665
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aeh;->destroy()V

    .line 666
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->ac:Lcom/google/android/gms/internal/ads/ehk;

    new-instance v1, Lcom/google/android/gms/internal/ads/aeg;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/aeg;-><init>(ZI)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ehk;->a(Lcom/google/android/gms/internal/ads/ehj;)V

    .line 667
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aeh;->ac:Lcom/google/android/gms/internal/ads/ehk;

    sget-object p2, Lcom/google/android/gms/internal/ads/ehn$a$b;->zzbyo:Lcom/google/android/gms/internal/ads/ehn$a$b;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/ehk;->a(Lcom/google/android/gms/internal/ads/ehn$a$b;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/acu;
    .locals 1

    monitor-enter p0

    .line 575
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->aa:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 576
    monitor-exit p0

    return-object p1

    .line 577
    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/acu;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()Lcom/google/android/gms/internal/ads/aem;
    .locals 1

    monitor-enter p0

    .line 602
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->A:Lcom/google/android/gms/internal/ads/aem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(I)V
    .locals 0

    .line 631
    iput p1, p0, Lcom/google/android/gms/internal/ads/aeh;->O:I

    return-void
.end method

.method public final declared-synchronized b(Lcom/google/android/gms/ads/internal/overlay/zze;)V
    .locals 0

    monitor-enter p0

    .line 393
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aeh;->Q:Lcom/google/android/gms/ads/internal/overlay/zze;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/hi<",
            "-",
            "Lcom/google/android/gms/internal/ads/adt;",
            ">;)V"
        }
    .end annotation

    .line 659
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->m:Lcom/google/android/gms/internal/ads/ads;

    if-eqz v0, :cond_1

    .line 17207
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ads;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 17208
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ads;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 17210
    monitor-exit v1

    return-void

    .line 17211
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 17212
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    if-nez p2, :cond_0

    .line 183
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 184
    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 186
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/aeh;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized b(Z)V
    .locals 2

    monitor-enter p0

    .line 398
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aeh;->t:Z

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 399
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/aeh;->t:Z

    .line 400
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aeh;->X()V

    if-eqz v0, :cond_3

    .line 401
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->J:Lcom/google/android/gms/internal/ads/af;

    .line 402
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 403
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->p:Lcom/google/android/gms/internal/ads/afh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/afh;->d()Z

    move-result v0

    if-nez v0, :cond_3

    .line 404
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/qa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/qa;-><init>(Lcom/google/android/gms/internal/ads/adt;)V

    if-eqz p1, :cond_2

    const-string p1, "expanded"

    goto :goto_1

    :cond_2
    const-string p1, "default"

    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/qa;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(ZI)V
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->m:Lcom/google/android/gms/internal/ads/ads;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ads;->a(ZI)V

    return-void
.end method

.method public final c()Lcom/google/android/gms/internal/ads/bg;
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->J:Lcom/google/android/gms/internal/ads/bg;

    return-object v0
.end method

.method public final c(I)V
    .locals 0

    .line 633
    iput p1, p0, Lcom/google/android/gms/internal/ads/aeh;->P:I

    return-void
.end method

.method public final declared-synchronized c(Z)V
    .locals 2

    monitor-enter p0

    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->n:Lcom/google/android/gms/ads/internal/overlay/zze;

    if-eqz v0, :cond_0

    .line 454
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aeh;->m:Lcom/google/android/gms/internal/ads/ads;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ads;->b()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zza(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 455
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/aeh;->r:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final d()Landroid/app/Activity;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->a:Lcom/google/android/gms/internal/ads/afi;

    .line 14014
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/afi;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public final d(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->L:Lcom/google/android/gms/internal/ads/bf;

    .line 4018
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bf;->b:Lcom/google/android/gms/internal/ads/bi;

    .line 210
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aeh;->J:Lcom/google/android/gms/internal/ads/bg;

    const-string v2, "aebb2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ay;->a(Lcom/google/android/gms/internal/ads/bi;Lcom/google/android/gms/internal/ads/bg;[Ljava/lang/String;)Z

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aeh;->W()V

    .line 213
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->L:Lcom/google/android/gms/internal/ads/bf;

    .line 5018
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bf;->b:Lcom/google/android/gms/internal/ads/bi;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->L:Lcom/google/android/gms/internal/ads/bf;

    .line 6018
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bf;->b:Lcom/google/android/gms/internal/ads/bi;

    .line 214
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "close_type"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/bi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 216
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "closetype"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aeh;->d:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbar;->zzbrz:Ljava/lang/String;

    const-string v1, "version"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onhide"

    .line 218
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/aeh;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final declared-synchronized d(Z)V
    .locals 0

    monitor-enter p0

    .line 554
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/aeh;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    .line 480
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aeh;->ac()V

    .line 481
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->S:Lcom/google/android/gms/ads/internal/util/zzbz;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzaam()V

    .line 482
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->n:Lcom/google/android/gms/ads/internal/overlay/zze;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->close()V

    .line 484
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->n:Lcom/google/android/gms/ads/internal/overlay/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->onDestroy()V

    .line 485
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/aeh;->n:Lcom/google/android/gms/ads/internal/overlay/zze;

    .line 486
    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/aeh;->o:Lcom/google/android/gms/dynamic/b;

    .line 487
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->m:Lcom/google/android/gms/internal/ads/ads;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ads;->k()V

    .line 488
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aeh;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 489
    monitor-exit p0

    return-void

    .line 490
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlr()Lcom/google/android/gms/internal/ads/acr;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/acr;->a(Lcom/google/android/gms/internal/ads/abb;)Z

    .line 491
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aeh;->ab()V

    const/4 v0, 0x1

    .line 492
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aeh;->s:Z

    const-string v0, "Initiating WebView self destruct sequence in 3..."

    .line 493
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    const-string v0, "Loading blank page in WebView, 2..."

    .line 494
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    const-string v0, "about:blank"

    .line 495
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/aeh;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 496
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Lcom/google/android/gms/ads/internal/zzb;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->f:Lcom/google/android/gms/ads/internal/zzb;

    return-object v0
.end method

.method public final declared-synchronized e(Z)V
    .locals 1

    monitor-enter p0

    .line 609
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/aeh;->G:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/aeh;->G:I

    if-gtz v0, :cond_1

    .line 610
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aeh;->n:Lcom/google/android/gms/ads/internal/overlay/zze;

    if-eqz p1, :cond_1

    .line 611
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzwo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aeh;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 114
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzfb(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 116
    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_0
    monitor-exit p0

    return-void

    .line 118
    :cond_1
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f()V
    .locals 1

    .line 625
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aeh;->x()Lcom/google/android/gms/ads/internal/overlay/zze;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzwn()V

    :cond_0
    return-void
.end method

.method public final f(Z)V
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->m:Lcom/google/android/gms/internal/ads/ads;

    .line 15371
    iput-boolean p1, v0, Lcom/google/android/gms/internal/ads/ads;->f:Z

    return-void
.end method

.method protected final finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 497
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 498
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aeh;->s:Z

    if-nez v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->m:Lcom/google/android/gms/internal/ads/ads;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ads;->k()V

    .line 500
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlr()Lcom/google/android/gms/internal/ads/acr;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/acr;->a(Lcom/google/android/gms/internal/ads/abb;)Z

    .line 501
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aeh;->ab()V

    .line 502
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aeh;->aa()V

    .line 503
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    .line 503
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 506
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 507
    throw v0
.end method

.method public final declared-synchronized g()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 578
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->z:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 680
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/aeh;->setBackgroundColor(I)V

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->n:Lcom/google/android/gms/ads/internal/overlay/zze;

    if-eqz v0, :cond_1

    .line 682
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzac(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized h()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 579
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->j:Lcom/google/android/gms/internal/ads/coz;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/coz;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 581
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()I
    .locals 1

    monitor-enter p0

    .line 584
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/aeh;->N:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j()Lcom/google/android/gms/internal/ads/bf;
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->L:Lcom/google/android/gms/internal/ads/bf;

    return-object v0
.end method

.method public final k()Lcom/google/android/gms/internal/ads/zzbar;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->d:Lcom/google/android/gms/internal/ads/zzbar;

    return-object v0
.end method

.method public final l()I
    .locals 1

    .line 629
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aeh;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public final declared-synchronized loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 139
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aeh;->H()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 141
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aeh;->H()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 145
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized loadUrl(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 124
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aeh;->H()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 125
    :try_start_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 128
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v0

    const-string v1, "AdWebViewImpl.loadUrl"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/yd;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "Could not call loadUrl. "

    .line 129
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    :cond_0
    :try_start_3
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 131
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final m()I
    .locals 1

    .line 630
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aeh;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public final declared-synchronized n()V
    .locals 1

    monitor-enter p0

    .line 586
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->E:Lcom/google/android/gms/internal/ads/df;

    if-eqz v0, :cond_0

    .line 587
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/df;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final o()I
    .locals 1

    .line 635
    iget v0, p0, Lcom/google/android/gms/internal/ads/aeh;->O:I

    return v0
.end method

.method public final onAdClicked()V
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->m:Lcom/google/android/gms/internal/ads/ads;

    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ads;->onAdClicked()V

    :cond_0
    return-void
.end method

.method protected final declared-synchronized onAttachedToWindow()V
    .locals 4

    monitor-enter p0

    .line 408
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 409
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aeh;->H()Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->S:Lcom/google/android/gms/ads/internal/util/zzbz;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbz;->onAttachedToWindow()V

    .line 411
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aeh;->B:Z

    .line 413
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aeh;->m:Lcom/google/android/gms/internal/ads/ads;

    .line 414
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/ads;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 416
    check-cast v1, Lcom/google/android/gms/internal/ads/ads;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ads;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 418
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aeh;->C:Z

    if-nez v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->m:Lcom/google/android/gms/internal/ads/ads;

    .line 421
    check-cast v0, Lcom/google/android/gms/internal/ads/ads;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ads;->e()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 423
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->m:Lcom/google/android/gms/internal/ads/ads;

    .line 424
    check-cast v0, Lcom/google/android/gms/internal/ads/ads;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ads;->f()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 425
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/aeh;->C:Z

    .line 426
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aeh;->T()Z

    const/4 v0, 0x1

    .line 427
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/aeh;->h(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final onDetachedFromWindow()V
    .locals 3

    .line 429
    monitor-enter p0

    .line 430
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aeh;->H()Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->S:Lcom/google/android/gms/ads/internal/util/zzbz;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbz;->onDetachedFromWindow()V

    .line 432
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 433
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aeh;->C:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->m:Lcom/google/android/gms/internal/ads/ads;

    .line 435
    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/ads;

    if-eqz v2, :cond_1

    .line 437
    check-cast v0, Lcom/google/android/gms/internal/ads/ads;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ads;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aeh;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 439
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aeh;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->m:Lcom/google/android/gms/internal/ads/ads;

    .line 442
    check-cast v0, Lcom/google/android/gms/internal/ads/ads;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ads;->e()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 444
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->m:Lcom/google/android/gms/internal/ads/ads;

    .line 445
    check-cast v0, Lcom/google/android/gms/internal/ads/ads;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ads;->f()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 446
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/aeh;->C:Z

    .line 447
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/aeh;->h(Z)V

    return-void

    :catchall_0
    move-exception v0

    .line 447
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 257
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aeh;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/google/android/gms/ads/internal/util/zzj;->zza(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 262
    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x33

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Couldn\'t find an Activity to view url/mimetype: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 517
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aeh;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 519
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    .line 520
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aeh;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 523
    :cond_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/16 v0, 0x9

    .line 280
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/16 v1, 0xa

    .line 281
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    const/4 v2, -0x1

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_0

    .line 284
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/aeh;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    const/4 v4, 0x1

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 285
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/aeh;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    cmpl-float v0, v1, v3

    if-lez v0, :cond_2

    .line 286
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/aeh;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    cmpg-float v0, v1, v3

    if-gez v0, :cond_4

    .line 287
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/aeh;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 p1, 0x0

    return p1

    .line 289
    :cond_4
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onGlobalLayout()V
    .locals 2

    .line 384
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aeh;->T()Z

    move-result v0

    .line 385
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aeh;->x()Lcom/google/android/gms/ads/internal/overlay/zze;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzwl()V

    :cond_0
    return-void
.end method

.method protected final declared-synchronized onMeasure(II)V
    .locals 8

    monitor-enter p0

    .line 290
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aeh;->H()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p0, v1, v1}, Lcom/google/android/gms/internal/ads/aeh;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    monitor-exit p0

    return-void

    .line 293
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aeh;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aeh;->t:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->p:Lcom/google/android/gms/internal/ads/afh;

    .line 10021
    iget v0, v0, Lcom/google/android/gms/internal/ads/afh;->a:I

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    goto/16 :goto_d

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->p:Lcom/google/android/gms/internal/ads/afh;

    .line 10023
    iget v0, v0, Lcom/google/android/gms/internal/ads/afh;->a:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 297
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    .line 299
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->p:Lcom/google/android/gms/internal/ads/afh;

    .line 11022
    iget v0, v0, Lcom/google/android/gms/internal/ads/afh;->a:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_b

    .line 300
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->ca:Lcom/google/android/gms/internal/ads/af;

    .line 301
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 302
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 303
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 304
    monitor-exit p0

    return-void

    .line 306
    :cond_6
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aeh;->b()Lcom/google/android/gms/internal/ads/aem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 308
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aem;->i()F

    move-result v0

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    cmpl-float v1, v0, v1

    if-nez v1, :cond_8

    .line 310
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 311
    monitor-exit p0

    return-void

    .line 312
    :cond_8
    :try_start_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 313
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float v1, p2

    mul-float v1, v1, v0

    float-to-int v1, v1

    int-to-float v2, p1

    div-float/2addr v2, v0

    float-to-int v2, v2

    if-nez p2, :cond_9

    if-eqz v2, :cond_9

    int-to-float p2, v2

    mul-float p2, p2, v0

    float-to-int v1, p2

    move p2, v2

    goto :goto_4

    :cond_9
    if-nez p1, :cond_a

    if-eqz v1, :cond_a

    int-to-float p1, v1

    div-float/2addr p1, v0

    float-to-int v2, p1

    move p1, v1

    .line 322
    :cond_a
    :goto_4
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 323
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 324
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/aeh;->setMeasuredDimension(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 325
    monitor-exit p0

    return-void

    .line 326
    :cond_b
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->p:Lcom/google/android/gms/internal/ads/afh;

    .line 12019
    iget v0, v0, Lcom/google/android/gms/internal/ads/afh;->a:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_c

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_10

    .line 327
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->cc:Lcom/google/android/gms/internal/ads/af;

    .line 328
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 329
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/google/android/gms/common/util/n;->c()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_7

    :cond_d
    const-string v0, "/contentHeight"

    .line 333
    new-instance v1, Lcom/google/android/gms/internal/ads/aek;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/aek;-><init>(Lcom/google/android/gms/internal/ads/aeh;)V

    .line 334
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aeh;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    const-string v0, "(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = \'gmsg://mobileads.google.com/contentHeight?\';  url += \'height=\' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById(\'afma-notify-fluid\');    if (!frame) {      frame = document.createElement(\'IFRAME\');      frame.id = \'afma-notify-fluid\';      frame.style.display = \'none\';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();"

    .line 336
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/aeh;->f(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->g:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 338
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 339
    iget v1, p0, Lcom/google/android/gms/internal/ads/aeh;->H:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    int-to-float p2, v1

    mul-float p2, p2, v0

    float-to-int p2, p2

    goto :goto_6

    .line 340
    :cond_e
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 343
    :goto_6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/aeh;->setMeasuredDimension(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 344
    monitor-exit p0

    return-void

    .line 330
    :cond_f
    :goto_7
    :try_start_6
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 331
    monitor-exit p0

    return-void

    .line 345
    :cond_10
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->p:Lcom/google/android/gms/internal/ads/afh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/afh;->d()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 346
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aeh;->g:Landroid/util/DisplayMetrics;

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/aeh;->g:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/aeh;->setMeasuredDimension(II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 347
    monitor-exit p0

    return-void

    .line 348
    :cond_11
    :try_start_8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 349
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 350
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 351
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    if-eq v0, v6, :cond_13

    if-ne v0, v5, :cond_12

    goto :goto_8

    :cond_12
    const v0, 0x7fffffff

    goto :goto_9

    :cond_13
    :goto_8
    move v0, p1

    :goto_9
    if-eq v4, v6, :cond_14

    if-ne v4, v5, :cond_15

    :cond_14
    move v7, p2

    .line 359
    :cond_15
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aeh;->p:Lcom/google/android/gms/internal/ads/afh;

    iget v4, v4, Lcom/google/android/gms/internal/ads/afh;->c:I

    if-gt v4, v0, :cond_17

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aeh;->p:Lcom/google/android/gms/internal/ads/afh;

    iget v4, v4, Lcom/google/android/gms/internal/ads/afh;->b:I

    if-le v4, v7, :cond_16

    goto :goto_a

    :cond_16
    const/4 v4, 0x0

    goto :goto_b

    :cond_17
    :goto_a
    const/4 v4, 0x1

    .line 360
    :goto_b
    sget-object v5, Lcom/google/android/gms/internal/ads/aq;->dc:Lcom/google/android/gms/internal/ads/af;

    .line 361
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v5

    .line 362
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 363
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/aeh;->p:Lcom/google/android/gms/internal/ads/afh;

    iget v5, v5, Lcom/google/android/gms/internal/ads/afh;->c:I

    int-to-float v5, v5

    iget v6, p0, Lcom/google/android/gms/internal/ads/aeh;->h:F

    div-float/2addr v5, v6

    int-to-float v0, v0

    div-float/2addr v0, v6

    cmpl-float v0, v5, v0

    if-gtz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->p:Lcom/google/android/gms/internal/ads/afh;

    iget v0, v0, Lcom/google/android/gms/internal/ads/afh;->b:I

    int-to-float v0, v0

    iget v5, p0, Lcom/google/android/gms/internal/ads/aeh;->h:F

    div-float/2addr v0, v5

    int-to-float v6, v7

    div-float/2addr v6, v5

    cmpl-float v0, v0, v6

    if-gtz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_c

    :cond_18
    const/4 v0, 0x0

    :goto_c
    if-eqz v4, :cond_19

    move v4, v0

    :cond_19
    const/16 v0, 0x8

    if-eqz v4, :cond_1b

    .line 370
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aeh;->p:Lcom/google/android/gms/internal/ads/afh;

    iget v4, v4, Lcom/google/android/gms/internal/ads/afh;->c:I

    int-to-float v4, v4

    iget v5, p0, Lcom/google/android/gms/internal/ads/aeh;->h:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/aeh;->p:Lcom/google/android/gms/internal/ads/afh;

    iget v5, v5, Lcom/google/android/gms/internal/ads/afh;->b:I

    int-to-float v5, v5

    iget v6, p0, Lcom/google/android/gms/internal/ads/aeh;->h:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float p1, p1

    div-float/2addr p1, v6

    float-to-int p1, p1

    int-to-float p2, p2

    div-float/2addr p2, v6

    float-to-int p2, p2

    const/16 v6, 0x67

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Not enough space to show ad. Needs "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " dp, but only has "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dp."

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aeh;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_1a

    .line 372
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/aeh;->setVisibility(I)V

    .line 373
    :cond_1a
    invoke-virtual {p0, v1, v1}, Lcom/google/android/gms/internal/ads/aeh;->setMeasuredDimension(II)V

    .line 374
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/aeh;->k:Z

    if-nez p1, :cond_1e

    .line 375
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aeh;->ac:Lcom/google/android/gms/internal/ads/ehk;

    sget-object p2, Lcom/google/android/gms/internal/ads/ehn$a$b;->zzbym:Lcom/google/android/gms/internal/ads/ehn$a$b;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/ehk;->a(Lcom/google/android/gms/internal/ads/ehn$a$b;)V

    .line 376
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/aeh;->k:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-void

    .line 377
    :cond_1b
    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aeh;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_1c

    .line 378
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/aeh;->setVisibility(I)V

    .line 379
    :cond_1c
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/aeh;->l:Z

    if-nez p1, :cond_1d

    .line 380
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aeh;->ac:Lcom/google/android/gms/internal/ads/ehk;

    sget-object p2, Lcom/google/android/gms/internal/ads/ehn$a$b;->zzbyn:Lcom/google/android/gms/internal/ads/ehn$a$b;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/ehk;->a(Lcom/google/android/gms/internal/ads/ehn$a$b;)V

    .line 381
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/aeh;->l:Z

    .line 382
    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aeh;->p:Lcom/google/android/gms/internal/ads/afh;

    iget p1, p1, Lcom/google/android/gms/internal/ads/afh;->c:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/aeh;->p:Lcom/google/android/gms/internal/ads/afh;

    iget p2, p2, Lcom/google/android/gms/internal/ads/afh;->b:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/aeh;->setMeasuredDimension(II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 383
    :cond_1e
    monitor-exit p0

    return-void

    .line 294
    :cond_1f
    :goto_d
    :try_start_a
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 295
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onPause()V
    .locals 2

    .line 529
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aeh;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 531
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not pause webview."

    .line 534
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 536
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aeh;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 538
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not resume webview."

    .line 541
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 265
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->m:Lcom/google/android/gms/internal/ads/ads;

    .line 266
    check-cast v0, Lcom/google/android/gms/internal/ads/ads;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ads;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->m:Lcom/google/android/gms/internal/ads/ads;

    .line 268
    check-cast v0, Lcom/google/android/gms/internal/ads/ads;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ads;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    monitor-enter p0

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->D:Lcom/google/android/gms/internal/ads/dg;

    if-eqz v0, :cond_0

    .line 271
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/dg;->a(Landroid/view/MotionEvent;)V

    .line 272
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->b:Lcom/google/android/gms/internal/ads/die;

    if-eqz v0, :cond_2

    .line 274
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/die;->a(Landroid/view/MotionEvent;)V

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->c:Lcom/google/android/gms/internal/ads/bw;

    if-eqz v0, :cond_4

    .line 10005
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 10006
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bw;->a:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    .line 10007
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/bw;->a:Landroid/view/MotionEvent;

    goto :goto_0

    .line 10009
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_4

    .line 10010
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bw;->b:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_4

    .line 10011
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/bw;->b:Landroid/view/MotionEvent;

    .line 277
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aeh;->H()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p1, 0x0

    return p1

    .line 279
    :cond_5
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final p()I
    .locals 1

    .line 636
    iget v0, p0, Lcom/google/android/gms/internal/ads/aeh;->P:I

    return v0
.end method

.method public final q()Lcom/google/android/gms/internal/ads/cov;
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->i:Lcom/google/android/gms/internal/ads/cov;

    return-object v0
.end method

.method public final r()Landroid/webkit/WebView;
    .locals 0

    return-object p0
.end method

.method public final s()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 596
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->M:Ljava/lang/ref/WeakReference;

    .line 597
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final declared-synchronized setRequestedOrientation(I)V
    .locals 1

    monitor-enter p0

    .line 457
    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/aeh;->w:I

    .line 458
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->n:Lcom/google/android/gms/ads/internal/overlay/zze;

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zze;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 72
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/ads;

    if-eqz v0, :cond_0

    .line 73
    check-cast p1, Lcom/google/android/gms/internal/ads/ads;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aeh;->m:Lcom/google/android/gms/internal/ads/ads;

    :cond_0
    return-void
.end method

.method public final stopLoading()V
    .locals 2

    .line 547
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aeh;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 549
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not stop loading webview."

    .line 552
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final t()V
    .locals 3

    .line 202
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aeh;->W()V

    .line 203
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 204
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aeh;->d:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbar;->zzbrz:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    .line 205
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/aeh;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final u()V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->I:Lcom/google/android/gms/internal/ads/bg;

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->L:Lcom/google/android/gms/internal/ads/bf;

    .line 8018
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bf;->b:Lcom/google/android/gms/internal/ads/bi;

    .line 226
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aeh;->J:Lcom/google/android/gms/internal/ads/bg;

    const-string v2, "aes2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ay;->a(Lcom/google/android/gms/internal/ads/bi;Lcom/google/android/gms/internal/ads/bg;[Ljava/lang/String;)Z

    .line 228
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->L:Lcom/google/android/gms/internal/ads/bf;

    .line 9018
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bf;->b:Lcom/google/android/gms/internal/ads/bi;

    .line 228
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ay;->a(Lcom/google/android/gms/internal/ads/bi;)Lcom/google/android/gms/internal/ads/bg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->I:Lcom/google/android/gms/internal/ads/bg;

    .line 229
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aeh;->L:Lcom/google/android/gms/internal/ads/bf;

    const-string v2, "native:view_show"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/bf;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/bg;)V

    .line 230
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 231
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aeh;->d:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbar;->zzbrz:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onshow"

    .line 232
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/aeh;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final v()V
    .locals 3

    .line 234
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 235
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzla()Lcom/google/android/gms/ads/internal/util/zzae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/util/zzae;->zzrh()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_muted"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzla()Lcom/google/android/gms/ads/internal/util/zzae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/util/zzae;->zzrg()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_volume"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aeh;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzae;->zzbj(Landroid/content/Context;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_volume"

    .line 239
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "volume"

    .line 240
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/aeh;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final w()Landroid/content/Context;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->a:Lcom/google/android/gms/internal/ads/afi;

    .line 14016
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/afi;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final declared-synchronized x()Lcom/google/android/gms/ads/internal/overlay/zze;
    .locals 1

    monitor-enter p0

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->n:Lcom/google/android/gms/ads/internal/overlay/zze;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized y()Lcom/google/android/gms/ads/internal/overlay/zze;
    .locals 1

    monitor-enter p0

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->Q:Lcom/google/android/gms/ads/internal/overlay/zze;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized z()Lcom/google/android/gms/internal/ads/afh;
    .locals 1

    monitor-enter p0

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->p:Lcom/google/android/gms/internal/ads/afh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzkr()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 557
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aeh;->y:Z

    .line 558
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->e:Lcom/google/android/gms/ads/internal/zzm;

    if-eqz v0, :cond_0

    .line 559
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzm;->zzkr()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzks()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 561
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aeh;->y:Z

    .line 562
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aeh;->e:Lcom/google/android/gms/ads/internal/zzm;

    if-eqz v0, :cond_0

    .line 563
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzm;->zzks()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
