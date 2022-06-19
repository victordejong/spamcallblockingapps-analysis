.class public final Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;
.super Lio/objectbox/Cursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/objectbox/Cursor<",
        "Lcom/callapp/contacts/model/objectbox/ExtractedInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GETTER:Lcom/callapp/contacts/model/objectbox/ExtractedInfo_$ExtractedInfoIdGetter;

.field private static final __ID_comType:I

.field private static final __ID_disableNotification:I

.field private static final __ID_displayName:I

.field private static final __ID_firstSeen:I

.field private static final __ID_groupName:I

.field private static final __ID_lastNotificationShowed:I

.field private static final __ID_nameT9Format:I

.field private static final __ID_nameT9FormatNoZero:I

.field private static final __ID_namesMap:I

.field private static final __ID_phoneAsRaw:I

.field private static final __ID_recognizedPersonOrigin:I

.field private static final __ID_seenCount:I

.field private static final __ID_senderName:I

.field private static final __ID_starred:I

.field private static final __ID_t9Indexes:I

.field private static final __ID_unAccentName:I

.field private static final __ID_when:I


# instance fields
.field private final comTypeConverter:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComTypeConverter;

.field private final namesMapConverter:Lcom/callapp/contacts/model/objectbox/Converters$MapStringIntConverter;

.field private final recognizedPersonOriginConverter:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOriginConverter;

