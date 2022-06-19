.class public final Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\u000c\u001a\u00020\tJ\u0008\u0010\r\u001a\u00020\u000bH\u0007J\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000fJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0005J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0015\u001a\u00020\u000bH\u0002J\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0015\u001a\u00020\u000bJ\u0006\u0010\u0019\u001a\u00020\tJ\u0006\u0010\u001a\u001a\u00020\tJ\u000e\u0010\u001b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\"\u0010\u001c\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00122\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0018R:\u0010\u0003\u001a&\u0012\u000c\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005 \u0006*\u0012\u0012\u000c\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005\u0018\u00010\u00040\u00048\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0007\u0010\u0002\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;",
        "",
        "()V",
        "boxRecordingTextData",
        "Lio/objectbox/Box;",
        "Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;",
        "kotlin.jvm.PlatformType",
        "getBoxRecordingTextData$annotations",
        "deleteRecorderTest",
        "",
        "testId",
        "",
        "fillRecordConfiguration",
        "getAllDoneRecorderTests",
        "getAllRecordTest",
        "",
        "getFirstRecorderTestByStatus",
        "recorderTestStatus",
        "Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;",
        "getNextRecordingTest",
        "getRecorderTest",
        "id",
        "getRecorderTestBox",
        "getRecorderTestFile",
        "Lcom/callapp/contacts/model/objectbox/CallRecorder;",
        "resetProgressedTestsWhenStopped",
        "resetTest",
        "setAsApplied",
        "setRecordTestStatus",
        "status",
        "callRecorder",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;-><init>()V

    return-void
.end method

.method public static a(J)Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;
    .locals 2

    .line 28
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->a()Lio/objectbox/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_;->e:Lio/objectbox/g;

    invoke-virtual {v0, v1, p0, p1}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    return-object p0
.end method

