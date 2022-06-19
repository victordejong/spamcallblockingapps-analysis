.class final Lcom/google/android/gms/internal/ads/zzber;
.super Landroid/webkit/WebView;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/webkit/DownloadListener;
.implements Lcom/google/android/gms/internal/ads/zzbeb;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private maxHeight:I

.field private maxWidth:I

.field private zzacy:Ljava/lang/String;

.field private final zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

.field private final zzbre:Landroid/view/WindowManager;

.field private zzbvt:I

.field private zzdqi:I

.field private zzdqj:I

.field private zzdsx:Z

.field private zzdun:Ljava/lang/String;

.field private zzecg:Ljava/lang/Boolean;

.field private zzemp:Lcom/google/android/gms/internal/ads/zzaca;

.field private final zzeqv:Lcom/google/android/gms/internal/ads/zztu;

.field private final zzesl:Lcom/google/android/gms/internal/ads/zzbfr;

.field private final zzesm:Lcom/google/android/gms/internal/ads/zzei;

.field private final zzesn:Lcom/google/android/gms/internal/ads/zzacq;

.field private final zzeso:Lcom/google/android/gms/ads/internal/zzm;

.field private final zzesp:Lcom/google/android/gms/ads/internal/zzb;

.field private final zzesq:F

.field private zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

.field private zzess:Lcom/google/android/gms/internal/ads/zzdnb;

.field private zzest:Z

.field private zzesu:Z

.field private zzesv:Lcom/google/android/gms/internal/ads/zzbee;

.field private zzesw:Lcom/google/android/gms/ads/internal/overlay/zzc;

.field private zzesx:Lcom/google/android/gms/dynamic/IObjectWrapper;

.field private zzesy:Lcom/google/android/gms/internal/ads/zzbft;

.field private zzesz:Z

.field private zzeta:Z

.field private zzetb:Z

.field private zzetc:I

.field private zzetd:Z

.field private zzete:Z

.field private zzetf:Lcom/google/android/gms/internal/ads/zzbev;

.field private zzetg:Z

.field private zzeth:Z

.field private zzeti:Lcom/google/android/gms/internal/ads/zzaef;

.field private zzetj:Lcom/google/android/gms/internal/ads/zzaea;

.field private zzetk:Lcom/google/android/gms/internal/ads/zzsh;

.field private zzetl:I

.field private zzetm:I

.field private zzetn:Lcom/google/android/gms/internal/ads/zzaca;

.field private zzeto:Lcom/google/android/gms/internal/ads/zzaca;

.field private zzetp:Lcom/google/android/gms/internal/ads/zzacd;

.field private zzetq:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzetr:Lcom/google/android/gms/ads/internal/overlay/zzc;

.field private zzets:Z

.field private zzett:Lcom/google/android/gms/ads/internal/util/zzbz;

.field private zzetu:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzbdd;",
            ">;"
        }
    .end annotation
.end field

