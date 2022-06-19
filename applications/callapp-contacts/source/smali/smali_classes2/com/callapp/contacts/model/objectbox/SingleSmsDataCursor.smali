.class public final Lcom/callapp/contacts/model/objectbox/SingleSmsDataCursor;
.super Lio/objectbox/Cursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/SingleSmsDataCursor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/objectbox/Cursor<",
        "Lcom/callapp/contacts/model/objectbox/SingleSmsData;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GETTER:Lcom/callapp/contacts/model/objectbox/SingleSmsData_$SingleSmsDataIdGetter;

.field private static final __ID_contactId:I

.field private static final __ID_fullName:I

.field private static final __ID_phone:I

.field private static final __ID_smsText:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget-object v0, Lcom/callapp/contacts/model/objectbox/SingleSmsData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/SingleSmsData_$SingleSmsDataIdGetter;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/SingleSmsDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/SingleSmsData_$SingleSmsDataIdGetter;

    .line 26
    sget-object v0, Lcom/callapp/contacts/model/objectbox/SingleSmsData_;->contactId:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/SingleSmsDataCursor;->__ID_contactId:I

    .line 27
    sget-object v0, Lcom/callapp/contacts/model/objectbox/SingleSmsData_;->smsText:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/SingleSmsDataCursor;->__ID_smsText:I

    .line 28
    sget-object v0, Lcom/callapp/contacts/model/objectbox/SingleSmsData_;->phone:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/SingleSmsDataCursor;->__ID_phone:I

    .line 29
    sget-object v0, Lcom/callapp/contacts/model/objectbox/SingleSmsData_;->fullName:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/SingleSmsDataCursor;->__ID_fullName:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)V
    .locals 6

    .line 32
    sget-object v4, Lcom/callapp/contacts/model/objectbox/SingleSmsData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/SingleSmsData_;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/Cursor;-><init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/objectbox/SingleSmsData;)J
    .locals 2

    .line 37
    sget-object v0, Lcom/callapp/contacts/model/objectbox/SingleSmsDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/SingleSmsData_$SingleSmsDataIdGetter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/objectbox/SingleSmsData_$SingleSmsDataIdGetter;->getId(Lcom/callapp/contacts/model/objectbox/SingleSmsData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 14
    check-cast p1, Lcom/callapp/contacts/model/objectbox/SingleSmsData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/SingleSmsDataCursor;->getId(Lcom/callapp/contacts/model/objectbox/SingleSmsData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(Lcom/callapp/contacts/model/objectbox/SingleSmsData;)J
    .locals 34

    move-object/from16 v0, p1

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->getSmsText()Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    if-eqz v7, :cond_0

    .line 48
    sget v2, Lcom/callapp/contacts/model/objectbox/SingleSmsDataCursor;->__ID_smsText:I

    move v6, v2

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 49
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->getPhone()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 50
    sget v2, Lcom/callapp/contacts/model/objectbox/SingleSmsDataCursor;->__ID_phone:I

    move v8, v2

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 51
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->getFullName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 52
    sget v1, Lcom/callapp/contacts/model/objectbox/SingleSmsDataCursor;->__ID_fullName:I

    move-object/from16 v15, p0

    move v10, v1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    move-object/from16 v15, p0

    .line 54
    :goto_2
    iget-wide v1, v15, Lcom/callapp/contacts/model/objectbox/SingleSmsDataCursor;->cursor:J

    iget-wide v3, v0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->id:J

    const/4 v5, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget v14, Lcom/callapp/contacts/model/objectbox/SingleSmsDataCursor;->__ID_contactId:I

    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->getContactId()J

    move-result-wide v16

    move-wide/from16 v15, v16

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

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

    .line 54
    invoke-static/range {v1 .. v33}, Lcom/callapp/contacts/model/objectbox/SingleSmsDataCursor;->collect313311(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I[BIJIJIJIIIIIIIFID)J

    move-result-wide v1

    .line 62
    iput-wide v1, v0, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->id:J

    return-wide v1
.end method

.method public final bridge synthetic put(Ljava/lang/Object;)J
    .locals 2

    .line 14
    check-cast p1, Lcom/callapp/contacts/model/objectbox/SingleSmsData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/SingleSmsDataCursor;->put(Lcom/callapp/contacts/model/objectbox/SingleSmsData;)J

    move-result-wide v0

    return-wide v0
.end method