.method public static a()V
    .locals 4

    .line 45
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->a()Lio/objectbox/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    .line 46
    sget-object v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_;->i:Lio/objectbox/g;

    sget-object v2, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->STOPPED:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    invoke-virtual {v2}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->getValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->c()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    .line 47
    sget-object v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_;->i:Lio/objectbox/g;

    sget-object v2, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->STARTED:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    invoke-virtual {v2}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->getValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v0

    const-string v1, "boxRecordingTextData.que\u2026.toLong()).build().find()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    if-eqz v1, :cond_0

    .line 50
    sget-object v2, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->IDLE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->setTestStatus(Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;)V

    .line 51
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->a()Lio/objectbox/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic a(JLcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-static {p0, p1, p2, v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;->a(JLcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;Lcom/callapp/contacts/model/objectbox/CallRecorder;)V

    return-void
.end method

.method public static a(JLcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;Lcom/callapp/contacts/model/objectbox/CallRecorder;)V
    .locals 2

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->a()Lio/objectbox/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_;->e:Lio/objectbox/g;

    invoke-virtual {v0, v1, p0, p1}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    if-eqz p0, :cond_1

    .line 19
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->setTestStatus(Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;)V

    if-eqz p3, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getCallRecorder()Lio/objectbox/relation/ToOne;

    move-result-object p1

    invoke-virtual {p1, p3}, Lio/objectbox/relation/ToOne;->a(Ljava/lang/Object;)V

    .line 23
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->a()Lio/objectbox/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    :cond_1
    return-void
.end method

.method public static b(J)Lcom/callapp/contacts/model/objectbox/CallRecorder;
    .locals 2

    .line 37
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->a()Lio/objectbox/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_;->e:Lio/objectbox/g;

    invoke-virtual {v0, v1, p0, p1}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getCallRecorder()Lio/objectbox/relation/ToOne;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lio/objectbox/relation/ToOne;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b()V
    .locals 4

    .line 58
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->a()Lio/objectbox/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v0

    const-string v1, "boxRecordingTextData.query().build().find()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    .line 60
    sget-object v3, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->IDLE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->setTestStatus(Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;)V

    .line 61
    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getCallRecorder()Lio/objectbox/relation/ToOne;

    move-result-object v3

    invoke-virtual {v3, v2}, Lio/objectbox/relation/ToOne;->a(Ljava/lang/Object;)V

    .line 62
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->a()Lio/objectbox/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    goto :goto_0

    .line 64
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gM:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 65
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->e()V

    return-void
.end method

.method public static c()V
    .locals 39

    .line 100
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->a()Lio/objectbox/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/a;->d()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 106
    new-instance v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    const-wide/16 v4, 0x0

    sget-object v6, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    .line 107
    sget-object v7, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->VOICE_RECOGNITION:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    .line 108
    sget-object v8, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->AMR:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    const/4 v9, 0x0

    const/16 v17, 0x2

    const/4 v10, 0x1

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v15, 0xd1

    const/16 v16, 0x0

    move-object v3, v1

    .line 106
    invoke-direct/range {v3 .. v16}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;-><init>(JLcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;IJLjava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x2

    goto :goto_0

    :cond_0
    const/16 v17, 0x1

    const/4 v10, 0x1

    .line 113
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_1

    .line 114
    new-instance v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    const-wide/16 v4, 0x0

    sget-object v6, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    .line 115
    sget-object v7, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->VOICE_CALL:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    .line 116
    sget-object v8, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->AMR:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    const/4 v9, 0x0

    add-int/lit8 v17, v10, 0x1

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v15, 0xd1

    const/16 v16, 0x0

    move-object v3, v1

    .line 114
    invoke-direct/range {v3 .. v16}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;-><init>(JLcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;IJLjava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v25, v17

    goto :goto_1

    :cond_1
    move/from16 v25, v10

    .line 121
    :goto_1
    new-instance v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    const-wide/16 v19, 0x0

    sget-object v21, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    .line 122
    sget-object v22, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->VOICE_RECOGNITION:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    .line 123
    sget-object v23, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->AMR:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    const/16 v24, 0x0

    add-int/lit8 v10, v25, 0x1

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0xd1

    const/16 v31, 0x0

    move-object/from16 v18, v1

    .line 121
    invoke-direct/range {v18 .. v31}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;-><init>(JLcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;IJLjava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    const-wide/16 v4, 0x0

    sget-object v6, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    .line 128
    sget-object v7, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->VOICE_CALL:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    .line 129
    sget-object v8, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->AMR:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    const/4 v9, 0x0

    add-int/lit8 v18, v10, 0x1

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xd1

    const/16 v16, 0x0

    move-object v3, v1

    .line 127
    invoke-direct/range {v3 .. v16}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;-><init>(JLcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;IJLjava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_2

    .line 134
    new-instance v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    const-wide/16 v12, 0x0

    sget-object v14, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    .line 135
    sget-object v15, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->MIC:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    .line 136
    sget-object v16, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->AMR:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    const/16 v17, 0x0

    add-int/lit8 v3, v18, 0x1

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0xd1

    const/16 v24, 0x0

    move-object v11, v1

    .line 134
    invoke-direct/range {v11 .. v24}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;-><init>(JLcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;IJLjava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v32, v3

    goto :goto_2

    :cond_2
    move/from16 v32, v18

    .line 141
    :goto_2
    new-instance v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    const-wide/16 v26, 0x0

    sget-object v28, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    .line 142
    sget-object v29, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->MIC:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    .line 143
    sget-object v30, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->AMR:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    const/16 v31, 0x0

    add-int/lit8 v10, v32, 0x1

    const-wide/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0xd1

    const/16 v38, 0x0

    move-object/from16 v25, v1

    .line 141
    invoke-direct/range {v25 .. v38}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;-><init>(JLcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;IJLjava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_3

    .line 148
    new-instance v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    const-wide/16 v4, 0x0

    sget-object v6, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    .line 149
    sget-object v7, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->VOICE_COMMUNICATION:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    .line 150
    sget-object v8, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->AMR:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    const/4 v9, 0x0

    add-int/lit8 v17, v10, 0x1

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v15, 0xd1

    const/16 v16, 0x0

    move-object v3, v1

    .line 148
    invoke-direct/range {v3 .. v16}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;-><init>(JLcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;IJLjava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v25, v17

    goto :goto_3

    :cond_3
    move/from16 v25, v10

    .line 155
    :goto_3
    new-instance v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    const-wide/16 v19, 0x0

    sget-object v21, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    .line 156
    sget-object v22, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->VOICE_COMMUNICATION:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    .line 157
    sget-object v23, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->AMR:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    const/16 v24, 0x0

    add-int/lit8 v10, v25, 0x1

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0xd1

    const/16 v31, 0x0

    move-object/from16 v18, v1

    .line 155
    invoke-direct/range {v18 .. v31}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;-><init>(JLcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;IJLjava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_4

    .line 163
    new-instance v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    const-wide/16 v4, 0x0

    sget-object v6, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    .line 164
    sget-object v7, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->DEFAULT:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    .line 165
    sget-object v8, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->AMR:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    const/4 v9, 0x0

    add-int/lit8 v2, v10, 0x1

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v15, 0xd1

    const/16 v16, 0x0

    move-object v3, v1

    .line 163
    invoke-direct/range {v3 .. v16}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;-><init>(JLcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;IJLjava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v24, v2

    goto :goto_4

    :cond_4
    move/from16 v24, v10

    .line 170
    :goto_4
    new-instance v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    const-wide/16 v18, 0x0

    sget-object v20, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    .line 171
    sget-object v21, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->DEFAULT:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    .line 172
    sget-object v22, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->AMR:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    const/16 v23, 0x0

    add-int/lit8 v9, v24, 0x1

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0xd1

    const/16 v30, 0x0

    move-object/from16 v17, v1

    .line 170
    invoke-direct/range {v17 .. v30}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;-><init>(JLcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;IJLjava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    const-wide/16 v3, 0x0

    sget-object v5, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NON_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    .line 177
    sget-object v6, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->VOICE_RECOGNITION:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    .line 178
    sget-object v7, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->AMR:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    const/4 v8, 0x0

    add-int/lit8 v17, v9, 0x1

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x1d1

    const/4 v15, 0x0

    move-object v2, v1

    .line 176
    invoke-direct/range {v2 .. v15}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;-><init>(JLcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;IJLjava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    const-wide/16 v11, 0x0

    sget-object v13, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NON_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    .line 181
    sget-object v14, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->VOICE_COMMUNICATION:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    .line 182
    sget-object v15, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->AMR:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    const/16 v16, 0x0

    add-int/lit8 v25, v17, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1d1

    move-object v10, v1

    .line 180
    invoke-direct/range {v10 .. v23}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;-><init>(JLcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;IJLjava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    const-wide/16 v19, 0x0

    sget-object v21, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NON_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    .line 185
    sget-object v22, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->VOICE_CALL:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    .line 186
    sget-object v23, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->AMR:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    const/16 v24, 0x0

    add-int/lit8 v9, v25, 0x1

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x1d1

    const/16 v31, 0x0

    move-object/from16 v18, v1

    .line 184
    invoke-direct/range {v18 .. v31}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;-><init>(JLcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;IJLjava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    sget-object v5, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NON_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    .line 189
    sget-object v6, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->MIC:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    .line 190
    sget-object v7, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->AMR:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    add-int/lit8 v17, v9, 0x1

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x1d1

    const/4 v15, 0x0

    move-object v2, v1

    .line 188
    invoke-direct/range {v2 .. v15}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;-><init>(JLcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;IJLjava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    const-wide/16 v11, 0x0

    sget-object v13, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NON_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    .line 193
    sget-object v14, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->DEFAULT:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    .line 194
    sget-object v15, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->AMR:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1d1

    const/16 v23, 0x0

    move-object v10, v1

    .line 192
    invoke-direct/range {v10 .. v23}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;-><init>(JLcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;IJLjava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->a()Lio/objectbox/a;

    move-result-object v1

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Lio/objectbox/a;->a(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public final getAllDoneRecorderTests()J
    .locals 4

    .line 33
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->a()Lio/objectbox/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_;->i:Lio/objectbox/g;

    sget-object v2, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->DONE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    invoke-virtual {v2}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->getValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/Query;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAllRecordTest()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->a()Lio/objectbox/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_;->i:Lio/objectbox/g;

    sget-object v2, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->DELETED:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    invoke-virtual {v2}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->getValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->b(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_;->j:Lio/objectbox/g;

    const/4 v2, 0x0

    .line 1272
    invoke-virtual {v0, v1, v2}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;I)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v0

    const-string v1, "boxRecordingTextData.que\u2026tPriority).build().find()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getNextRecordingTest()Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;
    .locals 4

    .line 69
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->a()Lio/objectbox/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_;->i:Lio/objectbox/g;

    sget-object v2, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->IDLE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    invoke-virtual {v2}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->getValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->c()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    .line 70
    sget-object v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_;->i:Lio/objectbox/g;

    sget-object v2, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->STOPPED:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    invoke-virtual {v2}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->getValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_;->j:Lio/objectbox/g;

    const/4 v2, 0x0

    .line 2272
    invoke-virtual {v0, v1, v2}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;I)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    return-object v0
.end method

.method public final getRecorderTestBox()Lio/objectbox/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/a<",
            "Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;",
            ">;"
        }
    .end annotation

    .line 74
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->a()Lio/objectbox/a;

    move-result-object v0

    const-string v1, "boxRecordingTextData"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setAsApplied(J)V
    .locals 5

    .line 90
    sget-object v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->APPLIED:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    .line 3078
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->a()Lio/objectbox/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData_;->i:Lio/objectbox/g;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->getValue()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    if-eqz v0, :cond_0

    .line 93
    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->DONE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->setTestStatus(Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;)V

    .line 94
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->a()Lio/objectbox/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    .line 96
    :cond_0
    sget-object v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->APPLIED:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    const/4 v1, 0x0

    .line 4016
    invoke-static {p1, p2, v0, v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;->a(JLcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;Lcom/callapp/contacts/model/objectbox/CallRecorder;)V

    return-void
.end method
