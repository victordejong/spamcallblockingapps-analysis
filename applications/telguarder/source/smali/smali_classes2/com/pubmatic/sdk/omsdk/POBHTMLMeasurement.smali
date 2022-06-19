.class public Lcom/pubmatic/sdk/omsdk/POBHTMLMeasurement;
.super Lcom/pubmatic/sdk/omsdk/POBMeasurement;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/omsdk/POBMeasurement;-><init>()V

    return-void
.end method


# virtual methods
.method public signalAdEvent(Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;)V
    .locals 7

    iget-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->adEvents:Lcom/iab/omid/library/pubmatic/adsession/AdEvents;

    const-string v1, "Unable to signal event : %s"

    const-string v2, "OMSDK"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    const-string v0, "Signaling event : %s"

    :try_start_0
    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v0, v5}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/pubmatic/sdk/omsdk/POBHTMLMeasurement$a;->a:[I

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v4, :cond_1

    const/4 v5, 0x2

    if-eq v0, v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->adEvents:Lcom/iab/omid/library/pubmatic/adsession/AdEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/pubmatic/adsession/AdEvents;->impressionOccurred()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->adEvents:Lcom/iab/omid/library/pubmatic/adsession/AdEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/pubmatic/adsession/AdEvents;->loaded()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {v2, v1, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {v2, v1, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public startAdSession(Landroid/webkit/WebView;)V
    .locals 8

    const-string v0, "OMSDK"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/iab/omid/library/pubmatic/Omid;->isActive()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/iab/omid/library/pubmatic/Omid;->activate(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v3, "Pubmatic"

    const-string v4, "1.8.2"

    invoke-static {v3, v4}, Lcom/iab/omid/library/pubmatic/adsession/Partner;->createPartner(Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/pubmatic/adsession/Partner;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v3, p1, v4, v5}, Lcom/iab/omid/library/pubmatic/adsession/AdSessionContext;->createHtmlAdSessionContext(Lcom/iab/omid/library/pubmatic/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/pubmatic/adsession/AdSessionContext;

    move-result-object v3

    sget-object v4, Lcom/iab/omid/library/pubmatic/adsession/CreativeType;->HTML_DISPLAY:Lcom/iab/omid/library/pubmatic/adsession/CreativeType;

    sget-object v5, Lcom/iab/omid/library/pubmatic/adsession/ImpressionType;->BEGIN_TO_RENDER:Lcom/iab/omid/library/pubmatic/adsession/ImpressionType;

    sget-object v6, Lcom/iab/omid/library/pubmatic/adsession/Owner;->NATIVE:Lcom/iab/omid/library/pubmatic/adsession/Owner;

    sget-object v7, Lcom/iab/omid/library/pubmatic/adsession/Owner;->NONE:Lcom/iab/omid/library/pubmatic/adsession/Owner;

    invoke-static {v4, v5, v6, v7, v2}, Lcom/iab/omid/library/pubmatic/adsession/AdSessionConfiguration;->createAdSessionConfiguration(Lcom/iab/omid/library/pubmatic/adsession/CreativeType;Lcom/iab/omid/library/pubmatic/adsession/ImpressionType;Lcom/iab/omid/library/pubmatic/adsession/Owner;Lcom/iab/omid/library/pubmatic/adsession/Owner;Z)Lcom/iab/omid/library/pubmatic/adsession/AdSessionConfiguration;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/iab/omid/library/pubmatic/adsession/AdSession;->createAdSession(Lcom/iab/omid/library/pubmatic/adsession/AdSessionConfiguration;Lcom/iab/omid/library/pubmatic/adsession/AdSessionContext;)Lcom/iab/omid/library/pubmatic/adsession/AdSession;

    move-result-object v3

    iput-object v3, p0, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->adSession:Lcom/iab/omid/library/pubmatic/adsession/AdSession;

    invoke-virtual {v3, p1}, Lcom/iab/omid/library/pubmatic/adsession/AdSession;->registerAdView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->adSession:Lcom/iab/omid/library/pubmatic/adsession/AdSession;

    invoke-static {p1}, Lcom/iab/omid/library/pubmatic/adsession/AdEvents;->createAdEvents(Lcom/iab/omid/library/pubmatic/adsession/AdSession;)Lcom/iab/omid/library/pubmatic/adsession/AdEvents;

    move-result-object p1

    iput-object p1, p0, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->adEvents:Lcom/iab/omid/library/pubmatic/adsession/AdEvents;

    iget-object p1, p0, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->adSession:Lcom/iab/omid/library/pubmatic/adsession/AdSession;

    invoke-virtual {p1}, Lcom/iab/omid/library/pubmatic/adsession/AdSession;->start()V

    new-array p1, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->adSession:Lcom/iab/omid/library/pubmatic/adsession/AdSession;

    invoke-virtual {v1}, Lcom/iab/omid/library/pubmatic/adsession/AdSession;->getAdSessionId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v2

    const-string v1, "Ad session started : %s"

    invoke-static {v0, v1, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Unable to start session : %s"

    invoke-static {v0, p1, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
