.class public final Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;
.super Lcom/google/android/exoplayer2/Player$DefaultEventListener;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ComponentListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/Player$DefaultEventListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/ui/PlayerControlView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$700(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$1500(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$1600(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$1700(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$1800(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$1900(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$2000(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$2100(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_3

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$2200(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$2300(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_6

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$700(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result p1

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$2400(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/PlaybackPreparer;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$2400(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/PlaybackPreparer;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/PlaybackPreparer;->preparePlayback()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$700(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$2500(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/ControlDispatcher;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$700(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$700(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSeekTo(Lcom/google/android/exoplayer2/Player;IJ)Z

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$2500(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/ControlDispatcher;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$700(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$2600(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_7

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$2500(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/ControlDispatcher;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$700(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSetPlayWhenReady(Lcom/google/android/exoplayer2/Player;Z)Z

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$2700(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne v0, p1, :cond_8

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$2500(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/ControlDispatcher;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$700(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$700(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getRepeatMode()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$2800(Lcom/google/android/exoplayer2/ui/PlayerControlView;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/RepeatModeUtil;->getNextRepeatMode(II)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSetRepeatMode(Lcom/google/android/exoplayer2/Player;I)Z

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$2900(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_9

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$2500(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/ControlDispatcher;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$700(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$700(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getShuffleModeEnabled()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/ControlDispatcher;->dispatchSetShuffleModeEnabled(Lcom/google/android/exoplayer2/Player;Z)Z

    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$900(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$1000(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$000(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$1200(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$000(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$1100(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$1200(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    return-void
.end method

.method public onScrubMove(Lcom/google/android/exoplayer2/ui/TimeBar;J)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$400(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$400(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$500(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$600(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Ljava/util/Formatter;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/google/android/exoplayer2/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onScrubStart(Lcom/google/android/exoplayer2/ui/TimeBar;J)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$200(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$302(Lcom/google/android/exoplayer2/ui/PlayerControlView;Z)Z

    return-void
.end method

.method public onScrubStop(Lcom/google/android/exoplayer2/ui/TimeBar;JZ)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$302(Lcom/google/android/exoplayer2/ui/PlayerControlView;Z)Z

    if-nez p4, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$700(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$800(Lcom/google/android/exoplayer2/ui/PlayerControlView;J)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$900(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$1300(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$1200(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$1200(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$1400(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->access$000(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    return-void
.end method
