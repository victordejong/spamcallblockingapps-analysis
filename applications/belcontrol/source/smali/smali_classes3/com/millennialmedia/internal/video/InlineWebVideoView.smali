.class public Lcom/millennialmedia/internal/video/InlineWebVideoView;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewAttachListener;,
        Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebViewViewabilityListener;,
        Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;,
        Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewListener;
    }
.end annotation


# static fields
.field private static final BASE_TAG:Ljava/lang/String; = "MMInlineWebVideoView_"

.field private static final HIDE_CONTROLS_DELAY:I = 0x9c4

.field public static final PROGRESS_UPDATES_DISABLED:I = -0x1

.field private static final STATE_CHANGE:Ljava/lang/String; = "stateChange"

.field private static final TAG:Ljava/lang/String;

.field private static final TRACKING:Ljava/lang/String; = "tracking"

.field private static volatile lastTagID:I

.field private static volatile nextTagID:I


# instance fields
.field private attachListener:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewAttachListener;

.field private callbackId:Ljava/lang/String;

.field private error:Z

.field private expandCollapseToggleButton:Landroid/widget/ToggleButton;

.field private firedEvents:Lcom/millennialmedia/internal/FiredEvents;

.field private height:I

.field private hideControlsRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field private inlineVideoControls:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

.field private inlineWebVideoViewListener:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewListener;

.field private lastUpdateTime:J

.field private mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

.field private mmWebViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/millennialmedia/internal/MMWebView;",
            ">;"
        }
    .end annotation
.end field

.field private placeholderView:Landroid/widget/ImageView;

.field private showExpandControls:Z

.field private showMediaControls:Z

.field private timeUpdateInterval:I

.field private uri:Landroid/net/Uri;

.field private videoContainer:Landroid/widget/FrameLayout;

