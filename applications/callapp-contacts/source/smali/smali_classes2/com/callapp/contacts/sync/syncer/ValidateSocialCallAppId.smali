.class public Lcom/callapp/contacts/sync/syncer/ValidateSocialCallAppId;
.super Lcom/callapp/contacts/sync/syncer/Syncer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;-><init>()V

    return-void
.end method


# virtual methods
.method public onSyncContact(Lcom/callapp/contacts/sync/model/SyncerContext;)V
    .locals 0

    .line 26
    invoke-virtual {p1}, Lcom/callapp/contacts/sync/model/SyncerContext;->markFullySynced()V

    return-void
.end method

.method public onSyncEnd()Z
    .locals 6

    .line 31
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 32
    new-instance v2, Lcom/callapp/contacts/activity/setup/RegistrationRequest;

    new-instance v3, Lcom/callapp/contacts/sync/syncer/ValidateSocialCallAppId$1;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/sync/syncer/ValidateSocialCallAppId$1;-><init>(Lcom/callapp/contacts/sync/syncer/ValidateSocialCallAppId;)V

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3}, Lcom/callapp/contacts/activity/setup/RegistrationRequest;-><init>(Ljava/lang/String;Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;Lcom/callapp/contacts/activity/setup/RegistrationRequest$RegistrationEvents;)V

    .line 1043
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v3

    const-string v4, "Registration"

    const-string v5, "Sending validate socialId registration request"

    invoke-virtual {v3, v4, v5}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    invoke-virtual {v2, v1}, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->a(Z)Ljava/lang/Runnable;

    move-result-object v1

    iput-object v1, v2, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->a:Ljava/lang/Runnable;

    .line 1045
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->b()V

    const-wide/32 v1, 0x186a0

    .line 58
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 60
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exception while changing callappId to phone"

    invoke-virtual {v1, v4, v3, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-class v1, Lcom/callapp/contacts/sync/syncer/ValidateSocialCallAppId;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 64
    :goto_0
    invoke-super {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;->onSyncEnd()Z

    move-result v0

    return v0
.end method

.method public shouldSync()Z
    .locals 2

    .line 21
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aF:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->isNotNull()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "+"

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;->shouldSync()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