.field private final zzwz:Landroid/util/DisplayMetrics;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbfr;Lcom/google/android/gms/internal/ads/zzbft;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzei;Lcom/google/android/gms/internal/ads/zzacq;Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/internal/ads/zzacc;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zztu;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzdnb;)V
    .locals 8

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p8

    .line 3
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 4
    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzber;->zzest:Z

    .line 5
    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzber;->zzesu:Z

    const/4 v5, 0x1

    .line 6
    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzber;->zzetd:Z

    .line 7
    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzber;->zzete:Z

    const-string v0, ""

    .line 8
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzber;->zzdun:Ljava/lang/String;

    const/4 v0, -0x1

    .line 9
    iput v0, v1, Lcom/google/android/gms/internal/ads/zzber;->zzdqj:I

    .line 10
    iput v0, v1, Lcom/google/android/gms/internal/ads/zzber;->zzdqi:I

    .line 11
    iput v0, v1, Lcom/google/android/gms/internal/ads/zzber;->maxWidth:I

    .line 12
    iput v0, v1, Lcom/google/android/gms/internal/ads/zzber;->maxHeight:I

    .line 13
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzber;->zzesl:Lcom/google/android/gms/internal/ads/zzbfr;

    move-object v6, p2

    .line 14
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzber;->zzesy:Lcom/google/android/gms/internal/ads/zzbft;

    move-object v6, p3

    .line 15
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzber;->zzacy:Ljava/lang/String;

    move v6, p4

    .line 16
    iput-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzber;->zzeta:Z

    .line 17
    iput v0, v1, Lcom/google/android/gms/internal/ads/zzber;->zzetc:I

    move-object v0, p6

    .line 18
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzber;->zzesm:Lcom/google/android/gms/internal/ads/zzei;

    move-object v0, p7

    .line 19
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzber;->zzesn:Lcom/google/android/gms/internal/ads/zzacq;

    .line 20
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzber;->zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

    move-object/from16 v0, p10

    .line 21
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzber;->zzeso:Lcom/google/android/gms/ads/internal/zzm;

    move-object/from16 v0, p11

    .line 22
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzber;->zzesp:Lcom/google/android/gms/ads/internal/zzb;

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v6, "window"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzber;->zzbre:Landroid/view/WindowManager;

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zza(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzber;->zzwz:Landroid/util/DisplayMetrics;

    .line 25
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzber;->zzesq:F

    move-object/from16 v0, p12

    .line 26
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzber;->zzeqv:Lcom/google/android/gms/internal/ads/zztu;

    move-object/from16 v0, p13

    .line 27
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzber;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    move-object/from16 v0, p14

    .line 28
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzber;->zzess:Lcom/google/android/gms/internal/ads/zzdnb;

    .line 29
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzber;->setBackgroundColor(I)V

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->getSettings()Landroid/webkit/WebSettings;

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
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v0

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzazn;->zzbrp:Ljava/lang/String;

    .line 42
    invoke-virtual {v0, p1, v3}, Lcom/google/android/gms/ads/internal/util/zzj;->zzq(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkt()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Lcom/google/android/gms/ads/internal/util/zzr;->zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    .line 44
    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/ads/zzber;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 45
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzber;->zzaee()V

    .line 46
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbez;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbfc;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzbfc;-><init>(Lcom/google/android/gms/internal/ads/zzbeb;)V

    invoke-direct {v0, p0, v3}, Lcom/google/android/gms/internal/ads/zzbez;-><init>(Lcom/google/android/gms/internal/ads/zzbfd;Lcom/google/android/gms/internal/ads/zzbfe;)V

    const-string v3, "googleAdsJsInterface"

    .line 49
    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/internal/ads/zzber;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    const-string v0, "accessibility"

    .line 50
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzber;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibilityTraversal"

    .line 51
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzber;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzbz;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzber;->zzesl:Lcom/google/android/gms/internal/ads/zzbfr;

    .line 53
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbfr;->zzabe()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, p0, p0, v4}, Lcom/google/android/gms/ads/internal/util/zzbz;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzber;->zzett:Lcom/google/android/gms/ads/internal/util/zzbz;

    .line 55
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzber;->zzaei()V

    .line 56
    new-instance v0, Lcom/google/android/gms/internal/ads/zzacd;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzacc;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzber;->zzacy:Ljava/lang/String;

    const-string v7, "make_wv"

    invoke-direct {v3, v5, v7, v6}, Lcom/google/android/gms/internal/ads/zzacc;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzacd;-><init>(Lcom/google/android/gms/internal/ads/zzacc;)V

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzber;->zzetp:Lcom/google/android/gms/internal/ads/zzacd;

    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzacd;->zzsp()Lcom/google/android/gms/internal/ads/zzacc;

    move-result-object v0

    move-object/from16 v3, p9

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzacc;->zzc(Lcom/google/android/gms/internal/ads/zzacc;)V

    .line 58
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcrm:Lcom/google/android/gms/internal/ads/zzaba;

    .line 59
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzber;->zzess:Lcom/google/android/gms/internal/ads/zzdnb;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnb;->zzbvs:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzber;->zzetp:Lcom/google/android/gms/internal/ads/zzacd;

    .line 62
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzacd;->zzsp()Lcom/google/android/gms/internal/ads/zzacc;

    move-result-object v0

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzber;->zzess:Lcom/google/android/gms/internal/ads/zzdnb;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdnb;->zzbvs:Ljava/lang/String;

    const-string v5, "gqi"

    .line 63
    invoke-virtual {v0, v5, v3}, Lcom/google/android/gms/internal/ads/zzacc;->zzg(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzber;->zzetp:Lcom/google/android/gms/internal/ads/zzacd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzacd;->zzsp()Lcom/google/android/gms/internal/ads/zzacc;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabx;->zzb(Lcom/google/android/gms/internal/ads/zzacc;)Lcom/google/android/gms/internal/ads/zzaca;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzber;->zzemp:Lcom/google/android/gms/internal/ads/zzaca;

    .line 65
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzber;->zzetp:Lcom/google/android/gms/internal/ads/zzacd;

    const-string v5, "native:view_create"

    invoke-virtual {v3, v5, v0}, Lcom/google/android/gms/internal/ads/zzacd;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaca;)V

    .line 66
    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzber;->zzeto:Lcom/google/android/gms/internal/ads/zzaca;

    .line 67
    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzber;->zzetn:Lcom/google/android/gms/internal/ads/zzaca;

    .line 68
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkt()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzr;->zzbe(Landroid/content/Context;)V

    .line 69
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/internal/ads/zzayo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayo;->zzxp()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzber;)I
    .locals 0

    .line 682
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetm:I

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzber;I)I
    .locals 0

    .line 683
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetm:I

    return p1
.end method

.method private final zza(Ljava/lang/Boolean;)V
    .locals 1

    .line 176
    monitor-enter p0

    .line 177
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzecg:Ljava/lang/Boolean;

    .line 178
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/internal/ads/zzayo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzayo;->zza(Ljava/lang/Boolean;)V

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

