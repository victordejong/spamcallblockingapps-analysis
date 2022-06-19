.class public Lcom/millennialmedia/internal/video/LightboxView;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/video/LightboxView$MMVideoViewViewabilityListener;,
        Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;
    }
.end annotation


# static fields
.field private static final COLLAPSING:I = 0x3

.field private static final DEFAULT:I = 0x0

.field private static final EXPANDED:I = 0x4

.field private static final EXPANDING:I = 0x2

.field private static final SWIPE_AWAY:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile animating:Z

.field private volatile complete:Z

.field private completeFired:Z

.field private defaultHeight:I

.field private defaultWidth:I

.field private downX:F

.field private downY:F

.field private fullscreenCompanion:Landroid/widget/ImageView;

.field private fullscreenCompanionLoadedFired:Z

.field private fullscreenCompanionWebView:Lcom/millennialmedia/internal/MMWebView;

.field private fullscreenContainer:Landroid/widget/FrameLayout;

.field private fullscreenContainerTopMargin:I

.field private landscape:Z

.field private lightboxAd:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

.field private lightboxBottomMargin:I

.field private lightboxRightMargin:I

.field private lightboxViewListener:Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

.field private midpointFired:Z

.field private minimizeButton:Landroid/widget/ImageView;

.field private minimizeFadeOutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field private originalX:F

.field private originalY:F

.field private volatile prepared:Z

.field private q1Fired:Z

.field private q3Fired:Z

.field private replayButton:Landroid/widget/ImageView;

.field private scaleFactor:F

.field private startFired:Z

.field private volatile state:I

.field private topMargin:I

.field private videoView:Lcom/millennialmedia/internal/video/MMVideoView;