.field private viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->lastTagID:I

    const/16 v0, 0x64

    sput v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->nextTagID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZZZILjava/lang/String;Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewListener;)V
    .locals 14

    move-object v6, p0

    move/from16 v7, p4

    move/from16 v8, p5

    new-instance v0, Landroid/content/MutableContextWrapper;

    move-object v1, p1

    invoke-direct {v0, p1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, -0x1

    iput v9, v6, Lcom/millennialmedia/internal/video/InlineWebVideoView;->timeUpdateInterval:I

    const-wide/16 v0, 0x0

    iput-wide v0, v6, Lcom/millennialmedia/internal/video/InlineWebVideoView;->lastUpdateTime:J

    const/4 v10, 0x0

    iput-boolean v10, v6, Lcom/millennialmedia/internal/video/InlineWebVideoView;->error:Z

    move-object/from16 v0, p8

    iput-object v0, v6, Lcom/millennialmedia/internal/video/InlineWebVideoView;->inlineWebVideoViewListener:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewListener;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/content/MutableContextWrapper;

    move-object/from16 v0, p7

    iput-object v0, v6, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    move/from16 v0, p6

    iput v0, v6, Lcom/millennialmedia/internal/video/InlineWebVideoView;->timeUpdateInterval:I

    iput-boolean v7, v6, Lcom/millennialmedia/internal/video/InlineWebVideoView;->showMediaControls:Z

    iput-boolean v8, v6, Lcom/millennialmedia/internal/video/InlineWebVideoView;->showExpandControls:Z

    new-instance v0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    new-instance v1, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebViewViewabilityListener;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebViewViewabilityListener;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    invoke-direct {v0, p0, v1}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;)V

    iput-object v0, v6, Lcom/millennialmedia/internal/video/InlineWebVideoView;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->startWatching()V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/millennialmedia/internal/video/InlineWebVideoView;->videoContainer:Landroid/widget/FrameLayout;

    const/high16 v12, -0x1000000

    invoke-virtual {p0, v12}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v13, Lcom/millennialmedia/internal/video/MMVideoView;

    const/4 v4, 0x0

    move-object v0, v13

    move-object v1, v11

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/internal/video/MMVideoView;-><init>(Landroid/content/Context;ZZLjava/util/Map;Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;)V

    iput-object v13, v6, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v0, v9, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, v6, Lcom/millennialmedia/internal/video/InlineWebVideoView;->videoContainer:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MMInlineWebVideoView_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getNextTagID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lcom/millennialmedia/internal/video/InlineWebVideoView;->placeholderView:Landroid/widget/ImageView;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v1, v6, Lcom/millennialmedia/internal/video/InlineWebVideoView;->placeholderView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v6, Lcom/millennialmedia/internal/video/InlineWebVideoView;->videoContainer:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lcom/millennialmedia/internal/video/InlineWebVideoView;->placeholderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, v6, Lcom/millennialmedia/internal/video/InlineWebVideoView;->videoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v12, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    iget-object v3, v6, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    move-object v0, v12

    move-object v1, p0

    move-object v2, v11

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;Landroid/content/Context;Lcom/millennialmedia/internal/video/MMVideoView;ZZ)V

    iput-object v12, v6, Lcom/millennialmedia/internal/video/InlineWebVideoView;->inlineVideoControls:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x8

    if-nez v7, :cond_0

    iget-object v2, v6, Lcom/millennialmedia/internal/video/InlineWebVideoView;->inlineVideoControls:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    iget-object v2, v6, Lcom/millennialmedia/internal/video/InlineWebVideoView;->inlineVideoControls:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    invoke-virtual {p0, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v6, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    iget-object v2, v6, Lcom/millennialmedia/internal/video/InlineWebVideoView;->inlineVideoControls:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    invoke-virtual {v0, v2}, Lcom/millennialmedia/internal/video/MMVideoView;->setMediaController(Lcom/millennialmedia/internal/video/MMVideoView$MediaController;)V

    iget-object v0, v6, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    new-instance v2, Lcom/millennialmedia/internal/video/InlineWebVideoView$1;

    invoke-direct {v2, p0, v7, v8}, Lcom/millennialmedia/internal/video/InlineWebVideoView$1;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;ZZ)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    new-instance v2, Lcom/millennialmedia/internal/video/InlineWebVideoView$2;

    invoke-direct {v2, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$2;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/widget/ToggleButton;

    invoke-direct {v0, v11}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/millennialmedia/internal/video/InlineWebVideoView;->expandCollapseToggleButton:Landroid/widget/ToggleButton;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lcom/millennialmedia/internal/video/InlineWebVideoView;->expandCollapseToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lcom/millennialmedia/internal/video/InlineWebVideoView;->expandCollapseToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v10}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v0, v6, Lcom/millennialmedia/internal/video/InlineWebVideoView;->expandCollapseToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/millennialmedia/R$drawable;->mmadsdk_expand_collapse:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v6, Lcom/millennialmedia/internal/video/InlineWebVideoView;->expandCollapseToggleButton:Landroid/widget/ToggleButton;

    new-instance v2, Lcom/millennialmedia/internal/video/InlineWebVideoView$3;

    invoke-direct {v2, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$3;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    if-nez v8, :cond_1

    iget-object v0, v6, Lcom/millennialmedia/internal/video/InlineWebVideoView;->expandCollapseToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_1
    invoke-direct {p0, v10}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getButtonDimensions(Z)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, v6, Lcom/millennialmedia/internal/video/InlineWebVideoView;->expandCollapseToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->fireClientSideOnClick()V

    return-void
.end method

.method public static synthetic access$100(Lcom/millennialmedia/internal/video/InlineWebVideoView;Z)Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getButtonDimensions(Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I
    .locals 0

    iget p0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->y:I

    return p0
.end method

.method public static synthetic access$1100(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->internalExpandToFullScreen()V

    return-void
.end method

.method public static synthetic access$1400(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->placeholderView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I
    .locals 0

    iget p0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->width:I

    return p0
.end method

.method public static synthetic access$1600(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I
    .locals 0

    iget p0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->height:I

    return p0
.end method

.method public static synthetic access$1700(Lcom/millennialmedia/internal/video/InlineWebVideoView;Lcom/millennialmedia/internal/MMWebView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->attachToAnchorView(Lcom/millennialmedia/internal/MMWebView;)V

    return-void
.end method

.method public static synthetic access$1800()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1900(Lcom/millennialmedia/internal/video/InlineWebVideoView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->resizeButtons(Z)V

    return-void
.end method

.method public static synthetic access$2000(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public static synthetic access$2100(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->videoContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic access$2200(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewListener;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->inlineWebVideoViewListener:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewListener;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->inlineVideoControls:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Lcom/millennialmedia/internal/video/MMVideoView;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/widget/ToggleButton;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->expandCollapseToggleButton:Landroid/widget/ToggleButton;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->scheduleAutoHideControls()V

    return-void
.end method

.method public static synthetic access$900(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I
    .locals 0

    iget p0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->x:I

    return p0
.end method

.method private attachToAnchorView(Lcom/millennialmedia/internal/MMWebView;)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->width:I

    iget v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->height:I

    iget v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->x:I

    iget v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->y:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-static {p1, p0, v0}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->attachListener:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewAttachListener;

    invoke-interface {p1, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewAttachListener;->attachSucceeded(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    :cond_0
    return-void
.end method

.method private fireClientSideOnClick()V
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/video/InlineWebVideoView$12;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$12;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private fireTrackingEvent(Lcom/millennialmedia/internal/MMWebView;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->firedEvents:Lcom/millennialmedia/internal/FiredEvents;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v3

    aput-object p2, v0, v2

    const-string p2, "InlineVideoView[%s]: Cannot fire event \'%s\'! Field \'firedEvents\' is null!"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v3

    aput-object p2, v4, v2

    const-string v5, "InlineVideoView[%s]: firing \'%s\' event"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, "tracking"

    aput-object v3, v4, v2

    aput-object p2, v4, v1

    invoke-virtual {p1, v0, v4}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->firedEvents:Lcom/millennialmedia/internal/FiredEvents;

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Lcom/millennialmedia/internal/FiredEvents;->recordForUri(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method private getButtonDimensions(Z)Landroid/graphics/Rect;
    .locals 3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/millennialmedia/R$dimen;->mmadsdk_control_button_max_width_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v1, v1, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/millennialmedia/R$dimen;->mmadsdk_control_button_min_width_height:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->height:I

    div-int/lit8 v2, v2, 0x5

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static getLastTagID()I
    .locals 1

    sget v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->lastTagID:I

    return v0
.end method

.method private static getNextTagID()I
    .locals 2

    sget v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->nextTagID:I

    sput v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->lastTagID:I

    sget v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->nextTagID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/millennialmedia/internal/video/InlineWebVideoView;->nextTagID:I

    return v0
.end method

.method private internalExpandToFullScreen()V
    .locals 3

    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->error:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-direct {v0}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;-><init>()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;

    invoke-direct {v2, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    invoke-static {v1, v0, v2}, Lcom/millennialmedia/internal/MMActivity;->launch(Landroid/content/Context;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;Lcom/millennialmedia/internal/MMActivity$MMActivityListener;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string v1, "InlineWebVideoView.expandToFullScreen could not complete because of a previous error."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private isEventFired(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->firedEvents:Lcom/millennialmedia/internal/FiredEvents;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Lcom/millennialmedia/internal/FiredEvents;->isEventFiredForUri(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "InlineVideoView[%s]: Cannot check if event  \'%s\' was fired or not! Field \'firedEvents\' is null!"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method private resizeButtons(Z)V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->inlineVideoControls:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->resize(Z)V

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getButtonDimensions(Z)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->expandCollapseToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->expandCollapseToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private scheduleAutoHideControls()V
    .locals 3

    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->showExpandControls:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->showMediaControls:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->hideControlsRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    :cond_1
    new-instance v0, Lcom/millennialmedia/internal/video/InlineWebVideoView$10;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$10;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    const-wide/16 v1, 0x9c4

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->hideControlsRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    :cond_2
    return-void
.end method

.method private setKeepScreenOnUiThread(Z)V
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/video/InlineWebVideoView$11;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView$11;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;Z)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private toDips(Landroid/util/DisplayMetrics;I)I
    .locals 0

    int-to-float p2, p2

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    return p1
.end method


# virtual methods
.method public expandToFullScreen()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->expandCollapseToggleButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    return-void
.end method

.method public mute()V
    .locals 2

    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->error:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->inlineVideoControls:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->mute()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string v1, "InlineWebVideoView.mute could not complete because of a previous error."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBufferingUpdate(Lcom/millennialmedia/internal/video/MMVideoView;I)V
    .locals 0

    return-void
.end method

.method public onComplete(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/millennialmedia/internal/video/MMVideoView;->seekTo(I)V

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->setKeepScreenOnUiThread(Z)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/MMWebView;

    if-eqz v1, :cond_1

    monitor-enter p0

    :try_start_0
    const-string v2, "end"

    invoke-direct {p0, v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->isEventFired(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "end"

    invoke-direct {p0, v1, v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->fireTrackingEvent(Lcom/millennialmedia/internal/MMWebView;Ljava/lang/String;)V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "timeUpdate"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x2

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v4}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "stateChange"

    aput-object v0, v2, v6

    const-string v0, "complete"

    aput-object v0, v2, v5

    invoke-virtual {v1, p1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string v0, "InlineVideoView anchor WebView is gone.  Tracking events disabled."

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    new-instance p1, Lcom/millennialmedia/internal/video/InlineWebVideoView$9;

    invoke-direct {p1, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$9;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 5

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->error:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->setKeepScreenOnUiThread(Z)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/MMWebView;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v0, "error"

    aput-object v0, v3, p1

    const/4 p1, 0x2

    const-string v0, "Inline video play back failed."

    aput-object v0, v3, p1

    invoke-virtual {v1, v2, v3}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->attachListener:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewAttachListener;

    invoke-interface {p1, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewAttachListener;->attachFailed(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    :cond_1
    return-void
.end method

.method public onMuted(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 4

    iget-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/millennialmedia/internal/MMWebView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "mute"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPause(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 4

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->setKeepScreenOnUiThread(Z)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, p1

    const/4 p1, 0x1

    const-string v3, "stateChange"

    aput-object v3, v2, p1

    const/4 p1, 0x2

    const-string v3, "paused"

    aput-object v3, v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPrepared(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 1

    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->error:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/millennialmedia/internal/video/InlineWebVideoView$6;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView$6;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized onProgress(Lcom/millennialmedia/internal/video/MMVideoView;I)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    const-string v1, "q1"

    invoke-direct {p0, v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->isEventFired(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-lt p2, p1, :cond_0

    const-string v1, "q1"

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->fireTrackingEvent(Lcom/millennialmedia/internal/MMWebView;Ljava/lang/String;)V

    :cond_0
    const-string v1, "q2"

    invoke-direct {p0, v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->isEventFired(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    mul-int/lit8 v1, p1, 0x2

    if-lt p2, v1, :cond_1

    const-string v1, "q2"

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->fireTrackingEvent(Lcom/millennialmedia/internal/MMWebView;Ljava/lang/String;)V

    :cond_1
    const-string v1, "q3"

    invoke-direct {p0, v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->isEventFired(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_2

    mul-int/lit8 p1, p1, 0x3

    if-lt p2, p1, :cond_2

    const-string p1, "q3"

    invoke-direct {p0, v0, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->fireTrackingEvent(Lcom/millennialmedia/internal/MMWebView;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->timeUpdateInterval:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_4

    iget-wide v5, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->lastUpdateTime:J

    sub-long v5, v3, v5

    int-to-long v7, p1

    cmp-long p1, v5, v7

    if-ltz p1, :cond_4

    iput-wide v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->lastUpdateTime:J

    iget-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "timeUpdate"

    aput-object v3, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string p2, "InlineVideoView anchor WebView is gone.  Tracking events disabled."

    invoke-static {p1, p2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onReadyToStart(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 8

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "stateChange"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "readyToStart"

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "updateVideoURL"

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "durationChange"

    aput-object v3, v2, v6

    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onSeek(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 5

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "seek"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->getCurrentPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onStart(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 4

    new-instance p1, Lcom/millennialmedia/internal/video/InlineWebVideoView$7;

    invoke-direct {p1, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$7;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->scheduleAutoHideControls()V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/millennialmedia/internal/MMWebView;

    if-eqz p1, :cond_1

    monitor-enter p0

    :try_start_0
    const-string v0, "start"

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->isEventFired(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "start"

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->fireTrackingEvent(Lcom/millennialmedia/internal/MMWebView;Ljava/lang/String;)V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "stateChange"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "playing"

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string v0, "InlineWebVideoView anchor WebView is gone.  Tracking events disabled."

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onStop(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 4

    new-instance p1, Lcom/millennialmedia/internal/video/InlineWebVideoView$8;

    invoke-direct {p1, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$8;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/millennialmedia/internal/MMWebView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "stateChange"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "stopped"

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onUnmuted(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 4

    iget-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/millennialmedia/internal/MMWebView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "mute"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->error:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->inlineVideoControls:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->pause()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string v1, "InlineWebVideoView.pause could not complete because of a previous error."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    :cond_0
    return-void
.end method

.method public remove()V
    .locals 5

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "stateChange"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "removed"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    return-void
.end method

.method public reposition(IIII)V
    .locals 6

    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->error:Z

    if-nez v0, :cond_5

    if-ltz p1, :cond_4

    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    if-gez p4, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWidth()I

    move-result v1

    sub-int/2addr v1, p1

    if-lt v1, p3, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    sub-int/2addr v1, p2

    if-lt v1, p4, :cond_1

    iput p3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->width:I

    iput p4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->height:I

    iput p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->x:I

    iput p2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->y:I

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->resizeButtons(Z)V

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    invoke-static {v0, p0, v2}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "reposition"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    invoke-direct {p0, v2, p3}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->toDips(Landroid/util/DisplayMetrics;I)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v4, v1

    const/4 p3, 0x3

    invoke-direct {p0, v2, p4}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->toDips(Landroid/util/DisplayMetrics;I)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v4, p3

    const/4 p3, 0x4

    invoke-direct {p0, v2, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->toDips(Landroid/util/DisplayMetrics;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, p3

    const/4 p1, 0x5

    invoke-direct {p0, v2, p2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->toDips(Landroid/util/DisplayMetrics;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    invoke-virtual {v0, v3, v4}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    sget-object p1, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string p2, "Cannot reposition the inline video as it will not fit within the anchor view."

    invoke-static {p1, p2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string p2, "Cannot position the InlineVideoView because the anchor view is gone."

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string p2, "Cannot position the InlineVideoView because the anchor view has not been set."

    :goto_0
    invoke-static {p1, p2}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    :goto_1
    sget-object p1, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string p2, "All position parameters must be greater than or equal to zero."

    invoke-static {p1, p2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string p2, "InlineWebVideoView.reposition could not complete because of a previous error."

    invoke-static {p1, p2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->error:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/video/MMVideoView;->seekTo(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string v0, "InlineWebVideoView.seekTo could not complete because of a previous error."

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAnchorView(Lcom/millennialmedia/internal/MMWebView;IIIILcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewAttachListener;)V
    .locals 1

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    if-ltz p4, :cond_2

    if-gez p5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    iput-object p6, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->attachListener:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewAttachListener;

    iput p2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->x:I

    iput p3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->y:I

    iput p4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->width:I

    iput p5, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->height:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->resizeButtons(Z)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->uri:Landroid/net/Uri;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/millennialmedia/internal/video/MMVideoView;->setVideoURI(Landroid/net/Uri;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    sget-object p1, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string p2, "All position parameters must be greater than or equal to zero."

    invoke-static {p1, p2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p6, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewAttachListener;->attachFailed(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    return-void
.end method

.method public setPlaceholder(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/millennialmedia/internal/video/InlineWebVideoView$4;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView$4;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Lcom/millennialmedia/internal/FiredEvents;)V
    .locals 3

    iput-object p2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->firedEvents:Lcom/millennialmedia/internal/FiredEvents;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->error:Z

    iput-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->uri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/video/MMVideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/millennialmedia/internal/MMWebView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, p2

    const/4 p2, 0x1

    const-string v2, "stateChange"

    aput-object v2, v1, p2

    const/4 p2, 0x2

    const-string v2, "loading"

    aput-object v2, v1, p2

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->error:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->inlineVideoControls:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->start()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string v1, "InlineWebVideoView.start could not complete because of a previous error."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->error:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->stop()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string v1, "InlineWebVideoView.stop could not complete because of a previous error."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public triggerTimeUpdate()V
    .locals 5

    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->error:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "timeUpdate"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v4}, Lcom/millennialmedia/internal/video/MMVideoView;->getCurrentPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string v1, "InlineWebVideoView.triggerTimeUpdate could not complete because of a previous error."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public unmute()V
    .locals 2

    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->error:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->inlineVideoControls:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->unmute()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string v1, "InlineWebVideoView.unmute could not complete because of a previous error."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
