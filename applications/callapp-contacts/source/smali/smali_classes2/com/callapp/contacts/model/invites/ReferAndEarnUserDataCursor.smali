.class public final Lcom/callapp/contacts/model/invites/ReferAndEarnUserDataCursor;
.super Lio/objectbox/Cursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/invites/ReferAndEarnUserDataCursor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/objectbox/Cursor<",
        "Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GETTER:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_$ReferAndEarnUserDataIdGetter;

.field private static final __ID_date:I

.field private static final __ID_globalPhoneNumber:I

.field private static final __ID_nameOrNumber:I

.field private static final __ID_referAndEarnDataToOneId:I

.field private static final __ID_status:I


# instance fields
.field private final statusConverter:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$ReferAndEarnStatusConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;->__ID_GETTER:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_$ReferAndEarnUserDataIdGetter;

    sput-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_$ReferAndEarnUserDataIdGetter;

    .line 31
    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;->globalPhoneNumber:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserDataCursor;->__ID_globalPhoneNumber:I

    .line 32
    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;->nameOrNumber:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserDataCursor;->__ID_nameOrNumber:I

    .line 33
    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;->date:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserDataCursor;->__ID_date:I

    .line 34
    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;->status:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserDataCursor;->__ID_status:I

    .line 35
    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;->referAndEarnDataToOneId:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserDataCursor;->__ID_referAndEarnDataToOneId:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)V
    .locals 6

    .line 38
    sget-object v4, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;->__INSTANCE:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/Cursor;-><init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V

    .line 29
    new-instance p1, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$ReferAndEarnStatusConverter;

    invoke-direct {p1}, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$ReferAndEarnStatusConverter;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserDataCursor;->statusConverter:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$ReferAndEarnStatusConverter;

    return-void
.end method

.method private attachEntity(Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lio/objectbox/Cursor;->boxStoreForEntities:Lio/objectbox/BoxStore;

    iput-object v0, p1, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->__boxStore:Lio/objectbox/BoxStore;

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;)J
    .locals 2

    .line 43
    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_$ReferAndEarnUserDataIdGetter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_$ReferAndEarnUserDataIdGetter;->getId(Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 18
    check-cast p1, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/invites/ReferAndEarnUserDataCursor;->getId(Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;)J
    .locals 40

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 53
    iget-object v2, v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->referAndEarnDataToOne:Lio/objectbox/relation/ToOne;

    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {v2}, Lio/objectbox/relation/ToOne;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    const-class v3, Lcom/callapp/contacts/model/invites/ReferAndEarnData;

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/model/invites/ReferAndEarnUserDataCursor;->getRelationTargetCursor(Ljava/lang/Class;)Lio/objectbox/Cursor;

    move-result-object v3

    .line 57
    :try_start_0
    invoke-virtual {v2, v3}, Lio/objectbox/relation/ToOne;->a(Lio/objectbox/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-virtual {v3}, Lio/objectbox/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-virtual {v3}, Lio/objectbox/Cursor;->close()V

    .line 60
    throw v2

    .line 62
    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->id:Ljava/lang/Long;

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->getGlobalPhoneNumber()Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x0

    if-eqz v9, :cond_1

    .line 64
    sget v4, Lcom/callapp/contacts/model/invites/ReferAndEarnUserDataCursor;->__ID_globalPhoneNumber:I

    move v8, v4

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 65
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 66
    sget v4, Lcom/callapp/contacts/model/invites/ReferAndEarnUserDataCursor;->__ID_nameOrNumber:I

    move v10, v4

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 67
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->getStatus()Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 68
    sget v3, Lcom/callapp/contacts/model/invites/ReferAndEarnUserDataCursor;->__ID_status:I

    move/from16 v22, v3

    goto :goto_3

    :cond_3
    const/16 v22, 0x0

    .line 70
    :goto_3
    iget-wide v5, v1, Lcom/callapp/contacts/model/invites/ReferAndEarnUserDataCursor;->cursor:J

    const-wide/16 v12, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v14, v2

    goto :goto_4

    :cond_4
    move-wide v14, v12

    :goto_4
    const/4 v7, 0x3

    const/4 v2, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    sget v19, Lcom/callapp/contacts/model/invites/ReferAndEarnUserDataCursor;->__ID_date:I

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->getDate()J

    move-result-wide v20

    sget v23, Lcom/callapp/contacts/model/invites/ReferAndEarnUserDataCursor;->__ID_referAndEarnDataToOneId:I

    iget-object v3, v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->referAndEarnDataToOne:Lio/objectbox/relation/ToOne;

    invoke-virtual {v3}, Lio/objectbox/relation/ToOne;->b()J

    move-result-wide v36

    if-eqz v22, :cond_5

    iget-object v3, v1, Lcom/callapp/contacts/model/invites/ReferAndEarnUserDataCursor;->statusConverter:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$ReferAndEarnStatusConverter;

    .line 74
    invoke-virtual {v3, v4}, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$ReferAndEarnStatusConverter;->convertToDatabaseValue(Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    move-wide/from16 v38, v3

    goto :goto_5

    :cond_5
    move-wide/from16 v38, v12

    :goto_5
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

    move-wide v3, v5

    move-wide v5, v14

    move v12, v2

    move-object/from16 v13, v16

    move/from16 v14, v17

    move-object/from16 v15, v18

    move/from16 v16, v19

    move-wide/from16 v17, v20

    move/from16 v19, v23

    move-wide/from16 v20, v36

    move-wide/from16 v23, v38

    .line 70
    invoke-static/range {v3 .. v35}, Lcom/callapp/contacts/model/invites/ReferAndEarnUserDataCursor;->collect313311(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I[BIJIJIJIIIIIIIFID)J

    move-result-wide v2

    .line 78
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->id:Ljava/lang/Long;

    .line 80
    invoke-direct/range {p0 .. p1}, Lcom/callapp/contacts/model/invites/ReferAndEarnUserDataCursor;->attachEntity(Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;)V

    return-wide v2
.end method

.method public final bridge synthetic put(Ljava/lang/Object;)J
    .locals 2

    .line 18
    check-cast p1, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/invites/ReferAndEarnUserDataCursor;->put(Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;)J

    move-result-wide v0

    return-wide v0
.end method
