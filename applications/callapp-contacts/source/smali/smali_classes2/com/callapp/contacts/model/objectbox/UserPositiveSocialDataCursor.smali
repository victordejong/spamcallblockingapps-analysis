.class public final Lcom/callapp/contacts/model/objectbox/UserPositiveSocialDataCursor;
.super Lio/objectbox/Cursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/UserPositiveSocialDataCursor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/objectbox/Cursor<",
        "Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GETTER:Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData_$UserPositiveSocialDataIdGetter;

.field private static final __ID_profileId:I

.field private static final __ID_socialNetworkId:I

.field private static final __ID_sure:I

.field private static final __ID_userPositiveDataId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    sget-object v0, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData_$UserPositiveSocialDataIdGetter;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData_$UserPositiveSocialDataIdGetter;

    .line 28
    sget-object v0, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData_;->socialNetworkId:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialDataCursor;->__ID_socialNetworkId:I

    .line 29
    sget-object v0, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData_;->profileId:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialDataCursor;->__ID_profileId:I

    .line 30
    sget-object v0, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData_;->sure:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialDataCursor;->__ID_sure:I

    .line 31
    sget-object v0, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData_;->userPositiveDataId:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialDataCursor;->__ID_userPositiveDataId:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)V
    .locals 6

    .line 34
    sget-object v4, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData_;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/Cursor;-><init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V

    return-void
.end method

.method private attachEntity(Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lio/objectbox/Cursor;->boxStoreForEntities:Lio/objectbox/BoxStore;

    iput-object v0, p1, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->__boxStore:Lio/objectbox/BoxStore;

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;)J
    .locals 2

    .line 39
    sget-object v0, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData_$UserPositiveSocialDataIdGetter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData_$UserPositiveSocialDataIdGetter;->getId(Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 16
    check-cast p1, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialDataCursor;->getId(Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;)J
    .locals 38

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->getUserPositiveData()Lio/objectbox/relation/ToOne;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {v2}, Lio/objectbox/relation/ToOne;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    const-class v3, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialDataCursor;->getRelationTargetCursor(Ljava/lang/Class;)Lio/objectbox/Cursor;

    move-result-object v3

    .line 53
    :try_start_0
    invoke-virtual {v2, v3}, Lio/objectbox/relation/ToOne;->a(Lio/objectbox/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {v3}, Lio/objectbox/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-virtual {v3}, Lio/objectbox/Cursor;->close()V

    .line 56
    throw v2

    .line 58
    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->id:Ljava/lang/Long;

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->getProfileId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 60
    sget v3, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialDataCursor;->__ID_profileId:I

    move v8, v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 62
    :goto_1
    iget-wide v3, v1, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialDataCursor;->cursor:J

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_2

    :cond_2
    const-wide/16 v10, 0x0

    :goto_2
    const/4 v7, 0x3

    const/4 v2, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget v17, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialDataCursor;->__ID_userPositiveDataId:I

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->getUserPositiveData()Lio/objectbox/relation/ToOne;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lio/objectbox/relation/ToOne;->b()J

    move-result-wide v18

    sget v20, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialDataCursor;->__ID_socialNetworkId:I

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->getSocialNetworkId()I

    move-result v5

    int-to-long v5, v5

    sget v23, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialDataCursor;->__ID_sure:I

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->isSure()Z

    move-result v24

    if-eqz v24, :cond_3

    const-wide/16 v21, 0x1

    move-wide/from16 v36, v21

    goto :goto_3

    :cond_3
    const-wide/16 v36, 0x0

    :goto_3
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

    move-wide/from16 v21, v5

    move-wide v5, v10

    move v10, v2

    move-object v11, v12

    move v12, v13

    move-object v13, v14

    move v14, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move-wide/from16 v17, v18

    move/from16 v19, v20

    move-wide/from16 v20, v21

    move/from16 v22, v23

    move-wide/from16 v23, v36

    .line 62
    invoke-static/range {v3 .. v35}, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialDataCursor;->collect313311(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I[BIJIJIJIIIIIIIFID)J

    move-result-wide v2

    .line 70
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v0, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->id:Ljava/lang/Long;

    .line 72
    invoke-direct/range {p0 .. p1}, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialDataCursor;->attachEntity(Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;)V

    return-wide v2
.end method

.method public final bridge synthetic put(Ljava/lang/Object;)J
    .locals 2

    .line 16
    check-cast p1, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialDataCursor;->put(Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;)J

    move-result-wide v0

    return-wide v0
.end method
