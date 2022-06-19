.class public final Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveDataCursor;
.super Lio/objectbox/Cursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveDataCursor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/objectbox/Cursor<",
        "Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GETTER:Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData_$UserCorrectedPositiveDataIdGetter;

.field private static final __ID_profileId:I

.field private static final __ID_socialNetworkId:I

.field private static final __ID_userCorrectedDataId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    sget-object v0, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData_$UserCorrectedPositiveDataIdGetter;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData_$UserCorrectedPositiveDataIdGetter;

    .line 28
    sget-object v0, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData_;->socialNetworkId:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveDataCursor;->__ID_socialNetworkId:I

    .line 29
    sget-object v0, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData_;->profileId:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveDataCursor;->__ID_profileId:I

    .line 30
    sget-object v0, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData_;->userCorrectedDataId:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveDataCursor;->__ID_userCorrectedDataId:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)V
    .locals 6

    .line 33
    sget-object v4, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData_;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/Cursor;-><init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V

    return-void
.end method

.method private attachEntity(Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lio/objectbox/Cursor;->boxStoreForEntities:Lio/objectbox/BoxStore;

    iput-object v0, p1, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;->__boxStore:Lio/objectbox/BoxStore;

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;)J
    .locals 2

    .line 38
    sget-object v0, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData_$UserCorrectedPositiveDataIdGetter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData_$UserCorrectedPositiveDataIdGetter;->getId(Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 16
    check-cast p1, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveDataCursor;->getId(Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;)J
    .locals 37

    move-object/from16 v1, p0

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;->getUserCorrectedData()Lio/objectbox/relation/ToOne;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Lio/objectbox/relation/ToOne;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    const-class v2, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveDataCursor;->getRelationTargetCursor(Ljava/lang/Class;)Lio/objectbox/Cursor;

    move-result-object v2

    .line 52
    :try_start_0
    invoke-virtual {v0, v2}, Lio/objectbox/relation/ToOne;->a(Lio/objectbox/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-virtual {v2}, Lio/objectbox/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    invoke-virtual {v2}, Lio/objectbox/Cursor;->close()V

    .line 55
    throw v3

    .line 57
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;->getProfileId()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 58
    sget v0, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveDataCursor;->__ID_profileId:I

    move v9, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 60
    :goto_1
    iget-wide v4, v1, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveDataCursor;->cursor:J

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;->getId()J

    move-result-wide v6

    const/4 v8, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget v17, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveDataCursor;->__ID_userCorrectedDataId:I

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;->getUserCorrectedData()Lio/objectbox/relation/ToOne;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/relation/ToOne;->b()J

    move-result-wide v18

    sget v20, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveDataCursor;->__ID_socialNetworkId:I

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;->getSocialNetworkId()I

    move-result v0

    int-to-long v2, v0

    move-wide/from16 v21, v2

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const-wide/16 v35, 0x0

    .line 60
    invoke-static/range {v4 .. v36}, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveDataCursor;->collect313311(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I[BIJIJIJIIIIIIIFID)J

    move-result-wide v2

    move-object/from16 v0, p1

    .line 68
    invoke-virtual {v0, v2, v3}, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;->setId(J)V

    .line 70
    invoke-direct/range {p0 .. p1}, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveDataCursor;->attachEntity(Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;)V

    return-wide v2
.end method

.method public final bridge synthetic put(Ljava/lang/Object;)J
    .locals 2

    .line 16
    check-cast p1, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveDataCursor;->put(Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;)J

    move-result-wide v0

    return-wide v0
.end method
