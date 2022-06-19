.class public Lcom/verizon/ads/inlineplacement/InlineAdView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/support/VASPlacement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;
    }
.end annotation


# static fields
.field static final a:Lcom/verizon/ads/Logger;

.field static final b:Landroid/os/Handler;

.field private static final m:Ljava/lang/String;


# instance fields
.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/verizon/ads/inlineplacement/AdSize;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;

.field e:Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;

.field f:Ljava/lang/Integer;

.field g:Lcom/verizon/ads/AdSession;

.field h:Ljava/lang/String;

.field i:Ljava/lang/Runnable;

.field j:Z

.field k:Z

.field l:Lcom/verizon/ads/inlineplacement/InlineAdAdapter$InlineAdAdapterListener;

.field private n:Lcom/verizon/ads/inlineplacement/AdSize;

.field private final o:Landroid/content/Context;

.field private p:Lcom/verizon/ads/support/utils/ViewabilityWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    const-class v0, Lcom/verizon/ads/inlineplacement/InlineAdView;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v1

    sput-object v1, Lcom/verizon/ads/inlineplacement/InlineAdView;->a:Lcom/verizon/ads/Logger;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->m:Ljava/lang/String;

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->b:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Lcom/verizon/ads/inlineplacement/AdSize;Lcom/verizon/ads/AdSession;Ljava/util/List;Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Lcom/verizon/ads/inlineplacement/AdSize;",
            "Lcom/verizon/ads/AdSession;",
            "Ljava/util/List<",
            "Lcom/verizon/ads/inlineplacement/AdSize;",
            ">;",
            "Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;",
            "Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;",
            ")V"
        }
    .end annotation

    .line 207
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance v0, Lcom/verizon/ads/inlineplacement/InlineAdView$1;

    invoke-direct {v0, p0}, Lcom/verizon/ads/inlineplacement/InlineAdView$1;-><init>(Lcom/verizon/ads/inlineplacement/InlineAdView;)V

    iput-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->l:Lcom/verizon/ads/inlineplacement/InlineAdAdapter$InlineAdAdapterListener;

    .line 209
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const-string v1, "request.placementRef"

    invoke-virtual {p5, v1, v0}, Lcom/verizon/ads/AdSession;->putObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iput-object p1, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->o:Landroid/content/Context;

    .line 212
    iput-object p2, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->h:Ljava/lang/String;

    .line 213
    iput-object p5, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->g:Lcom/verizon/ads/AdSession;

    .line 214
    iput-object p4, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->n:Lcom/verizon/ads/inlineplacement/AdSize;

    .line 215
    iput-object p6, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->c:Ljava/util/List;

    .line 216
    iput-object p8, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->d:Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;

    .line 217
    iput-object p7, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->e:Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;

    .line 219
    invoke-virtual {p5}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object p2

    check-cast p2, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;

    iget-object p5, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->l:Lcom/verizon/ads/inlineplacement/InlineAdAdapter$InlineAdAdapterListener;

    invoke-interface {p2, p5}, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;->setListener(Lcom/verizon/ads/inlineplacement/InlineAdAdapter$InlineAdAdapterListener;)V

    .line 220
    invoke-virtual {p0, p3}, Lcom/verizon/ads/inlineplacement/InlineAdView;->a(Landroid/view/View;)V

    .line 222
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p4}, Lcom/verizon/ads/inlineplacement/AdSize;->getWidth()I

    move-result p5

    invoke-static {p1, p5}, Lcom/verizon/ads/support/utils/ViewUtils;->convertDipsToPixels(Landroid/content/Context;I)I

    move-result p5

    .line 223
    invoke-virtual {p4}, Lcom/verizon/ads/inlineplacement/AdSize;->getHeight()I

    move-result p4

    invoke-static {p1, p4}, Lcom/verizon/ads/support/utils/ViewUtils;->convertDipsToPixels(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {p2, p5, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 222
    invoke-virtual {p0, p3, p2}, Lcom/verizon/ads/inlineplacement/InlineAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    invoke-direct {p0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->g()V

    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/inlineplacement/InlineAdView;Lcom/verizon/ads/AdSession;)Lcom/verizon/ads/AdSession;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->g:Lcom/verizon/ads/AdSession;

    return-object p1
.end method

.method static synthetic a(Lcom/verizon/ads/inlineplacement/InlineAdView;Lcom/verizon/ads/inlineplacement/AdSize;)Lcom/verizon/ads/inlineplacement/AdSize;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->n:Lcom/verizon/ads/inlineplacement/AdSize;

    return-object p1
.end method

.method static synthetic a(Lcom/verizon/ads/inlineplacement/InlineAdView;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/verizon/ads/inlineplacement/InlineAdView;)Lcom/verizon/ads/AdSession;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->g:Lcom/verizon/ads/AdSession;

    return-object p0
.end method

.method static synthetic c(Lcom/verizon/ads/inlineplacement/InlineAdView;)Landroid/content/Context;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->o:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/verizon/ads/inlineplacement/InlineAdView;)Lcom/verizon/ads/inlineplacement/AdSize;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->n:Lcom/verizon/ads/inlineplacement/AdSize;

    return-object p0
.end method

.method static synthetic e()Lcom/verizon/ads/Logger;
    .locals 1

    .line 54
    sget-object v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->a:Lcom/verizon/ads/Logger;

    return-object v0
.end method

.method static synthetic f()Landroid/os/Handler;
    .locals 1

    .line 54
    sget-object v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->b:Landroid/os/Handler;

    return-object v0
.end method

.method private g()V
    .locals 3

    .line 450
    invoke-virtual {p0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->isRefreshEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    sget-object v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Refresh disabled or already started, returning"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 456
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    sget-object v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->a:Lcom/verizon/ads/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v2, "Starting refresh for ad: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->d:Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;

    invoke-virtual {v0, p0}, Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;->a(Lcom/verizon/ads/inlineplacement/InlineAdView;)V

    return-void
.end method

.method private h()V
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->p:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {v0}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->stopWatching()V

    const/4 v0, 0x0

    .line 596
    iput-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->p:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    :cond_0
    return-void
.end method


# virtual methods
.method final a(Landroid/view/View;)V
    .locals 4

    .line 564
    invoke-virtual {p0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->c()V

    .line 565
    invoke-direct {p0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->h()V

    const/4 v0, 0x0

    .line 566
    iput-boolean v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->j:Z

    .line 567
    iput-boolean v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->k:Z

    const-string v1, "com.verizon.ads.inlineplacement"

    const-string v2, "minImpressionViewabilityPercent"

    const/4 v3, -0x1

    .line 570
    invoke-static {v1, v2, v3}, Lcom/verizon/ads/Configuration;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 579
    :cond_0
    new-instance v2, Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    new-instance v3, Lcom/verizon/ads/inlineplacement/InlineAdView$3;

    invoke-direct {v3, p0, v0}, Lcom/verizon/ads/inlineplacement/InlineAdView$3;-><init>(Lcom/verizon/ads/inlineplacement/InlineAdView;Z)V

    invoke-direct {v2, p1, v3}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/verizon/ads/support/utils/ViewabilityWatcher$ViewabilityListener;)V

    iput-object v2, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->p:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    .line 587
    invoke-virtual {v2, v1}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->setMinViewabilityPercent(I)V

    .line 588
    iget-object p1, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->p:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    invoke-virtual {p1}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->startWatching()V

    return-void
.end method

.method final a()Z
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->g:Lcom/verizon/ads/AdSession;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final b()V
    .locals 5

    .line 648
    invoke-virtual {p0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 649
    sget-object v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Attempt to record an impression event off main thread and/or ad has been destroyed."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 655
    :cond_0
    iget-boolean v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->j:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x3

    .line 659
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 660
    sget-object v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->a:Lcom/verizon/ads/Logger;

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->g:Lcom/verizon/ads/AdSession;

    invoke-virtual {v4}, Lcom/verizon/ads/AdSession;->toStringLongDescription()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Ad shown: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 663
    :cond_2
    iput-boolean v1, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->j:Z

    .line 666
    invoke-direct {p0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->h()V

    .line 669
    invoke-virtual {p0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->c()V

    .line 672
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->g:Lcom/verizon/ads/AdSession;

    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;

    invoke-interface {v0}, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;->fireImpression()V

    .line 674
    new-instance v0, Lcom/verizon/ads/support/ImpressionEvent;

    iget-object v1, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->g:Lcom/verizon/ads/AdSession;

    invoke-direct {v0, v1}, Lcom/verizon/ads/support/ImpressionEvent;-><init>(Lcom/verizon/ads/AdSession;)V

    const-string v1, "com.verizon.ads.impression"

    invoke-static {v1, v0}, Lcom/verizon/ads/events/Events;->sendEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 676
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->e:Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;

    if-eqz v0, :cond_3

    .line 677
    sget-object v1, Lcom/verizon/ads/inlineplacement/InlineAdView;->m:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "adImpression"

    invoke-interface {v0, p0, v1, v3, v2}, Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;->onEvent(Lcom/verizon/ads/inlineplacement/InlineAdView;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method final c()V
    .locals 2

    .line 706
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->i:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 707
    sget-object v1, Lcom/verizon/ads/inlineplacement/InlineAdView;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 708
    iput-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->i:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method final d()Z
    .locals 3

    .line 715
    invoke-static {}, Lcom/verizon/ads/utils/ThreadUtils;->isUiThread()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 716
    sget-object v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Method call must be made on the UI thread"

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v1

    .line 721
    :cond_0
    invoke-virtual {p0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 722
    sget-object v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Method called after ad destroyed"

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public destroy()V
    .locals 3

    .line 393
    invoke-virtual {p0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 397
    :cond_0
    invoke-virtual {p0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->c()V

    .line 398
    invoke-direct {p0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->h()V

    const/4 v0, 0x3

    .line 1466
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1467
    sget-object v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->a:Lcom/verizon/ads/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v2, "Stopping refresh for ad: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 1470
    :cond_1
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->d:Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;

    invoke-virtual {v0}, Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;->a()V

    .line 401
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->g:Lcom/verizon/ads/AdSession;

    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;

    if-eqz v0, :cond_2

    .line 403
    invoke-interface {v0}, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;->release()V

    :cond_2
    const/4 v0, 0x0

    .line 406
    iput-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->d:Lcom/verizon/ads/inlineplacement/InlineAdViewRefresher;

    .line 407
    iput-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->e:Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;

    .line 408
    iput-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->g:Lcom/verizon/ads/AdSession;

    .line 409
    iput-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->h:Ljava/lang/String;

    return-void
.end method

.method public getAdSession()Lcom/verizon/ads/AdSession;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->g:Lcom/verizon/ads/AdSession;

    return-object v0
.end method

.method public getAdSize()Lcom/verizon/ads/inlineplacement/AdSize;
    .locals 2

    .line 266
    invoke-virtual {p0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    sget-object v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->a:Lcom/verizon/ads/Logger;

    const-string v1, "getAdSize called after destroy"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->n:Lcom/verizon/ads/inlineplacement/AdSize;

    return-object v0
.end method

.method public getCreativeInfo()Lcom/verizon/ads/CreativeInfo;
    .locals 4

    .line 362
    invoke-virtual {p0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->g:Lcom/verizon/ads/AdSession;

    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    const-string v2, "Creative Info is not available"

    if-eqz v0, :cond_3

    .line 367
    invoke-interface {v0}, Lcom/verizon/ads/AdAdapter;->getAdContent()Lcom/verizon/ads/AdContent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 368
    invoke-interface {v0}, Lcom/verizon/ads/AdAdapter;->getAdContent()Lcom/verizon/ads/AdContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/verizon/ads/AdContent;->getMetadata()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 375
    :cond_1
    invoke-interface {v0}, Lcom/verizon/ads/AdAdapter;->getAdContent()Lcom/verizon/ads/AdContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/verizon/ads/AdContent;->getMetadata()Ljava/util/Map;

    move-result-object v0

    const-string v3, "creative_info"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 377
    instance-of v3, v0, Lcom/verizon/ads/CreativeInfo;

    if-nez v3, :cond_2

    .line 378
    sget-object v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->a:Lcom/verizon/ads/Logger;

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v1

    .line 383
    :cond_2
    check-cast v0, Lcom/verizon/ads/CreativeInfo;

    return-object v0

    .line 370
    :cond_3
    :goto_0
    sget-object v0, Lcom/verizon/ads/inlineplacement/InlineAdView;->a:Lcom/verizon/ads/Logger;

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v1
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .line 251
    invoke-virtual {p0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshInterval()Ljava/lang/Integer;
    .locals 4

    .line 300
    invoke-virtual {p0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->isRefreshEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x4e20

    const-string v2, "com.verizon.ads.inlineplacement"

    const-string v3, "minInlineRefreshInterval"

    .line 1334
    invoke-static {v2, v3, v1}, Lcom/verizon/ads/Configuration;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 305
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method public isImmersiveEnabled()Z
    .locals 1

    .line 420
    invoke-virtual {p0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->g:Lcom/verizon/ads/AdSession;

    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;

    .line 426
    invoke-interface {v0}, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;->isImmersiveEnabled()Z

    move-result v0

    return v0
.end method

.method public isRefreshEnabled()Z
    .locals 2

    .line 346
    invoke-virtual {p0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public setImmersiveEnabled(Z)V
    .locals 1

    .line 438
    invoke-virtual {p0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->g:Lcom/verizon/ads/AdSession;

    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;

    .line 443
    invoke-interface {v0, p1}, Lcom/verizon/ads/inlineplacement/InlineAdAdapter;->setImmersiveEnabled(Z)V

    return-void
.end method

.method public setRefreshInterval(I)V
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 326
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->f:Ljava/lang/Integer;

    .line 328
    invoke-direct {p0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->g()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InlineAdView{placementId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adSession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/verizon/ads/inlineplacement/InlineAdView;->g:Lcom/verizon/ads/AdSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
