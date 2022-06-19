.class public Lcom/mopub/nativeads/MoPubStreamAdPlacer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONTENT_VIEW_TYPE:I

.field private static final e:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;


# instance fields
.field a:Z

.field b:Lcom/mopub/nativeads/f;

.field c:Z

.field d:Z

.field private final f:Landroid/app/Activity;

.field private final g:Landroid/os/Handler;

.field private final h:Ljava/lang/Runnable;

.field private final i:Lcom/mopub/nativeads/PositioningSource;

.field private final j:Lcom/mopub/nativeads/c;

.field private final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/mopub/nativeads/NativeAd;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/NativeAd;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/mopub/nativeads/f;

.field private n:Ljava/lang/String;

.field private o:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

.field private p:I

.field private q:I

.field private r:I

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer$1;

    invoke-direct {v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer$1;-><init>()V

    sput-object v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->e:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 104
    invoke-static {}, Lcom/mopub/nativeads/MoPubNativeAdPositioning;->serverPositioning()Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;-><init>(Landroid/app/Activity;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 2

    .line 130
    new-instance v0, Lcom/mopub/nativeads/c;

    invoke-direct {v0}, Lcom/mopub/nativeads/c;-><init>()V

    new-instance v1, Lcom/mopub/nativeads/a;

    invoke-direct {v1, p2}, Lcom/mopub/nativeads/a;-><init>(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;-><init>(Landroid/app/Activity;Lcom/mopub/nativeads/c;Lcom/mopub/nativeads/PositioningSource;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;)V
    .locals 1

    .line 116
    new-instance p2, Lcom/mopub/nativeads/c;

    invoke-direct {p2}, Lcom/mopub/nativeads/c;-><init>()V

    new-instance v0, Lcom/mopub/nativeads/h;

    invoke-direct {v0, p1}, Lcom/mopub/nativeads/h;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;-><init>(Landroid/app/Activity;Lcom/mopub/nativeads/c;Lcom/mopub/nativeads/PositioningSource;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/mopub/nativeads/c;Lcom/mopub/nativeads/PositioningSource;)V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget-object v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->e:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->o:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    const-string v0, "activity is not allowed to be null"

    .line 137
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSource is not allowed to be null"

    .line 138
    invoke-static {p2, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positioningSource is not allowed to be null"

    .line 139
    invoke-static {p3, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->f:Landroid/app/Activity;

    .line 143
    iput-object p3, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->i:Lcom/mopub/nativeads/PositioningSource;

    .line 144
    iput-object p2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->j:Lcom/mopub/nativeads/c;

    .line 1183
    new-instance p1, Lcom/mopub/nativeads/f;

    const/4 p2, 0x0

    new-array p3, p2, [I

    invoke-direct {p1, p3}, Lcom/mopub/nativeads/f;-><init>([I)V

    .line 145
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->m:Lcom/mopub/nativeads/f;

    .line 147
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Ljava/util/WeakHashMap;

    .line 148
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->k:Ljava/util/HashMap;

    .line 150
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->g:Landroid/os/Handler;

    .line 151
    new-instance p1, Lcom/mopub/nativeads/MoPubStreamAdPlacer$2;

    invoke-direct {p1, p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer$2;-><init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)V

    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->h:Ljava/lang/Runnable;

    .line 162
    iput p2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->p:I

    .line 163
    iput p2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->q:I

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/NativeAd;

    if-eqz v0, :cond_1

    .line 720
    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/NativeAd;->clear(Landroid/view/View;)V

    .line 721
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->k:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private a(I)Z
    .locals 2

    .line 699
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->j:Lcom/mopub/nativeads/c;

    invoke-virtual {v0}, Lcom/mopub/nativeads/c;->b()Lcom/mopub/nativeads/NativeAd;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 704
    :cond_0
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->m:Lcom/mopub/nativeads/f;

    invoke-virtual {v1, p1, v0}, Lcom/mopub/nativeads/f;->a(ILcom/mopub/nativeads/NativeAd;)V

    .line 705
    iget v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->r:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->r:I

    .line 707
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->o:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;->onAdLoaded(I)V

    return v1
.end method

.method private a(II)Z
    .locals 2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_0
    if-gt p1, p2, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    .line 677
    iget v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->r:I

    if-ge p1, v1, :cond_2

    .line 680
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->m:Lcom/mopub/nativeads/f;

    invoke-virtual {v1, p1}, Lcom/mopub/nativeads/f;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 681
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 686
    :cond_1
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->m:Lcom/mopub/nativeads/f;

    invoke-virtual {v1, p1}, Lcom/mopub/nativeads/f;->b(I)I

    move-result p1

    goto :goto_0

    :cond_2
    return v0
.end method

.method static synthetic a(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->s:Z

    return p0
.end method

.method private b()V
    .locals 2

    .line 655
    iget v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->p:I

    iget v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->q:I

    invoke-direct {p0, v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 662
    :cond_0
    iget v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->q:I

    add-int/lit8 v1, v0, 0x6

    invoke-direct {p0, v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->a(II)Z

    return-void
.end method

.method static synthetic b(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->b()V

    return-void
.end method

.method static synthetic c(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)Z
    .locals 1

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->s:Z

    return v0
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 641
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->s:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 644
    iput-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->s:Z

    .line 647
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final a(Lcom/mopub/nativeads/f;)V
    .locals 2

    .line 302
    iget v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->r:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->removeAdsInRange(II)I

    .line 304
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->m:Lcom/mopub/nativeads/f;

    .line 305
    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->b()V

    const/4 p1, 0x1

    .line 306
    iput-boolean p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->d:Z

    return-void
.end method

.method public bindAdView(Lcom/mopub/nativeads/NativeAd;Landroid/view/View;)V
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 429
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 430
    invoke-direct {p0, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->a(Landroid/view/View;)V

    .line 431
    invoke-direct {p0, p2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->a(Landroid/view/View;)V

    .line 3731
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->k:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3732
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3733
    invoke-virtual {p1, p2}, Lcom/mopub/nativeads/NativeAd;->prepare(Landroid/view/View;)V

    .line 433
    invoke-virtual {p1, p2}, Lcom/mopub/nativeads/NativeAd;->renderAdView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public clearAds()V
    .locals 2

    .line 359
    iget v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->r:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->removeAdsInRange(II)I

    .line 360
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->j:Lcom/mopub/nativeads/c;

    invoke-virtual {v0}, Lcom/mopub/nativeads/c;->a()V

    return-void
.end method

.method public destroy()V
    .locals 4

    .line 373
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 374
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->j:Lcom/mopub/nativeads/c;

    invoke-virtual {v0}, Lcom/mopub/nativeads/c;->a()V

    .line 375
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->m:Lcom/mopub/nativeads/f;

    .line 3415
    iget v2, v0, Lcom/mopub/nativeads/f;->b:I

    if-eqz v2, :cond_0

    .line 3419
    iget-object v2, v0, Lcom/mopub/nativeads/f;->a:[I

    iget v3, v0, Lcom/mopub/nativeads/f;->b:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mopub/nativeads/f;->a(II)I

    :cond_0
    return-void
.end method

.method public getAdData(I)Ljava/lang/Object;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->m:Lcom/mopub/nativeads/f;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/f;->c(I)Lcom/mopub/nativeads/NativeAd;

    move-result-object p1

    return-object p1
.end method

.method public getAdRendererForViewType(I)Lcom/mopub/nativeads/MoPubAdRenderer;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->j:Lcom/mopub/nativeads/c;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/c;->getAdRendererForViewType(I)Lcom/mopub/nativeads/MoPubAdRenderer;

    move-result-object p1

    return-object p1
.end method

.method public getAdView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->m:Lcom/mopub/nativeads/f;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/f;->c(I)Lcom/mopub/nativeads/NativeAd;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    .line 412
    :cond_1
    iget-object p2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->f:Landroid/app/Activity;

    .line 413
    invoke-virtual {p1, p2, p3}, Lcom/mopub/nativeads/NativeAd;->createAdView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 414
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->bindAdView(Lcom/mopub/nativeads/NativeAd;Landroid/view/View;)V

    return-object p2
.end method

.method public getAdViewType(I)I
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->m:Lcom/mopub/nativeads/f;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/f;->c(I)Lcom/mopub/nativeads/NativeAd;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->j:Lcom/mopub/nativeads/c;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/c;->getViewTypeForAd(Lcom/mopub/nativeads/NativeAd;)I

    move-result p1

    return p1
.end method

.method public getAdViewTypeCount()I
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->j:Lcom/mopub/nativeads/c;

    .line 5142
    iget-object v0, v0, Lcom/mopub/nativeads/c;->j:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0}, Lcom/mopub/nativeads/AdRendererRegistry;->getAdRendererCount()I

    move-result v0

    return v0
.end method

.method public getAdjustedCount(I)I
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->m:Lcom/mopub/nativeads/f;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/f;->f(I)I

    move-result p1

    return p1
.end method

.method public getAdjustedPosition(I)I
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->m:Lcom/mopub/nativeads/f;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/f;->e(I)I

    move-result p1

    return p1
.end method

.method public getOriginalCount(I)I
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->m:Lcom/mopub/nativeads/f;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 5332
    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/f;->d(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getOriginalPosition(I)I
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->m:Lcom/mopub/nativeads/f;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/f;->d(I)I

    move-result p1

    return p1
.end method

.method public insertItem(I)V
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->m:Lcom/mopub/nativeads/f;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/f;->g(I)V

    return-void
.end method

.method public isAd(I)Z
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->m:Lcom/mopub/nativeads/f;

    .line 3271
    iget-object v1, v0, Lcom/mopub/nativeads/f;->a:[I

    iget v0, v0, Lcom/mopub/nativeads/f;->b:I

    invoke-static {v1, v0, p1}, Lcom/mopub/nativeads/f;->a([III)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public loadAds(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 214
    invoke-virtual {p0, p1, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->loadAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V

    return-void
.end method

.method public loadAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V
    .locals 4

    const-string v0, "Cannot load ads with a null ad unit ID"

    .line 233
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->j:Lcom/mopub/nativeads/c;

    .line 3142
    iget-object v0, v0, Lcom/mopub/nativeads/c;->j:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0}, Lcom/mopub/nativeads/AdRendererRegistry;->getAdRendererCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 238
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "You must register at least 1 ad renderer by calling registerAdRenderer before loading ads"

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 243
    :cond_1
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->n:Ljava/lang/String;

    .line 245
    iput-boolean v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->d:Z

    .line 246
    iput-boolean v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->a:Z

    .line 247
    iput-boolean v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->c:Z

    .line 249
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->i:Lcom/mopub/nativeads/PositioningSource;

    new-instance v1, Lcom/mopub/nativeads/MoPubStreamAdPlacer$3;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer$3;-><init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)V

    invoke-interface {v0, p1, v1}, Lcom/mopub/nativeads/PositioningSource;->loadPositions(Ljava/lang/String;Lcom/mopub/nativeads/PositioningSource$PositioningListener;)V

    .line 263
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->j:Lcom/mopub/nativeads/c;

    new-instance v1, Lcom/mopub/nativeads/MoPubStreamAdPlacer$4;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer$4;-><init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)V

    .line 3171
    iput-object v1, v0, Lcom/mopub/nativeads/c;->g:Lcom/mopub/nativeads/c$a;

    .line 270
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->j:Lcom/mopub/nativeads/c;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->f:Landroid/app/Activity;

    .line 3177
    new-instance v2, Lcom/mopub/nativeads/MoPubNative;

    iget-object v3, v0, Lcom/mopub/nativeads/c;->b:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    invoke-direct {v2, v1, p1, v3}, Lcom/mopub/nativeads/MoPubNative;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;)V

    .line 3183
    invoke-virtual {v0}, Lcom/mopub/nativeads/c;->a()V

    .line 3185
    iget-object p1, v0, Lcom/mopub/nativeads/c;->j:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {p1}, Lcom/mopub/nativeads/AdRendererRegistry;->getRendererIterable()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/nativeads/MoPubAdRenderer;

    .line 3186
    invoke-virtual {v2, v1}, Lcom/mopub/nativeads/MoPubNative;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    goto :goto_0

    .line 3189
    :cond_2
    iput-object p2, v0, Lcom/mopub/nativeads/c;->h:Lcom/mopub/nativeads/RequestParameters;

    .line 3190
    iput-object v2, v0, Lcom/mopub/nativeads/c;->i:Lcom/mopub/nativeads/MoPubNative;

    .line 3192
    invoke-virtual {v0}, Lcom/mopub/nativeads/c;->c()V

    return-void
.end method

.method public moveItem(II)V
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->m:Lcom/mopub/nativeads/f;

    .line 5474
    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/f;->h(I)V

    .line 5475
    invoke-virtual {v0, p2}, Lcom/mopub/nativeads/f;->g(I)V

    return-void
.end method

.method public placeAdsInRange(II)V
    .locals 0

    .line 330
    iput p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->p:I

    add-int/lit8 p1, p1, 0x64

    .line 331
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->q:I

    .line 332
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->a()V

    return-void
.end method

.method public registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V
    .locals 2

    const-string v0, "Cannot register a null adRenderer"

    .line 177
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->j:Lcom/mopub/nativeads/c;

    .line 2155
    iget-object v1, v0, Lcom/mopub/nativeads/c;->j:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v1, p1}, Lcom/mopub/nativeads/AdRendererRegistry;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    .line 2156
    iget-object v1, v0, Lcom/mopub/nativeads/c;->i:Lcom/mopub/nativeads/MoPubNative;

    if-eqz v1, :cond_1

    .line 2157
    iget-object v0, v0, Lcom/mopub/nativeads/c;->i:Lcom/mopub/nativeads/MoPubNative;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubNative;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    :cond_1
    return-void
.end method

.method public removeAdsInRange(II)I
    .locals 5

    .line 447
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->m:Lcom/mopub/nativeads/f;

    .line 4294
    iget v1, v0, Lcom/mopub/nativeads/f;->b:I

    new-array v2, v1, [I

    .line 4295
    iget-object v3, v0, Lcom/mopub/nativeads/f;->a:[I

    iget v0, v0, Lcom/mopub/nativeads/f;->b:I

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->m:Lcom/mopub/nativeads/f;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/f;->e(I)I

    move-result p1

    .line 450
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->m:Lcom/mopub/nativeads/f;

    invoke-virtual {v0, p2}, Lcom/mopub/nativeads/f;->e(I)I

    move-result p2

    .line 452
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 456
    aget v3, v2, v1

    if-lt v3, p1, :cond_1

    if-ge v3, p2, :cond_1

    .line 461
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    iget v4, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->p:I

    if-ge v3, v4, :cond_0

    add-int/lit8 v4, v4, -0x1

    .line 466
    iput v4, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->p:I

    .line 468
    :cond_0
    iget v3, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->r:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->r:I

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 471
    :cond_2
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->m:Lcom/mopub/nativeads/f;

    invoke-virtual {v1, p1, p2}, Lcom/mopub/nativeads/f;->a(II)I

    move-result p1

    .line 472
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 473
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->o:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    invoke-interface {v1, v0}, Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;->onAdRemoved(I)V

    goto :goto_1

    :cond_3
    return p1
.end method

.method public removeItem(I)V
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->m:Lcom/mopub/nativeads/f;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/f;->h(I)V

    return-void
.end method

.method public setAdLoadedListener(Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;)V
    .locals 0

    if-nez p1, :cond_0

    .line 202
    sget-object p1, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->e:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    :cond_0
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->o:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    return-void
.end method

.method public setItemCount(I)V
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->m:Lcom/mopub/nativeads/f;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/f;->f(I)I

    move-result p1

    iput p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->r:I

    .line 570
    iget-boolean p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->d:Z

    if-eqz p1, :cond_0

    .line 571
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->a()V

    :cond_0
    return-void
.end method
