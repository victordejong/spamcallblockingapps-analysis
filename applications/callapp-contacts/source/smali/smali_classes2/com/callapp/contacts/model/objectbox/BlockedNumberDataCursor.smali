.class public final Lcom/callapp/contacts/model/objectbox/BlockedNumberDataCursor;
.super Lio/objectbox/Cursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/BlockedNumberDataCursor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/objectbox/Cursor<",
        "Lcom/callapp/contacts/model/objectbox/BlockedNumberData;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GETTER:Lcom/callapp/contacts/model/objectbox/BlockedNumberData_$BlockedNumberDataIdGetter;

.field private static final __ID_blockCall:I

.field private static final __ID_blockSms:I

.field private static final __ID_fullName:I

.field private static final __ID_phoneNum:I

.field private static final __ID_when:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget-object v0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/BlockedNumberData_$BlockedNumberDataIdGetter;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/BlockedNumberDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/BlockedNumberData_$BlockedNumberDataIdGetter;

    .line 26
    sget-object v0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;->phoneNum:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/BlockedNumberDataCursor;->__ID_phoneNum:I

    .line 27
    sget-object v0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;->fullName:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/BlockedNumberDataCursor;->__ID_fullName:I

    .line 28
    sget-object v0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;->blockSms:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/BlockedNumberDataCursor;->__ID_blockSms:I

    .line 29
    sget-object v0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;->blockCall:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/BlockedNumberDataCursor;->__ID_blockCall:I

    .line 30
    sget-object v0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;->when:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/BlockedNumberDataCursor;->__ID_when:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)V
    .locals 6

    .line 33
    sget-object v4, Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/Cursor;-><init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/objectbox/BlockedNumberData;)J
    .locals 2

    .line 38
    sget-object v0, Lcom/callapp/contacts/model/objectbox/BlockedNumberDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/BlockedNumberData_$BlockedNumberDataIdGetter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/objectbox/BlockedNumberData_$BlockedNumberDataIdGetter;->getId(Lcom/callapp/contacts/model/objectbox/BlockedNumberData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 14
    check-cast p1, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/BlockedNumberDataCursor;->getId(Lcom/callapp/contacts/model/objectbox/BlockedNumberData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(Lcom/callapp/contacts/model/objectbox/BlockedNumberData;)J
    .locals 37

    move-object/from16 v0, p1

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->getPhoneNum()Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    if-eqz v7, :cond_0

    .line 49
    sget v2, Lcom/callapp/contacts/model/objectbox/BlockedNumberDataCursor;->__ID_phoneNum:I

    move v6, v2

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 50
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->getFullName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 51
    sget v1, Lcom/callapp/contacts/model/objectbox/BlockedNumberDataCursor;->__ID_fullName:I

    move-object/from16 v15, p0

    move v8, v1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    move-object/from16 v15, p0

    .line 53
    :goto_1
    iget-wide v1, v15, Lcom/callapp/contacts/model/objectbox/BlockedNumberDataCursor;->cursor:J

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->getId()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget v14, Lcom/callapp/contacts/model/objectbox/BlockedNumberDataCursor;->__ID_when:I

    move/from16 v17, v14

    iget-wide v13, v0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->when:J

    sget v18, Lcom/callapp/contacts/model/objectbox/BlockedNumberDataCursor;->__ID_blockSms:I

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->isBlockSms()Z

    move-result v19

    const-wide/16 v20, 0x1

    const-wide/16 v22, 0x0

    if-eqz v19, :cond_2

    move-wide/from16 v34, v20

    goto :goto_2

    :cond_2
    move-wide/from16 v34, v22

    :goto_2
    sget v36, Lcom/callapp/contacts/model/objectbox/BlockedNumberDataCursor;->__ID_blockCall:I

    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->isBlockCall()Z

    move-result v19

    if-eqz v19, :cond_3

    move-wide/from16 v21, v20

    goto :goto_3

    :cond_3
    move-wide/from16 v21, v22

    :goto_3
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    move-wide/from16 v19, v13

    const/4 v13, 0x0

    move/from16 v14, v17

    move-wide/from16 v15, v19

    move/from16 v17, v18

    move-wide/from16 v18, v34

    move/from16 v20, v36

    .line 53
    invoke-static/range {v1 .. v33}, Lcom/callapp/contacts/model/objectbox/BlockedNumberDataCursor;->collect313311(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I[BIJIJIJIIIIIIIFID)J

    move-result-wide v1

    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->setId(J)V

    return-wide v1
.end method

.method public final bridge synthetic put(Ljava/lang/Object;)J
    .locals 2

    .line 14
    check-cast p1, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/BlockedNumberDataCursor;->put(Lcom/callapp/contacts/model/objectbox/BlockedNumberData;)J

    move-result-wide v0

    return-wide v0
.end method
