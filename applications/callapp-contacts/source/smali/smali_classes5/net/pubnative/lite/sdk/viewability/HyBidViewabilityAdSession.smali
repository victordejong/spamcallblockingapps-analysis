.class public abstract Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityAdSession;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mAdEvents:Lcom/iab/omid/library/pubnativenet/adsession/a;

.field protected mAdSession:Lcom/iab/omid/library/pubnativenet/adsession/b;

.field protected mVerificationScriptResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iab/omid/library/pubnativenet/adsession/j;",
            ">;"
        }
    .end annotation
.end field

.field viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;


# direct methods
.method public constructor <init>(Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityAdSession;->mVerificationScriptResources:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    return-void
.end method


# virtual methods
.method public addFriendlyObstruction(Landroid/view/View;Lcom/iab/omid/library/pubnativenet/adsession/f;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityAdSession;->mAdSession:Lcom/iab/omid/library/pubnativenet/adsession/b;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0, p1, p2, p3}, Lcom/iab/omid/library/pubnativenet/adsession/b;->a(Landroid/view/View;Lcom/iab/omid/library/pubnativenet/adsession/f;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public addVerificationScriptResource(Lcom/iab/omid/library/pubnativenet/adsession/j;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityAdSession;->mVerificationScriptResources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected createAdEvents()V
    .locals 3

    .line 132
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityAdSession;->mAdSession:Lcom/iab/omid/library/pubnativenet/adsession/b;

    if-eqz v0, :cond_1

    .line 13000
    move-object v1, v0

    check-cast v1, Lcom/iab/omid/library/pubnativenet/adsession/k;

    const-string v2, "AdSession is null"

    invoke-static {v0, v2}, Lcom/iab/omid/library/pubnativenet/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15000
    iget-object v0, v1, Lcom/iab/omid/library/pubnativenet/adsession/k;->c:Lcom/iab/omid/library/pubnativenet/f/a;

    .line 16000
    iget-object v0, v0, Lcom/iab/omid/library/pubnativenet/f/a;->a:Lcom/iab/omid/library/pubnativenet/adsession/a;

    if-nez v0, :cond_0

    .line 13000
    invoke-static {v1}, Lcom/iab/omid/library/pubnativenet/d/d;->a(Lcom/iab/omid/library/pubnativenet/adsession/k;)V

    new-instance v0, Lcom/iab/omid/library/pubnativenet/adsession/a;

    invoke-direct {v0, v1}, Lcom/iab/omid/library/pubnativenet/adsession/a;-><init>(Lcom/iab/omid/library/pubnativenet/adsession/k;)V

    .line 17000
    iget-object v1, v1, Lcom/iab/omid/library/pubnativenet/adsession/k;->c:Lcom/iab/omid/library/pubnativenet/f/a;

    .line 18000
    iput-object v0, v1, Lcom/iab/omid/library/pubnativenet/f/a;->a:Lcom/iab/omid/library/pubnativenet/adsession/a;

    .line 133
    iput-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityAdSession;->mAdEvents:Lcom/iab/omid/library/pubnativenet/adsession/a;

    goto :goto_0

    .line 14000
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AdEvents already exists for AdSession"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public fireImpression()V
    .locals 5

    .line 78
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->isViewabilityMeasurementEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityAdSession;->mAdEvents:Lcom/iab/omid/library/pubnativenet/adsession/a;

    if-eqz v0, :cond_4

    .line 7000
    :try_start_0
    iget-object v1, v0, Lcom/iab/omid/library/pubnativenet/adsession/a;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    invoke-static {v1}, Lcom/iab/omid/library/pubnativenet/d/d;->a(Lcom/iab/omid/library/pubnativenet/adsession/k;)V

    iget-object v1, v0, Lcom/iab/omid/library/pubnativenet/adsession/a;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    invoke-static {v1}, Lcom/iab/omid/library/pubnativenet/d/d;->c(Lcom/iab/omid/library/pubnativenet/adsession/k;)V

    iget-object v1, v0, Lcom/iab/omid/library/pubnativenet/adsession/a;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    invoke-virtual {v1}, Lcom/iab/omid/library/pubnativenet/adsession/k;->f()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_1

    :try_start_1
    iget-object v1, v0, Lcom/iab/omid/library/pubnativenet/adsession/a;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    invoke-virtual {v1}, Lcom/iab/omid/library/pubnativenet/adsession/k;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :cond_1
    :try_start_2
    iget-object v1, v0, Lcom/iab/omid/library/pubnativenet/adsession/a;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    invoke-virtual {v1}, Lcom/iab/omid/library/pubnativenet/adsession/k;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/iab/omid/library/pubnativenet/adsession/a;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    .line 9000
    iget-boolean v1, v0, Lcom/iab/omid/library/pubnativenet/adsession/k;->g:Z

    if-nez v1, :cond_2

    .line 10000
    iget-object v1, v0, Lcom/iab/omid/library/pubnativenet/adsession/k;->c:Lcom/iab/omid/library/pubnativenet/f/a;

    .line 11000
    invoke-static {}, Lcom/iab/omid/library/pubnativenet/b/e;->a()Lcom/iab/omid/library/pubnativenet/b/e;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iab/omid/library/pubnativenet/f/a;->c()Landroid/webkit/WebView;

    move-result-object v1

    const-string v3, "publishImpressionEvent"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 12000
    invoke-virtual {v2, v1, v3, v4}, Lcom/iab/omid/library/pubnativenet/b/e;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 8000
    iput-boolean v1, v0, Lcom/iab/omid/library/pubnativenet/adsession/k;->g:Z

    goto :goto_0

    .line 9000
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impression event can only be sent once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_3
    :goto_0
    new-instance v0, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;-><init>()V

    const-string v1, "impression"

    .line 86
    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setEventType(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->getReportingController()Lnet/pubnative/lite/sdk/analytics/ReportingController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/pubnative/lite/sdk/analytics/ReportingController;->reportEvent(Lnet/pubnative/lite/sdk/analytics/ReportingEvent;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    .line 90
    :goto_1
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_4
    return-void
.end method

.method public fireLoaded()V
    .locals 5

    .line 60
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->isViewabilityMeasurementEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityAdSession;->mAdEvents:Lcom/iab/omid/library/pubnativenet/adsession/a;

    if-eqz v0, :cond_1

    .line 2000
    :try_start_0
    iget-object v1, v0, Lcom/iab/omid/library/pubnativenet/adsession/a;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    invoke-static {v1}, Lcom/iab/omid/library/pubnativenet/d/d;->b(Lcom/iab/omid/library/pubnativenet/adsession/k;)V

    iget-object v1, v0, Lcom/iab/omid/library/pubnativenet/adsession/a;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    invoke-static {v1}, Lcom/iab/omid/library/pubnativenet/d/d;->c(Lcom/iab/omid/library/pubnativenet/adsession/k;)V

    iget-object v0, v0, Lcom/iab/omid/library/pubnativenet/adsession/a;->a:Lcom/iab/omid/library/pubnativenet/adsession/k;

    .line 3000
    invoke-virtual {v0}, Lcom/iab/omid/library/pubnativenet/adsession/k;->d()V

    .line 4000
    iget-object v1, v0, Lcom/iab/omid/library/pubnativenet/adsession/k;->c:Lcom/iab/omid/library/pubnativenet/f/a;

    .line 5000
    invoke-static {}, Lcom/iab/omid/library/pubnativenet/b/e;->a()Lcom/iab/omid/library/pubnativenet/b/e;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iab/omid/library/pubnativenet/f/a;->c()Landroid/webkit/WebView;

    move-result-object v1

    const-string v3, "publishLoadedEvent"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 6000
    invoke-virtual {v2, v1, v3, v4}, Lcom/iab/omid/library/pubnativenet/b/e;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 3000
    iput-boolean v1, v0, Lcom/iab/omid/library/pubnativenet/adsession/k;->h:Z

    .line 67
    new-instance v0, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;-><init>()V

    const-string v1, "session_loaded"

    .line 68
    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setEventType(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->getReportingController()Lnet/pubnative/lite/sdk/analytics/ReportingController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/pubnative/lite/sdk/analytics/ReportingController;->reportEvent(Lnet/pubnative/lite/sdk/analytics/ReportingEvent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 72
    :goto_0
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public isVerificationResourcesPresent()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityAdSession;->mVerificationScriptResources:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public prependOMJS(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->isViewabilityMeasurementEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 37
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->getServiceJs()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->getServiceJs()Ljava/lang/String;

    move-result-object v0

    .line 1000
    invoke-static {v0, p1}, Lcom/iab/omid/library/pubnativenet/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p1

    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1
.end method

.method public removeAllFriendlyObstructions()V
    .locals 1

    .line 118
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->isViewabilityMeasurementEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityAdSession;->mAdSession:Lcom/iab/omid/library/pubnativenet/adsession/b;

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v0}, Lcom/iab/omid/library/pubnativenet/adsession/b;->c()V

    :cond_1
    return-void
.end method

.method public removeFriendlyObstruction(Landroid/view/View;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->isViewabilityMeasurementEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityAdSession;->mAdSession:Lcom/iab/omid/library/pubnativenet/adsession/b;

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {v0, p1}, Lcom/iab/omid/library/pubnativenet/adsession/b;->b(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public stopAdSession()V
    .locals 2

    .line 96
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->isViewabilityMeasurementEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityAdSession;->mAdSession:Lcom/iab/omid/library/pubnativenet/adsession/b;

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {v0}, Lcom/iab/omid/library/pubnativenet/adsession/b;->b()V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityAdSession;->mAdSession:Lcom/iab/omid/library/pubnativenet/adsession/b;

    .line 103
    new-instance v0, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;-><init>()V

    const-string v1, "session_stopped"

    .line 104
    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setEventType(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->getReportingController()Lnet/pubnative/lite/sdk/analytics/ReportingController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/pubnative/lite/sdk/analytics/ReportingController;->reportEvent(Lnet/pubnative/lite/sdk/analytics/ReportingEvent;)V

    :cond_1
    return-void
.end method