.field private videoViewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/millennialmedia/internal/video/LightboxView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/video/LightboxView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;)V
    .locals 9

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->landscape:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeFadeOutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->startFired:Z

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->q1Fired:Z

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->midpointFired:Z

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->q3Fired:Z

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->completeFired:Z

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionLoadedFired:Z

    iput v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->prepared:Z

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->complete:Z

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->animating:Z

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->windowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDisplaySize()Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->defaultWidth:I

    sget v2, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->defaultHeight:I

    sget v2, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_bottom_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxBottomMargin:I

    sget v2, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_right_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxRightMargin:I

    sget v2, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_top_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->topMargin:I

    sget v2, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_fullscreen_companion_top_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainerTopMargin:I

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-virtual {p0, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object p3, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxViewListener:Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxAd:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    new-instance v2, Lcom/millennialmedia/internal/video/MMVideoView;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, v2

    move-object v4, p1

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/millennialmedia/internal/video/MMVideoView;-><init>(Landroid/content/Context;ZZLjava/util/Map;Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;)V

    iput-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    sget v3, Lcom/millennialmedia/R$id;->mmadsdk_light_box_video_view:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    iget-object v4, p2, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->video:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;

    iget-object v4, v4, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;->uri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/millennialmedia/internal/video/MMVideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    const v4, 0x106000c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/millennialmedia/R$drawable;->mmadsdk_lightbox_down:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeButton:Landroid/widget/ImageView;

    const-string v4, "mmLightboxVideo_minimizeButton"

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/millennialmedia/internal/video/LightboxView$1;

    invoke-direct {v4, p0}, Lcom/millennialmedia/internal/video/LightboxView$1;-><init>(Lcom/millennialmedia/internal/video/LightboxView;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_minimize_button_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_minimize_button_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_minimize_button_top_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_minimize_button_right_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    iget-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v6, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->replayButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->replayButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->replayButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/millennialmedia/R$drawable;->mmadsdk_lightbox_replay:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->replayButton:Landroid/widget/ImageView;

    const-string v1, "mmLightboxVideo_replayButton"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->replayButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/millennialmedia/internal/video/LightboxView$2;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/video/LightboxView$2;-><init>(Lcom/millennialmedia/internal/video/LightboxView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_replay_button_width:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_replay_button_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    iget-object v5, p0, Lcom/millennialmedia/internal/video/LightboxView;->replayButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    new-instance v5, Lcom/millennialmedia/internal/video/LightboxView$MMVideoViewViewabilityListener;

    invoke-direct {v5, p0}, Lcom/millennialmedia/internal/video/LightboxView$MMVideoViewViewabilityListener;-><init>(Lcom/millennialmedia/internal/video/LightboxView;)V

    invoke-direct {v0, v1, v5}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoViewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanion:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanion:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/millennialmedia/R$color;->mmadsdk_lightbox_curtain_background:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p2, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->fullscreen:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;->imageUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/millennialmedia/internal/video/LightboxView$3;

    invoke-direct {v0, p0, p2}, Lcom/millennialmedia/internal/video/LightboxView$3;-><init>(Lcom/millennialmedia/internal/video/LightboxView;Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanion:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/millennialmedia/internal/MMWebView;

    invoke-static {}, Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;->getDefault()Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/millennialmedia/internal/video/LightboxView;->createMMWebViewListener(Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;)Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    move-result-object p3

    invoke-direct {v0, p1, v1, p3}, Lcom/millennialmedia/internal/MMWebView;-><init>(Landroid/content/Context;Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionWebView:Lcom/millennialmedia/internal/MMWebView;

    iget-object p1, p2, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->fullscreen:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;

    iget-object p1, p1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;->webContent:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/MMWebView;->setContent(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionWebView:Lcom/millennialmedia/internal/MMWebView;

    const-string p2, "mmLightboxVideo_companionWebView"

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setTag(Ljava/lang/Object;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget p3, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainerTopMargin:I

    iput p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 p3, 0x3

    invoke-virtual {p1, p3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p3, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p3, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    invoke-static {p0, p3, p1}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-boolean p2, p0, Lcom/millennialmedia/internal/video/LightboxView;->landscape:Z

    if-nez p2, :cond_1

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_1
    const-string p2, "mmLightboxVideo_videoView"

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {p0, p2, p1}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/millennialmedia/internal/video/LightboxView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/millennialmedia/internal/video/LightboxView;->complete:Z

    return p0
.end method

.method public static synthetic access$002(Lcom/millennialmedia/internal/video/LightboxView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->complete:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxAd:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/millennialmedia/internal/video/LightboxView;Lcom/millennialmedia/internal/video/MMVideoView;)Lcom/millennialmedia/internal/video/MMVideoView;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    return-object p1
.end method

.method public static synthetic access$1100(Lcom/millennialmedia/internal/video/LightboxView;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/internal/video/LightboxView;->fireVideoTrackingEvents(Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/millennialmedia/internal/video/LightboxView;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->releaseVideo()V

    return-void
.end method

.method public static synthetic access$1302(Lcom/millennialmedia/internal/video/LightboxView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->animating:Z

    return p1
.end method

.method public static synthetic access$1400(Lcom/millennialmedia/internal/video/LightboxView;)I
    .locals 0

    iget p0, p0, Lcom/millennialmedia/internal/video/LightboxView;->defaultHeight:I

    return p0
.end method

.method public static synthetic access$1500(Lcom/millennialmedia/internal/video/LightboxView;)I
    .locals 0

    iget p0, p0, Lcom/millennialmedia/internal/video/LightboxView;->defaultWidth:I

    return p0
.end method

.method public static synthetic access$1600(Lcom/millennialmedia/internal/video/LightboxView;)I
    .locals 0

    iget p0, p0, Lcom/millennialmedia/internal/video/LightboxView;->topMargin:I

    return p0
.end method

.method public static synthetic access$1700(Lcom/millennialmedia/internal/video/LightboxView;)I
    .locals 0

    iget p0, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainerTopMargin:I

    return p0
.end method

.method public static synthetic access$1800(Lcom/millennialmedia/internal/video/LightboxView;)I
    .locals 0

    iget p0, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxRightMargin:I

    return p0
.end method

.method public static synthetic access$1900(Lcom/millennialmedia/internal/video/LightboxView;)I
    .locals 0

    iget p0, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxBottomMargin:I

    return p0
.end method

.method public static synthetic access$200(Lcom/millennialmedia/internal/video/LightboxView;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->animateFromExpandedToDefault()V

    return-void
.end method

.method public static synthetic access$2000(Lcom/millennialmedia/internal/video/LightboxView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic access$2100(Lcom/millennialmedia/internal/video/LightboxView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/LightboxView;->setHeight(I)V

    return-void
.end method

.method public static synthetic access$2200(Lcom/millennialmedia/internal/video/LightboxView;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->crossFadeCurtainWebView()V

    return-void
.end method

.method public static synthetic access$2302(Lcom/millennialmedia/internal/video/LightboxView;Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeFadeOutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/millennialmedia/internal/video/LightboxView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/video/LightboxView;->replayButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/millennialmedia/internal/video/LightboxView;)I
    .locals 0

    iget p0, p0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    return p0
.end method

.method public static synthetic access$500(Lcom/millennialmedia/internal/video/LightboxView;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/millennialmedia/internal/video/LightboxView;->startMinimizeFadeOut(JJ)V

    return-void
.end method

.method public static synthetic access$600(Lcom/millennialmedia/internal/video/LightboxView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanion:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/MMWebView;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionWebView:Lcom/millennialmedia/internal/MMWebView;

    return-object p0
.end method

.method public static synthetic access$702(Lcom/millennialmedia/internal/video/LightboxView;Lcom/millennialmedia/internal/MMWebView;)Lcom/millennialmedia/internal/MMWebView;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionWebView:Lcom/millennialmedia/internal/MMWebView;

    return-object p1
.end method

.method public static synthetic access$800(Lcom/millennialmedia/internal/video/LightboxView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxViewListener:Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

    return-object p0
.end method

.method private animateFromExpandedToDefault()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->animating:Z

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v1

    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v3, p0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeButton:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x106000d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionWebView:Lcom/millennialmedia/internal/MMWebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionWebView:Lcom/millennialmedia/internal/MMWebView;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanion:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanion:Landroid/widget/ImageView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-boolean v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->landscape:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDefaultPosition()Landroid/graphics/Point;

    move-result-object v2

    new-instance v3, Lcom/millennialmedia/internal/video/LightboxView$10;

    invoke-direct {v3, p0, v1, v2}, Lcom/millennialmedia/internal/video/LightboxView$10;-><init>(Lcom/millennialmedia/internal/video/LightboxView;Landroid/graphics/Point;Landroid/graphics/Point;)V

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    div-float/2addr v1, v2

    float-to-long v1, v1

    invoke-virtual {v3, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/millennialmedia/internal/video/LightboxView$11;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/internal/video/LightboxView$11;-><init>(Lcom/millennialmedia/internal/video/LightboxView;Z)V

    invoke-virtual {v3, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateToDefault(Landroid/graphics/Point;)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->animating:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDefaultPosition()Landroid/graphics/Point;

    move-result-object v0

    new-instance v1, Lcom/millennialmedia/internal/video/LightboxView$8;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/internal/video/LightboxView$8;-><init>(Lcom/millennialmedia/internal/video/LightboxView;Landroid/graphics/Point;)V

    new-instance v0, Lcom/millennialmedia/internal/video/LightboxView$9;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/LightboxView$9;-><init>(Lcom/millennialmedia/internal/video/LightboxView;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v0

    float-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateToExpand(Landroid/graphics/Point;)V
    .locals 5

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->animating:Z

    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    iput v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x106000d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-boolean v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionLoadedFired:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->landscape:Z

    if-nez v2, :cond_2

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionLoadedFired:Z

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxAd:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->fullscreen:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;->trackingEvents:Ljava/util/List;

    invoke-direct {p0, v0, v3}, Lcom/millennialmedia/internal/video/LightboxView;->fireVideoTrackingEvents(Ljava/util/List;I)V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, -0x1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->landscape:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->landscape:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_4
    new-instance v0, Lcom/millennialmedia/internal/video/LightboxView$12;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/video/LightboxView$12;-><init>(Lcom/millennialmedia/internal/video/LightboxView;Landroid/graphics/Point;)V

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    div-float/2addr p1, v2

    float-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance p1, Lcom/millennialmedia/internal/video/LightboxView$13;

    invoke-direct {p1, p0, v1}, Lcom/millennialmedia/internal/video/LightboxView$13;-><init>(Lcom/millennialmedia/internal/video/LightboxView;Z)V

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private createMMWebViewListener(Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;)Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/video/LightboxView$17;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/video/LightboxView$17;-><init>(Lcom/millennialmedia/internal/video/LightboxView;Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;)V

    return-object v0
.end method

.method private crossFadeCurtainWebView()V
    .locals 5

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanion:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionWebView:Lcom/millennialmedia/internal/MMWebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setAlpha(F)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionWebView:Lcom/millennialmedia/internal/MMWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionWebView:Lcom/millennialmedia/internal/MMWebView;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanion:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v4, Lcom/millennialmedia/internal/video/LightboxView$14;

    invoke-direct {v4, p0}, Lcom/millennialmedia/internal/video/LightboxView$14;-><init>(Lcom/millennialmedia/internal/video/LightboxView;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionWebView:Lcom/millennialmedia/internal/MMWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private fireVideoTrackingEvents(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/utils/TrackingEvent;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/utils/TrackingEvent;

    new-instance v2, Lcom/millennialmedia/internal/utils/VideoTrackingEvent;

    invoke-direct {v2, v1, p2}, Lcom/millennialmedia/internal/utils/VideoTrackingEvent;-><init>(Lcom/millennialmedia/internal/utils/TrackingEvent;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/TrackingEvent;->fireEvents(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private getDisplaySize()Landroid/graphics/Point;
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-object v0
.end method

.method private goToDefaultState()V
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->animating:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v1}, Lcom/millennialmedia/internal/video/MMVideoView;->mute()V

    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDefaultPosition()Landroid/graphics/Point;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->defaultHeight:I

    invoke-direct {p0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->setHeight(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->defaultWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainerTopMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->getDecorView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;)V

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->animating:Z

    return-void
.end method

.method private goToExpandedLandscapeState(Landroid/graphics/Point;)V
    .locals 4

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->animating:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Landroid/graphics/Point;->x:I

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->topMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    iget-object v3, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x0

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/LightboxView;->setHeight(I)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x106000c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->getDecorView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->unmute()V

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->crossFadeCurtainWebView()V

    return-void
.end method

.method private goToExpandedPortraitState(Landroid/graphics/Point;)V
    .locals 4

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->animating:Z

    const/4 v1, 0x4

    iput v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p1, Landroid/graphics/Point;->x:I

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->topMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/LightboxView;->setHeight(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v1, -0x1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-boolean p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionLoadedFired:Z

    if-nez p1, :cond_1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionLoadedFired:Z

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxAd:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    iget-object p1, p1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->fullscreen:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;

    iget-object p1, p1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;->trackingEvents:Ljava/util/List;

    invoke-direct {p0, p1, v2}, Lcom/millennialmedia/internal/video/LightboxView;->fireVideoTrackingEvents(Ljava/util/List;I)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x106000c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->getDecorView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->unmute()V

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->crossFadeCurtainWebView()V

    return-void
.end method

.method private releaseVideo()V
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/video/LightboxView$4;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/LightboxView$4;-><init>(Lcom/millennialmedia/internal/video/LightboxView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setHeight(I)V
    .locals 3

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->defaultHeight:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method private setScreenOn(Z)V
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/video/LightboxView$15;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/video/LightboxView$15;-><init>(Lcom/millennialmedia/internal/video/LightboxView;Z)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startMinimizeFadeOut(JJ)V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeFadeOutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeButton:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    new-instance v0, Lcom/millennialmedia/internal/video/LightboxView$16;

    invoke-direct {v0, p0, p3, p4}, Lcom/millennialmedia/internal/video/LightboxView$16;-><init>(Lcom/millennialmedia/internal/video/LightboxView;J)V

    invoke-static {v0, p1, p2}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object p1

    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeFadeOutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    return-void
.end method


# virtual methods
.method public animateToGone(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    new-instance v1, Lcom/millennialmedia/internal/video/LightboxView$6;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/video/LightboxView$6;-><init>(Lcom/millennialmedia/internal/video/LightboxView;)V

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v2

    float-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v0, Lcom/millennialmedia/internal/video/LightboxView$7;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/video/LightboxView$7;-><init>(Lcom/millennialmedia/internal/video/LightboxView;Z)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDefaultDimensions()Landroid/graphics/Point;
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->defaultWidth:I

    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->defaultHeight:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getDefaultPosition()Landroid/graphics/Point;
    .locals 3

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxRightMargin:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->defaultWidth:I

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxBottomMargin:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->defaultHeight:I

    sub-int/2addr v0, v2

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result v0

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->prepared:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->landscape:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoViewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->startWatching()V

    return-void
.end method

.method public onBufferingUpdate(Lcom/millennialmedia/internal/video/MMVideoView;I)V
    .locals 0

    return-void
.end method

.method public onComplete(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->complete:Z

    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->completeFired:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/video/LightboxView;->TAG:Ljava/lang/String;

    const-string v1, "LightboxView firing complete event"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-boolean p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->completeFired:Z

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxAd:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    iget-object p1, p1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->video:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;

    iget-object p1, p1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;->trackingEvents:Ljava/util/Map;

    sget-object v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->complete:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDuration()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/internal/video/LightboxView;->fireVideoTrackingEvents(Ljava/util/List;I)V

    :cond_1
    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeFadeOutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeFadeOutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    :cond_2
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/LightboxView;->setScreenOn(Z)V

    new-instance p1, Lcom/millennialmedia/internal/video/LightboxView$5;

    invoke-direct {p1, p0}, Lcom/millennialmedia/internal/video/LightboxView$5;-><init>(Lcom/millennialmedia/internal/video/LightboxView;)V

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    iget-boolean v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->landscape:Z

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v4, :cond_3

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->landscape:Z

    iget p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    if-eq p1, v3, :cond_2

    iget p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    if-ne p1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    if-ne p1, v4, :cond_1

    :goto_0
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    goto :goto_3

    :cond_1
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->goToDefaultState()V

    goto :goto_3

    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/LightboxView;->goToExpandedPortraitState(Landroid/graphics/Point;)V

    goto :goto_3

    :cond_3
    if-nez v1, :cond_6

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    iput-boolean v4, p0, Lcom/millennialmedia/internal/video/LightboxView;->landscape:Z

    iget p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    if-eq p1, v3, :cond_5

    iget p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    if-ne p1, v2, :cond_4

    goto :goto_2

    :cond_4
    iget p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    if-ne p1, v4, :cond_1

    goto :goto_0

    :cond_5
    :goto_2
    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/LightboxView;->goToExpandedLandscapeState(Landroid/graphics/Point;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoViewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->stopWatching()V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onError(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/LightboxView;->setScreenOn(Z)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxViewListener:Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

    invoke-interface {p1}, Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;->onFailed()V

    return-void
.end method

.method public onMuted(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0

    return-void
.end method

.method public onPause(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/LightboxView;->setScreenOn(Z)V

    return-void
.end method

.method public onPrepared(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->prepared:Z

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxViewListener:Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

    invoke-interface {p1}, Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;->onPrepared()V

    return-void
.end method

.method public declared-synchronized onProgress(Lcom/millennialmedia/internal/video/MMVideoView;I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->q1Fired:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-lt p2, p1, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/video/LightboxView;->TAG:Ljava/lang/String;

    const-string v2, "LightboxView firing q1 event"

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-boolean v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->q1Fired:Z

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxAd:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->video:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;->trackingEvents:Ljava/util/Map;

    sget-object v2, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->firstQuartile:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, p2}, Lcom/millennialmedia/internal/video/LightboxView;->fireVideoTrackingEvents(Ljava/util/List;I)V

    :cond_1
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->midpointFired:Z

    if-nez v0, :cond_3

    mul-int/lit8 v0, p1, 0x2

    if-lt p2, v0, :cond_3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/millennialmedia/internal/video/LightboxView;->TAG:Ljava/lang/String;

    const-string v2, "LightboxView firing midpoint event"

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iput-boolean v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->midpointFired:Z

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxAd:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->video:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;->trackingEvents:Ljava/util/Map;

    sget-object v2, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->midpoint:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, p2}, Lcom/millennialmedia/internal/video/LightboxView;->fireVideoTrackingEvents(Ljava/util/List;I)V

    :cond_3
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->q3Fired:Z

    if-nez v0, :cond_5

    mul-int/lit8 p1, p1, 0x3

    if-lt p2, p1, :cond_5

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/millennialmedia/internal/video/LightboxView;->TAG:Ljava/lang/String;

    const-string v0, "LightboxView firing q3 event"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iput-boolean v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->q3Fired:Z

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxAd:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    iget-object p1, p1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->video:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;

    iget-object p1, p1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;->trackingEvents:Ljava/util/Map;

    sget-object v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->thirdQuartile:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/internal/video/LightboxView;->fireVideoTrackingEvents(Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onReadyToStart(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxViewListener:Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

    invoke-interface {p1}, Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;->onReadyToStart()V

    return-void
.end method

.method public onSeek(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0

    return-void
.end method

.method public onStart(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 2

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/LightboxView;->setScreenOn(Z)V

    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->startFired:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/video/LightboxView;->TAG:Ljava/lang/String;

    const-string v1, "LightboxView firing start event"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-boolean p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->startFired:Z

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxAd:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    iget-object p1, p1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->video:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;

    iget-object p1, p1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;->trackingEvents:Ljava/util/Map;

    sget-object v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->start:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/internal/video/LightboxView;->fireVideoTrackingEvents(Ljava/util/List;I)V

    :cond_1
    return-void
.end method

.method public onStop(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/LightboxView;->setScreenOn(Z)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 17
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/millennialmedia/internal/video/LightboxView;->animating:Z

    const/4 v2, 0x1

    if-nez v1, :cond_21

    iget-object v1, v0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    if-nez v1, :cond_0

    goto/16 :goto_e

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, v0, Lcom/millennialmedia/internal/video/LightboxView;->downX:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Lcom/millennialmedia/internal/video/LightboxView;->downY:F

    return v2

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v1, v5, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iget v9, v0, Lcom/millennialmedia/internal/video/LightboxView;->downX:F

    sub-float/2addr v9, v7

    float-to-double v9, v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    iget v13, v0, Lcom/millennialmedia/internal/video/LightboxView;->downY:F

    sub-float/2addr v13, v8

    float-to-double v13, v13

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    add-double/2addr v9, v11

    double-to-int v9, v9

    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDefaultPosition()Landroid/graphics/Point;

    move-result-object v11

    const-wide/high16 v12, 0x4049000000000000L    # 50.0

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    cmpl-double v16, v9, v12

    if-lez v16, :cond_8

    iget v9, v0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    if-eqz v9, :cond_2

    iget v9, v0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    if-ne v9, v4, :cond_8

    :cond_2
    iget v9, v0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    if-nez v9, :cond_3

    iget v9, v11, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iput v9, v0, Lcom/millennialmedia/internal/video/LightboxView;->originalX:F

    iget v9, v11, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    iput v9, v0, Lcom/millennialmedia/internal/video/LightboxView;->originalY:F

    goto :goto_0

    :cond_3
    iput v15, v0, Lcom/millennialmedia/internal/video/LightboxView;->originalX:F

    iput v15, v0, Lcom/millennialmedia/internal/video/LightboxView;->originalY:F

    :goto_0
    iget v9, v0, Lcom/millennialmedia/internal/video/LightboxView;->downX:F

    sub-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, v0, Lcom/millennialmedia/internal/video/LightboxView;->downY:F

    sub-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4

    iget v9, v0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    if-eq v9, v4, :cond_4

    iput v2, v0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    goto/16 :goto_2

    :cond_4
    iget v9, v0, Lcom/millennialmedia/internal/video/LightboxView;->downY:F

    const/4 v10, -0x2

    const/4 v12, -0x1

    const v13, 0x3f666666    # 0.9f

    cmpg-float v9, v8, v9

    if-gez v9, :cond_6

    iget v9, v0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    if-eq v9, v4, :cond_6

    iput v5, v0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    iget-object v4, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanion:Landroid/widget/ImageView;

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v4, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanion:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionWebView:Lcom/millennialmedia/internal/MMWebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    iget-object v9, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionWebView:Lcom/millennialmedia/internal/MMWebView;

    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_5
    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v9

    sub-int/2addr v4, v9

    int-to-float v4, v4

    iget v9, v0, Lcom/millennialmedia/internal/video/LightboxView;->downY:F

    mul-float v9, v9, v13

    div-float/2addr v4, v9

    iput v4, v0, Lcom/millennialmedia/internal/video/LightboxView;->scaleFactor:F

    iget-boolean v4, v0, Lcom/millennialmedia/internal/video/LightboxView;->landscape:Z

    if-nez v4, :cond_7

    goto :goto_1

    :cond_6
    iget v4, v0, Lcom/millennialmedia/internal/video/LightboxView;->downY:F

    cmpl-float v4, v8, v4

    if-lez v4, :cond_8

    iput v3, v0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    iget-object v4, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanion:Landroid/widget/ImageView;

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v4, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanion:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    iget-object v9, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionWebView:Lcom/millennialmedia/internal/MMWebView;

    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v9, 0x106000d

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    iget v9, v0, Lcom/millennialmedia/internal/video/LightboxView;->defaultHeight:I

    sub-int/2addr v4, v9

    iget v9, v1, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    iget v14, v0, Lcom/millennialmedia/internal/video/LightboxView;->downY:F

    sub-float/2addr v9, v14

    mul-float v9, v9, v13

    int-to-float v4, v4

    div-float/2addr v4, v9

    iput v4, v0, Lcom/millennialmedia/internal/video/LightboxView;->scaleFactor:F

    iget-boolean v4, v0, Lcom/millennialmedia/internal/video/LightboxView;->landscape:Z

    if-nez v4, :cond_7

    :goto_1
    iget-object v4, v0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v10, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_7
    invoke-virtual {v0, v15}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v12, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_8
    :goto_2
    iget v4, v0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    if-eqz v4, :cond_16

    iget v4, v0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    if-ne v4, v2, :cond_a

    iget v3, v0, Lcom/millennialmedia/internal/video/LightboxView;->downX:F

    sub-float/2addr v3, v7

    iget v4, v0, Lcom/millennialmedia/internal/video/LightboxView;->originalX:F

    sub-float/2addr v4, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v4

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v5, v1

    cmpl-float v3, v3, v5

    if-lez v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v4, v1

    :cond_9
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    goto/16 :goto_a

    :cond_a
    iget v4, v0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    const/16 v7, 0x8

    if-ne v4, v5, :cond_10

    iget v3, v0, Lcom/millennialmedia/internal/video/LightboxView;->downY:F

    sub-float/2addr v3, v8

    iget v4, v0, Lcom/millennialmedia/internal/video/LightboxView;->scaleFactor:F

    mul-float v3, v3, v4

    iget v4, v0, Lcom/millennialmedia/internal/video/LightboxView;->originalY:F

    sub-float/2addr v4, v3

    iget v5, v0, Lcom/millennialmedia/internal/video/LightboxView;->defaultHeight:I

    int-to-float v8, v5

    add-float/2addr v8, v3

    iget v3, v0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxBottomMargin:I

    int-to-float v3, v3

    add-float/2addr v8, v3

    float-to-int v3, v8

    sub-int v8, v3, v5

    int-to-float v8, v8

    iget v9, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v5

    int-to-float v5, v9

    div-float/2addr v8, v5

    iget v5, v0, Lcom/millennialmedia/internal/video/LightboxView;->defaultWidth:I

    iget v9, v1, Landroid/graphics/Point;->x:I

    sub-int v10, v9, v5

    int-to-float v10, v10

    mul-float v10, v10, v8

    float-to-int v10, v10

    add-int/2addr v5, v10

    sub-int/2addr v9, v5

    iget v10, v0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxRightMargin:I

    int-to-float v12, v10

    mul-float v12, v12, v8

    float-to-int v12, v12

    sub-int/2addr v10, v12

    sub-int/2addr v9, v10

    iget v10, v0, Lcom/millennialmedia/internal/video/LightboxView;->topMargin:I

    int-to-float v12, v10

    mul-float v12, v12, v8

    float-to-int v12, v12

    invoke-static {v12, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget v12, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainerTopMargin:I

    int-to-float v13, v12

    mul-float v8, v8, v13

    float-to-int v8, v8

    sub-int/2addr v12, v8

    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v12, v0, Lcom/millennialmedia/internal/video/LightboxView;->defaultWidth:I

    if-le v5, v12, :cond_e

    iget v13, v0, Lcom/millennialmedia/internal/video/LightboxView;->defaultHeight:I

    if-le v3, v13, :cond_e

    iget v13, v11, Landroid/graphics/Point;->x:I

    if-ge v9, v13, :cond_e

    iget v13, v11, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    cmpl-float v13, v4, v13

    if-ltz v13, :cond_b

    goto :goto_4

    :cond_b
    iget v7, v1, Landroid/graphics/Point;->x:I

    if-ge v5, v7, :cond_d

    iget v11, v1, Landroid/graphics/Point;->y:I

    if-ge v3, v11, :cond_d

    if-lez v9, :cond_d

    cmpg-float v11, v4, v15

    if-gtz v11, :cond_c

    goto :goto_3

    :cond_c
    move v15, v4

    goto :goto_5

    :cond_d
    :goto_3
    iget v3, v1, Landroid/graphics/Point;->y:I

    iget v10, v0, Lcom/millennialmedia/internal/video/LightboxView;->topMargin:I

    move v5, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_5

    :cond_e
    :goto_4
    iget v8, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainerTopMargin:I

    iget v3, v0, Lcom/millennialmedia/internal/video/LightboxView;->defaultHeight:I

    iget v1, v11, Landroid/graphics/Point;->y:I

    int-to-float v15, v1

    iget v9, v11, Landroid/graphics/Point;->x:I

    iget-object v1, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move v5, v12

    const/4 v10, 0x0

    :goto_5
    iget-object v1, v0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v10, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v4, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iput v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v4, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_f

    iget-boolean v4, v0, Lcom/millennialmedia/internal/video/LightboxView;->landscape:Z

    if-nez v4, :cond_f

    iget-object v4, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_f
    iget-object v4, v0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    int-to-float v6, v9

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    invoke-virtual {v0, v15}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    :goto_6
    invoke-direct {v0, v3}, Lcom/millennialmedia/internal/video/LightboxView;->setHeight(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->invalidate()V

    goto/16 :goto_a

    :cond_10
    iget v4, v0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    if-ne v4, v3, :cond_16

    iget v3, v0, Lcom/millennialmedia/internal/video/LightboxView;->downY:F

    sub-float/2addr v3, v8

    iget v4, v0, Lcom/millennialmedia/internal/video/LightboxView;->scaleFactor:F

    mul-float v3, v3, v4

    iget v4, v0, Lcom/millennialmedia/internal/video/LightboxView;->originalY:F

    sub-float/2addr v4, v3

    iget v5, v1, Landroid/graphics/Point;->y:I

    int-to-float v8, v5

    add-float/2addr v8, v3

    float-to-int v3, v8

    iget v8, v0, Lcom/millennialmedia/internal/video/LightboxView;->defaultHeight:I

    sub-int v9, v3, v8

    int-to-float v9, v9

    sub-int/2addr v5, v8

    int-to-float v5, v5

    div-float/2addr v9, v5

    iget v5, v0, Lcom/millennialmedia/internal/video/LightboxView;->defaultWidth:I

    iget v8, v1, Landroid/graphics/Point;->x:I

    sub-int v10, v8, v5

    int-to-float v10, v10

    mul-float v10, v10, v9

    float-to-int v10, v10

    add-int/2addr v5, v10

    sub-int/2addr v8, v5

    iget v10, v0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxRightMargin:I

    int-to-float v12, v10

    mul-float v12, v12, v9

    float-to-int v12, v12

    sub-int/2addr v10, v12

    sub-int/2addr v8, v10

    iget v10, v0, Lcom/millennialmedia/internal/video/LightboxView;->topMargin:I

    int-to-float v10, v10

    mul-float v10, v10, v9

    float-to-int v10, v10

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v14, v12, v9

    iget v9, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainerTopMargin:I

    int-to-float v9, v9

    mul-float v14, v14, v9

    float-to-int v9, v14

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v12, v0, Lcom/millennialmedia/internal/video/LightboxView;->defaultWidth:I

    if-le v5, v12, :cond_14

    iget v13, v0, Lcom/millennialmedia/internal/video/LightboxView;->defaultHeight:I

    if-le v3, v13, :cond_14

    iget v13, v11, Landroid/graphics/Point;->x:I

    if-ge v8, v13, :cond_14

    iget v13, v11, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    cmpl-float v13, v4, v13

    if-ltz v13, :cond_11

    goto :goto_8

    :cond_11
    iget v11, v1, Landroid/graphics/Point;->x:I

    if-ge v5, v11, :cond_13

    iget v12, v1, Landroid/graphics/Point;->y:I

    if-ge v3, v12, :cond_13

    if-lez v8, :cond_13

    cmpg-float v12, v4, v15

    if-gtz v12, :cond_12

    goto :goto_7

    :cond_12
    move v15, v4

    move v4, v8

    move v1, v9

    move v6, v10

    goto :goto_9

    :cond_13
    :goto_7
    iget v3, v1, Landroid/graphics/Point;->y:I

    iget v1, v0, Lcom/millennialmedia/internal/video/LightboxView;->topMargin:I

    move v6, v1

    move v5, v11

    const/4 v1, 0x0

    const/4 v4, 0x0

    goto :goto_9

    :cond_14
    :goto_8
    iget v1, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainerTopMargin:I

    iget v3, v0, Lcom/millennialmedia/internal/video/LightboxView;->defaultHeight:I

    iget v4, v11, Landroid/graphics/Point;->y:I

    int-to-float v15, v4

    iget v4, v11, Landroid/graphics/Point;->x:I

    iget-object v5, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move v5, v12

    :goto_9
    iget-object v8, v0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeButton:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_15

    iget-object v8, v0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeButton:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_15
    iget-object v7, v0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    iput v6, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v6, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, v0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    invoke-virtual {v0, v15}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    iput v5, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto/16 :goto_6

    :cond_16
    :goto_a
    return v2

    :cond_17
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v1, v2, :cond_20

    invoke-direct/range {p0 .. p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v1

    iget v7, v0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    if-ne v7, v5, :cond_19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    iget v5, v1, Landroid/graphics/Point;->y:I

    div-int/2addr v5, v4

    if-lt v3, v5, :cond_18

    invoke-direct {v0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->animateToExpand(Landroid/graphics/Point;)V

    goto :goto_b

    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/millennialmedia/internal/video/LightboxView;->animateFromExpandedToDefault()V

    :goto_b
    return v2

    :cond_19
    iget v7, v0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    if-ne v7, v3, :cond_1b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-double v3, v3

    iget v5, v1, Landroid/graphics/Point;->y:I

    int-to-double v5, v5

    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    mul-double v5, v5, v7

    cmpg-double v7, v3, v5

    if-gtz v7, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcom/millennialmedia/internal/video/LightboxView;->animateFromExpandedToDefault()V

    goto :goto_c

    :cond_1a
    invoke-direct {v0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->animateToExpand(Landroid/graphics/Point;)V

    :goto_c
    return v2

    :cond_1b
    iget v3, v0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    if-ne v3, v2, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getTranslationX()F

    move-result v3

    iget v4, v1, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v6

    sub-int/2addr v4, v6

    div-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1c

    invoke-virtual {v0, v2}, Lcom/millennialmedia/internal/video/LightboxView;->animateToGone(Z)V

    goto :goto_d

    :cond_1c
    invoke-direct {v0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->animateToDefault(Landroid/graphics/Point;)V

    :goto_d
    return v2

    :cond_1d
    iget v3, v0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    const-wide/16 v7, 0xc8

    if-nez v3, :cond_1f

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v9

    sub-long/2addr v3, v9

    cmp-long v5, v3, v7

    if-gtz v5, :cond_20

    move-object/from16 v3, p1

    if-ne v3, v0, :cond_20

    iget-boolean v3, v0, Lcom/millennialmedia/internal/video/LightboxView;->landscape:Z

    if-nez v3, :cond_1e

    iget-object v3, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanion:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1e
    invoke-direct {v0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->animateToExpand(Landroid/graphics/Point;)V

    return v2

    :cond_1f
    iget v1, v0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    if-ne v1, v4, :cond_20

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v9

    sub-long/2addr v3, v9

    cmp-long v1, v3, v7

    if-gtz v1, :cond_20

    const-wide/16 v3, 0x9c4

    const-wide/16 v5, 0x1f4

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/millennialmedia/internal/video/LightboxView;->startMinimizeFadeOut(JJ)V

    return v2

    :cond_20
    return v6

    :cond_21
    :goto_e
    return v2
.end method

.method public onUnmuted(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->releaseVideo()V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->start()V

    :cond_0
    return-void
.end method
