.class public final Lcom/callapp/contacts/model/objectbox/CallRemindersDataCursor;
.super Lio/objectbox/Cursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/CallRemindersDataCursor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/objectbox/Cursor<",
        "Lcom/callapp/contacts/model/objectbox/CallRemindersData;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GETTER:Lcom/callapp/contacts/model/objectbox/CallRemindersData_$CallRemindersDataIdGetter;

.field private static final __ID_date:I

.field private static final __ID_displayName:I

.field private static final __ID_jobStringId:I

.field private static final __ID_notificationId:I

.field private static final __ID_notificationTime:I

.field private static final __ID_phoneAsRaw:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallRemindersData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/CallRemindersData_$CallRemindersDataIdGetter;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/CallRemindersDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/CallRemindersData_$CallRemindersDataIdGetter;

    .line 26
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallRemindersData_;->date:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/CallRemindersDataCursor;->__ID_date:I

    .line 27
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallRemindersData_;->displayName:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/CallRemindersDataCursor;->__ID_displayName:I

    .line 28
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallRemindersData_;->phoneAsRaw:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/CallRemindersDataCursor;->__ID_phoneAsRaw:I

    .line 29
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallRemindersData_;->jobStringId:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/CallRemindersDataCursor;->__ID_jobStringId:I

    .line 30
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallRemindersData_;->notificationTime:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/CallRemindersDataCursor;->__ID_notificationTime:I

    .line 31
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallRemindersData_;->notificationId:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/CallRemindersDataCursor;->__ID_notificationId:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)V
    .locals 6

    .line 34
    sget-object v4, Lcom/callapp/contacts/model/objectbox/CallRemindersData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/CallRemindersData_;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/Cursor;-><init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/objectbox/CallRemindersData;)J
    .locals 2

    .line 39
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallRemindersDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/CallRemindersData_$CallRemindersDataIdGetter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/objectbox/CallRemindersData_$CallRemindersDataIdGetter;->getId(Lcom/callapp/contacts/model/objectbox/CallRemindersData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 14
    check-cast p1, Lcom/callapp/contacts/model/objectbox/CallRemindersData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/CallRemindersDataCursor;->getId(Lcom/callapp/contacts/model/objectbox/CallRemindersData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(Lcom/callapp/contacts/model/objectbox/CallRemindersData;)J
    .locals 40

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    if-eqz v7, :cond_0

    .line 51
    sget v2, Lcom/callapp/contacts/model/objectbox/CallRemindersDataCursor;->__ID_displayName:I

    move v6, v2

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 52
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->getPhoneAsRaw()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 53
    sget v2, Lcom/callapp/contacts/model/objectbox/CallRemindersDataCursor;->__ID_phoneAsRaw:I

    move v8, v2

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 54
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->getJobStringId()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 55
    sget v2, Lcom/callapp/contacts/model/objectbox/CallRemindersDataCursor;->__ID_jobStringId:I

    move v10, v2

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 56
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->getNotificationTime()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 57
    sget v3, Lcom/callapp/contacts/model/objectbox/CallRemindersDataCursor;->__ID_notificationTime:I

    move v14, v3

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    .line 58
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->getNotificationId()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 59
    sget v4, Lcom/callapp/contacts/model/objectbox/CallRemindersDataCursor;->__ID_notificationId:I

    move/from16 v17, v4

    goto :goto_4

    :cond_4
    const/16 v17, 0x0

    .line 60
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->getDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 61
    sget v1, Lcom/callapp/contacts/model/objectbox/CallRemindersDataCursor;->__ID_date:I

    move-object/from16 v15, p0

    move/from16 v20, v1

    goto :goto_5

    :cond_5
    const/16 v20, 0x0

    move-object/from16 v15, p0

    .line 63
    :goto_5
    iget-wide v12, v15, Lcom/callapp/contacts/model/objectbox/CallRemindersDataCursor;->cursor:J

    const-wide/16 v18, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide/from16 v21, v0

    goto :goto_6

    :cond_6
    move-wide/from16 v21, v18

    :goto_6
    const/4 v5, 0x3

    const/4 v0, 0x0

    const/16 v16, 0x0

    if-eqz v14, :cond_7

    .line 66
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide/from16 v34, v1

    goto :goto_7

    :cond_7
    move-wide/from16 v34, v18

    :goto_7
    if-eqz v17, :cond_8

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide/from16 v36, v1

    goto :goto_8

    :cond_8
    move-wide/from16 v36, v18

    :goto_8
    if-eqz v20, :cond_9

    .line 67
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    move-wide/from16 v38, v1

    goto :goto_9

    :cond_9
    move-wide/from16 v38, v18

    :goto_9
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

    move-wide v1, v12

    move-wide/from16 v3, v21

    move v12, v0

    move-object/from16 v13, v16

    move-wide/from16 v15, v34

    move-wide/from16 v18, v36

    move-wide/from16 v21, v38

    .line 63
    invoke-static/range {v1 .. v33}, Lcom/callapp/contacts/model/objectbox/CallRemindersDataCursor;->collect313311(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I[BIJIJIJIIIIIIIFID)J

    move-result-wide v0

    .line 71
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lcom/callapp/contacts/model/objectbox/CallRemindersData;->setId(Ljava/lang/Long;)V

    return-wide v0
.end method

.method public final bridge synthetic put(Ljava/lang/Object;)J
    .locals 2

    .line 14
    check-cast p1, Lcom/callapp/contacts/model/objectbox/CallRemindersData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/CallRemindersDataCursor;->put(Lcom/callapp/contacts/model/objectbox/CallRemindersData;)J

    move-result-wide v0

    return-wide v0
.end method
