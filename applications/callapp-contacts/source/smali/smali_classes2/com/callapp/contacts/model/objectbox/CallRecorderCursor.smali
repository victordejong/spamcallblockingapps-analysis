.class public final Lcom/callapp/contacts/model/objectbox/CallRecorderCursor;
.super Lio/objectbox/Cursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/CallRecorderCursor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/objectbox/Cursor<",
        "Lcom/callapp/contacts/model/objectbox/CallRecorder;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GETTER:Lcom/callapp/contacts/model/objectbox/CallRecorder_$CallRecorderIdGetter;

.field private static final __ID_callType:I

.field private static final __ID_date:I

.field private static final __ID_duration:I

.field private static final __ID_fileName:I

.field private static final __ID_isUploaded:I

.field private static final __ID_note:I

.field private static final __ID_phoneOrIdKey:I

.field private static final __ID_starred:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallRecorder_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/CallRecorder_$CallRecorderIdGetter;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/CallRecorderCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/CallRecorder_$CallRecorderIdGetter;

    .line 26
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallRecorder_;->phoneOrIdKey:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/CallRecorderCursor;->__ID_phoneOrIdKey:I

    .line 27
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallRecorder_;->date:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/CallRecorderCursor;->__ID_date:I

    .line 28
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallRecorder_;->fileName:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/CallRecorderCursor;->__ID_fileName:I

    .line 29
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallRecorder_;->duration:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/CallRecorderCursor;->__ID_duration:I

    .line 30
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallRecorder_;->starred:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/CallRecorderCursor;->__ID_starred:I

    .line 31
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallRecorder_;->note:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/CallRecorderCursor;->__ID_note:I

    .line 32
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallRecorder_;->callType:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/CallRecorderCursor;->__ID_callType:I

    .line 33
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallRecorder_;->isUploaded:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/CallRecorderCursor;->__ID_isUploaded:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)V
    .locals 6

    .line 36
    sget-object v4, Lcom/callapp/contacts/model/objectbox/CallRecorder_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/CallRecorder_;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/Cursor;-><init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/objectbox/CallRecorder;)J
    .locals 2

    .line 41
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallRecorderCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/CallRecorder_$CallRecorderIdGetter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/objectbox/CallRecorder_$CallRecorderIdGetter;->getId(Lcom/callapp/contacts/model/objectbox/CallRecorder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 14
    check-cast p1, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/CallRecorderCursor;->getId(Lcom/callapp/contacts/model/objectbox/CallRecorder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(Lcom/callapp/contacts/model/objectbox/CallRecorder;)J
    .locals 36

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getPhoneOrIdKey()Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    if-eqz v7, :cond_0

    .line 53
    sget v2, Lcom/callapp/contacts/model/objectbox/CallRecorderCursor;->__ID_phoneOrIdKey:I

    move v6, v2

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 54
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getFileName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 55
    sget v2, Lcom/callapp/contacts/model/objectbox/CallRecorderCursor;->__ID_fileName:I

    move v8, v2

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 56
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getNote()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 57
    sget v1, Lcom/callapp/contacts/model/objectbox/CallRecorderCursor;->__ID_note:I

    move-object/from16 v15, p0

    move v10, v1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    move-object/from16 v15, p0

    .line 59
    :goto_2
    iget-wide v1, v15, Lcom/callapp/contacts/model/objectbox/CallRecorderCursor;->cursor:J

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_3

    :cond_3
    const-wide/16 v3, 0x0

    :goto_3
    const/4 v5, 0x3

    const/4 v12, 0x0

    sget v14, Lcom/callapp/contacts/model/objectbox/CallRecorderCursor;->__ID_date:I

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getDate()J

    move-result-wide v16

    sget v0, Lcom/callapp/contacts/model/objectbox/CallRecorderCursor;->__ID_duration:I

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getDuration()J

    move-result-wide v18

    sget v20, Lcom/callapp/contacts/model/objectbox/CallRecorderCursor;->__ID_callType:I

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getCallType()I

    move-result v13

    move/from16 v22, v14

    int-to-long v13, v13

    sget v23, Lcom/callapp/contacts/model/objectbox/CallRecorderCursor;->__ID_starred:I

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getStarred()Z

    move-result v24

    sget v25, Lcom/callapp/contacts/model/objectbox/CallRecorderCursor;->__ID_isUploaded:I

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->isUploaded()Z

    move-result v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    move-wide/from16 v34, v13

    const/4 v13, 0x0

    move/from16 v14, v22

    move-wide/from16 v15, v16

    move/from16 v17, v0

    move-wide/from16 v21, v34

    .line 59
    invoke-static/range {v1 .. v33}, Lcom/callapp/contacts/model/objectbox/CallRecorderCursor;->collect313311(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I[BIJIJIJIIIIIIIFID)J

    move-result-wide v0

    .line 67
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->setId(Ljava/lang/Long;)V

    return-wide v0
.end method

.method public final bridge synthetic put(Ljava/lang/Object;)J
    .locals 2

    .line 14
    check-cast p1, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/CallRecorderCursor;->put(Lcom/callapp/contacts/model/objectbox/CallRecorder;)J

    move-result-wide v0

    return-wide v0
.end method
