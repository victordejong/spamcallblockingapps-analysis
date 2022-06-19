.class public Lcom/millennialmedia/internal/video/VASTVideoView;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VideoViewActions;
.implements Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/video/VASTVideoView$VASTEndCardViewabilityListener;,
        Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewabilityListener;,
        Lcom/millennialmedia/internal/video/VASTVideoView$VASTImpressionViewabilityListener;,
        Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;,
        Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;,
        Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;,
        Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;,
        Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButtonState;
    }
.end annotation


# static fields
.field private static final ADCHOICES_DEFAULT_DURATION:I = 0x36ee80

.field private static final ADCHOICES_DEFAULT_OFFSET:I = 0x0

.field private static final CACHE_EXPIRATION_TIME:I = 0x2932e00

.field private static final COMPANION_AD_MIN_HEIGHT:I = 0xfa

.field private static final COMPANION_AD_MIN_WIDTH:I = 0x12c

.field private static final COMPLETE:I = 0x2

.field private static final DEFAULT_MAX_BITRATE:I = 0x320

.field private static final IDLE:I = 0x0

.field private static final IMAGE_BMP:Ljava/lang/String; = "image/bmp"

.field private static final IMAGE_GIF:Ljava/lang/String; = "image/gif"

.field private static final IMAGE_JPEG:Ljava/lang/String; = "image/jpeg"

.field private static final IMAGE_PNG:Ljava/lang/String; = "image/png"

.field private static final LTE_MAX_BITRATE:I = 0x320

.field private static final MIN_BITRATE:I = 0x190

.field private static final PLAYBACK:I = 0x1

.field private static final PROGRESSIVE:Ljava/lang/String; = "progressive"

.field public static final PROGRESS_UPDATES_DISABLED:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field private static final TIME_INVALID:I = -0x1

.field private static final VIDEO_MP4:Ljava/lang/String; = "video/mp4"

.field private static final WIFI_MAX_BITRATE:I = 0x4b0

.field private static final supportImageTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adChoicesButton:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;

.field private backgroundFrame:Landroid/widget/FrameLayout;

.field private backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

.field private buttonContainer:Landroid/widget/LinearLayout;

.field private volatile canSkip:Z

.field private closeButton:Landroid/widget/ImageView;

.field private companionAdWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

.field private controlButtonContainer:Landroid/widget/RelativeLayout;

.field private countdown:Landroid/widget/TextView;

.field private volatile currentState:I

.field private endCardContainer:Landroid/widget/FrameLayout;

.field private endCardViewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

.field private firedTrackingEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private volatile iconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/internal/video/VASTParser$Icon;",
            ">;"
        }
    .end annotation
.end field

.field private impressionViewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

.field private inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

.field private incentVideoCompleteEarned:Z

.field private volatile initialized:Z

.field private lastKnownOrientation:I

.field private lastQuartileFired:I

.field private mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

.field private overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

.field private previousTimeLeftToSkip:I

.field private replayButton:Landroid/widget/ImageView;

.field private selectedCompanionAd:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

.field private selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

.field private selectedMediaFile:Lcom/millennialmedia/internal/video/VASTParser$MediaFile;

.field private shouldHandleTrackingEvents:Z

.field private skipButton:Landroid/widget/ImageView;

.field private skipOffsetMilliseconds:I

.field private vastVideoViewListener:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;

.field private videoFile:Ljava/io/File;

.field private volatile videoState:Ljava/lang/String;

.field private videoViewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