.method private final declared-synchronized zza(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0
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

    .line 153
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzber;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 155
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V
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

.method static final synthetic zza(ZILcom/google/android/gms/internal/ads/zzug$zzi$zza;)V
    .locals 2

    .line 675
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzug$zzae;->zzpz()Lcom/google/android/gms/internal/ads/zzug$zzae$zza;

    move-result-object v0

    .line 676
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzug$zzae$zza;->zzpy()Z

    move-result v1

    if-eq v1, p0, :cond_0

    .line 677
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzug$zzae$zza;->zzw(Z)Lcom/google/android/gms/internal/ads/zzug$zzae$zza;

    .line 679
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzug$zzae$zza;->zzcu(I)Lcom/google/android/gms/internal/ads/zzug$zzae$zza;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbiw()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzelb;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzug$zzae;

    .line 680
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzug$zzi$zza;->zzb(Lcom/google/android/gms/internal/ads/zzug$zzae;)Lcom/google/android/gms/internal/ads/zzug$zzi$zza;

    return-void
.end method

.method private final zzaeb()Z
    .locals 10

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesv:Lcom/google/android/gms/internal/ads/zzbee;

    .line 80
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbee;->zzadp()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesv:Lcom/google/android/gms/internal/ads/zzbee;

    .line 82
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbee;->zzadq()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 84
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqn()Lcom/google/android/gms/internal/ads/zzaza;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzwz:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzaza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v4

    .line 85
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqn()Lcom/google/android/gms/internal/ads/zzaza;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzwz:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzaza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v5

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesl:Lcom/google/android/gms/internal/ads/zzbfr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfr;->zzabe()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 89
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzf(Landroid/app/Activity;)[I

    move-result-object v0

    .line 93
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqn()Lcom/google/android/gms/internal/ads/zzaza;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzber;->zzwz:Landroid/util/DisplayMetrics;

    aget v6, v0, v1

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/zzaza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v3

    .line 94
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqn()Lcom/google/android/gms/internal/ads/zzaza;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzber;->zzwz:Landroid/util/DisplayMetrics;

    aget v0, v0, v2

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzaza;->zzb(Landroid/util/DisplayMetrics;I)I

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
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzdqi:I

    if-ne v0, v4, :cond_3

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzber;->zzdqj:I

    if-ne v3, v5, :cond_3

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzber;->maxWidth:I

    if-ne v3, v6, :cond_3

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzber;->maxHeight:I

    if-ne v3, v7, :cond_3

    return v1

    :cond_3
    if-ne v0, v4, :cond_4

    .line 97
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzdqj:I

    if-eq v0, v5, :cond_5

    :cond_4
    const/4 v1, 0x1

    .line 98
    :cond_5
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzber;->zzdqi:I

    .line 99
    iput v5, p0, Lcom/google/android/gms/internal/ads/zzber;->zzdqj:I

    .line 100
    iput v6, p0, Lcom/google/android/gms/internal/ads/zzber;->maxWidth:I

    .line 101
    iput v7, p0, Lcom/google/android/gms/internal/ads/zzber;->maxHeight:I

    .line 102
    new-instance v3, Lcom/google/android/gms/internal/ads/zzaqq;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzaqq;-><init>(Lcom/google/android/gms/internal/ads/zzbeb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzwz:Landroid/util/DisplayMetrics;

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzbre:Landroid/view/WindowManager;

    .line 103
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v9

    .line 104
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzaqq;->zza(IIIIFI)V

    return v1
.end method

.method private final declared-synchronized zzaec()V
    .locals 2

    monitor-enter p0

    .line 167
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/internal/ads/zzayo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayo;->zzxn()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzecg:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "(function(){})()"

    const/4 v1, 0x0

    .line 170
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzber;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const/4 v0, 0x1

    .line 171
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzber;->zza(Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    :catch_0
    const/4 v0, 0x0

    .line 174
    :try_start_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzber;->zza(Ljava/lang/Boolean;)V
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

.method private final zzaed()V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetp:Lcom/google/android/gms/internal/ads/zzacd;

    .line 221
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzacd;->zzsp()Lcom/google/android/gms/internal/ads/zzacc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzemp:Lcom/google/android/gms/internal/ads/zzaca;

    const-string v2, "aeh2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzabx;->zza(Lcom/google/android/gms/internal/ads/zzacc;Lcom/google/android/gms/internal/ads/zzaca;[Ljava/lang/String;)Z

    return-void
.end method

.method private final declared-synchronized zzaee()V
    .locals 2

    monitor-enter p0

    .line 463
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzeta:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesy:Lcom/google/android/gms/internal/ads/zzbft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbft;->zzaeo()Z

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
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdy(Ljava/lang/String;)V

    .line 468
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzber;->zzaef()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "Enabling hardware acceleration on an AdView."

    .line 469
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdy(Ljava/lang/String;)V

    .line 470
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzber;->zzaeg()V
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
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdy(Ljava/lang/String;)V

    .line 465
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzber;->zzaeg()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized zzaef()V
    .locals 2

    monitor-enter p0

    .line 472
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetb:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 473
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzber;->setLayerType(ILandroid/graphics/Paint;)V

    .line 474
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetb:Z
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

.method private final declared-synchronized zzaeg()V
    .locals 2

    monitor-enter p0

    .line 476
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetb:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 477
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzber;->setLayerType(ILandroid/graphics/Paint;)V

    .line 478
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetb:Z
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

.method private final declared-synchronized zzaeh()V
    .locals 2

    monitor-enter p0

    .line 565
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetu:Ljava/util/Map;

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

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbdd;

    .line 567
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbdd;->release()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 569
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetu:Ljava/util/Map;
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

.method private final zzaei()V
    .locals 2

    .line 613
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetp:Lcom/google/android/gms/internal/ads/zzacd;

    if-nez v0, :cond_0

    return-void

    .line 615
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzacd;->zzsp()Lcom/google/android/gms/internal/ads/zzacc;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 616
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/internal/ads/zzayo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayo;->zzxm()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 617
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/internal/ads/zzayo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayo;->zzxm()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabs;->zza(Lcom/google/android/gms/internal/ads/zzacc;)Z

    :cond_1
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzber;)V
    .locals 0

    .line 684
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method private final zzbe(Z)V
    .locals 2

    .line 646
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v1, "isVisible"

    .line 647
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onAdVisibilityChanged"

    .line 648
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzber;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbft;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzei;Lcom/google/android/gms/internal/ads/zzacq;Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/internal/ads/zzacc;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zztu;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzdnb;)Lcom/google/android/gms/internal/ads/zzber;
    .locals 16

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbfr;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbfr;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v15, Lcom/google/android/gms/internal/ads/zzber;

    move-object v0, v15

    move-object/from16 v2, p1

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

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/ads/zzber;-><init>(Lcom/google/android/gms/internal/ads/zzbfr;Lcom/google/android/gms/internal/ads/zzbft;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzei;Lcom/google/android/gms/internal/ads/zzacq;Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/internal/ads/zzacc;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zztu;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzdnb;)V

    return-object v15
.end method

.method private final declared-synchronized zzfk(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzber;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 122
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V
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

.method private final declared-synchronized zzfl(Ljava/lang/String;)V
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
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/internal/ads/zzayo;

    move-result-object v0

    const-string v1, "AdWebViewImpl.loadUrlUnsafe"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzayo;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

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

.method private final zzfm(Ljava/lang/String;)V
    .locals 2

    .line 157
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKat()Z

    move-result v0

    const-string v1, "javascript:"

    if-eqz v0, :cond_3

    .line 158
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzber;->zzxn()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzber;->zzaec()V

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzber;->zzxn()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 161
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzber;->zza(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

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
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzber;->zzfk(Ljava/lang/String;)V

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
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzber;->zzfk(Ljava/lang/String;)V

    return-void
.end method

.method private final declared-synchronized zzxn()Ljava/lang/Boolean;
    .locals 1

    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzecg:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized zzxq()V
    .locals 1

    monitor-enter p0

    .line 512
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzets:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 513
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzets:Z

    .line 514
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/internal/ads/zzayo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayo;->zzxq()V
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


# virtual methods
.method public final declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    .line 480
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzber;->zzaei()V

    .line 481
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzett:Lcom/google/android/gms/ads/internal/util/zzbz;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzzt()V

    .line 482
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesw:Lcom/google/android/gms/ads/internal/overlay/zzc;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->close()V

    .line 484
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesw:Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->onDestroy()V

    .line 485
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesw:Lcom/google/android/gms/ads/internal/overlay/zzc;

    .line 486
    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesx:Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 487
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesv:Lcom/google/android/gms/internal/ads/zzbee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbee;->reset()V

    .line 488
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesz:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 489
    monitor-exit p0

    return-void

    .line 490
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzln()Lcom/google/android/gms/internal/ads/zzbde;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbde;->zzc(Lcom/google/android/gms/internal/ads/zzbbo;)Z

    .line 491
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzber;->zzaeh()V

    const/4 v0, 0x1

    .line 492
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesz:Z

    const-string v0, "Initiating WebView self destruct sequence in 3..."

    .line 493
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    const-string v0, "Loading blank page in WebView, 2..."

    .line 494
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    const-string v0, "about:blank"

    .line 495
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzber;->zzfl(Ljava/lang/String;)V
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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 114
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

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
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesz:Z

    if-nez v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesv:Lcom/google/android/gms/internal/ads/zzbee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbee;->reset()V

    .line 500
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzln()Lcom/google/android/gms/internal/ads/zzbde;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbde;->zzc(Lcom/google/android/gms/internal/ads/zzbbo;)Z

    .line 501
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzber;->zzaeh()V

    .line 502
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzber;->zzxq()V

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

.method public final declared-synchronized getRequestId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 578
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzdun:Ljava/lang/String;
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

    return-object p0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .locals 0

    return-object p0
.end method

.method public final declared-synchronized isDestroyed()Z
    .locals 1

    monitor-enter p0

    .line 516
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesz:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 139
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->isDestroyed()Z

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
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V
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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->isDestroyed()Z

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
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V
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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->isDestroyed()Z

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
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/internal/ads/zzayo;

    move-result-object v0

    const-string v1, "AdWebViewImpl.loadUrl"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzayo;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

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
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V
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

.method public final onAdClicked()V
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesv:Lcom/google/android/gms/internal/ads/zzbee;

    if-eqz v0, :cond_0

    .line 667
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbee;->onAdClicked()V

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzett:Lcom/google/android/gms/ads/internal/util/zzbz;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbz;->onAttachedToWindow()V

    .line 411
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetg:Z

    .line 413
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesv:Lcom/google/android/gms/internal/ads/zzbee;

    .line 414
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbee;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 416
    check-cast v1, Lcom/google/android/gms/internal/ads/zzbee;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbee;->zzadq()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 418
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzeth:Z

    if-nez v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesv:Lcom/google/android/gms/internal/ads/zzbee;

    .line 421
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbee;->zzads()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 423
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesv:Lcom/google/android/gms/internal/ads/zzbee;

    .line 424
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbee;->zzadt()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 425
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzber;->zzeth:Z

    .line 426
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzber;->zzaeb()Z

    const/4 v0, 0x1

    .line 427
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzber;->zzbe(Z)V
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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzett:Lcom/google/android/gms/ads/internal/util/zzbz;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbz;->onDetachedFromWindow()V

    .line 432
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 433
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzeth:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesv:Lcom/google/android/gms/internal/ads/zzbee;

    .line 435
    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbee;

    if-eqz v2, :cond_1

    .line 437
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbee;->zzadq()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 439
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesv:Lcom/google/android/gms/internal/ads/zzbee;

    .line 442
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbee;->zzads()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 444
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesv:Lcom/google/android/gms/internal/ads/zzbee;

    .line 445
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbee;->zzadt()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 446
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzeth:Z

    .line 447
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzber;->zzbe(Z)V

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
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->getContext()Landroid/content/Context;

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

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdy(Ljava/lang/String;)V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 517
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->isDestroyed()Z

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->isAttachedToWindow()Z

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
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzber;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    const/4 v4, 0x1

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 285
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzber;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    cmpl-float v0, v1, v3

    if-lez v0, :cond_2

    .line 286
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzber;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    cmpg-float v0, v1, v3

    if-gez v0, :cond_4

    .line 287
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzber;->canScrollHorizontally(I)Z

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
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzber;->zzaeb()Z

    move-result v0

    .line 385
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->zzact()Lcom/google/android/gms/ads/internal/overlay/zzc;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzwa()V

    :cond_0
    return-void
.end method

.method protected final declared-synchronized onMeasure(II)V
    .locals 7

    monitor-enter p0

    .line 290
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p0, v1, v1}, Lcom/google/android/gms/internal/ads/zzber;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    monitor-exit p0

    return-void

    .line 293
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzeta:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesy:Lcom/google/android/gms/internal/ads/zzbft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbft;->zzaep()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_9

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesy:Lcom/google/android/gms/internal/ads/zzbft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbft;->zzaer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    .line 299
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesy:Lcom/google/android/gms/internal/ads/zzbft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbft;->zzaeq()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 300
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcti:Lcom/google/android/gms/internal/ads/zzaba;

    .line 301
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 302
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 303
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 304
    monitor-exit p0

    return-void

    .line 306
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->zzabc()Lcom/google/android/gms/internal/ads/zzbev;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 308
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbev;->getAspectRatio()F

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    cmpl-float v1, v0, v1

    if-nez v1, :cond_5

    .line 310
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 311
    monitor-exit p0

    return-void

    .line 312
    :cond_5
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

    if-nez p2, :cond_6

    if-eqz v2, :cond_6

    int-to-float p2, v2

    mul-float p2, p2, v0

    float-to-int v1, p2

    move p2, v2

    goto :goto_1

    :cond_6
    if-nez p1, :cond_7

    if-eqz v1, :cond_7

    int-to-float p1, v1

    div-float/2addr p1, v0

    float-to-int v2, p1

    move p1, v1

    .line 322
    :cond_7
    :goto_1
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 323
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 324
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzber;->setMeasuredDimension(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 325
    monitor-exit p0

    return-void

    .line 326
    :cond_8
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesy:Lcom/google/android/gms/internal/ads/zzbft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbft;->isFluid()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 327
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzctl:Lcom/google/android/gms/internal/ads/zzaba;

    .line 328
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 329
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR1()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    const-string v0, "/contentHeight"

    .line 333
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbet;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbet;-><init>(Lcom/google/android/gms/internal/ads/zzber;)V

    .line 334
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzber;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    const-string v0, "(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = \'gmsg://mobileads.google.com/contentHeight?\';  url += \'height=\' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById(\'afma-notify-fluid\');    if (!frame) {      frame = document.createElement(\'IFRAME\');      frame.id = \'afma-notify-fluid\';      frame.style.display = \'none\';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();"

    .line 336
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzber;->zzfm(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzwz:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 338
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 339
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetm:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    int-to-float p2, v1

    mul-float p2, p2, v0

    float-to-int p2, p2

    goto :goto_2

    .line 340
    :cond_a
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 343
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzber;->setMeasuredDimension(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 344
    monitor-exit p0

    return-void

    .line 330
    :cond_b
    :goto_3
    :try_start_6
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 331
    monitor-exit p0

    return-void

    .line 345
    :cond_c
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesy:Lcom/google/android/gms/internal/ads/zzbft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbft;->zzaeo()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 346
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzwz:Landroid/util/DisplayMetrics;

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzber;->zzwz:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzber;->setMeasuredDimension(II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 347
    monitor-exit p0

    return-void

    .line 348
    :cond_d
    :try_start_8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 349
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 350
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 351
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    if-eq v0, v4, :cond_f

    if-ne v0, v3, :cond_e

    goto :goto_4

    :cond_e
    const v0, 0x7fffffff

    goto :goto_5

    :cond_f
    :goto_4
    move v0, p1

    :goto_5
    if-eq v2, v4, :cond_10

    if-ne v2, v3, :cond_11

    :cond_10
    move v5, p2

    .line 359
    :cond_11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesy:Lcom/google/android/gms/internal/ads/zzbft;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbft;->widthPixels:I

    const/4 v3, 0x1

    if-gt v2, v0, :cond_13

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesy:Lcom/google/android/gms/internal/ads/zzbft;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbft;->heightPixels:I

    if-le v2, v5, :cond_12

    goto :goto_6

    :cond_12
    const/4 v2, 0x0

    goto :goto_7

    :cond_13
    :goto_6
    const/4 v2, 0x1

    .line 360
    :goto_7
    sget-object v4, Lcom/google/android/gms/internal/ads/zzabp;->zzcwg:Lcom/google/android/gms/internal/ads/zzaba;

    .line 361
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v4

    .line 362
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 363
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesy:Lcom/google/android/gms/internal/ads/zzbft;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzbft;->widthPixels:I

    int-to-float v4, v4

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesq:F

    div-float/2addr v4, v6

    int-to-float v0, v0

    div-float/2addr v0, v6

    cmpl-float v0, v4, v0

    if-gtz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesy:Lcom/google/android/gms/internal/ads/zzbft;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbft;->heightPixels:I

    int-to-float v0, v0

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesq:F

    div-float/2addr v0, v4

    int-to-float v5, v5

    div-float/2addr v5, v4

    cmpl-float v0, v0, v5

    if-gtz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_8

    :cond_14
    const/4 v0, 0x0

    :goto_8
    if-eqz v2, :cond_15

    move v2, v0

    :cond_15
    const/16 v0, 0x8

    if-eqz v2, :cond_17

    .line 370
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesy:Lcom/google/android/gms/internal/ads/zzbft;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbft;->widthPixels:I

    int-to-float v2, v2

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesq:F

    div-float/2addr v2, v4

    float-to-int v2, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesy:Lcom/google/android/gms/internal/ads/zzbft;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzbft;->heightPixels:I

    int-to-float v4, v4

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesq:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float p1, p1

    div-float/2addr p1, v5

    float-to-int p1, p1

    int-to-float p2, p2

    div-float/2addr p2, v5

    float-to-int p2, p2

    const/16 v5, 0x67

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Not enough space to show ad. Needs "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dp, but only has "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dp."

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_16

    const/4 p1, 0x4

    .line 372
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzber;->setVisibility(I)V

    .line 373
    :cond_16
    invoke-virtual {p0, v1, v1}, Lcom/google/android/gms/internal/ads/zzber;->setMeasuredDimension(II)V

    .line 374
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzest:Z

    if-nez p1, :cond_1a

    .line 375
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzeqv:Lcom/google/android/gms/internal/ads/zztu;

    sget-object p2, Lcom/google/android/gms/internal/ads/zztw$zza$zza;->zzbya:Lcom/google/android/gms/internal/ads/zztw$zza$zza;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zztu;->zza(Lcom/google/android/gms/internal/ads/zztw$zza$zza;)V

    .line 376
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzber;->zzest:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-void

    .line 377
    :cond_17
    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_18

    .line 378
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzber;->setVisibility(I)V

    .line 379
    :cond_18
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesu:Z

    if-nez p1, :cond_19

    .line 380
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzeqv:Lcom/google/android/gms/internal/ads/zztu;

    sget-object p2, Lcom/google/android/gms/internal/ads/zztw$zza$zza;->zzbyb:Lcom/google/android/gms/internal/ads/zztw$zza$zza;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zztu;->zza(Lcom/google/android/gms/internal/ads/zztw$zza$zza;)V

    .line 381
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesu:Z

    .line 382
    :cond_19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesy:Lcom/google/android/gms/internal/ads/zzbft;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbft;->widthPixels:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesy:Lcom/google/android/gms/internal/ads/zzbft;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzbft;->heightPixels:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzber;->setMeasuredDimension(II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 383
    :cond_1a
    monitor-exit p0

    return-void

    .line 294
    :cond_1b
    :goto_9
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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->isDestroyed()Z

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->isDestroyed()Z

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
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesv:Lcom/google/android/gms/internal/ads/zzbee;

    .line 266
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbee;->zzadq()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesv:Lcom/google/android/gms/internal/ads/zzbee;

    .line 268
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbee;->zzadr()Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    monitor-enter p0

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzeti:Lcom/google/android/gms/internal/ads/zzaef;

    if-eqz v0, :cond_0

    .line 271
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaef;->zzc(Landroid/view/MotionEvent;)V

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesm:Lcom/google/android/gms/internal/ads/zzei;

    if-eqz v0, :cond_2

    .line 274
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzei;->zza(Landroid/view/MotionEvent;)V

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesn:Lcom/google/android/gms/internal/ads/zzacq;

    if-eqz v0, :cond_3

    .line 276
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzacq;->zza(Landroid/view/MotionEvent;)V

    .line 277
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x0

    return p1

    .line 279
    :cond_4
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 596
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetq:Ljava/lang/ref/WeakReference;

    .line 597
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final declared-synchronized setRequestedOrientation(I)V
    .locals 1

    monitor-enter p0

    .line 457
    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetc:I

    .line 458
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesw:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->setRequestedOrientation(I)V
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
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbee;

    if-eqz v0, :cond_0

    .line 73
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbee;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesv:Lcom/google/android/gms/internal/ads/zzbee;

    :cond_0
    return-void
.end method

.method public final stopLoading()V
    .locals 2

    .line 547
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->isDestroyed()Z

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

.method public final declared-synchronized zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .locals 0

    monitor-enter p0

    .line 389
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesw:Lcom/google/android/gms/ads/internal/overlay/zzc;
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

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)V
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesv:Lcom/google/android/gms/internal/ads/zzbee;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/util/zzbg;Lcom/google/android/gms/internal/ads/zzcqr;Lcom/google/android/gms/internal/ads/zzckn;Lcom/google/android/gms/internal/ads/zzdrz;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .line 639
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesv:Lcom/google/android/gms/internal/ads/zzbee;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Lcom/google/android/gms/ads/internal/util/zzbg;Lcom/google/android/gms/internal/ads/zzcqr;Lcom/google/android/gms/internal/ads/zzckn;Lcom/google/android/gms/internal/ads/zzdrz;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzaea;)V
    .locals 0

    monitor-enter p0

    .line 589
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetj:Lcom/google/android/gms/internal/ads/zzaea;
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

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzaef;)V
    .locals 0

    monitor-enter p0

    .line 599
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzeti:Lcom/google/android/gms/internal/ads/zzaef;
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

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzbev;)V
    .locals 1

    monitor-enter p0

    .line 603
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetf:Lcom/google/android/gms/internal/ads/zzbev;

    if-eqz v0, :cond_0

    const-string p1, "Attempt to create multiple AdWebViewVideoControllers."

    .line 604
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzev(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    monitor-exit p0

    return-void

    .line 606
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetf:Lcom/google/android/gms/internal/ads/zzbev;
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

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzbft;)V
    .locals 0

    monitor-enter p0

    .line 395
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesy:Lcom/google/android/gms/internal/ads/zzbft;

    .line 396
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->requestLayout()V
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

.method public final zza(Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzdnb;)V
    .locals 0

    .line 669
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    .line 670
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzber;->zzess:Lcom/google/android/gms/internal/ads/zzdnb;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzqx;)V
    .locals 1

    .line 641
    monitor-enter p0

    .line 642
    :try_start_0
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzqx;->zzbrj:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetg:Z

    .line 643
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzqx;->zzbrj:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzber;->zzbe(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 643
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzsh;)V
    .locals 0

    monitor-enter p0

    .line 591
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetk:Lcom/google/android/gms/internal/ads/zzsh;
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

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/common/util/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/util/Predicate<",
            "Lcom/google/android/gms/internal/ads/zzaif<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbeb;",
            ">;>;)V"
        }
    .end annotation

    .line 656
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesv:Lcom/google/android/gms/internal/ads/zzbee;

    if-eqz v0, :cond_0

    .line 657
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Ljava/lang/String;Lcom/google/android/gms/common/util/Predicate;)V

    :cond_0
    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaif<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbeb;",
            ">;)V"
        }
    .end annotation

    .line 650
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesv:Lcom/google/android/gms/internal/ads/zzbee;

    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdd;)V
    .locals 1

    monitor-enter p0

    .line 571
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetu:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 572
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetu:Ljava/util/Map;

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetu:Ljava/util/Map;

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

