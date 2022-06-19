.class public Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;
.super Lcom/pubmatic/sdk/omsdk/POBMeasurement;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;


# instance fields
.field private a:Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/pubmatic/sdk/omsdk/POBMeasurement;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;->b:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;)Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;->a:Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;

    return-object p1
.end method


# virtual methods
.method public finishAdSession()V
    .locals 1

    invoke-super {p0}, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->finishAdSession()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->adEvents:Lcom/iab/omid/library/pubmatic/adsession/AdEvents;

    iput-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;->a:Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;

    return-void
.end method

.method public impressionOccurred()V
    .locals 6

    iget-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->adEvents:Lcom/iab/omid/library/pubmatic/adsession/AdEvents;

    const-string v1, "OMSDK"

    const-string v2, "IMPRESSION"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    const-string v0, "Signaling event : %s"

    :try_start_0
    new-array v5, v4, [Ljava/lang/Object;

    aput-object v2, v5, v3

    invoke-static {v1, v0, v5}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->adEvents:Lcom/iab/omid/library/pubmatic/adsession/AdEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/pubmatic/adsession/AdEvents;->impressionOccurred()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    const-string v0, "Unable to signal event : %s Exception : %s"

    invoke-static {v1, v0, v5}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v3

    const-string v2, "Unable to signal event : %s"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public loaded(ZF)V
    .locals 6

    iget-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->adEvents:Lcom/iab/omid/library/pubmatic/adsession/AdEvents;

    const-string v1, "OMSDK"

    const-string v2, "LOADED"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    const-string v0, "Signaling event : %s"

    :try_start_0
    new-array v5, v4, [Ljava/lang/Object;

    aput-object v2, v5, v3

    invoke-static {v1, v0, v5}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    sget-object p1, Lcom/iab/omid/library/pubmatic/adsession/media/Position;->STANDALONE:Lcom/iab/omid/library/pubmatic/adsession/media/Position;

    invoke-static {p2, v4, p1}, Lcom/iab/omid/library/pubmatic/adsession/media/VastProperties;->createVastPropertiesForSkippableMedia(FZLcom/iab/omid/library/pubmatic/adsession/media/Position;)Lcom/iab/omid/library/pubmatic/adsession/media/VastProperties;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/iab/omid/library/pubmatic/adsession/media/Position;->STANDALONE:Lcom/iab/omid/library/pubmatic/adsession/media/Position;

    invoke-static {v4, p1}, Lcom/iab/omid/library/pubmatic/adsession/media/VastProperties;->createVastPropertiesForNonSkippableMedia(ZLcom/iab/omid/library/pubmatic/adsession/media/Position;)Lcom/iab/omid/library/pubmatic/adsession/media/VastProperties;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->adEvents:Lcom/iab/omid/library/pubmatic/adsession/AdEvents;

    invoke-virtual {p2, p1}, Lcom/iab/omid/library/pubmatic/adsession/AdEvents;->loaded(Lcom/iab/omid/library/pubmatic/adsession/media/VastProperties;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v2, p2, v3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v4

    const-string p1, "Unable to signal event : %s Exception : %s"

    invoke-static {v1, p1, p2}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-array p1, v4, [Ljava/lang/Object;

    aput-object v2, p1, v3

    const-string p2, "Unable to signal event : %s"

    invoke-static {v1, p2, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public signalAdEvent(Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;)V
    .locals 6

    iget-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;->a:Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;

    const-string v1, "OMSDK"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    const-string v0, "Signaling event : %s"

    :try_start_0
    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v0, v4}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$b;->a:[I

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;->a:Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;

    sget-object v4, Lcom/iab/omid/library/pubmatic/adsession/media/InteractionType;->INVITATION_ACCEPTED:Lcom/iab/omid/library/pubmatic/adsession/media/InteractionType;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;->a:Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;->resume()V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;->a:Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;->pause()V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;->a:Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;

    sget-object v4, Lcom/iab/omid/library/pubmatic/adsession/media/InteractionType;->CLICK:Lcom/iab/omid/library/pubmatic/adsession/media/InteractionType;

    :goto_0
    invoke-virtual {v0, v4}, Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;->adUserInteraction(Lcom/iab/omid/library/pubmatic/adsession/media/InteractionType;)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;->a:Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4}, Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;->volumeChange(F)V

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;->a:Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;->volumeChange(F)V

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;->a:Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;->skipped()V

    goto :goto_1

    :pswitch_7
    iget-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;->a:Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;->complete()V

    goto :goto_1

    :pswitch_8
    iget-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;->a:Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;->thirdQuartile()V

    goto :goto_1

    :pswitch_9
    iget-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;->a:Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;->midpoint()V

    goto :goto_1

    :pswitch_a
    iget-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;->a:Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;->firstQuartile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    const-string p1, "Unable to signal event : %s Exception : %s"

    invoke-static {v1, p1, v4}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "Unable to signal event : %s"

    invoke-static {v1, p1, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public signalError(Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->adSession:Lcom/iab/omid/library/pubmatic/adsession/AdSession;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    sget-object v0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$b;->c:[I

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->adSession:Lcom/iab/omid/library/pubmatic/adsession/AdSession;

    sget-object v0, Lcom/iab/omid/library/pubmatic/adsession/ErrorType;->VIDEO:Lcom/iab/omid/library/pubmatic/adsession/ErrorType;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->adSession:Lcom/iab/omid/library/pubmatic/adsession/AdSession;

    sget-object v0, Lcom/iab/omid/library/pubmatic/adsession/ErrorType;->GENERIC:Lcom/iab/omid/library/pubmatic/adsession/ErrorType;

    :goto_0
    invoke-virtual {p1, v0, p2}, Lcom/iab/omid/library/pubmatic/adsession/AdSession;->error(Lcom/iab/omid/library/pubmatic/adsession/ErrorType;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "OMSDK"

    const-string v0, "Unable to signal error : %s"

    invoke-static {p1, v0, p2}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public signalPlayerStateChange(Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;)V
    .locals 7

    iget-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;->a:Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;

    const-string v1, "OMSDK"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    const-string v0, "Signaling event : %s"

    const/4 v4, 0x2

    :try_start_0
    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v1, v0, v5}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$b;->b:[I

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v3, :cond_4

    if-eq v0, v4, :cond_3

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    const/4 v5, 0x4

    if-eq v0, v5, :cond_1

    const/4 v5, 0x5

    if-eq v0, v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;->a:Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;

    sget-object v5, Lcom/iab/omid/library/pubmatic/adsession/media/PlayerState;->NORMAL:Lcom/iab/omid/library/pubmatic/adsession/media/PlayerState;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;->a:Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;

    sget-object v5, Lcom/iab/omid/library/pubmatic/adsession/media/PlayerState;->MINIMIZED:Lcom/iab/omid/library/pubmatic/adsession/media/PlayerState;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;->a:Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;

    sget-object v5, Lcom/iab/omid/library/pubmatic/adsession/media/PlayerState;->EXPANDED:Lcom/iab/omid/library/pubmatic/adsession/media/PlayerState;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;->a:Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;

    sget-object v5, Lcom/iab/omid/library/pubmatic/adsession/media/PlayerState;->COLLAPSED:Lcom/iab/omid/library/pubmatic/adsession/media/PlayerState;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;->a:Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;

    sget-object v5, Lcom/iab/omid/library/pubmatic/adsession/media/PlayerState;->FULLSCREEN:Lcom/iab/omid/library/pubmatic/adsession/media/PlayerState;

    :goto_0
    invoke-virtual {v0, v5}, Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;->playerStateChange(Lcom/iab/omid/library/pubmatic/adsession/media/PlayerState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    const-string p1, "Unable to signal player state event : %s Exception : %s"

    invoke-static {v1, p1, v4}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "Unable to signal player state event : %s"

    invoke-static {v1, p1, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public start(FF)V
    .locals 6

    iget-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;->a:Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;

    const-string v1, "OMSDK"

    const-string v2, "START"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    const-string v0, "Signaling event : %s"

    :try_start_0
    new-array v5, v4, [Ljava/lang/Object;

    aput-object v2, v5, v3

    invoke-static {v1, v0, v5}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;->a:Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;

    invoke-virtual {v0, p1, p2}, Lcom/iab/omid/library/pubmatic/adsession/media/MediaEvents;->start(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v2, p2, v3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v4

    const-string p1, "Unable to signal event : %s Exception : %s"

    invoke-static {v1, p1, p2}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array p1, v4, [Ljava/lang/Object;

    aput-object v2, p1, v3

    const-string p2, "Unable to signal event : %s"

    invoke-static {v1, p2, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public startAdSession(Landroid/view/View;Ljava/util/List;Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBOmidSessionListener;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVerificationScriptResource;",
            ">;",
            "Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBOmidSessionListener;",
            ")V"
        }
    .end annotation

    const-string v0, "OMSDK"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/iab/omid/library/pubmatic/Omid;->isActive()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/iab/omid/library/pubmatic/Omid;->activate(Landroid/content/Context;)V

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVerificationScriptResource;

    invoke-interface {v5}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVerificationScriptResource;->getJavaScriptResource()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v5}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVerificationScriptResource;->getVendorKey()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVerificationScriptResource;->getVerificationParameter()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/iab/omid/library/pubmatic/adsession/VerificationScriptResource;->createVerificationScriptResourceWithParameters(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)Lcom/iab/omid/library/pubmatic/adsession/VerificationScriptResource;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string v8, "Unable to form verification script resource for resource url : %s"

    :try_start_2
    new-array v9, v2, [Ljava/lang/Object;

    aput-object v7, v9, v1

    invoke-static {v0, v8, v9}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance p2, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$a;

    invoke-direct {p2, p0, v4, p1, p3}, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$a;-><init>(Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;Ljava/util/List;Landroid/view/View;Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBOmidSessionListener;)V

    invoke-virtual {p0, v3, p2}, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->omidJsServiceScript(Landroid/content/Context;Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBScriptListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "Unable to start session : %s"

    invoke-static {v0, p1, p2}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
