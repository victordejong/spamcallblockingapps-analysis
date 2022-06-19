.class public Lcom/mopub/mobileads/AdViewController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;
.implements Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;


# static fields
.field private static final h:Landroid/widget/FrameLayout$LayoutParams;

.field private static final i:Ljava/util/WeakHashMap;
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
.field private A:Z

.field private B:Lcom/mopub/mobileads/AdAdapter;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:J

.field private F:J

.field a:Landroid/content/Context;

.field b:Lcom/mopub/network/AdLoader;

.field c:Landroid/os/Handler;

.field d:I

.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field f:Landroid/graphics/Point;

.field g:Ljava/lang/Integer;

.field private final j:J

.field private k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private l:Lcom/mopub/mobileads/MoPubAd;

.field private m:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

.field private n:Lcom/mopub/volley/Request;

.field private final o:Lcom/mopub/network/AdLoader$Listener;

.field private p:Lcom/mopub/network/AdResponse;

.field private q:Ljava/lang/String;

.field private final r:Ljava/lang/Runnable;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Landroid/view/WindowInsets;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 75
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lcom/mopub/mobileads/AdViewController;->h:Landroid/widget/FrameLayout$LayoutParams;

    .line 80
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/AdViewController;->i:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mopub/mobileads/MoPubAd;)V
    .locals 2

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 120
    iput v0, p0, Lcom/mopub/mobileads/AdViewController;->d:I

    .line 123
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mopub/mobileads/AdViewController;->e:Ljava/util/Map;

    .line 130
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->u:Z

    .line 136
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->v:Z

    .line 163
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->a:Landroid/content/Context;

    .line 164
    iput-object p2, p0, Lcom/mopub/mobileads/AdViewController;->l:Lcom/mopub/mobileads/MoPubAd;

    .line 167
    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/mopub/mobileads/AdViewController;->j:J

    .line 169
    new-instance p1, Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    iget-object p2, p0, Lcom/mopub/mobileads/AdViewController;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->m:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    .line 171
    new-instance p1, Lcom/mopub/mobileads/AdViewController$1;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/AdViewController$1;-><init>(Lcom/mopub/mobileads/AdViewController;)V

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->o:Lcom/mopub/network/AdLoader$Listener;

    .line 183
    new-instance p1, Lcom/mopub/mobileads/AdViewController$2;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/AdViewController$2;-><init>(Lcom/mopub/mobileads/AdViewController;)V

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->r:Ljava/lang/Runnable;

    const-wide/16 p1, 0x0

    .line 192
    iput-wide p1, p0, Lcom/mopub/mobileads/AdViewController;->E:J

    const p1, 0xea60

    .line 193
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->g:Ljava/lang/Integer;

    .line 194
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->c:Landroid/os/Handler;

    const-string p1, ""

    .line 195
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->D:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/AdViewController;Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .line 3719
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->p:Lcom/mopub/network/AdResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3720
    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v1

    .line 3721
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->p:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 4159
    sget-object v2, Lcom/mopub/mobileads/AdViewController;->i:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 3725
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/mopub/mobileads/AdViewController;->a:Landroid/content/Context;

    if-eqz p1, :cond_2

    .line 3726
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->a:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result p1

    .line 3727
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/mopub/mobileads/AdViewController;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result p0

    .line 3729
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, p1, p0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v0

    .line 3731
    :cond_2
    sget-object p0, Lcom/mopub/mobileads/AdViewController;->h:Landroid/widget/FrameLayout$LayoutParams;

    return-object p0
.end method

