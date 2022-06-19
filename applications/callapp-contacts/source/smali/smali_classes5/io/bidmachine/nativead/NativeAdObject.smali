.class public final Lio/bidmachine/nativead/NativeAdObject;
.super Lio/bidmachine/AdObjectImpl;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lio/bidmachine/nativead/NativeContainer;
.implements Lio/bidmachine/nativead/NativeData;
.implements Lio/bidmachine/nativead/NativeInteractor;
.implements Lio/bidmachine/nativead/NativeMediaPrivateData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/nativead/NativeAdObject$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/AdObjectImpl<",
        "Lio/bidmachine/nativead/NativeRequest;",
        "Lio/bidmachine/models/AdObjectParams;",
        "Lio/bidmachine/unified/UnifiedNativeAd;",
        "Lio/bidmachine/unified/UnifiedNativeAdCallback;",
        "Lio/bidmachine/unified/UnifiedNativeAdRequestParams;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lio/bidmachine/nativead/NativeContainer;",
        "Lio/bidmachine/nativead/NativeData;",
        "Lio/bidmachine/nativead/NativeInteractor;",
        "Lio/bidmachine/nativead/NativeMediaPrivateData;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final DEFAULT_RATING:F = -1.0f

.field private static final ICON_VIEW_ID:I = 0x64

.field private static final INSTALL:Ljava/lang/String; = "Install"

.field private static final MEDIA_VIEW_ID:I = 0xc8

.field private static final clickStorage:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Landroid/view/View$OnClickListener;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private container:Landroid/view/ViewGroup;

.field private iconBitmap:Landroid/graphics/Bitmap;

.field private iconUri:Landroid/net/Uri;

.field private imageBitmap:Landroid/graphics/Bitmap;

.field private imageUri:Landroid/net/Uri;

.field private isImpressionTracked:Z

.field private mediaView:Lio/bidmachine/nativead/view/MediaView;

.field private nativeNetworkAdapter:Lio/bidmachine/nativead/NativeNetworkAdapter;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private progressDialogCanceller:Landroid/os/Handler;

.field private progressRunnable:Ljava/lang/Runnable;

.field private vastRequest:Lcom/explorestack/iab/vast/VastRequest;

.field private videoUri:Landroid/net/Uri;

.field private viewRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    sput-object v0, Lio/bidmachine/nativead/NativeAdObject;->clickStorage:Ljava/util/WeakHashMap;

    return-void
.end method

.method constructor <init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/nativead/NativeRequest;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/unified/UnifiedNativeAd;)V
    .locals 0

    .line 87
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/AdObjectImpl;-><init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/AdRequest;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/unified/UnifiedAd;)V

    return-void
.end method

