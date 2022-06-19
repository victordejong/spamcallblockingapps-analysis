.class public Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppLovinMediaView"


# instance fields
.field private final ad:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;

.field private final imageView:Landroid/widget/ImageView;

.field private final impressionTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isVideoMuted:Z

.field private final lifecycleCallbacksAdapter:Lcom/applovin/impl/sdk/utils/a;

.field private final logger:Lcom/applovin/impl/sdk/t;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private final sdk:Lcom/applovin/impl/sdk/l;

.field private final videoUiEventHandler:Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView$a;

.field private videoView:Lcom/applovin/impl/adview/AppLovinVideoView;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;Lcom/applovin/impl/sdk/l;Landroid/content/Context;)V
    .locals 9

    invoke-direct {p0, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->impressionTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView$a;-><init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView$1;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->videoUiEventHandler:Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView$a;

    new-instance v2, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView$1;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView$1;-><init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->lifecycleCallbacksAdapter:Lcom/applovin/impl/sdk/utils/a;

    const/high16 v3, -0x1000000

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->ad:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;

    iput-object p2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->sdk:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/l;->A()Lcom/applovin/impl/sdk/t;

    move-result-object v3

    iput-object v3, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->logger:Lcom/applovin/impl/sdk/t;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->isVideoMuted:Z

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/applovin/sdk/R$layout;->applovin_native_ad_media_view:I

    invoke-virtual {v4, v5, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getMainImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getVastAd()Lcom/applovin/impl/a/a;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/applovin/impl/a/a;->g()Landroid/net/Uri;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    if-nez v3, :cond_2

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AppLovin native ad missing image AND video resources"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    new-instance v6, Lcom/applovin/impl/adview/AppLovinTouchToClickListener;

    sget-object v7, Lcom/applovin/impl/sdk/c/b;->aN:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getClickHandler()Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$a;

    move-result-object v8

    invoke-direct {v6, p2, v7, p3, v8}, Lcom/applovin/impl/adview/AppLovinTouchToClickListener;-><init>(Lcom/applovin/impl/sdk/l;Lcom/applovin/impl/sdk/c/b;Landroid/content/Context;Lcom/applovin/impl/adview/AppLovinTouchToClickListener$OnClickListener;)V

    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget v6, Lcom/applovin/sdk/R$id;->image_view:I

    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->imageView:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getClickHandler()Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$a;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/l;->ad()Lcom/applovin/impl/sdk/a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/applovin/impl/sdk/a;->a(Lcom/applovin/impl/sdk/utils/a;)V

    new-instance p1, Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-direct {p1, p3, p2}, Lcom/applovin/impl/adview/AppLovinVideoView;-><init>(Landroid/content/Context;Lcom/applovin/impl/sdk/l;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->videoView:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->videoView:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->videoView:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->videoView:Lcom/applovin/impl/adview/AppLovinVideoView;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p3, 0x11

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->videoView:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->videoView:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {p1, v4}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    const/16 p1, 0x8

    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iput-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->videoView:Lcom/applovin/impl/adview/AppLovinVideoView;

    :goto_2
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;)Lcom/applovin/impl/adview/AppLovinVideoView;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->videoView:Lcom/applovin/impl/adview/AppLovinVideoView;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;)Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView$a;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->videoUiEventHandler:Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView$a;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->isVideoMuted:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;)Lcom/applovin/impl/sdk/t;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->logger:Lcom/applovin/impl/sdk/t;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->ad:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->sdk:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->ad()Lcom/applovin/impl/sdk/a;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->lifecycleCallbacksAdapter:Lcom/applovin/impl/sdk/utils/a;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/a;->b(Lcom/applovin/impl/sdk/utils/a;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->videoView:Lcom/applovin/impl/adview/AppLovinVideoView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/VideoView;->pause()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->videoView:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->videoView:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->videoView:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->videoView:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->videoView:Lcom/applovin/impl/adview/AppLovinVideoView;

    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->impressionTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->ad:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getImpressionUrls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->sdk:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/l;->W()Lcom/applovin/impl/sdk/network/PostbackServiceImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/applovin/impl/sdk/network/PostbackServiceImpl;->dispatchPostbackAsync(Ljava/lang/String;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->ad:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getAdEventTracker()Lcom/applovin/impl/sdk/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/applovin/impl/sdk/a/b;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->ad:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getAdEventTracker()Lcom/applovin/impl/sdk/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a/b;->d()V

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->videoView:Lcom/applovin/impl/adview/AppLovinVideoView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    :cond_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->videoView:Lcom/applovin/impl/adview/AppLovinVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method
