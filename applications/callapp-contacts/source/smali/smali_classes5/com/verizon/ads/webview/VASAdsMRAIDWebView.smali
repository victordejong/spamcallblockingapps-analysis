.class public Lcom/verizon/ads/webview/VASAdsMRAIDWebView;
.super Lcom/verizon/ads/webview/VASAdsWebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;,
        Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeListener;,
        Lcom/verizon/ads/webview/VASAdsMRAIDWebView$TwoPartExpandWebView;,
        Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;,
        Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ScrollHandler;,
        Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;,
        Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ExpandParams;,
        Lcom/verizon/ads/webview/VASAdsMRAIDWebView$ResizeParams;,
        Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VASAdsMRAIDWebViewListener;
    }
.end annotation


# static fields
.field public static final MRAID_RESIZE_CLOSE_INDICATOR:Ljava/lang/String; = "MRAID_RESIZE_CLOSE_INDICATOR"

.field private static final a:Lcom/verizon/ads/Logger;

.field private static g:Lcom/verizon/ads/support/TimedMemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/verizon/ads/support/TimedMemoryCache<",
            "Lcom/verizon/ads/webview/VASAdsMRAIDWebView;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/regex/Pattern;


# instance fields
.field private final i:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;

.field private j:Z

.field private k:Z

.field private l:I

.field private m:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

.field private n:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

.field private o:Z

.field private p:F

.field private q:Landroid/graphics/Rect;

.field private r:Landroid/view/View;

.field private s:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;

.field private t:Landroid/view/ViewGroup;

.field private u:Landroid/view/ViewGroup$LayoutParams;

.field private v:Landroid/graphics/Rect;

