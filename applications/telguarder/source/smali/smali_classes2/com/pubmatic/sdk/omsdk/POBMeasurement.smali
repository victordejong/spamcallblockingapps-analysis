.class public abstract Lcom/pubmatic/sdk/omsdk/POBMeasurement;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider;


# static fields
.field protected static final TAG:Ljava/lang/String; = "OMSDK"


# instance fields
.field protected adEvents:Lcom/iab/omid/library/pubmatic/adsession/AdEvents;

.field protected adSession:Lcom/iab/omid/library/pubmatic/adsession/AdSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addFriendlyObstructions(Landroid/view/View;Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;)V
    .locals 4

    iget-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->adSession:Lcom/iab/omid/library/pubmatic/adsession/AdSession;

    const-string v1, "OMSDK"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/iab/omid/library/pubmatic/adsession/FriendlyObstructionPurpose;->valueOf(Ljava/lang/String;)Lcom/iab/omid/library/pubmatic/adsession/FriendlyObstructionPurpose;

    move-result-object p2

    const/4 v3, 0x0

    invoke-virtual {v0, p1, p2, v3}, Lcom/iab/omid/library/pubmatic/adsession/AdSession;->addFriendlyObstruction(Landroid/view/View;Lcom/iab/omid/library/pubmatic/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "Unable to add obstruction: %s"

    invoke-static {v1, p1, p2}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "Unable to add obstruction"

    invoke-static {v1, p2, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public finishAdSession()V
    .locals 6

    const-string v0, "OMSDK"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->adSession:Lcom/iab/omid/library/pubmatic/adsession/AdSession;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/iab/omid/library/pubmatic/adsession/AdSession;->removeAllFriendlyObstructions()V

    iget-object v3, p0, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->adSession:Lcom/iab/omid/library/pubmatic/adsession/AdSession;

    invoke-virtual {v3}, Lcom/iab/omid/library/pubmatic/adsession/AdSession;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "Ad session finished id : %s"

    :try_start_1
    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->adSession:Lcom/iab/omid/library/pubmatic/adsession/AdSession;

    invoke-virtual {v5}, Lcom/iab/omid/library/pubmatic/adsession/AdSession;->getAdSessionId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->adSession:Lcom/iab/omid/library/pubmatic/adsession/AdSession;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_0
    const-string v3, "Unable to finish Ad session"

    :try_start_2
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Unable to finish Ad session: %s"

    invoke-static {v0, v2, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public omSDKVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/iab/omid/library/pubmatic/Omid;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public omidJsServiceScript(Landroid/content/Context;Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBScriptListener;)V
    .locals 3

    invoke-virtual {p0}, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->omSDKVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-Pubmatic"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "https://ads.pubmatic.com/openwrapsdk/omsdk/%s/omid.js"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getCacheManager(Landroid/content/Context;)Lcom/pubmatic/sdk/common/cache/POBCacheManager;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcom/pubmatic/sdk/common/cache/POBCacheManager;->requestServiceScript(Ljava/lang/String;Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBScriptListener;)V

    return-void
.end method

.method public removeFriendlyObstructions(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->adSession:Lcom/iab/omid/library/pubmatic/adsession/AdSession;

    const-string v1, "OMSDK"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/iab/omid/library/pubmatic/adsession/AdSession;->removeFriendlyObstruction(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/iab/omid/library/pubmatic/adsession/AdSession;->removeAllFriendlyObstructions()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "Unable to add obstruction: %s"

    invoke-static {v1, p1, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Unable to remove obstruction"

    invoke-static {v1, v0, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setTrackView(Landroid/view/View;)V
    .locals 4

    const-string v0, "OMSDK"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->adSession:Lcom/iab/omid/library/pubmatic/adsession/AdSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const-string v2, "Track view changed"

    :try_start_1
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/pubmatic/sdk/omsdk/POBMeasurement;->adSession:Lcom/iab/omid/library/pubmatic/adsession/AdSession;

    invoke-virtual {v2, p1}, Lcom/iab/omid/library/pubmatic/adsession/AdSession;->registerAdView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_0
    const-string p1, "Unable to change track view"

    :try_start_2
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "Unable to change track view: %s"

    invoke-static {v0, p1, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
