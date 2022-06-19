.class public Lcom/mopub/mobileads/VastVideoViewController;
.super Lcom/mopub/mobileads/BaseVideoViewController;
.source ""


# annotations
.annotation runtime Lcom/mopub/mobileads/Mockable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;,
        Lcom/mopub/mobileads/VastVideoViewController$Companion;
    }
.end annotation


# static fields
.field public static final CURRENT_POSITION:Ljava/lang/String; = "current_position"

.field public static final Companion:Lcom/mopub/mobileads/VastVideoViewController$Companion;

.field public static final DEFAULT_VIDEO_DURATION_FOR_CLOSE_BUTTON:I = 0x1388

.field public static final MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON:I = 0x3e80

.field public static final RESUMED_VAST_CONFIG:Ljava/lang/String; = "resumed_vast_config"

.field public static final VAST_VIDEO_CONFIG:Ljava/lang/String; = "vast_video_config"

.field public static final WEBVIEW_PADDING:I = 0x10


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public final D:Landroid/app/Activity;

.field public final E:Landroid/os/Bundle;

.field public final F:Landroid/os/Bundle;

.field public bottomGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

.field public closeButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

.field public final e:Landroidx/media2/widget/VideoView;

.field public final f:Lev;

.field public final g:Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;

.field public h:I

.field public i:Lcom/mopub/mobileads/VastCompanionAdConfig;

.field public final j:Lcom/mopub/mobileads/VastVideoConfig;

.field public final k:Lcom/mopub/mobileads/VastIconConfig;

.field public final l:Lcom/mopub/common/ExternalViewabilitySessionManager;

.field public final m:Landroid/widget/ImageView;

.field public final n:Landroid/view/View;

.field public final o:Landroid/view/View;

.field public final p:Landroid/view/View;

.field public progressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

.field public final q:Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

.field public final r:Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

.field public radialCountdownWidget:Lcom/mopub/mobileads/RadialCountdownWidget;

.field public final s:Landroid/view/View$OnTouchListener;

.field public final t:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

.field public topGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

.field public u:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