.method static synthetic a(Lcom/mopub/mobileads/AdViewController;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->i()V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/mopub/mobileads/MoPubError;)V
    .locals 6

    if-nez p1, :cond_0

    .line 316
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdViewController;->b(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    :cond_0
    const-string v0, "javascript:"

    .line 320
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 321
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Loading url: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->n:Lcom/mopub/volley/Request;

    if-eqz v0, :cond_3

    .line 325
    iget-object p1, p0, Lcom/mopub/mobileads/AdViewController;->C:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 326
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, v2, [Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Already loading an ad for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->C:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", wait to finish."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 331
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/AdViewController;->b(Ljava/lang/String;Lcom/mopub/mobileads/MoPubError;)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/mopub/mobileads/MoPubError;)V
    .locals 7

    .line 587
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 588
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_0

    .line 594
    :cond_0
    monitor-enter p0

    .line 595
    :try_start_0
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->b:Lcom/mopub/network/AdLoader;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/mopub/network/AdLoader;->hasMoreAds()Z

    move-result v1

    if-nez v1, :cond_2

    .line 596
    :cond_1
    new-instance v6, Lcom/mopub/network/AdLoader;

    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubAd;->getAdFormat()Lcom/mopub/common/AdFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/AdViewController;->C:Ljava/lang/String;

    iget-object v4, p0, Lcom/mopub/mobileads/AdViewController;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/mopub/mobileads/AdViewController;->o:Lcom/mopub/network/AdLoader$Listener;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/mopub/network/AdLoader;-><init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdLoader$Listener;)V

    iput-object v6, p0, Lcom/mopub/mobileads/AdViewController;->b:Lcom/mopub/network/AdLoader;

    .line 598
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    iget-object p1, p0, Lcom/mopub/mobileads/AdViewController;->b:Lcom/mopub/network/AdLoader;

    invoke-virtual {p1, p2}, Lcom/mopub/network/AdLoader;->loadNextAd(Lcom/mopub/mobileads/MoPubError;)Lcom/mopub/volley/Request;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->n:Lcom/mopub/volley/Request;

    return-void

    :catchall_0
    move-exception p1

    .line 598
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 589
    :cond_3
    :goto_0
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "Can\'t load an ad in this ad view because it was destroyed."

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 590
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->j()V

    return-void
.end method

