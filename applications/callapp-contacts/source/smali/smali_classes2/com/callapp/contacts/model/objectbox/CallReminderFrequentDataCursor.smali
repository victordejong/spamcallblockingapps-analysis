.class public final Lcom/callapp/contacts/model/objectbox/CallReminderFrequentDataCursor;
.super Lio/objectbox/Cursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/CallReminderFrequentDataCursor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/objectbox/Cursor<",
        "Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GETTER:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_$CallReminderFrequentDataIdGetter;

.field private static final __ID_deleteTimeStamp:I

.field private static final __ID_frequentType:I

.field private static final __ID_lastDeleteFromNotificationTimeStamp:I

.field private static final __ID_missedCallType:I

.field private static final __ID_phoneAsGlobal:I


# instance fields
.field private final frequentTypeConverter:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentTypeConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_$CallReminderFrequentDataIdGetter;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_$CallReminderFrequentDataIdGetter;

    .line 29
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;->phoneAsGlobal:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentDataCursor;->__ID_phoneAsGlobal:I

    .line 30
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;->frequentType:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentDataCursor;->__ID_frequentType:I

    .line 31
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;->deleteTimeStamp:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentDataCursor;->__ID_deleteTimeStamp:I

    .line 32
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;->missedCallType:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentDataCursor;->__ID_missedCallType:I

    .line 33
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;->lastDeleteFromNotificationTimeStamp:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentDataCursor;->__ID_lastDeleteFromNotificationTimeStamp:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)V
    .locals 6

    .line 36
    sget-object v4, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/Cursor;-><init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V

    .line 27
    new-instance p1, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentTypeConverter;

    invoke-direct {p1}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentTypeConverter;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentDataCursor;->frequentTypeConverter:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentTypeConverter;

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;)J
    .locals 2

    .line 41
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_$CallReminderFrequentDataIdGetter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_$CallReminderFrequentDataIdGetter;->getId(Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 16
    check-cast p1, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentDataCursor;->getId(Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;)J
    .locals 39

    move-object/from16 v0, p0

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->getPhoneAsGlobal()Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    if-eqz v8, :cond_0

    .line 53
    sget v3, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentDataCursor;->__ID_phoneAsGlobal:I

    move v7, v3

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 54
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->getFrequentType()Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 55
    sget v2, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentDataCursor;->__ID_frequentType:I

    move/from16 v21, v2

    goto :goto_1

    :cond_1
    const/16 v21, 0x0

    .line 57
    :goto_1
    iget-wide v4, v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentDataCursor;->cursor:J

    const-wide/16 v9, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide v11, v1

    goto :goto_2

    :cond_2
    move-wide v11, v9

    :goto_2
    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    sget v18, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentDataCursor;->__ID_deleteTimeStamp:I

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->getDeleteTimeStamp()J

    move-result-wide v19

    sget v22, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentDataCursor;->__ID_lastDeleteFromNotificationTimeStamp:I

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->getLastDeleteFromNotificationTimeStamp()J

    move-result-wide v35

    if-eqz v21, :cond_3

    iget-object v2, v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentDataCursor;->frequentTypeConverter:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentTypeConverter;

    .line 61
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentTypeConverter;->convertToDatabaseValue(Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    move-wide/from16 v37, v2

    goto :goto_3

    :cond_3
    move-wide/from16 v37, v9

    :goto_3
    sget v24, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentDataCursor;->__ID_missedCallType:I

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->getMissedCallType()I

    move-result v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-wide/16 v33, 0x0

    move-wide v2, v4

    move-wide v4, v11

    move v9, v1

    move-object v10, v13

    move v11, v14

    move-object v12, v15

    move/from16 v13, v16

    move-object/from16 v14, v17

    move/from16 v15, v18

    move-wide/from16 v16, v19

    move/from16 v18, v22

    move-wide/from16 v19, v35

    move-wide/from16 v22, v37

    .line 57
    invoke-static/range {v2 .. v34}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentDataCursor;->collect313311(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I[BIJIJIJIIIIIIIFID)J

    move-result-wide v1

    .line 65
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->setId(Ljava/lang/Long;)V

    return-wide v1
.end method

.method public final bridge synthetic put(Ljava/lang/Object;)J
    .locals 2

    .line 16
    check-cast p1, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentDataCursor;->put(Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;)J

    move-result-wide v0

    return-wide v0
.end method
