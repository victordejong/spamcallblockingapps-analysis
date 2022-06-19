.class public Lcom/callapp/contacts/activity/missedcall/missedAnswer/MissedCallActivity;
.super Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdUnitIdRemoteConfigName()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getAnalyticsTag()Ljava/lang/String;
    .locals 1

    const-string v0, "MissCall"

    return-object v0
.end method

.method public getBiddingRemoteConfigName()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getExperimentRemoteConfigName()Ljava/lang/String;
    .locals 1

    const-string v0, "MissedCallExperiments"

    return-object v0
.end method

.method public getPreferencesRemoteConfigName()Ljava/lang/String;
    .locals 1

    const-string v0, "MissedCallPreferences"

    return-object v0
.end method

.method public getSubTitleId()I
    .locals 1

    const v0, 0x7f120469

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 19
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Missed call Screen"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 26
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "Missed call Screen"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-super {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->onDestroy()V

    return-void
.end method
