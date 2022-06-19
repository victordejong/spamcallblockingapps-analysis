.class public Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;
.super Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;
.implements Lcom/verizon/ads/support/utils/ViewabilityWatcher$ViewabilityListener;
.implements Lcom/verizon/ads/verizonnativecontroller/NativeVideoComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent$Factory;
    }
.end annotation


# static fields
.field public static final ERROR_INVALID_VIEW_CLASS:I = -0x2

.field public static final ERROR_NOT_UI_THREAD:I = -0x3

.field public static final ERROR_VIDEO_PLAYER_NOT_REGISTERED:I = -0x4

.field public static final ERROR_VIEW_ALREADY_EXISTS:I = -0x1

.field public static final VIDEO_COMPLETE_EVENT:Ljava/lang/String; = "videoComplete"

.field public static final VIDEO_FIRST_QUARTILE_EVENT:Ljava/lang/String; = "videoFirstQuartile"

.field public static final VIDEO_MIDPOINT_EVENT:Ljava/lang/String; = "videoMidpoint"

.field public static final VIDEO_START_EVENT:Ljava/lang/String; = "videoStart"

.field public static final VIDEO_THIRD_QUARTILE_EVENT:Ljava/lang/String; = "videoThirdQuartile"

.field public static final WHO:Ljava/lang/String;

.field private static final a:Lcom/verizon/ads/Logger;


# instance fields
.field private volatile b:Z

.field private volatile c:Z

.field private volatile e:I

.field private final f:Lcom/verizon/ads/verizonnativecontroller/VideoViewability;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/verizon/ads/VideoPlayer;

.field private l:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

.field private m:Lcom/iab/omid/library/verizonmedia/adsession/a/a;

.field private n:Lcom/iab/omid/library/verizonmedia/adsession/a;

.field private o:I

.field private p:I

.field private q:I

.field private r:Lcom/verizon/ads/support/FileStorageCache;

.field private s:I

.field private t:Z

