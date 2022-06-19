.class final Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider$2;
.super Ljava/lang/Object;
.source "PostcallFacebookAdProvider.java"

# interfaces
.implements Lcom/facebook/ads/MediaViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->getMediaViewListener()Lcom/facebook/ads/MediaViewListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 497
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    const-string v0, "MediaViewEvent: Completed"

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onEnterFullscreen(Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 493
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    const-string v0, "MediaViewEvent: EnterFullscreen"

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onExitFullscreen(Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 489
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    const-string v0, "MediaViewEvent: ExitFullscreen"

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFullscreenBackground(Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 481
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    const-string v0, "MediaViewEvent: FullscreenBackground"

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFullscreenForeground(Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 485
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    const-string v0, "MediaViewEvent: FullscreenForeground"

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 473
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    const-string v0, "MediaViewEvent: Paused"

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPlay(Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 477
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    const-string v0, "MediaViewEvent: Play"

    invoke-static {p1, v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVolumeChange(Lcom/facebook/ads/MediaView;F)V
    .locals 2

    .line 469
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaViewEvent: Volume "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