.field private final t9IndexesConverter:Lcom/callapp/contacts/model/objectbox/Converters$ListIntegersConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/ExtractedInfo_$ExtractedInfoIdGetter;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/ExtractedInfo_$ExtractedInfoIdGetter;

    .line 38
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->recognizedPersonOrigin:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_recognizedPersonOrigin:I

    .line 39
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->comType:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_comType:I

    .line 40
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->senderName:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_senderName:I

    .line 41
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->groupName:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_groupName:I

    .line 42
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->phoneAsRaw:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_phoneAsRaw:I

    .line 43
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->when:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_when:I

    .line 44
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->firstSeen:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_firstSeen:I

    .line 45
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->lastNotificationShowed:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_lastNotificationShowed:I

    .line 46
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->seenCount:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_seenCount:I

    .line 47
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->disableNotification:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_disableNotification:I

    .line 48
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->starred:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_starred:I

    .line 49
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->displayName:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_displayName:I

    .line 50
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->nameT9Format:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_nameT9Format:I

    .line 51
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->nameT9FormatNoZero:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_nameT9FormatNoZero:I

    .line 52
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->unAccentName:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_unAccentName:I

    .line 53
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->t9Indexes:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_t9Indexes:I

    .line 54
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->namesMap:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_namesMap:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)V
    .locals 6

    .line 57
    sget-object v4, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/Cursor;-><init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V

    .line 33
    new-instance p1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOriginConverter;

    invoke-direct {p1}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOriginConverter;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->recognizedPersonOriginConverter:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOriginConverter;

    .line 34
    new-instance p1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComTypeConverter;

    invoke-direct {p1}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComTypeConverter;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->comTypeConverter:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComTypeConverter;

    .line 35
    new-instance p1, Lcom/callapp/contacts/model/objectbox/Converters$ListIntegersConverter;

    invoke-direct {p1}, Lcom/callapp/contacts/model/objectbox/Converters$ListIntegersConverter;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->t9IndexesConverter:Lcom/callapp/contacts/model/objectbox/Converters$ListIntegersConverter;

    .line 36
    new-instance p1, Lcom/callapp/contacts/model/objectbox/Converters$MapStringIntConverter;

    invoke-direct {p1}, Lcom/callapp/contacts/model/objectbox/Converters$MapStringIntConverter;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->namesMapConverter:Lcom/callapp/contacts/model/objectbox/Converters$MapStringIntConverter;

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/objectbox/ExtractedInfo;)J
    .locals 2

    .line 62
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/ExtractedInfo_$ExtractedInfoIdGetter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_$ExtractedInfoIdGetter;->getId(Lcom/callapp/contacts/model/objectbox/ExtractedInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 22
    check-cast p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->getId(Lcom/callapp/contacts/model/objectbox/ExtractedInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(Lcom/callapp/contacts/model/objectbox/ExtractedInfo;)J
    .locals 49

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 72
    iget-object v8, v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->senderName:Ljava/lang/String;

    const/4 v15, 0x0

    if-eqz v8, :cond_0

    .line 73
    sget v2, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_senderName:I

    move v7, v2

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 74
    :goto_0
    iget-object v10, v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->groupName:Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 75
    sget v2, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_groupName:I

    move v9, v2

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 76
    :goto_1
    iget-object v12, v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    if-eqz v12, :cond_2

    .line 77
    sget v2, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_phoneAsRaw:I

    move v11, v2

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    .line 78
    :goto_2
    iget-object v14, v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->displayName:Ljava/lang/String;

    if-eqz v14, :cond_3

    .line 79
    sget v2, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_displayName:I

    move v13, v2

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    .line 81
    :goto_3
    iget-wide v2, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->cursor:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    invoke-static/range {v2 .. v14}, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->collect400000(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)J

    .line 85
    iget-object v2, v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->nameT9Format:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 86
    sget v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_nameT9Format:I

    move/from16 v21, v3

    goto :goto_4

    :cond_4
    const/16 v21, 0x0

    .line 87
    :goto_4
    iget-object v3, v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->nameT9FormatNoZero:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 88
    sget v4, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_nameT9FormatNoZero:I

    move/from16 v23, v4

    goto :goto_5

    :cond_5
    const/16 v23, 0x0

    .line 89
    :goto_5
    iget-object v4, v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->unAccentName:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 90
    sget v5, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_unAccentName:I

    move/from16 v25, v5

    goto :goto_6

    :cond_6
    const/16 v25, 0x0

    .line 91
    :goto_6
    iget-object v5, v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->t9Indexes:Ljava/util/List;

    if-eqz v5, :cond_7

    .line 92
    sget v6, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_t9Indexes:I

    move/from16 v27, v6

    goto :goto_7

    :cond_7
    const/16 v27, 0x0

    .line 94
    :goto_7
    iget-wide v6, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->cursor:J

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/4 v8, 0x0

    if-eqz v27, :cond_8

    iget-object v9, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->t9IndexesConverter:Lcom/callapp/contacts/model/objectbox/Converters$ListIntegersConverter;

    .line 96
    invoke-virtual {v9, v5}, Lcom/callapp/contacts/model/objectbox/Converters$ListIntegersConverter;->convertToDatabaseValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v28, v5

    goto :goto_8

    :cond_8
    move-object/from16 v28, v8

    :goto_8
    move-wide/from16 v16, v6

    move-object/from16 v22, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    .line 94
    invoke-static/range {v16 .. v28}, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->collect400000(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)J

    .line 98
    iget-object v2, v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->namesMap:Ljava/util/Map;

    if-eqz v2, :cond_9

    .line 99
    sget v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_namesMap:I

    move/from16 v21, v3

    goto :goto_9

    :cond_9
    const/16 v21, 0x0

    .line 100
    :goto_9
    iget-object v3, v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    if-eqz v3, :cond_a

    .line 101
    sget v4, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_recognizedPersonOrigin:I

    move/from16 v38, v4

    goto :goto_a

    :cond_a
    const/16 v38, 0x0

    .line 102
    :goto_a
    iget-object v4, v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    if-eqz v4, :cond_b

    .line 103
    sget v5, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_comType:I

    move/from16 v40, v5

    goto :goto_b

    :cond_b
    const/16 v40, 0x0

    .line 105
    :goto_b
    iget-wide v5, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->cursor:J

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    if-eqz v21, :cond_c

    iget-object v7, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->namesMapConverter:Lcom/callapp/contacts/model/objectbox/Converters$MapStringIntConverter;

    .line 106
    invoke-virtual {v7, v2}, Lcom/callapp/contacts/model/objectbox/Converters$MapStringIntConverter;->convertToDatabaseValue(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    :cond_c
    move-object/from16 v22, v8

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    sget v29, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_when:I

    iget-wide v7, v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->when:J

    sget v32, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_firstSeen:I

    iget-wide v9, v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->firstSeen:J

    sget v35, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_lastNotificationShowed:I

    iget-wide v11, v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->lastNotificationShowed:J

    if-eqz v38, :cond_d

    iget-object v2, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->recognizedPersonOriginConverter:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOriginConverter;

    .line 109
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOriginConverter;->convertToDatabaseValue(Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v39, v2

    goto :goto_c

    :cond_d
    const/16 v39, 0x0

    :goto_c
    if-eqz v40, :cond_e

    iget-object v2, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->comTypeConverter:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComTypeConverter;

    .line 110
    invoke-virtual {v2, v4}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComTypeConverter;->convertToDatabaseValue(Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move/from16 v41, v15

    goto :goto_d

    :cond_e
    const/16 v41, 0x0

    :goto_d
    sget v42, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_seenCount:I

    iget v2, v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->seenCount:I

    move/from16 v43, v2

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const-wide/16 v47, 0x0

    move-wide/from16 v16, v5

    move-wide/from16 v30, v7

    move-wide/from16 v33, v9

    move-wide/from16 v36, v11

    .line 105
    invoke-static/range {v16 .. v48}, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->collect313311(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I[BIJIJIJIIIIIIIFID)J

    .line 113
    iget-object v2, v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->id:Ljava/lang/Long;

    .line 114
    iget-wide v3, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->cursor:J

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_e

    :cond_f
    move-wide v7, v5

    :goto_e
    const/4 v2, 0x2

    sget v9, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_disableNotification:I

    iget-boolean v10, v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->disableNotification:Z

    const-wide/16 v11, 0x1

    if-eqz v10, :cond_10

    move-wide/from16 v20, v11

    goto :goto_f

    :cond_10
    move-wide/from16 v20, v5

    :goto_f
    sget v13, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->__ID_starred:I

    iget-boolean v10, v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->starred:Z

    if-eqz v10, :cond_11

    move-wide/from16 v22, v11

    goto :goto_10

    :cond_11
    move-wide/from16 v22, v5

    :goto_10
    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    move-wide v5, v7

    move v7, v2

    move v8, v9

    move-wide/from16 v9, v20

    move v11, v13

    move-wide/from16 v12, v22

    invoke-static/range {v3 .. v19}, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->collect004000(JJIIJIJIJIJ)J

    move-result-wide v2

    .line 118
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->id:Ljava/lang/Long;

    return-wide v2
.end method

.method public final bridge synthetic put(Ljava/lang/Object;)J
    .locals 2

    .line 22
    check-cast p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/ExtractedInfoCursor;->put(Lcom/callapp/contacts/model/objectbox/ExtractedInfo;)J

    move-result-wide v0

    return-wide v0
.end method
