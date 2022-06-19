.class public Lcom/mopub/nativeads/MoPubStreamAdPlacer;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CONTENT_VIEW_TYPE:I

.field public static final r:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/lang/Runnable;

.field public final d:Lcom/mopub/nativeads/PositioningSource;

.field public final e:Lwh1;

.field public final f:Ljava/util/HashMap;
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

.field public final g:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/NativeAd;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z

.field public i:Lzh1;

.field public j:Z

.field public k:Z

.field public l:Lzh1;

.field public m:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

.field public n:I

.field public o:I

.field public p:I

.field public q:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer$a;

    invoke-direct {v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer$a;-><init>()V

    sput-object v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->r:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/mopub/nativeads/MoPubNativeAdPositioning;->serverPositioning()Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;-><init>(Landroid/app/Activity;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 2

    new-instance v0, Lwh1;

    invoke-direct {v0}, Lwh1;-><init>()V

    new-instance v1, Luh1;

    invoke-direct {v1, p2}, Luh1;-><init>(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;-><init>(Landroid/app/Activity;Lwh1;Lcom/mopub/nativeads/PositioningSource;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;)V
    .locals 1

    new-instance p2, Lwh1;

    invoke-direct {p2}, Lwh1;-><init>()V

    new-instance v0, Lbi1;

    invoke-direct {v0, p1}, Lbi1;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;-><init>(Landroid/app/Activity;Lwh1;Lcom/mopub/nativeads/PositioningSource;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lwh1;Lcom/mopub/nativeads/PositioningSource;)V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->r:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->m:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    const-string v0, "activity is not allowed to be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSource is not allowed to be null"

    invoke-static {p2, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positioningSource is not allowed to be null"

    invoke-static {p3, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->d:Lcom/mopub/nativeads/PositioningSource;

    iput-object p2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->e:Lwh1;

    invoke-static {}, Lzh1;->f()Lzh1;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lzh1;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->g:Ljava/util/WeakHashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->f:Ljava/util/HashMap;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->b:Landroid/os/Handler;

    new-instance p1, Lcom/mopub/nativeads/MoPubStreamAdPlacer$b;

    invoke-direct {p1, p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer$b;-><init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)V

    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->c:Ljava/lang/Runnable;

    const/4 p1, 0x0

    iput p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->n:I

    iput p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->o:I

    return-void
.end method

.method public static synthetic a(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->q:Z

    return p0
.end method

.method public static synthetic b(Lcom/mopub/nativeads/MoPubStreamAdPlacer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->q:Z

    return p1
.end method

.method public static synthetic c(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->h()V

    return-void
.end method


# virtual methods
.method public bindAdView(Lcom/mopub/nativeads/NativeAd;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->d(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->d(Landroid/view/View;)V

    invoke-virtual {p0, p1, p2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->j(Lcom/mopub/nativeads/NativeAd;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Lcom/mopub/nativeads/NativeAd;->renderAdView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public clearAds()V
    .locals 2

    iget v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->p:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->removeAdsInRange(II)I

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->e:Lwh1;

    invoke-virtual {v0}, Lwh1;->f()V

    return-void
.end method

.method public final d(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/NativeAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/NativeAd;->clear(Landroid/view/View;)V

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->f:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->e:Lwh1;

    invoke-virtual {v0}, Lwh1;->f()V

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lzh1;

    invoke-virtual {v0}, Lzh1;->d()V

    return-void
.end method

.method public e()V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->g()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->i:Lzh1;

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->i(Lzh1;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->j:Z

    return-void
.end method

.method public f(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    invoke-static {p1}, Lzh1;->g(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)Lzh1;

    move-result-object p1

    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->i(Lzh1;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->i:Lzh1;

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->h:Z

    return-void
.end method

.method public final g()V
    .locals 2

    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->q:Z

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getAdData(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lzh1;

    invoke-virtual {v0, p1}, Lzh1;->l(I)Lcom/mopub/nativeads/NativeAd;

    move-result-object p1

    return-object p1
.end method

.method public getAdRendererForViewType(I)Lcom/mopub/nativeads/MoPubAdRenderer;
    .locals 1

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->e:Lwh1;

    invoke-virtual {v0, p1}, Lwh1;->getAdRendererForViewType(I)Lcom/mopub/nativeads/MoPubAdRenderer;

    move-result-object p1

    return-object p1
.end method

.method public getAdView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lzh1;

    invoke-virtual {v0, p1}, Lzh1;->l(I)Lcom/mopub/nativeads/NativeAd;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->a:Landroid/app/Activity;

    invoke-virtual {p1, p2, p3}, Lcom/mopub/nativeads/NativeAd;->createAdView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->bindAdView(Lcom/mopub/nativeads/NativeAd;Landroid/view/View;)V

    return-object p2
.end method

.method public getAdViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lzh1;

    invoke-virtual {v0, p1}, Lzh1;->l(I)Lcom/mopub/nativeads/NativeAd;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->e:Lwh1;

    invoke-virtual {v0, p1}, Lwh1;->getViewTypeForAd(Lcom/mopub/nativeads/NativeAd;)I

    move-result p1

    return p1
.end method

.method public getAdViewTypeCount()I
    .locals 1

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->e:Lwh1;

    invoke-virtual {v0}, Lwh1;->h()I

    move-result v0

    return v0
.end method

.method public getAdjustedCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lzh1;

    invoke-virtual {v0, p1}, Lzh1;->h(I)I

    move-result p1

    return p1
.end method

.method public getAdjustedPosition(I)I
    .locals 1

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lzh1;

    invoke-virtual {v0, p1}, Lzh1;->i(I)I

    move-result p1

    return p1
.end method

.method public getOriginalCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lzh1;

    invoke-virtual {v0, p1}, Lzh1;->j(I)I

    move-result p1

    return p1
.end method

.method public getOriginalPosition(I)I
    .locals 1

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lzh1;

    invoke-virtual {v0, p1}, Lzh1;->k(I)I

    move-result p1

    return p1
.end method

.method public final h()V
    .locals 2

    iget v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->n:I

    iget v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->o:I

    invoke-virtual {p0, v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->o:I

    add-int/lit8 v1, v0, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l(II)Z

    return-void
.end method

.method public final i(Lzh1;)V
    .locals 2

    iget v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->p:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->removeAdsInRange(II)I

    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lzh1;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->h()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->k:Z

    return-void
.end method

.method public insertItem(I)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lzh1;

    invoke-virtual {v0, p1}, Lzh1;->n(I)V

    return-void
.end method

.method public isAd(I)Z
    .locals 1

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lzh1;

    invoke-virtual {v0, p1}, Lzh1;->o(I)Z

    move-result p1

    return p1
.end method

.method public final j(Lcom/mopub/nativeads/NativeAd;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->f:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/mopub/nativeads/NativeAd;->prepare(Landroid/view/View;)V

    return-void
.end method

.method public final k(I)Z
    .locals 2

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->e:Lwh1;

    invoke-virtual {v0}, Lwh1;->g()Lcom/mopub/nativeads/NativeAd;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lzh1;

    invoke-virtual {v1, p1, v0}, Lzh1;->r(ILcom/mopub/nativeads/NativeAd;)V

    iget v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->p:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->p:I

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->m:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;->onAdLoaded(I)V

    return v1
.end method

.method public final l(II)Z
    .locals 2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_0
    if-gt p1, p2, :cond_3

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    iget v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->p:I

    if-lt p1, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lzh1;

    invoke-virtual {v1, p1}, Lzh1;->t(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->k(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    :cond_2
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lzh1;

    invoke-virtual {v1, p1}, Lzh1;->q(I)I

    move-result p1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public loadAds(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->loadAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V

    return-void
.end method

.method public loadAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V
    .locals 2

    const-string v0, "Cannot load ads with a null ad unit ID"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->e:Lwh1;

    invoke-virtual {v0}, Lwh1;->h()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "You must register at least 1 ad renderer by calling registerAdRenderer before loading ads"

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->k:Z

    iput-boolean v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->h:Z

    iput-boolean v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->j:Z

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->d:Lcom/mopub/nativeads/PositioningSource;

    new-instance v1, Lcom/mopub/nativeads/MoPubStreamAdPlacer$c;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer$c;-><init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)V

    invoke-interface {v0, p1, v1}, Lcom/mopub/nativeads/PositioningSource;->loadPositions(Ljava/lang/String;Lcom/mopub/nativeads/PositioningSource$PositioningListener;)V

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->e:Lwh1;

    new-instance v1, Lcom/mopub/nativeads/MoPubStreamAdPlacer$d;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer$d;-><init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)V

    invoke-virtual {v0, v1}, Lwh1;->o(Lwh1$c;)V

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->e:Lwh1;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2}, Lwh1;->j(Landroid/app/Activity;Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V

    return-void
.end method

.method public moveItem(II)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lzh1;

    invoke-virtual {v0, p1, p2}, Lzh1;->p(II)V

    return-void
.end method

.method public placeAdsInRange(II)V
    .locals 0

    iput p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->n:I

    add-int/lit8 p1, p1, 0x64

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->o:I

    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->g()V

    return-void
.end method

.method public registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V
    .locals 1

    const-string v0, "Cannot register a null adRenderer"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->e:Lwh1;

    invoke-virtual {v0, p1}, Lwh1;->l(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    return-void
.end method

.method public removeAdsInRange(II)I
    .locals 5

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lzh1;

    invoke-virtual {v0}, Lzh1;->m()[I

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lzh1;

    invoke-virtual {v1, p1}, Lzh1;->i(I)I

    move-result p1

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lzh1;

    invoke-virtual {v1, p2}, Lzh1;->i(I)I

    move-result p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_3

    aget v3, v0, v2

    if-lt v3, p1, :cond_2

    if-lt v3, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->n:I

    if-ge v3, v4, :cond_1

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->n:I

    :cond_1
    iget v3, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->p:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->p:I

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lzh1;

    invoke-virtual {v0, p1, p2}, Lzh1;->e(II)I

    move-result p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->m:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    invoke-interface {v1, v0}, Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;->onAdRemoved(I)V

    goto :goto_2

    :cond_4
    return p1
.end method

.method public removeItem(I)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lzh1;

    invoke-virtual {v0, p1}, Lzh1;->s(I)V

    return-void
.end method

.method public setAdLoadedListener(Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->r:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    :cond_0
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->m:Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;

    return-void
.end method

.method public setItemCount(I)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->l:Lzh1;

    invoke-virtual {v0, p1}, Lzh1;->h(I)I

    move-result p1

    iput p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->p:I

    iget-boolean p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->k:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->g()V

    :cond_0
    return-void
.end method
