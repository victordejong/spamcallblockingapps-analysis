.class public Lcom/verizon/ads/nativeplacement/NativeAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/support/VASPlacement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/nativeplacement/NativeAd$NativeAdListener;
    }
.end annotation


# static fields
.field public static final ERROR_AD_EXPIRED:I = -0x1

.field static final a:Landroid/os/Handler;

.field private static final e:Ljava/lang/String; = "NativeAd"

.field private static final f:Lcom/verizon/ads/Logger;


# instance fields
.field b:Lcom/verizon/ads/nativeplacement/NativeAd$NativeAdListener;

.field c:Lcom/verizon/ads/nativeplacement/NativeComponentBundle;

.field d:Lcom/verizon/ads/nativeplacement/NativeAdAdapter$NativeAdAdapterListener;

.field private volatile g:Ljava/lang/Runnable;

.field private volatile h:Z

.field private volatile i:Z

.field private j:Lcom/verizon/ads/AdSession;

.field private k:Ljava/lang/String;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    const-class v0, Lcom/verizon/ads/nativeplacement/NativeAd;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/nativeplacement/NativeAd;->f:Lcom/verizon/ads/Logger;

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/verizon/ads/nativeplacement/NativeAd;->a:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/nativeplacement/NativeAd$NativeAdListener;)V
    .locals 2

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/verizon/ads/nativeplacement/NativeAd$1;

    invoke-direct {v0, p0}, Lcom/verizon/ads/nativeplacement/NativeAd$1;-><init>(Lcom/verizon/ads/nativeplacement/NativeAd;)V

    iput-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->d:Lcom/verizon/ads/nativeplacement/NativeAdAdapter$NativeAdAdapterListener;

    .line 202
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const-string v1, "request.placementRef"

    invoke-virtual {p2, v1, v0}, Lcom/verizon/ads/AdSession;->putObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iput-object p1, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->k:Ljava/lang/String;

    .line 206
    iput-object p2, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->j:Lcom/verizon/ads/AdSession;

    .line 207
    iput-object p3, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->b:Lcom/verizon/ads/nativeplacement/NativeAd$NativeAdListener;

    .line 209
    invoke-virtual {p2}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object p1

    check-cast p1, Lcom/verizon/ads/nativeplacement/NativeAdAdapter;

    .line 210
    invoke-interface {p1}, Lcom/verizon/ads/nativeplacement/NativeAdAdapter;->getRootBundle()Lcom/verizon/ads/nativeplacement/NativeComponentBundle;

    move-result-object p2

    iput-object p2, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->c:Lcom/verizon/ads/nativeplacement/NativeComponentBundle;

    .line 211
    invoke-virtual {p2, p0}, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;->a(Lcom/verizon/ads/nativeplacement/NativeAd;)V

    .line 213
    iget-object p2, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->d:Lcom/verizon/ads/nativeplacement/NativeAdAdapter$NativeAdAdapterListener;

    invoke-interface {p1, p2}, Lcom/verizon/ads/nativeplacement/NativeAdAdapter;->setListener(Lcom/verizon/ads/nativeplacement/NativeAdAdapter$NativeAdAdapterListener;)V

    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/nativeplacement/NativeAd;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->g:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic a(Lcom/verizon/ads/nativeplacement/NativeAd;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/verizon/ads/nativeplacement/NativeAd;)Ljava/lang/Runnable;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->g:Ljava/lang/Runnable;

    return-object p0
.end method

.method static b()Z
    .locals 2

    .line 647
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic c()Lcom/verizon/ads/Logger;
    .locals 1

    .line 44
    sget-object v0, Lcom/verizon/ads/nativeplacement/NativeAd;->f:Lcom/verizon/ads/Logger;

    return-object v0
.end method

