.class public Lcom/verizon/ads/vastcontroller/VASTVideoView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;
.implements Lcom/verizon/ads/vastcontroller/VASTController$VideoViewActions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/vastcontroller/VASTVideoView$VASTEndCardViewabilityListener;,
        Lcom/verizon/ads/vastcontroller/VASTVideoView$VASTVideoViewabilityListener;,
        Lcom/verizon/ads/vastcontroller/VASTVideoView$VASTImpressionViewabilityListener;,
        Lcom/verizon/ads/vastcontroller/VASTVideoView$PlaybackListener;,
        Lcom/verizon/ads/vastcontroller/VASTVideoView$LoadListener;,
        Lcom/verizon/ads/vastcontroller/VASTVideoView$InteractionListener;
    }
.end annotation


# static fields
.field private static final j:Lcom/verizon/ads/Logger;

.field private static final k:Ljava/lang/String;

.field private static final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Landroid/widget/ToggleButton;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/LinearLayout;

.field private D:Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;

.field private E:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

.field private F:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

.field private G:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

.field private H:Ljava/io/File;

.field private I:I

.field private J:I

.field private K:Z

.field private L:I

.field private volatile M:Lcom/verizon/ads/vastcontroller/VASTParser$MediaFile;

.field private volatile N:Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;

.field private O:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/verizon/ads/vastcontroller/VASTParser$TrackingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private P:I

.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;",
            ">;"
        }
    .end annotation
.end field

.field volatile d:Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

.field e:Lcom/verizon/ads/VideoPlayerView;

.field f:Lcom/verizon/ads/VideoPlayer;

.field g:Lcom/iab/omid/library/verizonmedia/adsession/b;

.field h:Lcom/iab/omid/library/verizonmedia/adsession/a/a;

.field i:Lcom/iab/omid/library/verizonmedia/adsession/a;

.field private volatile m:Z

.field private volatile n:Z

.field private volatile o:Z

.field private volatile p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/verizon/ads/vastcontroller/VASTParser$Icon;",
            ">;"
        }
    .end annotation
.end field

.field private volatile q:I

.field private r:Lcom/verizon/ads/vastcontroller/VASTVideoView$LoadListener;

.field private s:Lcom/verizon/ads/vastcontroller/VASTVideoView$InteractionListener;

.field private t:Lcom/verizon/ads/vastcontroller/VASTVideoView$PlaybackListener;

.field private u:Landroid/widget/FrameLayout;

.field private v:Landroid/widget/FrameLayout;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/widget/ImageView;

.field private y:Lcom/verizon/ads/vastcontroller/AdChoicesButton;

