.class public Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/video/MMVideoView$MediaController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/InlineWebVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InlineVideoControls"
.end annotation


# instance fields
.field private muteUnmuteButton:Landroid/widget/ToggleButton;

.field private playPauseButton:Landroid/widget/ToggleButton;

.field private progressBar:Landroid/widget/ProgressBar;

.field public final synthetic this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;Landroid/content/Context;Lcom/millennialmedia/internal/video/MMVideoView;ZZ)V
    .locals 6

    iput-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/millennialmedia/R$color;->mmadsdk_inline_video_controls_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$1;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$1;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/ToggleButton;

    invoke-direct {v0, p2}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->playPauseButton:Landroid/widget/ToggleButton;

    sget v1, Lcom/millennialmedia/R$id;->mmadsdk_inline_video_play_pause_button:I

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setId(I)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->playPauseButton:Landroid/widget/ToggleButton;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->playPauseButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->playPauseButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object p4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->playPauseButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/millennialmedia/R$drawable;->mmadsdk_play_pause:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->playPauseButton:Landroid/widget/ToggleButton;

    new-instance v0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$2;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$2;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    invoke-virtual {p4, v0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->playPauseButton:Landroid/widget/ToggleButton;

    new-instance v0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$3;

    invoke-direct {v0, p0, p1, p3}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$3;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;Lcom/millennialmedia/internal/video/InlineWebVideoView;Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-virtual {p4, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 p4, 0x0

    invoke-static {p1, p4}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$100(Lcom/millennialmedia/internal/video/InlineWebVideoView;Z)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->playPauseButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0, v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/ToggleButton;

    invoke-direct {v3, p2}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->muteUnmuteButton:Landroid/widget/ToggleButton;

    sget v4, Lcom/millennialmedia/R$id;->mmadsdk_inline_video_mute_unmute_button:I

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setId(I)V

    iget-object v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->muteUnmuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v2}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->muteUnmuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v2}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->muteUnmuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, p5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object p5, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->muteUnmuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/millennialmedia/R$drawable;->mmadsdk_mute_unmute:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p5, v2}, Landroid/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p5, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->muteUnmuteButton:Landroid/widget/ToggleButton;

    new-instance v2, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$4;

    invoke-direct {v2, p0, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$4;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    invoke-virtual {p5, v2}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p5, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->muteUnmuteButton:Landroid/widget/ToggleButton;

    new-instance v2, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$5;

    invoke-direct {v2, p0, p1, p3}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$5;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;Lcom/millennialmedia/internal/video/InlineWebVideoView;Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-virtual {p5, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p5

    invoke-direct {p1, p3, p5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0xb

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->muteUnmuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0, p3, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/ProgressBar;

    const/4 p3, 0x0

    const p5, 0x1010078

    invoke-direct {p1, p2, p3, p5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/millennialmedia/R$drawable;->mmadsdk_inline_video_progress_bar:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    const/4 p3, -0x1

    invoke-direct {p1, p3, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1, p4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;)Landroid/widget/ToggleButton;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->playPauseButton:Landroid/widget/ToggleButton;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;)Landroid/widget/ToggleButton;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->muteUnmuteButton:Landroid/widget/ToggleButton;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method


# virtual methods
.method public mute()V
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$8;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$8;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onComplete()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->pause()V

    return-void
.end method

.method public onMuted()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onProgress(I)V
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$10;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$10;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;I)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onUnmuted()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$7;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$7;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resize(Z)V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v0, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$100(Lcom/millennialmedia/internal/video/InlineWebVideoView;Z)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->muteUnmuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->muteUnmuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->playPauseButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->playPauseButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setDuration(I)V
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$11;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$11;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;I)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start()V
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$6;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$6;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unmute()V
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$9;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$9;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