.method static synthetic access$002(Lio/bidmachine/nativead/NativeAdObject;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lio/bidmachine/nativead/NativeAdObject;->isImpressionTracked:Z

    return p1
.end method

.method static synthetic access$100(Lio/bidmachine/nativead/NativeAdObject;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lio/bidmachine/nativead/NativeAdObject;->hideProgressDialog()V

    return-void
.end method

.method static synthetic access$202(Lio/bidmachine/nativead/NativeAdObject;Lio/bidmachine/nativead/NativeNetworkAdapter;)Lio/bidmachine/nativead/NativeNetworkAdapter;
    .locals 0

    .line 45
    iput-object p1, p0, Lio/bidmachine/nativead/NativeAdObject;->nativeNetworkAdapter:Lio/bidmachine/nativead/NativeNetworkAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lio/bidmachine/nativead/NativeAdObject;Landroid/content/Context;Lio/bidmachine/nativead/NativeData;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lio/bidmachine/nativead/NativeAdObject;->loadAsset(Landroid/content/Context;Lio/bidmachine/nativead/NativeData;)V

    return-void
.end method

.method private configureClickableView(Landroid/view/ViewGroup;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 373
    invoke-direct {p0, p1}, Lio/bidmachine/nativead/NativeAdObject;->deConfigureClickableView(Landroid/view/ViewGroup;)V

    if-eqz p2, :cond_2

    .line 374
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 377
    :cond_0
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 378
    sget-object v1, Lio/bidmachine/nativead/NativeAdObject;->clickStorage:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-eqz p2, :cond_1

    .line 381
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    invoke-virtual {v0, p2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private configureIconView(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 3

    .line 402
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 403
    check-cast p1, Landroid/widget/ImageView;

    goto :goto_0

    .line 404
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 405
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x64

    .line 406
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 407
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 409
    check-cast p1, Landroid/view/ViewGroup;

    .line 410
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 411
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 417
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/nativead/NativeAdObject;->iconUri:Landroid/net/Uri;

    iget-object v2, p0, Lio/bidmachine/nativead/NativeAdObject;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, p1, v1, v2}, Lio/bidmachine/nativead/utils/ImageHelper;->fillImageView(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    :cond_2
    return-object p1
.end method

.method private configureMediaView(Lio/bidmachine/nativead/view/NativeMediaView;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 427
    invoke-virtual {p1}, Lio/bidmachine/nativead/view/NativeMediaView;->removeAllViews()V

    .line 428
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->nativeNetworkAdapter:Lio/bidmachine/nativead/NativeNetworkAdapter;

    if-eqz v0, :cond_2

    .line 429
    invoke-virtual {v0, p1}, Lio/bidmachine/nativead/NativeNetworkAdapter;->configureMediaView(Lio/bidmachine/nativead/view/NativeMediaView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 430
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 433
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 436
    new-instance v1, Lio/bidmachine/nativead/view/MediaView;

    invoke-virtual {p1}, Lio/bidmachine/nativead/view/NativeMediaView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/bidmachine/nativead/view/MediaView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lio/bidmachine/nativead/NativeAdObject;->mediaView:Lio/bidmachine/nativead/view/MediaView;

    const/16 v2, 0xc8

    .line 437
    invoke-virtual {v1, v2}, Lio/bidmachine/nativead/view/MediaView;->setId(I)V

    .line 439
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeAdObject;->getAdRequest()Lio/bidmachine/AdRequest;

    move-result-object v1

    check-cast v1, Lio/bidmachine/nativead/NativeRequest;

    .line 440
    sget-object v2, Lio/bidmachine/MediaAssetType;->Image:Lio/bidmachine/MediaAssetType;

    invoke-virtual {v1, v2}, Lio/bidmachine/nativead/NativeRequest;->containsAssetType(Lio/bidmachine/MediaAssetType;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lio/bidmachine/MediaAssetType;->Video:Lio/bidmachine/MediaAssetType;

    .line 441
    invoke-virtual {v1, v2}, Lio/bidmachine/nativead/NativeRequest;->containsAssetType(Lio/bidmachine/MediaAssetType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 442
    :cond_0
    iget-object v1, p0, Lio/bidmachine/nativead/NativeAdObject;->mediaView:Lio/bidmachine/nativead/view/MediaView;

    invoke-virtual {v1, p0}, Lio/bidmachine/nativead/view/MediaView;->setNativeAdObject(Lio/bidmachine/nativead/NativeAdObject;)V

    .line 444
    :cond_1
    iget-object v1, p0, Lio/bidmachine/nativead/NativeAdObject;->mediaView:Lio/bidmachine/nativead/view/MediaView;

    invoke-virtual {p1, v1, v0}, Lio/bidmachine/nativead/view/NativeMediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private deConfigureClickableView(Landroid/view/ViewGroup;)V
    .locals 3

    .line 388
    sget-object v0, Lio/bidmachine/nativead/NativeAdObject;->clickStorage:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap;

    if-eqz v0, :cond_2

    .line 390
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 391
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 392
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 395
    :cond_1
    sget-object v0, Lio/bidmachine/nativead/NativeAdObject;->clickStorage:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private hideProgressDialog()V
    .locals 3

    .line 486
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 488
    iput-object v1, p0, Lio/bidmachine/nativead/NativeAdObject;->progressDialog:Landroid/app/ProgressDialog;

    .line 490
    :cond_0
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->progressRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lio/bidmachine/nativead/NativeAdObject;->progressDialogCanceller:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 491
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 492
    iput-object v1, p0, Lio/bidmachine/nativead/NativeAdObject;->progressDialogCanceller:Landroid/os/Handler;

    .line 493
    iput-object v1, p0, Lio/bidmachine/nativead/NativeAdObject;->progressRunnable:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method private loadAsset(Landroid/content/Context;Lio/bidmachine/nativead/NativeData;)V
    .locals 3

    .line 498
    new-instance v0, Lio/bidmachine/nativead/a;

    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeAdObject;->getAdRequest()Lio/bidmachine/AdRequest;

    move-result-object v1

    check-cast v1, Lio/bidmachine/nativead/NativeRequest;

    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeAdObject;->getProcessCallback()Lio/bidmachine/AdProcessCallback;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2, p0}, Lio/bidmachine/nativead/a;-><init>(Lio/bidmachine/nativead/NativeRequest;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/nativead/NativeData;Lio/bidmachine/nativead/NativeMediaPrivateData;)V

    .line 499
    invoke-virtual {v0, p1}, Lio/bidmachine/nativead/a;->downloadNativeAdsImages(Landroid/content/Context;)V

    return-void
.end method

.method private mayShowProgressDialog()Z
    .locals 1

    .line 482
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private showProgressDialog(Landroid/content/Context;)V
    .locals 3

    .line 451
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->container:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/bidmachine/nativead/NativeAdObject;->mayShowProgressDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    check-cast p1, Landroid/app/Activity;

    .line 453
    invoke-static {p1}, Lio/bidmachine/core/Utils;->canAddWindowToActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->container:Landroid/view/ViewGroup;

    new-instance v1, Lio/bidmachine/nativead/NativeAdObject$2;

    invoke-direct {v1, p0}, Lio/bidmachine/nativead/NativeAdObject$2;-><init>(Lio/bidmachine/nativead/NativeAdObject;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const-string v0, ""

    const-string v1, "Loading..."

    .line 466
    invoke-static {p1, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/nativead/NativeAdObject;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    .line 467
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 468
    iget-object p1, p0, Lio/bidmachine/nativead/NativeAdObject;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 469
    new-instance p1, Lio/bidmachine/nativead/NativeAdObject$3;

    invoke-direct {p1, p0}, Lio/bidmachine/nativead/NativeAdObject$3;-><init>(Lio/bidmachine/nativead/NativeAdObject;)V

    iput-object p1, p0, Lio/bidmachine/nativead/NativeAdObject;->progressRunnable:Ljava/lang/Runnable;

    .line 475
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lio/bidmachine/nativead/NativeAdObject;->progressDialogCanceller:Landroid/os/Handler;

    .line 476
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->progressRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic createUnifiedCallback(Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/unified/UnifiedAdCallback;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/NativeAdObject;->createUnifiedCallback(Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/unified/UnifiedNativeAdCallback;

    move-result-object p1

    return-object p1
.end method

.method public final createUnifiedCallback(Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/unified/UnifiedNativeAdCallback;
    .locals 1

    .line 221
    new-instance v0, Lio/bidmachine/nativead/NativeAdObject$a;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/nativead/NativeAdObject$a;-><init>(Lio/bidmachine/nativead/NativeAdObject;Lio/bidmachine/AdProcessCallback;)V

    return-object v0
.end method

.method public final dispatchClick()V
    .locals 1

    .line 538
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeAdObject;->getProcessCallback()Lio/bidmachine/AdProcessCallback;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processClicked()V

    return-void
.end method

.method public final dispatchImpression()V
    .locals 1

    .line 543
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeAdObject;->getProcessCallback()Lio/bidmachine/AdProcessCallback;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processImpression()V

    return-void
.end method

.method public final dispatchShown()V
    .locals 1

    .line 509
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeAdObject;->getProcessCallback()Lio/bidmachine/AdProcessCallback;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processShown()V

    return-void
.end method

.method public final dispatchVideoPlayFinished()V
    .locals 0

    return-void
.end method

.method public final getCallToAction()Ljava/lang/String;
    .locals 2

    .line 105
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->nativeNetworkAdapter:Lio/bidmachine/nativead/NativeNetworkAdapter;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeNetworkAdapter;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 108
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Install"

    :cond_1
    return-object v0
.end method

.method public final getClickUrl()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->nativeNetworkAdapter:Lio/bidmachine/nativead/NativeNetworkAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeNetworkAdapter;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->nativeNetworkAdapter:Lio/bidmachine/nativead/NativeNetworkAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeNetworkAdapter;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIconBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 165
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->iconBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getIconUri()Landroid/net/Uri;
    .locals 1

    .line 159
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->iconUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getIconUrl()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->nativeNetworkAdapter:Lio/bidmachine/nativead/NativeNetworkAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeNetworkAdapter;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getImageBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 187
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->imageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getImageUri()Landroid/net/Uri;
    .locals 1

    .line 176
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->imageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->nativeNetworkAdapter:Lio/bidmachine/nativead/NativeNetworkAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeNetworkAdapter;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getProviderView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 227
    iget-object p1, p0, Lio/bidmachine/nativead/NativeAdObject;->nativeNetworkAdapter:Lio/bidmachine/nativead/NativeNetworkAdapter;

    if-eqz p1, :cond_0

    .line 228
    invoke-virtual {p1}, Lio/bidmachine/nativead/NativeNetworkAdapter;->configureProviderView()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getRating()F
    .locals 1

    .line 113
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->nativeNetworkAdapter:Lio/bidmachine/nativead/NativeNetworkAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeNetworkAdapter;->getRating()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->nativeNetworkAdapter:Lio/bidmachine/nativead/NativeNetworkAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeNetworkAdapter;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getVastRequest()Lcom/explorestack/iab/vast/VastRequest;
    .locals 1

    .line 209
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->vastRequest:Lcom/explorestack/iab/vast/VastRequest;

    return-object v0
.end method

.method public final getVideoAdm()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->nativeNetworkAdapter:Lio/bidmachine/nativead/NativeNetworkAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeNetworkAdapter;->getVideoAdm()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getVideoUri()Landroid/net/Uri;
    .locals 1

    .line 198
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->videoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->nativeNetworkAdapter:Lio/bidmachine/nativead/NativeNetworkAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeNetworkAdapter;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasVideo()Z
    .locals 1

    .line 214
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->videoUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->nativeNetworkAdapter:Lio/bidmachine/nativead/NativeNetworkAdapter;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeNetworkAdapter;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method final isNativeAdViewValid(Landroid/view/ViewGroup;Landroid/view/View;Lio/bidmachine/nativead/view/NativeMediaView;Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Lio/bidmachine/nativead/view/NativeMediaView;",
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "NativeAdView cannot be null. NativeAd is NOT registered"

    .line 343
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    return v0

    :cond_0
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    const-string p1, "ImageView or NativeMediaView cannot be null. NativeAd is NOT registered"

    .line 347
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    return v0

    :cond_1
    if-eqz p2, :cond_2

    .line 350
    invoke-static {p1, p2}, Lio/bidmachine/utils/ViewHelper;->belongTo(Landroid/view/ViewGroup;Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p1, "ImageView should belong to NativeAdView. NativeAd is NOT registered"

    .line 351
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    return v0

    :cond_2
    if-eqz p3, :cond_3

    .line 354
    invoke-static {p1, p3}, Lio/bidmachine/utils/ViewHelper;->belongTo(Landroid/view/ViewGroup;Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p1, "NativeMediaView should belong to NativeAdView. NativeAd is NOT registered"

    .line 355
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    return v0

    :cond_3
    if-eqz p4, :cond_5

    .line 360
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    if-eqz p3, :cond_4

    .line 361
    invoke-static {p1, p3}, Lio/bidmachine/utils/ViewHelper;->belongTo(Landroid/view/ViewGroup;Landroid/view/View;)Z

    move-result p3

    if-nez p3, :cond_4

    const-string p1, "All clickable views should belong to NativeAdView. NativeAd is NOT registered"

    .line 362
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    return v0

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public final isViewRegistered()Z
    .locals 1

    .line 504
    iget-boolean v0, p0, Lio/bidmachine/nativead/NativeAdObject;->viewRegistered:Z

    return v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 514
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeAdObject;->dispatchClick()V

    return-void
.end method

.method public final onClicked()V
    .locals 4

    .line 519
    invoke-super {p0}, Lio/bidmachine/AdObjectImpl;->onClicked()V

    .line 520
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeAdObject;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    .line 521
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 524
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeAdObject;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/bidmachine/nativead/NativeAdObject;->showProgressDialog(Landroid/content/Context;)V

    .line 525
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeAdObject;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 527
    invoke-static {}, Lio/bidmachine/nativead/utils/NativeNetworkExecutor;->getInstance()Lio/bidmachine/nativead/utils/NativeNetworkExecutor;

    move-result-object v2

    new-instance v3, Lio/bidmachine/nativead/NativeAdObject$4;

    invoke-direct {v3, p0}, Lio/bidmachine/nativead/NativeAdObject$4;-><init>(Lio/bidmachine/nativead/NativeAdObject;)V

    .line 525
    invoke-static {v1, v0, v2, v3}, Lio/bidmachine/core/Utils;->openBrowser(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 307
    :try_start_0
    invoke-super {p0}, Lio/bidmachine/AdObjectImpl;->onDestroy()V

    .line 308
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeAdObject;->unregisterView()V

    .line 309
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->iconBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 313
    :cond_0
    iput-object v1, p0, Lio/bidmachine/nativead/NativeAdObject;->iconBitmap:Landroid/graphics/Bitmap;

    .line 315
    :cond_1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->imageBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 316
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 317
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->imageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 319
    :cond_2
    iput-object v1, p0, Lio/bidmachine/nativead/NativeAdObject;->imageBitmap:Landroid/graphics/Bitmap;

    .line 321
    :cond_3
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->videoUri:Landroid/net/Uri;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 322
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lio/bidmachine/nativead/NativeAdObject;->videoUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 325
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 327
    :cond_4
    iput-object v1, p0, Lio/bidmachine/nativead/NativeAdObject;->videoUri:Landroid/net/Uri;

    .line 329
    :cond_5
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->nativeNetworkAdapter:Lio/bidmachine/nativead/NativeNetworkAdapter;

    if-eqz v0, :cond_6

    .line 330
    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeNetworkAdapter;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    .line 333
    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final registerView(Landroid/view/ViewGroup;Landroid/view/View;Lio/bidmachine/nativead/view/NativeMediaView;Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Lio/bidmachine/nativead/view/NativeMediaView;",
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 238
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/nativead/NativeAdObject;->isNativeAdViewValid(Landroid/view/ViewGroup;Landroid/view/View;Lio/bidmachine/nativead/view/NativeMediaView;Ljava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeAdObject;->getProcessCallback()Lio/bidmachine/AdProcessCallback;

    move-result-object p1

    sget-object p2, Lio/bidmachine/utils/BMError;->NoContent:Lio/bidmachine/utils/BMError;

    invoke-interface {p1, p2}, Lio/bidmachine/AdProcessCallback;->processShowFail(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 243
    :cond_0
    invoke-direct {p0, p1, p4}, Lio/bidmachine/nativead/NativeAdObject;->configureClickableView(Landroid/view/ViewGroup;Ljava/util/Set;)V

    .line 244
    invoke-direct {p0, p2}, Lio/bidmachine/nativead/NativeAdObject;->configureIconView(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object p2

    .line 245
    invoke-direct {p0, p3}, Lio/bidmachine/nativead/NativeAdObject;->configureMediaView(Lio/bidmachine/nativead/view/NativeMediaView;)V

    .line 246
    iput-object p1, p0, Lio/bidmachine/nativead/NativeAdObject;->container:Landroid/view/ViewGroup;

    .line 247
    iget-boolean v0, p0, Lio/bidmachine/nativead/NativeAdObject;->isImpressionTracked:Z

    if-nez v0, :cond_1

    .line 250
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeAdObject;->getParams()Lio/bidmachine/models/AdObjectParams;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/models/AdObjectParams;->getViewabilityTimeThresholdMs()J

    move-result-wide v2

    .line 251
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeAdObject;->getParams()Lio/bidmachine/models/AdObjectParams;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/models/AdObjectParams;->getViewabilityPixelThreshold()F

    move-result v4

    .line 252
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeAdObject;->getParams()Lio/bidmachine/models/AdObjectParams;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/models/AdObjectParams;->isViewabilityIgnoreWindowFocus()Z

    move-result v5

    new-instance v6, Lio/bidmachine/nativead/NativeAdObject$1;

    invoke-direct {v6, p0}, Lio/bidmachine/nativead/NativeAdObject$1;-><init>(Lio/bidmachine/nativead/NativeAdObject;)V

    move-object v1, p1

    .line 248
    invoke-static/range {v1 .. v6}, Lio/bidmachine/core/VisibilityTracker;->startTracking(Landroid/view/View;JFZLio/bidmachine/core/VisibilityTracker$VisibilityChangeCallback;)V

    .line 266
    :cond_1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->mediaView:Lio/bidmachine/nativead/view/MediaView;

    if-eqz v0, :cond_2

    .line 267
    invoke-virtual {v0}, Lio/bidmachine/nativead/view/MediaView;->onViewAppearOnScreen()V

    .line 268
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->mediaView:Lio/bidmachine/nativead/view/MediaView;

    invoke-virtual {v0}, Lio/bidmachine/nativead/view/MediaView;->startVideoVisibilityCheckerTimer()V

    .line 270
    :cond_2
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->nativeNetworkAdapter:Lio/bidmachine/nativead/NativeNetworkAdapter;

    if-eqz v0, :cond_3

    .line 271
    invoke-virtual {v0, p1, p2, p3, p4}, Lio/bidmachine/nativead/NativeNetworkAdapter;->registerNative(Landroid/view/View;Landroid/widget/ImageView;Lio/bidmachine/nativead/view/NativeMediaView;Ljava/util/Set;)V

    :cond_3
    const/4 p1, 0x1

    .line 276
    iput-boolean p1, p0, Lio/bidmachine/nativead/NativeAdObject;->viewRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 278
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeAdObject;->unregisterView()V

    .line 279
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeAdObject;->getProcessCallback()Lio/bidmachine/AdProcessCallback;

    move-result-object p2

    const-string p3, "Error during registerView"

    invoke-static {p3}, Lio/bidmachine/utils/BMError;->catchError(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p3

    invoke-interface {p2, p3}, Lio/bidmachine/AdProcessCallback;->processShowFail(Lio/bidmachine/utils/BMError;)V

    .line 280
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setIconBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lio/bidmachine/nativead/NativeAdObject;->iconBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setIconUri(Landroid/net/Uri;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lio/bidmachine/nativead/NativeAdObject;->iconUri:Landroid/net/Uri;

    return-void
.end method

.method public final setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lio/bidmachine/nativead/NativeAdObject;->imageBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setImageUri(Landroid/net/Uri;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lio/bidmachine/nativead/NativeAdObject;->imageUri:Landroid/net/Uri;

    return-void
.end method

.method public final setVastRequest(Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lio/bidmachine/nativead/NativeAdObject;->vastRequest:Lcom/explorestack/iab/vast/VastRequest;

    return-void
.end method

.method public final setVideoUri(Landroid/net/Uri;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lio/bidmachine/nativead/NativeAdObject;->videoUri:Landroid/net/Uri;

    return-void
.end method

.method public final unregisterView()V
    .locals 1

    .line 287
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->container:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 288
    invoke-direct {p0, v0}, Lio/bidmachine/nativead/NativeAdObject;->deConfigureClickableView(Landroid/view/ViewGroup;)V

    .line 289
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->container:Landroid/view/ViewGroup;

    invoke-static {v0}, Lio/bidmachine/core/VisibilityTracker;->stopTracking(Landroid/view/View;)V

    .line 291
    :cond_0
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->mediaView:Lio/bidmachine/nativead/view/MediaView;

    if-eqz v0, :cond_1

    .line 292
    invoke-virtual {v0}, Lio/bidmachine/nativead/view/MediaView;->stopVideoVisibilityCheckerTimer()V

    .line 293
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->mediaView:Lio/bidmachine/nativead/view/MediaView;

    invoke-virtual {v0}, Lio/bidmachine/nativead/view/MediaView;->release()V

    .line 295
    :cond_1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->nativeNetworkAdapter:Lio/bidmachine/nativead/NativeNetworkAdapter;

    if-eqz v0, :cond_2

    .line 296
    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeNetworkAdapter;->unregisterNative()V

    :cond_2
    const/4 v0, 0x0

    .line 298
    iput-boolean v0, p0, Lio/bidmachine/nativead/NativeAdObject;->viewRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 300
    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    return-void
.end method