.method static synthetic c(Lcom/verizon/ads/nativeplacement/NativeAd;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->i:Z

    return p0
.end method

.method static synthetic d()Landroid/os/Handler;
    .locals 1

    .line 44
    sget-object v0, Lcom/verizon/ads/nativeplacement/NativeAd;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/verizon/ads/nativeplacement/NativeAd;)V
    .locals 5

    .line 1574
    iget-boolean v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->i:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/verizon/ads/nativeplacement/NativeAd;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1578
    iput-boolean v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->h:Z

    const/4 v1, 0x0

    .line 1579
    iput-object v1, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->g:Ljava/lang/Runnable;

    .line 1581
    new-instance v1, Lcom/verizon/ads/ErrorInfo;

    sget-object v2, Lcom/verizon/ads/nativeplacement/NativeAd;->e:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->k:Ljava/lang/String;

    aput-object v4, v0, v3

    const-string v3, "Ad expired for placementId: %s"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x3

    .line 1589
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1590
    sget-object v0, Lcom/verizon/ads/nativeplacement/NativeAd;->f:Lcom/verizon/ads/Logger;

    invoke-virtual {v1}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 1593
    :cond_1
    sget-object v0, Lcom/verizon/ads/nativeplacement/NativeAd;->a:Landroid/os/Handler;

    new-instance v2, Lcom/verizon/ads/nativeplacement/NativeAd$3;

    invoke-direct {v2, p0, v1}, Lcom/verizon/ads/nativeplacement/NativeAd$3;-><init>(Lcom/verizon/ads/nativeplacement/NativeAd;Lcom/verizon/ads/ErrorInfo;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private e()V
    .locals 4

    .line 560
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 561
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    sget-object v0, Lcom/verizon/ads/nativeplacement/NativeAd;->f:Lcom/verizon/ads/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->k:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Stopping expiration timer for placementId \'%s\'"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 565
    :cond_0
    sget-object v0, Lcom/verizon/ads/nativeplacement/NativeAd;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 566
    iput-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->g:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method private f()Z
    .locals 5

    .line 608
    iget-boolean v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->i:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    .line 609
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 610
    sget-object v0, Lcom/verizon/ads/nativeplacement/NativeAd;->f:Lcom/verizon/ads/Logger;

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->k:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "Ad accessed for placementId \'%s\'"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 613
    :cond_0
    iput-boolean v1, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->i:Z

    .line 614
    invoke-direct {p0}, Lcom/verizon/ads/nativeplacement/NativeAd;->e()V

    .line 617
    :cond_1
    iget-boolean v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->h:Z

    return v0
.end method

.method private g()Z
    .locals 3

    .line 623
    invoke-static {}, Lcom/verizon/ads/nativeplacement/NativeAd;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 624
    sget-object v0, Lcom/verizon/ads/nativeplacement/NativeAd;->f:Lcom/verizon/ads/Logger;

    const-string v2, "Method call must be made on the UI thread"

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v1

    .line 629
    :cond_0
    invoke-direct {p0}, Lcom/verizon/ads/nativeplacement/NativeAd;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 630
    sget-object v0, Lcom/verizon/ads/nativeplacement/NativeAd;->f:Lcom/verizon/ads/Logger;

    const-string v2, "Method called after ad destroyed"

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private h()Z
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->j:Lcom/verizon/ads/AdSession;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 470
    iget-boolean v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 474
    iput-boolean v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->l:Z

    .line 476
    new-instance v0, Lcom/verizon/ads/support/ClickEvent;

    iget-object v1, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->j:Lcom/verizon/ads/AdSession;

    invoke-direct {v0, v1}, Lcom/verizon/ads/support/ClickEvent;-><init>(Lcom/verizon/ads/AdSession;)V

    const-string v1, "com.verizon.ads.click"

    invoke-static {v1, v0}, Lcom/verizon/ads/events/Events;->sendEvent(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 407
    invoke-direct {p0}, Lcom/verizon/ads/nativeplacement/NativeAd;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->c:Lcom/verizon/ads/nativeplacement/NativeComponentBundle;

    invoke-virtual {v0}, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;->release()V

    .line 414
    invoke-direct {p0}, Lcom/verizon/ads/nativeplacement/NativeAd;->e()V

    .line 416
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->j:Lcom/verizon/ads/AdSession;

    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/nativeplacement/NativeAdAdapter;

    if-eqz v0, :cond_1

    .line 418
    invoke-interface {v0}, Lcom/verizon/ads/nativeplacement/NativeAdAdapter;->release()V

    :cond_1
    const/4 v0, 0x0

    .line 421
    iput-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->b:Lcom/verizon/ads/nativeplacement/NativeAd$NativeAdListener;

    .line 422
    iput-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->j:Lcom/verizon/ads/AdSession;

    .line 423
    iput-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->k:Ljava/lang/String;

    .line 424
    iput-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->c:Lcom/verizon/ads/nativeplacement/NativeComponentBundle;

    return-void
.end method

.method public fireImpression(Landroid/content/Context;)V
    .locals 1

    .line 490
    invoke-direct {p0}, Lcom/verizon/ads/nativeplacement/NativeAd;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->j:Lcom/verizon/ads/AdSession;

    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/nativeplacement/NativeAdAdapter;

    .line 496
    invoke-interface {v0, p1}, Lcom/verizon/ads/nativeplacement/NativeAdAdapter;->fireImpression(Landroid/content/Context;)V

    return-void
.end method

.method public getAdSession()Lcom/verizon/ads/AdSession;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->j:Lcom/verizon/ads/AdSession;

    return-object v0
.end method

.method public getAdType()Ljava/lang/String;
    .locals 1

    .line 253
    invoke-direct {p0}, Lcom/verizon/ads/nativeplacement/NativeAd;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->j:Lcom/verizon/ads/AdSession;

    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/nativeplacement/NativeAdAdapter;

    .line 259
    invoke-interface {v0}, Lcom/verizon/ads/nativeplacement/NativeAdAdapter;->getAdType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComponent(Landroid/content/Context;Ljava/lang/String;)Lcom/verizon/ads/Component;
    .locals 0

    .line 307
    invoke-virtual {p0, p2}, Lcom/verizon/ads/nativeplacement/NativeAd;->getComponent(Ljava/lang/String;)Lcom/verizon/ads/Component;

    move-result-object p1

    return-object p1
.end method

.method public getComponent(Ljava/lang/String;)Lcom/verizon/ads/Component;
    .locals 4

    .line 321
    invoke-direct {p0}, Lcom/verizon/ads/nativeplacement/NativeAd;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 325
    :cond_0
    invoke-direct {p0}, Lcom/verizon/ads/nativeplacement/NativeAd;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    sget-object p1, Lcom/verizon/ads/nativeplacement/NativeAd;->f:Lcom/verizon/ads/Logger;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->k:Ljava/lang/String;

    aput-object v3, v0, v2

    const-string v2, "Ad has expired. Unable to create component for placementID: %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-object v1

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->c:Lcom/verizon/ads/nativeplacement/NativeComponentBundle;

    invoke-virtual {v0, p1}, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;->getComponent(Ljava/lang/String;)Lcom/verizon/ads/Component;

    move-result-object p1

    return-object p1
.end method

.method public getComponentIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->c:Lcom/verizon/ads/nativeplacement/NativeComponentBundle;

    invoke-virtual {v0}, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;->getComponentIds()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getCreativeInfo()Lcom/verizon/ads/CreativeInfo;
    .locals 4

    .line 271
    invoke-direct {p0}, Lcom/verizon/ads/nativeplacement/NativeAd;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->j:Lcom/verizon/ads/AdSession;

    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    const-string v2, "Creative Info is not available"

    if-eqz v0, :cond_3

    .line 276
    invoke-interface {v0}, Lcom/verizon/ads/AdAdapter;->getAdContent()Lcom/verizon/ads/AdContent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 277
    invoke-interface {v0}, Lcom/verizon/ads/AdAdapter;->getAdContent()Lcom/verizon/ads/AdContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/verizon/ads/AdContent;->getMetadata()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 284
    :cond_1
    invoke-interface {v0}, Lcom/verizon/ads/AdAdapter;->getAdContent()Lcom/verizon/ads/AdContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/verizon/ads/AdContent;->getMetadata()Ljava/util/Map;

    move-result-object v0

    const-string v3, "creative_info"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 286
    instance-of v3, v0, Lcom/verizon/ads/CreativeInfo;

    if-nez v3, :cond_2

    .line 287
    sget-object v0, Lcom/verizon/ads/nativeplacement/NativeAd;->f:Lcom/verizon/ads/Logger;

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v1

    .line 292
    :cond_2
    check-cast v0, Lcom/verizon/ads/CreativeInfo;

    return-object v0

    .line 279
    :cond_3
    :goto_0
    sget-object v0, Lcom/verizon/ads/nativeplacement/NativeAd;->f:Lcom/verizon/ads/Logger;

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v1
.end method

.method public getJSON()Lorg/json/JSONObject;
    .locals 4

    .line 343
    invoke-direct {p0}, Lcom/verizon/ads/nativeplacement/NativeAd;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    sget-object v0, Lcom/verizon/ads/nativeplacement/NativeAd;->f:Lcom/verizon/ads/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->k:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Ad has expired. Unable to get JSON for placementID: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->c:Lcom/verizon/ads/nativeplacement/NativeComponentBundle;

    invoke-virtual {v0}, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;->getJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getJSON(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 362
    invoke-direct {p0}, Lcom/verizon/ads/nativeplacement/NativeAd;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    sget-object p1, Lcom/verizon/ads/nativeplacement/NativeAd;->f:Lcom/verizon/ads/Logger;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->k:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "Ad has expired. Unable to get JSON for placementID: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->c:Lcom/verizon/ads/nativeplacement/NativeComponentBundle;

    invoke-virtual {v0, p1}, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;->getJSON(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .line 238
    invoke-direct {p0}, Lcom/verizon/ads/nativeplacement/NativeAd;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->k:Ljava/lang/String;

    return-object v0
.end method

.method public invokeDefaultAction(Landroid/content/Context;)V
    .locals 3

    .line 382
    invoke-direct {p0}, Lcom/verizon/ads/nativeplacement/NativeAd;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 386
    :cond_0
    invoke-direct {p0}, Lcom/verizon/ads/nativeplacement/NativeAd;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    sget-object p1, Lcom/verizon/ads/nativeplacement/NativeAd;->f:Lcom/verizon/ads/Logger;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->k:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "Ad has expired. Unable to invoke default action for placementID: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-void

    .line 393
    :cond_1
    invoke-virtual {p0}, Lcom/verizon/ads/nativeplacement/NativeAd;->a()V

    .line 395
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->j:Lcom/verizon/ads/AdSession;

    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/nativeplacement/NativeAdAdapter;

    .line 396
    invoke-interface {v0, p1}, Lcom/verizon/ads/nativeplacement/NativeAdAdapter;->invokeDefaultAction(Landroid/content/Context;)V

    return-void
.end method

.method public registerContainerView(Landroid/view/ViewGroup;)Z
    .locals 4

    .line 437
    sget-object v0, Lcom/verizon/ads/nativeplacement/NativeAd;->f:Lcom/verizon/ads/Logger;

    const-string v1, "Registering container view for layout"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 440
    invoke-direct {p0}, Lcom/verizon/ads/nativeplacement/NativeAd;->g()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "Container view cannot be null"

    .line 446
    invoke-virtual {v0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v2

    .line 451
    :cond_1
    iget-object v1, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->j:Lcom/verizon/ads/AdSession;

    invoke-virtual {v1}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/nativeplacement/NativeAdAdapter;

    .line 453
    invoke-interface {v1, p1}, Lcom/verizon/ads/nativeplacement/NativeAdAdapter;->registerContainerView(Landroid/view/ViewGroup;)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    .line 454
    iget-object v1, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->k:Ljava/lang/String;

    aput-object v1, p1, v2

    const-string v1, "Error registering container view for placement Id \'%s\'"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return v2

    :cond_2
    const/4 p1, 0x3

    .line 459
    invoke-static {p1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v1, [Ljava/lang/Object;

    .line 460
    iget-object v3, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->k:Ljava/lang/String;

    aput-object v3, p1, v2

    const-string v2, "Container view successfully registered for placement Id \'%s\'"

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_3
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NativeAd{placementId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ad session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/verizon/ads/nativeplacement/NativeAd;->j:Lcom/verizon/ads/AdSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
