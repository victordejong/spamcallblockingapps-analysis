.class public final Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;
.super Lio/objectbox/Cursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/objectbox/Cursor<",
        "Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_$RecorderTestDataIdGetter;

.field private static final f:I

.field private static final g:I

.field private static final h:I

.field private static final i:I

.field private static final j:I

.field private static final k:I

.field private static final l:I

.field private static final m:I

.field private static final n:I


# instance fields
.field private final b:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$MethodConverter;

.field private final c:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AudioSourceConverter;

.field private final d:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FileFormatConverter;

.field private final e:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$RecorderStatusConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_;->c:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_$RecorderTestDataIdGetter;

    sput-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_$RecorderTestDataIdGetter;

    .line 40
    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_;->f:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;->f:I

    .line 41
    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_;->g:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;->g:I

    .line 42
    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_;->h:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;->h:I

    .line 43
    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_;->i:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;->i:I

    .line 44
    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_;->j:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;->j:I

    .line 45
    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_;->k:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;->k:I

    .line 46
    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_;->l:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;->l:I

    .line 47
    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_;->m:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;->m:I

    .line 48
    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_;->n:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;->n:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)V
    .locals 6

    .line 51
    sget-object v4, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_;->d:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/Cursor;-><init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V

    .line 35
    new-instance p1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$MethodConverter;

    invoke-direct {p1}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$MethodConverter;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;->b:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$MethodConverter;

    .line 36
    new-instance p1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AudioSourceConverter;

    invoke-direct {p1}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AudioSourceConverter;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;->c:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AudioSourceConverter;

    .line 37
    new-instance p1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FileFormatConverter;

    invoke-direct {p1}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FileFormatConverter;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;->d:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FileFormatConverter;

    .line 38
    new-instance p1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$RecorderStatusConverter;

    invoke-direct {p1}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$RecorderStatusConverter;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;->e:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$RecorderStatusConverter;

    return-void
.end method

.method private a(Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;)J
    .locals 40

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 66
    iget-object v2, v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->callRecorder:Lio/objectbox/relation/ToOne;

    if-eqz v2, :cond_0

    .line 67
    invoke-virtual {v2}, Lio/objectbox/relation/ToOne;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    const-class v3, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;->getRelationTargetCursor(Ljava/lang/Class;)Lio/objectbox/Cursor;

    move-result-object v3

    .line 70
    :try_start_0
    invoke-virtual {v2, v3}, Lio/objectbox/relation/ToOne;->a(Lio/objectbox/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-virtual {v3}, Lio/objectbox/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-virtual {v3}, Lio/objectbox/Cursor;->close()V

    .line 73
    throw v2

    .line 75
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getAudioMethod()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 76
    sget v4, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;->f:I

    move/from16 v24, v4

    goto :goto_1

    :cond_1
    const/16 v24, 0x0

    .line 77
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getAudioSource()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 78
    sget v5, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;->g:I

    move/from16 v27, v5

    goto :goto_2

    :cond_2
    const/16 v27, 0x0

    .line 79
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getOutputFormat()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 80
    sget v6, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;->h:I

    move/from16 v29, v6

    goto :goto_3

    :cond_3
    const/16 v29, 0x0

    .line 81
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getTestStatus()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 82
    sget v7, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;->i:I

    move/from16 v31, v7

    goto :goto_4

    :cond_4
    const/16 v31, 0x0

    .line 84
    :goto_4
    iget-wide v7, v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;->cursor:J

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    sget v20, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;->k:I

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getRecordTime()J

    move-result-wide v21

    sget v23, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;->n:I

    iget-object v3, v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->callRecorder:Lio/objectbox/relation/ToOne;

    invoke-virtual {v3}, Lio/objectbox/relation/ToOne;->b()J

    move-result-wide v25

    const-wide/16 v38, 0x0

    if-eqz v24, :cond_5

    iget-object v3, v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;->b:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$MethodConverter;

    .line 88
    invoke-virtual {v3, v2}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$MethodConverter;->convertToDatabaseValue(Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    goto :goto_5

    :cond_5
    move-wide/from16 v2, v38

    :goto_5
    if-eqz v27, :cond_6

    iget-object v15, v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;->c:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AudioSourceConverter;

    invoke-virtual {v15, v4}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AudioSourceConverter;->convertToDatabaseValue(Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    :goto_6
    if-eqz v29, :cond_7

    iget-object v15, v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;->d:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FileFormatConverter;

    .line 89
    invoke-virtual {v15, v5}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FileFormatConverter;->convertToDatabaseValue(Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v30, v5

    goto :goto_7

    :cond_7
    const/16 v30, 0x0

    :goto_7
    if-eqz v31, :cond_8

    iget-object v5, v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;->e:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$RecorderStatusConverter;

    invoke-virtual {v5, v6}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$RecorderStatusConverter;->convertToDatabaseValue(Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v32, v5

    goto :goto_8

    :cond_8
    const/16 v32, 0x0

    :goto_8
    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const-wide/16 v36, 0x0

    move-wide v5, v7

    move-wide v7, v9

    move v9, v11

    move v10, v12

    move-object v11, v13

    move v12, v14

    const/4 v13, 0x0

    move/from16 v14, v16

    move-object/from16 v15, v17

    move/from16 v16, v18

    move-object/from16 v17, v19

    move/from16 v18, v20

    move-wide/from16 v19, v21

    move/from16 v21, v23

    move-wide/from16 v22, v25

    move-wide/from16 v25, v2

    move/from16 v28, v4

    .line 84
    invoke-static/range {v5 .. v37}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;->collect313311(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I[BIJIJIJIIIIIIIFID)J

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getVolumeLevel()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 93
    sget v3, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;->l:I

    move v12, v3

    goto :goto_9

    :cond_9
    const/4 v12, 0x0

    .line 95
    :goto_9
    iget-wide v4, v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;->cursor:J

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getId()J

    move-result-wide v6

    const/4 v8, 0x2

    sget v9, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;->j:I

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getTestPriority()I

    move-result v3

    int-to-long v10, v3

    if-eqz v12, :cond_a

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    move-wide v13, v2

    goto :goto_a

    :cond_a
    move-wide/from16 v13, v38

    :goto_a
    sget v15, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;->m:I

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getForceInCommunicationMode()Z

    move-result v2

    if-eqz v2, :cond_b

    const-wide/16 v38, 0x1

    :cond_b
    move-wide/from16 v16, v38

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    .line 95
    invoke-static/range {v4 .. v20}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;->collect004000(JJIIJIJIJIJ)J

    move-result-wide v2

    .line 99
    invoke-virtual {v0, v2, v3}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->setId(J)V

    .line 1108
    iget-object v4, v1, Lio/objectbox/Cursor;->boxStoreForEntities:Lio/objectbox/BoxStore;

    iput-object v4, v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->__boxStore:Lio/objectbox/BoxStore;

    return-wide v2
.end method


# virtual methods
.method public final synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 24
    check-cast p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    .line 2056
    invoke-static {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_$RecorderTestDataIdGetter;->a(Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic put(Ljava/lang/Object;)J
    .locals 2

    .line 24
    check-cast p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataCursor;->a(Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;)J

    move-result-wide v0

    return-wide v0
.end method
