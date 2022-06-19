.class public abstract Lcom/callapp/contacts/sync/syncer/Syncer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public lastSyncPref:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

.field public syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

.field private syncEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/callapp/contacts/sync/syncer/Syncer;->syncEnabled:Z

    .line 24
    new-instance v0, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".lastSync"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    iput-object v0, p0, Lcom/callapp/contacts/sync/syncer/Syncer;->lastSyncPref:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    return-void
.end method


# virtual methods
.method protected canMatchProfileToContact(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)Z
    .locals 2

    .line 95
    invoke-static {p3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 100
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getHelperSocialNetDBId()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/model/contact/ContactData;->getNegatives(I)Ljava/util/Set;

    move-result-object p1

    .line 101
    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "DONTHAVE"

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/sync/syncer/Syncer;->setSyncEnabled(Z)V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/callapp/contacts/sync/syncer/Syncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSyncPeriodMillis()J
    .locals 2

    const-wide/32 v0, 0x240c8400

    return-wide v0
.end method

.method public init(Lcom/callapp/contacts/sync/model/SyncContext;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/callapp/contacts/sync/syncer/Syncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    const/4 p1, 0x1

    .line 74
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/sync/syncer/Syncer;->setSyncEnabled(Z)V

    return-void
.end method

.method public isSyncEnabled()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/callapp/contacts/sync/syncer/Syncer;->syncEnabled:Z

    return v0
.end method

.method protected markProfileAsSureOrUnsure(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;Z)Z
    .locals 6

    .line 82
    invoke-virtual {p0, p1, p2, p3}, Lcom/callapp/contacts/sync/syncer/Syncer;->canMatchProfileToContact(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 87
    :cond_0
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v1

    const/4 v3, 0x0

    move-object v0, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(JLjava/lang/String;Ljava/lang/String;Z)Z

    .line 88
    new-instance v0, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-direct {v0, p3, p4}, Lcom/callapp/common/model/json/JSONSocialNetworkID;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, p2, v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    const/4 p1, 0x1

    return p1
.end method

.method public needsDeviceData()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract onSyncContact(Lcom/callapp/contacts/sync/model/SyncerContext;)V
.end method

.method public onSyncEnd()Z
    .locals 3

    .line 49
    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;->isSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/Syncer;->lastSyncPref:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSyncStart()V
    .locals 3

    .line 42
    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;->shouldSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".startSync"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;-><init>(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/callapp/contacts/sync/syncer/Syncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    iget-wide v1, v1, Lcom/callapp/contacts/sync/model/SyncContext;->startDate:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected sendMatchingAnalytics(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .line 117
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    long-to-double v4, p3

    const/4 p3, 0x0

    new-array v6, p3, [Ljava/lang/String;

    const-string v1, "Syncers"

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    return-void
.end method

.method public setSyncEnabled(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/callapp/contacts/sync/syncer/Syncer;->syncEnabled:Z

    return-void
.end method

.method public shouldSync()Z
    .locals 6

    .line 29
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/Syncer;->lastSyncPref:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 30
    iget-object v2, p0, Lcom/callapp/contacts/sync/syncer/Syncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    iget-wide v2, v2, Lcom/callapp/contacts/sync/model/SyncContext;->startDate:J

    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;->getSyncPeriodMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSyncContact(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 8

    .line 58
    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;->isSyncEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/Syncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/sync/model/SyncContext;->getSyncData(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/sync/model/SyncerData;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/sync/model/SyncerData;->getSyncDate(Ljava/lang/String;)J

    move-result-wide v2

    .line 62
    iget-object p1, p0, Lcom/callapp/contacts/sync/syncer/Syncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    iget-wide v4, p1, Lcom/callapp/contacts/sync/model/SyncContext;->startDate:J

    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;->getSyncPeriodMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long p1, v4, v2

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
