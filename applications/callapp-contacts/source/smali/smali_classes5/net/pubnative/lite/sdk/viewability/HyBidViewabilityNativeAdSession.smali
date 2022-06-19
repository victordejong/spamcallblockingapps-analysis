.class public Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeAdSession;
.super Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityAdSession;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "HyBidViewabilityNativeAdSession"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityAdSession;-><init>(Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;)V

    return-void
.end method


# virtual methods
.method public initAdSession(Landroid/view/View;)V
    .locals 7

    const-string v0, ""

    .line 26
    iget-object v1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->isViewabilityMeasurementEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 30
    :cond_0
    :try_start_0
    iget-object v1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->getPartner()Lcom/iab/omid/library/pubnativenet/adsession/i;

    move-result-object v1

    iget-object v2, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    .line 31
    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->getServiceJs()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeAdSession;->mVerificationScriptResources:Ljava/util/List;

    .line 30
    invoke-static {v1, v2, v3, v0, v0}, Lcom/iab/omid/library/pubnativenet/adsession/c;->a(Lcom/iab/omid/library/pubnativenet/adsession/i;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/pubnativenet/adsession/c;

    move-result-object v1

    .line 34
    sget-object v2, Lcom/iab/omid/library/pubnativenet/adsession/e;->NATIVE_DISPLAY:Lcom/iab/omid/library/pubnativenet/adsession/e;

    sget-object v3, Lcom/iab/omid/library/pubnativenet/adsession/g;->BEGIN_TO_RENDER:Lcom/iab/omid/library/pubnativenet/adsession/g;

    sget-object v4, Lcom/iab/omid/library/pubnativenet/adsession/h;->NATIVE:Lcom/iab/omid/library/pubnativenet/adsession/h;

    sget-object v5, Lcom/iab/omid/library/pubnativenet/adsession/h;->NONE:Lcom/iab/omid/library/pubnativenet/adsession/h;

    const/4 v6, 0x0

    .line 35
    invoke-static {v2, v3, v4, v5, v6}, Lcom/iab/omid/library/pubnativenet/adsession/AdSessionConfiguration;->createAdSessionConfiguration(Lcom/iab/omid/library/pubnativenet/adsession/e;Lcom/iab/omid/library/pubnativenet/adsession/g;Lcom/iab/omid/library/pubnativenet/adsession/h;Lcom/iab/omid/library/pubnativenet/adsession/h;Z)Lcom/iab/omid/library/pubnativenet/adsession/AdSessionConfiguration;

    move-result-object v2

    .line 41
    invoke-static {v2, v1}, Lcom/iab/omid/library/pubnativenet/adsession/b;->a(Lcom/iab/omid/library/pubnativenet/adsession/AdSessionConfiguration;Lcom/iab/omid/library/pubnativenet/adsession/c;)Lcom/iab/omid/library/pubnativenet/adsession/b;

    move-result-object v1

    iput-object v1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeAdSession;->mAdSession:Lcom/iab/omid/library/pubnativenet/adsession/b;

    .line 42
    iget-object v1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeAdSession;->mAdSession:Lcom/iab/omid/library/pubnativenet/adsession/b;

    invoke-virtual {v1, p1}, Lcom/iab/omid/library/pubnativenet/adsession/b;->a(Landroid/view/View;)V

    .line 43
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeAdSession;->createAdEvents()V

    .line 44
    iget-object p1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeAdSession;->mAdSession:Lcom/iab/omid/library/pubnativenet/adsession/b;

    invoke-virtual {p1}, Lcom/iab/omid/library/pubnativenet/adsession/b;->a()V

    .line 46
    new-instance p1, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-direct {p1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;-><init>()V

    const-string v1, "session_started"

    .line 47
    invoke-virtual {p1, v1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setEventType(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->getReportingController()Lnet/pubnative/lite/sdk/analytics/ReportingController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/pubnative/lite/sdk/analytics/ReportingController;->reportEvent(Lnet/pubnative/lite/sdk/analytics/ReportingEvent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 53
    sget-object v0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityNativeAdSession;->TAG:Ljava/lang/String;

    const-string v1, "OM SDK Ad Session - Exception"

    invoke-static {v0, v1, p1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