.field private u:F

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    const-class v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v1

    sput-object v1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    .line 58
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->WHO:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/verizon/ads/AdSession;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;IIZ)V
    .locals 0

    .line 174
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;-><init>(Lcom/verizon/ads/AdSession;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->b:Z

    .line 61
    iput-boolean p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->c:Z

    .line 62
    iput p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->e:I

    .line 64
    new-instance p1, Lcom/verizon/ads/verizonnativecontroller/VideoViewability;

    invoke-direct {p1}, Lcom/verizon/ads/verizonnativecontroller/VideoViewability;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->f:Lcom/verizon/ads/verizonnativecontroller/VideoViewability;

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->h:Ljava/util/List;

    const/4 p1, 0x0

    .line 80
    iput p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->u:F

    .line 176
    iput-object p5, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->g:Ljava/lang/String;

    .line 177
    iput p6, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->p:I

    .line 178
    iput p7, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->q:I

    .line 179
    iput-boolean p8, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->v:Z

    const-string p1, "com.verizon.ads.verizonnativecontroller.video"

    const-string p2, "autoplayThresholdPercentage"

    const/16 p3, 0xa

    .line 181
    invoke-static {p1, p2, p3}, Lcom/verizon/ads/Configuration;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->s:I

    return-void
.end method

.method private synthetic a(F)V
    .locals 1

    .line 548
    new-instance v0, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeVideoComponent$9Sp3T7pB9KFK8z9Yow1ODiAJMng;

    invoke-direct {v0, p0, p1}, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeVideoComponent$9Sp3T7pB9KFK8z9Yow1ODiAJMng;-><init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;F)V

    invoke-direct {p0, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic a(I)V
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->getVolume()F

    move-result v0

    iput v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->u:F

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 15503
    :cond_0
    new-instance p1, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeVideoComponent$9IZlep-Q-Z4Oob7BX7RTlr8y544;

    invoke-direct {p1, p0}, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeVideoComponent$9IZlep-Q-Z4Oob7BX7RTlr8y544;-><init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;)V

    .line 15722
    invoke-static {p1}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    .line 14480
    :cond_1
    new-instance p1, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeVideoComponent$_trJa8FVMU4dRn8tCE70usv6vIs;

    invoke-direct {p1, p0}, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeVideoComponent$_trJa8FVMU4dRn8tCE70usv6vIs;-><init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;)V

    .line 14722
    invoke-static {p1}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 13457
    :cond_2
    new-instance p1, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeVideoComponent$3ldp-j9TnSLBKa-4DGhsq3iDiCQ;

    invoke-direct {p1, p0}, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeVideoComponent$3ldp-j9TnSLBKa-4DGhsq3iDiCQ;-><init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;)V

    .line 13722
    invoke-static {p1}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic a(Lcom/verizon/ads/VideoPlayer;)V
    .locals 0

    .line 224
    invoke-interface {p1}, Lcom/verizon/ads/VideoPlayer;->getDuration()I

    move-result p1

    iput p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->o:I

    .line 226
    new-instance p1, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$vnW-V8C_tu93t8twFjldZqDaP4s;

    invoke-direct {p1, p0}, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$vnW-V8C_tu93t8twFjldZqDaP4s;-><init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;)V

    invoke-direct {p0, p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->m:Lcom/iab/omid/library/verizonmedia/adsession/a/a;

    if-eqz v0, :cond_0

    .line 847
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic b(F)V
    .locals 2

    .line 12564
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->m:Lcom/iab/omid/library/verizonmedia/adsession/a/a;

    if-eqz v0, :cond_0

    .line 12566
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->a(F)V

    .line 12567
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Fired OMSDK volume change event."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 12569
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Error occurred firing OMSDK volume change event."

    invoke-virtual {v0, v1, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .line 857
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 859
    invoke-direct {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->j()Ljava/util/Map;

    move-result-object v1

    const-string v2, "macros"

    .line 860
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 862
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 863
    sget-object v1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v3, "Firing video viewability event \'%s\' with args %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 865
    :cond_0
    invoke-direct {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->m()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 867
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method private synthetic e(Landroid/view/View;)V
    .locals 2

    .line 557
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "tap"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic i()Lcom/verizon/ads/Logger;
    .locals 1

    .line 46
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    return-object v0
.end method

.method private j()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 874
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "V_SKIP_AVAIL"

    const-string v2, "0"

    .line 877
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    iget-boolean v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->v:Z

    const-string v3, "1"

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v4, "V_AUTOPLAYED"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "V_EXPANDED"

    .line 879
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    invoke-direct {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->l()Z

    move-result v1

    const-string v4, "2"

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    move-object v1, v4

    :goto_1
    const-string v5, "V_VIEW_INFO"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    invoke-direct {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v4, v3

    :cond_2
    const-string v1, "V_AUD_INFO"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    invoke-direct {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->m()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 885
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "V_PLAYER_HEIGHT"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "V_PLAYER_WIDTH"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    :cond_3
    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->f:Lcom/verizon/ads/verizonnativecontroller/VideoViewability;

    .line 12076
    iget v1, v1, Lcom/verizon/ads/verizonnativecontroller/VideoViewability;->c:I

    .line 890
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "V_AUD_TIME_INVIEW_100"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->f:Lcom/verizon/ads/verizonnativecontroller/VideoViewability;

    .line 12082
    iget v1, v1, Lcom/verizon/ads/verizonnativecontroller/VideoViewability;->d:I

    .line 891
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "V_TIME_INVIEW_50"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->f:Lcom/verizon/ads/verizonnativecontroller/VideoViewability;

    .line 12088
    iget v1, v1, Lcom/verizon/ads/verizonnativecontroller/VideoViewability;->g:I

    .line 892
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "V_TIME_INVIEW_50_MAX_CONTINUOUS"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->f:Lcom/verizon/ads/verizonnativecontroller/VideoViewability;

    .line 12094
    iget v1, v1, Lcom/verizon/ads/verizonnativecontroller/VideoViewability;->e:I

    .line 893
    iget v4, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->o:I

    div-int/lit8 v4, v4, 0x2

    const/16 v5, 0x3a98

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-le v1, v4, :cond_4

    move-object v2, v3

    :cond_4
    const-string v1, "V_IS_INVIEW_100_HALFTIME"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private k()Z
    .locals 2

    .line 916
    iget v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->u:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private l()Z
    .locals 2

    .line 922
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->l:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->exposedPercentage:F

    const/high16 v1, 0x42480000    # 50.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$-LXSDepRk3k2oRULVSU7E6drUoE(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a(I)V

    return-void
.end method

.method public static synthetic lambda$3ldp-j9TnSLBKa-4DGhsq3iDiCQ(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;)V
    .locals 0

    invoke-direct {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->p()V

    return-void
.end method

.method public static synthetic lambda$9IZlep-Q-Z4Oob7BX7RTlr8y544(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;)V
    .locals 0

    invoke-direct {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->n()V

    return-void
.end method

.method public static synthetic lambda$9Sp3T7pB9KFK8z9Yow1ODiAJMng(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->b(F)V

    return-void
.end method

.method public static synthetic lambda$DeYyOnpn_oUnM_ctgmhLiLlIUkE(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;)V
    .locals 0

    invoke-direct {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->s()V

    return-void
.end method

.method public static synthetic lambda$EpFsdZXi-hnH9j0fSX3hOXZh6vM(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;)V
    .locals 0

    invoke-direct {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->r()V

    return-void
.end method

.method public static synthetic lambda$L5u5VHgxrwhWeyks1XjOG0eyJGM(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;)V
    .locals 0

    invoke-direct {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->t()V

    return-void
.end method

.method public static synthetic lambda$WJB7r9JdvMFBFhZZIVtjyw3zo40(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;)V
    .locals 0

    invoke-direct {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->q()V

    return-void
.end method

.method public static synthetic lambda$WlS6iOUi96QLvGyQ3U5tOLAJZwY(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a(F)V

    return-void
.end method

.method public static synthetic lambda$_trJa8FVMU4dRn8tCE70usv6vIs(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;)V
    .locals 0

    invoke-direct {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->o()V

    return-void
.end method

.method public static synthetic lambda$pGGsNWF2jLy66yBtix0y-ekgDvM(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;Lcom/verizon/ads/VideoPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a(Lcom/verizon/ads/VideoPlayer;)V

    return-void
.end method

.method public static synthetic lambda$uCK8KBN_HRKd2rl5F_uV9Mgk83g(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->e(Landroid/view/View;)V

    return-void
.end method

.method private m()Landroid/view/View;
    .locals 1

    .line 928
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->i:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 929
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic n()V
    .locals 1

    const-string v0, "videoThirdQuartile"

    .line 504
    invoke-direct {p0, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->b(Ljava/lang/String;)V

    .line 506
    new-instance v0, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$Sr-2dE8lttak0GBn1wyKc_qJwB4;

    invoke-direct {v0, p0}, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$Sr-2dE8lttak0GBn1wyKc_qJwB4;-><init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;)V

    invoke-direct {p0, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic o()V
    .locals 1

    const-string v0, "videoMidpoint"

    .line 481
    invoke-direct {p0, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->b(Ljava/lang/String;)V

    .line 483
    new-instance v0, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$KfllJ7WY4PoSd19Q0_AUCSYKQcU;

    invoke-direct {v0, p0}, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$KfllJ7WY4PoSd19Q0_AUCSYKQcU;-><init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;)V

    invoke-direct {p0, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic p()V
    .locals 1

    const-string v0, "videoFirstQuartile"

    .line 458
    invoke-direct {p0, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->b(Ljava/lang/String;)V

    .line 460
    new-instance v0, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$ehvkHeDaqOEP0vRIfKmBfnBqeTA;

    invoke-direct {v0, p0}, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$ehvkHeDaqOEP0vRIfKmBfnBqeTA;-><init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;)V

    invoke-direct {p0, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic q()V
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 436
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private synthetic r()V
    .locals 1

    const-string v0, "videoComplete"

    .line 359
    invoke-direct {p0, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->b(Ljava/lang/String;)V

    .line 361
    new-instance v0, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$RYtKTDKv2fMls7agMmBrlFM996I;

    invoke-direct {v0, p0}, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$RYtKTDKv2fMls7agMmBrlFM996I;-><init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;)V

    invoke-direct {p0, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 363
    iput-boolean v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->t:Z

    const/4 v0, 0x0

    .line 365
    iput v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->e:I

    return-void
.end method

.method private synthetic s()V
    .locals 3

    const/4 v0, 0x1

    .line 331
    iput-boolean v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->c:Z

    .line 333
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->f:Lcom/verizon/ads/verizonnativecontroller/VideoViewability;

    .line 16068
    sget-object v1, Lcom/verizon/ads/verizonnativecontroller/VideoViewability;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Pausing video viewability tracking"

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 16070
    iput v1, v0, Lcom/verizon/ads/verizonnativecontroller/VideoViewability;->f:I

    .line 335
    new-instance v0, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$shSbEoRskbt1Kud_OXZQWMctq1w;

    invoke-direct {v0, p0}, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$shSbEoRskbt1Kud_OXZQWMctq1w;-><init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;)V

    invoke-direct {p0, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic t()V
    .locals 4

    .line 270
    iget-boolean v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->t:Z

    if-eqz v0, :cond_1

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->f:Lcom/verizon/ads/verizonnativecontroller/VideoViewability;

    .line 17055
    sget-object v2, Lcom/verizon/ads/verizonnativecontroller/VideoViewability;->a:Lcom/verizon/ads/Logger;

    const-string v3, "Resetting video viewability tracking"

    invoke-virtual {v2, v3}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 17057
    iput v1, v0, Lcom/verizon/ads/verizonnativecontroller/VideoViewability;->b:I

    .line 17058
    iput v1, v0, Lcom/verizon/ads/verizonnativecontroller/VideoViewability;->c:I

    .line 17059
    iput v1, v0, Lcom/verizon/ads/verizonnativecontroller/VideoViewability;->d:I

    .line 17060
    iput v1, v0, Lcom/verizon/ads/verizonnativecontroller/VideoViewability;->e:I

    .line 17061
    iput v1, v0, Lcom/verizon/ads/verizonnativecontroller/VideoViewability;->f:I

    .line 17062
    iput v1, v0, Lcom/verizon/ads/verizonnativecontroller/VideoViewability;->g:I

    const-string v0, "videoStart"

    .line 272
    invoke-direct {p0, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->b(Ljava/lang/String;)V

    .line 273
    iput v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->e:I

    :cond_1
    const/4 v0, 0x1

    .line 276
    iput-boolean v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->b:Z

    .line 277
    iput-boolean v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->t:Z

    .line 279
    iget-boolean v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->c:Z

    if-eqz v0, :cond_2

    .line 280
    new-instance v0, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$Z7xG4GUtOmlexiI6dXCAUJb2zK8;

    invoke-direct {v0, p0}, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$Z7xG4GUtOmlexiI6dXCAUJb2zK8;-><init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;)V

    invoke-direct {p0, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a(Ljava/lang/Runnable;)V

    .line 281
    iput-boolean v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->c:Z

    return-void

    .line 283
    :cond_2
    new-instance v0, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$x3A2TfrN1JZz96Vlo0UScalXhCs;

    invoke-direct {v0, p0}, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$x3A2TfrN1JZz96Vlo0UScalXhCs;-><init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;)V

    invoke-direct {p0, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 904
    invoke-direct {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->j()Ljava/util/Map;

    move-result-object v0

    .line 905
    invoke-super {p0, p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 907
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object v0
.end method

.method a()V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->n:Lcom/iab/omid/library/verizonmedia/adsession/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 235
    :try_start_0
    sget-object v2, Lcom/iab/omid/library/verizonmedia/adsession/a/b;->STANDALONE:Lcom/iab/omid/library/verizonmedia/adsession/a/b;

    invoke-static {v0, v1, v2}, Lcom/iab/omid/library/verizonmedia/adsession/a/c;->a(FZLcom/iab/omid/library/verizonmedia/adsession/a/b;)Lcom/iab/omid/library/verizonmedia/adsession/a/c;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->n:Lcom/iab/omid/library/verizonmedia/adsession/a;

    invoke-virtual {v1, v0}, Lcom/iab/omid/library/verizonmedia/adsession/a;->a(Lcom/iab/omid/library/verizonmedia/adsession/a/c;)V

    .line 240
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Fired OMSDK loaded event."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 242
    sget-object v1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Error recording load event with OMSDK."

    invoke-virtual {v1, v2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method b()V
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->m:Lcom/iab/omid/library/verizonmedia/adsession/a/a;

    if-eqz v0, :cond_0

    .line 302
    :try_start_0
    invoke-virtual {v0}, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->f()V

    .line 303
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Fired OMSDK resume event."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 305
    sget-object v1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Error occurred firing OMSDK resume event."

    invoke-virtual {v1, v2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method c()V
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->m:Lcom/iab/omid/library/verizonmedia/adsession/a/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->k:Lcom/verizon/ads/VideoPlayer;

    if-eqz v1, :cond_0

    .line 315
    :try_start_0
    invoke-interface {v1}, Lcom/verizon/ads/VideoPlayer;->getDuration()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->u:F

    invoke-virtual {v0, v1, v2}, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->a(FF)V

    .line 316
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Fired OMSDK start event."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 318
    sget-object v1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Error occurred firing OMSDK start event."

    invoke-virtual {v1, v2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method d()V
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->m:Lcom/iab/omid/library/verizonmedia/adsession/a/a;

    if-eqz v0, :cond_0

    .line 344
    :try_start_0
    invoke-virtual {v0}, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->e()V

    .line 345
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Fired OMSDK pause event."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 347
    sget-object v1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Error occurred firing OMSDK pause event."

    invoke-virtual {v1, v2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method e()V
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->m:Lcom/iab/omid/library/verizonmedia/adsession/a/a;

    if-eqz v0, :cond_0

    .line 374
    :try_start_0
    invoke-virtual {v0}, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->d()V

    .line 375
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Fired OMSDK complete event."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 377
    sget-object v1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Error occurred firing OMSDK complete event."

    invoke-virtual {v1, v2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method f()V
    .locals 3

    .line 467
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->m:Lcom/iab/omid/library/verizonmedia/adsession/a/a;

    if-eqz v0, :cond_0

    .line 469
    :try_start_0
    invoke-virtual {v0}, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->a()V

    .line 470
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Fired OMSDK firstQuartile event."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 472
    sget-object v1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Error occurred firing OMSDK firstQuartile event."

    invoke-virtual {v1, v2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method g()V
    .locals 3

    .line 490
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->m:Lcom/iab/omid/library/verizonmedia/adsession/a/a;

    if-eqz v0, :cond_0

    .line 492
    :try_start_0
    invoke-virtual {v0}, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->b()V

    .line 493
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Fired OMSDK midpoint event."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 495
    sget-object v1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Error occurred firing OMSDK midpoint event."

    invoke-virtual {v1, v2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public getHeight()I
    .locals 2

    .line 734
    iget v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->q:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->k:Lcom/verizon/ads/VideoPlayer;

    if-eqz v1, :cond_0

    .line 735
    invoke-interface {v1}, Lcom/verizon/ads/VideoPlayer;->getVideoHeight()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getVideoPlayer(Landroid/content/Context;)Lcom/verizon/ads/VideoPlayer;
    .locals 3

    .line 622
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->k:Lcom/verizon/ads/VideoPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "video/player-v2"

    .line 623
    invoke-static {v2, p1, v0, v1}, Lcom/verizon/ads/ComponentRegistry;->getComponent(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;[Ljava/lang/Object;)Lcom/verizon/ads/Component;

    move-result-object p1

    .line 624
    instance-of v0, p1, Lcom/verizon/ads/VideoPlayer;

    if-eqz v0, :cond_0

    .line 625
    check-cast p1, Lcom/verizon/ads/VideoPlayer;

    iput-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->k:Lcom/verizon/ads/VideoPlayer;

    .line 628
    :cond_0
    iget-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->k:Lcom/verizon/ads/VideoPlayer;

    return-object p1
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 11728
    invoke-static {}, Lcom/verizon/ads/utils/ThreadUtils;->isUiThread()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 745
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Must be on the UI thread to get the view"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v1

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->j:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 750
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    if-nez p1, :cond_2

    .line 757
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Context is null"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v1

    .line 762
    :cond_2
    new-instance v0, Lcom/verizon/ads/VideoPlayerView;

    invoke-direct {v0, p1}, Lcom/verizon/ads/VideoPlayerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 763
    invoke-virtual {v0, p1}, Lcom/verizon/ads/VideoPlayerView;->setReplayButtonEnabled(Z)V

    .line 764
    invoke-virtual {v0, p1}, Lcom/verizon/ads/VideoPlayerView;->setMuteToggleEnabled(Z)V

    .line 765
    iget-boolean v2, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->v:Z

    xor-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/verizon/ads/VideoPlayerView;->setPlayButtonEnabled(Z)V

    .line 767
    invoke-virtual {p0, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->prepareView(Landroid/view/View;)Lcom/verizon/ads/ErrorInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 770
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    invoke-virtual {p1}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v1

    :cond_3
    return-object v0
.end method

.method public getVolume()F
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->k:Lcom/verizon/ads/VideoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/verizon/ads/VideoPlayer;->getVolume()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getWidth()I
    .locals 2

    .line 724
    iget v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->k:Lcom/verizon/ads/VideoPlayer;

    if-eqz v1, :cond_0

    .line 725
    invoke-interface {v1}, Lcom/verizon/ads/VideoPlayer;->getVideoWidth()I

    move-result v0

    :cond_0
    return v0
.end method

.method h()V
    .locals 3

    .line 513
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->m:Lcom/iab/omid/library/verizonmedia/adsession/a/a;

    if-eqz v0, :cond_0

    .line 515
    :try_start_0
    invoke-virtual {v0}, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->c()V

    .line 516
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Fired OMSDK thirdQuartile event."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 518
    sget-object v1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Error occurred firing OMSDK thirdQuartile event."

    invoke-virtual {v1, v2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public isDescendantOf(Landroid/view/ViewGroup;)Z
    .locals 1

    .line 781
    invoke-direct {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->m()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a(Landroid/view/ViewGroup;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onClick(Lcom/verizon/ads/VideoPlayer;)V
    .locals 1

    .line 555
    invoke-direct {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->m()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 557
    new-instance v0, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeVideoComponent$uCK8KBN_HRKd2rl5F_uV9Mgk83g;

    invoke-direct {v0, p0, p1}, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeVideoComponent$uCK8KBN_HRKd2rl5F_uV9Mgk83g;-><init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;Landroid/view/View;)V

    .line 8722
    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onComplete(Lcom/verizon/ads/VideoPlayer;)V
    .locals 1

    .line 356
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v0, "video playback completed."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 357
    new-instance p1, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeVideoComponent$EpFsdZXi-hnH9j0fSX3hOXZh6vM;

    invoke-direct {p1, p0}, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeVideoComponent$EpFsdZXi-hnH9j0fSX3hOXZh6vM;-><init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;)V

    .line 4722
    invoke-static {p1}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Lcom/verizon/ads/VideoPlayer;)V
    .locals 1

    .line 533
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v0, "video playback error."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onLoaded(Lcom/verizon/ads/VideoPlayer;)V
    .locals 2

    .line 220
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v1, "video asset loaded."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 222
    new-instance v0, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeVideoComponent$pGGsNWF2jLy66yBtix0y-ekgDvM;

    invoke-direct {v0, p0, p1}, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeVideoComponent$pGGsNWF2jLy66yBtix0y-ekgDvM;-><init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;Lcom/verizon/ads/VideoPlayer;)V

    .line 1722
    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPaused(Lcom/verizon/ads/VideoPlayer;)V
    .locals 1

    .line 327
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v0, "video is paused."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 329
    new-instance p1, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeVideoComponent$DeYyOnpn_oUnM_ctgmhLiLlIUkE;

    invoke-direct {p1, p0}, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeVideoComponent$DeYyOnpn_oUnM_ctgmhLiLlIUkE;-><init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;)V

    .line 3722
    invoke-static {p1}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPlay(Lcom/verizon/ads/VideoPlayer;)V
    .locals 1

    .line 265
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v0, "video is playing."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 267
    new-instance p1, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeVideoComponent$L5u5VHgxrwhWeyks1XjOG0eyJGM;

    invoke-direct {p1, p0}, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeVideoComponent$L5u5VHgxrwhWeyks1XjOG0eyJGM;-><init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;)V

    .line 2722
    invoke-static {p1}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProgress(Lcom/verizon/ads/VideoPlayer;I)V
    .locals 5

    .line 388
    iget-boolean p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->t:Z

    if-eqz p1, :cond_0

    return-void

    .line 392
    :cond_0
    iget-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->f:Lcom/verizon/ads/verizonnativecontroller/VideoViewability;

    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->l:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    iget v0, v0, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->exposedPercentage:F

    invoke-direct {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->k()Z

    move-result v1

    .line 5025
    iget v2, p1, Lcom/verizon/ads/verizonnativecontroller/VideoViewability;->b:I

    if-le p2, v2, :cond_2

    .line 5030
    iget v2, p1, Lcom/verizon/ads/verizonnativecontroller/VideoViewability;->b:I

    sub-int v2, p2, v2

    .line 5031
    iput p2, p1, Lcom/verizon/ads/verizonnativecontroller/VideoViewability;->b:I

    const/high16 v3, 0x42480000    # 50.0f

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_1

    .line 5035
    iget v3, p1, Lcom/verizon/ads/verizonnativecontroller/VideoViewability;->d:I

    add-int/2addr v3, v2

    iput v3, p1, Lcom/verizon/ads/verizonnativecontroller/VideoViewability;->d:I

    .line 5036
    iget v3, p1, Lcom/verizon/ads/verizonnativecontroller/VideoViewability;->f:I

    add-int/2addr v3, v2

    iput v3, p1, Lcom/verizon/ads/verizonnativecontroller/VideoViewability;->f:I

    .line 5037
    iget v3, p1, Lcom/verizon/ads/verizonnativecontroller/VideoViewability;->g:I

    iget v4, p1, Lcom/verizon/ads/verizonnativecontroller/VideoViewability;->f:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Lcom/verizon/ads/verizonnativecontroller/VideoViewability;->g:I

    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    .line 5041
    iget v0, p1, Lcom/verizon/ads/verizonnativecontroller/VideoViewability;->e:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/verizon/ads/verizonnativecontroller/VideoViewability;->e:I

    if-eqz v1, :cond_2

    .line 5043
    iget v0, p1, Lcom/verizon/ads/verizonnativecontroller/VideoViewability;->c:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/verizon/ads/verizonnativecontroller/VideoViewability;->c:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5048
    iput v0, p1, Lcom/verizon/ads/verizonnativecontroller/VideoViewability;->f:I

    .line 394
    :cond_2
    :goto_0
    iget p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->o:I

    int-to-float p1, p1

    const/high16 v0, 0x40800000    # 4.0f

    div-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p2, p1

    float-to-int p1, p2

    .line 5403
    iget p2, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->e:I

    if-le p1, p2, :cond_3

    .line 5404
    iput p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->e:I

    .line 5406
    new-instance p2, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeVideoComponent$-LXSDepRk3k2oRULVSU7E6drUoE;

    invoke-direct {p2, p0, p1}, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeVideoComponent$-LXSDepRk3k2oRULVSU7E6drUoE;-><init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;I)V

    .line 5722
    invoke-static {p2}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public onReady(Lcom/verizon/ads/VideoPlayer;)V
    .locals 1

    .line 258
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v0, "video is ready for playback."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onSeekCompleted(Lcom/verizon/ads/VideoPlayer;)V
    .locals 0

    return-void
.end method

.method public onUnloaded(Lcom/verizon/ads/VideoPlayer;)V
    .locals 1

    .line 251
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v0, "video asset unloaded."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 3

    .line 293
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "video size changed new width = %d, new height = %d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onViewableChanged(Z)V
    .locals 1

    .line 579
    iget-boolean v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->t:Z

    if-eqz v0, :cond_0

    return-void

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->k:Lcom/verizon/ads/VideoPlayer;

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_3

    .line 587
    iget-boolean p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->v:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->b:Z

    if-eqz p1, :cond_3

    .line 588
    :cond_2
    iget-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->k:Lcom/verizon/ads/VideoPlayer;

    invoke-interface {p1}, Lcom/verizon/ads/VideoPlayer;->play()V

    return-void

    .line 590
    :cond_3
    iget-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->k:Lcom/verizon/ads/VideoPlayer;

    invoke-interface {p1}, Lcom/verizon/ads/VideoPlayer;->pause()V

    return-void
.end method

.method public onVolumeChanged(Lcom/verizon/ads/VideoPlayer;F)V
    .locals 3

    const/4 p1, 0x3

    .line 541
    invoke-static {p1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 542
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "video player volume changed to <%f>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 546
    :cond_0
    iput p2, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->u:F

    .line 548
    new-instance p1, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeVideoComponent$WlS6iOUi96QLvGyQ3U5tOLAJZwY;

    invoke-direct {p1, p0, p2}, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeVideoComponent$WlS6iOUi96QLvGyQ3U5tOLAJZwY;-><init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;F)V

    .line 7722
    invoke-static {p1}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public prepareView(Landroid/view/View;)Lcom/verizon/ads/ErrorInfo;
    .locals 10

    .line 8728
    invoke-static {}, Lcom/verizon/ads/utils/ThreadUtils;->isUiThread()Z

    move-result v0

    const-string v1, "Must be on the UI thread to prepare the view"

    if-nez v0, :cond_0

    .line 684
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->WHO:Ljava/lang/String;

    const/4 v2, -0x3

    invoke-direct {p1, v0, v1, v2}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->j:Ljava/lang/ref/WeakReference;

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    .line 688
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 690
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->WHO:Ljava/lang/String;

    const-string v1, "View already exists for component"

    invoke-direct {p1, v0, v1, v2}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1

    .line 694
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->getVideoPlayer(Landroid/content/Context;)Lcom/verizon/ads/VideoPlayer;

    move-result-object v0

    const-string v3, "No registered VideoPlayer for component type \'video/player-v2\'"

    if-nez v0, :cond_2

    .line 697
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    invoke-virtual {p1, v3}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 698
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->WHO:Ljava/lang/String;

    const/4 v1, -0x4

    invoke-direct {p1, v0, v3, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1

    .line 701
    :cond_2
    instance-of v4, p1, Lcom/verizon/ads/VideoPlayerView;

    if-eqz v4, :cond_3

    .line 702
    move-object v4, p1

    check-cast v4, Lcom/verizon/ads/VideoPlayerView;

    .line 703
    invoke-virtual {v4, v0}, Lcom/verizon/ads/VideoPlayerView;->bindPlayer(Lcom/verizon/ads/VideoPlayer;)V

    goto :goto_0

    .line 705
    :cond_3
    instance-of v4, p1, Landroid/view/SurfaceView;

    if-eqz v4, :cond_13

    .line 706
    move-object v4, p1

    check-cast v4, Landroid/view/SurfaceView;

    .line 707
    invoke-interface {v0, v4}, Lcom/verizon/ads/VideoPlayer;->setSurfaceView(Landroid/view/SurfaceView;)V

    .line 714
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->j:Ljava/lang/ref/WeakReference;

    .line 9728
    invoke-static {}, Lcom/verizon/ads/utils/ThreadUtils;->isUiThread()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_4

    .line 9636
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    invoke-virtual {p1, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 9788
    :cond_4
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->r:Lcom/verizon/ads/support/FileStorageCache;

    const/4 v1, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-nez v0, :cond_5

    .line 9789
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v2, "File cache is null"

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    :goto_1
    move-object v0, v4

    goto/16 :goto_4

    .line 9793
    :cond_5
    iget-object v7, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->g:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/verizon/ads/support/FileStorageCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 9794
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_3

    .line 9799
    :cond_6
    iget v7, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->p:I

    if-eq v7, v2, :cond_7

    iget v7, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->q:I

    if-ne v7, v2, :cond_a

    .line 9821
    :cond_7
    sget-object v7, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v8, "Retrieving video width and height"

    invoke-virtual {v7, v8}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 9822
    new-instance v7, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v7}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 9824
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 9826
    iget v8, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->p:I

    if-ne v8, v2, :cond_8

    const/16 v8, 0x12

    .line 9827
    invoke-virtual {v7, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->p:I

    .line 9830
    :cond_8
    iget v8, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->q:I

    if-ne v8, v2, :cond_9

    const/16 v2, 0x13

    .line 9831
    invoke-virtual {v7, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->q:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 9835
    sget-object v8, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v9, "Error retrieving video metadata"

    invoke-virtual {v8, v9, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9838
    :cond_9
    :goto_2
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 9803
    :cond_a
    invoke-static {v5}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 9804
    sget-object v2, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->p:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    iget v8, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->q:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    const-string v8, "Video width: %d height: %d"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    goto :goto_4

    .line 9795
    :cond_b
    :goto_3
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Video file does not exist"

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    :goto_4
    if-nez v0, :cond_d

    .line 9642
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Video could not be loaded"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 9646
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->getVideoPlayer(Landroid/content/Context;)Lcom/verizon/ads/VideoPlayer;

    move-result-object v2

    if-nez v2, :cond_e

    .line 9649
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    invoke-virtual {p1, v3}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    goto :goto_7

    .line 9653
    :cond_e
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->i:Ljava/lang/ref/WeakReference;

    .line 9655
    new-instance v3, Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    invoke-direct {v3, p1, p0}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/verizon/ads/support/utils/ViewabilityWatcher$ViewabilityListener;)V

    iput-object v3, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->l:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    .line 9656
    invoke-static {v5}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 9657
    sget-object v3, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->s:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v6

    const-string v5, "Initializing autoplay threshold to %d"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 9659
    :cond_f
    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->l:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    iget v3, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->s:I

    invoke-virtual {v1, v3}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->setMinViewabilityPercent(I)V

    .line 9661
    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->l:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    invoke-virtual {v1}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->startWatching()V

    .line 9663
    iput-boolean v6, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->t:Z

    .line 9665
    iget-boolean v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->v:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_11

    const-string v1, "com.verizon.ads"

    const-string v5, "autoPlayAudioEnabled"

    .line 9937
    invoke-static {v1, v5, v6}, Lcom/verizon/ads/Configuration;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_5

    :cond_10
    const/4 v3, 0x0

    .line 9666
    :goto_5
    invoke-interface {v2, v3}, Lcom/verizon/ads/VideoPlayer;->setVolume(F)V

    goto :goto_6

    .line 9668
    :cond_11
    invoke-interface {v2, v3}, Lcom/verizon/ads/VideoPlayer;->setVolume(F)V

    .line 9671
    :goto_6
    invoke-interface {v2, p0}, Lcom/verizon/ads/VideoPlayer;->registerListener(Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;)V

    const/16 v1, 0xc8

    .line 9672
    invoke-interface {v2, v1}, Lcom/verizon/ads/VideoPlayer;->setProgressInterval(I)V

    .line 10813
    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->k:Lcom/verizon/ads/VideoPlayer;

    if-eqz v1, :cond_12

    .line 10814
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/verizon/ads/VideoPlayer;->load(Landroid/net/Uri;)V

    .line 9676
    :cond_12
    invoke-virtual {p0, p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->b(Landroid/view/View;)V

    :goto_7
    return-object v4

    .line 709
    :cond_13
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Video Player can only be bound to a VideoPlayerView or SurfaceView"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 710
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    const-class v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "Video Player can only be bound to a VideoPlayerView"

    invoke-direct {p1, v0, v2, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1
.end method

.method public queueFilesForDownload(Lcom/verizon/ads/support/FileStorageCache;)V
    .locals 1

    .line 212
    iput-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->r:Lcom/verizon/ads/support/FileStorageCache;

    .line 213
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/verizon/ads/support/FileStorageCache;->queueFileForDownload(Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 604
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Releasing video component"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->l:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {v0}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->stopWatching()V

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->k:Lcom/verizon/ads/VideoPlayer;

    if-eqz v0, :cond_1

    .line 611
    invoke-interface {v0}, Lcom/verizon/ads/VideoPlayer;->pause()V

    .line 612
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->k:Lcom/verizon/ads/VideoPlayer;

    invoke-interface {v0}, Lcom/verizon/ads/VideoPlayer;->unload()V

    .line 615
    :cond_1
    invoke-super {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->release()V

    return-void
.end method

.method public setAdEvents(Lcom/iab/omid/library/verizonmedia/adsession/a;)V
    .locals 2

    .line 449
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Setting ad events for component"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 451
    iput-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->n:Lcom/iab/omid/library/verizonmedia/adsession/a;

    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 4

    const/4 v0, 0x3

    .line 187
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Setting autoPlay to %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 191
    :cond_0
    iput-boolean p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->v:Z

    return-void
.end method

.method public setAutoplayThresholdPercentage(I)V
    .locals 4

    const/4 v0, 0x3

    .line 199
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Setting autoPlay threshold to %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 202
    :cond_0
    iput p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->s:I

    .line 203
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->l:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {v0, p1}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->setMinViewabilityPercent(I)V

    :cond_1
    return-void
.end method

.method public setVideoEvents(Lcom/iab/omid/library/verizonmedia/adsession/a/a;)V
    .locals 2

    .line 428
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Setting video events for component"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 430
    iput-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;->m:Lcom/iab/omid/library/verizonmedia/adsession/a/a;

    if-eqz p1, :cond_0

    .line 434
    new-instance p1, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeVideoComponent$WJB7r9JdvMFBFhZZIVtjyw3zo40;

    invoke-direct {p1, p0}, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeVideoComponent$WJB7r9JdvMFBFhZZIVtjyw3zo40;-><init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeVideoComponent;)V

    .line 6722
    invoke-static {p1}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string p1, "VideoEvents is null; OMSDK video events tracking is suspended"

    .line 442
    invoke-virtual {v0, p1}, Lcom/verizon/ads/Logger;->i(Ljava/lang/String;)V

    return-void
.end method
