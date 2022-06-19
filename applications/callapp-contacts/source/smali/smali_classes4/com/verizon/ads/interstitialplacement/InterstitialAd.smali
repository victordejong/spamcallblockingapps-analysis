.class public Lcom/verizon/ads/interstitialplacement/InterstitialAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/support/VASPlacement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/interstitialplacement/InterstitialAd$InterstitialAdListener;
    }
.end annotation


# static fields
.field public static final ERROR_AD_EXPIRED:I = -0x1

.field static final a:Landroid/os/Handler;

.field private static final f:Lcom/verizon/ads/Logger;

.field private static final g:Ljava/lang/String;


# instance fields
.field b:Lcom/verizon/ads/AdSession;

.field c:Z

.field d:Lcom/verizon/ads/interstitialplacement/InterstitialAd$InterstitialAdListener;

.field e:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;

.field private volatile h:Ljava/lang/Runnable;

.field private volatile i:Z

.field private volatile j:Z

.field private k:Ljava/lang/String;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    const-class v0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v1

    sput-object v1, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->f:Lcom/verizon/ads/Logger;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->g:Ljava/lang/String;

    .line 172
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->a:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/interstitialplacement/InterstitialAd$InterstitialAdListener;)V
    .locals 2

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;

    invoke-direct {v0, p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAd$1;-><init>(Lcom/verizon/ads/interstitialplacement/InterstitialAd;)V

    iput-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->e:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;

    .line 233
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const-string v1, "request.placementRef"

    invoke-virtual {p2, v1, v0}, Lcom/verizon/ads/AdSession;->putObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iput-object p1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->k:Ljava/lang/String;

    .line 236
    iput-object p2, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->b:Lcom/verizon/ads/AdSession;

    .line 237
    iput-object p3, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->d:Lcom/verizon/ads/interstitialplacement/InterstitialAd$InterstitialAdListener;

    .line 239
    invoke-virtual {p2}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object p1

    check-cast p1, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter;

    iget-object p2, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->e:Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;

    invoke-interface {p1, p2}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter;->setListener(Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter$InterstitialAdAdapterListener;)V

    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/interstitialplacement/InterstitialAd;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->h:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic a(Lcom/verizon/ads/interstitialplacement/InterstitialAd;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b()Landroid/os/Handler;
    .locals 1

    .line 40
    sget-object v0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/verizon/ads/interstitialplacement/InterstitialAd;)Ljava/lang/Runnable;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->h:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic c()Lcom/verizon/ads/Logger;
    .locals 1

    .line 40
    sget-object v0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->f:Lcom/verizon/ads/Logger;

    return-object v0
.end method

.method static synthetic c(Lcom/verizon/ads/interstitialplacement/InterstitialAd;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->j:Z

    return p0
.end method

.method private d()V
    .locals 4

    .line 503
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->h:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 504
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    sget-object v0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->f:Lcom/verizon/ads/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->k:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Stopping expiration timer for placementId: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 508
    :cond_0
    sget-object v0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 509
    iput-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->h:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/verizon/ads/interstitialplacement/InterstitialAd;)V
    .locals 5

    .line 2517
    iget-boolean v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->j:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2521
    :cond_0
    invoke-direct {p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->g()V

    const/4 v0, 0x1

    .line 2523
    iput-boolean v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->i:Z

    const/4 v1, 0x0

    .line 2524
    iput-object v1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->h:Ljava/lang/Runnable;

    .line 2526
    new-instance v1, Lcom/verizon/ads/ErrorInfo;

    const-class v2, Lcom/verizon/ads/interstitialplacement/InterstitialAd;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->k:Ljava/lang/String;

    aput-object v4, v0, v3

    const-string v3, "Ad expired for placementId: %s"

    .line 2527
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x3

    .line 2540
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2541
    sget-object v0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->f:Lcom/verizon/ads/Logger;

    invoke-virtual {v1}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 2544
    :cond_1
    sget-object v0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->a:Landroid/os/Handler;

    new-instance v2, Lcom/verizon/ads/interstitialplacement/InterstitialAd$3;

    invoke-direct {v2, p0, v1}, Lcom/verizon/ads/interstitialplacement/InterstitialAd$3;-><init>(Lcom/verizon/ads/interstitialplacement/InterstitialAd;Lcom/verizon/ads/ErrorInfo;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private e()Z
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->b:Lcom/verizon/ads/AdSession;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private f()Z
    .locals 3

    .line 620
    invoke-static {}, Lcom/verizon/ads/utils/ThreadUtils;->isUiThread()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 621
    sget-object v0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->f:Lcom/verizon/ads/Logger;

    const-string v2, "Method call must be made on the UI thread"

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v1

    .line 625
    :cond_0
    invoke-direct {p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 626
    sget-object v0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->f:Lcom/verizon/ads/Logger;

    const-string v2, "Method called after ad destroyed"

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private g()V
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->b:Lcom/verizon/ads/AdSession;

    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter;

    if-eqz v0, :cond_0

    .line 641
    invoke-interface {v0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter;->release()V

    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 5

    .line 559
    iget-boolean v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 563
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 564
    sget-object v0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->f:Lcom/verizon/ads/Logger;

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->b:Lcom/verizon/ads/AdSession;

    invoke-virtual {v4}, Lcom/verizon/ads/AdSession;->toStringLongDescription()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Ad shown: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 567
    :cond_1
    iput-boolean v1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->l:Z

    .line 570
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->b:Lcom/verizon/ads/AdSession;

    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter;

    invoke-interface {v0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter;->fireImpression()V

    .line 572
    new-instance v0, Lcom/verizon/ads/support/ImpressionEvent;

    iget-object v1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->b:Lcom/verizon/ads/AdSession;

    invoke-direct {v0, v1}, Lcom/verizon/ads/support/ImpressionEvent;-><init>(Lcom/verizon/ads/AdSession;)V

    const-string v1, "com.verizon.ads.impression"

    invoke-static {v1, v0}, Lcom/verizon/ads/events/Events;->sendEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 574
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->d:Lcom/verizon/ads/interstitialplacement/InterstitialAd$InterstitialAdListener;

    if-eqz v0, :cond_2

    .line 575
    sget-object v1, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->g:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "adImpression"

    invoke-interface {v0, p0, v1, v3, v2}, Lcom/verizon/ads/interstitialplacement/InterstitialAd$InterstitialAdListener;->onEvent(Lcom/verizon/ads/interstitialplacement/InterstitialAd;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 311
    invoke-direct {p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 315
    :cond_0
    invoke-direct {p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->g()V

    .line 317
    invoke-direct {p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->d()V

    const/4 v0, 0x0

    .line 318
    iput-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->d:Lcom/verizon/ads/interstitialplacement/InterstitialAd$InterstitialAdListener;

    .line 319
    iput-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->b:Lcom/verizon/ads/AdSession;

    .line 320
    iput-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->k:Ljava/lang/String;

    return-void
.end method

.method public getAdSession()Lcom/verizon/ads/AdSession;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->b:Lcom/verizon/ads/AdSession;

    return-object v0
.end method

.method public getCreativeInfo()Lcom/verizon/ads/CreativeInfo;
    .locals 4

    .line 280
    invoke-direct {p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->b:Lcom/verizon/ads/AdSession;

    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    const-string v2, "Creative Info is not available"

    if-eqz v0, :cond_3

    .line 285
    invoke-interface {v0}, Lcom/verizon/ads/AdAdapter;->getAdContent()Lcom/verizon/ads/AdContent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 286
    invoke-interface {v0}, Lcom/verizon/ads/AdAdapter;->getAdContent()Lcom/verizon/ads/AdContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/verizon/ads/AdContent;->getMetadata()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 293
    :cond_1
    invoke-interface {v0}, Lcom/verizon/ads/AdAdapter;->getAdContent()Lcom/verizon/ads/AdContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/verizon/ads/AdContent;->getMetadata()Ljava/util/Map;

    move-result-object v0

    const-string v3, "creative_info"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 295
    instance-of v3, v0, Lcom/verizon/ads/CreativeInfo;

    if-nez v3, :cond_2

    .line 296
    sget-object v0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->f:Lcom/verizon/ads/Logger;

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v1

    .line 301
    :cond_2
    check-cast v0, Lcom/verizon/ads/CreativeInfo;

    return-object v0

    .line 288
    :cond_3
    :goto_0
    sget-object v0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->f:Lcom/verizon/ads/Logger;

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v1
.end method

.method public getEnterAnimationId()Ljava/lang/Integer;
    .locals 1

    .line 408
    invoke-direct {p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->b:Lcom/verizon/ads/AdSession;

    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter;

    .line 414
    invoke-interface {v0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter;->getEnterAnimationId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getExitAnimationId()Ljava/lang/Integer;
    .locals 1

    .line 444
    invoke-direct {p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->b:Lcom/verizon/ads/AdSession;

    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter;

    .line 450
    invoke-interface {v0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter;->getExitAnimationId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .line 264
    invoke-direct {p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->k:Ljava/lang/String;

    return-object v0
.end method

.method public isImmersiveEnabled()Z
    .locals 1

    .line 372
    invoke-direct {p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->b:Lcom/verizon/ads/AdSession;

    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter;

    .line 378
    invoke-interface {v0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter;->isImmersiveEnabled()Z

    move-result v0

    return v0
.end method

.method public setEnterAnimation(I)V
    .locals 1

    .line 391
    invoke-direct {p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->b:Lcom/verizon/ads/AdSession;

    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter;

    .line 397
    invoke-interface {v0, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter;->setEnterAnimation(I)V

    return-void
.end method

.method public setExitAnimation(I)V
    .locals 1

    .line 427
    invoke-direct {p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->b:Lcom/verizon/ads/AdSession;

    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter;

    .line 433
    invoke-interface {v0, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter;->setExitAnimation(I)V

    return-void
.end method

.method public setImmersiveEnabled(Z)V
    .locals 1

    .line 355
    invoke-direct {p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->b:Lcom/verizon/ads/AdSession;

    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter;

    .line 361
    invoke-interface {v0, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter;->setImmersiveEnabled(Z)V

    return-void
.end method

.method public show(Landroid/content/Context;)V
    .locals 5

    .line 331
    invoke-direct {p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1599
    :cond_0
    iget-boolean v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->i:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->j:Z

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 1600
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1601
    sget-object v0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->f:Lcom/verizon/ads/Logger;

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->k:Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v4, "Ad shown for placementId: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 1604
    :cond_1
    iput-boolean v2, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->j:Z

    .line 1605
    invoke-direct {p0}, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->d()V

    .line 1608
    :cond_2
    iget-boolean v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->i:Z

    if-eqz v0, :cond_3

    .line 336
    sget-object p1, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->f:Lcom/verizon/ads/Logger;

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->k:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "Ad has expired. Unable to show ad for placement ID: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-void

    .line 341
    :cond_3
    iget-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->b:Lcom/verizon/ads/AdSession;

    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter;

    .line 343
    invoke-interface {v0, p1}, Lcom/verizon/ads/interstitialplacement/InterstitialAdAdapter;->show(Landroid/content/Context;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InterstitialAd{placementId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adSession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;->b:Lcom/verizon/ads/AdSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
