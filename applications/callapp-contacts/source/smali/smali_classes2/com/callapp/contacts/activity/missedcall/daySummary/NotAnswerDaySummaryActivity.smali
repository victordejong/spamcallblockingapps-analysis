.class public Lcom/callapp/contacts/activity/missedcall/daySummary/NotAnswerDaySummaryActivity;
.super Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdUnitIdRemoteConfigName()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getAnalyticsTag()Ljava/lang/String;
    .locals 1

    const-string v0, "Not answered day summary overlay"

    return-object v0
.end method

.method public getAnalyticsViewTag()Ljava/lang/String;
    .locals 1

    const-string v0, "Not answer day summary Screen"

    return-object v0
.end method

.method public getBiddingRemoteConfigName()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getExperimentRemoteConfigName()Ljava/lang/String;
    .locals 1

    const-string v0, "NotAnsweredSummaryExperiments"

    return-object v0
.end method

.method public getPreferencesRemoteConfigName()Ljava/lang/String;
    .locals 1

    const-string v0, "NotAnsweredSummaryPreferences"

    return-object v0
.end method

.method public getSubTitleString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const p1, 0x7f1204d8

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1204d9

    .line 13
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
