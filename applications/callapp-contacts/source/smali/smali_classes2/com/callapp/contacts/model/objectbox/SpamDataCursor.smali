.class public final Lcom/callapp/contacts/model/objectbox/SpamDataCursor;
.super Lio/objectbox/Cursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/SpamDataCursor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/objectbox/Cursor<",
        "Lcom/callapp/contacts/model/objectbox/SpamData;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GETTER:Lcom/callapp/contacts/model/objectbox/SpamData_$SpamDataIdGetter;

.field private static final __ID_phoneAsRaw:I

.field private static final __ID_when:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget-object v0, Lcom/callapp/contacts/model/objectbox/SpamData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/SpamData_$SpamDataIdGetter;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/SpamDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/SpamData_$SpamDataIdGetter;

    .line 26
    sget-object v0, Lcom/callapp/contacts/model/objectbox/SpamData_;->phoneAsRaw:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/SpamDataCursor;->__ID_phoneAsRaw:I

    .line 27
    sget-object v0, Lcom/callapp/contacts/model/objectbox/SpamData_;->when:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/SpamDataCursor;->__ID_when:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)V
    .locals 6

    .line 30
    sget-object v4, Lcom/callapp/contacts/model/objectbox/SpamData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/SpamData_;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/Cursor;-><init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/objectbox/SpamData;)J
    .locals 2

    .line 35
    sget-object v0, Lcom/callapp/contacts/model/objectbox/SpamDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/SpamData_$SpamDataIdGetter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/objectbox/SpamData_$SpamDataIdGetter;->getId(Lcom/callapp/contacts/model/objectbox/SpamData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 14
    check-cast p1, Lcom/callapp/contacts/model/objectbox/SpamData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/SpamDataCursor;->getId(Lcom/callapp/contacts/model/objectbox/SpamData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(Lcom/callapp/contacts/model/objectbox/SpamData;)J
    .locals 34

    move-object/from16 v0, p1

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/SpamData;->getPhoneAsRaw()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 46
    sget v1, Lcom/callapp/contacts/model/objectbox/SpamDataCursor;->__ID_phoneAsRaw:I

    move-object/from16 v15, p0

    move v6, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object/from16 v15, p0

    .line 48
    :goto_0
    iget-wide v1, v15, Lcom/callapp/contacts/model/objectbox/SpamDataCursor;->cursor:J

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/SpamData;->getId()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget v14, Lcom/callapp/contacts/model/objectbox/SpamDataCursor;->__ID_when:I

    iget-wide v8, v0, Lcom/callapp/contacts/model/objectbox/SpamData;->when:J

    move-wide v15, v8

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

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v1 .. v33}, Lcom/callapp/contacts/model/objectbox/SpamDataCursor;->collect313311(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I[BIJIJIJIIIIIIIFID)J

    move-result-wide v1

    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/model/objectbox/SpamData;->setId(J)V

    return-wide v1
.end method

.method public final bridge synthetic put(Ljava/lang/Object;)J
    .locals 2

    .line 14
    check-cast p1, Lcom/callapp/contacts/model/objectbox/SpamData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/SpamDataCursor;->put(Lcom/callapp/contacts/model/objectbox/SpamData;)J

    move-result-wide v0

    return-wide v0
.end method
