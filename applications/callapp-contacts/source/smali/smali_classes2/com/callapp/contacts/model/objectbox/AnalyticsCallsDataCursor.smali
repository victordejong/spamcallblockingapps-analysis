.class public final Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;
.super Lio/objectbox/Cursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/objectbox/Cursor<",
        "Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GETTER:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_$AnalyticsCallsDataIdGetter;

.field private static final __ID_callType:I

.field private static final __ID_date:I

.field private static final __ID_dayType:I

.field private static final __ID_duration:I

.field private static final __ID_isBlock:I

.field private static final __ID_isConference:I

.field private static final __ID_isExclude:I

.field private static final __ID_isIdentified:I

.field private static final __ID_isIncognito:I

.field private static final __ID_isInternational:I

.field private static final __ID_isPrivate:I

.field private static final __ID_isSpam:I

.field private static final __ID_phoneAsGlobal:I

.field private static final __ID_simId:I


# instance fields
.field private final callTypeConverter:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallNameConverter;

.field private final dayTypeConverter:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayTypeConverter;

.field private final simIdConverter:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$SimIdConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    sget-object v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_$AnalyticsCallsDataIdGetter;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_$AnalyticsCallsDataIdGetter;

    .line 35
    sget-object v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->date:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->__ID_date:I

    .line 36
    sget-object v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->callType:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->__ID_callType:I

    .line 37
    sget-object v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->dayType:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->__ID_dayType:I

    .line 38
    sget-object v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->simId:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->__ID_simId:I

    .line 39
    sget-object v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->phoneAsGlobal:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->__ID_phoneAsGlobal:I

    .line 40
    sget-object v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->duration:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->__ID_duration:I

    .line 41
    sget-object v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->isSpam:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->__ID_isSpam:I

    .line 42
    sget-object v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->isBlock:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->__ID_isBlock:I

    .line 43
    sget-object v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->isPrivate:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->__ID_isPrivate:I

    .line 44
    sget-object v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->isIncognito:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->__ID_isIncognito:I

    .line 45
    sget-object v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->isConference:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->__ID_isConference:I

    .line 46
    sget-object v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->isInternational:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->__ID_isInternational:I

    .line 47
    sget-object v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->isIdentified:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->__ID_isIdentified:I

    .line 48
    sget-object v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->isExclude:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->__ID_isExclude:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)V
    .locals 6

    .line 51
    sget-object v4, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/Cursor;-><init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V

    .line 31
    new-instance p1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallNameConverter;

    invoke-direct {p1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallNameConverter;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->callTypeConverter:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallNameConverter;

    .line 32
    new-instance p1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayTypeConverter;

    invoke-direct {p1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayTypeConverter;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->dayTypeConverter:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayTypeConverter;

    .line 33
    new-instance p1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$SimIdConverter;

    invoke-direct {p1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$SimIdConverter;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->simIdConverter:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$SimIdConverter;

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;)J
    .locals 2

    .line 56
    sget-object v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_$AnalyticsCallsDataIdGetter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_$AnalyticsCallsDataIdGetter;->getId(Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 20
    check-cast p1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->getId(Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;)J
    .locals 59

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getPhoneAsGlobal()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 67
    sget v3, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->__ID_phoneAsGlobal:I

    move v7, v3

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 68
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getCallType()Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 69
    sget v4, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->__ID_callType:I

    move/from16 v21, v4

    goto :goto_1

    :cond_1
    const/16 v21, 0x0

    .line 70
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getDayType()Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 71
    sget v5, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->__ID_dayType:I

    move/from16 v24, v5

    goto :goto_2

    :cond_2
    const/16 v24, 0x0

    .line 72
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getSimId()Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 73
    sget v6, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->__ID_simId:I

    move/from16 v26, v6

    goto :goto_3

    :cond_3
    const/16 v26, 0x0

    .line 75
    :goto_3
    iget-wide v9, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->cursor:J

    const-wide/16 v11, 0x0

    const/4 v6, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    sget v19, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->__ID_date:I

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getDate()J

    move-result-wide v22

    sget v20, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->__ID_duration:I

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getDuration()J

    move-result-wide v27

    const-wide/16 v35, 0x0

    if-eqz v21, :cond_4

    iget-object v2, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->callTypeConverter:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallNameConverter;

    .line 79
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallNameConverter;->convertToDatabaseValue(Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    move-wide/from16 v37, v2

    goto :goto_4

    :cond_4
    move-wide/from16 v37, v35

    :goto_4
    if-eqz v24, :cond_5

    iget-object v2, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->dayTypeConverter:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayTypeConverter;

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayTypeConverter;->convertToDatabaseValue(Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v29, v2

    goto :goto_5

    :cond_5
    const/16 v29, 0x0

    :goto_5
    if-eqz v26, :cond_6

    iget-object v2, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->simIdConverter:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$SimIdConverter;

    .line 80
    invoke-virtual {v2, v5}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$SimIdConverter;->convertToDatabaseValue(Lcom/callapp/contacts/manager/sim/SimManager$SimId;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v39, v2

    goto :goto_6

    :cond_6
    const/16 v39, 0x0

    :goto_6
    sget v40, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->__ID_isSpam:I

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isSpam()Z

    move-result v41

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-wide/16 v33, 0x0

    move-wide v2, v9

    move-wide v4, v11

    move v9, v13

    move-object v10, v14

    move v11, v15

    move-object/from16 v12, v16

    move/from16 v13, v17

    move-object/from16 v14, v18

    move/from16 v15, v19

    move-wide/from16 v16, v22

    move/from16 v18, v20

    move-wide/from16 v19, v27

    move-wide/from16 v22, v37

    move/from16 v25, v29

    move/from16 v27, v39

    move/from16 v28, v40

    move/from16 v29, v41

    .line 75
    invoke-static/range {v2 .. v34}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->collect313311(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I[BIJIJIJIIIIIIIFID)J

    .line 83
    iget-wide v2, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->cursor:J

    const-wide/16 v44, 0x0

    const/16 v46, 0x0

    sget v47, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->__ID_isBlock:I

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isBlock()Z

    move-result v4

    const-wide/16 v5, 0x1

    if-eqz v4, :cond_7

    move-wide/from16 v48, v5

    goto :goto_7

    :cond_7
    move-wide/from16 v48, v35

    :goto_7
    sget v50, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->__ID_isPrivate:I

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isPrivate()Z

    move-result v4

    if-eqz v4, :cond_8

    move-wide/from16 v51, v5

    goto :goto_8

    :cond_8
    move-wide/from16 v51, v35

    :goto_8
    sget v53, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->__ID_isIncognito:I

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isIncognito()Z

    move-result v4

    if-eqz v4, :cond_9

    move-wide/from16 v54, v5

    goto :goto_9

    :cond_9
    move-wide/from16 v54, v35

    :goto_9
    sget v56, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->__ID_isConference:I

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isConference()Z

    move-result v4

    if-eqz v4, :cond_a

    move-wide/from16 v57, v5

    goto :goto_a

    :cond_a
    move-wide/from16 v57, v35

    :goto_a
    move-wide/from16 v42, v2

    .line 83
    invoke-static/range {v42 .. v58}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->collect004000(JJIIJIJIJIJ)J

    .line 87
    iget-object v2, v1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->id:Ljava/lang/Long;

    .line 88
    iget-wide v7, v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->cursor:J

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v9, v2

    goto :goto_b

    :cond_b
    move-wide/from16 v9, v35

    :goto_b
    const/4 v11, 0x2

    sget v12, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->__ID_isInternational:I

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isInternational()Z

    move-result v2

    if-eqz v2, :cond_c

    move-wide v13, v5

    goto :goto_c

    :cond_c
    move-wide/from16 v13, v35

    :goto_c
    sget v15, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->__ID_isIdentified:I

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isIdentified()Z

    move-result v2

    if-eqz v2, :cond_d

    move-wide/from16 v16, v5

    goto :goto_d

    :cond_d
    move-wide/from16 v16, v35

    :goto_d
    sget v18, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->__ID_isExclude:I

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isExclude()Z

    move-result v2

    if-eqz v2, :cond_e

    move-wide/from16 v19, v5

    goto :goto_e

    :cond_e
    move-wide/from16 v19, v35

    :goto_e
    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    .line 88
    invoke-static/range {v7 .. v23}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->collect004000(JJIIJIJIJIJ)J

    move-result-wide v2

    .line 92
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->id:Ljava/lang/Long;

    return-wide v2
.end method

.method public final bridge synthetic put(Ljava/lang/Object;)J
    .locals 2

    .line 20
    check-cast p1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor;->put(Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;)J

    move-result-wide v0

    return-wide v0
.end method