.method public final zza(Ljava/lang/String;Ljava/util/Map;)V
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
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzj(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzber;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_0
    const-string p1, "Could not convert parameters to JSON."

    .line 109
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdy(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzber;->zzfm(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;)V
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesv:Lcom/google/android/gms/internal/ads/zzbee;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbee;->zza(ZILjava/lang/String;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesv:Lcom/google/android/gms/internal/ads/zzbee;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzbee;->zza(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zza(ZJ)V
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
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzber;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzabb()Lcom/google/android/gms/internal/ads/zzbbd;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzabc()Lcom/google/android/gms/internal/ads/zzbev;
    .locals 1

    monitor-enter p0

    .line 602
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetf:Lcom/google/android/gms/internal/ads/zzbev;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzabd()Lcom/google/android/gms/internal/ads/zzaca;
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzemp:Lcom/google/android/gms/internal/ads/zzaca;

    return-object v0
.end method

.method public final zzabe()Landroid/app/Activity;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesl:Lcom/google/android/gms/internal/ads/zzbfr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfr;->zzabe()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final zzabf()Lcom/google/android/gms/ads/internal/zzb;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesp:Lcom/google/android/gms/ads/internal/zzb;

    return-object v0
.end method

.method public final declared-synchronized zzabg()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 579
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzess:Lcom/google/android/gms/internal/ads/zzdnb;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnb;->zzbvs:Ljava/lang/String;
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

.method public final declared-synchronized zzabh()I
    .locals 1

    monitor-enter p0

    .line 584
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzbvt:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzabi()Lcom/google/android/gms/internal/ads/zzacd;
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetp:Lcom/google/android/gms/internal/ads/zzacd;

    return-object v0
.end method

.method public final zzabj()Lcom/google/android/gms/internal/ads/zzazn;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

    return-object v0
.end method

.method public final zzabk()I
    .locals 1

    .line 629
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public final zzabl()I
    .locals 1

    .line 630
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public final declared-synchronized zzabm()V
    .locals 1

    monitor-enter p0

    .line 586
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetj:Lcom/google/android/gms/internal/ads/zzaea;

    if-eqz v0, :cond_0

    .line 587
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaea;->zzth()V
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

.method public final zzacp()Lcom/google/android/gms/internal/ads/zzdmw;
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    return-object v0
.end method

.method public final zzacq()V
    .locals 3

    .line 202
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzber;->zzaed()V

    .line 203
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 204
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzazn;->zzbrp:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    .line 205
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzber;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzacr()V
    .locals 3

    .line 234
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 235
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkw()Lcom/google/android/gms/ads/internal/util/zzae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/util/zzae;->zzrb()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_muted"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkw()Lcom/google/android/gms/ads/internal/util/zzae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/util/zzae;->zzra()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_volume"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzae;->zzbg(Landroid/content/Context;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_volume"

    .line 239
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "volume"

    .line 240
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzber;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzacs()Landroid/content/Context;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesl:Lcom/google/android/gms/internal/ads/zzbfr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfr;->zzacs()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized zzact()Lcom/google/android/gms/ads/internal/overlay/zzc;
    .locals 1

    monitor-enter p0

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesw:Lcom/google/android/gms/ads/internal/overlay/zzc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzacu()Lcom/google/android/gms/ads/internal/overlay/zzc;
    .locals 1

    monitor-enter p0

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetr:Lcom/google/android/gms/ads/internal/overlay/zzc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzacv()Lcom/google/android/gms/internal/ads/zzbft;
    .locals 1

    monitor-enter p0

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesy:Lcom/google/android/gms/internal/ads/zzbft;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzacw()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzacy:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic zzacx()Lcom/google/android/gms/internal/ads/zzbfn;
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesv:Lcom/google/android/gms/internal/ads/zzbee;

    return-object v0
.end method

.method public final zzacy()Landroid/webkit/WebViewClient;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesv:Lcom/google/android/gms/internal/ads/zzbee;

    return-object v0
.end method

.method public final declared-synchronized zzacz()Z
    .locals 1

    monitor-enter p0

    .line 253
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzdsx:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzada()Lcom/google/android/gms/internal/ads/zzei;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesm:Lcom/google/android/gms/internal/ads/zzei;

    return-object v0
.end method

.method public final declared-synchronized zzadb()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    monitor-enter p0

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesx:Lcom/google/android/gms/dynamic/IObjectWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzadc()Z
    .locals 1

    monitor-enter p0

    .line 256
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzeta:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzadd()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "Destroying WebView!"

    .line 508
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    .line 509
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzber;->zzxq()V

    .line 510
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzeen:Lcom/google/android/gms/internal/ads/zzdvl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbew;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbew;-><init>(Lcom/google/android/gms/internal/ads/zzber;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvl;->post(Ljava/lang/Runnable;)Z
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

.method public final declared-synchronized zzade()Z
    .locals 1

    monitor-enter p0

    .line 556
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetd:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzadf()Z
    .locals 1

    monitor-enter p0

    .line 608
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetl:I
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

.method public final zzadg()V
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzett:Lcom/google/android/gms/ads/internal/util/zzbz;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzzs()V

    return-void
.end method

.method public final zzadh()V
    .locals 3

    .line 525
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzeto:Lcom/google/android/gms/internal/ads/zzaca;

    if-nez v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetp:Lcom/google/android/gms/internal/ads/zzacd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzacd;->zzsp()Lcom/google/android/gms/internal/ads/zzacc;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabx;->zzb(Lcom/google/android/gms/internal/ads/zzacc;)Lcom/google/android/gms/internal/ads/zzaca;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzeto:Lcom/google/android/gms/internal/ads/zzaca;

    .line 527
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetp:Lcom/google/android/gms/internal/ads/zzacd;

    const-string v2, "native:view_load"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzacd;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaca;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized zzadi()Lcom/google/android/gms/internal/ads/zzaef;
    .locals 1

    monitor-enter p0

    .line 601
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzeti:Lcom/google/android/gms/internal/ads/zzaef;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzadj()V
    .locals 1

    const/4 v0, 0x0

    .line 619
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzber;->setBackgroundColor(I)V

    return-void
.end method

.method public final zzadk()V
    .locals 1

    const-string v0, "Cannot add text view to inner AdWebView"

    .line 543
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized zzadl()Lcom/google/android/gms/internal/ads/zzsh;
    .locals 1

    monitor-enter p0

    .line 593
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetk:Lcom/google/android/gms/internal/ads/zzsh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzadm()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzadn()Lcom/google/android/gms/internal/ads/zzdnb;
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzess:Lcom/google/android/gms/internal/ads/zzdnb;

    return-object v0
.end method

.method public final declared-synchronized zzam(Z)V
    .locals 2

    monitor-enter p0

    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesw:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz v0, :cond_0

    .line 454
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesv:Lcom/google/android/gms/internal/ads/zzbee;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbee;->zzadp()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zza(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 455
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzdsx:Z
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

.method public final declared-synchronized zzaq(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    monitor-enter p0

    .line 391
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesx:Lcom/google/android/gms/dynamic/IObjectWrapper;
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

.method public final zzaw(Z)V
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesv:Lcom/google/android/gms/internal/ads/zzbee;

    .line 623
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbee;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbee;->zzaw(Z)V

    return-void
.end method

.method public final declared-synchronized zzay(Z)V
    .locals 2

    monitor-enter p0

    .line 398
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzeta:Z

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 399
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzeta:Z

    .line 400
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzber;->zzaee()V

    if-eqz v0, :cond_3

    .line 401
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcnt:Lcom/google/android/gms/internal/ads/zzaba;

    .line 402
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 403
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesy:Lcom/google/android/gms/internal/ads/zzbft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbft;->zzaeo()Z

    move-result v0

    if-nez v0, :cond_3

    .line 404
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaqq;-><init>(Lcom/google/android/gms/internal/ads/zzbeb;)V

    if-eqz p1, :cond_2

    const-string p1, "expanded"

    goto :goto_1

    :cond_2
    const-string p1, "default"

    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaqq;->zzdu(Ljava/lang/String;)V
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

.method public final declared-synchronized zzaz(Z)V
    .locals 0

    monitor-enter p0

    .line 554
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetd:Z
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

.method public final declared-synchronized zzb(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .locals 0

    monitor-enter p0

    .line 393
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetr:Lcom/google/android/gms/ads/internal/overlay/zzc;
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

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaif<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbeb;",
            ">;)V"
        }
    .end annotation

    .line 653
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesv:Lcom/google/android/gms/internal/ads/zzbee;

    if-eqz v0, :cond_0

    .line 654
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbee;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    monitor-enter p0

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 149
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbfk;->zzaek()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzbfk;->zzf(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

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
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V
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

.method public final zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzber;->zzfm(Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(ZI)Z
    .locals 2

    .line 659
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->destroy()V

    .line 660
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzeqv:Lcom/google/android/gms/internal/ads/zztu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbeu;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzbeu;-><init>(ZI)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zztu;->zza(Lcom/google/android/gms/internal/ads/zztx;)V

    .line 661
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzeqv:Lcom/google/android/gms/internal/ads/zztu;

    sget-object p2, Lcom/google/android/gms/internal/ads/zztw$zza$zza;->zzbyc:Lcom/google/android/gms/internal/ads/zztw$zza$zza;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zztu;->zza(Lcom/google/android/gms/internal/ads/zztw$zza$zza;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final declared-synchronized zzba(Z)V
    .locals 1

    monitor-enter p0

    .line 609
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetl:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetl:I

    if-gtz v0, :cond_1

    .line 610
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesw:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz p1, :cond_1

    .line 611
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzwd()V
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

.method public final zzbb(Z)V
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesv:Lcom/google/android/gms/internal/ads/zzbee;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbee;->zzbb(Z)V

    return-void
.end method

.method public final zzbv(Landroid/content/Context;)V
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesl:Lcom/google/android/gms/internal/ads/zzbfr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbfr;->setBaseContext(Landroid/content/Context;)V

    .line 451
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzett:Lcom/google/android/gms/ads/internal/util/zzbz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesl:Lcom/google/android/gms/internal/ads/zzbfr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfr;->zzabe()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzj(Landroid/app/Activity;)V

    return-void
.end method

.method public final zzc(ZI)V
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzesv:Lcom/google/android/gms/internal/ads/zzbee;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbee;->zzc(ZI)V

    return-void
.end method

.method public final zzcv(Ljava/lang/String;)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzber;->zzfm(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized zzdp(I)V
    .locals 0

    monitor-enter p0

    .line 582
    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzbvt:I
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

.method public final zzdu(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetp:Lcom/google/android/gms/internal/ads/zzacd;

    .line 210
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzacd;->zzsp()Lcom/google/android/gms/internal/ads/zzacc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzemp:Lcom/google/android/gms/internal/ads/zzaca;

    const-string v2, "aebb2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzabx;->zza(Lcom/google/android/gms/internal/ads/zzacc;Lcom/google/android/gms/internal/ads/zzaca;[Ljava/lang/String;)Z

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzber;->zzaed()V

    .line 213
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetp:Lcom/google/android/gms/internal/ads/zzacd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzacd;->zzsp()Lcom/google/android/gms/internal/ads/zzacc;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetp:Lcom/google/android/gms/internal/ads/zzacd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzacd;->zzsp()Lcom/google/android/gms/internal/ads/zzacc;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "close_type"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzacc;->zzg(Ljava/lang/String;Ljava/lang/String;)V

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
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzazn;->zzbrp:Ljava/lang/String;

    const-string v1, "version"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onhide"

    .line 218
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzber;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final declared-synchronized zzfc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbdd;
    .locals 1

    monitor-enter p0

    .line 575
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetu:Ljava/util/Map;
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

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbdd;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzkn()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 557
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzete:Z

    .line 558
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzeso:Lcom/google/android/gms/ads/internal/zzm;

    if-eqz v0, :cond_0

    .line 559
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzm;->zzkn()V
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

.method public final declared-synchronized zzko()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 561
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzete:Z

    .line 562
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzeso:Lcom/google/android/gms/ads/internal/zzm;

    if-eqz v0, :cond_0

    .line 563
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzm;->zzko()V
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

.method public final zzwb()V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetn:Lcom/google/android/gms/internal/ads/zzaca;

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetp:Lcom/google/android/gms/internal/ads/zzacd;

    .line 226
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzacd;->zzsp()Lcom/google/android/gms/internal/ads/zzacc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzemp:Lcom/google/android/gms/internal/ads/zzaca;

    const-string v2, "aes2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzabx;->zza(Lcom/google/android/gms/internal/ads/zzacc;Lcom/google/android/gms/internal/ads/zzaca;[Ljava/lang/String;)Z

    .line 228
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetp:Lcom/google/android/gms/internal/ads/zzacd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzacd;->zzsp()Lcom/google/android/gms/internal/ads/zzacc;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabx;->zzb(Lcom/google/android/gms/internal/ads/zzacc;)Lcom/google/android/gms/internal/ads/zzaca;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetn:Lcom/google/android/gms/internal/ads/zzaca;

    .line 229
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzetp:Lcom/google/android/gms/internal/ads/zzacd;

    const-string v2, "native:view_show"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzacd;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaca;)V

    .line 230
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 231
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzber;->zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzazn;->zzbrp:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onshow"

    .line 232
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzber;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzwc()V
    .locals 1

    .line 625
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->zzact()Lcom/google/android/gms/ads/internal/overlay/zzc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzwc()V

    :cond_0
    return-void
.end method
