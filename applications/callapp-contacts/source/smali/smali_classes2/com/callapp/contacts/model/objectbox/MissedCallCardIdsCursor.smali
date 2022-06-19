.class public final Lcom/callapp/contacts/model/objectbox/MissedCallCardIdsCursor;
.super Lio/objectbox/Cursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/MissedCallCardIdsCursor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/objectbox/Cursor<",
        "Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GETTER:Lcom/callapp/contacts/model/objectbox/MissedCallCardIds_$MissedCallCardIdsIdGetter;

.field private static final __ID_lastMissedCall:I

.field private static final __ID_missedCallType:I

.field private static final __ID_numberOfMissedCalls:I

.field private static final __ID_phoneAsRaw:I

.field private static final __ID_phoneNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget-object v0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/MissedCallCardIds_$MissedCallCardIdsIdGetter;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIdsCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/MissedCallCardIds_$MissedCallCardIdsIdGetter;

    .line 26
    sget-object v0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds_;->phoneNumber:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIdsCursor;->__ID_phoneNumber:I

    .line 27
    sget-object v0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds_;->phoneAsRaw:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIdsCursor;->__ID_phoneAsRaw:I

    .line 28
    sget-object v0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds_;->numberOfMissedCalls:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIdsCursor;->__ID_numberOfMissedCalls:I

    .line 29
    sget-object v0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds_;->lastMissedCall:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIdsCursor;->__ID_lastMissedCall:I

    .line 30
    sget-object v0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds_;->missedCallType:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIdsCursor;->__ID_missedCallType:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)V
    .locals 6

    .line 33
    sget-object v4, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/MissedCallCardIds_;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/Cursor;-><init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;)J
    .locals 2

    .line 38
    sget-object v0, Lcom/callapp/contacts/model/objectbox/MissedCallCardIdsCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/MissedCallCardIds_$MissedCallCardIdsIdGetter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds_$MissedCallCardIdsIdGetter;->getId(Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 14
    check-cast p1, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIdsCursor;->getId(Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;)J
    .locals 36

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->getPhoneNumber()Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    if-eqz v7, :cond_0

    .line 50
    sget v2, Lcom/callapp/contacts/model/objectbox/MissedCallCardIdsCursor;->__ID_phoneNumber:I

    move v6, v2

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 51
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->getPhoneAsRaw()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 52
    sget v1, Lcom/callapp/contacts/model/objectbox/MissedCallCardIdsCursor;->__ID_phoneAsRaw:I

    move-object/from16 v3, p0

    move v8, v1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    move-object/from16 v3, p0

    .line 54
    :goto_1
    iget-wide v1, v3, Lcom/callapp/contacts/model/objectbox/MissedCallCardIdsCursor;->cursor:J

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_2

    :cond_2
    const-wide/16 v4, 0x0

    :goto_2
    move-wide/from16 v34, v4

    const/4 v5, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget v14, Lcom/callapp/contacts/model/objectbox/MissedCallCardIdsCursor;->__ID_lastMissedCall:I

    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->getLastMissedCall()J

    move-result-wide v15

    sget v17, Lcom/callapp/contacts/model/objectbox/MissedCallCardIdsCursor;->__ID_numberOfMissedCalls:I

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->getNumberOfMissedCalls()I

    move-result v0

    int-to-long v10, v0

    move-wide/from16 v18, v10

    sget v20, Lcom/callapp/contacts/model/objectbox/MissedCallCardIdsCursor;->__ID_missedCallType:I

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->getMissedCallType()I

    move-result v0

    int-to-long v10, v0

    move-wide/from16 v21, v10

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

    move-wide/from16 v3, v34

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 54
    invoke-static/range {v1 .. v33}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIdsCursor;->collect313311(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I[BIJIJIJIIIIIIIFID)J

    move-result-wide v0

    .line 62
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->setId(Ljava/lang/Long;)V

    return-wide v0
.end method

.method public final bridge synthetic put(Ljava/lang/Object;)J
    .locals 2

    .line 14
    check-cast p1, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIdsCursor;->put(Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;)J

    move-result-wide v0

    return-wide v0
.end method
