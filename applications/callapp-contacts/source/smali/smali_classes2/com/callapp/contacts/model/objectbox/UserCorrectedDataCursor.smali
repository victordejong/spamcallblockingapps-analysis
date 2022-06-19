.class public final Lcom/callapp/contacts/model/objectbox/UserCorrectedDataCursor;
.super Lio/objectbox/Cursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/UserCorrectedDataCursor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/objectbox/Cursor<",
        "Lcom/callapp/contacts/model/objectbox/UserCorrectedData;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GETTER:Lcom/callapp/contacts/model/objectbox/UserCorrectedData_$UserCorrectedDataIdGetter;

.field private static final __ID_fullName:I

.field private static final __ID_phoneOrIdKey:I

.field private static final __ID_userCorrectedType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    sget-object v0, Lcom/callapp/contacts/model/objectbox/UserCorrectedData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/UserCorrectedData_$UserCorrectedDataIdGetter;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/UserCorrectedDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/UserCorrectedData_$UserCorrectedDataIdGetter;

    .line 28
    sget-object v0, Lcom/callapp/contacts/model/objectbox/UserCorrectedData_;->phoneOrIdKey:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/UserCorrectedDataCursor;->__ID_phoneOrIdKey:I

    .line 29
    sget-object v0, Lcom/callapp/contacts/model/objectbox/UserCorrectedData_;->fullName:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/UserCorrectedDataCursor;->__ID_fullName:I

    .line 30
    sget-object v0, Lcom/callapp/contacts/model/objectbox/UserCorrectedData_;->userCorrectedType:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/UserCorrectedDataCursor;->__ID_userCorrectedType:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)V
    .locals 6

    .line 33
    sget-object v4, Lcom/callapp/contacts/model/objectbox/UserCorrectedData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/UserCorrectedData_;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/Cursor;-><init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V

    return-void
.end method

.method private attachEntity(Lcom/callapp/contacts/model/objectbox/UserCorrectedData;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lio/objectbox/Cursor;->boxStoreForEntities:Lio/objectbox/BoxStore;

    iput-object v0, p1, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->__boxStore:Lio/objectbox/BoxStore;

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/objectbox/UserCorrectedData;)J
    .locals 2

    .line 38
    sget-object v0, Lcom/callapp/contacts/model/objectbox/UserCorrectedDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/UserCorrectedData_$UserCorrectedDataIdGetter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData_$UserCorrectedDataIdGetter;->getId(Lcom/callapp/contacts/model/objectbox/UserCorrectedData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 16
    check-cast p1, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/UserCorrectedDataCursor;->getId(Lcom/callapp/contacts/model/objectbox/UserCorrectedData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(Lcom/callapp/contacts/model/objectbox/UserCorrectedData;)J
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 48
    iget-object v2, v1, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->id:Ljava/lang/Long;

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->getPhoneOrIdKey()Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x0

    if-eqz v9, :cond_0

    .line 50
    sget v4, Lcom/callapp/contacts/model/objectbox/UserCorrectedDataCursor;->__ID_phoneOrIdKey:I

    move v8, v4

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 51
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->getFullName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 52
    sget v3, Lcom/callapp/contacts/model/objectbox/UserCorrectedDataCursor;->__ID_fullName:I

    move v10, v3

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    .line 54
    :goto_1
    iget-wide v3, v0, Lcom/callapp/contacts/model/objectbox/UserCorrectedDataCursor;->cursor:J

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_2

    :cond_2
    const-wide/16 v5, 0x0

    :goto_2
    const/4 v7, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget v16, Lcom/callapp/contacts/model/objectbox/UserCorrectedDataCursor;->__ID_userCorrectedType:I

    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->getUserCorrectedType()I

    move-result v2

    int-to-long v12, v2

    move-wide/from16 v17, v12

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

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

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 54
    invoke-static/range {v3 .. v35}, Lcom/callapp/contacts/model/objectbox/UserCorrectedDataCursor;->collect313311(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I[BIJIJIJIIIIIIIFID)J

    move-result-wide v2

    .line 62
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->id:Ljava/lang/Long;

    .line 64
    invoke-direct/range {p0 .. p1}, Lcom/callapp/contacts/model/objectbox/UserCorrectedDataCursor;->attachEntity(Lcom/callapp/contacts/model/objectbox/UserCorrectedData;)V

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->getUserCorrectedPositive()Lio/objectbox/relation/ToMany;

    move-result-object v1

    const-class v4, Lcom/callapp/contacts/model/objectbox/UserCorrectedPositiveData;

    invoke-virtual {v0, v1, v4}, Lcom/callapp/contacts/model/objectbox/UserCorrectedDataCursor;->checkApplyToManyToDb(Ljava/util/List;Ljava/lang/Class;)V

    return-wide v2
.end method

.method public final bridge synthetic put(Ljava/lang/Object;)J
    .locals 2

    .line 16
    check-cast p1, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/UserCorrectedDataCursor;->put(Lcom/callapp/contacts/model/objectbox/UserCorrectedData;)J

    move-result-wide v0

    return-wide v0
.end method
