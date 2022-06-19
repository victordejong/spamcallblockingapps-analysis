.class public final Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;
.super Lio/objectbox/Cursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/objectbox/Cursor<",
        "Lcom/callapp/contacts/model/objectbox/ContactLookupData;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GETTER:Lcom/callapp/contacts/model/objectbox/ContactLookupData_$ContactLookupDataIdGetter;

.field private static final __ID_contactId:I

.field private static final __ID_description:I

.field private static final __ID_descriptionMap:I

.field private static final __ID_displayName:I

.field private static final __ID_lookupKey:I

.field private static final __ID_nameT9Format:I

.field private static final __ID_nameT9FormatNoZero:I

.field private static final __ID_namesMap:I

.field private static final __ID_phoneNumbers:I

.field private static final __ID_t9Indexes:I

.field private static final __ID_unAccentDescription:I

.field private static final __ID_unAccentName:I


# instance fields
.field private final descriptionMapConverter:Lcom/callapp/contacts/model/objectbox/Converters$MapStringIntConverter;

.field private final namesMapConverter:Lcom/callapp/contacts/model/objectbox/Converters$MapStringIntConverter;

.field private final phoneNumbersConverter:Lcom/callapp/contacts/model/objectbox/Converters$ListStringsConverter;

.field private final t9IndexesConverter:Lcom/callapp/contacts/model/objectbox/Converters$ListIntegersConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/ContactLookupData_$ContactLookupDataIdGetter;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/ContactLookupData_$ContactLookupDataIdGetter;

    .line 35
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->lookupKey:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->__ID_lookupKey:I

    .line 36
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->contactId:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->__ID_contactId:I

    .line 37
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->phoneNumbers:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->__ID_phoneNumbers:I

    .line 38
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->nameT9Format:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->__ID_nameT9Format:I

    .line 39
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->nameT9FormatNoZero:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->__ID_nameT9FormatNoZero:I

    .line 40
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->displayName:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->__ID_displayName:I

    .line 41
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->unAccentName:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->__ID_unAccentName:I

    .line 42
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->description:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->__ID_description:I

    .line 43
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->unAccentDescription:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->__ID_unAccentDescription:I

    .line 44
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->t9Indexes:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->__ID_t9Indexes:I

    .line 45
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->namesMap:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->__ID_namesMap:I

    .line 46
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->descriptionMap:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->__ID_descriptionMap:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)V
    .locals 6

    .line 49
    sget-object v4, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/ContactLookupData_;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/Cursor;-><init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V

    .line 30
    new-instance p1, Lcom/callapp/contacts/model/objectbox/Converters$ListStringsConverter;

    invoke-direct {p1}, Lcom/callapp/contacts/model/objectbox/Converters$ListStringsConverter;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->phoneNumbersConverter:Lcom/callapp/contacts/model/objectbox/Converters$ListStringsConverter;

    .line 31
    new-instance p1, Lcom/callapp/contacts/model/objectbox/Converters$ListIntegersConverter;

    invoke-direct {p1}, Lcom/callapp/contacts/model/objectbox/Converters$ListIntegersConverter;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->t9IndexesConverter:Lcom/callapp/contacts/model/objectbox/Converters$ListIntegersConverter;

    .line 32
    new-instance p1, Lcom/callapp/contacts/model/objectbox/Converters$MapStringIntConverter;

    invoke-direct {p1}, Lcom/callapp/contacts/model/objectbox/Converters$MapStringIntConverter;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->namesMapConverter:Lcom/callapp/contacts/model/objectbox/Converters$MapStringIntConverter;

    .line 33
    new-instance p1, Lcom/callapp/contacts/model/objectbox/Converters$MapStringIntConverter;

    invoke-direct {p1}, Lcom/callapp/contacts/model/objectbox/Converters$MapStringIntConverter;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->descriptionMapConverter:Lcom/callapp/contacts/model/objectbox/Converters$MapStringIntConverter;

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/objectbox/ContactLookupData;)J
    .locals 2

    .line 54
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/ContactLookupData_$ContactLookupDataIdGetter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/objectbox/ContactLookupData_$ContactLookupDataIdGetter;->getId(Lcom/callapp/contacts/model/objectbox/ContactLookupData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 19
    check-cast p1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->getId(Lcom/callapp/contacts/model/objectbox/ContactLookupData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(Lcom/callapp/contacts/model/objectbox/ContactLookupData;)J
    .locals 50

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getLookupKey()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 65
    sget v2, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->__ID_lookupKey:I

    move v7, v2

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 66
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getPhoneNumbers()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 67
    sget v3, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->__ID_phoneNumbers:I

    move v9, v3

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 68
    :goto_1
    iget-object v12, v1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->nameT9Format:Ljava/lang/String;

    if-eqz v12, :cond_2

    .line 69
    sget v3, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->__ID_nameT9Format:I

    move v11, v3

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    .line 70
    :goto_2
    iget-object v14, v1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->nameT9FormatNoZero:Ljava/lang/String;

    if-eqz v14, :cond_3

    .line 71
    sget v3, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->__ID_nameT9FormatNoZero:I

    move v13, v3

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    .line 73
    :goto_3
    iget-wide v3, v0, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->cursor:J

    const-wide/16 v5, 0x0

    const/4 v10, 0x1

    const/16 v16, 0x0

    if-eqz v9, :cond_4

    iget-object v15, v0, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->phoneNumbersConverter:Lcom/callapp/contacts/model/objectbox/Converters$ListStringsConverter;

    .line 74
    invoke-virtual {v15, v2}, Lcom/callapp/contacts/model/objectbox/Converters$ListStringsConverter;->convertToDatabaseValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_4

    :cond_4
    move-object/from16 v15, v16

    :goto_4
    move-wide v2, v3

    move-wide v4, v5

    move v6, v10

    move-object v10, v15

    .line 73
    invoke-static/range {v2 .. v14}, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->collect400000(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)J

    .line 77
    iget-object v2, v1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->displayName:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 78
    sget v3, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->__ID_displayName:I

    move/from16 v22, v3

    goto :goto_5

    :cond_5
    const/16 v22, 0x0

    .line 79
    :goto_5
    iget-object v3, v1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->unAccentName:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 80
    sget v4, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->__ID_unAccentName:I

    move/from16 v24, v4

    goto :goto_6

    :cond_6
    const/16 v24, 0x0

    .line 81
    :goto_6
    iget-object v4, v1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->description:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 82
    sget v5, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->__ID_description:I

    move/from16 v26, v5

    goto :goto_7

    :cond_7
    const/16 v26, 0x0

    .line 83
    :goto_7
    iget-object v5, v1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->unAccentDescription:Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 84
    sget v6, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->__ID_unAccentDescription:I

    move/from16 v28, v6

    goto :goto_8

    :cond_8
    const/16 v28, 0x0

    .line 86
    :goto_8
    iget-wide v6, v0, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->cursor:J

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    move-wide/from16 v17, v6

    move-object/from16 v23, v2

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    move-object/from16 v29, v5

    invoke-static/range {v17 .. v29}, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->collect400000(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)J

    .line 90
    iget-object v2, v1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->t9Indexes:Ljava/util/List;

    if-eqz v2, :cond_9

    .line 91
    sget v3, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->__ID_t9Indexes:I

    move/from16 v22, v3

    goto :goto_9

    :cond_9
    const/16 v22, 0x0

    .line 92
    :goto_9
    iget-object v3, v1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->namesMap:Ljava/util/Map;

    if-eqz v3, :cond_a

    .line 93
    sget v4, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->__ID_namesMap:I

    move/from16 v24, v4

    goto :goto_a

    :cond_a
    const/16 v24, 0x0

    .line 94
    :goto_a
    iget-object v4, v1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->descriptionMap:Ljava/util/Map;

    if-eqz v4, :cond_b

    .line 95
    sget v15, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->__ID_descriptionMap:I

    move/from16 v26, v15

    goto :goto_b

    :cond_b
    const/16 v26, 0x0

    .line 97
    :goto_b
    iget-wide v5, v0, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->cursor:J

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getId()J

    move-result-wide v19

    const/16 v21, 0x2

    if-eqz v22, :cond_c

    iget-object v7, v0, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->t9IndexesConverter:Lcom/callapp/contacts/model/objectbox/Converters$ListIntegersConverter;

    .line 98
    invoke-virtual {v7, v2}, Lcom/callapp/contacts/model/objectbox/Converters$ListIntegersConverter;->convertToDatabaseValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v23, v2

    goto :goto_c

    :cond_c
    move-object/from16 v23, v16

    :goto_c
    if-eqz v24, :cond_d

    iget-object v2, v0, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->namesMapConverter:Lcom/callapp/contacts/model/objectbox/Converters$MapStringIntConverter;

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/model/objectbox/Converters$MapStringIntConverter;->convertToDatabaseValue(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v25, v2

    goto :goto_d

    :cond_d
    move-object/from16 v25, v16

    :goto_d
    if-eqz v26, :cond_e

    iget-object v2, v0, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->descriptionMapConverter:Lcom/callapp/contacts/model/objectbox/Converters$MapStringIntConverter;

    .line 99
    invoke-virtual {v2, v4}, Lcom/callapp/contacts/model/objectbox/Converters$MapStringIntConverter;->convertToDatabaseValue(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v16

    :cond_e
    move-object/from16 v27, v16

    const/16 v28, 0x0

    const/16 v29, 0x0

    sget v30, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->__ID_contactId:I

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getContactId()J

    move-result-wide v31

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const/16 v36, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const-wide/16 v48, 0x0

    move-wide/from16 v17, v5

    .line 97
    invoke-static/range {v17 .. v49}, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->collect313311(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I[BIJIJIJIIIIIIIFID)J

    move-result-wide v2

    .line 105
    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->setId(J)V

    return-wide v2
.end method

.method public final bridge synthetic put(Ljava/lang/Object;)J
    .locals 2

    .line 19
    check-cast p1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/ContactLookupDataCursor;->put(Lcom/callapp/contacts/model/objectbox/ContactLookupData;)J

    move-result-wide v0

    return-wide v0
.end method
