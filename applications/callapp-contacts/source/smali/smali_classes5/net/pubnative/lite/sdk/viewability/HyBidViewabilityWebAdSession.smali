.class public Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityWebAdSession;
.super Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityAdSession;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "HyBidViewabilityWebAdSession"


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
.method public initAdSession(Landroid/webkit/WebView;Z)V
    .locals 9

    .line 26
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityWebAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->isViewabilityMeasurementEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v7, ""

    const-string v6, ""

    .line 32
    iget-object v0, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityWebAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    .line 33
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->getPartner()Lcom/iab/omid/library/pubnativenet/adsession/i;

    move-result-object v2

    const-string v0, "Partner is null"

    .line 1000
    invoke-static {v2, v0}, Lcom/iab/omid/library/pubnativenet/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "WebView is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/pubnativenet/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CustomReferenceData is greater than 256 characters"

    invoke-static {v7, v0}, Lcom/iab/omid/library/pubnativenet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/iab/omid/library/pubnativenet/adsession/c;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v8, Lcom/iab/omid/library/pubnativenet/adsession/d;->HTML:Lcom/iab/omid/library/pubnativenet/adsession/d;

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/iab/omid/library/pubnativenet/adsession/c;-><init>(Lcom/iab/omid/library/pubnativenet/adsession/i;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/iab/omid/library/pubnativenet/adsession/d;)V

    if-eqz p2, :cond_1

    .line 36
    sget-object v1, Lcom/iab/omid/library/pubnativenet/adsession/h;->JAVASCRIPT:Lcom/iab/omid/library/pubnativenet/adsession/h;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/iab/omid/library/pubnativenet/adsession/h;->NATIVE:Lcom/iab/omid/library/pubnativenet/adsession/h;

    :goto_0
    if-eqz p2, :cond_2

    .line 38
    sget-object v2, Lcom/iab/omid/library/pubnativenet/adsession/e;->DEFINED_BY_JAVASCRIPT:Lcom/iab/omid/library/pubnativenet/adsession/e;

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/iab/omid/library/pubnativenet/adsession/e;->HTML_DISPLAY:Lcom/iab/omid/library/pubnativenet/adsession/e;

    :goto_1
    if-eqz p2, :cond_3

    sget-object v3, Lcom/iab/omid/library/pubnativenet/adsession/g;->DEFINED_BY_JAVASCRIPT:Lcom/iab/omid/library/pubnativenet/adsession/g;

    goto :goto_2

    :cond_3
    sget-object v3, Lcom/iab/omid/library/pubnativenet/adsession/g;->BEGIN_TO_RENDER:Lcom/iab/omid/library/pubnativenet/adsession/g;

    :goto_2
    if-eqz p2, :cond_4

    move-object p2, v1

    goto :goto_3

    :cond_4
    sget-object p2, Lcom/iab/omid/library/pubnativenet/adsession/h;->NONE:Lcom/iab/omid/library/pubnativenet/adsession/h;

    :goto_3
    const/4 v4, 0x0

    .line 39
    invoke-static {v2, v3, v1, p2, v4}, Lcom/iab/omid/library/pubnativenet/adsession/AdSessionConfiguration;->createAdSessionConfiguration(Lcom/iab/omid/library/pubnativenet/adsession/e;Lcom/iab/omid/library/pubnativenet/adsession/g;Lcom/iab/omid/library/pubnativenet/adsession/h;Lcom/iab/omid/library/pubnativenet/adsession/h;Z)Lcom/iab/omid/library/pubnativenet/adsession/AdSessionConfiguration;

    move-result-object p2

    .line 46
    invoke-static {p2, v0}, Lcom/iab/omid/library/pubnativenet/adsession/b;->a(Lcom/iab/omid/library/pubnativenet/adsession/AdSessionConfiguration;Lcom/iab/omid/library/pubnativenet/adsession/c;)Lcom/iab/omid/library/pubnativenet/adsession/b;

    move-result-object p2

    iput-object p2, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityWebAdSession;->mAdSession:Lcom/iab/omid/library/pubnativenet/adsession/b;

    .line 47
    iget-object p2, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityWebAdSession;->mAdSession:Lcom/iab/omid/library/pubnativenet/adsession/b;

    invoke-virtual {p2, p1}, Lcom/iab/omid/library/pubnativenet/adsession/b;->a(Landroid/view/View;)V

    .line 48
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityWebAdSession;->createAdEvents()V

    .line 49
    iget-object p1, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityWebAdSession;->mAdSession:Lcom/iab/omid/library/pubnativenet/adsession/b;

    invoke-virtual {p1}, Lcom/iab/omid/library/pubnativenet/adsession/b;->a()V

    .line 51
    new-instance p1, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;

    invoke-direct {p1}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;-><init>()V

    const-string p2, "session_started"

    .line 52
    invoke-virtual {p1, p2}, Lnet/pubnative/lite/sdk/analytics/ReportingEvent;->setEventType(Ljava/lang/String;)V

    .line 53
    iget-object p2, p0, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityWebAdSession;->viewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->getReportingController()Lnet/pubnative/lite/sdk/analytics/ReportingController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/pubnative/lite/sdk/analytics/ReportingController;->reportEvent(Lnet/pubnative/lite/sdk/analytics/ReportingEvent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 58
    sget-object p2, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityWebAdSession;->TAG:Ljava/lang/String;

    const-string v0, "OM SDK Ad Session - Exception"

    invoke-static {p2, v0, p1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-static {p2, p1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