.field public v:Landroid/media/MediaMetadataRetriever;

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mopub/mobileads/VastVideoViewController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/VastVideoViewController$Companion;-><init>(Lok1;)V

    sput-object v0, Lcom/mopub/mobileads/VastVideoViewController;->Companion:Lcom/mopub/mobileads/VastVideoViewController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    const-string v4, "activity"

    invoke-static {v1, v4}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "extras"

    invoke-static {v2, v4}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "baseListener"

    invoke-static {v3, v4}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v0, v1, v4, v3}, Lcom/mopub/mobileads/BaseVideoViewController;-><init>(Landroid/content/Context;Ljava/lang/Long;Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V

    iput-object v1, v0, Lcom/mopub/mobileads/VastVideoViewController;->D:Landroid/app/Activity;

    iput-object v2, v0, Lcom/mopub/mobileads/VastVideoViewController;->E:Landroid/os/Bundle;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/mopub/mobileads/VastVideoViewController;->F:Landroid/os/Bundle;

    sget-object v1, Lcom/mopub/mobileads/factories/MediaPlayerFactory;->Companion:Lcom/mopub/mobileads/factories/MediaPlayerFactory$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/factories/MediaPlayerFactory$Companion;->create(Landroid/content/Context;)Lev;

    move-result-object v1

    iput-object v1, v0, Lcom/mopub/mobileads/VastVideoViewController;->f:Lev;

    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;

    invoke-direct {v1, v0}, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;-><init>(Lcom/mopub/mobileads/VastVideoViewController;)V

    iput-object v1, v0, Lcom/mopub/mobileads/VastVideoViewController;->g:Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;

    const/4 v1, -0x1

    iput v1, v0, Lcom/mopub/mobileads/VastVideoViewController;->h:I

    invoke-static {}, Lcom/mopub/common/ExternalViewabilitySessionManager;->create()Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object v2

    const-string v3, "ExternalViewabilitySessionManager.create()"

    invoke-static {v2, v3}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/mopub/mobileads/VastVideoViewController;->l:Lcom/mopub/common/ExternalViewabilitySessionManager;

    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v3, v0, Lcom/mopub/mobileads/VastVideoViewController;->v:Landroid/media/MediaMetadataRetriever;

    const/16 v3, 0x1388

    iput v3, v0, Lcom/mopub/mobileads/VastVideoViewController;->z:I

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/VastVideoViewController;->getSavedInstanceState()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v5, "resumed_vast_config"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    instance-of v5, v3, Lcom/mopub/mobileads/VastVideoConfig;

    if-nez v5, :cond_1

    const/4 v3, 0x0

    :cond_1
    check-cast v3, Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/VastVideoViewController;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "com_mopub_ad_data"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/mopub/mobileads/AdData;

    if-eqz v3, :cond_2

    move-object v5, v3

    goto :goto_1

    :cond_2
    sget-object v6, Lcom/mopub/mobileads/VastVideoConfig;->Companion:Lcom/mopub/mobileads/VastVideoConfig$Companion;

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Lcom/mopub/mobileads/AdData;->getVastVideoConfigString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_11

    invoke-virtual {v6, v5}, Lcom/mopub/mobileads/VastVideoConfig$Companion;->fromVastVideoConfigString(Ljava/lang/String;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v5

    if-eqz v5, :cond_10

    :goto_1
    iput-object v5, v0, Lcom/mopub/mobileads/VastVideoViewController;->j:Lcom/mopub/mobileads/VastVideoConfig;

    if-eqz v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/VastVideoViewController;->getSavedInstanceState()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v5, "current_position"

    invoke-virtual {v3, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_3

    :cond_4
    const/4 v3, -0x1

    :goto_3
    iput v3, v0, Lcom/mopub/mobileads/VastVideoViewController;->h:I

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastVideoConfig;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/VastVideoViewController;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "activity.resources"

    invoke-static {v5, v6}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3, v5}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v3

    iput-object v3, v0, Lcom/mopub/mobileads/VastVideoViewController;->i:Lcom/mopub/mobileads/VastCompanionAdConfig;

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastVideoConfig;->getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;

    move-result-object v3

    iput-object v3, v0, Lcom/mopub/mobileads/VastVideoViewController;->k:Lcom/mopub/mobileads/VastIconConfig;

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastVideoConfig;->getEnableClickExperiment()Z

    move-result v3

    iput-boolean v3, v0, Lcom/mopub/mobileads/VastVideoViewController;->y:Z

    new-instance v3, Lcom/mopub/mobileads/VastVideoViewController$c;

    invoke-direct {v3, v0}, Lcom/mopub/mobileads/VastVideoViewController$c;-><init>(Lcom/mopub/mobileads/VastVideoViewController;)V

    iput-object v3, v0, Lcom/mopub/mobileads/VastVideoViewController;->s:Landroid/view/View$OnTouchListener;

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/BaseVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v3

    const/high16 v5, -0x1000000

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/BaseVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/VastVideoViewController;->getClickThroughListener()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v1, Loj1;->a:Loj1;

    iput-object v3, v0, Lcom/mopub/mobileads/VastVideoViewController;->m:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/VastVideoViewController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/mopub/mobileads/VastVideoViewController;->p(Landroid/content/Context;I)Landroidx/media2/widget/VideoView;

    move-result-object v1

    iput-object v1, v0, Lcom/mopub/mobileads/VastVideoViewController;->e:Landroidx/media2/widget/VideoView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mopub/mobileads/VastVideoConfig;->getViewabilityVendors()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v2, v1, v6}, Lcom/mopub/common/ExternalViewabilitySessionManager;->createVideoSession(Landroid/view/View;Ljava/util/Set;)V

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/VastVideoViewController;->getBlurredLastVideoFrameImageView()Landroid/widget/ImageView;

    move-result-object v6

    sget-object v7, Lcom/mopub/common/ViewabilityObstruction;->BLUR:Lcom/mopub/common/ViewabilityObstruction;

    invoke-virtual {v2, v6, v7}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v0, v6, v7, v5}, Lcom/mopub/mobileads/VastVideoViewController;->createCompanionAdView(Lcom/mopub/mobileads/VastVideoConfig;II)Landroid/view/View;

    move-result-object v6

    iput-object v6, v0, Lcom/mopub/mobileads/VastVideoViewController;->n:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7, v5}, Lcom/mopub/mobileads/VastVideoViewController;->createCompanionAdView(Lcom/mopub/mobileads/VastVideoConfig;II)Landroid/view/View;

    move-result-object v6

    iput-object v6, v0, Lcom/mopub/mobileads/VastVideoViewController;->o:Landroid/view/View;

    iget-object v6, v0, Lcom/mopub/mobileads/VastVideoViewController;->i:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    new-instance v15, Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object v9

    sget-object v10, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v12, 0x0

    const/4 v13, 0x6

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/BaseVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v8

    const-string v11, "layout"

    invoke-static {v8, v11}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getId()I

    move-result v14

    const/16 v16, 0x1

    move-object v8, v15

    move v11, v6

    move-object v4, v15

    move/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;-><init>(Landroid/content/Context;Landroid/graphics/drawable/GradientDrawable$Orientation;ZIIIZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/BaseVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-object v15, Lcom/mopub/common/ViewabilityObstruction;->OVERLAY:Lcom/mopub/common/ViewabilityObstruction;

    invoke-virtual {v2, v4, v15}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V

    invoke-virtual {v0, v4}, Lcom/mopub/mobileads/VastVideoViewController;->setTopGradientStripWidget(Lcom/mopub/mobileads/VastVideoGradientStripWidget;)V

    new-instance v4, Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setAnchorId(I)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/BaseVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-object v8, Lcom/mopub/common/ViewabilityObstruction;->PROGRESS_BAR:Lcom/mopub/common/ViewabilityObstruction;

    invoke-virtual {v2, v4, v8}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V

    invoke-virtual {v0, v4}, Lcom/mopub/mobileads/VastVideoViewController;->setProgressBarWidget(Lcom/mopub/mobileads/VastVideoProgressBarWidget;)V

    new-instance v4, Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object v9

    sget-object v10, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/16 v12, 0x8

    const/4 v13, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/VastVideoViewController;->getProgressBarWidget()Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getId()I

    move-result v14

    const/16 v16, 0x0

    move-object v8, v4

    move-object v7, v15

    move/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;-><init>(Landroid/content/Context;Landroid/graphics/drawable/GradientDrawable$Orientation;ZIIIZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/BaseVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v4, v7}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V

    invoke-virtual {v0, v4}, Lcom/mopub/mobileads/VastVideoViewController;->setBottomGradientStripWidget(Lcom/mopub/mobileads/VastVideoGradientStripWidget;)V

    new-instance v4, Lcom/mopub/mobileads/RadialCountdownWidget;

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/mopub/mobileads/RadialCountdownWidget;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/BaseVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-object v7, Lcom/mopub/common/ViewabilityObstruction;->COUNTDOWN_TIMER:Lcom/mopub/common/ViewabilityObstruction;

    invoke-virtual {v2, v4, v7}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V

    invoke-virtual {v0, v4}, Lcom/mopub/mobileads/VastVideoViewController;->setRadialCountdownWidget(Lcom/mopub/mobileads/RadialCountdownWidget;)V

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4}, Lcom/mopub/mobileads/VastIconConfig;->getVastResource()Lcom/mopub/mobileads/VastResource;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mopub/mobileads/VastWebView;->f(Landroid/content/Context;Lcom/mopub/mobileads/VastResource;)Lcom/mopub/mobileads/VastWebView;

    move-result-object v7

    const-string v8, "it"

    invoke-static {v7, v8}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lcom/mopub/mobileads/VastVideoViewController$b;

    invoke-direct {v8, v4, v0}, Lcom/mopub/mobileads/VastVideoViewController$b;-><init>(Lcom/mopub/mobileads/VastIconConfig;Lcom/mopub/mobileads/VastVideoViewController;)V

    invoke-virtual {v7, v8}, Lcom/mopub/mobileads/VastWebView;->setVastWebViewClickListener(Lcom/mopub/mobileads/VastWebView$a;)V

    new-instance v8, Lcom/mopub/mobileads/VastVideoViewController$$special$$inlined$let$lambda$2;

    invoke-direct {v8, v4, v0}, Lcom/mopub/mobileads/VastVideoViewController$$special$$inlined$let$lambda$2;-><init>(Lcom/mopub/mobileads/VastIconConfig;Lcom/mopub/mobileads/VastVideoViewController;)V

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {v7, v5}, Landroid/webkit/WebView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;

    move-result-object v5

    if-eqz v5, :cond_6

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4}, Lcom/mopub/mobileads/VastIconConfig;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v8

    invoke-virtual {v4}, Lcom/mopub/mobileads/VastIconConfig;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v4

    invoke-direct {v5, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v4, v5

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    :goto_5
    const/16 v5, 0xc

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v5

    if-eqz v4, :cond_7

    invoke-virtual {v4, v8, v5, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/BaseVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v4, Lcom/mopub/common/ViewabilityObstruction;->INDUSTRY_ICON:Lcom/mopub/common/ViewabilityObstruction;

    invoke-virtual {v2, v7, v4}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V

    if-eqz v7, :cond_8

    goto :goto_6

    :cond_8
    new-instance v7, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v7, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    :goto_6
    iput-object v7, v0, Lcom/mopub/mobileads/VastVideoViewController;->p:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mopub/mobileads/VastVideoConfig;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_a

    :cond_9
    const/4 v3, 0x1

    :cond_a
    const/4 v5, 0x1

    xor-int/2addr v3, v5

    new-instance v5, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    invoke-direct {v5, v4, v1, v6, v3}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;-><init>(Landroid/content/Context;IZZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/BaseVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-object v1, Lcom/mopub/common/ViewabilityObstruction;->CTA_BUTTON:Lcom/mopub/common/ViewabilityObstruction;

    invoke-virtual {v2, v5, v1}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomCtaText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v5, v1}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->c(Ljava/lang/String;)V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/VastVideoViewController;->getClickThroughListener()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object v5, v0, Lcom/mopub/mobileads/VastVideoViewController;->t:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    new-instance v1, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/BaseVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-object v3, Lcom/mopub/common/ViewabilityObstruction;->CLOSE_BUTTON:Lcom/mopub/common/ViewabilityObstruction;

    invoke-virtual {v2, v1, v3}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V

    new-instance v2, Lcom/mopub/mobileads/VastVideoViewController$a;

    invoke-direct {v2, v0}, Lcom/mopub/mobileads/VastVideoViewController$a;-><init>(Lcom/mopub/mobileads/VastVideoViewController;)V

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->setOnTouchListenerToContent(Landroid/view/View$OnTouchListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomSkipText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->g(Ljava/lang/String;)V

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomCloseIconUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->f(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoViewController;->setCloseButtonWidget(Lcom/mopub/mobileads/VastVideoCloseButtonWidget;)V

    iget-boolean v1, v0, Lcom/mopub/mobileads/VastVideoViewController;->y:Z

    if-eqz v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->isRewarded()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCtaButtonWidget()Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->b()V

    :cond_e
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1}, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastVideoConfig;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/mopub/mobileads/VastVideoViewController;->q:Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

    new-instance v2, Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

    invoke-direct {v2, v0, v1}, Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/mopub/mobileads/VastVideoViewController;->r:Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

    return-void

    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "VastVideoConfig does not have a video disk path"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "VastVideoConfig is invalid"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "VastVideoConfigByteArray is null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "AdData is invalid"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final synthetic access$adjustSkipOffset(Lcom/mopub/mobileads/VastVideoViewController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->o()V

    return-void
.end method

.method public static final synthetic access$getExternalViewabilitySessionManager$p(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/common/ExternalViewabilitySessionManager;
    .locals 0

    iget-object p0, p0, Lcom/mopub/mobileads/VastVideoViewController;->l:Lcom/mopub/common/ExternalViewabilitySessionManager;

    return-object p0
.end method

.method public static final synthetic access$getVastCompanionAdConfig$p(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastCompanionAdConfig;
    .locals 0

    iget-object p0, p0, Lcom/mopub/mobileads/VastVideoViewController;->i:Lcom/mopub/mobileads/VastCompanionAdConfig;

    return-object p0
.end method

.method public static final synthetic access$getVideoView$p(Lcom/mopub/mobileads/VastVideoViewController;)Landroidx/media2/widget/VideoView;
    .locals 0

    iget-object p0, p0, Lcom/mopub/mobileads/VastVideoViewController;->e:Landroidx/media2/widget/VideoView;

    return-object p0
.end method

.method public static final synthetic access$isInClickExperiment$p(Lcom/mopub/mobileads/VastVideoViewController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mopub/mobileads/VastVideoViewController;->y:Z

    return p0
.end method

.method public static final synthetic access$setInClickExperiment$p(Lcom/mopub/mobileads/VastVideoViewController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->y:Z

    return-void
.end method

.method public static final synthetic access$setVastCompanionAdConfig$p(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastCompanionAdConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->i:Lcom/mopub/mobileads/VastCompanionAdConfig;

    return-void
.end method

.method public static final synthetic access$stopRunnables(Lcom/mopub/mobileads/VastVideoViewController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->r()V

    return-void
.end method

.method public static synthetic blurLastVideoFrameTask$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic blurredLastVideoFrameImageView$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic bottomGradientStripWidget$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic clickThroughListener$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic closeButtonWidget$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic ctaButtonWidget$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic iconView$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic isCalibrationDone$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic isClosing$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic isComplete$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic landscapeCompanionAdView$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic mediaMetadataRetriever$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic portraitCompanionAdView$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic progressBarWidget$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic radialCountdownWidget$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic shouldAllowClose$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic showCloseButtonDelay$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic topGradientStripWidget$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic updateCountdown$default(Lcom/mopub/mobileads/VastVideoViewController;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastVideoViewController;->updateCountdown(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateCountdown"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic vastIconConfig$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic vastVideoConfig$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method


# virtual methods
.method public backButtonEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getShouldAllowClose()Z

    move-result v0

    return v0
.end method

.method public createCompanionAdView(Lcom/mopub/mobileads/VastVideoConfig;II)Landroid/view/View;
    .locals 5

    const-string v0, "$this$createCompanionAdView"

    invoke-static {p1, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setGravity(I)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->l:Lcom/mopub/common/ExternalViewabilitySessionManager;

    sget-object v2, Lcom/mopub/common/ViewabilityObstruction;->OTHER:Lcom/mopub/common/ViewabilityObstruction;

    invoke-virtual {v0, p2, v2}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastVideoViewController;->createWebView(Lcom/mopub/mobileads/VastCompanionAdConfig;)Lcom/mopub/mobileads/VastWebView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/webkit/WebView;->setVisibility(I)V

    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v3

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getHeight()I

    move-result p1

    add-int/lit8 p1, p1, 0x10

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    invoke-direct {p3, v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xd

    invoke-virtual {p3, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p2, v0, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->l:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {p1, v0, v2}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-object v0
.end method

.method public createWebView(Lcom/mopub/mobileads/VastCompanionAdConfig;)Lcom/mopub/mobileads/VastWebView;
    .locals 2

    const-string v0, "$this$createWebView"

    invoke-static {p1, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getVastResource()Lcom/mopub/mobileads/VastResource;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/mobileads/VastWebView;->f(Landroid/content/Context;Lcom/mopub/mobileads/VastResource;)Lcom/mopub/mobileads/VastWebView;

    move-result-object v0

    const-string v1, "it"

    invoke-static {v0, v1}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$e;

    invoke-direct {v1, p0, p1}, Lcom/mopub/mobileads/VastVideoViewController$e;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastCompanionAdConfig;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastWebView;->setVastWebViewClickListener(Lcom/mopub/mobileads/VastWebView$a;)V

    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$createWebView$$inlined$also$lambda$2;

    invoke-direct {v1, p0, p1}, Lcom/mopub/mobileads/VastVideoViewController$createWebView$$inlined$also$lambda$2;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastCompanionAdConfig;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const-string p1, "VastWebView.createView(c\u2026}\n            }\n        }"

    invoke-static {v0, p1}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->e:Landroidx/media2/widget/VideoView;

    return-object v0
.end method

.method public e(IILandroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->isClosing()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->b()Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onFinish()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 0

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->handleExitTrackers()V

    return-void
.end method

.method public g(Landroid/content/res/Configuration;)V
    .locals 6

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context"

    invoke-static {p1, v0}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "context.resources"

    invoke-static {p1, v1}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLandscapeCompanionAdView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getPortraitCompanionAdView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-ne p1, v3, :cond_2

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLandscapeCompanionAdView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getPortraitCompanionAdView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getLandscapeCompanionAdView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getPortraitCompanionAdView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getDuration()I

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/mopub/mobileads/VastCompanionAdConfig;->handleImpression(Landroid/content/Context;I)V

    move-object v2, v1

    :cond_3
    iput-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->i:Lcom/mopub/mobileads/VastCompanionAdConfig;

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->D:Landroid/app/Activity;

    return-object v0
.end method

.method public getBlurLastVideoFrameTask()Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->u:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    return-object v0
.end method

.method public getBlurredLastVideoFrameImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getBottomGradientStripWidget()Lcom/mopub/mobileads/VastVideoGradientStripWidget;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->bottomGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "bottomGradientStripWidget"

    invoke-static {v0}, Lqk1;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getClickThroughListener()Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->s:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getCloseButtonWidget()Lcom/mopub/mobileads/VastVideoCloseButtonWidget;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->closeButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "closeButtonWidget"

    invoke-static {v0}, Lqk1;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getCtaButtonWidget()Lcom/mopub/mobileads/VastVideoCtaButtonWidget;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->t:Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 2

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Lev;

    move-result-object v0

    invoke-virtual {v0}, Lev;->l()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getDuration()I
    .locals 2

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Lev;

    move-result-object v0

    invoke-virtual {v0}, Lev;->m()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->E:Landroid/os/Bundle;

    return-object v0
.end method

.method public getIconView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->p:Landroid/view/View;

    return-object v0
.end method

.method public getLandscapeCompanionAdView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->n:Landroid/view/View;

    return-object v0
.end method

.method public getMediaMetadataRetriever()Landroid/media/MediaMetadataRetriever;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->v:Landroid/media/MediaMetadataRetriever;

    return-object v0
.end method

.method public getMediaPlayer()Lev;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->f:Lev;

    return-object v0
.end method

.method public getNetworkMediaFileUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoConfig;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerCallback()Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->g:Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;

    return-object v0
.end method

.method public getPortraitCompanionAdView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->o:Landroid/view/View;

    return-object v0
.end method

.method public getProgressBarWidget()Lcom/mopub/mobileads/VastVideoProgressBarWidget;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->progressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "progressBarWidget"

    invoke-static {v0}, Lqk1;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getRadialCountdownWidget()Lcom/mopub/mobileads/RadialCountdownWidget;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->radialCountdownWidget:Lcom/mopub/mobileads/RadialCountdownWidget;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "radialCountdownWidget"

    invoke-static {v0}, Lqk1;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getSavedInstanceState()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->F:Landroid/os/Bundle;

    return-object v0
.end method

.method public getShouldAllowClose()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->x:Z

    return v0
.end method

.method public getShowCloseButtonDelay()I
    .locals 1

    iget v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->z:I

    return v0
.end method

.method public getTopGradientStripWidget()Lcom/mopub/mobileads/VastVideoGradientStripWidget;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->topGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "topGradientStripWidget"

    invoke-static {v0}, Lqk1;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->k:Lcom/mopub/mobileads/VastIconConfig;

    return-object v0
.end method

.method public getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->j:Lcom/mopub/mobileads/VastVideoConfig;

    return-object v0
.end method

.method public getVideoError()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->C:Z

    return v0
.end method

.method public h()V
    .locals 3

    invoke-super {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->h()V

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->handleImpression(Landroid/content/Context;I)V

    return-void
.end method

.method public handleExitTrackers()V
    .locals 4

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->isComplete()Z

    move-result v1

    const-string v2, "context"

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getDuration()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->l:Lcom/mopub/common/ExternalViewabilitySessionManager;

    sget-object v3, Lcom/mopub/common/VideoEvent;->AD_SKIPPED:Lcom/mopub/common/VideoEvent;

    invoke-virtual {v1, v3, v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->recordVideoEvent(Lcom/mopub/common/VideoEvent;I)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v0}, Lcom/mopub/mobileads/VastVideoConfig;->handleSkip(Landroid/content/Context;I)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getDuration()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/mopub/mobileads/VastVideoConfig;->handleComplete(Landroid/content/Context;I)V

    :goto_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getDuration()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->handleClose(Landroid/content/Context;I)V

    return-void
.end method

.method public handleIconDisplay(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastIconConfig;->getOffsetMS()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getIconView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, p1, v1}, Lcom/mopub/mobileads/VastIconConfig;->handleImpression(Landroid/content/Context;ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastIconConfig;->getDurationMS()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getIconView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public handleViewabilityQuartileEvent(Ljava/lang/String;)V
    .locals 2

    const-string v0, "enumValue"

    invoke-static {p1, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/mopub/common/VideoEvent;->valueOf(Ljava/lang/String;)Lcom/mopub/common/VideoEvent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->l:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/mopub/common/ExternalViewabilitySessionManager;->recordVideoEvent(Lcom/mopub/common/VideoEvent;I)V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->r()V

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->l:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->endSession()V

    const-string v0, "com.mopub.action.fullscreen.dismiss"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/BaseVideoViewController;->a(Ljava/lang/String;)V

    return-void
.end method

.method public isCalibrationDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->A:Z

    return v0
.end method

.method public isClosing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->B:Z

    return v0
.end method

.method public isComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->w:Z

    return v0
.end method

.method public j()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi",
            "VisibleForTests"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->r()V

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->h:I

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Lev;

    move-result-object v0

    invoke-virtual {v0}, Lev;->E()Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Lev;

    move-result-object v0

    invoke-virtual {v0}, Lev;->c0()Ldv;

    move-result-object v0

    invoke-virtual {v0}, Ldv;->a()V

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->h:I

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->handlePause(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 4

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->l:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->isTracking()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->l:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->startSession()V

    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->q()V

    iget v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->h:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Lev;

    move-result-object v0

    iget v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->h:I

    int-to-long v1, v1

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lev;->n0(JI)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    const-string v1, "mediaPlayer.seekTo(seeke\u2026MediaPlayer.SEEK_CLOSEST)"

    invoke-static {v0, v1}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->isComplete()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Lev;

    move-result-object v0

    invoke-virtual {v0}, Lev;->F()Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_2
    :goto_0
    iget v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->isComplete()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->h:I

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->handleResume(Landroid/content/Context;I)V

    :cond_3
    return-void
.end method

.method public l(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->h:I

    const-string v1, "current_position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0

    const-string v1, "resumed_vast_config"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public final o()V
    .locals 5

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getDuration()I

    move-result v0

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->isRewarded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoViewController;->setShowCloseButtonDelay(I)V

    return-void

    :cond_0
    const/16 v1, 0x3e80

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoViewController;->setShowCloseButtonDelay(I)V

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->getSkipOffsetMillis(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoViewController;->setShowCloseButtonDelay(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse skipoffset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mopub/mobileads/VastVideoConfig;->getSkipOffset()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final p(Landroid/content/Context;I)Landroidx/media2/widget/VideoView;
    .locals 3

    sget-object p2, Lcom/mopub/mobileads/factories/VideoViewFactory;->Companion:Lcom/mopub/mobileads/factories/VideoViewFactory$Companion;

    invoke-virtual {p2, p1}, Lcom/mopub/mobileads/factories/VideoViewFactory$Companion;->create(Landroid/content/Context;)Landroidx/media2/widget/VideoView;

    move-result-object p2

    invoke-static {p1}, Lg8;->i(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lhv$a;

    invoke-direct {v0}, Lhv$a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhv$a;->b(I)Lhv$a;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lhv$a;->d(F)Lhv$a;

    invoke-virtual {v0}, Lhv$a;->a()Lhv;

    move-result-object v0

    const-string v1, "PlaybackParams.Builder()\u2026.0f)\n            .build()"

    invoke-static {v0, v1}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Lev;

    move-result-object v1

    invoke-virtual {v1, v0}, Lev;->v0(Lhv;)Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v0, Landroidx/media/AudioAttributesCompat$a;

    invoke-direct {v0}, Landroidx/media/AudioAttributesCompat$a;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media/AudioAttributesCompat$a;->e(I)Landroidx/media/AudioAttributesCompat$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/media/AudioAttributesCompat$a;->b(I)Landroidx/media/AudioAttributesCompat$a;

    invoke-virtual {v0}, Landroidx/media/AudioAttributesCompat$a;->a()Landroidx/media/AudioAttributesCompat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Lev;

    move-result-object v1

    invoke-virtual {v1, v0}, Lev;->p0(Landroidx/media/AudioAttributesCompat;)Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Lev;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getPlayerCallback()Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lev;->l0(Ljava/util/concurrent/Executor;Lev$i0;)V

    invoke-virtual {p2}, Landroidx/media2/widget/VideoView;->getMediaControlView()Landroidx/media2/widget/MediaControlView;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setId(I)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Lev;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/media2/widget/VideoView;->setPlayer(Landroidx/media2/common/SessionPlayer;)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getClickThroughListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Lev;

    move-result-object v0

    new-instance v1, Landroidx/media2/common/UriMediaItem$a;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoConfig;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media2/common/UriMediaItem$a;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1}, Landroidx/media2/common/UriMediaItem$a;->e()Landroidx/media2/common/UriMediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lev;->r0(Landroidx/media2/common/MediaItem;)Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v0}, Lev;->k0()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/mopub/mobileads/VastVideoViewController$d;

    invoke-direct {v2, v0, p0, p1}, Lcom/mopub/mobileads/VastVideoViewController$d;-><init>(Lev;Lcom/mopub/mobileads/VastVideoViewController;Ljava/util/concurrent/Executor;)V

    invoke-interface {v1, v2, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p2
.end method

.method public prepareBlurredLastVideoFrame(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3

    const-string v0, "blurredLastVideoFrameImageView"

    invoke-static {p1, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diskMediaFileUrl"

    invoke-static {p2, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaMetadataRetriever()Landroid/media/MediaMetadataRetriever;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getDuration()I

    move-result v2

    invoke-direct {v1, v0, p1, v2}, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;-><init>(Landroid/media/MediaMetadataRetriever;Landroid/widget/ImageView;I)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-static {v1, p1}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastVideoViewController;->setBlurLastVideoFrameTask(Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;)V

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 3

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->q:Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/RepeatingHandlerRunnable;->startRepeating(J)V

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->r:Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/RepeatingHandlerRunnable;->startRepeating(J)V

    return-void
.end method

.method public final r()V
    .locals 3

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->q:Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

    invoke-virtual {v0}, Lcom/mopub/mobileads/RepeatingHandlerRunnable;->stop()V

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->r:Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

    invoke-virtual {v0}, Lcom/mopub/mobileads/RepeatingHandlerRunnable;->stop()V

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getBlurLastVideoFrameTask()Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public setBlurLastVideoFrameTask(Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->u:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    return-void
.end method

.method public setBottomGradientStripWidget(Lcom/mopub/mobileads/VastVideoGradientStripWidget;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->bottomGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    return-void
.end method

.method public setCalibrationDone(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->A:Z

    return-void
.end method

.method public setCloseButtonWidget(Lcom/mopub/mobileads/VastVideoCloseButtonWidget;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->closeButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    return-void
.end method

.method public setClosing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->B:Z

    return-void
.end method

.method public setComplete(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->w:Z

    return-void
.end method

.method public setMediaMetadataRetriever(Landroid/media/MediaMetadataRetriever;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->v:Landroid/media/MediaMetadataRetriever;

    return-void
.end method

.method public setProgressBarWidget(Lcom/mopub/mobileads/VastVideoProgressBarWidget;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->progressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    return-void
.end method

.method public setRadialCountdownWidget(Lcom/mopub/mobileads/RadialCountdownWidget;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->radialCountdownWidget:Lcom/mopub/mobileads/RadialCountdownWidget;

    return-void
.end method

.method public setShouldAllowClose(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->x:Z

    return-void
.end method

.method public setShowCloseButtonDelay(I)V
    .locals 0

    iput p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->z:I

    return-void
.end method

.method public setTopGradientStripWidget(Lcom/mopub/mobileads/VastVideoGradientStripWidget;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->topGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    return-void
.end method

.method public setVideoError(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->C:Z

    return-void
.end method

.method public updateCountdown(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->isCalibrationDone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getRadialCountdownWidget()Lcom/mopub/mobileads/RadialCountdownWidget;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getShowCloseButtonDelay()I

    move-result v1

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/RadialCountdownWidget;->updateCountdownProgress(II)V

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result p1

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getShowCloseButtonDelay()I

    move-result v0

    if-lt p1, v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getRadialCountdownWidget()Lcom/mopub/mobileads/RadialCountdownWidget;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCloseButtonWidget()Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastVideoViewController;->setShouldAllowClose(Z)V

    iget-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->y:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoConfig;->isRewarded()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCtaButtonWidget()Lcom/mopub/mobileads/VastVideoCtaButtonWidget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoCtaButtonWidget;->b()V

    :cond_3
    return-void
.end method

.method public updateProgressBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getProgressBarWidget()Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->updateProgress(I)V

    return-void
.end method
