.class public final Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;
.super Landroidx/media2/player/MediaPlayer$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VastVideoViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PlayerCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u000fH\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;",
        "Landroidx/media2/player/MediaPlayer$PlayerCallback;",
        "(Lcom/mopub/mobileads/VastVideoViewController;)V",
        "complete",
        "",
        "getComplete",
        "()Z",
        "setComplete",
        "(Z)V",
        "onPlaybackCompleted",
        "",
        "player",
        "Landroidx/media2/common/SessionPlayer;",
        "onPlayerStateChanged",
        "playerState",
        "",
        "onSeekCompleted",
        "position",
        "",
        "playerStateToString",
        "",
        "state",
        "mopub-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/VastVideoViewController;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/VastVideoViewController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 620
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-direct {p0}, Landroidx/media2/player/MediaPlayer$i;-><init>()V

    return-void
.end method


# virtual methods
.method public final getComplete()Z
    .locals 1

    .line 621
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Z

    return v0
.end method

.method public final onPlaybackCompleted(Landroidx/media2/common/SessionPlayer;)V
    .locals 3

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 668
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$stopRunnables(Lcom/mopub/mobileads/VastVideoViewController;)V

    .line 669
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/mopub/mobileads/VastVideoViewController;->updateCountdown$default(Lcom/mopub/mobileads/VastVideoViewController;ZILjava/lang/Object;)V

    .line 670
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p1, v1}, Lcom/mopub/mobileads/VastVideoViewController;->setComplete(Z)V

    .line 672
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewController;->getVideoError()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoConfig;->getRemainingProgressTrackerCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 673
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$getExternalViewabilitySessionManager$p(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object p1

    .line 674
    sget-object v0, Lcom/mopub/common/VideoEvent;->AD_COMPLETE:Lcom/mopub/common/VideoEvent;

    .line 675
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v1

    .line 673
    invoke-virtual {p1, v0, v1}, Lcom/mopub/common/ExternalViewabilitySessionManager;->recordVideoEvent(Lcom/mopub/common/VideoEvent;I)V

    .line 677
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    .line 3085
    iget-object v0, v0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    const-string v1, "context"

    .line 677
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/mopub/mobileads/VastVideoConfig;->handleComplete(Landroid/content/Context;I)V

    .line 680
    :cond_0
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$getVideoView$p(Lcom/mopub/mobileads/VastVideoViewController;)Landroidx/media2/widget/VideoView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroidx/media2/widget/VideoView;->setVisibility(I)V

    .line 681
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewController;->getProgressBarWidget()Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setVisibility(I)V

    .line 682
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    iget-object p1, p1, Lcom/mopub/mobileads/VastVideoViewController;->iconView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 683
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewController;->getIconView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 686
    :cond_1
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewController;->getTopGradientStripWidget()Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->a()V

    .line 687
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewController;->getBottomGradientStripWidget()Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->a()V

    .line 688
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewController;->getCtaButtonWidget()Lcom/mopub/mobileads/VideoCtaButtonWidget;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/mobileads/VideoCtaButtonWidget;->b()V

    .line 689
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewController;->getCloseButtonWidget()Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    move-result-object p1

    .line 3137
    iget-boolean v0, p1, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->d:Z

    if-nez v0, :cond_2

    .line 3138
    iget-object v0, p1, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->b:Landroid/widget/ImageView;

    .line 3139
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/mopub/mobileads/base/R$drawable;->ic_mopub_close_button:I

    invoke-static {p1, v1}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 3138
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 692
    :cond_2
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewController;->getDuration()I

    move-result v0

    .line 4102
    iget-object p1, p1, Lcom/mopub/mobileads/BaseVideoViewController;->b:Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onVideoFinish(I)V

    return-void
.end method

.method public final onPlayerStateChanged(Landroidx/media2/common/SessionPlayer;I)V
    .locals 7

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    invoke-super {p0, p1, p2}, Landroidx/media2/player/MediaPlayer$i;->onPlayerStateChanged(Landroidx/media2/common/SessionPlayer;I)V

    const/4 p1, 0x1

    if-eq p2, p1, :cond_7

    const/4 v0, 0x2

    if-eq p2, v0, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq p2, v2, :cond_4

    .line 660
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    check-cast v3, Lcom/mopub/common/logging/MoPubLog$MPLogEventType;

    new-array v4, p1, [Ljava/lang/Object;

    .line 661
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Player state changed to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    if-eq p2, p1, :cond_2

    if-eq p2, v0, :cond_1

    if-eq p2, v2, :cond_0

    const-string p1, "UNKNOWN"

    goto :goto_0

    :cond_0
    const-string p1, "PLAYER_STATE_ERROR"

    goto :goto_0

    :cond_1
    const-string p1, "PLAYER_STATE_PLAYING"

    goto :goto_0

    :cond_2
    const-string p1, "PLAYER_STATE_PAUSED"

    goto :goto_0

    :cond_3
    const-string p1, "PLAYER_STATE_IDLE"

    :goto_0
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    .line 659
    invoke-static {v3, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 627
    :cond_4
    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p2}, Lcom/mopub/mobileads/VastVideoViewController;->access$getExternalViewabilitySessionManager$p(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object p2

    .line 628
    sget-object v0, Lcom/mopub/common/VideoEvent;->RECORD_AD_ERROR:Lcom/mopub/common/VideoEvent;

    .line 629
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v2

    .line 627
    invoke-virtual {p2, v0, v2}, Lcom/mopub/common/ExternalViewabilitySessionManager;->recordVideoEvent(Lcom/mopub/common/VideoEvent;I)V

    .line 631
    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p2}, Lcom/mopub/mobileads/VastVideoViewController;->access$stopRunnables(Lcom/mopub/mobileads/VastVideoViewController;)V

    .line 632
    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p2, p1}, Lcom/mopub/mobileads/VastVideoViewController;->updateCountdown(Z)V

    .line 633
    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    .line 1093
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, p1, [Ljava/lang/Object;

    const-string v3, "Video cannot be played."

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    const-string v0, "com.mopub.action.fullscreen.fail"

    .line 1094
    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/BaseVideoViewController;->a(Ljava/lang/String;)V

    .line 634
    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p2, p1}, Lcom/mopub/mobileads/VastVideoViewController;->setVideoError(Z)V

    .line 635
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object p1

    .line 636
    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    .line 2085
    iget-object p2, p2, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    const-string v0, "context"

    .line 636
    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 637
    sget-object v0, Lcom/mopub/mobileads/VastErrorCode;->GENERAL_LINEAR_AD_ERROR:Lcom/mopub/mobileads/VastErrorCode;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v1

    .line 635
    invoke-virtual {p1, p2, v0, v1}, Lcom/mopub/mobileads/VastVideoConfig;->handleError(Landroid/content/Context;Lcom/mopub/mobileads/VastErrorCode;I)V

    return-void

    .line 649
    :cond_5
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$getExternalViewabilitySessionManager$p(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/common/ExternalViewabilitySessionManager;->hasImpressionOccurred()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 650
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$getExternalViewabilitySessionManager$p(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object p1

    .line 651
    sget-object p2, Lcom/mopub/common/VideoEvent;->AD_RESUMED:Lcom/mopub/common/VideoEvent;

    .line 652
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v0

    .line 650
    invoke-virtual {p1, p2, v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->recordVideoEvent(Lcom/mopub/common/VideoEvent;I)V

    return-void

    .line 655
    :cond_6
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$getExternalViewabilitySessionManager$p(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/common/ExternalViewabilitySessionManager;->trackImpression()V

    return-void

    .line 641
    :cond_7
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$getExternalViewabilitySessionManager$p(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/common/ExternalViewabilitySessionManager;->hasImpressionOccurred()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 642
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$getExternalViewabilitySessionManager$p(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object p1

    .line 643
    sget-object p2, Lcom/mopub/common/VideoEvent;->AD_PAUSED:Lcom/mopub/common/VideoEvent;

    .line 644
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v0

    .line 642
    invoke-virtual {p1, p2, v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->recordVideoEvent(Lcom/mopub/common/VideoEvent;I)V

    :cond_8
    :goto_1
    return-void
.end method

.method public final onSeekCompleted(Landroidx/media2/common/SessionPlayer;J)V
    .locals 0

    const-string p2, "player"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 696
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Landroidx/media2/player/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer;->a()Lcom/google/common/util/concurrent/a;

    return-void
.end method

.method public final setComplete(Z)V
    .locals 0

    .line 621
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Z

    return-void
.end method