.field private w:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    const-class v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->a:Lcom/verizon/ads/Logger;

    const-string v0, "<script\\s+[^>]*\\bsrc\\s*=\\s*([\\\"\\\'])mraid\\.js\\1[^>]*>\\s*</script\\s*>"

    const/4 v1, 0x2

    .line 77
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->h:Ljava/util/regex/Pattern;

    .line 81
    new-instance v0, Lcom/verizon/ads/support/TimedMemoryCache;

    invoke-direct {v0}, Lcom/verizon/ads/support/TimedMemoryCache;-><init>()V

    sput-object v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->g:Lcom/verizon/ads/support/TimedMemoryCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/verizon/ads/webview/VASAdsMRAIDWebView$VASAdsMRAIDWebViewListener;)V
    .locals 2

    .line 1414
    invoke-direct {p0, p1, p3}, Lcom/verizon/ads/webview/VASAdsWebView;-><init>(Landroid/content/Context;Lcom/verizon/ads/webview/VASAdsWebView$VASAdsWebViewListener;)V

    const/4 p3, 0x1

    .line 85
    iput-boolean p3, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->j:Z

    const/4 p3, 0x0

    .line 91
    iput-boolean p3, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->o:Z

    .line 1416
    iput-boolean p2, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->k:Z

    .line 1417
    invoke-virtual {p0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->l:I

    .line 1419
    new-instance v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    invoke-direct {v0, p0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;-><init>(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)V

    iput-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->m:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    const-string v1, "MmInjectedFunctionsMraid"

    .line 1421
    invoke-virtual {p0, v0, v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1423
    new-instance v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$1;

    invoke-direct {v0, p0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$1;-><init>(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)V

    invoke-virtual {p0, v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1444
    new-instance v0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    iget-object v1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->m:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    invoke-direct {v0, p0, v1}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/verizon/ads/support/utils/ViewabilityWatcher$ViewabilityListener;)V

    iput-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->n:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    .line 1445
    invoke-virtual {v0}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->startWatching()V

    .line 1447
    new-instance v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;

    iget-object v1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->m:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    invoke-direct {v0, p1, v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;-><init>(Landroid/content/Context;Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeListener;)V

    iput-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->i:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;

    if-eqz p2, :cond_0

    .line 1451
    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->r:Landroid/view/View;

    .line 1452
    check-cast p1, Landroid/widget/ImageView;

    sget p2, Lcom/verizon/ads/webview/R$drawable;->mraid_close:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1455
    :cond_0
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->r:Landroid/view/View;

    const/16 p2, 0x8

    .line 1457
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1460
    :goto_0
    iget-object p1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->r:Landroid/view/View;

    const-string p2, "MRAID_RESIZE_CLOSE_INDICATOR"

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1461
    iget-object p1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->r:Landroid/view/View;

    new-instance p2, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$2;

    invoke-direct {p2, p0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$2;-><init>(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1469
    invoke-virtual {p0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/verizon/ads/webview/R$dimen;->close_region_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 1470
    invoke-virtual {p0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/verizon/ads/webview/R$dimen;->close_region_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    .line 1471
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->r:Landroid/view/View;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, p1, p2, p3, p3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;F)F
    .locals 0

    .line 68
    iput p1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->p:F

    return p1
.end method

.method static synthetic a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;I)I
    .locals 0

    .line 68
    iput p1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->l:I

    return p1
.end method

.method static synthetic a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->w:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->v:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->u:Landroid/view/ViewGroup$LayoutParams;

    return-object p1
.end method

.method static synthetic a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->t:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->m:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    return-object p0
.end method

.method static synthetic a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;)Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->s:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;

    return-object p1
.end method

.method static synthetic a(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 12787
    :cond_1
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->q:Landroid/graphics/Rect;

    return-object p1
.end method

.method static b(Ljava/lang/String;)Lcom/verizon/ads/webview/VASAdsMRAIDWebView;
    .locals 1

    .line 1750
    sget-object v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->g:Lcom/verizon/ads/support/TimedMemoryCache;

    invoke-virtual {v0, p0}, Lcom/verizon/ads/support/TimedMemoryCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    return-object p0
.end method

.method static synthetic b(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->k:Z

    return p0
.end method

.method static synthetic c(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Landroid/view/ViewGroup;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->t:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic d(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Landroid/graphics/PointF;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->w:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic e(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->u:Landroid/view/ViewGroup$LayoutParams;

    return-object p0
.end method

.method static synthetic f(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Landroid/view/View;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->r:Landroid/view/View;

    return-object p0
.end method

.method static synthetic g()Lcom/verizon/ads/Logger;
    .locals 1

    .line 68
    sget-object v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->a:Lcom/verizon/ads/Logger;

    return-object v0
.end method

.method static synthetic g(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->j:Z

    return p0
.end method

.method public static getCurrentVolume(Landroid/content/Context;)Ljava/lang/Float;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "audio"

    .line 1803
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-nez p0, :cond_1

    .line 1805
    sget-object p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Unable to get a reference to the AudioManager."

    invoke-virtual {p0, v1}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v0, 0x3

    .line 1810
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1811
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    int-to-float v0, v1

    int-to-float p0, p0

    div-float/2addr v0, p0

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float v0, v0, p0

    .line 1813
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Landroid/graphics/Rect;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->v:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic h()Lcom/verizon/ads/support/TimedMemoryCache;
    .locals 1

    .line 68
    sget-object v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->g:Lcom/verizon/ads/support/TimedMemoryCache;

    return-object v0
.end method

.method static synthetic i(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Lcom/verizon/ads/support/utils/ViewabilityWatcher;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->n:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    return-object p0
.end method

.method static synthetic j(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->s:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;

    return-object p0
.end method

.method static synthetic k(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->l:I

    return p0
.end method

.method static synthetic l(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Landroid/graphics/Rect;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->q:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic m(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)F
    .locals 0

    .line 68
    iget p0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->p:F

    return p0
.end method

.method static synthetic n(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->o:Z

    return p0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1739
    sget-object v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x0

    .line 1740
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, ""

    .line 1741
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method protected final a(Ljava/util/Collection;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1697
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1700
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "version"

    const-string v3, "3.0"

    .line 1701
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sdk"

    const-string v3, "Verizon Ads MRAID WebView"

    .line 1702
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sdkVersion"

    const-string v3, "1.0"

    .line 1703
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1706
    invoke-static {}, Lcom/verizon/ads/VASAds;->isShareApplicationIdEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "appId"

    .line 1707
    invoke-virtual {p0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1710
    :cond_0
    invoke-static {}, Lcom/verizon/ads/VASAds;->isShareAdvertiserIdEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1711
    new-instance v2, Lcom/verizon/ads/EnvironmentInfo;

    invoke-virtual {p0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/verizon/ads/EnvironmentInfo;-><init>(Landroid/content/Context;)V

    .line 1712
    invoke-virtual {v2}, Lcom/verizon/ads/EnvironmentInfo;->getAdvertisingIdInfo()Lcom/verizon/ads/EnvironmentInfo$AdvertisingIdInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "ifa"

    .line 1715
    invoke-interface {v2}, Lcom/verizon/ads/EnvironmentInfo$AdvertisingIdInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "limitAdTracking"

    .line 1716
    invoke-interface {v2}, Lcom/verizon/ads/EnvironmentInfo$AdvertisingIdInfo;->isLimitAdTrackingEnabled()Z

    move-result v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_1
    const-string v2, "coppa"

    .line 1720
    invoke-static {}, Lcom/verizon/ads/VASAds;->getCoppa()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/verizon/ads/VASAds;->getCoppa()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "<script>\nwindow.MRAID_ENV = "

    .line 1722
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n</script>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1724
    sget-object v2, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->a:Lcom/verizon/ads/Logger;

    const-string v3, "MRAID_ENV could not be configured."

    invoke-virtual {v2, v3, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1727
    :goto_1
    invoke-super {p0, p1}, Lcom/verizon/ads/webview/VASAdsWebView;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1729
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "vas/mraid.js"

    .line 1540
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/verizon/ads/ErrorInfo;)V
    .locals 1

    .line 1596
    iget-object p1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->m:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->i:Z

    .line 1598
    iget-object p1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->m:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    invoke-virtual {p1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->c()V

    const/4 p1, 0x0

    .line 3068
    invoke-super {p0, p1}, Lcom/verizon/ads/webview/VASAdsWebView;->a(Lcom/verizon/ads/ErrorInfo;)V

    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1770
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->m:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    invoke-virtual {v0, p1, p2}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final b()Lcom/verizon/ads/webview/VASAdsWebView$VASAdsWebViewListener;
    .locals 1

    .line 1547
    new-instance v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$3;

    invoke-direct {v0, p0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$3;-><init>(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)V

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "default"

    return-object v0
.end method

.method final d()Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VASAdsMRAIDWebViewListener;
    .locals 1

    .line 1756
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->b:Lcom/verizon/ads/webview/VASAdsWebView$VASAdsWebViewListener;

    check-cast v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VASAdsMRAIDWebViewListener;

    return-object v0
.end method

.method final e()V
    .locals 2

    .line 1762
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->m:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    const-string v1, "expanded"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->a(Ljava/lang/String;)V

    .line 12756
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->b:Lcom/verizon/ads/webview/VASAdsWebView$VASAdsWebViewListener;

    check-cast v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VASAdsMRAIDWebViewListener;

    .line 1764
    invoke-interface {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VASAdsMRAIDWebViewListener;->expand()V

    return-void
.end method

.method final f()V
    .locals 2

    .line 1776
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->m:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->close(Ljava/lang/String;)V

    return-void
.end method

.method public isImmersive()Z
    .locals 1

    .line 1500
    iget-boolean v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->j:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1633
    invoke-super {p0}, Lcom/verizon/ads/webview/VASAdsWebView;->onAttachedToWindow()V

    .line 1636
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->m:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->k:[I

    invoke-virtual {p0, v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getLocationOnScreen([I)V

    .line 1639
    invoke-virtual {p0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1640
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1641
    iget-object v1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->m:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_0
    const/4 v0, 0x1

    .line 1644
    iput-boolean v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->o:Z

    .line 1646
    new-instance v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$4;

    invoke-direct {v1, p0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$4;-><init>(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)V

    invoke-virtual {p0, v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->post(Ljava/lang/Runnable;)Z

    .line 1667
    iget-object v1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->m:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    .line 4068
    sget-object v2, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->a:Lcom/verizon/ads/Logger;

    const-string v3, "Starting location updates for mraid."

    .line 3318
    invoke-virtual {v2, v3}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 3320
    iget-object v3, v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    .line 5068
    iget-object v3, v3, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->s:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;

    if-eqz v3, :cond_1

    .line 3321
    iget-object v3, v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    .line 6068
    iget-object v3, v3, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->s:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;

    .line 3321
    invoke-virtual {v3, v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;->cancel(Z)Z

    .line 3324
    :cond_1
    invoke-virtual {v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->f()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v0, "Location access is disabled. Not starting location updates."

    .line 3325
    invoke-virtual {v2, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 3330
    :cond_2
    iput-boolean v0, v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->a:Z

    .line 3332
    iget-object v0, v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    new-instance v2, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;

    iget-object v3, v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-virtual {v3}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;-><init>(Landroid/content/Context;Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;)V

    .line 8068
    iput-object v2, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->s:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;

    .line 3333
    iget-object v0, v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    .line 9068
    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->s:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 3333
    invoke-virtual {v0, v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 1675
    invoke-virtual {p0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1676
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1677
    iget-object v1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->m:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 1680
    iput-boolean v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->o:Z

    .line 1682
    iget-object v1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->m:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    .line 9339
    iput-boolean v0, v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->a:Z

    .line 9341
    iget-object v0, v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    .line 10068
    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->s:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;

    if-eqz v0, :cond_1

    .line 9342
    iget-object v0, v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    .line 11068
    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->s:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;

    const/4 v2, 0x1

    .line 9342
    invoke-virtual {v0, v2}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;->cancel(Z)Z

    .line 9343
    iget-object v0, v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    const/4 v1, 0x0

    .line 12068
    iput-object v1, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->s:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$UpdateLocationTask;

    .line 1684
    :cond_1
    invoke-super {p0}, Lcom/verizon/ads/webview/VASAdsWebView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1619
    invoke-virtual {p0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/verizon/ads/webview/R$dimen;->close_region_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sub-int v1, p4, p2

    sub-int/2addr v1, v0

    .line 1622
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 1623
    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 1626
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/verizon/ads/webview/VASAdsWebView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1607
    invoke-super {p0, p1, p2, p3, p4}, Lcom/verizon/ads/webview/VASAdsWebView;->onSizeChanged(IIII)V

    .line 1609
    iget-object p1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->m:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    invoke-virtual {p1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->e()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 1512
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->m:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->m:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 1513
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->m:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->m:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 1516
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->i:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;

    if-eqz v0, :cond_2

    .line 2924
    iget-object v1, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;->a:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 2925
    iget-object v1, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    const/4 v1, 0x0

    .line 2926
    iput-object v1, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;->a:Landroid/os/HandlerThread;

    .line 1519
    :cond_1
    invoke-virtual {p0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1522
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1526
    iget-object v1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->i:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1531
    :cond_2
    invoke-virtual {p0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->f()V

    .line 1533
    invoke-super {p0}, Lcom/verizon/ads/webview/VASAdsWebView;->release()V

    return-void
.end method

.method public setImmersive(Z)V
    .locals 0

    .line 1489
    iput-boolean p1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->j:Z

    return-void
.end method
