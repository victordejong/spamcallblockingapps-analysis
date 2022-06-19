.class public Lcom/callapp/contacts/sync/syncer/IdentifyContactsSyncer;
.super Lcom/callapp/contacts/sync/syncer/Syncer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;-><init>()V

    return-void
.end method


# virtual methods
.method public getSyncPeriodMillis()J
    .locals 3

    .line 25
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x46

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public onSyncContact(Lcom/callapp/contacts/sync/model/SyncerContext;)V
    .locals 0

    return-void
.end method

.method public onSyncEnd()Z
    .locals 1

    .line 19
    invoke-static {}, Lcom/callapp/contacts/activity/identify/IdentifyContactsTaskManager;->a()V

    .line 20
    invoke-super {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;->onSyncEnd()Z

    move-result v0

    return v0
.end method
