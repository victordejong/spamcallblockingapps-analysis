.class public Lcom/callapp/contacts/activity/missedcall/missedAnswer/NotAnsweredActivity;
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

    .line 49
    sget-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getAnalyticsTag()Ljava/lang/String;
    .locals 1

    const-string v0, "NoAnswer"

    return-object v0
.end method

.method public getBiddingRemoteConfigName()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getExperimentRemoteConfigName()Ljava/lang/String;
    .locals 1

    const-string v0, "NotAnsweredExperiments"

    return-object v0
.end method

.method public getPreferencesRemoteConfigName()Ljava/lang/String;
    .locals 1

    const-string v0, "NotAnsweredPreferences"

    return-object v0
.end method

.method public getSubTitleId()I
    .locals 1

    const v0, 0x7f1202b2

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 16
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Not answer Screen"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 22
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "Not answer Screen"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-super {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->onDestroy()V

    return-void
.end method

.method public shouldUpdateCallButtion()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
