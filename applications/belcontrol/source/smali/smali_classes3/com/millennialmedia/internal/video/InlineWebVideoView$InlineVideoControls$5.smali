.class public Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;Landroid/content/Context;Lcom/millennialmedia/internal/video/MMVideoView;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

.field public final synthetic val$mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

.field public final synthetic val$this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;Lcom/millennialmedia/internal/video/InlineWebVideoView;Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$5;->this$1:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$5;->val$this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    iput-object p3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$5;->val$mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$5;->val$mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->mute()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->unmute()V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$5;->this$1:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    div-int/2addr v0, p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_1
    :goto_0
    return-void
.end method