.method private i()V
    .locals 4

    const/4 v0, 0x1

    .line 296
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->A:Z

    .line 297
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->C:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 298
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Can\'t load an ad in this ad view because the ad unit ID is not set. Did you forget to call setAdUnitId()?"

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 300
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->MISSING_AD_UNIT_ID:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->b(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 304
    :cond_0
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->n()Z

    move-result v1

    if-nez v1, :cond_1

    .line 305
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Can\'t load an ad because there is no network connectivity."

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 306
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->b(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 310
    :cond_1
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->k()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 311
    invoke-direct {p0, v0, v1}, Lcom/mopub/mobileads/AdViewController;->a(Ljava/lang/String;Lcom/mopub/mobileads/MoPubError;)V

    return-void
.end method

.method private j()V
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->n:Lcom/mopub/volley/Request;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 367
    invoke-virtual {v0}, Lcom/mopub/volley/Request;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->n:Lcom/mopub/volley/Request;

    invoke-virtual {v0}, Lcom/mopub/volley/Request;->cancel()V

    .line 370
    :cond_0
    iput-object v1, p0, Lcom/mopub/mobileads/AdViewController;->n:Lcom/mopub/volley/Request;

    .line 372
    :cond_1
    iput-object v1, p0, Lcom/mopub/mobileads/AdViewController;->b:Lcom/mopub/network/AdLoader;

    return-void
.end method

.method private k()Ljava/lang/String;
    .locals 4

    .line 618
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->m:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 622
    :cond_0
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    .line 624
    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->m:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    iget-object v3, p0, Lcom/mopub/mobileads/AdViewController;->C:Ljava/lang/String;

    .line 625
    invoke-virtual {v2, v3}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/AdViewController;->w:Ljava/lang/String;

    .line 626
    invoke-virtual {v2, v3}, Lcom/mopub/common/AdUrlGenerator;->withKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v2

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->x:Ljava/lang/String;

    .line 627
    :cond_1
    invoke-virtual {v2, v1}, Lcom/mopub/common/AdUrlGenerator;->withUserDataKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->f:Landroid/graphics/Point;

    .line 628
    invoke-virtual {v0, v1}, Lcom/mopub/common/AdUrlGenerator;->withRequestedAdSize(Landroid/graphics/Point;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->y:Landroid/view/WindowInsets;

    .line 629
    invoke-virtual {v0, v1}, Lcom/mopub/common/AdUrlGenerator;->withWindowInsets(Landroid/view/WindowInsets;)Lcom/mopub/common/AdUrlGenerator;

    .line 631
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->m:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    sget-object v1, Lcom/mopub/common/Constants;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private l()V
    .locals 8

    .line 651
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->m()V

    .line 652
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->u:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    const-wide/32 v0, 0x927c0

    .line 653
    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->g:Ljava/lang/Integer;

    .line 654
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    iget v6, p0, Lcom/mopub/mobileads/AdViewController;->d:I

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v4, v4

    mul-long v2, v2, v4

    .line 653
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 655
    iget-wide v2, p0, Lcom/mopub/mobileads/AdViewController;->E:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    .line 661
    :goto_0
    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->c:Landroid/os/Handler;

    iget-object v3, p0, Lcom/mopub/mobileads/AdViewController;->r:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private m()V
    .locals 2

    .line 681
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private n()Z
    .locals 4

    .line 686
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->a:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 690
    invoke-static {v0, v2}, Lcom/mopub/common/util/DeviceUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 695
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->a:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 698
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_3

    .line 700
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public static setShouldHonorServerDimensions(Landroid/view/View;)V
    .locals 2

    .line 155
    sget-object v0, Lcom/mopub/mobileads/AdViewController;->i:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 465
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->v:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->t:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 466
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->b(Z)V

    :cond_0
    return-void
.end method

.method final a(Lcom/mopub/network/AdResponse;)V
    .locals 18

    move-object/from16 v1, p0

    const-string v0, "callapp_floor_price"

    const/4 v2, 0x1

    .line 200
    iput v2, v1, Lcom/mopub/mobileads/AdViewController;->d:I

    move-object/from16 v3, p1

    .line 201
    iput-object v3, v1, Lcom/mopub/mobileads/AdViewController;->p:Lcom/mopub/network/AdResponse;

    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getBaseAdClassName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/mopub/mobileads/AdViewController;->q:Ljava/lang/String;

    .line 204
    iget-object v3, v1, Lcom/mopub/mobileads/AdViewController;->p:Lcom/mopub/network/AdResponse;

    invoke-virtual {v3}, Lcom/mopub/network/AdResponse;->getRefreshTimeMillis()Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/mopub/mobileads/AdViewController;->g:Ljava/lang/Integer;

    const/4 v3, 0x0

    .line 205
    iput-object v3, v1, Lcom/mopub/mobileads/AdViewController;->n:Lcom/mopub/volley/Request;

    .line 1736
    iget-object v3, v1, Lcom/mopub/mobileads/AdViewController;->p:Lcom/mopub/network/AdResponse;

    invoke-virtual {v3}, Lcom/mopub/network/AdResponse;->getBaseAdClassName()Ljava/lang/String;

    move-result-object v3

    .line 1737
    iget-object v4, v1, Lcom/mopub/mobileads/AdViewController;->p:Lcom/mopub/network/AdResponse;

    invoke-virtual {v4}, Lcom/mopub/network/AdResponse;->getServerExtras()Ljava/util/Map;

    move-result-object v4

    .line 1738
    iget-object v5, v1, Lcom/mopub/mobileads/AdViewController;->p:Lcom/mopub/network/AdResponse;

    invoke-virtual {v5}, Lcom/mopub/network/AdResponse;->getAdType()Ljava/lang/String;

    move-result-object v5

    .line 1739
    iget-object v6, v1, Lcom/mopub/mobileads/AdViewController;->p:Lcom/mopub/network/AdResponse;

    invoke-virtual {v6}, Lcom/mopub/network/AdResponse;->getFullAdType()Ljava/lang/String;

    move-result-object v6

    .line 1740
    iget-object v7, v1, Lcom/mopub/mobileads/AdViewController;->p:Lcom/mopub/network/AdResponse;

    invoke-virtual {v7}, Lcom/mopub/network/AdResponse;->getImpressionMinVisibleDips()Ljava/lang/String;

    move-result-object v7

    .line 1741
    iget-object v8, v1, Lcom/mopub/mobileads/AdViewController;->p:Lcom/mopub/network/AdResponse;

    invoke-virtual {v8}, Lcom/mopub/network/AdResponse;->getImpressionMinVisibleMs()Ljava/lang/String;

    move-result-object v8

    .line 1742
    iget-object v9, v1, Lcom/mopub/mobileads/AdViewController;->p:Lcom/mopub/network/AdResponse;

    invoke-virtual {v9}, Lcom/mopub/network/AdResponse;->allowCustomClose()Z

    move-result v9

    .line 1743
    iget-object v10, v1, Lcom/mopub/mobileads/AdViewController;->p:Lcom/mopub/network/AdResponse;

    invoke-virtual {v10}, Lcom/mopub/network/AdResponse;->getViewabilityVendors()Ljava/util/Set;

    move-result-object v10

    .line 1745
    invoke-static {v4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 1747
    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v11

    const/4 v12, 0x0

    if-nez v11, :cond_0

    .line 1749
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Can\'t load an ad in this ad view because it was destroyed."

    aput-object v3, v2, v12

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 1750
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/AdViewController;->a(Lcom/mopub/mobileads/MoPubErrorCode;)Z

    goto/16 :goto_7

    .line 1754
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1755
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Couldn\'t invoke base ad because the server did not specify one."

    aput-object v3, v2, v12

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 1756
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/AdViewController;->a(Lcom/mopub/mobileads/MoPubErrorCode;)Z

    goto/16 :goto_7

    .line 1760
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/AdViewController;->g()V

    .line 1765
    :try_start_0
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_2

    .line 1767
    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    .line 1768
    iget-object v15, v1, Lcom/mopub/mobileads/AdViewController;->e:Ljava/util/Map;

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-interface {v15, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 1773
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/AdViewController;->getPublisherRevenue()D

    move-result-wide v13

    .line 1775
    iget-object v0, v1, Lcom/mopub/mobileads/AdViewController;->e:Ljava/util/Map;

    const-string v15, "callapp_request_id"

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1777
    instance-of v15, v0, Ljava/lang/String;

    const-string v16, ""

    if-eqz v15, :cond_3

    .line 1778
    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object/from16 v0, v16

    .line 1781
    :goto_1
    invoke-static {v0, v13, v14}, Lcom/mopub/common/CallAppBidderManager;->shouldStopLoading(Ljava/lang/String;D)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1782
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->MIN_FLOOR_PRICE_REACHED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/AdViewController;->b(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto/16 :goto_7

    .line 1787
    :cond_4
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v13, v2, [Ljava/lang/Object;

    const-string v14, "Loading ad adapter."

    aput-object v14, v13, v12

    invoke-static {v0, v13}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 1789
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 1790
    iget-object v13, v1, Lcom/mopub/mobileads/AdViewController;->e:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_5
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1791
    iget-object v15, v1, Lcom/mopub/mobileads/AdViewController;->e:Ljava/util/Map;

    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_5

    .line 1792
    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 1793
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1798
    :cond_6
    invoke-interface {v11}, Lcom/mopub/mobileads/MoPubAd;->getAdFormat()Lcom/mopub/common/AdFormat;

    move-result-object v13

    sget-object v14, Lcom/mopub/common/AdFormat;->BANNER:Lcom/mopub/common/AdFormat;

    if-ne v13, v14, :cond_7

    const-string v13, "com.mopub.mobileads.InlineAdAdapter"

    goto :goto_3

    :cond_7
    const-string v13, "com.mopub.mobileads.FullscreenAdAdapter"

    :goto_3
    const-string v14, "html-response-body"

    .line 1804
    invoke-interface {v4, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1806
    new-instance v14, Lcom/mopub/mobileads/AdData$Builder;

    invoke-direct {v14}, Lcom/mopub/mobileads/AdData$Builder;-><init>()V

    .line 1807
    invoke-virtual {v14, v0}, Lcom/mopub/mobileads/AdData$Builder;->extras(Ljava/util/Map;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 1808
    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/AdViewController;->getBroadcastIdentifier()J

    move-result-wide v14

    invoke-virtual {v0, v14, v15}, Lcom/mopub/mobileads/AdData$Builder;->broadcastIdentifier(J)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 1809
    invoke-interface {v11}, Lcom/mopub/mobileads/MoPubAd;->getAdFormat()Lcom/mopub/common/AdFormat;

    move-result-object v11

    .line 2566
    sget-object v14, Lcom/mopub/common/AdFormat;->BANNER:Lcom/mopub/common/AdFormat;

    if-ne v11, v14, :cond_8

    const/16 v11, 0x2710

    goto :goto_4

    :cond_8
    const/16 v11, 0x7530

    .line 2572
    :goto_4
    iget-object v14, v1, Lcom/mopub/mobileads/AdViewController;->p:Lcom/mopub/network/AdResponse;

    if-nez v14, :cond_9

    .line 2573
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_5

    .line 2575
    :cond_9
    invoke-virtual {v14, v11}, Lcom/mopub/network/AdResponse;->getAdTimeoutMillis(I)Ljava/lang/Integer;

    move-result-object v11

    .line 1809
    :goto_5
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v0, v11}, Lcom/mopub/mobileads/AdData$Builder;->timeoutDelayMillis(I)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 1810
    invoke-virtual {v0, v7}, Lcom/mopub/mobileads/AdData$Builder;->impressionMinVisibleDips(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 1811
    invoke-virtual {v0, v8}, Lcom/mopub/mobileads/AdData$Builder;->impressionMinVisibleMs(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 1812
    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/AdViewController;->getDspCreativeId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/mopub/mobileads/AdData$Builder;->dspCreativeId(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    if-eqz v4, :cond_a

    goto :goto_6

    :cond_a
    move-object/from16 v4, v16

    .line 1813
    :goto_6
    invoke-virtual {v0, v4}, Lcom/mopub/mobileads/AdData$Builder;->adPayload(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 1814
    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/AdViewController;->getAdWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mopub/mobileads/AdData$Builder;->adWidth(Ljava/lang/Integer;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 1815
    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/AdViewController;->getAdHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mopub/mobileads/AdData$Builder;->adHeight(Ljava/lang/Integer;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 1816
    invoke-virtual {v0, v5}, Lcom/mopub/mobileads/AdData$Builder;->adType(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 1817
    invoke-virtual {v0, v6}, Lcom/mopub/mobileads/AdData$Builder;->fullAdType(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 1818
    invoke-virtual {v0, v9}, Lcom/mopub/mobileads/AdData$Builder;->allowCustomClose(Z)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 1819
    invoke-virtual {v0, v10}, Lcom/mopub/mobileads/AdData$Builder;->viewabilityVendors(Ljava/util/Set;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 1820
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdData$Builder;->build()Lcom/mopub/mobileads/AdData;

    move-result-object v0

    .line 1822
    invoke-static {v13}, Lcom/mopub/common/util/Reflection;->classFound(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v4, :cond_b

    .line 1824
    :try_start_1
    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-class v7, Lcom/mopub/mobileads/AdAdapter;

    .line 1825
    invoke-virtual {v4, v7}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    new-array v7, v5, [Ljava/lang/Class;

    .line 1826
    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v12

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v2

    const-class v8, Lcom/mopub/mobileads/AdData;

    aput-object v8, v7, v6

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 1833
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v5, v5, [Ljava/lang/Object;

    .line 1834
    iget-object v7, v1, Lcom/mopub/mobileads/AdViewController;->a:Landroid/content/Context;

    aput-object v7, v5, v12

    aput-object v3, v5, v2

    aput-object v0, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/AdAdapter;

    iput-object v0, v1, Lcom/mopub/mobileads/AdViewController;->B:Lcom/mopub/mobileads/AdAdapter;

    .line 1839
    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/AdAdapter;->load(Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 1841
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "Error loading ad adapter"

    aput-object v5, v4, v12

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 1842
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/AdViewController;->a(Lcom/mopub/mobileads/MoPubErrorCode;)Z

    goto :goto_7

    .line 1845
    :cond_b
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "Could not load adapter"

    aput-object v4, v3, v12

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v4, v3, v2

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 1848
    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v6

    .line 1845
    invoke-static {v0, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 1849
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/AdViewController;->a(Lcom/mopub/mobileads/MoPubErrorCode;)Z

    .line 209
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/mopub/mobileads/AdViewController;->l()V

    return-void
.end method

.method final a(Z)V
    .locals 0

    .line 471
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdViewController;->v:Z

    .line 472
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdViewController;->b(Z)V

    return-void
.end method

.method final a(Lcom/mopub/mobileads/MoPubErrorCode;)Z
    .locals 6

    const/4 v0, 0x2

    const-string v1, "Load failed."

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    .line 344
    sget-object v5, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 346
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v1, v2, v0

    .line 344
    invoke-static {v5, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_0

    .line 349
    :cond_0
    sget-object v5, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    aput-object p1, v2, v3

    .line 352
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 349
    invoke-static {v5, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 355
    :goto_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->b:Lcom/mopub/network/AdLoader;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mopub/network/AdLoader;->hasMoreAds()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    .line 356
    invoke-direct {p0, v0, p1}, Lcom/mopub/mobileads/AdViewController;->a(Ljava/lang/String;Lcom/mopub/mobileads/MoPubError;)V

    return v3

    .line 360
    :cond_1
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdViewController;->b(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return v4
.end method

.method final b()V
    .locals 1

    const/4 v0, 0x1

    .line 494
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->t:Z

    const/4 v0, 0x0

    .line 3461
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->b(Z)V

    return-void
.end method

.method final b(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 4

    .line 635
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Ad failed to load."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 636
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->j()V

    .line 638
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 643
    :cond_0
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->C:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 644
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->l()V

    .line 647
    :cond_1
    invoke-interface {v0, p1}, Lcom/mopub/mobileads/MoPubAd;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method final b(Z)V
    .locals 6

    .line 476
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->A:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->u:Z

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

    .line 480
    :goto_1
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Refresh "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for ad unit ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->C:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v3, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 483
    :cond_2
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdViewController;->u:Z

    .line 484
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->A:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 485
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/mobileads/AdViewController;->F:J

    .line 486
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->l()V

    return-void

    :cond_3
    if-nez p1, :cond_4

    .line 488
    iget-wide v0, p0, Lcom/mopub/mobileads/AdViewController;->E:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mopub/mobileads/AdViewController;->F:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mopub/mobileads/AdViewController;->E:J

    .line 489
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->m()V

    :cond_4
    return-void
.end method

.method final c()V
    .locals 1

    const/4 v0, 0x0

    .line 499
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->t:Z

    .line 500
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->a()V

    return-void
.end method

.method final d()V
    .locals 1

    .line 541
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->s:Z

    if-eqz v0, :cond_0

    return-void

    .line 545
    :cond_0
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->j()V

    const/4 v0, 0x0

    .line 547
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->b(Z)V

    .line 548
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->m()V

    .line 553
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->g()V

    const/4 v0, 0x0

    .line 554
    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->l:Lcom/mopub/mobileads/MoPubAd;

    .line 555
    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->a:Landroid/content/Context;

    .line 556
    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->m:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    const-string v0, ""

    .line 557
    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->D:Ljava/lang/String;

    const/4 v0, 0x1

    .line 560
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->s:Z

    return-void
.end method

.method final e()V
    .locals 2

    .line 579
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->p:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_0

    .line 581
    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getClickTrackingUrls()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method final f()V
    .locals 0

    .line 603
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->g()V

    .line 604
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->j()V

    .line 605
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->loadAd()V

    return-void
.end method

.method public fakeLoadAd(Lcom/mopub/network/AdResponse;)V
    .locals 1

    const/4 v0, 0x1

    .line 286
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->A:Z

    .line 287
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdViewController;->a(Lcom/mopub/network/AdResponse;)V

    return-void
.end method

.method protected final g()V
    .locals 1

    .line 609
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getAdAdapter()Lcom/mopub/mobileads/AdAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdAdapter;->b()V

    const/4 v0, 0x0

    .line 612
    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->B:Lcom/mopub/mobileads/AdAdapter;

    :cond_0
    return-void
.end method

.method public getAdAdapter()Lcom/mopub/mobileads/AdAdapter;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->B:Lcom/mopub/mobileads/AdAdapter;

    return-object v0
.end method

.method public getAdHeight()I
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->p:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->p:Lcom/mopub/network/AdResponse;

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

    .line 416
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->C:Ljava/lang/String;

    return-object v0
.end method

.method public getAdWidth()I
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->p:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->p:Lcom/mopub/network/AdResponse;

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

    .line 511
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->p:Lcom/mopub/network/AdResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 514
    :cond_0
    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->allowCustomClose()Z

    move-result v0

    return v0
.end method

.method public getAutorefreshEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 453
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getCurrentAutoRefreshStatus()Z

    move-result v0

    return v0
.end method

.method public getBaseAdClassName()Ljava/lang/String;
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getBroadcastIdentifier()J
    .locals 2

    .line 429
    iget-wide v0, p0, Lcom/mopub/mobileads/AdViewController;->j:J

    return-wide v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->a:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentAutoRefreshStatus()Z
    .locals 1

    .line 457
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->u:Z

    return v0
.end method

.method public getDspCreativeId()Ljava/lang/String;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->C:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->p:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getDspCreativeId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getFullAdType()Ljava/lang/String;
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->p:Lcom/mopub/network/AdResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 522
    :cond_0
    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getFullAdType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/LocationService;->getLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getMoPubAd()Lcom/mopub/mobileads/MoPubAd;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->l:Lcom/mopub/mobileads/MoPubAd;

    return-object v0
.end method

.method public getPublisherRevenue()D
    .locals 3

    .line 1065
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->p:Lcom/mopub/network/AdResponse;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->e:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mopub/common/MoPub;->getPublisherRevenue(Lcom/mopub/network/AdResponse;Ljava/util/Map;Landroid/os/Bundle;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTesting()Z
    .locals 1

    .line 526
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->z:Z

    return v0
.end method

.method public getUserDataKeywords()Ljava/lang/String;
    .locals 1

    .line 385
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->x:Ljava/lang/String;

    return-object v0
.end method

.method final h()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 854
    iput-wide v0, p0, Lcom/mopub/mobileads/AdViewController;->E:J

    .line 855
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/mobileads/AdViewController;->F:J

    .line 857
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getAdAdapter()Lcom/mopub/mobileads/AdAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 859
    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/AdAdapter;->a(Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;)V

    .line 860
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/AdAdapter;->a(Lcom/mopub/mobileads/MoPubAd;)V

    :cond_0
    return-void
.end method

.method public loadAd()V
    .locals 1

    const/4 v0, 0x1

    .line 291
    iput v0, p0, Lcom/mopub/mobileads/AdViewController;->d:I

    .line 292
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->i()V

    return-void
.end method

.method public onAdClicked()V
    .locals 4

    .line 928
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 930
    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubAd;->onAdClicked()V

    :cond_0
    if-eqz v0, :cond_3

    .line 934
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->B:Lcom/mopub/mobileads/AdAdapter;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/mopub/mobileads/AdAdapter;->b:Lcom/mopub/mobileads/BaseAd;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->B:Lcom/mopub/mobileads/AdAdapter;

    iget-object v1, v1, Lcom/mopub/mobileads/AdAdapter;->b:Lcom/mopub/mobileads/BaseAd;

    invoke-virtual {v1}, Lcom/mopub/mobileads/BaseAd;->shouldReportImpressionAndClick()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 935
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 937
    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubAd;->getAdFormat()Lcom/mopub/common/AdFormat;

    move-result-object v1

    sget-object v2, Lcom/mopub/common/AdFormat;->INTERSTITIAL:Lcom/mopub/common/AdFormat;

    if-ne v1, v2, :cond_1

    .line 938
    sget-object v0, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->INTERSTITIAL:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    goto :goto_0

    .line 940
    :cond_1
    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubAd;->getAdHeight()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_2

    .line 941
    sget-object v0, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->BANNER_320X50:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    goto :goto_0

    .line 943
    :cond_2
    sget-object v0, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->BANNER_300X250:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    .line 947
    :goto_0
    sget-object v1, Lcom/mopub/common/MoPub;->analyticsEventsListener:Lcom/mopub/common/MoPub$AnalyticsEventsListener;

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->B:Lcom/mopub/mobileads/AdAdapter;

    iget-object v2, v2, Lcom/mopub/mobileads/AdAdapter;->b:Lcom/mopub/mobileads/BaseAd;

    invoke-virtual {v2}, Lcom/mopub/mobileads/BaseAd;->getProviderTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/mopub/common/MoPub$AnalyticsEventsListener;->onAdClicked(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    :cond_3
    return-void
.end method

.method public onAdCollapsed()V
    .locals 1

    .line 1037
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1039
    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubAd;->onAdCollapsed()V

    :cond_0
    return-void
.end method

.method public onAdComplete(Lcom/mopub/common/MoPubReward;)V
    .locals 1

    .line 1005
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1007
    invoke-interface {v0, p1}, Lcom/mopub/mobileads/MoPubAd;->onAdComplete(Lcom/mopub/common/MoPubReward;)V

    :cond_0
    return-void
.end method

.method public onAdDismissed()V
    .locals 1

    .line 997
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 999
    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubAd;->onAdDismissed()V

    :cond_0
    return-void
.end method

.method public onAdExpanded()V
    .locals 1

    .line 1029
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1031
    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubAd;->onAdExpanded()V

    :cond_0
    return-void
.end method

.method public onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 912
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 914
    invoke-interface {v0, p1}, Lcom/mopub/mobileads/MoPubAd;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method public onAdImpression()V
    .locals 9

    .line 955
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->p:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_2

    .line 956
    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getRequestId()Ljava/lang/String;

    move-result-object v0

    .line 958
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->D:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 959
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

    .line 964
    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->D:Ljava/lang/String;

    .line 966
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->p:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getImpressionTrackingUrls()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    .line 968
    new-instance v0, Lcom/mopub/network/SingleImpression;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->p:Lcom/mopub/network/AdResponse;

    invoke-virtual {v1}, Lcom/mopub/network/AdResponse;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->p:Lcom/mopub/network/AdResponse;

    invoke-virtual {v2}, Lcom/mopub/network/AdResponse;->getImpressionData()Lcom/mopub/network/ImpressionData;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mopub/network/SingleImpression;-><init>(Ljava/lang/String;Lcom/mopub/network/ImpressionData;)V

    invoke-virtual {v0}, Lcom/mopub/network/SingleImpression;->sendImpression()V

    .line 972
    :cond_2
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 973
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->B:Lcom/mopub/mobileads/AdAdapter;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/mopub/mobileads/AdAdapter;->b:Lcom/mopub/mobileads/BaseAd;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->B:Lcom/mopub/mobileads/AdAdapter;

    iget-object v1, v1, Lcom/mopub/mobileads/AdAdapter;->b:Lcom/mopub/mobileads/BaseAd;

    invoke-virtual {v1}, Lcom/mopub/mobileads/BaseAd;->shouldReportImpressionAndClick()Z

    move-result v1

    if-eqz v1, :cond_6

    const-wide/16 v1, 0x0

    .line 975
    iget-object v3, p0, Lcom/mopub/mobileads/AdViewController;->p:Lcom/mopub/network/AdResponse;

    if-eqz v3, :cond_3

    .line 976
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->e:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v3, v1, v2}, Lcom/mopub/common/MoPub;->getPublisherRevenue(Lcom/mopub/network/AdResponse;Ljava/util/Map;Landroid/os/Bundle;)D

    move-result-wide v1

    :cond_3
    move-wide v6, v1

    .line 980
    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubAd;->getAdFormat()Lcom/mopub/common/AdFormat;

    move-result-object v1

    sget-object v2, Lcom/mopub/common/AdFormat;->INTERSTITIAL:Lcom/mopub/common/AdFormat;

    if-ne v1, v2, :cond_4

    .line 981
    sget-object v0, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->INTERSTITIAL:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    :goto_0
    move-object v8, v0

    goto :goto_1

    .line 983
    :cond_4
    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubAd;->getAdHeight()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_5

    .line 984
    sget-object v0, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->BANNER_320X50:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    goto :goto_0

    .line 986
    :cond_5
    sget-object v0, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->BANNER_300X250:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    goto :goto_0

    .line 990
    :goto_1
    sget-object v3, Lcom/mopub/common/MoPub;->analyticsEventsListener:Lcom/mopub/common/MoPub$AnalyticsEventsListener;

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->B:Lcom/mopub/mobileads/AdAdapter;

    iget-object v0, v0, Lcom/mopub/mobileads/AdAdapter;->b:Lcom/mopub/mobileads/BaseAd;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseAd;->getProviderTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getAdUnitId()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v3 .. v8}, Lcom/mopub/common/MoPub$AnalyticsEventsListener;->onAdLoggingImpression(Ljava/lang/String;Ljava/lang/String;DLcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    :cond_6
    return-void
.end method

.method public onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 905
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdViewController;->a(Lcom/mopub/mobileads/MoPubErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 906
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdViewController;->b(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 4

    .line 878
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->l()V

    .line 880
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->b:Lcom/mopub/network/AdLoader;

    if-eqz v0, :cond_0

    .line 881
    invoke-virtual {v0}, Lcom/mopub/network/AdLoader;->creativeDownloadSuccess()V

    const/4 v0, 0x0

    .line 882
    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->b:Lcom/mopub/network/AdLoader;

    goto :goto_0

    .line 884
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "mAdLoader is not supposed to be null"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 888
    :goto_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->B:Lcom/mopub/mobileads/AdAdapter;

    iget-object v0, v0, Lcom/mopub/mobileads/AdAdapter;->b:Lcom/mopub/mobileads/BaseAd;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseAd;->getAdView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 890
    sget v1, Lcom/mopub/mobileads/base/R$id;->callapp_ad_height_tag:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 892
    sget v2, Lcom/mopub/mobileads/base/R$id;->callapp_ad_height_tag:I

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 897
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 899
    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubAd;->onAdLoaded()V

    :cond_2
    return-void
.end method

.method public onAdPauseAutoRefresh()V
    .locals 1

    .line 1021
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1023
    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubAd;->onAdPauseAutoRefresh()V

    :cond_0
    return-void
.end method

.method public onAdResumeAutoRefresh()V
    .locals 1

    .line 1013
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1015
    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubAd;->onAdResumeAutoRefresh()V

    :cond_0
    return-void
.end method

.method public onAdShown()V
    .locals 1

    .line 920
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 922
    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubAd;->onAdShown()V

    :cond_0
    return-void
.end method

.method public reload()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 336
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->loadAd()V

    return-void
.end method

.method public setAdResponse(Lcom/mopub/network/AdResponse;)V
    .locals 0

    .line 1050
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->p:Lcom/mopub/network/AdResponse;

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->C:Ljava/lang/String;

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->w:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0

    return-void
.end method

.method public setMoPubAd(Lcom/mopub/mobileads/MoPubAd;)V
    .locals 0

    .line 1045
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->l:Lcom/mopub/mobileads/MoPubAd;

    return-void
.end method

.method public setTesting(Z)V
    .locals 0

    .line 530
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdViewController;->z:Z

    return-void
.end method

.method public setUserDataKeywords(Ljava/lang/String;)V
    .locals 1

    .line 392
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 393
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->x:Ljava/lang/String;

    return-void

    .line 396
    :cond_0
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->x:Ljava/lang/String;

    return-void
.end method

.method public setWindowInsets(Landroid/view/WindowInsets;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->y:Landroid/view/WindowInsets;

    return-void
.end method
