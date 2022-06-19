.class public Lcom/mopub/mobileads/AdViewController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;
.implements Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;


# static fields
.field public static final F:Landroid/widget/FrameLayout$LayoutParams;

.field public static final G:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/Integer;

.field public C:Ljava/lang/String;

.field public D:J

.field public E:J

.field public final a:J

.field public b:Landroid/content/Context;

.field public c:Lcom/mopub/mobileads/MoPubAd;

.field public d:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

.field public f:Lcom/mopub/volley/Request;

.field public g:Lcom/mopub/network/AdLoader;

.field public final h:Lcom/mopub/network/AdLoader$Listener;

.field public j:Lcom/mopub/network/AdResponse;

.field public k:Ljava/lang/String;

.field public final l:Ljava/lang/Runnable;

.field public m:Z

.field public n:Landroid/os/Handler;

.field public o:Z

.field public p:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field public q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public r:Z

.field public s:Z

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Landroid/graphics/Point;

.field public w:Landroid/view/WindowInsets;

.field public x:Z

.field public y:Z

.field public z:Lcom/mopub/mobileads/AdAdapter;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lcom/mopub/mobileads/AdViewController;->F:Landroid/widget/FrameLayout$LayoutParams;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/AdViewController;->G:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mopub/mobileads/MoPubAd;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/mopub/mobileads/AdViewController;->p:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mopub/mobileads/AdViewController;->q:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->r:Z

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->s:Z

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/mopub/mobileads/AdViewController;->c:Lcom/mopub/mobileads/MoPubAd;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/mopub/mobileads/AdViewController;->a:J

    new-instance p1, Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    iget-object p2, p0, Lcom/mopub/mobileads/AdViewController;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->d:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    new-instance p1, Lcom/mopub/mobileads/AdViewController$a;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/AdViewController$a;-><init>(Lcom/mopub/mobileads/AdViewController;)V

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdLoader$Listener;

    new-instance p1, Lcom/mopub/mobileads/AdViewController$b;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/AdViewController$b;-><init>(Lcom/mopub/mobileads/AdViewController;)V

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->l:Ljava/lang/Runnable;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/mopub/mobileads/AdViewController;->D:J

    const p1, 0xea60

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->B:Ljava/lang/Integer;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->n:Landroid/os/Handler;

    const-string p1, ""

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->C:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/mopub/mobileads/AdViewController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->o()V

    return-void
.end method

