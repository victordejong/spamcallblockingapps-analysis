.class public final Lcom/callapp/contacts/model/objectbox/BirthdayDataCursor;
.super Lio/objectbox/Cursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/BirthdayDataCursor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/objectbox/Cursor<",
        "Lcom/callapp/contacts/model/objectbox/BirthdayData;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GETTER:Lcom/callapp/contacts/model/objectbox/BirthdayData_$BirthdayDataIdGetter;

.field private static final __ID_dayOfMonth:I

.field private static final __ID_displayName:I

.field private static final __ID_month:I

.field private static final __ID_phoneOrIdKey:I

.field private static final __ID_socialNetId:I

.field private static final __ID_socialProfileId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget-object v0, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/BirthdayData_$BirthdayDataIdGetter;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/BirthdayDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/BirthdayData_$BirthdayDataIdGetter;

    .line 26
    sget-object v0, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->phoneOrIdKey:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/BirthdayDataCursor;->__ID_phoneOrIdKey:I

    .line 27
    sget-object v0, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->dayOfMonth:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/BirthdayDataCursor;->__ID_dayOfMonth:I

    .line 28
    sget-object v0, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->month:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/BirthdayDataCursor;->__ID_month:I

    .line 29
    sget-object v0, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->socialNetId:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/BirthdayDataCursor;->__ID_socialNetId:I

    .line 30
    sget-object v0, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->socialProfileId:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/BirthdayDataCursor;->__ID_socialProfileId:I

    .line 31
    sget-object v0, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->displayName:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/BirthdayDataCursor;->__ID_displayName:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)V
    .locals 6

    .line 34
    sget-object v4, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/BirthdayData_;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/Cursor;-><init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/objectbox/BirthdayData;)J
    .locals 2

    .line 39
    sget-object v0, Lcom/callapp/contacts/model/objectbox/BirthdayDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/BirthdayData_$BirthdayDataIdGetter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/objectbox/BirthdayData_$BirthdayDataIdGetter;->getId(Lcom/callapp/contacts/model/objectbox/BirthdayData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 14
    check-cast p1, Lcom/callapp/contacts/model/objectbox/BirthdayData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/BirthdayDataCursor;->getId(Lcom/callapp/contacts/model/objectbox/BirthdayData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(Lcom/callapp/contacts/model/objectbox/BirthdayData;)J
    .locals 37

    move-object/from16 v0, p1

    .line 49
    iget-object v1, v0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->id:Ljava/lang/Long;

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getPhoneOrIdKey()Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    if-eqz v8, :cond_0

    .line 51
    sget v3, Lcom/callapp/contacts/model/objectbox/BirthdayDataCursor;->__ID_phoneOrIdKey:I

    move v7, v3

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 52
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getSocialProfileId()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 53
    sget v3, Lcom/callapp/contacts/model/objectbox/BirthdayDataCursor;->__ID_socialProfileId:I

    move v9, v3

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 54
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 55
    sget v2, Lcom/callapp/contacts/model/objectbox/BirthdayDataCursor;->__ID_displayName:I

    move-object/from16 v4, p0

    move v11, v2

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    move-object/from16 v4, p0

    .line 57
    :goto_2
    iget-wide v2, v4, Lcom/callapp/contacts/model/objectbox/BirthdayDataCursor;->cursor:J

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_3

    :cond_3
    const-wide/16 v5, 0x0

    :goto_3
    move-wide/from16 v35, v5

    const/4 v6, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget v15, Lcom/callapp/contacts/model/objectbox/BirthdayDataCursor;->__ID_dayOfMonth:I

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getDayOfMonth()I

    move-result v1

    int-to-long v13, v1

    move-wide/from16 v16, v13

    sget v18, Lcom/callapp/contacts/model/objectbox/BirthdayDataCursor;->__ID_month:I

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getMonth()I

    move-result v1

    int-to-long v13, v1

    move-wide/from16 v19, v13

    sget v21, Lcom/callapp/contacts/model/objectbox/BirthdayDataCursor;->__ID_socialNetId:I

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getSocialNetId()I

    move-result v1

    int-to-long v13, v1

    move-wide/from16 v22, v13

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-wide/16 v33, 0x0

    move-wide/from16 v4, v35

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 57
    invoke-static/range {v2 .. v34}, Lcom/callapp/contacts/model/objectbox/BirthdayDataCursor;->collect313311(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I[BIJIJIJIIIIIIIFID)J

    move-result-wide v1

    .line 65
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcom/callapp/contacts/model/objectbox/BirthdayData;->id:Ljava/lang/Long;

    return-wide v1
.end method

.method public final bridge synthetic put(Ljava/lang/Object;)J
    .locals 2

    .line 14
    check-cast p1, Lcom/callapp/contacts/model/objectbox/BirthdayData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/BirthdayDataCursor;->put(Lcom/callapp/contacts/model/objectbox/BirthdayData;)J

    move-result-wide v0

    return-wide v0
.end method
