.class public Lcom/callapp/contacts/sync/syncer/CallRecordingSyncer;
.super Lcom/callapp/contacts/sync/syncer/Syncer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;-><init>()V

    return-void
.end method


# virtual methods
.method public onSyncContact(Lcom/callapp/contacts/sync/model/SyncerContext;)V
    .locals 0

    .line 15
    invoke-virtual {p1}, Lcom/callapp/contacts/sync/model/SyncerContext;->markFullySynced()V

    return-void
.end method

.method public onSyncStart()V
    .locals 5

    .line 25
    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/CallRecordingSyncer;->shouldSync()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1034
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderUtils;->getAudioRecordingFolder()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1036
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1037
    array-length v1, v0

    if-lez v1, :cond_2

    .line 1038
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 1039
    invoke-static {v3}, Lcom/callapp/contacts/recorder/CallRecorderUtils;->a(Ljava/io/File;)Lcom/callapp/contacts/model/objectbox/CallRecorder;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1042
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/recorder/CallRecorderManager;->b(Lcom/callapp/contacts/model/objectbox/CallRecorder;)J

    goto :goto_1

    .line 1044
    :cond_1
    invoke-static {v3}, Lcom/callapp/contacts/util/IoUtils;->b(Ljava/io/File;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    :cond_2
    invoke-super {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;->onSyncStart()V

    return-void
.end method

.method public shouldSyncContact(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
