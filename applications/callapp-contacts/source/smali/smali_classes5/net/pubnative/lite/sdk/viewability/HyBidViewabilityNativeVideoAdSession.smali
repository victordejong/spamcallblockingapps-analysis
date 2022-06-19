.class public Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;
.super Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeAdSession;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "HyBidViewabilityNativeVideoAdSession"


# instance fields
.field private completeFired:Z

.field private firstQuartileFired:Z

.field private mMediaEvents:Lcom/iab/omid/library/pubnativenet/adsession/a/b;

.field private midpointFired:Z

.field private startFired:Z

.field private thirdQuartileFired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeAdSession;-><init>(Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;)V

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->startFired:Z

    .line 31
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->firstQuartileFired:Z

    .line 32
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->midpointFired:Z

    .line 33
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->thirdQuartileFired:Z

    .line 34
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->completeFired:Z

    return-void
.end method


# virtual methods
.method protected createMediaEvents()V
    .locals 3

    .line 73
    :try_start_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->mAdSession:Lcom/iab/omid/library/pubnativenet/adsession/b;

    if-eqz v0, :cond_3

    .line 74
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->mAdSession:Lcom/iab/omid/library/pubnativenet/adsession/b;

    .line 1000
    move-object v1, v0

    check-cast v1, Lcom/iab/omid/library/pubnativenet/adsession/k;

    const-string v2, "AdSession is null"

    invoke-static {v0, v2}, Lcom/iab/omid/library/pubnativenet/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3000
    iget-object v0, v1, Lcom/iab/omid/library/pubnativenet/adsession/k;->a:Lcom/iab/omid/library/pubnativenet/adsession/AdSessionConfiguration;

    invoke-virtual {v0}, Lcom/iab/omid/library/pubnativenet/adsession/AdSessionConfiguration;->isNativeMediaEventsOwner()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5000
    iget-boolean v0, v1, Lcom/iab/omid/library/pubnativenet/adsession/k;->d:Z

    if-nez v0, :cond_1

    .line 1000
    invoke-static {v1}, Lcom/iab/omid/library/pubnativenet/d/d;->a(Lcom/iab/omid/library/pubnativenet/adsession/k;)V

    .line 7000
    iget-object v0, v1, Lcom/iab/omid/library/pubnativenet/adsession/k;->c:Lcom/iab/omid/library/pubnativenet/f/a;

    .line 8000
    iget-object v0, v0, Lcom/iab/omid/library/pubnativenet/f/a;->b:Lcom/iab/omid/library/pubnativenet/adsession/a/b;

    if-nez v0, :cond_0

    .line 1000
    new-instance v0, Lcom/iab/omid/library/pubnativenet/adsession/a/b;

    invoke-direct {v0, v1}, Lcom/iab/omid/library/pubnativenet/adsession/a/b;-><init>(Lcom/iab/omid/library/pubnativenet/adsession/k;)V

    .line 9000
    iget-object v1, v1, Lcom/iab/omid/library/pubnativenet/adsession/k;->c:Lcom/iab/omid/library/pubnativenet/f/a;

    .line 10000
    iput-object v0, v1, Lcom/iab/omid/library/pubnativenet/f/a;->b:Lcom/iab/omid/library/pubnativenet/adsession/a/b;

    .line 74
    iput-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->mMediaEvents:Lcom/iab/omid/library/pubnativenet/adsession/a/b;

    goto :goto_0

    .line 6000
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MediaEvents already exists for AdSession"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4000
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AdSession is started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2000
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot create MediaEvents for JavaScript AdSession"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 77
    sget-object v1, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->TAG:Ljava/lang/String;

    const-string v2, "OM SDK Ad Session - Exception"

    invoke-static {v1, v2, v0}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public fireBufferFinish()V
    .locals 3

    .line 257
    :try_start_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->isViewabilityMeasurementEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->mMediaEvents:Lcom/iab/omid/library/pubnativenet/adsession/a/b;

    if-eqz v0, :cond_1

    .line 35000
    iget-object v1, v0, Lcom/iab/omid/library/pubnativenet/adsession/a/b;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    invoke-static {v1}, Lcom/iab/omid/library/pubnativenet/d/d;->b(Lcom/iab/omid/library/pubnativenet/adsession/k;)V

    iget-object v0, v0, Lcom/iab/omid/library/pubnativenet/adsession/a/b;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    .line 36000
    iget-object v0, v0, Lcom/iab/omid/library/pubnativenet/adsession/k;->c:Lcom/iab/omid/library/pubnativenet/f/a;

    const-string v1, "bufferFinish"

    .line 35000
    invoke-virtual {v0, v1}, Lcom/iab/omid/library/pubnativenet/f/a;->a(Ljava/lang/String;)V

    .line 263
    new-instance v0, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;-><init>()V

    const-string v1, "buffer_finish"

    .line 264
    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setEventType(Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->getReportingController()Lnet/pubnative/lite/sdk/analytics/ReportingController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/pubnative/lite/sdk/analytics/ReportingController;->reportEvent(Lnet/pubnative/lite/sdk/analytics/ReportingEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 269
    sget-object v1, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->TAG:Ljava/lang/String;

    const-string v2, "OM SDK Ad Session - Exception"

    invoke-static {v1, v2, v0}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public fireBufferStart()V
    .locals 3

    .line 236
    :try_start_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->isViewabilityMeasurementEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->mMediaEvents:Lcom/iab/omid/library/pubnativenet/adsession/a/b;

    if-eqz v0, :cond_1

    .line 33000
    iget-object v1, v0, Lcom/iab/omid/library/pubnativenet/adsession/a/b;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    invoke-static {v1}, Lcom/iab/omid/library/pubnativenet/d/d;->b(Lcom/iab/omid/library/pubnativenet/adsession/k;)V

    iget-object v0, v0, Lcom/iab/omid/library/pubnativenet/adsession/a/b;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    .line 34000
    iget-object v0, v0, Lcom/iab/omid/library/pubnativenet/adsession/k;->c:Lcom/iab/omid/library/pubnativenet/f/a;

    const-string v1, "bufferStart"

    .line 33000
    invoke-virtual {v0, v1}, Lcom/iab/omid/library/pubnativenet/f/a;->a(Ljava/lang/String;)V

    .line 242
    new-instance v0, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;-><init>()V

    const-string v1, "buffer_start"

    .line 243
    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setEventType(Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->getReportingController()Lnet/pubnative/lite/sdk/analytics/ReportingController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/pubnative/lite/sdk/analytics/ReportingController;->reportEvent(Lnet/pubnative/lite/sdk/analytics/ReportingEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 248
    sget-object v1, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->TAG:Ljava/lang/String;

    const-string v2, "OM SDK Ad Session - Exception"

    invoke-static {v1, v2, v0}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public fireClick()V
    .locals 4

    .line 314
    :try_start_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->isViewabilityMeasurementEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->mMediaEvents:Lcom/iab/omid/library/pubnativenet/adsession/a/b;

    if-eqz v0, :cond_1

    .line 318
    sget-object v1, Lcom/iab/omid/library/pubnativenet/adsession/a/a;->CLICK:Lcom/iab/omid/library/pubnativenet/adsession/a/a;

    const-string v2, "InteractionType is null"

    .line 42000
    invoke-static {v1, v2}, Lcom/iab/omid/library/pubnativenet/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/iab/omid/library/pubnativenet/adsession/a/b;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    invoke-static {v2}, Lcom/iab/omid/library/pubnativenet/d/d;->b(Lcom/iab/omid/library/pubnativenet/adsession/k;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "interactionType"

    invoke-static {v2, v3, v1}, Lcom/iab/omid/library/pubnativenet/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/iab/omid/library/pubnativenet/adsession/a/b;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    .line 43000
    iget-object v0, v0, Lcom/iab/omid/library/pubnativenet/adsession/k;->c:Lcom/iab/omid/library/pubnativenet/f/a;

    const-string v1, "adUserInteraction"

    .line 42000
    invoke-virtual {v0, v1, v2}, Lcom/iab/omid/library/pubnativenet/f/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 320
    new-instance v0, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;-><init>()V

    const-string v1, "clicked"

    .line 321
    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setEventType(Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->getReportingController()Lnet/pubnative/lite/sdk/analytics/ReportingController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/pubnative/lite/sdk/analytics/ReportingController;->reportEvent(Lnet/pubnative/lite/sdk/analytics/ReportingEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 326
    sget-object v1, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->TAG:Ljava/lang/String;

    const-string v2, "OM SDK Ad Session - Exception"

    invoke-static {v1, v2, v0}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public fireComplete()V
    .locals 3

    .line 178
    :try_start_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->isViewabilityMeasurementEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->mMediaEvents:Lcom/iab/omid/library/pubnativenet/adsession/a/b;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->completeFired:Z

    if-nez v1, :cond_1

    .line 27000
    iget-object v1, v0, Lcom/iab/omid/library/pubnativenet/adsession/a/b;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    invoke-static {v1}, Lcom/iab/omid/library/pubnativenet/d/d;->b(Lcom/iab/omid/library/pubnativenet/adsession/k;)V

    iget-object v0, v0, Lcom/iab/omid/library/pubnativenet/adsession/a/b;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    .line 28000
    iget-object v0, v0, Lcom/iab/omid/library/pubnativenet/adsession/k;->c:Lcom/iab/omid/library/pubnativenet/f/a;

    const-string v1, "complete"

    .line 27000
    invoke-virtual {v0, v1}, Lcom/iab/omid/library/pubnativenet/f/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 183
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->completeFired:Z

    .line 185
    new-instance v0, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;-><init>()V

    const-string v1, "ad_complete"

    .line 186
    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setEventType(Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->getReportingController()Lnet/pubnative/lite/sdk/analytics/ReportingController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/pubnative/lite/sdk/analytics/ReportingController;->reportEvent(Lnet/pubnative/lite/sdk/analytics/ReportingEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 191
    sget-object v1, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->TAG:Ljava/lang/String;

    const-string v2, "OM SDK Ad Session - Exception"

    invoke-static {v1, v2, v0}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public fireFirstQuartile()V
    .locals 3

    .line 121
    :try_start_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->isViewabilityMeasurementEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->mMediaEvents:Lcom/iab/omid/library/pubnativenet/adsession/a/b;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->firstQuartileFired:Z

    if-nez v1, :cond_1

    .line 21000
    iget-object v1, v0, Lcom/iab/omid/library/pubnativenet/adsession/a/b;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    invoke-static {v1}, Lcom/iab/omid/library/pubnativenet/d/d;->b(Lcom/iab/omid/library/pubnativenet/adsession/k;)V

    iget-object v0, v0, Lcom/iab/omid/library/pubnativenet/adsession/a/b;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    .line 22000
    iget-object v0, v0, Lcom/iab/omid/library/pubnativenet/adsession/k;->c:Lcom/iab/omid/library/pubnativenet/f/a;

    const-string v1, "firstQuartile"

    .line 21000
    invoke-virtual {v0, v1}, Lcom/iab/omid/library/pubnativenet/f/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->firstQuartileFired:Z

    .line 128
    new-instance v0, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;-><init>()V

    const-string v1, "first_quartile"

    .line 129
    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setEventType(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->getReportingController()Lnet/pubnative/lite/sdk/analytics/ReportingController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/pubnative/lite/sdk/analytics/ReportingController;->reportEvent(Lnet/pubnative/lite/sdk/analytics/ReportingEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 134
    sget-object v1, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->TAG:Ljava/lang/String;

    const-string v2, "OM SDK Ad Session - Exception"

    invoke-static {v1, v2, v0}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public fireLoaded()V
    .locals 8

    .line 83
    :try_start_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->isViewabilityMeasurementEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    sget-object v0, Lcom/iab/omid/library/pubnativenet/adsession/a/c;->STANDALONE:Lcom/iab/omid/library/pubnativenet/adsession/a/c;

    const-string v1, "Position is null"

    .line 11000
    invoke-static {v0, v1}, Lcom/iab/omid/library/pubnativenet/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/iab/omid/library/pubnativenet/adsession/a/d;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3, v0}, Lcom/iab/omid/library/pubnativenet/adsession/a/d;-><init>(ZLjava/lang/Float;ZLcom/iab/omid/library/pubnativenet/adsession/a/c;)V

    .line 88
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->mAdEvents:Lcom/iab/omid/library/pubnativenet/adsession/a;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->mAdEvents:Lcom/iab/omid/library/pubnativenet/adsession/a;

    const-string v2, "VastProperties is null"

    .line 12000
    invoke-static {v1, v2}, Lcom/iab/omid/library/pubnativenet/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/iab/omid/library/pubnativenet/adsession/a;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    invoke-static {v2}, Lcom/iab/omid/library/pubnativenet/d/d;->b(Lcom/iab/omid/library/pubnativenet/adsession/k;)V

    iget-object v2, v0, Lcom/iab/omid/library/pubnativenet/adsession/a;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    invoke-static {v2}, Lcom/iab/omid/library/pubnativenet/d/d;->c(Lcom/iab/omid/library/pubnativenet/adsession/k;)V

    iget-object v0, v0, Lcom/iab/omid/library/pubnativenet/adsession/a;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    invoke-virtual {v1}, Lcom/iab/omid/library/pubnativenet/adsession/a/d;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 13000
    invoke-virtual {v0}, Lcom/iab/omid/library/pubnativenet/adsession/k;->d()V

    .line 14000
    iget-object v2, v0, Lcom/iab/omid/library/pubnativenet/adsession/k;->c:Lcom/iab/omid/library/pubnativenet/f/a;

    .line 15000
    invoke-static {}, Lcom/iab/omid/library/pubnativenet/b/e;->a()Lcom/iab/omid/library/pubnativenet/b/e;

    move-result-object v4

    invoke-virtual {v2}, Lcom/iab/omid/library/pubnativenet/f/a;->c()Landroid/webkit/WebView;

    move-result-object v2

    const-string v5, "publishLoadedEvent"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v1, v7, v3

    .line 16000
    invoke-virtual {v4, v2, v5, v7}, Lcom/iab/omid/library/pubnativenet/b/e;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13000
    iput-boolean v6, v0, Lcom/iab/omid/library/pubnativenet/adsession/k;->h:Z

    .line 92
    :cond_1
    new-instance v0, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;-><init>()V

    const-string v1, "session_loaded"

    .line 93
    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setEventType(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->getReportingController()Lnet/pubnative/lite/sdk/analytics/ReportingController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/pubnative/lite/sdk/analytics/ReportingController;->reportEvent(Lnet/pubnative/lite/sdk/analytics/ReportingEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 97
    sget-object v1, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->TAG:Ljava/lang/String;

    const-string v2, "OM SDK Ad Session - Exception"

    invoke-static {v1, v2, v0}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public fireMidpoint()V
    .locals 3

    const-string v0, "midpoint"

    .line 140
    :try_start_0
    iget-object v1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->isViewabilityMeasurementEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 143
    :cond_0
    iget-object v1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->mMediaEvents:Lcom/iab/omid/library/pubnativenet/adsession/a/b;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->midpointFired:Z

    if-nez v2, :cond_1

    .line 23000
    iget-object v2, v1, Lcom/iab/omid/library/pubnativenet/adsession/a/b;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    invoke-static {v2}, Lcom/iab/omid/library/pubnativenet/d/d;->b(Lcom/iab/omid/library/pubnativenet/adsession/k;)V

    iget-object v1, v1, Lcom/iab/omid/library/pubnativenet/adsession/a/b;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    .line 24000
    iget-object v1, v1, Lcom/iab/omid/library/pubnativenet/adsession/k;->c:Lcom/iab/omid/library/pubnativenet/f/a;

    .line 23000
    invoke-virtual {v1, v0}, Lcom/iab/omid/library/pubnativenet/f/a;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 145
    iput-boolean v1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->midpointFired:Z

    .line 147
    new-instance v1, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-direct {v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;-><init>()V

    .line 148
    invoke-virtual {v1, v0}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setEventType(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->getReportingController()Lnet/pubnative/lite/sdk/analytics/ReportingController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingController;->reportEvent(Lnet/pubnative/lite/sdk/analytics/ReportingEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 153
    sget-object v1, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->TAG:Ljava/lang/String;

    const-string v2, "OM SDK Ad Session - Exception"

    invoke-static {v1, v2, v0}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public firePause()V
    .locals 3

    const-string v0, "pause"

    .line 197
    :try_start_0
    iget-object v1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->isViewabilityMeasurementEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 200
    :cond_0
    iget-object v1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->mMediaEvents:Lcom/iab/omid/library/pubnativenet/adsession/a/b;

    if-eqz v1, :cond_1

    .line 29000
    iget-object v2, v1, Lcom/iab/omid/library/pubnativenet/adsession/a/b;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    invoke-static {v2}, Lcom/iab/omid/library/pubnativenet/d/d;->b(Lcom/iab/omid/library/pubnativenet/adsession/k;)V

    iget-object v1, v1, Lcom/iab/omid/library/pubnativenet/adsession/a/b;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    .line 30000
    iget-object v1, v1, Lcom/iab/omid/library/pubnativenet/adsession/k;->c:Lcom/iab/omid/library/pubnativenet/f/a;

    .line 29000
    invoke-virtual {v1, v0}, Lcom/iab/omid/library/pubnativenet/f/a;->a(Ljava/lang/String;)V

    .line 203
    new-instance v1, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-direct {v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;-><init>()V

    .line 204
    invoke-virtual {v1, v0}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setEventType(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->getReportingController()Lnet/pubnative/lite/sdk/analytics/ReportingController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingController;->reportEvent(Lnet/pubnative/lite/sdk/analytics/ReportingEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 209
    sget-object v1, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->TAG:Ljava/lang/String;

    const-string v2, "OM SDK Ad Session - Exception"

    invoke-static {v1, v2, v0}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public fireResume()V
    .locals 3

    const-string v0, "resume"

    .line 215
    :try_start_0
    iget-object v1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->isViewabilityMeasurementEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 218
    :cond_0
    iget-object v1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->mMediaEvents:Lcom/iab/omid/library/pubnativenet/adsession/a/b;

    if-eqz v1, :cond_1

    .line 31000
    iget-object v2, v1, Lcom/iab/omid/library/pubnativenet/adsession/a/b;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    invoke-static {v2}, Lcom/iab/omid/library/pubnativenet/d/d;->b(Lcom/iab/omid/library/pubnativenet/adsession/k;)V

    iget-object v1, v1, Lcom/iab/omid/library/pubnativenet/adsession/a/b;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    .line 32000
    iget-object v1, v1, Lcom/iab/omid/library/pubnativenet/adsession/k;->c:Lcom/iab/omid/library/pubnativenet/f/a;

    .line 31000
    invoke-virtual {v1, v0}, Lcom/iab/omid/library/pubnativenet/f/a;->a(Ljava/lang/String;)V

    .line 221
    new-instance v1, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-direct {v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;-><init>()V

    .line 222
    invoke-virtual {v1, v0}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setEventType(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->getReportingController()Lnet/pubnative/lite/sdk/analytics/ReportingController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingController;->reportEvent(Lnet/pubnative/lite/sdk/analytics/ReportingEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 227
    sget-object v1, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->TAG:Ljava/lang/String;

    const-string v2, "OM SDK Ad Session - Exception"

    invoke-static {v1, v2, v0}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public fireSkipped()V
    .locals 3

    const-string v0, "skipped"

    .line 296
    :try_start_0
    iget-object v1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->isViewabilityMeasurementEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 299
    :cond_0
    iget-object v1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->mMediaEvents:Lcom/iab/omid/library/pubnativenet/adsession/a/b;

    if-eqz v1, :cond_1

    .line 40000
    iget-object v2, v1, Lcom/iab/omid/library/pubnativenet/adsession/a/b;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    invoke-static {v2}, Lcom/iab/omid/library/pubnativenet/d/d;->b(Lcom/iab/omid/library/pubnativenet/adsession/k;)V

    iget-object v1, v1, Lcom/iab/omid/library/pubnativenet/adsession/a/b;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    .line 41000
    iget-object v1, v1, Lcom/iab/omid/library/pubnativenet/adsession/k;->c:Lcom/iab/omid/library/pubnativenet/f/a;

    .line 40000
    invoke-virtual {v1, v0}, Lcom/iab/omid/library/pubnativenet/f/a;->a(Ljava/lang/String;)V

    .line 302
    new-instance v1, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-direct {v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;-><init>()V

    .line 303
    invoke-virtual {v1, v0}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setEventType(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->getReportingController()Lnet/pubnative/lite/sdk/analytics/ReportingController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingController;->reportEvent(Lnet/pubnative/lite/sdk/analytics/ReportingEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 308
    sget-object v1, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->TAG:Ljava/lang/String;

    const-string v2, "OM SDK Ad Session - Exception"

    invoke-static {v1, v2, v0}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public fireStart(FZ)V
    .locals 3

    .line 103
    :try_start_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->isViewabilityMeasurementEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->mMediaEvents:Lcom/iab/omid/library/pubnativenet/adsession/a/b;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->startFired:Z

    if-nez v1, :cond_3

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    cmpg-float v1, p1, v1

    if-lez v1, :cond_2

    .line 17000
    invoke-static {p2}, Lcom/iab/omid/library/pubnativenet/adsession/a/b;->a(F)V

    iget-object v1, v0, Lcom/iab/omid/library/pubnativenet/adsession/a/b;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    invoke-static {v1}, Lcom/iab/omid/library/pubnativenet/d/d;->b(Lcom/iab/omid/library/pubnativenet/adsession/k;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "duration"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/iab/omid/library/pubnativenet/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "mediaPlayerVolume"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/iab/omid/library/pubnativenet/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/iab/omid/library/pubnativenet/b/f;->a()Lcom/iab/omid/library/pubnativenet/b/f;

    move-result-object p1

    .line 19000
    iget p1, p1, Lcom/iab/omid/library/pubnativenet/b/f;->a:F

    const-string p2, "deviceVolume"

    .line 17000
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v1, p2, p1}, Lcom/iab/omid/library/pubnativenet/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/iab/omid/library/pubnativenet/adsession/a/b;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    .line 20000
    iget-object p1, p1, Lcom/iab/omid/library/pubnativenet/adsession/k;->c:Lcom/iab/omid/library/pubnativenet/f/a;

    const-string p2, "start"

    .line 17000
    invoke-virtual {p1, p2, v1}, Lcom/iab/omid/library/pubnativenet/f/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    .line 108
    iput-boolean p1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->startFired:Z

    .line 110
    new-instance p1, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-direct {p1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;-><init>()V

    const-string p2, "session_started"

    .line 111
    invoke-virtual {p1, p2}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setEventType(Ljava/lang/String;)V

    .line 112
    iget-object p2, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->getReportingController()Lnet/pubnative/lite/sdk/analytics/ReportingController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/pubnative/lite/sdk/analytics/ReportingController;->reportEvent(Lnet/pubnative/lite/sdk/analytics/ReportingEvent;)V

    goto :goto_1

    .line 18000
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid Media duration"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 115
    sget-object p2, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->TAG:Ljava/lang/String;

    const-string v0, "OM SDK Ad Session - Exception"

    invoke-static {p2, v0, p1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public fireThirdQuartile()V
    .locals 3

    .line 159
    :try_start_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->isViewabilityMeasurementEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->mMediaEvents:Lcom/iab/omid/library/pubnativenet/adsession/a/b;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->thirdQuartileFired:Z

    if-nez v1, :cond_1

    .line 25000
    iget-object v1, v0, Lcom/iab/omid/library/pubnativenet/adsession/a/b;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    invoke-static {v1}, Lcom/iab/omid/library/pubnativenet/d/d;->b(Lcom/iab/omid/library/pubnativenet/adsession/k;)V

    iget-object v0, v0, Lcom/iab/omid/library/pubnativenet/adsession/a/b;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    .line 26000
    iget-object v0, v0, Lcom/iab/omid/library/pubnativenet/adsession/k;->c:Lcom/iab/omid/library/pubnativenet/f/a;

    const-string v1, "thirdQuartile"

    .line 25000
    invoke-virtual {v0, v1}, Lcom/iab/omid/library/pubnativenet/f/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->thirdQuartileFired:Z

    .line 166
    new-instance v0, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;-><init>()V

    const-string v1, "third_quartile"

    .line 167
    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setEventType(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->getReportingController()Lnet/pubnative/lite/sdk/analytics/ReportingController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/pubnative/lite/sdk/analytics/ReportingController;->reportEvent(Lnet/pubnative/lite/sdk/analytics/ReportingEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 172
    sget-object v1, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->TAG:Ljava/lang/String;

    const-string v2, "OM SDK Ad Session - Exception"

    invoke-static {v1, v2, v0}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public fireVolumeChange(Z)V
    .locals 3

    .line 275
    :try_start_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->isViewabilityMeasurementEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->mMediaEvents:Lcom/iab/omid/library/pubnativenet/adsession/a/b;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->completeFired:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 37000
    :goto_0
    invoke-static {p1}, Lcom/iab/omid/library/pubnativenet/adsession/a/b;->a(F)V

    iget-object v1, v0, Lcom/iab/omid/library/pubnativenet/adsession/a/b;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    invoke-static {v1}, Lcom/iab/omid/library/pubnativenet/d/d;->b(Lcom/iab/omid/library/pubnativenet/adsession/k;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "mediaPlayerVolume"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/iab/omid/library/pubnativenet/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/iab/omid/library/pubnativenet/b/f;->a()Lcom/iab/omid/library/pubnativenet/b/f;

    move-result-object p1

    .line 38000
    iget p1, p1, Lcom/iab/omid/library/pubnativenet/b/f;->a:F

    const-string v2, "deviceVolume"

    .line 37000
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/iab/omid/library/pubnativenet/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/iab/omid/library/pubnativenet/adsession/a/b;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    .line 39000
    iget-object p1, p1, Lcom/iab/omid/library/pubnativenet/adsession/k;->c:Lcom/iab/omid/library/pubnativenet/f/a;

    const-string v0, "volumeChange"

    .line 37000
    invoke-virtual {p1, v0, v1}, Lcom/iab/omid/library/pubnativenet/f/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 281
    new-instance p1, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-direct {p1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;-><init>()V

    const-string v0, "volume_change"

    .line 282
    invoke-virtual {p1, v0}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setEventType(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->getReportingController()Lnet/pubnative/lite/sdk/analytics/ReportingController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/analytics/ReportingController;->reportEvent(Lnet/pubnative/lite/sdk/analytics/ReportingEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 287
    sget-object v0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->TAG:Ljava/lang/String;

    const-string v1, "OM SDK Ad Session - Exception"

    invoke-static {v0, v1, p1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public initAdSession(Landroid/view/View;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/pubnativenet/adsession/j;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    .line 41
    iget-object v1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->isViewabilityMeasurementEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->mVerificationScriptResources:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 47
    :try_start_0
    iget-object p2, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->getPartner()Lcom/iab/omid/library/pubnativenet/adsession/i;

    move-result-object p2

    iget-object v1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    .line 48
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->getServiceJs()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->mVerificationScriptResources:Ljava/util/List;

    .line 47
    invoke-static {p2, v1, v2, v0, v0}, Lcom/iab/omid/library/pubnativenet/adsession/c;->a(Lcom/iab/omid/library/pubnativenet/adsession/i;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/pubnativenet/adsession/c;

    move-result-object p2

    .line 51
    sget-object v0, Lcom/iab/omid/library/pubnativenet/adsession/e;->VIDEO:Lcom/iab/omid/library/pubnativenet/adsession/e;

    sget-object v1, Lcom/iab/omid/library/pubnativenet/adsession/g;->BEGIN_TO_RENDER:Lcom/iab/omid/library/pubnativenet/adsession/g;

    sget-object v2, Lcom/iab/omid/library/pubnativenet/adsession/h;->NATIVE:Lcom/iab/omid/library/pubnativenet/adsession/h;

    const/4 v3, 0x0

    .line 52
    invoke-static {v0, v1, v2, v2, v3}, Lcom/iab/omid/library/pubnativenet/adsession/AdSessionConfiguration;->createAdSessionConfiguration(Lcom/iab/omid/library/pubnativenet/adsession/e;Lcom/iab/omid/library/pubnativenet/adsession/g;Lcom/iab/omid/library/pubnativenet/adsession/h;Lcom/iab/omid/library/pubnativenet/adsession/h;Z)Lcom/iab/omid/library/pubnativenet/adsession/AdSessionConfiguration;

    move-result-object v0

    .line 56
    invoke-static {v0, p2}, Lcom/iab/omid/library/pubnativenet/adsession/b;->a(Lcom/iab/omid/library/pubnativenet/adsession/AdSessionConfiguration;Lcom/iab/omid/library/pubnativenet/adsession/c;)Lcom/iab/omid/library/pubnativenet/adsession/b;

    move-result-object p2

    iput-object p2, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->mAdSession:Lcom/iab/omid/library/pubnativenet/adsession/b;

    .line 57
    iget-object p2, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->mAdSession:Lcom/iab/omid/library/pubnativenet/adsession/b;

    invoke-virtual {p2, p1}, Lcom/iab/omid/library/pubnativenet/adsession/b;->a(Landroid/view/View;)V

    .line 58
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->createAdEvents()V

    .line 59
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->createMediaEvents()V

    .line 60
    iget-object p1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->mAdSession:Lcom/iab/omid/library/pubnativenet/adsession/b;

    invoke-virtual {p1}, Lcom/iab/omid/library/pubnativenet/adsession/b;->a()V

    .line 62
    new-instance p1, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-direct {p1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;-><init>()V

    const-string p2, "session_started"

    .line 63
    invoke-virtual {p1, p2}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setEventType(Ljava/lang/String;)V

    .line 64
    iget-object p2, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->getReportingController()Lnet/pubnative/lite/sdk/analytics/ReportingController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/pubnative/lite/sdk/analytics/ReportingController;->reportEvent(Lnet/pubnative/lite/sdk/analytics/ReportingEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 67
    sget-object p2, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeVideoAdSession;->TAG:Ljava/lang/String;

    const-string v0, "OM SDK Ad Session - Exception"

    invoke-static {p2, v0, p1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