.field private wrapperAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->supportImageTypes:Ljava/util/List;

    const-string v1, "image/bmp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "image/gif"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "image/jpeg"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "image/png"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/millennialmedia/internal/video/VASTParser$InLineAd;Ljava/util/List;Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/millennialmedia/internal/video/VASTParser$InLineAd;",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;",
            ">;",
            "Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->canSkip:Z

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->initialized:Z

    iput v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->currentState:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->videoState:Ljava/lang/String;

    iput-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    iput-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->companionAdWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    iput-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    iput v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->lastQuartileFired:I

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->incentVideoCompleteEarned:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->shouldHandleTrackingEvents:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->previousTimeLeftToSkip:I

    iput v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->lastKnownOrientation:I

    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iput-object p3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->wrapperAds:Ljava/util/List;

    const/high16 p2, -0x1000000

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    sget p2, Lcom/millennialmedia/R$id;->mmadsdk_vast_video_view:I

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setId(I)V

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->isPortrait()Z

    move-result p2

    if-eqz p2, :cond_0

    iput v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->lastKnownOrientation:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    iput p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->lastKnownOrientation:I

    :goto_0
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    invoke-static {p2}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->firedTrackingEvents:Ljava/util/Set;

    iput-object p4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->vastVideoViewListener:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;

    new-instance p2, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    new-instance p3, Lcom/millennialmedia/internal/video/VASTVideoView$VASTImpressionViewabilityListener;

    invoke-direct {p3, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTImpressionViewabilityListener;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-direct {p2, p0, p3}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;)V

    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->impressionViewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p4, Landroid/widget/FrameLayout;

    invoke-direct {p4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundFrame:Landroid/widget/FrameLayout;

    const-string v4, "mmVastVideoView_backgroundFrame"

    invoke-virtual {p4, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    iget-object p4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundFrame:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {p4, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p4, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v5, p4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->isMoatEnabled()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getMoatIdentifiers()Ljava/util/Map;

    move-result-object p4

    move-object v9, p4

    goto :goto_1

    :cond_1
    move-object v9, v1

    :goto_1
    new-instance p4, Lcom/millennialmedia/internal/video/MMVideoView;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v5, p4

    move-object v6, p1

    move-object v10, p0

    invoke-direct/range {v5 .. v10}, Lcom/millennialmedia/internal/video/MMVideoView;-><init>(Landroid/content/Context;ZZLjava/util/Map;Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;)V

    iput-object p4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    const-string v5, "mmVastVideoView_videoView"

    invoke-virtual {p4, v5}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    new-instance p4, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    iget-object v5, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    new-instance v6, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewabilityListener;

    invoke-direct {v6, p0, v5}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewabilityListener;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-direct {p4, v5, v6}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;)V

    iput-object p4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->videoViewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->isPortrait()Z

    move-result p4

    const/4 v5, -0x2

    if-eqz p4, :cond_2

    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p3, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 p4, 0x3

    sget v6, Lcom/millennialmedia/R$id;->mmadsdk_vast_video_control_buttons:I

    invoke-virtual {p3, p4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_2
    iget-object p4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {p0, p4, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p3, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;

    invoke-direct {p3, p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->adChoicesButton:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;

    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->endCardContainer:Landroid/widget/FrameLayout;

    const-string p4, "mmVastVideoView_endCardContainer"

    invoke-virtual {p3, p4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->endCardContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance p3, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    iget-object p4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->endCardContainer:Landroid/widget/FrameLayout;

    new-instance v6, Lcom/millennialmedia/internal/video/VASTVideoView$VASTEndCardViewabilityListener;

    invoke-direct {v6, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTEndCardViewabilityListener;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-direct {p3, p4, v6}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;)V

    iput-object p3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->endCardViewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    iget-object p3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->impressionViewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {p3}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->startWatching()V

    iget-object p3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->videoViewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {p3}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->startWatching()V

    iget-object p3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->endCardViewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {p3}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->startWatching()V

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object p4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->endCardContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p4, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/RelativeLayout;

    invoke-direct {p2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->controlButtonContainer:Landroid/widget/RelativeLayout;

    sget p3, Lcom/millennialmedia/R$id;->mmadsdk_vast_video_control_buttons:I

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/millennialmedia/R$drawable;->mmadsdk_vast_close:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->closeButton:Landroid/widget/ImageView;

    new-instance p3, Lcom/millennialmedia/internal/video/VASTVideoView$1;

    invoke-direct {p3, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$1;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->closeButton:Landroid/widget/ImageView;

    const-string p3, "mmVastVideoView_closeButton"

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/millennialmedia/R$dimen;->mmadsdk_control_button_width:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/millennialmedia/R$dimen;->mmadsdk_control_button_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {p2, p3, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0xa

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0xb

    invoke-virtual {p2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v8, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->controlButtonContainer:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v8, v9, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->skipButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/millennialmedia/R$drawable;->mmadsdk_vast_skip:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->skipButton:Landroid/widget/ImageView;

    const-string v8, "mmVastVideoView_skipButton"

    invoke-virtual {p2, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->skipButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->countdown:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/millennialmedia/R$drawable;->mmadsdk_vast_opacity:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->countdown:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x106000b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {p2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->countdown:Landroid/widget/TextView;

    invoke-virtual {p2, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->countdown:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->countdown:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->countdown:Landroid/widget/TextView;

    const-string v1, "mmVastVideoView_countdown"

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-direct {p2, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->controlButtonContainer:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->skipButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v6, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->controlButtonContainer:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->countdown:Landroid/widget/TextView;

    invoke-virtual {v1, v6, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->replayButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/millennialmedia/R$drawable;->mmadsdk_vast_replay:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->replayButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->replayButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/millennialmedia/internal/video/VASTVideoView$2;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$2;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->replayButton:Landroid/widget/ImageView;

    const-string v1, "mmVastVideoView_replayButton"

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p2, p4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p4, 0x9

    invoke-virtual {p2, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->controlButtonContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->replayButton:Landroid/widget/ImageView;

    invoke-virtual {p4, v1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->controlButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p3, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0xc

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance p3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p3, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->loadInlineAd(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->hasTrackingEvents(Lcom/millennialmedia/internal/video/VASTParser$Creative;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->wrapperAds:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->haveTrackingEvents(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->shouldHandleTrackingEvents:Z

    iput v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->currentState:I

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->updateComponentVisibility()V

    return-void
.end method

.method public static synthetic access$000(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/lang/String;I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/internal/video/VASTVideoView;->vastTimeToMilliseconds(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->notifyListenerOnClick()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->skip()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->replay()V

    return-void
.end method

.method public static synthetic access$1200(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireImpressions()V

    return-void
.end method

.method public static synthetic access$1300(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->getWrapperLinearTrackingEvents(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireVideoTrackingEvents(Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTParser$Creative;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCompanionAd:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->vastVideoViewListener:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;

    return-object p0
.end method

.method public static synthetic access$1802(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->videoFile:Ljava/io/File;

    return-object p1
.end method

.method public static synthetic access$1900(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->registerVideoClicks()V

    return-void
.end method

.method public static synthetic access$200(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->notifyListenerOnAdLeftApplication()V

    return-void
.end method

.method public static synthetic access$2000(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    return-object p0
.end method

.method public static synthetic access$2100(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/MMWebView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->onWebViewReady(Lcom/millennialmedia/internal/MMWebView;)V

    return-void
.end method

.method public static synthetic access$2200(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireCompanionAdClickTracking()V

    return-void
.end method

.method public static synthetic access$2300(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/VASTParser$StaticResource;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->getBackgroundColor(Lcom/millennialmedia/internal/video/VASTParser$StaticResource;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$2400(Lcom/millennialmedia/internal/video/VASTVideoView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->endCardContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic access$2500(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->companionAdWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    return-object p0
.end method

.method public static synthetic access$2600(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    return-object p0
.end method

.method public static synthetic access$2700(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireClickTracking(Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;Z)V

    return-void
.end method

.method public static synthetic access$2800(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireWrappersClickTracking(Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic access$2900(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->doComplete()V

    return-void
.end method

.method public static synthetic access$300(Lcom/millennialmedia/internal/video/VASTVideoView;)I
    .locals 0

    iget p0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->currentState:I

    return p0
.end method

.method public static synthetic access$3000(Lcom/millennialmedia/internal/video/VASTVideoView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->countdown:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$600(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/MMVideoView;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->close()V

    return-void
.end method

.method public static synthetic access$802(Lcom/millennialmedia/internal/video/VASTVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->canSkip:Z

    return p1
.end method

.method public static synthetic access$900(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->enableSkipControls()V

    return-void
.end method

.method private static addTrackingEventUrls(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/utils/TrackingEvent;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/millennialmedia/internal/utils/TrackingEvent;

    invoke-direct {v1, p2, v0}, Lcom/millennialmedia/internal/utils/TrackingEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private close()V
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->closeLinear:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getWrapperLinearTrackingEvents(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireVideoTrackingEvents(Ljava/util/List;I)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireVideoTrackingEvents(Ljava/util/List;I)V

    :cond_0
    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$3;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private createCompanionWebView(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/millennialmedia/internal/video/VASTVideoView$10;

    invoke-direct {v2, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$10;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;Landroid/content/Context;ZLcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->companionAdWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    const-string v1, "mmVastVideoView_companionWebView"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->companionAdWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-direct {p0, v0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->loadContentIntoWebView(Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;Ljava/lang/String;)V

    return-void
.end method

.method private doComplete()V
    .locals 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->currentState:I

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->countdown:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->adChoicesButton:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->access$3100(Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCompanionAd:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->endCardContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->replayButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->skipButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->updateComponentVisibility()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->close()V

    :goto_1
    return-void
.end method

.method private doCreativesHaveTrackingEvents(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/video/VASTParser$Creative;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private enableSkipControls()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->countdown:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->skipButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->skipButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/millennialmedia/internal/video/VASTVideoView$19;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$19;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private fireClickTracking(Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;Z)V
    .locals 3

    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;->clickTrackingUrls:Ljava/util/List;

    const-string v2, "video click tracker"

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->addTrackingEventUrls(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object p1, p1, Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;->customClickUrls:Ljava/util/List;

    const-string p2, "custom click"

    invoke-static {v0, p1, p2}, Lcom/millennialmedia/internal/video/VASTVideoView;->addTrackingEventUrls(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/TrackingEvent;->fireEvents(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private fireCompanionAdClickTracking()V
    .locals 4

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCompanionAd:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getWrapperCompanionAdTracking()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCompanionAd:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->companionClickTracking:Ljava/util/List;

    const-string v3, "tracking"

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/internal/video/VASTVideoView;->addTrackingEventUrls(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->companionClickTracking:Ljava/util/List;

    const-string v3, "wrapper tracking"

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/internal/video/VASTVideoView;->addTrackingEventUrls(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/millennialmedia/internal/utils/TrackingEvent;->fireEvents(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private fireImpressions()V
    .locals 4

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Ad;->impressions:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->impressionViewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->stopWatching()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$Ad;->impressions:Ljava/util/List;

    const-string v2, "impression"

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->addTrackingEventUrls(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->wrapperAds:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$Ad;->impressions:Ljava/util/List;

    const-string v3, "wrapper immpression"

    invoke-static {v0, v2, v3}, Lcom/millennialmedia/internal/video/VASTVideoView;->addTrackingEventUrls(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/TrackingEvent;->fireEvents(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private fireVideoTrackingEvent(Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireVideoTrackingEvents(Ljava/util/List;I)V

    return-void
.end method

.method private fireVideoTrackingEvents(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->firedTrackingEvents:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->firedTrackingEvents:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/millennialmedia/internal/utils/VideoTrackingEvent;

    iget-object v3, v1, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->event:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->url:Ljava/lang/String;

    invoke-direct {v2, v3, v1, p2}, Lcom/millennialmedia/internal/utils/VideoTrackingEvent;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/TrackingEvent;->fireEvents(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private fireWrappersClickTracking(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

    iget-object v2, v1, Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;->clickTrackingUrls:Ljava/util/List;

    const-string v3, "wrapper video click tracker"

    invoke-static {v0, v2, v3}, Lcom/millennialmedia/internal/video/VASTVideoView;->addTrackingEventUrls(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;->customClickUrls:Ljava/util/List;

    const-string v2, "wrapper custom click tracker"

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->addTrackingEventUrls(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/TrackingEvent;->fireEvents(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private getBackgroundColor(Lcom/millennialmedia/internal/video/VASTParser$StaticResource;)I
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->backgroundColor:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hex color format specified = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->backgroundColor:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/high16 p1, -0x1000000

    :goto_0
    return p1
.end method

.method private getIconsClosestToCreative()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/internal/video/VASTParser$Icon;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->wrapperAds:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$Ad;->creatives:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v3, v3, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->icons:Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/millennialmedia/internal/video/VASTParser$Icon;

    invoke-static {v4}, Lcom/millennialmedia/internal/video/VASTVideoView;->isValidAdChoicesIcon(Lcom/millennialmedia/internal/video/VASTParser$Icon;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/millennialmedia/internal/video/VASTParser$Icon;->program:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->icons:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/internal/video/VASTParser$Icon;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->isValidAdChoicesIcon(Lcom/millennialmedia/internal/video/VASTParser$Icon;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v2, Lcom/millennialmedia/internal/video/VASTParser$Icon;->program:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method private getWrapperCompanionAdTracking()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->wrapperAds:Ljava/util/List;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$Ad;->creatives:Ljava/util/List;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v3, v3, Lcom/millennialmedia/internal/video/VASTParser$Creative;->companionAds:Ljava/util/List;

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    iget-object v5, v4, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->htmlResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    if-nez v5, :cond_5

    iget-object v5, v4, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->iframeResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    if-nez v5, :cond_5

    iget-object v5, v4, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    if-nez v5, :cond_5

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    return-object v0
.end method

.method private getWrapperLinearTrackingEvents(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;",
            ")",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->wrapperAds:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$Ad;->creatives:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v3, v3, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getWrapperVideoClicks()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->wrapperAds:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$Ad;->creatives:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v3, v3, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->videoClicks:Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

    if-eqz v3, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private hasTrackingEvents(Lcom/millennialmedia/internal/video/VASTParser$Creative;)Z
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->doCreativesHaveTrackingEvents(Ljava/util/List;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private hasVideoClicks(Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;->clickThrough:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;->customClickUrls:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private haveTrackingEvents(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Ad;->creatives:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->doCreativesHaveTrackingEvents(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return v0
.end method

.method private haveVideoClicks(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->hasVideoClicks(Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isPortrait()Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isValidAdChoicesIcon(Lcom/millennialmedia/internal/video/VASTParser$Icon;)Z
    .locals 3

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTParser$Icon;->program:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "adchoices"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTParser$Icon;->iconClicks:Lcom/millennialmedia/internal/video/VASTParser$IconClicks;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$IconClicks;->clickThrough:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTParser$Icon;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->uri:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid adchoices icon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private loadBackground()V
    .locals 5

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Ad;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->background:Lcom/millennialmedia/internal/video/VASTParser$Background;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/millennialmedia/internal/video/VASTParser$Background;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->uri:Ljava/lang/String;

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v2, "mmVastVideoView_backgroundImageView"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundFrame:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lcom/millennialmedia/internal/video/VASTParser$Background;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    invoke-direct {p0, v3}, Lcom/millennialmedia/internal/video/VASTVideoView;->getBackgroundColor(Lcom/millennialmedia/internal/video/VASTParser$StaticResource;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v2, Lcom/millennialmedia/internal/video/VASTVideoView$11;

    invoke-direct {v2, p0, v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView$11;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/VASTParser$Background;Landroid/widget/ImageView;)V

    invoke-static {v2}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/millennialmedia/internal/video/VASTParser$Background;->webResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$WebResource;->uri:Ljava/lang/String;

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/millennialmedia/internal/video/VASTVideoView$12;

    invoke-direct {v4, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$12;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;Landroid/content/Context;ZLcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V

    iput-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    const-string v2, "mmVastVideoView_backgroundWebView"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Background;->webResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$WebResource;->uri:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->loadContentIntoWebView(Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private loadButtons()V
    .locals 8

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Ad;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->buttons:Ljava/util/List;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/millennialmedia/internal/video/VASTVideoView$13;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$13;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/millennialmedia/R$dimen;->mmadsdk_ad_button_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/millennialmedia/R$dimen;->mmadsdk_ad_button_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v3, v3, Lcom/millennialmedia/internal/video/VASTParser$Ad;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v3, v3, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->buttons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/millennialmedia/internal/video/VASTParser$Button;

    const/4 v5, 0x3

    if-ge v0, v5, :cond_2

    iget-object v5, v4, Lcom/millennialmedia/internal/video/VASTParser$Button;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    if-eqz v5, :cond_0

    iget-object v5, v5, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->uri:Ljava/lang/String;

    invoke-static {v5}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/millennialmedia/internal/video/VASTParser$Button;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    iget-object v5, v5, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->creativeType:Ljava/lang/String;

    invoke-static {v5}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/millennialmedia/internal/video/VASTParser$Button;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    iget-object v5, v5, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->creativeType:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "image/png"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    new-instance v5, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, p0, v6, v4}, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;Landroid/content/Context;Lcom/millennialmedia/internal/video/VASTParser$Button;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mmVastVideoView_mmExtensionButton_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->isPortrait()Z

    move-result v5

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v5, v5

    invoke-direct {v6, v1, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->isPortrait()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/millennialmedia/R$dimen;->mmadsdk_ad_button_padding_left:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_1
    iget-object v5, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private loadCompanionAd()V
    .locals 6

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Ad;->creatives:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v2, v1, Lcom/millennialmedia/internal/video/VASTParser$Creative;->companionAds:Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v1, Lcom/millennialmedia/internal/video/VASTParser$Creative;->companionAds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->width:Ljava/lang/Integer;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x12c

    if-lt v4, v5, :cond_1

    iget-object v4, v3, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->height:Ljava/lang/Integer;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xfa

    if-lt v4, v5, :cond_1

    iget-object v4, v3, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    if-eqz v4, :cond_2

    iget-object v4, v4, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->uri:Ljava/lang/String;

    invoke-static {v4}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/millennialmedia/internal/video/VASTVideoView;->supportImageTypes:Ljava/util/List;

    iget-object v5, v3, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    iget-object v5, v5, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->creativeType:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_2
    iget-object v4, v3, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->htmlResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lcom/millennialmedia/internal/video/VASTParser$WebResource;->uri:Ljava/lang/String;

    invoke-static {v4}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, v3, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->iframeResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/millennialmedia/internal/video/VASTParser$WebResource;->uri:Ljava/lang/String;

    invoke-static {v4}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_4
    iput-object v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCompanionAd:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    :cond_5
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCompanionAd:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    if-eq v1, v2, :cond_0

    :cond_6
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCompanionAd:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->iframeResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    const/4 v1, -0x1

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$WebResource;->uri:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCompanionAd:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->iframeResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$WebResource;->uri:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->createCompanionWebView(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->endCardContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->companionAdWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->endCardContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/millennialmedia/internal/video/VASTVideoView$7;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$7;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCompanionAd:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->htmlResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$WebResource;->uri:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCompanionAd:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->htmlResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$WebResource;->uri:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->createCompanionWebView(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->endCardContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->companionAdWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->endCardContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/millennialmedia/internal/video/VASTVideoView$8;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$8;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCompanionAd:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->uri:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$9;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$9;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_9
    :goto_1
    return-void
.end method

.method private loadContentIntoWebView(Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$6;

    invoke-direct {v0, p0, p2, p1}, Lcom/millennialmedia/internal/video/VASTVideoView$6;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/lang/String;Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadInlineAd(Landroid/content/Context;)V
    .locals 10

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Ad;->creatives:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v2, v1, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->mediaFiles:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->selectMediaFile(Ljava/util/List;)Lcom/millennialmedia/internal/video/VASTParser$MediaFile;

    move-result-object v2

    if-eqz v2, :cond_0

    iput-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedMediaFile:Lcom/millennialmedia/internal/video/VASTParser$MediaFile;

    iput-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedMediaFile:Lcom/millennialmedia/internal/video/VASTParser$MediaFile;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    const-string v0, "Cannot access video cache directory. External storage is not available."

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->vastVideoViewListener:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;->onFailed()V

    :cond_2
    return-void

    :cond_3
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_mm_video_cache"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_5

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    const-wide/32 v5, 0x2932e00

    cmp-long v9, v7, v5

    if-lez v9, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedMediaFile:Lcom/millennialmedia/internal/video/VASTParser$MediaFile;

    iget-object p1, p1, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;->url:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/millennialmedia/internal/video/VASTVideoView$4;

    invoke-direct {v2, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$4;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-static {p1, v0, v1, v2}, Lcom/millennialmedia/internal/utils/IOUtils;->downloadFile(Ljava/lang/String;Ljava/lang/Integer;Ljava/io/File;Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;)V

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->loadButtons()V

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->loadBackground()V

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->loadOverlay()V

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->loadCompanionAd()V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->adChoicesButton:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;

    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->init()V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    const-string v0, "VAST init failed because it did not contain a compatible media file."

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->vastVideoViewListener:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;->onFailed()V

    :cond_8
    :goto_1
    return-void
.end method

.method private loadOverlay()V
    .locals 4

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Ad;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->overlay:Lcom/millennialmedia/internal/video/VASTParser$Overlay;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Overlay;->uri:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/millennialmedia/internal/video/VASTVideoView$5;

    invoke-direct {v3, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$5;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;Landroid/content/Context;ZLcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    const-string v1, "mmVastVideoView_overlayWebView"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$Ad;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->overlay:Lcom/millennialmedia/internal/video/VASTParser$Overlay;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$Overlay;->uri:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->loadContentIntoWebView(Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private notifyListenerOnAdLeftApplication()V
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$21;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$21;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private notifyListenerOnClick()V
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$20;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$20;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onWebViewReady(Lcom/millennialmedia/internal/MMWebView;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "MmJsBridge.vast.enableWebOverlay"

    invoke-virtual {p1, v2, v1}, Lcom/millennialmedia/internal/MMWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v3}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "MmJsBridge.vast.setDuration"

    invoke-virtual {p1, v3, v2}, Lcom/millennialmedia/internal/MMWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->videoState:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->videoState:Ljava/lang/String;

    aput-object v2, v1, v0

    const-string v0, "MmJsBridge.vast.setState"

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/internal/MMWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private processProgressTrackingEvents(I)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    sget-object v2, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->progress:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-direct {p0, v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->getWrapperLinearTrackingEvents(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;

    move-object v2, v1

    check-cast v2, Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;

    iget-object v3, v2, Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;->offset:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-direct {p0, v3, v4}, Lcom/millennialmedia/internal/video/VASTVideoView;->vastTimeToMilliseconds(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v4, :cond_4

    iget-object v4, v2, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->url:Ljava/lang/String;

    invoke-static {v4}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->firedTrackingEvents:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-lt p1, v3, :cond_2

    invoke-direct {p0, v2, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireVideoTrackingEvent(Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Progress event could not be fired because the url is empty. offset = "

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Progress event could not be fired because the time offset is invalid. url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", offset = "

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;->offset:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->firedTrackingEvents:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    return-void
.end method

.method private processQuartileTrackingEvents(II)V
    .locals 2

    div-int/lit8 p2, p2, 0x4

    if-lt p1, p2, :cond_0

    iget v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->lastQuartileFired:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iput v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->lastQuartileFired:I

    sget-object v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->firstQuartile:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getWrapperLinearTrackingEvents(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireVideoTrackingEvents(Ljava/util/List;I)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireVideoTrackingEvents(Ljava/util/List;I)V

    :cond_0
    mul-int/lit8 v0, p2, 0x2

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->lastQuartileFired:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iput v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->lastQuartileFired:I

    sget-object v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->midpoint:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getWrapperLinearTrackingEvents(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireVideoTrackingEvents(Ljava/util/List;I)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireVideoTrackingEvents(Ljava/util/List;I)V

    :cond_1
    const/4 v0, 0x3

    mul-int/lit8 p2, p2, 0x3

    if-lt p1, p2, :cond_2

    iget p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->lastQuartileFired:I

    if-ge p2, v0, :cond_2

    iput v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->lastQuartileFired:I

    sget-object p2, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->thirdQuartile:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-direct {p0, p2}, Lcom/millennialmedia/internal/video/VASTVideoView;->getWrapperLinearTrackingEvents(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireVideoTrackingEvents(Ljava/util/List;I)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p2, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireVideoTrackingEvents(Ljava/util/List;I)V

    :cond_2
    return-void
.end method

.method private registerVideoClicks()V
    .locals 4

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->videoClicks:Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getWrapperVideoClicks()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->hasVideoClicks(Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->haveVideoClicks(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    new-instance v3, Lcom/millennialmedia/internal/video/VASTVideoView$14;

    invoke-direct {v3, p0, v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView$14;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private replay()V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->currentState:I

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput v1, v0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->lastUpdateTime:I

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_1

    iput v1, v0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->lastUpdateTime:I

    :cond_1
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->updateComponentVisibility()V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->replayButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->skipButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->adChoicesButton:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->reset()V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->restart()V

    return-void
.end method

.method private selectMediaFile(Ljava/util/List;)Lcom/millennialmedia/internal/video/VASTParser$MediaFile;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/millennialmedia/internal/video/VASTParser$MediaFile;",
            ">;)",
            "Lcom/millennialmedia/internal/video/VASTParser$MediaFile;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getNetworkConnectionType()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x190

    const-string v3, "wifi"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0x320

    if-eqz v3, :cond_1

    const/16 v4, 0x4b0

    goto :goto_0

    :cond_1
    const-string v3, "lte"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    :goto_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using bit rate range "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " inclusive for network connectivity type = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TAG"

    invoke-static {v3, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;

    iget-object v3, v1, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;->url:Ljava/lang/String;

    invoke-static {v3}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;->delivery:Ljava/lang/String;

    const-string v5, "progressive"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    iget-object v5, v1, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;->contentType:Ljava/lang/String;

    const-string v6, "video/mp4"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    iget v6, v1, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;->bitrate:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-lt v6, v2, :cond_4

    if-gt v6, v4, :cond_4

    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    :goto_2
    if-eqz v0, :cond_6

    iget v10, v0, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;->bitrate:I

    if-ge v10, v6, :cond_5

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    :cond_6
    :goto_3
    if-eqz v3, :cond_3

    if-eqz v5, :cond_3

    if-eqz v9, :cond_3

    if-eqz v7, :cond_3

    move-object v0, v1

    goto :goto_1

    :cond_7
    :goto_4
    return-object v0
.end method

.method private setKeepScreenOnUIThread(Z)V
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$18;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView$18;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;Z)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setVideoState(Ljava/lang/String;)V
    .locals 5

    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->videoState:Ljava/lang/String;

    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "MmJsBridge.vast.setState"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/millennialmedia/internal/MMWebView;->isJSBridgeReady()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->videoState:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/millennialmedia/internal/MMWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/millennialmedia/internal/MMWebView;->isJSBridgeReady()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->videoState:Ljava/lang/String;

    aput-object v3, v1, v0

    invoke-virtual {p1, v2, v1}, Lcom/millennialmedia/internal/MMWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private skip()V
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->skip:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getWrapperLinearTrackingEvents(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireVideoTrackingEvents(Ljava/util/List;I)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireVideoTrackingEvents(Ljava/util/List;I)V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->videoSkipped()V

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->doComplete()V

    return-void
.end method

.method private updateButtonContainerVisibility()V
    .locals 4

    iget v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->currentState:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Ad;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->background:Lcom/millennialmedia/internal/video/VASTParser$Background;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Background;->hideButtons:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Ad;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->overlay:Lcom/millennialmedia/internal/video/VASTParser$Overlay;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Overlay;->hideButtons:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->currentState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCompanionAd:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->hideButtons:Z

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateButtonsVisibility(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v2, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;

    invoke-virtual {v2, p1}, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->updateVisibility(I)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateSkipButtonVisibility(II)V
    .locals 3

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getVASTVideoSkipOffsetMax()I

    move-result v0

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getVASTVideoSkipOffsetMin()I

    move-result v1

    if-le v1, v0, :cond_0

    move v1, v0

    :cond_0
    iget v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->skipOffsetMilliseconds:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int/2addr p2, p1

    div-int/lit16 p2, p2, 0x3e8

    if-lez p2, :cond_1

    iget p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->previousTimeLeftToSkip:I

    if-eq p2, p1, :cond_2

    iput p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->previousTimeLeftToSkip:I

    new-instance p1, Lcom/millennialmedia/internal/video/VASTVideoView$16;

    invoke-direct {p1, p0, p2}, Lcom/millennialmedia/internal/video/VASTVideoView$16;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->canSkip:Z

    new-instance p1, Lcom/millennialmedia/internal/video/VASTVideoView$17;

    invoke-direct {p1, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$17;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    :goto_0
    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private vastTimeToMilliseconds(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/millennialmedia/internal/video/VASTVideoView;->vastTimeToMilliseconds(Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public static vastTimeToMilliseconds(Ljava/lang/String;II)I
    .locals 6

    const-string v0, "%"

    invoke-static {p0}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p0, p2

    int-to-float p1, p1

    mul-float p0, p0, p1

    float-to-int p2, p0

    goto/16 :goto_2

    :cond_0
    sget-object p1, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VAST time is missing percent value, parse value was: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    const-string p1, "\\."

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_4

    array-length v0, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    aget-object p0, p1, v3

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const v4, 0x36ee80

    mul-int v3, v3, v4

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const v4, 0xea60

    mul-int v2, v2, v4

    add-int/2addr v3, v2

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    add-int/2addr v3, p0

    add-int/2addr v3, p1

    move p2, v3

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VAST time has invalid HHMMSS format, parse value was: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VAST time has invalid format, parse value was: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VAST time has invalid number format, parse value was: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return p2
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result v0

    return v0
.end method

.method public getIconWithProgram(Ljava/lang/String;)Lcom/millennialmedia/internal/video/VASTParser$Icon;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->iconMap:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getIconsClosestToCreative()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->iconMap:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->iconMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/millennialmedia/internal/video/VASTParser$Icon;

    return-object p1
.end method

.method public getMoatIdentifiers()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$Ad;->moatTrackingIds:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->wrapperAds:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v3, v2

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;

    iget-object v5, v4, Lcom/millennialmedia/internal/video/VASTParser$Ad;->moatExtension:Lcom/millennialmedia/internal/video/VASTParser$MoatExtension;

    if-eqz v5, :cond_2

    move-object v3, v5

    :cond_2
    iget-object v5, v4, Lcom/millennialmedia/internal/video/VASTParser$Ad;->moatTrackingIds:Ljava/lang/String;

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3

    const/16 v5, 0x3b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v4, v4, Lcom/millennialmedia/internal/video/VASTParser$Ad;->moatTrackingIds:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    move-object v3, v2

    :cond_5
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$Ad;->moatExtension:Lcom/millennialmedia/internal/video/VASTParser$MoatExtension;

    if-eqz v1, :cond_6

    move-object v3, v1

    :cond_6
    if-nez v3, :cond_7

    return-object v2

    :cond_7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, v3, Lcom/millennialmedia/internal/video/VASTParser$MoatExtension;->level1:Ljava/lang/String;

    const-string v4, "level1"

    invoke-static {v1, v4, v2}, Lcom/millennialmedia/internal/utils/Utils;->putIfNotNull(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v3, Lcom/millennialmedia/internal/video/VASTParser$MoatExtension;->level2:Ljava/lang/String;

    const-string v4, "level2"

    invoke-static {v1, v4, v2}, Lcom/millennialmedia/internal/utils/Utils;->putIfNotNull(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v3, Lcom/millennialmedia/internal/video/VASTParser$MoatExtension;->level3:Ljava/lang/String;

    const-string v4, "level3"

    invoke-static {v1, v4, v2}, Lcom/millennialmedia/internal/utils/Utils;->putIfNotNull(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v3, Lcom/millennialmedia/internal/video/VASTParser$MoatExtension;->level4:Ljava/lang/String;

    const-string v4, "level4"

    invoke-static {v1, v4, v2}, Lcom/millennialmedia/internal/utils/Utils;->putIfNotNull(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v3, Lcom/millennialmedia/internal/video/VASTParser$MoatExtension;->slicer1:Ljava/lang/String;

    const-string v4, "slicer1"

    invoke-static {v1, v4, v2}, Lcom/millennialmedia/internal/utils/Utils;->putIfNotNull(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v3, Lcom/millennialmedia/internal/video/VASTParser$MoatExtension;->slicer2:Ljava/lang/String;

    const-string v3, "slicer2"

    invoke-static {v1, v3, v2}, Lcom/millennialmedia/internal/utils/Utils;->putIfNotNull(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "zMoatVASTIDs"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/internal/utils/Utils;->putIfNotNull(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public onBackPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->canSkip:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->skip()V

    :cond_0
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->canSkip:Z

    return v0
.end method

.method public onBufferingUpdate(Lcom/millennialmedia/internal/video/MMVideoView;I)V
    .locals 0

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    const-string p2, "onBufferingUpdate"

    invoke-static {p1, p2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onComplete(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    const-string v0, "onComplete"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->complete:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->getWrapperLinearTrackingEvents(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getDuration()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireVideoTrackingEvents(Ljava/util/List;I)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getDuration()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireVideoTrackingEvents(Ljava/util/List;I)V

    :cond_1
    const-string p1, "complete"

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->setVideoState(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->incentVideoCompleteEarned:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->incentVideoCompleteEarned:Z

    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->vastVideoViewListener:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;

    const/4 v1, 0x0

    const-string v2, "IncentiveVideoComplete"

    invoke-direct {v0, v2, v1}, Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;->onIncentiveEarned(Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V

    :cond_2
    new-instance p1, Lcom/millennialmedia/internal/video/VASTVideoView$15;

    invoke-direct {p1, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$15;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 5

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    const-string v0, "onError"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->setKeepScreenOnUIThread(Z)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->vastVideoViewListener:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;->onFailed()V

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    const-string v1, "Video playback error occurred."

    const/4 v2, 0x1

    const-string v3, "MmJsBridge.vast.fireErrorEvent"

    if-eqz v0, :cond_2

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v1, v4, p1

    invoke-virtual {v0, v3, v4}, Lcom/millennialmedia/internal/MMWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, p1

    invoke-virtual {v0, v3, v2}, Lcom/millennialmedia/internal/MMWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public onMuted(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    const-string v0, "onMuted"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPause(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    const-string v0, "onPause"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "paused"

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->setVideoState(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->setKeepScreenOnUIThread(Z)V

    return-void
.end method

.method public onPrepared(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 5

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    const-string v0, "onPrepared"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object p1, p1, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object p1, p1, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->skipOffset:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->vastTimeToMilliseconds(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->skipOffsetMilliseconds:I

    iget-boolean p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->initialized:Z

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iput-boolean v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->initialized:Z

    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->vastVideoViewListener:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;->onLoaded()V

    :cond_1
    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    const-string v2, "MmJsBridge.vast.setDuration"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/millennialmedia/internal/MMWebView;->isJSBridgeReady()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v4}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/millennialmedia/internal/MMWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/millennialmedia/internal/MMWebView;->isJSBridgeReady()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v3}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-virtual {p1, v2, v1}, Lcom/millennialmedia/internal/MMWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public declared-synchronized onProgress(Lcom/millennialmedia/internal/video/MMVideoView;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->updateTime(I)V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->updateTime(I)V

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/millennialmedia/internal/video/VASTVideoView;->updateButtonsVisibility(I)V

    :cond_2
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->canSkip:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->updateSkipButtonVisibility(II)V

    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->adChoicesButton:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->updateVisibility(II)V

    :cond_4
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->shouldHandleTrackingEvents:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->processQuartileTrackingEvents(II)V

    invoke-direct {p0, p2}, Lcom/millennialmedia/internal/video/VASTVideoView;->processProgressTrackingEvents(I)V
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
    .locals 1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    const-string v0, "onReadyToStart"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSeek(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    const-string v0, "onSeek"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized onStart(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    const-string v0, "onStart"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->setKeepScreenOnUIThread(Z)V

    const-string p1, "playing"

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->setVideoState(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->start:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->getWrapperLinearTrackingEvents(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireVideoTrackingEvents(Ljava/util/List;I)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireVideoTrackingEvents(Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onStop(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    const-string v0, "onStop"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->setKeepScreenOnUIThread(Z)V

    return-void
.end method

.method public onUnmuted(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 4

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->stop()V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->release()V

    iput-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->videoFile:Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete video asset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->videoFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iput-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->videoFile:Ljava/io/File;

    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->release()V

    iput-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->companionAdWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->release()V

    iput-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->companionAdWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    :cond_4
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->release()V

    iput-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    :cond_5
    return-void
.end method

.method public updateComponentVisibility()V
    .locals 4

    iget v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->currentState:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundFrame:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->endCardContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->currentState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->endCardContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->updateButtonContainerVisibility()V

    return-void
.end method

.method public updateLayout()V
    .locals 5

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->isPortrait()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->lastKnownOrientation:I

    if-eq v0, v3, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x3

    sget v4, Lcom/millennialmedia/R$id;->mmadsdk_vast_video_control_buttons:I

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_0
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->updateComponentVisibility()V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->isPortrait()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->lastKnownOrientation:I

    if-ne v0, v3, :cond_1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/millennialmedia/R$dimen;->mmadsdk_ad_button_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/millennialmedia/R$dimen;->mmadsdk_ad_button_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->isPortrait()Z

    move-result v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v3, v3

    invoke-direct {v4, v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->isPortrait()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/millennialmedia/R$dimen;->mmadsdk_ad_button_padding_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    :cond_2
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :goto_2
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->bringToFront()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->lastKnownOrientation:I

    return-void
.end method
