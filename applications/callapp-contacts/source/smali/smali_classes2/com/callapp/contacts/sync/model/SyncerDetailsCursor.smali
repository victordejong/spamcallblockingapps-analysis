.class public final Lcom/callapp/contacts/sync/model/SyncerDetailsCursor;
.super Lio/objectbox/Cursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/sync/model/SyncerDetailsCursor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/objectbox/Cursor<",
        "Lcom/callapp/contacts/sync/model/SyncerDetails;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GETTER:Lcom/callapp/contacts/sync/model/SyncerDetails_$SyncerDetailsIdGetter;

.field private static final __ID_lastSyncDate:I

.field private static final __ID_syncerDataId:I

.field private static final __ID_syncerKeyName:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    sget-object v0, Lcom/callapp/contacts/sync/model/SyncerDetails_;->__ID_GETTER:Lcom/callapp/contacts/sync/model/SyncerDetails_$SyncerDetailsIdGetter;

    sput-object v0, Lcom/callapp/contacts/sync/model/SyncerDetailsCursor;->ID_GETTER:Lcom/callapp/contacts/sync/model/SyncerDetails_$SyncerDetailsIdGetter;

    .line 28
    sget-object v0, Lcom/callapp/contacts/sync/model/SyncerDetails_;->syncerKeyName:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/sync/model/SyncerDetailsCursor;->__ID_syncerKeyName:I

    .line 29
    sget-object v0, Lcom/callapp/contacts/sync/model/SyncerDetails_;->lastSyncDate:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/sync/model/SyncerDetailsCursor;->__ID_lastSyncDate:I

    .line 30
    sget-object v0, Lcom/callapp/contacts/sync/model/SyncerDetails_;->syncerDataId:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/sync/model/SyncerDetailsCursor;->__ID_syncerDataId:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)V
    .locals 6

    .line 33
    sget-object v4, Lcom/callapp/contacts/sync/model/SyncerDetails_;->__INSTANCE:Lcom/callapp/contacts/sync/model/SyncerDetails_;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/Cursor;-><init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V

    return-void
.end method

.method private attachEntity(Lcom/callapp/contacts/sync/model/SyncerDetails;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lio/objectbox/Cursor;->boxStoreForEntities:Lio/objectbox/BoxStore;

    iput-object v0, p1, Lcom/callapp/contacts/sync/model/SyncerDetails;->__boxStore:Lio/objectbox/BoxStore;

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/sync/model/SyncerDetails;)J
    .locals 2

    .line 38
    sget-object v0, Lcom/callapp/contacts/sync/model/SyncerDetailsCursor;->ID_GETTER:Lcom/callapp/contacts/sync/model/SyncerDetails_$SyncerDetailsIdGetter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/sync/model/SyncerDetails_$SyncerDetailsIdGetter;->getId(Lcom/callapp/contacts/sync/model/SyncerDetails;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 16
    check-cast p1, Lcom/callapp/contacts/sync/model/SyncerDetails;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/sync/model/SyncerDetailsCursor;->getId(Lcom/callapp/contacts/sync/model/SyncerDetails;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(Lcom/callapp/contacts/sync/model/SyncerDetails;)J
    .locals 36

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/sync/model/SyncerDetails;->getSyncerData()Lio/objectbox/relation/ToOne;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 49
    invoke-virtual {v2}, Lio/objectbox/relation/ToOne;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    const-class v3, Lcom/callapp/contacts/sync/model/SyncerData;

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/sync/model/SyncerDetailsCursor;->getRelationTargetCursor(Ljava/lang/Class;)Lio/objectbox/Cursor;

    move-result-object v3

    .line 52
    :try_start_0
    invoke-virtual {v2, v3}, Lio/objectbox/relation/ToOne;->a(Lio/objectbox/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-virtual {v3}, Lio/objectbox/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-virtual {v3}, Lio/objectbox/Cursor;->close()V

    .line 55
    throw v2

    .line 57
    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/callapp/contacts/sync/model/SyncerDetails;->id:Ljava/lang/Long;

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/sync/model/SyncerDetails;->getSyncerKeyName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 59
    sget v3, Lcom/callapp/contacts/sync/model/SyncerDetailsCursor;->__ID_syncerKeyName:I

    move v8, v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 61
    :goto_1
    iget-wide v3, v1, Lcom/callapp/contacts/sync/model/SyncerDetailsCursor;->cursor:J

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_2

    :cond_2
    const-wide/16 v5, 0x0

    :goto_2
    const/4 v7, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget v16, Lcom/callapp/contacts/sync/model/SyncerDetailsCursor;->__ID_lastSyncDate:I

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/sync/model/SyncerDetails;->getLastSyncDate()J

    move-result-wide v17

    sget v19, Lcom/callapp/contacts/sync/model/SyncerDetailsCursor;->__ID_syncerDataId:I

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/sync/model/SyncerDetails;->getSyncerData()Lio/objectbox/relation/ToOne;

    move-result-object v2

    invoke-virtual {v2}, Lio/objectbox/relation/ToOne;->b()J

    move-result-wide v20

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    .line 61
    invoke-static/range {v3 .. v35}, Lcom/callapp/contacts/sync/model/SyncerDetailsCursor;->collect313311(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I[BIJIJIJIIIIIIIFID)J

    move-result-wide v2

    .line 69
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v0, Lcom/callapp/contacts/sync/model/SyncerDetails;->id:Ljava/lang/Long;

    .line 71
    invoke-direct/range {p0 .. p1}, Lcom/callapp/contacts/sync/model/SyncerDetailsCursor;->attachEntity(Lcom/callapp/contacts/sync/model/SyncerDetails;)V

    return-wide v2
.end method

.method public final bridge synthetic put(Ljava/lang/Object;)J
    .locals 2

    .line 16
    check-cast p1, Lcom/callapp/contacts/sync/model/SyncerDetails;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/sync/model/SyncerDetailsCursor;->put(Lcom/callapp/contacts/sync/model/SyncerDetails;)J

    move-result-wide v0

    return-wide v0
.end method