.method public static synthetic b(Lcom/mopub/mobileads/AdViewController;Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdViewController;->k(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public static m(Lcom/mopub/volley/VolleyError;Landroid/content/Context;)Lcom/mopub/mobileads/MoPubErrorCode;
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/mopub/volley/VolleyError;->networkResponse:Lcom/mopub/volley/NetworkResponse;

    instance-of v1, p0, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v1, :cond_3

    sget-object p1, Lcom/mopub/mobileads/AdViewController$d;->a:[I

    check-cast p0, Lcom/mopub/network/MoPubNetworkError;

    invoke-virtual {p0}, Lcom/mopub/network/MoPubNetworkError;->getReason()Lcom/mopub/network/MoPubNetworkError$Reason;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    :cond_0
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->TOO_MANY_REQUESTS:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    :cond_1
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    :cond_2
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->WARMUP:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    :cond_3
    if-nez v0, :cond_5

    invoke-static {p1}, Lcom/mopub/common/util/DeviceUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_4

    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    :cond_4
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    :cond_5
    iget p0, v0, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    const/16 p1, 0x190

    if-lt p0, p1, :cond_6

    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    :cond_6
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0
.end method

.method public static n(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Lcom/mopub/mobileads/AdViewController;->G:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setShouldHonorServerDimensions(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/mopub/mobileads/AdViewController;->G:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->f:Lcom/mopub/volley/Request;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mopub/volley/Request;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->f:Lcom/mopub/volley/Request;

    invoke-virtual {v0}, Lcom/mopub/volley/Request;->cancel()V

    :cond_0
    iput-object v1, p0, Lcom/mopub/mobileads/AdViewController;->f:Lcom/mopub/volley/Request;

    :cond_1
    iput-object v1, p0, Lcom/mopub/mobileads/AdViewController;->g:Lcom/mopub/network/AdLoader;

    return-void
.end method

.method public B(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->v:Landroid/graphics/Point;

    return-void
.end method

.method public C(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mopub/mobileads/AdViewController;->s:Z

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdViewController;->z(Z)V

    return-void
.end method

.method public D()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mopub/mobileads/AdViewController;->D:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/mobileads/AdViewController;->E:J

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getAdAdapter()Lcom/mopub/mobileads/AdAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/AdAdapter;->H(Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/AdAdapter;->I(Lcom/mopub/mobileads/MoPubAd;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 4

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Ad failed to load."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->A()V

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->A:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->y()V

    :cond_1
    invoke-interface {v0, p1}, Lcom/mopub/mobileads/MoPubAd;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()V
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->A()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->z(Z)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->d()V

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->p()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->c:Lcom/mopub/mobileads/MoPubAd;

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->d:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    const-string v0, ""

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->C:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->m:Z

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->o:Z

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->x()V

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->o:Z

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->v()V

    return-void
.end method

.method public getAdAdapter()Lcom/mopub/mobileads/AdAdapter;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->z:Lcom/mopub/mobileads/AdAdapter;

    return-object v0
.end method

.method public getAdHeight()I
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->j:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->j:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->A:Ljava/lang/String;

    return-object v0
.end method

.method public getAdWidth()I
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->j:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->j:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAllowCustomClose()Z
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->j:Lcom/mopub/network/AdResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->allowCustomClose()Z

    move-result v0

    return v0
.end method

.method public getAutorefreshEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getCurrentAutoRefreshStatus()Z

    move-result v0

    return v0
.end method

.method public getBaseAdClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getBroadcastIdentifier()J
    .locals 2

    iget-wide v0, p0, Lcom/mopub/mobileads/AdViewController;->a:J

    return-wide v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->b:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentAutoRefreshStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->r:Z

    return v0
.end method

.method public getDspCreativeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->A:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->j:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getDspCreativeId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getFullAdType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->j:Lcom/mopub/network/AdResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getFullAdType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalExtras()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->q:Ljava/util/Map;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->q:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    :goto_0
    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/LocationService;->getLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getMoPubAd()Lcom/mopub/mobileads/MoPubAd;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->c:Lcom/mopub/mobileads/MoPubAd;

    return-object v0
.end method

.method public getTesting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->x:Z

    return v0
.end method

.method public getUserDataKeywords()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->u:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;Lcom/mopub/mobileads/MoPubError;)V
    .locals 7

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->b:Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->g:Lcom/mopub/network/AdLoader;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/mopub/network/AdLoader;->hasMoreAds()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    new-instance v6, Lcom/mopub/network/AdLoader;

    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubAd;->getAdFormat()Lcom/mopub/common/AdFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/AdViewController;->A:Ljava/lang/String;

    iget-object v4, p0, Lcom/mopub/mobileads/AdViewController;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdLoader$Listener;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/mopub/network/AdLoader;-><init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdLoader$Listener;)V

    iput-object v6, p0, Lcom/mopub/mobileads/AdViewController;->g:Lcom/mopub/network/AdLoader;

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/mopub/mobileads/AdViewController;->g:Lcom/mopub/network/AdLoader;

    invoke-virtual {p1, p2}, Lcom/mopub/network/AdLoader;->loadNextAd(Lcom/mopub/mobileads/MoPubError;)Lcom/mopub/volley/Request;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->f:Lcom/mopub/volley/Request;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_0
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "Can\'t load an ad in this ad view because it was destroyed."

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->A()V

    return-void
.end method

.method public i()V
    .locals 0

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->p()V

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->A()V

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->loadAd()V

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->d:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->d:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    iget-object v3, p0, Lcom/mopub/mobileads/AdViewController;->A:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mopub/common/AdUrlGenerator;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/AdViewController;->t:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mopub/common/AdUrlGenerator;->withKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v2

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->u:Ljava/lang/String;

    :cond_1
    invoke-virtual {v2, v1}, Lcom/mopub/common/AdUrlGenerator;->withUserDataKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->v:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Lcom/mopub/common/AdUrlGenerator;->withRequestedAdSize(Landroid/graphics/Point;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->w:Landroid/view/WindowInsets;

    invoke-virtual {v0, v1}, Lcom/mopub/common/AdUrlGenerator;->withWindowInsets(Landroid/view/WindowInsets;)Lcom/mopub/common/AdUrlGenerator;

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->d:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    sget-object v1, Lcom/mopub/common/Constants;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->j:Lcom/mopub/network/AdResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->j:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/mopub/mobileads/AdViewController;->n(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/mopub/mobileads/AdViewController;->b:Landroid/content/Context;

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->b:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, p1, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v1

    :cond_1
    sget-object p1, Lcom/mopub/mobileads/AdViewController;->F:Landroid/widget/FrameLayout$LayoutParams;

    return-object p1
.end method

.method public l(Lcom/mopub/common/AdFormat;)Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/mopub/common/AdFormat;->BANNER:Lcom/mopub/common/AdFormat;

    if-ne p1, v0, :cond_0

    const/16 p1, 0x2710

    goto :goto_0

    :cond_0
    const/16 p1, 0x7530

    :goto_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->j:Lcom/mopub/network/AdResponse;

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/mopub/network/AdResponse;->getAdTimeoutMillis(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public loadAd()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/mopub/mobileads/AdViewController;->p:I

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->o()V

    return-void
.end method

.method public loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)Z
    .locals 7

    const/4 v0, 0x2

    const-string v1, "Load failed."

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v5, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    if-nez p1, :cond_0

    aput-object v1, v2, v4

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    aput-object v1, v2, v0

    invoke-static {v5, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    aput-object v1, v2, v4

    aput-object p1, v2, v3

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-static {v5, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->g:Lcom/mopub/network/AdLoader;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mopub/network/AdLoader;->hasMoreAds()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/mopub/mobileads/AdViewController;->s(Ljava/lang/String;Lcom/mopub/mobileads/MoPubError;)V

    return v3

    :cond_1
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdViewController;->c(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return v4
.end method

.method public final o()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->y:Z

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->A:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Can\'t load an ad in this ad view because the ad unit ID is not set. Did you forget to call setAdUnitId()?"

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->MISSING_AD_UNIT_ID:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->c(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->q()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Can\'t load an ad because there is no network connectivity."

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->c(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mopub/mobileads/AdViewController;->s(Ljava/lang/String;Lcom/mopub/mobileads/MoPubError;)V

    return-void
.end method

.method public onAdClicked()V
    .locals 1

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubAd;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public onAdCollapsed()V
    .locals 1

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubAd;->onAdCollapsed()V

    :cond_0
    return-void
.end method

.method public onAdComplete(Lcom/mopub/common/MoPubReward;)V
    .locals 1

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/MoPubAd;->onAdComplete(Lcom/mopub/common/MoPubReward;)V

    :cond_0
    return-void
.end method

.method public onAdDismissed()V
    .locals 1

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubAd;->onAdDismissed()V

    :cond_0
    return-void
.end method

.method public onAdExpanded()V
    .locals 1

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubAd;->onAdExpanded()V

    :cond_0
    return-void
.end method

.method public onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/MoPubAd;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method public onAdImpression()V
    .locals 4

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->j:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getRequestId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->C:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Ignoring duplicate impression."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->C:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->j:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getImpressionTrackingUrls()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    new-instance v0, Lcom/mopub/network/SingleImpression;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->j:Lcom/mopub/network/AdResponse;

    invoke-virtual {v1}, Lcom/mopub/network/AdResponse;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->j:Lcom/mopub/network/AdResponse;

    invoke-virtual {v2}, Lcom/mopub/network/AdResponse;->getImpressionData()Lcom/mopub/network/ImpressionData;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mopub/network/SingleImpression;-><init>(Ljava/lang/String;Lcom/mopub/network/ImpressionData;)V

    invoke-virtual {v0}, Lcom/mopub/network/SingleImpression;->sendImpression()V

    :cond_2
    return-void
.end method

.method public onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdViewController;->loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdViewController;->c(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 4

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->y()V

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->g:Lcom/mopub/network/AdLoader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/network/AdLoader;->creativeDownloadSuccess()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->g:Lcom/mopub/network/AdLoader;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "mAdLoader is not supposed to be null"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubAd;->onAdLoaded()V

    :cond_1
    return-void
.end method

.method public onAdPauseAutoRefresh()V
    .locals 1

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubAd;->onAdPauseAutoRefresh()V

    :cond_0
    return-void
.end method

.method public onAdResumeAutoRefresh()V
    .locals 1

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubAd;->onAdResumeAutoRefresh()V

    :cond_0
    return-void
.end method

.method public onAdShown()V
    .locals 1

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubAd;->onAdShown()V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getAdAdapter()Lcom/mopub/mobileads/AdAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdAdapter;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->z:Lcom/mopub/mobileads/AdAdapter;

    :cond_0
    return-void
.end method

.method public final q()Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->b:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v2}, Lcom/mopub/common/util/DeviceUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->b:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public r()V
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/mopub/mobileads/AdViewController;->j:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getBaseAdClassName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/mopub/mobileads/AdViewController;->j:Lcom/mopub/network/AdResponse;

    invoke-virtual {v2}, Lcom/mopub/network/AdResponse;->getServerExtras()Ljava/util/Map;

    move-result-object v2

    iget-object v3, v1, Lcom/mopub/mobileads/AdViewController;->j:Lcom/mopub/network/AdResponse;

    invoke-virtual {v3}, Lcom/mopub/network/AdResponse;->getAdType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/mopub/mobileads/AdViewController;->j:Lcom/mopub/network/AdResponse;

    invoke-virtual {v4}, Lcom/mopub/network/AdResponse;->getFullAdType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/mopub/mobileads/AdViewController;->j:Lcom/mopub/network/AdResponse;

    invoke-virtual {v5}, Lcom/mopub/network/AdResponse;->getImpressionMinVisibleDips()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/mopub/mobileads/AdViewController;->j:Lcom/mopub/network/AdResponse;

    invoke-virtual {v6}, Lcom/mopub/network/AdResponse;->getImpressionMinVisibleMs()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/mopub/mobileads/AdViewController;->j:Lcom/mopub/network/AdResponse;

    invoke-virtual {v7}, Lcom/mopub/network/AdResponse;->allowCustomClose()Z

    move-result v7

    iget-object v8, v1, Lcom/mopub/mobileads/AdViewController;->j:Lcom/mopub/network/AdResponse;

    invoke-virtual {v8}, Lcom/mopub/network/AdResponse;->getViewabilityVendors()Ljava/util/Set;

    move-result-object v8

    invoke-static {v2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v9, :cond_0

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, v11, [Ljava/lang/Object;

    const-string v3, "Can\'t load an ad in this ad view because it was destroyed."

    aput-object v3, v2, v10

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/AdViewController;->loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)Z

    return-void

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, v11, [Ljava/lang/Object;

    const-string v3, "Couldn\'t invoke base ad because the server did not specify one."

    aput-object v3, v2, v10

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/AdViewController;->p()V

    sget-object v12, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v13, v11, [Ljava/lang/Object;

    const-string v14, "Loading ad adapter."

    aput-object v14, v13, v10

    invoke-static {v12, v13}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    new-instance v12, Ljava/util/TreeMap;

    invoke-direct {v12, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iget-object v13, v1, Lcom/mopub/mobileads/AdViewController;->q:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iget-object v15, v1, Lcom/mopub/mobileads/AdViewController;->q:Ljava/util/Map;

    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_2

    invoke-interface {v12, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-interface {v9}, Lcom/mopub/mobileads/MoPubAd;->getAdFormat()Lcom/mopub/common/AdFormat;

    move-result-object v13

    sget-object v14, Lcom/mopub/common/AdFormat;->BANNER:Lcom/mopub/common/AdFormat;

    if-ne v13, v14, :cond_4

    const-string v13, "com.mopub.mobileads.InlineAdAdapter"

    goto :goto_2

    :cond_4
    const-string v13, "com.mopub.mobileads.FullscreenAdAdapter"

    :goto_2
    const-string v14, "html-response-body"

    invoke-interface {v2, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v14, Lcom/mopub/mobileads/AdData$Builder;

    invoke-direct {v14}, Lcom/mopub/mobileads/AdData$Builder;-><init>()V

    invoke-virtual {v14, v12}, Lcom/mopub/mobileads/AdData$Builder;->extras(Ljava/util/Map;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/AdViewController;->getBroadcastIdentifier()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Lcom/mopub/mobileads/AdData$Builder;->broadcastIdentifier(J)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v12

    invoke-interface {v9}, Lcom/mopub/mobileads/MoPubAd;->getAdFormat()Lcom/mopub/common/AdFormat;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/mopub/mobileads/AdViewController;->l(Lcom/mopub/common/AdFormat;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v12, v9}, Lcom/mopub/mobileads/AdData$Builder;->timeoutDelayMillis(I)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/mopub/mobileads/AdData$Builder;->impressionMinVisibleDips(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/mopub/mobileads/AdData$Builder;->impressionMinVisibleMs(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/AdViewController;->getDspCreativeId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mopub/mobileads/AdData$Builder;->dspCreativeId(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v5

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    const-string v2, ""

    :goto_3
    invoke-virtual {v5, v2}, Lcom/mopub/mobileads/AdData$Builder;->adPayload(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/AdViewController;->getAdWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mopub/mobileads/AdData$Builder;->adWidth(Ljava/lang/Integer;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/AdViewController;->getAdHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mopub/mobileads/AdData$Builder;->adHeight(Ljava/lang/Integer;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/mopub/mobileads/AdData$Builder;->adType(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/mopub/mobileads/AdData$Builder;->fullAdType(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/mopub/mobileads/AdData$Builder;->allowCustomClose(Z)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/mopub/mobileads/AdData$Builder;->viewabilityVendors(Ljava/util/Set;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/mobileads/AdData$Builder;->build()Lcom/mopub/mobileads/AdData;

    move-result-object v2

    invoke-static {v13}, Lcom/mopub/common/util/Reflection;->classFound(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v3, :cond_6

    :try_start_0
    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v6, Lcom/mopub/mobileads/AdAdapter;

    invoke-virtual {v3, v6}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v10

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v11

    const-class v7, Lcom/mopub/mobileads/AdData;

    aput-object v7, v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/mopub/mobileads/AdViewController;->b:Landroid/content/Context;

    aput-object v6, v4, v10

    aput-object v0, v4, v11

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/AdAdapter;

    iput-object v0, v1, Lcom/mopub/mobileads/AdViewController;->z:Lcom/mopub/mobileads/AdAdapter;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/AdAdapter;->load(Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "Error loading ad adapter"

    aput-object v4, v3, v10

    aput-object v0, v3, v11

    invoke-static {v2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/AdViewController;->loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)Z

    goto :goto_4

    :cond_6
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "Could not load adapter"

    aput-object v3, v2, v10

    sget-object v3, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v3, v2, v11

    invoke-virtual {v3}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lcom/mopub/mobileads/AdViewController;->loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)Z

    :goto_4
    return-void
.end method

.method public reload()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->loadAd()V

    return-void
.end method

.method public s(Ljava/lang/String;Lcom/mopub/mobileads/MoPubError;)V
    .locals 6

    if-nez p1, :cond_0

    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdViewController;->c(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    :cond_0
    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->f:Lcom/mopub/volley/Request;

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/mopub/mobileads/AdViewController;->A:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, v2, [Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already loading an ad for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->A:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", wait to finish."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/mopub/mobileads/AdViewController;->h(Ljava/lang/String;Lcom/mopub/mobileads/MoPubError;)V

    return-void
.end method

.method public setAdContentView(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    instance-of v1, v0, Lcom/mopub/mobileads/MoPubView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->n:Landroid/os/Handler;

    new-instance v2, Lcom/mopub/mobileads/AdViewController$c;

    invoke-direct {v2, p0, v0, p1}, Lcom/mopub/mobileads/AdViewController$c;-><init>(Lcom/mopub/mobileads/AdViewController;Lcom/mopub/mobileads/MoPubAd;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setAdResponse(Lcom/mopub/network/AdResponse;)V
    .locals 0
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->j:Lcom/mopub/network/AdResponse;

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->A:Ljava/lang/String;

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->t:Ljava/lang/String;

    return-void
.end method

.method public setLocalExtras(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    if-eqz p1, :cond_0

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->q:Ljava/util/Map;

    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0

    return-void
.end method

.method public setMoPubAd(Lcom/mopub/mobileads/MoPubAd;)V
    .locals 0
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->c:Lcom/mopub/mobileads/MoPubAd;

    return-void
.end method

.method public setTesting(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mopub/mobileads/AdViewController;->x:Z

    return-void
.end method

.method public setUserDataKeywords(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->u:Ljava/lang/String;

    return-void

    :cond_0
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->u:Ljava/lang/String;

    return-void
.end method

.method public setWindowInsets(Landroid/view/WindowInsets;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->w:Landroid/view/WindowInsets;

    return-void
.end method

.method public t(Lcom/mopub/volley/VolleyError;)V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    instance-of v0, p1, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/mopub/network/MoPubNetworkError;

    invoke-virtual {v0}, Lcom/mopub/network/MoPubNetworkError;->getRefreshTimeMillis()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/mopub/network/MoPubNetworkError;->getRefreshTimeMillis()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->B:Ljava/lang/Integer;

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->b:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/mopub/mobileads/AdViewController;->m(Lcom/mopub/volley/VolleyError;Landroid/content/Context;)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object p1

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/mopub/mobileads/AdViewController;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mopub/mobileads/AdViewController;->p:I

    :cond_1
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdViewController;->c(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public u(Lcom/mopub/network/AdResponse;)V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    iput v0, p0, Lcom/mopub/mobileads/AdViewController;->p:I

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->j:Lcom/mopub/network/AdResponse;

    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getBaseAdClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->k:Ljava/lang/String;

    iget-object p1, p0, Lcom/mopub/mobileads/AdViewController;->j:Lcom/mopub/network/AdResponse;

    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getRefreshTimeMillis()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->B:Ljava/lang/Integer;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->f:Lcom/mopub/volley/Request;

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->r()V

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->y()V

    return-void
.end method

.method public v()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->z(Z)V

    return-void
.end method

.method public w()V
    .locals 2

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->j:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getClickTrackingUrls()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public x()V
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->s:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->z(Z)V

    :cond_0
    return-void
.end method

.method public y()V
    .locals 8

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->d()V

    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->r:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->B:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    const-wide/32 v0, 0x927c0

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->B:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    iget v6, p0, Lcom/mopub/mobileads/AdViewController;->p:I

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v4, v4

    mul-long v2, v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mopub/mobileads/AdViewController;->D:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->n:Landroid/os/Handler;

    iget-object v3, p0, Lcom/mopub/mobileads/AdViewController;->l:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final z(Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->y:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->r:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const-string v0, "enabled"

    goto :goto_1

    :cond_1
    const-string v0, "disabled"

    :goto_1
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Refresh "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for ad unit ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->A:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v3, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_2
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdViewController;->r:Z

    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->y:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/mobileads/AdViewController;->E:J

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->y()V

    goto :goto_2

    :cond_3
    if-nez p1, :cond_4

    iget-wide v0, p0, Lcom/mopub/mobileads/AdViewController;->D:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mopub/mobileads/AdViewController;->E:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mopub/mobileads/AdViewController;->D:J

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->d()V

    :cond_4
    :goto_2
    return-void
.end method
