.class public Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallDaySummaryActivity;
.super Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdUnitIdRemoteConfigName()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getAnalyticsTag()Ljava/lang/String;
    .locals 1

    const-string v0, "Missed call day summary overlay"

    return-object v0
.end method

.method public getAnalyticsViewTag()Ljava/lang/String;
    .locals 1

    const-string v0, "Missed call day summary Screen"

    return-object v0
.end method

.method public getBiddingRemoteConfigName()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getExperimentRemoteConfigName()Ljava/lang/String;
    .locals 1

    const-string v0, "MissedCallSummaryExperiments"

    return-object v0
.end method

.method public getPreferencesRemoteConfigName()Ljava/lang/String;
    .locals 1

    const-string v0, "MissedCallSummaryPreferences"

    return-object v0
.end method

.method public getSubTitleString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const p1, 0x7f12046a

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 1

    const v0, 0x7f12087a

    .line 14
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
