.class public final Lcom/callapp/contacts/sync/model/SyncerDataCursor;
.super Lio/objectbox/Cursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/sync/model/SyncerDataCursor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/objectbox/Cursor<",
        "Lcom/callapp/contacts/sync/model/SyncerData;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GETTER:Lcom/callapp/contacts/sync/model/SyncerData_$SyncerDataIdGetter;

.field private static final __ID_phoneOrIdKey:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    sget-object v0, Lcom/callapp/contacts/sync/model/SyncerData_;->__ID_GETTER:Lcom/callapp/contacts/sync/model/SyncerData_$SyncerDataIdGetter;

    sput-object v0, Lcom/callapp/contacts/sync/model/SyncerDataCursor;->ID_GETTER:Lcom/callapp/contacts/sync/model/SyncerData_$SyncerDataIdGetter;

    .line 28
    sget-object v0, Lcom/callapp/contacts/sync/model/SyncerData_;->phoneOrIdKey:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/sync/model/SyncerDataCursor;->__ID_phoneOrIdKey:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)V
    .locals 6

    .line 31
    sget-object v4, Lcom/callapp/contacts/sync/model/SyncerData_;->__INSTANCE:Lcom/callapp/contacts/sync/model/SyncerData_;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/Cursor;-><init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V

    return-void
.end method

.method private attachEntity(Lcom/callapp/contacts/sync/model/SyncerData;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lio/objectbox/Cursor;->boxStoreForEntities:Lio/objectbox/BoxStore;

    iput-object v0, p1, Lcom/callapp/contacts/sync/model/SyncerData;->__boxStore:Lio/objectbox/BoxStore;

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/sync/model/SyncerData;)J
    .locals 2

    .line 36
    sget-object v0, Lcom/callapp/contacts/sync/model/SyncerDataCursor;->ID_GETTER:Lcom/callapp/contacts/sync/model/SyncerData_$SyncerDataIdGetter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/sync/model/SyncerData_$SyncerDataIdGetter;->getId(Lcom/callapp/contacts/sync/model/SyncerData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 16
    check-cast p1, Lcom/callapp/contacts/sync/model/SyncerData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/sync/model/SyncerDataCursor;->getId(Lcom/callapp/contacts/sync/model/SyncerData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(Lcom/callapp/contacts/sync/model/SyncerData;)J
    .locals 35

    move-object/from16 v0, p0

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/sync/model/SyncerData;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/sync/model/SyncerData;->getPhoneOrIdKey()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 48
    sget v2, Lcom/callapp/contacts/sync/model/SyncerDataCursor;->__ID_phoneOrIdKey:I

    move v7, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 50
    :goto_0
    iget-wide v2, v0, Lcom/callapp/contacts/sync/model/SyncerDataCursor;->cursor:J

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x0

    :goto_1
    const/4 v6, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-wide/16 v33, 0x0

    invoke-static/range {v2 .. v34}, Lcom/callapp/contacts/sync/model/SyncerDataCursor;->collect313311(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I[BIJIJIJIIIIIIIFID)J

    move-result-wide v1

    .line 58
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Lcom/callapp/contacts/sync/model/SyncerData;->setId(Ljava/lang/Long;)V

    .line 60
    invoke-direct/range {p0 .. p1}, Lcom/callapp/contacts/sync/model/SyncerDataCursor;->attachEntity(Lcom/callapp/contacts/sync/model/SyncerData;)V

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/sync/model/SyncerData;->getSyncerDetails()Lio/objectbox/relation/ToMany;

    move-result-object v3

    const-class v4, Lcom/callapp/contacts/sync/model/SyncerDetails;

    invoke-virtual {v0, v3, v4}, Lcom/callapp/contacts/sync/model/SyncerDataCursor;->checkApplyToManyToDb(Ljava/util/List;Ljava/lang/Class;)V

    return-wide v1
.end method

.method public final bridge synthetic put(Ljava/lang/Object;)J
    .locals 2

    .line 16
    check-cast p1, Lcom/callapp/contacts/sync/model/SyncerData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/sync/model/SyncerDataCursor;->put(Lcom/callapp/contacts/sync/model/SyncerData;)J

    move-result-wide v0

    return-wide v0
.end method