.field private z:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 78
    const-class v0, Lcom/verizon/ads/vastcontroller/VASTVideoView;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v1

    sput-object v1, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    .line 85
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->k:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    sput-object v0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->l:Ljava/util/List;

    const-string v1, "image/bmp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "image/gif"

    .line 182
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "image/jpeg"

    .line 183
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "image/png"

    .line 184
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;",
            "Ljava/util/List<",
            "Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;",
            ">;)V"
        }
    .end annotation

    .line 426
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->m:Z

    .line 123
    iput-boolean v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->n:Z

    .line 124
    iput-boolean v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->o:Z

    .line 156
    iput v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->J:I

    const/4 v1, -0x1

    .line 158
    iput v1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->L:I

    .line 428
    iput-object p2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->D:Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;

    .line 429
    iput-object p3, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a:Ljava/util/List;

    const/high16 p2, -0x1000000

    .line 3437
    invoke-virtual {p0, p2}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->setBackgroundColor(I)V

    .line 3438
    sget p2, Lcom/verizon/ads/vastcontroller/R$id;->vas_vast_video_view:I

    invoke-virtual {p0, p2}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->setId(I)V

    .line 3440
    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->g()Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    .line 3441
    iput p3, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->P:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    .line 3443
    iput p2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->P:I

    .line 3446
    :goto_0
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    invoke-static {p2}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->O:Ljava/util/Set;

    .line 3448
    new-instance p2, Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    new-instance v2, Lcom/verizon/ads/vastcontroller/VASTVideoView$VASTImpressionViewabilityListener;

    invoke-direct {v2, p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView$VASTImpressionViewabilityListener;-><init>(Lcom/verizon/ads/vastcontroller/VASTVideoView;)V

    invoke-direct {p2, p0, v2}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/verizon/ads/support/utils/ViewabilityWatcher$ViewabilityListener;)V

    iput-object p2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->G:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    .line 3453
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3455
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3458
    invoke-virtual {p0, p2, v2}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3460
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->u:Landroid/widget/FrameLayout;

    const-string v3, "mmVastVideoView_backgroundFrame"

    .line 3461
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 3462
    iget-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->u:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3464
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3467
    iget-object v4, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->u:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-array v2, v0, [Ljava/lang/Object;

    const-string/jumbo v4, "video/player-v2"

    const/4 v5, 0x0

    .line 3469
    invoke-static {v4, p1, v5, v2}, Lcom/verizon/ads/ComponentRegistry;->getComponent(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;[Ljava/lang/Object;)Lcom/verizon/ads/Component;

    move-result-object v2

    .line 3471
    instance-of v4, v2, Lcom/verizon/ads/VideoPlayer;

    const/4 v6, 0x4

    if-nez v4, :cond_2

    .line 3472
    sget-object p1, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string p2, "Cannot load videoPlayerView. A compatible video player component has not been registered."

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 3474
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->r:Lcom/verizon/ads/vastcontroller/VASTVideoView$LoadListener;

    if-eqz p1, :cond_1

    .line 3475
    new-instance p3, Lcom/verizon/ads/ErrorInfo;

    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->k:Ljava/lang/String;

    invoke-direct {p3, v0, p2, v6}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, p3}, Lcom/verizon/ads/vastcontroller/VASTVideoView$LoadListener;->onComplete(Lcom/verizon/ads/ErrorInfo;)V

    :cond_1
    return-void

    .line 3482
    :cond_2
    check-cast v2, Lcom/verizon/ads/VideoPlayer;

    iput-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->f:Lcom/verizon/ads/VideoPlayer;

    .line 3628
    new-instance v2, Lcom/verizon/ads/VideoPlayerView;

    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/verizon/ads/VideoPlayerView;-><init>(Landroid/content/Context;)V

    .line 3483
    iput-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->e:Lcom/verizon/ads/VideoPlayerView;

    .line 3484
    iget-object v4, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->f:Lcom/verizon/ads/VideoPlayer;

    invoke-virtual {v2, v4}, Lcom/verizon/ads/VideoPlayerView;->bindPlayer(Lcom/verizon/ads/VideoPlayer;)V

    .line 3487
    iget-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->e:Lcom/verizon/ads/VideoPlayerView;

    invoke-virtual {v2, v0}, Lcom/verizon/ads/VideoPlayerView;->setPlayButtonEnabled(Z)V

    .line 3488
    iget-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->e:Lcom/verizon/ads/VideoPlayerView;

    invoke-virtual {v2, v0}, Lcom/verizon/ads/VideoPlayerView;->setReplayButtonEnabled(Z)V

    .line 3489
    iget-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->e:Lcom/verizon/ads/VideoPlayerView;

    invoke-virtual {v2, v0}, Lcom/verizon/ads/VideoPlayerView;->setMuteToggleEnabled(Z)V

    .line 3491
    iget-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->f:Lcom/verizon/ads/VideoPlayer;

    invoke-static {}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->i()Z

    move-result v4

    if-eqz v4, :cond_3

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    invoke-interface {v2, v4}, Lcom/verizon/ads/VideoPlayer;->setVolume(F)V

    .line 3493
    iget-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->e:Lcom/verizon/ads/VideoPlayerView;

    const-string v4, "mmVastVideoView_videoView"

    invoke-virtual {v2, v4}, Lcom/verizon/ads/VideoPlayerView;->setTag(Ljava/lang/Object;)V

    .line 3494
    iget-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->f:Lcom/verizon/ads/VideoPlayer;

    invoke-interface {v2, p0}, Lcom/verizon/ads/VideoPlayer;->registerListener(Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;)V

    .line 3496
    new-instance v2, Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    iget-object v4, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->e:Lcom/verizon/ads/VideoPlayerView;

    new-instance v7, Lcom/verizon/ads/vastcontroller/VASTVideoView$VASTVideoViewabilityListener;

    iget-object v8, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->f:Lcom/verizon/ads/VideoPlayer;

    invoke-direct {v7, p0, v8}, Lcom/verizon/ads/vastcontroller/VASTVideoView$VASTVideoViewabilityListener;-><init>(Lcom/verizon/ads/vastcontroller/VASTVideoView;Lcom/verizon/ads/VideoPlayer;)V

    invoke-direct {v2, v4, v7}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/verizon/ads/support/utils/ViewabilityWatcher$ViewabilityListener;)V

    iput-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->F:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    .line 3500
    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->l()V

    .line 3501
    iget-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->M:Lcom/verizon/ads/vastcontroller/VASTParser$MediaFile;

    if-eqz v2, :cond_4

    .line 3846
    iget v4, v2, Lcom/verizon/ads/vastcontroller/VASTParser$MediaFile;->width:I

    iget v2, v2, Lcom/verizon/ads/vastcontroller/VASTParser$MediaFile;->height:I

    if-gt v4, v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 3501
    :goto_2
    iput-boolean v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->K:Z

    if-eqz v2, :cond_5

    .line 3505
    iget-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->D:Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;

    iput-object v5, v2, Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;->mmExtension:Lcom/verizon/ads/vastcontroller/VASTParser$MMExtension;

    .line 3508
    :cond_5
    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->k()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 3510
    iget-object v4, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->e:Lcom/verizon/ads/VideoPlayerView;

    invoke-virtual {p0, v4, v2}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3512
    new-instance v2, Lcom/verizon/ads/vastcontroller/AdChoicesButton;

    invoke-direct {v2, p1}, Lcom/verizon/ads/vastcontroller/AdChoicesButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->y:Lcom/verizon/ads/vastcontroller/AdChoicesButton;

    .line 3513
    sget v4, Lcom/verizon/ads/vastcontroller/R$id;->vas_vast_adchoices_button:I

    invoke-virtual {v2, v4}, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->setId(I)V

    .line 3514
    iget-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->y:Lcom/verizon/ads/vastcontroller/AdChoicesButton;

    invoke-virtual {p0, v2}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->addView(Landroid/view/View;)V

    .line 3516
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->v:Landroid/widget/FrameLayout;

    const-string v4, "mmVastVideoView_endCardContainer"

    .line 3517
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 3518
    iget-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3520
    new-instance v2, Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    iget-object v4, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->v:Landroid/widget/FrameLayout;

    new-instance v7, Lcom/verizon/ads/vastcontroller/VASTVideoView$VASTEndCardViewabilityListener;

    invoke-direct {v7, p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView$VASTEndCardViewabilityListener;-><init>(Lcom/verizon/ads/vastcontroller/VASTVideoView;)V

    invoke-direct {v2, v4, v7}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/verizon/ads/support/utils/ViewabilityWatcher$ViewabilityListener;)V

    iput-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->E:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    .line 3523
    iget-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->G:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    invoke-virtual {v2}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->startWatching()V

    .line 3524
    iget-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->F:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    invoke-virtual {v2}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->startWatching()V

    .line 3525
    iget-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->E:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    invoke-virtual {v2}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->startWatching()V

    .line 3527
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3530
    iget-object v4, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->v:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3533
    new-instance p2, Landroid/widget/RelativeLayout;

    invoke-direct {p2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 3534
    sget v2, Lcom/verizon/ads/vastcontroller/R$id;->vas_vast_video_control_buttons:I

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 3536
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/verizon/ads/vastcontroller/R$dimen;->vas_control_button_margin:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 3538
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->w:Landroid/widget/ImageView;

    .line 3539
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/verizon/ads/vastcontroller/R$drawable;->verizon_ads_sdk_vast_close:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3540
    iget-object v4, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->w:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3541
    iget-object v4, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->w:Landroid/widget/ImageView;

    new-instance v7, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$_a2PhojU4cXUjGR9IJG30RaPfvA;

    invoke-direct {v7, p0}, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$_a2PhojU4cXUjGR9IJG30RaPfvA;-><init>(Lcom/verizon/ads/vastcontroller/VASTVideoView;)V

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3542
    iget-object v4, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->w:Landroid/widget/ImageView;

    const-string v7, "mmVastVideoView_closeButton"

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3544
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/verizon/ads/vastcontroller/R$dimen;->vas_control_button_width:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 3545
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/verizon/ads/vastcontroller/R$dimen;->vas_control_button_height:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-direct {v4, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xa

    .line 3547
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v8, 0xb

    .line 3548
    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3549
    invoke-virtual {v4, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3551
    iget-object v9, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->w:Landroid/widget/ImageView;

    invoke-virtual {p2, v9, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3553
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->x:Landroid/widget/ImageView;

    .line 3554
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/verizon/ads/vastcontroller/R$drawable;->verizon_ads_sdk_vast_skip:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3555
    iget-object v4, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->x:Landroid/widget/ImageView;

    const-string v9, "mmVastVideoView_skipButton"

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3556
    iget-object v4, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->x:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 3557
    iget-object v4, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->x:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3559
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->B:Landroid/widget/TextView;

    .line 3560
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/verizon/ads/vastcontroller/R$drawable;->verizon_ads_sdk_vast_opacity:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3561
    iget-object v4, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->B:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x106000b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3562
    iget-object v4, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->B:Landroid/widget/TextView;

    invoke-virtual {v4, v5, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 3563
    iget-object p3, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->B:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 3564
    iget-object p3, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->B:Landroid/widget/TextView;

    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3565
    iget-object p3, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->B:Landroid/widget/TextView;

    const-string v4, "mmVastVideoView_countdown"

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3567
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/verizon/ads/vastcontroller/R$dimen;->vas_control_button_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 3568
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/verizon/ads/vastcontroller/R$dimen;->vas_control_button_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {p3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3570
    invoke-virtual {p3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3571
    invoke-virtual {p3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3572
    invoke-virtual {p3, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3574
    iget-object v4, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->x:Landroid/widget/ImageView;

    invoke-virtual {p2, v4, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3575
    iget-object v4, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->B:Landroid/widget/TextView;

    invoke-virtual {p2, v4, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3577
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->z:Landroid/widget/ImageView;

    .line 3578
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/verizon/ads/vastcontroller/R$drawable;->verizon_ads_sdk_vast_replay:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3579
    iget-object p3, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->z:Landroid/widget/ImageView;

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3580
    iget-object p3, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->z:Landroid/widget/ImageView;

    new-instance v3, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$eQvpOrBb-eKvm6AWKVTOWFp2h3Q;

    invoke-direct {v3, p0}, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$eQvpOrBb-eKvm6AWKVTOWFp2h3Q;-><init>(Lcom/verizon/ads/vastcontroller/VASTVideoView;)V

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3585
    iget-object p3, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->z:Landroid/widget/ImageView;

    const-string v3, "mmVastVideoView_replayButton"

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3587
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/verizon/ads/vastcontroller/R$dimen;->vas_control_button_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 3588
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/verizon/ads/vastcontroller/R$dimen;->vas_control_button_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {p3, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3590
    invoke-virtual {p3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0x9

    .line 3591
    invoke-virtual {p3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3592
    invoke-virtual {p3, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3594
    iget-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->z:Landroid/widget/ImageView;

    invoke-virtual {p2, v2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3596
    new-instance v2, Landroid/widget/ToggleButton;

    invoke-direct {v2, p1}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->A:Landroid/widget/ToggleButton;

    const-string p1, ""

    .line 3597
    invoke-virtual {v2, p1}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    .line 3598
    iget-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->A:Landroid/widget/ToggleButton;

    invoke-virtual {v2, p1}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 3599
    iget-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->A:Landroid/widget/ToggleButton;

    invoke-virtual {v2, p1}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 3600
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->A:Landroid/widget/ToggleButton;

    const-string v2, "mmVastVideoView_muteToggleButton"

    invoke-virtual {p1, v2}, Landroid/widget/ToggleButton;->setTag(Ljava/lang/Object;)V

    .line 3601
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->A:Landroid/widget/ToggleButton;

    sget v2, Lcom/verizon/ads/vastcontroller/R$drawable;->verizon_ads_sdk_vast_mute_toggle:I

    invoke-virtual {p1, v2}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    .line 3602
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->A:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->i()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 3604
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->A:Landroid/widget/ToggleButton;

    new-instance v2, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$5YgPC_R6mEu55nWsYQLBtia6JTU;

    invoke-direct {v2, p0}, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$5YgPC_R6mEu55nWsYQLBtia6JTU;-><init>(Lcom/verizon/ads/vastcontroller/VASTVideoView;)V

    invoke-virtual {p1, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3607
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->A:Landroid/widget/ToggleButton;

    invoke-virtual {p2, p1, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3609
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p1, v1, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x3

    .line 3612
    sget v3, Lcom/verizon/ads/vastcontroller/R$id;->vas_vast_adchoices_button:I

    invoke-virtual {p1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3614
    invoke-virtual {p0, p2, p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3616
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0xc

    .line 3619
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3621
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->C:Landroid/widget/LinearLayout;

    .line 3622
    invoke-virtual {p0, p2, p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3624
    iput v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->q:I

    return-void
.end method

.method private a(I)I
    .locals 4

    const-string v0, "com.verizon.ads.vast"

    const-string/jumbo v1, "vastSkipOffsetMax"

    const/16 v2, 0x1d4c

    .line 9077
    invoke-static {v0, v1, v2}, Lcom/verizon/ads/Configuration;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "vastSkipOffsetMin"

    .line 9084
    invoke-static {v0, v3, v2}, Lcom/verizon/ads/Configuration;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    .line 1507
    :cond_0
    iget v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->I:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private static synthetic a(Lcom/verizon/ads/vastcontroller/VASTParser$Button;Lcom/verizon/ads/vastcontroller/VASTParser$Button;)I
    .locals 0

    .line 2642
    iget p0, p0, Lcom/verizon/ads/vastcontroller/VASTParser$Button;->position:I

    iget p1, p1, Lcom/verizon/ads/vastcontroller/VASTParser$Button;->position:I

    sub-int/2addr p0, p1

    return p0
.end method

.method private static a(Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;)I
    .locals 3

    if-eqz p0, :cond_0

    .line 1853
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;->backgroundColor:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1855
    :try_start_0
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;->backgroundColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1857
    :catch_0
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid hex color format specified = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;->backgroundColor:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    :cond_0
    const/high16 p0, -0x1000000

    :goto_0
    return p0
.end method

.method private a(Ljava/lang/String;)I
    .locals 2

    .line 1339
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->d:Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->linearAd:Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;->duration:Ljava/lang/String;

    invoke-static {v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method static a(Ljava/lang/String;II)I
    .locals 2

    const-string v0, "%"

    .line 1346
    invoke-static {p0}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1347
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1351
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    .line 1352
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1354
    invoke-static {v0}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1355
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p0, p2

    int-to-float p1, p1

    mul-float p0, p0, p1

    float-to-int p2, p0

    goto :goto_0

    .line 1358
    :cond_0
    sget-object p1, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v0, "VAST time is missing percent value, parse value was: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1362
    :cond_1
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->b(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1366
    :catch_0
    sget-object p1, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "VAST time has invalid number format, parse value was: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return p2
.end method

.method static synthetic a()Lcom/verizon/ads/Logger;
    .locals 1

    .line 75
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    return-object v0
.end method

.method static synthetic a(Lcom/verizon/ads/vastcontroller/VASTVideoView;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->H:Ljava/io/File;

    return-object p1
.end method

.method private static a(Lcom/verizon/ads/vastcontroller/VASTParser$AdVerifications;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verizon/ads/vastcontroller/VASTParser$AdVerifications;",
            ")",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/verizonmedia/adsession/j;",
            ">;"
        }
    .end annotation

    .line 812
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    .line 814
    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTParser$AdVerifications;->verifications:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 815
    iget-object p0, p0, Lcom/verizon/ads/vastcontroller/VASTParser$AdVerifications;->verifications:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/vastcontroller/VASTParser$Verification;

    .line 816
    iget-object v2, v1, Lcom/verizon/ads/vastcontroller/VASTParser$Verification;->javaScriptResource:Lcom/verizon/ads/vastcontroller/VASTParser$JavaScriptResource;

    if-eqz v2, :cond_0

    .line 817
    iget-object v3, v2, Lcom/verizon/ads/vastcontroller/VASTParser$JavaScriptResource;->uri:Ljava/lang/String;

    invoke-static {v3}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/verizon/ads/vastcontroller/VASTParser$JavaScriptResource;->apiFramework:Ljava/lang/String;

    const-string v4, "omid"

    .line 818
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 820
    :try_start_0
    iget-object v3, v1, Lcom/verizon/ads/vastcontroller/VASTParser$Verification;->vendor:Ljava/lang/String;

    invoke-static {v3}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v1, Lcom/verizon/ads/vastcontroller/VASTParser$Verification;->verificationParameters:Ljava/lang/String;

    invoke-static {v3}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 821
    iget-object v3, v1, Lcom/verizon/ads/vastcontroller/VASTParser$Verification;->vendor:Ljava/lang/String;

    new-instance v4, Ljava/net/URL;

    iget-object v2, v2, Lcom/verizon/ads/vastcontroller/VASTParser$JavaScriptResource;->uri:Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/verizon/ads/vastcontroller/VASTParser$Verification;->verificationParameters:Ljava/lang/String;

    .line 822
    invoke-static {v3, v4, v1}, Lcom/iab/omid/library/verizonmedia/adsession/j;->a(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)Lcom/iab/omid/library/verizonmedia/adsession/j;

    move-result-object v1

    .line 821
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 825
    :cond_1
    new-instance v1, Ljava/net/URL;

    iget-object v2, v2, Lcom/verizon/ads/vastcontroller/VASTParser$JavaScriptResource;->uri:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 826
    invoke-static {v1}, Lcom/iab/omid/library/verizonmedia/adsession/j;->a(Ljava/net/URL;)Lcom/iab/omid/library/verizonmedia/adsession/j;

    move-result-object v1

    .line 825
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 830
    sget-object v2, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v3, "Error processing verification node."

    invoke-virtual {v2, v3, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private a(Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;",
            ")",
            "Ljava/util/List<",
            "Lcom/verizon/ads/vastcontroller/VASTParser$TrackingEvent;",
            ">;"
        }
    .end annotation

    .line 2052
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2054
    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 2055
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;

    .line 2056
    iget-object v3, v2, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;->creatives:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 2057
    iget-object v2, v2, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;->creatives:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    .line 2058
    iget-object v4, v3, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->linearAd:Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;

    if-eqz v4, :cond_1

    .line 2059
    iget-object v3, v3, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->linearAd:Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;

    iget-object v3, v3, Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    .line 2060
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_1

    .line 2063
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static synthetic a(Lcom/verizon/ads/vastcontroller/VASTVideoView;Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;)Ljava/util/List;
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic a(F)V
    .locals 2

    .line 1240
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->h:Lcom/iab/omid/library/verizonmedia/adsession/a/a;

    if-eqz v0, :cond_0

    .line 1242
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->a(F)V

    .line 1243
    sget-object p1, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v0, "Fired OMSDK volume change event."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 1245
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v1, "Error occurred firing OMSDK volume change event."

    invoke-virtual {v0, v1, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1515
    sget-object v0, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$xJeFjwsEFdK2KVfFDop0DGFamtk;->INSTANCE:Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$xJeFjwsEFdK2KVfFDop0DGFamtk;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private synthetic a(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 605
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->f:Lcom/verizon/ads/VideoPlayer;

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Lcom/verizon/ads/VideoPlayer;->setVolume(F)V

    return-void
.end method

.method private static synthetic a(Landroid/widget/ImageView;Lcom/verizon/ads/utils/HttpUtils$Response;)V
    .locals 0

    .line 2556
    iget-object p1, p1, Lcom/verizon/ads/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic a(Lcom/verizon/ads/VideoPlayer;)V
    .locals 2

    .line 1054
    iget-boolean v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->h:Lcom/iab/omid/library/verizonmedia/adsession/a/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1056
    :try_start_0
    iput-boolean v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->m:Z

    .line 1057
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->h:Lcom/iab/omid/library/verizonmedia/adsession/a/a;

    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getDuration()I

    move-result v1

    int-to-float v1, v1

    invoke-interface {p1}, Lcom/verizon/ads/VideoPlayer;->getVolume()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->a(FF)V

    .line 1058
    sget-object p1, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v0, "Fired OMSDK start event."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1060
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v1, "Error occurred firing OMSDK start event."

    invoke-virtual {v0, v1, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1065
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->updateComponentVisibility()V

    return-void
.end method

.method private synthetic a(Lcom/verizon/ads/utils/HttpUtils$Response;)V
    .locals 3

    .line 2436
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2437
    iget-object p1, p1, Lcom/verizon/ads/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2438
    new-instance p1, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$BC_l1cp6iGgp2wUNz58FFaYBg_s;

    invoke-direct {p1, p0}, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$BC_l1cp6iGgp2wUNz58FFaYBg_s;-><init>(Lcom/verizon/ads/vastcontroller/VASTVideoView;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "mmVastVideoView_companionImageView"

    .line 2449
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2451
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2455
    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->v:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->N:Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;

    iget-object v2, v2, Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;->staticResource:Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;

    invoke-static {v2}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2456
    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static synthetic a(Lcom/verizon/ads/vastcontroller/VASTParser$Background;Landroid/widget/ImageView;)V
    .locals 2

    .line 2552
    iget-object p0, p0, Lcom/verizon/ads/vastcontroller/VASTParser$Background;->staticResource:Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;

    iget-object p0, p0, Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;->uri:Ljava/lang/String;

    .line 2553
    invoke-static {p0}, Lcom/verizon/ads/utils/HttpUtils;->getBitmapFromGetRequest(Ljava/lang/String;)Lcom/verizon/ads/utils/HttpUtils$Response;

    move-result-object p0

    .line 2555
    iget v0, p0, Lcom/verizon/ads/utils/HttpUtils$Response;->code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 2556
    new-instance v0, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$-4fCt9KsgAz8onKWFKwB2QVwE_Q;

    invoke-direct {v0, p1, p0}, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$-4fCt9KsgAz8onKWFKwB2QVwE_Q;-><init>(Landroid/widget/ImageView;Lcom/verizon/ads/utils/HttpUtils$Response;)V

    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;",
            "Ljava/util/List<",
            "Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;",
            ">;)V"
        }
    .end annotation

    .line 729
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->g:Lcom/iab/omid/library/verizonmedia/adsession/b;

    if-eqz v0, :cond_0

    return-void

    .line 733
    :cond_0
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v1, "Preparing OMSDK"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 736
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;->adVerifications:Lcom/verizon/ads/vastcontroller/VASTParser$AdVerifications;

    .line 737
    invoke-static {p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Lcom/verizon/ads/vastcontroller/VASTParser$AdVerifications;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 739
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;

    .line 740
    iget-object p2, p2, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;->adVerifications:Lcom/verizon/ads/vastcontroller/VASTParser$AdVerifications;

    invoke-static {p2}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Lcom/verizon/ads/vastcontroller/VASTParser$AdVerifications;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 743
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 744
    sget-object p1, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string p2, "OMSDK is disabled - verification script resources is empty"

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 749
    :cond_2
    invoke-direct {p0, v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 756
    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->g:Lcom/iab/omid/library/verizonmedia/adsession/b;

    invoke-static {p1}, Lcom/iab/omid/library/verizonmedia/adsession/a;->a(Lcom/iab/omid/library/verizonmedia/adsession/b;)Lcom/iab/omid/library/verizonmedia/adsession/a;

    move-result-object p1

    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->i:Lcom/iab/omid/library/verizonmedia/adsession/a;

    .line 757
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->g:Lcom/iab/omid/library/verizonmedia/adsession/b;

    invoke-static {p1}, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->a(Lcom/iab/omid/library/verizonmedia/adsession/b;)Lcom/iab/omid/library/verizonmedia/adsession/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->h:Lcom/iab/omid/library/verizonmedia/adsession/a/a;

    .line 760
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->g:Lcom/iab/omid/library/verizonmedia/adsession/b;

    invoke-virtual {p1, p0}, Lcom/iab/omid/library/verizonmedia/adsession/b;->a(Landroid/view/View;)V

    .line 763
    sget-object p1, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string p2, "Starting the OMSDK Ad session."

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 764
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->g:Lcom/iab/omid/library/verizonmedia/adsession/b;

    invoke-virtual {p1}, Lcom/iab/omid/library/verizonmedia/adsession/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 767
    sget-object p2, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v0, "OMSDK is disabled - error initializing OMSDK Ad Session."

    invoke-virtual {p2, v0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 769
    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->g:Lcom/iab/omid/library/verizonmedia/adsession/b;

    .line 770
    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->i:Lcom/iab/omid/library/verizonmedia/adsession/a;

    .line 771
    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->h:Lcom/iab/omid/library/verizonmedia/adsession/a/a;

    return-void
.end method

.method private static a(Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;Z)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1922
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1924
    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;->clickTrackingUrls:Ljava/util/List;

    const-string/jumbo v2, "video click tracker"

    invoke-static {v0, v1, v2}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1927
    iget-object p0, p0, Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;->customClickUrls:Ljava/util/List;

    const-string p1, "custom click"

    invoke-static {v0, p0, p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 1930
    :cond_0
    invoke-static {v0}, Lcom/verizon/ads/vastcontroller/TrackingEvent;->fireEvents(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/vastcontroller/VASTVideoView;)V
    .locals 3

    .line 11697
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->i:Lcom/iab/omid/library/verizonmedia/adsession/a;

    if-eqz v0, :cond_0

    .line 11699
    :try_start_0
    invoke-virtual {v0}, Lcom/iab/omid/library/verizonmedia/adsession/a;->a()V

    .line 11700
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v1, "Fired OMSDK impression event."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 11702
    sget-object v1, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v2, "Error occurred firing OMSDK Impression event."

    invoke-virtual {v1, v2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11706
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->D:Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;->impressions:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 11707
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->G:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    invoke-virtual {v0}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->stopWatching()V

    .line 11709
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11711
    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->D:Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;

    iget-object v1, v1, Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;->impressions:Ljava/util/List;

    const-string v2, "impression"

    invoke-static {v0, v1, v2}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 11713
    iget-object p0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 11714
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;

    .line 11715
    iget-object v1, v1, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;->impressions:Ljava/util/List;

    const-string/jumbo v2, "wrapper immpression"

    invoke-static {v0, v1, v2}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 11719
    :cond_1
    invoke-static {v0}, Lcom/verizon/ads/vastcontroller/TrackingEvent;->fireEvents(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/vastcontroller/VASTVideoView;I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 12436
    :goto_0
    iget-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 12437
    iget-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 12439
    instance-of v3, v2, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    .line 12440
    check-cast v2, Landroid/widget/FrameLayout;

    .line 12441
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 12443
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v2, Lcom/verizon/ads/vastcontroller/ImageButton;

    if-eqz v3, :cond_0

    .line 12444
    check-cast v2, Lcom/verizon/ads/vastcontroller/ImageButton;

    .line 13055
    invoke-virtual {v2}, Lcom/verizon/ads/vastcontroller/ImageButton;->a()I

    move-result v3

    if-lt p1, v3, :cond_0

    .line 13056
    new-instance v3, Lcom/verizon/ads/vastcontroller/ImageButton$1;

    invoke-direct {v3, v2}, Lcom/verizon/ads/vastcontroller/ImageButton$1;-><init>(Lcom/verizon/ads/vastcontroller/ImageButton;)V

    invoke-static {v3}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/vastcontroller/VASTVideoView;II)V
    .locals 2

    .line 13455
    invoke-direct {p0, p2}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(I)I

    move-result p2

    if-le p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p1

    int-to-double p1, p2

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    .line 13468
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    :goto_0
    if-lez p1, :cond_1

    .line 13475
    iget p2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->L:I

    if-eq p1, p2, :cond_2

    .line 13476
    iput p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->L:I

    .line 13480
    new-instance p2, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$Q_CUEeyVlwHoaafwiM-9uKqDN30;

    invoke-direct {p2, p0, p1}, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$Q_CUEeyVlwHoaafwiM-9uKqDN30;-><init>(Lcom/verizon/ads/vastcontroller/VASTVideoView;I)V

    invoke-static {p2}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 13489
    iput-boolean p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->n:Z

    .line 13490
    new-instance p1, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$OTYmvzt5tUzwjV7e_DBHUJnLIpM;

    invoke-direct {p1, p0}, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$OTYmvzt5tUzwjV7e_DBHUJnLIpM;-><init>(Lcom/verizon/ads/vastcontroller/VASTVideoView;)V

    invoke-static {p1}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/vastcontroller/VASTVideoView;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Ljava/util/List;I)V

    return-void
.end method

.method private a(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/verizon/ads/vastcontroller/VASTParser$TrackingEvent;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1672
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1674
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/vastcontroller/VASTParser$TrackingEvent;

    if-eqz v1, :cond_0

    .line 1675
    iget-object v2, v1, Lcom/verizon/ads/vastcontroller/VASTParser$TrackingEvent;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->O:Ljava/util/Set;

    .line 1676
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1678
    iget-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->O:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1679
    new-instance v2, Lcom/verizon/ads/vastcontroller/VideoTrackingEvent;

    iget-object v3, v1, Lcom/verizon/ads/vastcontroller/VASTParser$TrackingEvent;->event:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    invoke-virtual {v3}, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lcom/verizon/ads/vastcontroller/VASTParser$TrackingEvent;->url:Ljava/lang/String;

    invoke-direct {v2, v3, v1, p2}, Lcom/verizon/ads/vastcontroller/VideoTrackingEvent;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1683
    :cond_1
    invoke-static {v0}, Lcom/verizon/ads/vastcontroller/TrackingEvent;->fireEvents(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/verizon/ads/vastcontroller/TrackingEvent;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1961
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

    .line 1962
    invoke-static {v0}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1963
    new-instance v1, Lcom/verizon/ads/vastcontroller/TrackingEvent;

    invoke-direct {v1, p2, v0}, Lcom/verizon/ads/vastcontroller/TrackingEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 1938
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1940
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1943
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;

    .line 1945
    iget-object v2, v1, Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;->clickTrackingUrls:Ljava/util/List;

    const-string/jumbo v3, "wrapper video click tracker"

    invoke-static {v0, v2, v3}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1949
    iget-object v1, v1, Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;->customClickUrls:Ljava/util/List;

    const-string/jumbo v2, "wrapper custom click tracker"

    invoke-static {v0, v1, v2}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 1953
    :cond_1
    invoke-static {v0}, Lcom/verizon/ads/vastcontroller/TrackingEvent;->fireEvents(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 1537
    new-instance v0, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$OGiWpkeP_VtQnSSw8pEx6Lcl79I;

    invoke-direct {v0, p0, p1}, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$OGiWpkeP_VtQnSSw8pEx6Lcl79I;-><init>(Lcom/verizon/ads/vastcontroller/VASTVideoView;Z)V

    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static a(Lcom/verizon/ads/vastcontroller/VASTParser$Icon;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 2690
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTParser$Icon;->program:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTParser$Icon;->program:Ljava/lang/String;

    const-string v1, "adchoices"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTParser$Icon;->iconClicks:Lcom/verizon/ads/vastcontroller/VASTParser$IconClicks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTParser$Icon;->iconClicks:Lcom/verizon/ads/vastcontroller/VASTParser$IconClicks;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$IconClicks;->clickThrough:Ljava/lang/String;

    .line 2691
    invoke-static {v0}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTParser$Icon;->staticResource:Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTParser$Icon;->staticResource:Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;->uri:Ljava/lang/String;

    .line 2692
    invoke-static {v0}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 v0, 0x3

    .line 2694
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2695
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Invalid adchoices icon: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 1992
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;->clickThrough:Ljava/lang/String;

    .line 1993
    invoke-static {v0}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;->customClickUrls:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private a(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/verizonmedia/adsession/j;",
            ">;)Z"
        }
    .end annotation

    .line 778
    invoke-static {}, Lcom/verizon/ads/omsdk/OMSDKPlugin;->getMeasurementService()Lcom/verizon/ads/omsdk/OpenMeasurementService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 780
    sget-object p1, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v0, "OMSDK is disabled"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return v1

    .line 786
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/verizon/ads/omsdk/OpenMeasurementService;->getPartner()Lcom/iab/omid/library/verizonmedia/adsession/i;

    move-result-object v2

    .line 787
    invoke-virtual {v0}, Lcom/verizon/ads/omsdk/OpenMeasurementService;->getOMSDKJS()Ljava/lang/String;

    move-result-object v0

    .line 786
    invoke-static {v2, v0, p1}, Lcom/iab/omid/library/verizonmedia/adsession/c;->a(Lcom/iab/omid/library/verizonmedia/adsession/i;Ljava/lang/String;Ljava/util/List;)Lcom/iab/omid/library/verizonmedia/adsession/c;

    move-result-object p1

    .line 789
    sget-object v0, Lcom/iab/omid/library/verizonmedia/adsession/e;->VIDEO:Lcom/iab/omid/library/verizonmedia/adsession/e;

    sget-object v2, Lcom/iab/omid/library/verizonmedia/adsession/g;->OTHER:Lcom/iab/omid/library/verizonmedia/adsession/g;

    sget-object v3, Lcom/iab/omid/library/verizonmedia/adsession/h;->NATIVE:Lcom/iab/omid/library/verizonmedia/adsession/h;

    .line 790
    invoke-static {v0, v2, v3, v3, v1}, Lcom/iab/omid/library/verizonmedia/adsession/AdSessionConfiguration;->createAdSessionConfiguration(Lcom/iab/omid/library/verizonmedia/adsession/e;Lcom/iab/omid/library/verizonmedia/adsession/g;Lcom/iab/omid/library/verizonmedia/adsession/h;Lcom/iab/omid/library/verizonmedia/adsession/h;Z)Lcom/iab/omid/library/verizonmedia/adsession/AdSessionConfiguration;

    move-result-object v0

    .line 793
    invoke-static {v0, p1}, Lcom/iab/omid/library/verizonmedia/adsession/b;->a(Lcom/iab/omid/library/verizonmedia/adsession/AdSessionConfiguration;Lcom/iab/omid/library/verizonmedia/adsession/c;)Lcom/iab/omid/library/verizonmedia/adsession/b;

    move-result-object p1

    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->g:Lcom/iab/omid/library/verizonmedia/adsession/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 803
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v2, "OMSDK is disabled - error initializing OMSDK Ad Session."

    invoke-virtual {v0, v2, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :catch_0
    move-exception p1

    .line 798
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v2, "OMSDK is disabled - error occurred loading the OMSDK JS"

    invoke-virtual {v0, v2, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method private static b(Ljava/lang/String;)I
    .locals 7

    .line 1377
    invoke-static {p0}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1378
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\."

    .line 1381
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1382
    array-length v1, v0

    const/4 v2, 0x2

    if-gt v1, v2, :cond_2

    .line 1384
    array-length v1, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    .line 1385
    aget-object p0, v0, v4

    .line 1386
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, ":"

    .line 1389
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1390
    array-length v5, v1

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 1391
    aget-object p0, v1, v4

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const v4, 0x36ee80

    mul-int p0, p0, v4

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const v4, 0xea60

    mul-int v3, v3, v4

    add-int/2addr p0, v3

    aget-object v1, v1, v2

    .line 1392
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr p0, v1

    add-int/2addr p0, v0

    goto :goto_2

    .line 1395
    :cond_1
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "VAST time has invalid HHMMSS format, parse value was: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 1400
    :cond_2
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "VAST time has invalid format, parse value was: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    :cond_3
    :goto_1
    const/4 p0, -0x1

    :goto_2
    return p0
.end method

.method static synthetic b(Lcom/verizon/ads/vastcontroller/VASTVideoView;)Lcom/verizon/ads/vastcontroller/VASTParser$Creative;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->d:Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    return-object p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 75
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->k:Ljava/lang/String;

    return-object v0
.end method

.method private synthetic b(I)V
    .locals 2

    .line 1482
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->B:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Landroid/view/View;)V

    .line 1483
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->B:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1484
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->B:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 5

    .line 2440
    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->h()V

    .line 2442
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->N:Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;

    iget-object p1, p1, Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;->companionClickThrough:Ljava/lang/String;

    invoke-static {p1}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2443
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->N:Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;->companionClickThrough:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/verizon/ads/support/utils/ActivityUtils;->startActivityFromUrl(Landroid/content/Context;Ljava/lang/String;)Z

    .line 9900
    :cond_0
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->N:Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;

    if-eqz p1, :cond_6

    .line 10020
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 10022
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 10025
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;

    .line 10026
    iget-object v2, v1, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;->creatives:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 10030
    iget-object v1, v1, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;->creatives:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    .line 10031
    iget-object v3, v2, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->companionAds:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 10035
    iget-object v2, v2, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->companionAds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;

    .line 10036
    iget-object v4, v3, Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;->htmlResource:Lcom/verizon/ads/vastcontroller/VASTParser$WebResource;

    if-nez v4, :cond_3

    iget-object v4, v3, Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;->iframeResource:Lcom/verizon/ads/vastcontroller/VASTParser$WebResource;

    if-nez v4, :cond_3

    iget-object v4, v3, Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;->staticResource:Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;

    if-nez v4, :cond_3

    .line 10039
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9904
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9906
    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->N:Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;

    iget-object v1, v1, Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;->companionClickTracking:Ljava/util/List;

    const-string v2, "tracking"

    invoke-static {v0, v1, v2}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 9908
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;

    .line 9910
    iget-object v1, v1, Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;->companionClickTracking:Ljava/util/List;

    const-string/jumbo v2, "wrapper tracking"

    invoke-static {v0, v1, v2}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 9913
    :cond_5
    invoke-static {v0}, Lcom/verizon/ads/vastcontroller/TrackingEvent;->fireEvents(Ljava/util/List;)V

    :cond_6
    return-void
.end method

.method static synthetic b(Lcom/verizon/ads/vastcontroller/VASTVideoView;I)V
    .locals 6

    .line 13611
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13613
    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->d:Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    iget-object v1, v1, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->linearAd:Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;

    iget-object v1, v1, Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    sget-object v2, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->progress:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    .line 13614
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 13617
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13620
    :cond_0
    sget-object v1, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->progress:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    .line 13621
    invoke-direct {p0, v1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v1

    .line 13624
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13627
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/vastcontroller/VASTParser$TrackingEvent;

    .line 13628
    move-object v2, v1

    check-cast v2, Lcom/verizon/ads/vastcontroller/VASTParser$ProgressEvent;

    .line 13630
    iget-object v3, v2, Lcom/verizon/ads/vastcontroller/VASTParser$ProgressEvent;->offset:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x3

    if-eq v3, v4, :cond_4

    .line 13632
    iget-object v4, v2, Lcom/verizon/ads/vastcontroller/VASTParser$ProgressEvent;->url:Ljava/lang/String;

    invoke-static {v4}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 13633
    iget-object v4, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->O:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-lt p1, v3, :cond_1

    .line 13690
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Ljava/util/List;I)V

    goto :goto_0

    .line 13638
    :cond_2
    invoke-static {v5}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13639
    sget-object v1, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Progress event could not be fired because the url is empty. offset = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/verizon/ads/vastcontroller/VASTParser$ProgressEvent;->offset:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 13644
    :cond_3
    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->O:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13648
    :cond_4
    invoke-static {v5}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13649
    sget-object v1, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Progress event could not be fired because the time offset is invalid. url = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/verizon/ads/vastcontroller/VASTParser$ProgressEvent;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", offset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/verizon/ads/vastcontroller/VASTParser$ProgressEvent;->offset:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 13654
    :cond_5
    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->O:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    return-void
.end method

.method static synthetic b(Lcom/verizon/ads/vastcontroller/VASTVideoView;II)V
    .locals 3

    .line 13545
    div-int/lit8 p2, p2, 0x4

    if-lt p1, p2, :cond_0

    .line 13547
    iget v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->J:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    .line 13548
    iput v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->J:I

    .line 13550
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->firstQuartile:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    invoke-direct {p0, v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Ljava/util/List;I)V

    .line 13553
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->d:Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->linearAd:Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    sget-object v1, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->firstQuartile:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    .line 13554
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 13553
    invoke-direct {p0, v0, p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Ljava/util/List;I)V

    .line 13557
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->h:Lcom/iab/omid/library/verizonmedia/adsession/a/a;

    if-eqz v0, :cond_0

    .line 13559
    :try_start_0
    invoke-virtual {v0}, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->a()V

    .line 13560
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v1, "Fired OMSDK Q1 event."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 13562
    sget-object v1, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v2, "Error occurred firing OMSDK Q1 event."

    invoke-virtual {v1, v2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    mul-int/lit8 v0, p2, 0x2

    if-lt p1, v0, :cond_1

    .line 13567
    iget v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->J:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 13568
    iput v1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->J:I

    .line 13570
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->midpoint:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    invoke-direct {p0, v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Ljava/util/List;I)V

    .line 13573
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->d:Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->linearAd:Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    sget-object v1, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->midpoint:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Ljava/util/List;I)V

    .line 13576
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->h:Lcom/iab/omid/library/verizonmedia/adsession/a/a;

    if-eqz v0, :cond_1

    .line 13578
    :try_start_1
    invoke-virtual {v0}, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->b()V

    .line 13579
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v1, "Fired OMSDK midpoint event."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 13581
    sget-object v1, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v2, "Error occurred firing OMSDK midpoint event."

    invoke-virtual {v1, v2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    const/4 v0, 0x3

    mul-int/lit8 p2, p2, 0x3

    if-lt p1, p2, :cond_2

    .line 13586
    iget p2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->J:I

    if-ge p2, v0, :cond_2

    .line 13587
    iput v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->J:I

    .line 13589
    sget-object p2, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->thirdQuartile:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    invoke-direct {p0, p2}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Ljava/util/List;I)V

    .line 13592
    iget-object p2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->d:Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    iget-object p2, p2, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->linearAd:Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;

    iget-object p2, p2, Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->thirdQuartile:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    .line 13593
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 13592
    invoke-direct {p0, p2, p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Ljava/util/List;I)V

    .line 13596
    iget-object p0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->h:Lcom/iab/omid/library/verizonmedia/adsession/a/a;

    if-eqz p0, :cond_2

    .line 13598
    :try_start_2
    invoke-virtual {p0}, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->c()V

    .line 13599
    sget-object p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string p1, "Fired OMSDK Q3 event."

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception p0

    .line 13601
    sget-object p1, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string p2, "Error occurred firing OMSDK q3 event."

    invoke-virtual {p1, p2, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private synthetic b(Z)V
    .locals 0

    .line 1537
    invoke-virtual {p0, p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->setKeepScreenOn(Z)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 1662
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->B:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1663
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->x:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1664
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->x:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1665
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->x:Landroid/widget/ImageView;

    new-instance v1, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$3e7FjZd-mRvi3H3-6FCmL7zxpk4;

    invoke-direct {v1, p0}, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$3e7FjZd-mRvi3H3-6FCmL7zxpk4;-><init>(Lcom/verizon/ads/vastcontroller/VASTVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 0

    .line 1665
    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->d()V

    return-void
.end method

.method static synthetic c(Lcom/verizon/ads/vastcontroller/VASTVideoView;)V
    .locals 1

    .line 11770
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->f:Lcom/verizon/ads/VideoPlayer;

    invoke-interface {v0}, Lcom/verizon/ads/VideoPlayer;->play()V

    .line 11772
    new-instance v0, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$NBs3xVdqj2ttG_RSnp4sSOOXMoE;

    invoke-direct {v0, p0}, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$NBs3xVdqj2ttG_RSnp4sSOOXMoE;-><init>(Lcom/verizon/ads/vastcontroller/VASTVideoView;)V

    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lcom/verizon/ads/vastcontroller/VASTVideoView;)Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->N:Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 1750
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->h:Lcom/iab/omid/library/verizonmedia/adsession/a/a;

    if-eqz v0, :cond_0

    .line 1752
    :try_start_0
    invoke-virtual {v0}, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->g()V

    .line 1753
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v1, "Fired OMSDK skipped event."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1755
    sget-object v1, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v2, "Error occurred firing OMSDK skipped event."

    invoke-virtual {v1, v2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1759
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->d:Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    if-eqz v0, :cond_1

    .line 1760
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->skip:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    invoke-direct {p0, v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Ljava/util/List;I)V

    .line 1761
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->d:Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->linearAd:Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    sget-object v2, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->skip:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Ljava/util/List;I)V

    .line 1764
    :cond_1
    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->e()V

    return-void
.end method

.method private static synthetic d(Landroid/view/View;)V
    .locals 1

    .line 1518
    sget-object p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v0, "Clicked on an unclickable region."

    invoke-virtual {p0, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/verizon/ads/vastcontroller/VASTVideoView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->C:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private e()V
    .locals 4

    .line 1788
    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->f()V

    const/4 v0, 0x2

    .line 1790
    iput v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->q:I

    .line 1792
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->B:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1793
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->y:Lcom/verizon/ads/vastcontroller/AdChoicesButton;

    invoke-virtual {v0}, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->a()V

    .line 1795
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->N:Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1796
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->z:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1797
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->A:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 1798
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1799
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 1802
    :goto_0
    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1803
    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1805
    instance-of v3, v1, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    .line 1806
    check-cast v1, Landroid/widget/FrameLayout;

    .line 1808
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1811
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1816
    :cond_1
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->updateComponentVisibility()V

    return-void

    .line 1818
    :cond_2
    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j()V

    return-void
.end method

.method private synthetic e(Landroid/view/View;)V
    .locals 2

    .line 582
    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->h()V

    const/4 p1, 0x1

    .line 10726
    iput p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->q:I

    .line 10737
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->updateComponentVisibility()V

    .line 10739
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->z:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10740
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->A:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 10741
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->w:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10742
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->x:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10743
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->y:Lcom/verizon/ads/vastcontroller/AdChoicesButton;

    .line 11067
    invoke-virtual {p1}, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->a()V

    .line 11068
    iput v1, p1, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->f:I

    .line 11069
    iput v1, p1, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->e:I

    .line 11070
    sget-object v0, Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;->READY:Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

    iput-object v0, p1, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->d:Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

    .line 10744
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->f:Lcom/verizon/ads/VideoPlayer;

    invoke-interface {p1}, Lcom/verizon/ads/VideoPlayer;->replay()V

    return-void
.end method

.method private f()V
    .locals 2

    .line 1825
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->g:Lcom/iab/omid/library/verizonmedia/adsession/b;

    if-eqz v0, :cond_0

    .line 1826
    invoke-virtual {v0}, Lcom/iab/omid/library/verizonmedia/adsession/b;->b()V

    const/4 v0, 0x0

    .line 1827
    iput-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->g:Lcom/iab/omid/library/verizonmedia/adsession/b;

    .line 1828
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v1, "Finished OMSDK Ad Session."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic f(Landroid/view/View;)V
    .locals 0

    .line 541
    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j()V

    return-void
.end method

.method static synthetic f(Lcom/verizon/ads/vastcontroller/VASTVideoView;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->n:Z

    return p0
.end method

.method static synthetic g(Lcom/verizon/ads/vastcontroller/VASTVideoView;)Lcom/verizon/ads/vastcontroller/AdChoicesButton;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->y:Lcom/verizon/ads/vastcontroller/AdChoicesButton;

    return-object p0
.end method

.method private g()Z
    .locals 2

    .line 1835
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private h()V
    .locals 1

    .line 1867
    new-instance v0, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$DAsSF97v6ppTfyRDpJ4AQgOsttM;

    invoke-direct {v0, p0}, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$DAsSF97v6ppTfyRDpJ4AQgOsttM;-><init>(Lcom/verizon/ads/vastcontroller/VASTVideoView;)V

    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static i()Z
    .locals 3

    const-string v0, "com.verizon.ads"

    const-string v1, "autoPlayAudioEnabled"

    const/4 v2, 0x0

    .line 2091
    invoke-static {v0, v1, v2}, Lcom/verizon/ads/Configuration;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private j()V
    .locals 3

    .line 2097
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->d:Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    if-eqz v0, :cond_0

    .line 2098
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->closeLinear:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    invoke-direct {p0, v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Ljava/util/List;I)V

    .line 2099
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->d:Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->linearAd:Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    sget-object v2, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->closeLinear:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Ljava/util/List;I)V

    .line 2102
    :cond_0
    new-instance v0, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$YgKGMf6P_AusLo8Ial0bSKQEhJk;

    invoke-direct {v0, p0}, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$YgKGMf6P_AusLo8Ial0bSKQEhJk;-><init>(Lcom/verizon/ads/vastcontroller/VASTVideoView;)V

    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private k()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 2151
    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->g()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->K:Z

    if-nez v0, :cond_0

    .line 2152
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x3

    .line 2153
    sget v2, Lcom/verizon/ads/vastcontroller/R$id;->vas_vast_video_control_buttons:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 2156
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_0
    return-object v0
.end method

.method private l()V
    .locals 14

    .line 2165
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->D:Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;->creatives:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 2166
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->D:Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;->creatives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    .line 2167
    iget-object v2, v1, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->linearAd:Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;

    if-eqz v2, :cond_0

    .line 2168
    iget-object v2, v1, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->linearAd:Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;

    iget-object v2, v2, Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;->mediaFiles:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    .line 9202
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_5

    .line 9206
    :cond_1
    new-instance v4, Lcom/verizon/ads/EnvironmentInfo;

    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/verizon/ads/EnvironmentInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/verizon/ads/EnvironmentInfo;->getDeviceInfo()Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    const/16 v5, 0x320

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    .line 9213
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v7, v6, :cond_2

    const/16 v5, 0x4b0

    const-string/jumbo v4, "wifi"

    goto :goto_0

    .line 9216
    :cond_2
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-nez v7, :cond_3

    .line 9217
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    const/16 v7, 0xd

    if-ne v4, v7, :cond_3

    const-string v4, "lte"

    goto :goto_0

    :cond_3
    const-string v4, "default"

    :goto_0
    const/4 v7, 0x3

    .line 9223
    invoke-static {v7}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v8

    const/16 v9, 0x190

    const/4 v10, 0x0

    if-eqz v8, :cond_4

    .line 9224
    sget-object v8, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v6

    const/4 v11, 0x2

    aput-object v4, v7, v11

    const-string v4, "Using bit rate range %d to %d inclusive for network connectivity type = %s"

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 9230
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/verizon/ads/vastcontroller/VASTParser$MediaFile;

    .line 9231
    iget-object v7, v4, Lcom/verizon/ads/vastcontroller/VASTParser$MediaFile;->url:Ljava/lang/String;

    invoke-static {v7}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 9232
    iget-object v7, v4, Lcom/verizon/ads/vastcontroller/VASTParser$MediaFile;->delivery:Ljava/lang/String;

    const-string v8, "progressive"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 9233
    iget-object v8, v4, Lcom/verizon/ads/vastcontroller/VASTParser$MediaFile;->contentType:Ljava/lang/String;

    const-string/jumbo v11, "video/mp4"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    .line 9234
    iget v11, v4, Lcom/verizon/ads/vastcontroller/VASTParser$MediaFile;->bitrate:I

    if-lt v11, v9, :cond_6

    iget v11, v4, Lcom/verizon/ads/vastcontroller/VASTParser$MediaFile;->bitrate:I

    if-gt v11, v5, :cond_6

    const/4 v11, 0x1

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    :goto_2
    if-eqz v3, :cond_8

    .line 9236
    iget v12, v3, Lcom/verizon/ads/vastcontroller/VASTParser$MediaFile;->bitrate:I

    iget v13, v4, Lcom/verizon/ads/vastcontroller/VASTParser$MediaFile;->bitrate:I

    if-ge v12, v13, :cond_7

    goto :goto_3

    :cond_7
    const/4 v12, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v12, 0x1

    :goto_4
    if-eqz v7, :cond_5

    if-eqz v8, :cond_5

    if-eqz v11, :cond_5

    if-eqz v12, :cond_5

    move-object v3, v4

    goto :goto_1

    :cond_9
    :goto_5
    if-eqz v3, :cond_0

    .line 2170
    iput-object v3, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->M:Lcom/verizon/ads/vastcontroller/VASTParser$MediaFile;

    .line 2171
    iput-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->d:Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    :cond_a
    return-void
.end method

.method public static synthetic lambda$-4fCt9KsgAz8onKWFKwB2QVwE_Q(Landroid/widget/ImageView;Lcom/verizon/ads/utils/HttpUtils$Response;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Landroid/widget/ImageView;Lcom/verizon/ads/utils/HttpUtils$Response;)V

    return-void
.end method

.method public static synthetic lambda$3e7FjZd-mRvi3H3-6FCmL7zxpk4(Lcom/verizon/ads/vastcontroller/VASTVideoView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$4C5Nnr3ePkEzEnHdxemFld1XHPE(Lcom/verizon/ads/vastcontroller/VASTParser$Button;Lcom/verizon/ads/vastcontroller/VASTParser$Button;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Lcom/verizon/ads/vastcontroller/VASTParser$Button;Lcom/verizon/ads/vastcontroller/VASTParser$Button;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$5YgPC_R6mEu55nWsYQLBtia6JTU(Lcom/verizon/ads/vastcontroller/VASTVideoView;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic lambda$88aWy-iw91A0uxa_gMY1pw8BKCw(Lcom/verizon/ads/vastcontroller/VASTVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->x()V

    return-void
.end method

.method public static synthetic lambda$BC_l1cp6iGgp2wUNz58FFaYBg_s(Lcom/verizon/ads/vastcontroller/VASTVideoView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$DAsSF97v6ppTfyRDpJ4AQgOsttM(Lcom/verizon/ads/vastcontroller/VASTVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->t()V

    return-void
.end method

.method public static synthetic lambda$GVMkCMm8tzuXxWngpU-C1alnXMY(Lcom/verizon/ads/vastcontroller/VASTVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->s()V

    return-void
.end method

.method public static synthetic lambda$NBs3xVdqj2ttG_RSnp4sSOOXMoE(Lcom/verizon/ads/vastcontroller/VASTVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->u()V

    return-void
.end method

.method public static synthetic lambda$Ne9u9kQnNdQhyWkjp23y4zcd5v4(Lcom/verizon/ads/vastcontroller/VASTVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->f()V

    return-void
.end method

.method public static synthetic lambda$NnEQB1t2CwL-lnovSc45b6InEIw(Lcom/verizon/ads/vastcontroller/VASTVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->v()V

    return-void
.end method

.method public static synthetic lambda$OGiWpkeP_VtQnSSw8pEx6Lcl79I(Lcom/verizon/ads/vastcontroller/VASTVideoView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->b(Z)V

    return-void
.end method

.method public static synthetic lambda$OTYmvzt5tUzwjV7e_DBHUJnLIpM(Lcom/verizon/ads/vastcontroller/VASTVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->c()V

    return-void
.end method

.method public static synthetic lambda$OtC2eed093xBFDeq4mJ49WDrjYE(Lcom/verizon/ads/vastcontroller/VASTVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->w()V

    return-void
.end method

.method public static synthetic lambda$Q_CUEeyVlwHoaafwiM-9uKqDN30(Lcom/verizon/ads/vastcontroller/VASTVideoView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->b(I)V

    return-void
.end method

.method public static synthetic lambda$VtmKrh7QihhLQXN9HcKiGBa9OuA(Lcom/verizon/ads/vastcontroller/VASTVideoView;Lcom/verizon/ads/utils/HttpUtils$Response;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Lcom/verizon/ads/utils/HttpUtils$Response;)V

    return-void
.end method

.method public static synthetic lambda$YgKGMf6P_AusLo8Ial0bSKQEhJk(Lcom/verizon/ads/vastcontroller/VASTVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->q()V

    return-void
.end method

.method public static synthetic lambda$_a2PhojU4cXUjGR9IJG30RaPfvA(Lcom/verizon/ads/vastcontroller/VASTVideoView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->f(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$_qSwUYp6KLtcl0Gr0ZETXE9F6QQ(Lcom/verizon/ads/vastcontroller/VASTVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->r()V

    return-void
.end method

.method public static synthetic lambda$eQvpOrBb-eKvm6AWKVTOWFp2h3Q(Lcom/verizon/ads/vastcontroller/VASTVideoView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->e(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$s-3SmqJeFKMueTHnsa_XrumCW5Q(Lcom/verizon/ads/vastcontroller/VASTVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->p()V

    return-void
.end method

.method public static synthetic lambda$vs4kyFOfi2D2PVj2cqz9UaYWgzE(Lcom/verizon/ads/vastcontroller/VASTParser$Background;Landroid/widget/ImageView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Lcom/verizon/ads/vastcontroller/VASTParser$Background;Landroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic lambda$vzb8kVNXuL7OQ_MHZp_zHYABJvs(Lcom/verizon/ads/vastcontroller/VASTVideoView;Lcom/verizon/ads/VideoPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Lcom/verizon/ads/VideoPlayer;)V

    return-void
.end method

.method public static synthetic lambda$wNclKFwydahnzifS9WpgZkfPD-0(Lcom/verizon/ads/vastcontroller/VASTVideoView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(F)V

    return-void
.end method

.method public static synthetic lambda$xJeFjwsEFdK2KVfFDop0DGFamtk(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->d(Landroid/view/View;)V

    return-void
.end method

.method private m()V
    .locals 6

    .line 2352
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->D:Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;->creatives:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 2353
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->D:Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;->creatives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    .line 2354
    iget-object v2, v1, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->companionAds:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->companionAds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2355
    iget-object v2, v1, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->companionAds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;

    if-eqz v3, :cond_1

    .line 2356
    iget-object v4, v3, Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;->width:Ljava/lang/Integer;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;->width:Ljava/lang/Integer;

    .line 2357
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x12c

    if-lt v4, v5, :cond_1

    iget-object v4, v3, Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;->height:Ljava/lang/Integer;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;->height:Ljava/lang/Integer;

    .line 2358
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xfa

    if-lt v4, v5, :cond_1

    .line 2360
    iget-object v4, v3, Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;->staticResource:Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;->staticResource:Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;

    iget-object v4, v4, Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;->uri:Ljava/lang/String;

    .line 2361
    invoke-static {v4}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/verizon/ads/vastcontroller/VASTVideoView;->l:Ljava/util/List;

    iget-object v5, v3, Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;->staticResource:Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;

    iget-object v5, v5, Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;->creativeType:Ljava/lang/String;

    .line 2362
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2367
    iput-object v3, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->N:Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;

    .line 2379
    :cond_2
    iget-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->N:Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->d:Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    if-ne v1, v2, :cond_3

    goto :goto_0

    .line 2385
    :cond_3
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->N:Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;

    if-eqz v0, :cond_4

    .line 2425
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->N:Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;->staticResource:Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->N:Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;->staticResource:Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;->uri:Ljava/lang/String;

    .line 2426
    invoke-static {v0}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2428
    new-instance v0, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$s-3SmqJeFKMueTHnsa_XrumCW5Q;

    invoke-direct {v0, p0}, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$s-3SmqJeFKMueTHnsa_XrumCW5Q;-><init>(Lcom/verizon/ads/vastcontroller/VASTVideoView;)V

    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method private n()V
    .locals 8

    .line 2641
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->D:Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;->mmExtension:Lcom/verizon/ads/vastcontroller/VASTParser$MMExtension;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->D:Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;->mmExtension:Lcom/verizon/ads/vastcontroller/VASTParser$MMExtension;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$MMExtension;->buttons:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2642
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->D:Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;->mmExtension:Lcom/verizon/ads/vastcontroller/VASTParser$MMExtension;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$MMExtension;->buttons:Ljava/util/List;

    sget-object v1, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$4C5Nnr3ePkEzEnHdxemFld1XHPE;->INSTANCE:Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$4C5Nnr3ePkEzEnHdxemFld1XHPE;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 2646
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/verizon/ads/vastcontroller/R$dimen;->vas_ad_button_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2647
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/verizon/ads/vastcontroller/R$dimen;->vas_ad_button_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2649
    iget-object v3, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->D:Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;

    iget-object v3, v3, Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;->mmExtension:Lcom/verizon/ads/vastcontroller/VASTParser$MMExtension;

    iget-object v3, v3, Lcom/verizon/ads/vastcontroller/VASTParser$MMExtension;->buttons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/verizon/ads/vastcontroller/VASTParser$Button;

    const/4 v5, 0x3

    if-ge v0, v5, :cond_2

    .line 2652
    iget-object v5, v4, Lcom/verizon/ads/vastcontroller/VASTParser$Button;->staticResource:Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/verizon/ads/vastcontroller/VASTParser$Button;->staticResource:Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;

    iget-object v5, v5, Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;->uri:Ljava/lang/String;

    invoke-static {v5}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/verizon/ads/vastcontroller/VASTParser$Button;->staticResource:Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;

    iget-object v5, v5, Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;->creativeType:Ljava/lang/String;

    .line 2653
    invoke-static {v5}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/verizon/ads/vastcontroller/VASTParser$Button;->staticResource:Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;

    iget-object v5, v5, Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;->creativeType:Ljava/lang/String;

    .line 2654
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "image/png"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2658
    new-instance v5, Lcom/verizon/ads/vastcontroller/ImageButton;

    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getDuration()I

    move-result v7

    invoke-direct {v5, v6, v4, v7}, Lcom/verizon/ads/vastcontroller/ImageButton;-><init>(Landroid/content/Context;Lcom/verizon/ads/vastcontroller/VASTParser$Button;I)V

    .line 2659
    iget-object v4, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->s:Lcom/verizon/ads/vastcontroller/VASTVideoView$InteractionListener;

    invoke-virtual {v5, v4}, Lcom/verizon/ads/vastcontroller/ImageButton;->setInteractionListener(Lcom/verizon/ads/vastcontroller/VASTVideoView$InteractionListener;)V

    .line 2660
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "mmVastVideoView_mmExtensionButton_"

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/verizon/ads/vastcontroller/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 2662
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2664
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2667
    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2669
    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->g()Z

    move-result v5

    .line 2670
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v5, v5

    invoke-direct {v6, v1, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 2673
    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->g()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2675
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/verizon/ads/vastcontroller/R$dimen;->vas_ad_button_padding_left:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2678
    :cond_1
    iget-object v5, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private o()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/verizon/ads/vastcontroller/VASTParser$Icon;",
            ">;"
        }
    .end annotation

    .line 2707
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2709
    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 2711
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;

    .line 2712
    iget-object v3, v2, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;->creatives:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 2714
    iget-object v2, v2, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;->creatives:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    .line 2715
    iget-object v4, v3, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->linearAd:Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->linearAd:Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;

    iget-object v4, v4, Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;->icons:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 2717
    iget-object v3, v3, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->linearAd:Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;

    iget-object v3, v3, Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;->icons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/verizon/ads/vastcontroller/VASTParser$Icon;

    .line 2718
    invoke-static {v4}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Lcom/verizon/ads/vastcontroller/VASTParser$Icon;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2719
    iget-object v5, v4, Lcom/verizon/ads/vastcontroller/VASTParser$Icon;->program:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2728
    :cond_3
    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->d:Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->d:Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    iget-object v1, v1, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->linearAd:Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;

    iget-object v1, v1, Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;->icons:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 2730
    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->d:Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    iget-object v1, v1, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->linearAd:Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;

    iget-object v1, v1, Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;->icons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/verizon/ads/vastcontroller/VASTParser$Icon;

    .line 2731
    invoke-static {v2}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Lcom/verizon/ads/vastcontroller/VASTParser$Icon;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2732
    iget-object v3, v2, Lcom/verizon/ads/vastcontroller/VASTParser$Icon;->program:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method private synthetic p()V
    .locals 3

    .line 2430
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->N:Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;->staticResource:Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;->uri:Ljava/lang/String;

    .line 2431
    invoke-static {v0}, Lcom/verizon/ads/utils/HttpUtils;->getBitmapFromGetRequest(Ljava/lang/String;)Lcom/verizon/ads/utils/HttpUtils$Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2433
    iget v1, v0, Lcom/verizon/ads/utils/HttpUtils$Response;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 2434
    new-instance v1, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$VtmKrh7QihhLQXN9HcKiGBa9OuA;

    invoke-direct {v1, p0, v0}, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$VtmKrh7QihhLQXN9HcKiGBa9OuA;-><init>(Lcom/verizon/ads/vastcontroller/VASTVideoView;Lcom/verizon/ads/utils/HttpUtils$Response;)V

    invoke-static {v1}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic q()V
    .locals 1

    .line 2104
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->s:Lcom/verizon/ads/vastcontroller/VASTVideoView$InteractionListener;

    if-eqz v0, :cond_0

    .line 2105
    invoke-interface {v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView$InteractionListener;->close()V

    :cond_0
    return-void
.end method

.method private synthetic r()V
    .locals 1

    .line 1891
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->t:Lcom/verizon/ads/vastcontroller/VASTVideoView$PlaybackListener;

    if-eqz v0, :cond_0

    .line 1892
    invoke-interface {v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView$PlaybackListener;->onComplete()V

    :cond_0
    return-void
.end method

.method private synthetic s()V
    .locals 1

    .line 1880
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->s:Lcom/verizon/ads/vastcontroller/VASTVideoView$InteractionListener;

    if-eqz v0, :cond_0

    .line 1881
    invoke-interface {v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView$InteractionListener;->onAdLeftApplication()V

    :cond_0
    return-void
.end method

.method private synthetic t()V
    .locals 1

    .line 1869
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->s:Lcom/verizon/ads/vastcontroller/VASTVideoView$InteractionListener;

    if-eqz v0, :cond_0

    .line 1870
    invoke-interface {v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView$InteractionListener;->onClicked()V

    :cond_0
    return-void
.end method

.method private synthetic u()V
    .locals 3

    .line 1774
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->h:Lcom/iab/omid/library/verizonmedia/adsession/a/a;

    if-eqz v0, :cond_0

    .line 1776
    :try_start_0
    invoke-virtual {v0}, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->f()V

    .line 1777
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v1, "Fired OMSDK resume event."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 1779
    sget-object v1, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v2, "Error occurred firing OMSDK resume event."

    invoke-virtual {v1, v2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private synthetic v()V
    .locals 3

    .line 1118
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->h:Lcom/iab/omid/library/verizonmedia/adsession/a/a;

    if-eqz v0, :cond_0

    .line 1120
    :try_start_0
    invoke-virtual {v0}, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->d()V

    .line 1121
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v1, "Fired OMSDK complete event."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1123
    sget-object v1, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v2, "Error occurred firing OMSDK complete event."

    invoke-virtual {v1, v2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1127
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->e()V

    const/4 v0, 0x0

    .line 1128
    invoke-virtual {p0, v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->setKeepScreenOn(Z)V

    return-void
.end method

.method private synthetic w()V
    .locals 3

    .line 1086
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->h:Lcom/iab/omid/library/verizonmedia/adsession/a/a;

    if-eqz v0, :cond_0

    .line 1088
    :try_start_0
    invoke-virtual {v0}, Lcom/iab/omid/library/verizonmedia/adsession/a/a;->e()V

    .line 1089
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v1, "Fired OMSDK pause event."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 1091
    sget-object v1, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v2, "Error occurred firing OMSDK pause event."

    invoke-virtual {v1, v2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private synthetic x()V
    .locals 4

    .line 990
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->d:Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->linearAd:Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;->skipOffset:Ljava/lang/String;

    .line 991
    invoke-direct {p0, v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->I:I

    .line 993
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->h:Lcom/iab/omid/library/verizonmedia/adsession/a/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 996
    :try_start_0
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getDuration()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    sget-object v2, Lcom/iab/omid/library/verizonmedia/adsession/a/b;->STANDALONE:Lcom/iab/omid/library/verizonmedia/adsession/a/b;

    .line 995
    invoke-static {v0, v1, v2}, Lcom/iab/omid/library/verizonmedia/adsession/a/c;->a(FZLcom/iab/omid/library/verizonmedia/adsession/a/b;)Lcom/iab/omid/library/verizonmedia/adsession/a/c;

    move-result-object v0

    .line 997
    iget-object v2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->i:Lcom/iab/omid/library/verizonmedia/adsession/a;

    invoke-virtual {v2, v0}, Lcom/iab/omid/library/verizonmedia/adsession/a;->a(Lcom/iab/omid/library/verizonmedia/adsession/a/c;)V

    .line 999
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v2, "Fired OMSDK loaded event."

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1001
    sget-object v2, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v3, "Error recording load event with OMSDK."

    invoke-virtual {v2, v3, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1008
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->o:Z

    if-nez v0, :cond_1

    .line 1009
    iput-boolean v1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->o:Z

    .line 1011
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->r:Lcom/verizon/ads/vastcontroller/VASTVideoView$LoadListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1012
    invoke-interface {v0, v1}, Lcom/verizon/ads/vastcontroller/VASTVideoView$LoadListener;->onComplete(Lcom/verizon/ads/ErrorInfo;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .line 919
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->e:Lcom/verizon/ads/VideoPlayerView;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->f:Lcom/verizon/ads/VideoPlayer;

    invoke-interface {v0}, Lcom/verizon/ads/VideoPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 929
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->d:Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->d:Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->linearAd:Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;

    if-nez v0, :cond_0

    goto :goto_0

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->d:Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->linearAd:Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;->duration:Ljava/lang/String;

    invoke-static {v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->b(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public load(Lcom/verizon/ads/vastcontroller/VASTVideoView$LoadListener;I)V
    .locals 12

    .line 649
    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->r:Lcom/verizon/ads/vastcontroller/VASTVideoView$LoadListener;

    .line 652
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->M:Lcom/verizon/ads/vastcontroller/VASTParser$MediaFile;

    if-eqz v0, :cond_9

    .line 653
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 655
    sget-object p2, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v0, "Cannot access video cache directory. Storage is not available."

    invoke-virtual {p2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 657
    new-instance p2, Lcom/verizon/ads/ErrorInfo;

    sget-object v2, Lcom/verizon/ads/vastcontroller/VASTVideoView;->k:Ljava/lang/String;

    invoke-direct {p2, v2, v0, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, p2}, Lcom/verizon/ads/vastcontroller/VASTVideoView$LoadListener;->onComplete(Lcom/verizon/ads/ErrorInfo;)V

    :cond_0
    return-void

    .line 664
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_vasads_video_cache"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 666
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 669
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 672
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v3, "Found existing video cache directory."

    invoke-virtual {v0, v3}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 674
    :cond_2
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v3, "Created video cache directory."

    invoke-virtual {v0, v3}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 679
    :cond_3
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 682
    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_5

    aget-object v6, v0, v5

    .line 683
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 684
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    .line 687
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v7

    const-wide/32 v7, 0x2932e00

    cmp-long v11, v9, v7

    if-lez v11, :cond_4

    .line 688
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_4

    .line 691
    sget-object v7, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v6, v8, v3

    const-string v6, "Failed to deleted expired video: %s"

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4843
    :cond_5
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->M:Lcom/verizon/ads/vastcontroller/VASTParser$MediaFile;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$MediaFile;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v1, Lcom/verizon/ads/vastcontroller/VASTVideoView$1;

    invoke-direct {v1, p0, p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView$1;-><init>(Lcom/verizon/ads/vastcontroller/VASTVideoView;Lcom/verizon/ads/vastcontroller/VASTVideoView$LoadListener;)V

    invoke-static {v0, p2, v2, v1}, Lcom/verizon/ads/utils/IOUtils;->downloadFile(Ljava/lang/String;Ljava/lang/Integer;Ljava/io/File;Lcom/verizon/ads/utils/IOUtils$DownloadListener;)V

    .line 701
    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->n()V

    .line 5542
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->D:Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;

    iget-object p1, p1, Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;->mmExtension:Lcom/verizon/ads/vastcontroller/VASTParser$MMExtension;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->D:Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;

    iget-object p1, p1, Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;->mmExtension:Lcom/verizon/ads/vastcontroller/VASTParser$MMExtension;

    iget-object p1, p1, Lcom/verizon/ads/vastcontroller/VASTParser$MMExtension;->background:Lcom/verizon/ads/vastcontroller/VASTParser$Background;

    if-eqz p1, :cond_6

    .line 5543
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->D:Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;

    iget-object p1, p1, Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;->mmExtension:Lcom/verizon/ads/vastcontroller/VASTParser$MMExtension;

    iget-object p1, p1, Lcom/verizon/ads/vastcontroller/VASTParser$MMExtension;->background:Lcom/verizon/ads/vastcontroller/VASTParser$Background;

    .line 5544
    iget-object p2, p1, Lcom/verizon/ads/vastcontroller/VASTParser$Background;->staticResource:Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;

    if-eqz p2, :cond_6

    iget-object p2, p1, Lcom/verizon/ads/vastcontroller/VASTParser$Background;->staticResource:Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;

    iget-object p2, p2, Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;->uri:Ljava/lang/String;

    invoke-static {p2}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 5545
    new-instance p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v0, "mmVastVideoView_backgroundImageView"

    .line 5546
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 5547
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->u:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 5548
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->u:Landroid/widget/FrameLayout;

    iget-object v1, p1, Lcom/verizon/ads/vastcontroller/VASTParser$Background;->staticResource:Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;

    invoke-static {v1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 5550
    new-instance v0, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$vs4kyFOfi2D2PVj2cqz9UaYWgzE;

    invoke-direct {v0, p1, p2}, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$vs4kyFOfi2D2PVj2cqz9UaYWgzE;-><init>(Lcom/verizon/ads/vastcontroller/VASTParser$Background;Landroid/widget/ImageView;)V

    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 707
    :cond_6
    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->m()V

    .line 6187
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 6190
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    .line 6191
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x96

    invoke-static {v1, v2}, Lcom/verizon/ads/support/utils/ViewUtils;->convertPixelsToDips(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {p2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 6193
    invoke-static {p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Landroid/view/View;)V

    .line 6195
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->e:Lcom/verizon/ads/VideoPlayerView;

    invoke-virtual {v0, p1, p2}, Lcom/verizon/ads/VideoPlayerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6527
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->p:Ljava/util/Map;

    if-nez p1, :cond_7

    .line 6528
    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->o()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->p:Ljava/util/Map;

    .line 6531
    :cond_7
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->p:Ljava/util/Map;

    const-string p2, "adchoices"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/verizon/ads/vastcontroller/VASTParser$Icon;

    .line 711
    iget-object p2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->y:Lcom/verizon/ads/vastcontroller/AdChoicesButton;

    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->d:Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->linearAd:Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;->duration:Ljava/lang/String;

    invoke-static {v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->b(Ljava/lang/String;)I

    move-result v0

    if-eqz p1, :cond_8

    .line 7057
    iput-object p1, p2, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->h:Lcom/verizon/ads/vastcontroller/VASTParser$Icon;

    .line 7058
    iget-object v1, p1, Lcom/verizon/ads/vastcontroller/VASTParser$Icon;->offset:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Ljava/lang/String;II)I

    move-result v1

    iput v1, p2, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->g:I

    .line 7059
    iget-object p1, p1, Lcom/verizon/ads/vastcontroller/VASTParser$Icon;->duration:Ljava/lang/String;

    const v1, 0x36ee80

    invoke-static {p1, v0, v1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Ljava/lang/String;II)I

    move-result p1

    iput p1, p2, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->a:I

    .line 7060
    invoke-virtual {p2, p2}, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 714
    :cond_8
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->D:Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;

    iget-object p2, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;Ljava/util/List;)V

    return-void

    .line 717
    :cond_9
    sget-object p2, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v0, "Ad load failed because it did not contain a compatible media file."

    invoke-virtual {p2, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_a

    .line 720
    new-instance p2, Lcom/verizon/ads/ErrorInfo;

    sget-object v1, Lcom/verizon/ads/vastcontroller/VASTVideoView;->k:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-direct {p2, v1, v0, v2}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, p2}, Lcom/verizon/ads/vastcontroller/VASTVideoView$LoadListener;->onComplete(Lcom/verizon/ads/ErrorInfo;)V

    :cond_a
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 1328
    iget-boolean v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->n:Z

    if-eqz v0, :cond_0

    .line 1329
    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->d()V

    .line 1332
    :cond_0
    iget-boolean v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->n:Z

    return v0
.end method

.method public onClick(Lcom/verizon/ads/VideoPlayer;)V
    .locals 3

    .line 1255
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->b:Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;

    invoke-static {p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->c:Ljava/util/List;

    .line 7999
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;

    .line 8000
    invoke-static {v2}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 1257
    :cond_2
    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->h()V

    .line 1259
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->b:Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;->clickThrough:Ljava/lang/String;

    invoke-static {p1}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1261
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->b:Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;

    iget-object v1, v1, Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;->clickThrough:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/verizon/ads/support/utils/ActivityUtils;->startActivityFromUrl(Landroid/content/Context;Ljava/lang/String;)Z

    .line 8878
    new-instance p1, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$GVMkCMm8tzuXxWngpU-C1alnXMY;

    invoke-direct {p1, p0}, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$GVMkCMm8tzuXxWngpU-C1alnXMY;-><init>(Lcom/verizon/ads/vastcontroller/VASTVideoView;)V

    invoke-static {p1}, Lcom/verizon/ads/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1265
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->b:Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;

    invoke-static {p1, v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;Z)V

    .line 1266
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->c:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Ljava/util/List;Z)V

    return-void

    .line 1270
    :cond_3
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->b:Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;

    invoke-static {p1, v1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;Z)V

    .line 1271
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->c:Ljava/util/List;

    invoke-static {p1, v1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Ljava/util/List;Z)V

    :cond_4
    return-void
.end method

.method public onComplete(Lcom/verizon/ads/VideoPlayer;)V
    .locals 1

    .line 1105
    sget-object p1, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v0, "onComplete"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 1107
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->d:Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    if-eqz p1, :cond_0

    .line 1108
    sget-object p1, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->complete:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    invoke-direct {p0, p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getDuration()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Ljava/util/List;I)V

    .line 1109
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->d:Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    iget-object p1, p1, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->linearAd:Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;

    iget-object p1, p1, Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->complete:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1110
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getDuration()I

    move-result v0

    .line 1109
    invoke-direct {p0, p1, v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Ljava/util/List;I)V

    .line 1116
    :cond_0
    new-instance p1, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$NnEQB1t2CwL-lnovSc45b6InEIw;

    invoke-direct {p1, p0}, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$NnEQB1t2CwL-lnovSc45b6InEIw;-><init>(Lcom/verizon/ads/vastcontroller/VASTVideoView;)V

    invoke-static {p1}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 7889
    new-instance p1, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$_qSwUYp6KLtcl0Gr0ZETXE9F6QQ;

    invoke-direct {p1, p0}, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$_qSwUYp6KLtcl0Gr0ZETXE9F6QQ;-><init>(Lcom/verizon/ads/vastcontroller/VASTVideoView;)V

    invoke-static {p1}, Lcom/verizon/ads/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Lcom/verizon/ads/VideoPlayer;)V
    .locals 4

    .line 1185
    sget-object p1, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v0, "onError"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1187
    invoke-direct {p0, p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Z)V

    .line 1217
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->r:Lcom/verizon/ads/vastcontroller/VASTVideoView$LoadListener;

    if-eqz p1, :cond_0

    .line 1219
    new-instance v0, Lcom/verizon/ads/ErrorInfo;

    sget-object v1, Lcom/verizon/ads/vastcontroller/VASTVideoView;->k:Ljava/lang/String;

    const/4 v2, -0x1

    const-string v3, "VideoView error"

    invoke-direct {v0, v1, v3, v2}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView$LoadListener;->onComplete(Lcom/verizon/ads/ErrorInfo;)V

    :cond_0
    return-void
.end method

.method public onLoaded(Lcom/verizon/ads/VideoPlayer;)V
    .locals 1

    .line 985
    sget-object p1, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v0, "onLoaded"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 987
    new-instance p1, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$88aWy-iw91A0uxa_gMY1pw8BKCw;

    invoke-direct {p1, p0}, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$88aWy-iw91A0uxa_gMY1pw8BKCw;-><init>(Lcom/verizon/ads/vastcontroller/VASTVideoView;)V

    invoke-static {p1}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPaused(Lcom/verizon/ads/VideoPlayer;)V
    .locals 1

    .line 1082
    sget-object p1, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v0, "onPaused"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 1084
    new-instance p1, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$OtC2eed093xBFDeq4mJ49WDrjYE;

    invoke-direct {p1, p0}, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$OtC2eed093xBFDeq4mJ49WDrjYE;-><init>(Lcom/verizon/ads/vastcontroller/VASTVideoView;)V

    invoke-static {p1}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 1098
    invoke-direct {p0, p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Z)V

    return-void
.end method

.method public declared-synchronized onPlay(Lcom/verizon/ads/VideoPlayer;)V
    .locals 2

    monitor-enter p0

    .line 1048
    :try_start_0
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v1, "onPlay"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1050
    iput v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->q:I

    .line 1052
    new-instance v1, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$vzb8kVNXuL7OQ_MHZp_zHYABJvs;

    invoke-direct {v1, p0, p1}, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$vzb8kVNXuL7OQ_MHZp_zHYABJvs;-><init>(Lcom/verizon/ads/vastcontroller/VASTVideoView;Lcom/verizon/ads/VideoPlayer;)V

    invoke-virtual {p0, v1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->post(Ljava/lang/Runnable;)Z

    .line 1068
    invoke-direct {p0, v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Z)V

    .line 1072
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->d:Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    if-eqz p1, :cond_0

    .line 1073
    sget-object p1, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->start:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    invoke-direct {p0, p1}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Ljava/util/List;I)V

    .line 1074
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->d:Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    iget-object p1, p1, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->linearAd:Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;

    iget-object p1, p1, Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    sget-object v1, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->start:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->a(Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1076
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onProgress(Lcom/verizon/ads/VideoPlayer;I)V
    .locals 0

    monitor-enter p0

    .line 1147
    :try_start_0
    new-instance p1, Lcom/verizon/ads/vastcontroller/VASTVideoView$2;

    invoke-direct {p1, p0, p2}, Lcom/verizon/ads/vastcontroller/VASTVideoView$2;-><init>(Lcom/verizon/ads/vastcontroller/VASTVideoView;I)V

    invoke-static {p1}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1172
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onReady(Lcom/verizon/ads/VideoPlayer;)V
    .locals 2

    .line 1038
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v1, "onReady"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/verizon/ads/vastcontroller/-$$Lambda$hlaLYYsyA-xU90RvD-sjsyz2rto;

    invoke-direct {v0, p1}, Lcom/verizon/ads/vastcontroller/-$$Lambda$hlaLYYsyA-xU90RvD-sjsyz2rto;-><init>(Lcom/verizon/ads/VideoPlayer;)V

    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSeekCompleted(Lcom/verizon/ads/VideoPlayer;)V
    .locals 1

    .line 1178
    sget-object p1, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v0, "onSeekCompleted"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onUnloaded(Lcom/verizon/ads/VideoPlayer;)V
    .locals 1

    .line 1031
    sget-object p1, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v0, "onUnloaded"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 3

    .line 1280
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string/jumbo p1, "video size changed new width = %d, new height = %d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onVolumeChanged(Lcom/verizon/ads/VideoPlayer;F)V
    .locals 1

    .line 1236
    sget-object p1, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    const-string v0, "onVolumeChanged"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 1238
    new-instance p1, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$wNclKFwydahnzifS9WpgZkfPD-0;

    invoke-direct {p1, p0, p2}, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$wNclKFwydahnzifS9WpgZkfPD-0;-><init>(Lcom/verizon/ads/vastcontroller/VASTVideoView;F)V

    invoke-static {p1}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public release()V
    .locals 4

    .line 1286
    new-instance v0, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$Ne9u9kQnNdQhyWkjp23y4zcd5v4;

    invoke-direct {v0, p0}, Lcom/verizon/ads/vastcontroller/-$$Lambda$VASTVideoView$Ne9u9kQnNdQhyWkjp23y4zcd5v4;-><init>(Lcom/verizon/ads/vastcontroller/VASTVideoView;)V

    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 1288
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->f:Lcom/verizon/ads/VideoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1289
    invoke-interface {v0}, Lcom/verizon/ads/VideoPlayer;->pause()V

    .line 1290
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->f:Lcom/verizon/ads/VideoPlayer;

    invoke-interface {v0}, Lcom/verizon/ads/VideoPlayer;->unload()V

    .line 1291
    iput-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->e:Lcom/verizon/ads/VideoPlayerView;

    .line 1294
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->H:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 1295
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1296
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->j:Lcom/verizon/ads/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to delete video asset = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->H:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    .line 1298
    :cond_1
    iput-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->H:Ljava/io/File;

    .line 1301
    :cond_2
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->E:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    invoke-virtual {v0}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->stopWatching()V

    .line 1302
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->F:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    invoke-virtual {v0}, Lcom/verizon/ads/support/utils/ViewabilityWatcher;->stopWatching()V

    .line 1304
    iput-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->E:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    .line 1305
    iput-object v1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->F:Lcom/verizon/ads/support/utils/ViewabilityWatcher;

    return-void
.end method

.method public setInteractionListener(Lcom/verizon/ads/vastcontroller/VASTVideoView$InteractionListener;)V
    .locals 1

    .line 634
    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->s:Lcom/verizon/ads/vastcontroller/VASTVideoView$InteractionListener;

    .line 636
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->y:Lcom/verizon/ads/vastcontroller/AdChoicesButton;

    invoke-virtual {v0, p1}, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->setInteractionListener(Lcom/verizon/ads/vastcontroller/VASTVideoView$InteractionListener;)V

    return-void
.end method

.method public setPlaybackListener(Lcom/verizon/ads/vastcontroller/VASTVideoView$PlaybackListener;)V
    .locals 0

    .line 642
    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->t:Lcom/verizon/ads/vastcontroller/VASTVideoView$PlaybackListener;

    return-void
.end method

.method public updateComponentVisibility()V
    .locals 6

    .line 880
    iget v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->q:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    .line 881
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->u:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->g()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const/16 v5, 0x8

    :goto_0
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 882
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 896
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->e:Lcom/verizon/ads/VideoPlayerView;

    if-eqz v0, :cond_3

    .line 897
    invoke-virtual {v0, v4}, Lcom/verizon/ads/VideoPlayerView;->setVisibility(I)V

    goto :goto_1

    .line 900
    :cond_1
    iget v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->q:I

    if-ne v0, v1, :cond_3

    .line 901
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->e:Lcom/verizon/ads/VideoPlayerView;

    if-eqz v0, :cond_2

    .line 902
    invoke-virtual {v0, v3}, Lcom/verizon/ads/VideoPlayerView;->setVisibility(I)V

    .line 904
    :cond_2
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->u:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 905
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7115
    :cond_3
    :goto_1
    iget v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->q:I

    const/4 v3, 0x4

    if-ne v0, v2, :cond_7

    .line 7116
    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7117
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->D:Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;->mmExtension:Lcom/verizon/ads/vastcontroller/VASTParser$MMExtension;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->D:Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;->mmExtension:Lcom/verizon/ads/vastcontroller/VASTParser$MMExtension;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$MMExtension;->background:Lcom/verizon/ads/vastcontroller/VASTParser$Background;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->D:Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;->mmExtension:Lcom/verizon/ads/vastcontroller/VASTParser$MMExtension;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$MMExtension;->background:Lcom/verizon/ads/vastcontroller/VASTParser$Background;

    iget-boolean v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$Background;->hideButtons:Z

    if-eqz v0, :cond_4

    .line 7121
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 7123
    :cond_4
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 7127
    :cond_5
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->D:Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;->mmExtension:Lcom/verizon/ads/vastcontroller/VASTParser$MMExtension;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->D:Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;->mmExtension:Lcom/verizon/ads/vastcontroller/VASTParser$MMExtension;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$MMExtension;->overlay:Lcom/verizon/ads/vastcontroller/VASTParser$Overlay;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->D:Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;->mmExtension:Lcom/verizon/ads/vastcontroller/VASTParser$MMExtension;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$MMExtension;->overlay:Lcom/verizon/ads/vastcontroller/VASTParser$Overlay;

    iget-boolean v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$Overlay;->hideButtons:Z

    if-eqz v0, :cond_6

    .line 7130
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 7132
    :cond_6
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 7136
    :cond_7
    iget v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->q:I

    if-ne v0, v1, :cond_9

    .line 7137
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->N:Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->N:Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;

    iget-boolean v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;->hideButtons:Z

    if-eqz v0, :cond_8

    .line 7138
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 7140
    :cond_8
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method public updateLayout()V
    .locals 5

    .line 942
    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->g()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->P:I

    if-ne v0, v2, :cond_1

    .line 943
    :cond_0
    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->g()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->P:I

    if-ne v0, v2, :cond_2

    .line 948
    :cond_1
    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->k()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 950
    iget-object v3, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->e:Lcom/verizon/ads/VideoPlayerView;

    invoke-virtual {v3, v0}, Lcom/verizon/ads/VideoPlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 952
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->updateComponentVisibility()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 956
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/verizon/ads/vastcontroller/R$dimen;->vas_ad_button_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 957
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/verizon/ads/vastcontroller/R$dimen;->vas_ad_button_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 958
    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->g()Z

    move-result v3

    .line 959
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v3, v3

    invoke-direct {v4, v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 962
    invoke-direct {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->g()Z

    move-result v0

    if-nez v0, :cond_3

    .line 964
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/verizon/ads/vastcontroller/R$dimen;->vas_ad_button_padding_left:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 966
    :cond_3
    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 969
    :goto_1
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 970
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 971
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 975
    :cond_4
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->bringToFront()V

    .line 978
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/verizon/ads/vastcontroller/VASTVideoView;->P:I

    return-void
.end method
