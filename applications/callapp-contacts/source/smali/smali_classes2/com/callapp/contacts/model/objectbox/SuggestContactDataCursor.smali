.class public final Lcom/callapp/contacts/model/objectbox/SuggestContactDataCursor;
.super Lio/objectbox/Cursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/SuggestContactDataCursor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/objectbox/Cursor<",
        "Lcom/callapp/contacts/model/objectbox/SuggestContactData;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GETTER:Lcom/callapp/contacts/model/objectbox/SuggestContactData_$SuggestContactDataIdGetter;

.field private static final __ID_contactName:I

.field private static final __ID_phoneOrIdKey:I

.field private static final __ID_profileId:I

.field private static final __ID_socialNetworkId:I

.field private static final __ID_userName:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget-object v0, Lcom/callapp/contacts/model/objectbox/SuggestContactData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/SuggestContactData_$SuggestContactDataIdGetter;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/SuggestContactDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/SuggestContactData_$SuggestContactDataIdGetter;

    .line 26
    sget-object v0, Lcom/callapp/contacts/model/objectbox/SuggestContactData_;->phoneOrIdKey:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/SuggestContactDataCursor;->__ID_phoneOrIdKey:I

    .line 27
    sget-object v0, Lcom/callapp/contacts/model/objectbox/SuggestContactData_;->socialNetworkId:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/SuggestContactDataCursor;->__ID_socialNetworkId:I

    .line 28
    sget-object v0, Lcom/callapp/contacts/model/objectbox/SuggestContactData_;->profileId:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/SuggestContactDataCursor;->__ID_profileId:I

    .line 29
    sget-object v0, Lcom/callapp/contacts/model/objectbox/SuggestContactData_;->userName:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/SuggestContactDataCursor;->__ID_userName:I

    .line 30
    sget-object v0, Lcom/callapp/contacts/model/objectbox/SuggestContactData_;->contactName:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/SuggestContactDataCursor;->__ID_contactName:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)V
    .locals 6

    .line 33
    sget-object v4, Lcom/callapp/contacts/model/objectbox/SuggestContactData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/SuggestContactData_;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/Cursor;-><init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/objectbox/SuggestContactData;)J
    .locals 2

    .line 38
    sget-object v0, Lcom/callapp/contacts/model/objectbox/SuggestContactDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/SuggestContactData_$SuggestContactDataIdGetter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/objectbox/SuggestContactData_$SuggestContactDataIdGetter;->getId(Lcom/callapp/contacts/model/objectbox/SuggestContactData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 14
    check-cast p1, Lcom/callapp/contacts/model/objectbox/SuggestContactData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/SuggestContactDataCursor;->getId(Lcom/callapp/contacts/model/objectbox/SuggestContactData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(Lcom/callapp/contacts/model/objectbox/SuggestContactData;)J
    .locals 19

    move-object/from16 v0, p0

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->getPhoneOrIdKey()Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    if-eqz v7, :cond_0

    .line 49
    sget v2, Lcom/callapp/contacts/model/objectbox/SuggestContactDataCursor;->__ID_phoneOrIdKey:I

    move v6, v2

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 50
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->getProfileId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 51
    sget v2, Lcom/callapp/contacts/model/objectbox/SuggestContactDataCursor;->__ID_profileId:I

    move v8, v2

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 52
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->getUserName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 53
    sget v2, Lcom/callapp/contacts/model/objectbox/SuggestContactDataCursor;->__ID_userName:I

    move v10, v2

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 54
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->getContactName()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 55
    sget v1, Lcom/callapp/contacts/model/objectbox/SuggestContactDataCursor;->__ID_contactName:I

    move v12, v1

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    .line 57
    :goto_3
    iget-wide v1, v0, Lcom/callapp/contacts/model/objectbox/SuggestContactDataCursor;->cursor:J

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    invoke-static/range {v1 .. v13}, Lcom/callapp/contacts/model/objectbox/SuggestContactDataCursor;->collect400000(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)J

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 62
    iget-wide v2, v0, Lcom/callapp/contacts/model/objectbox/SuggestContactDataCursor;->cursor:J

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_4

    :cond_4
    const-wide/16 v4, 0x0

    :goto_4
    const/4 v6, 0x2

    sget v7, Lcom/callapp/contacts/model/objectbox/SuggestContactDataCursor;->__ID_socialNetworkId:I

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->getSocialNetworkId()I

    move-result v1

    int-to-long v8, v1

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    .line 62
    invoke-static/range {v2 .. v18}, Lcom/callapp/contacts/model/objectbox/SuggestContactDataCursor;->collect004000(JJIIJIJIJIJ)J

    move-result-wide v1

    .line 66
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Lcom/callapp/contacts/model/objectbox/SuggestContactData;->setId(Ljava/lang/Long;)V

    return-wide v1
.end method

.method public final bridge synthetic put(Ljava/lang/Object;)J
    .locals 2

    .line 14
    check-cast p1, Lcom/callapp/contacts/model/objectbox/SuggestContactData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/SuggestContactDataCursor;->put(Lcom/callapp/contacts/model/objectbox/SuggestContactData;)J

    move-result-wide v0

    return-wide v0
.end method
