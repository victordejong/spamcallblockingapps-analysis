.class public final Lcom/callapp/contacts/model/objectbox/UserSpamDataCursor;
.super Lio/objectbox/Cursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/UserSpamDataCursor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/objectbox/Cursor<",
        "Lcom/callapp/contacts/model/objectbox/UserSpamData;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GETTER:Lcom/callapp/contacts/model/objectbox/UserSpamData_$UserSpamDataIdGetter;

.field private static final __ID_phone:I

.field private static final __ID_spamScore:I


# instance fields
.field private final spamScoreConverter:Lcom/callapp/contacts/model/objectbox/UserSpamData$SpamScoreConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    sget-object v0, Lcom/callapp/contacts/model/objectbox/UserSpamData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/UserSpamData_$UserSpamDataIdGetter;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/UserSpamDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/UserSpamData_$UserSpamDataIdGetter;

    .line 29
    sget-object v0, Lcom/callapp/contacts/model/objectbox/UserSpamData_;->phone:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/UserSpamDataCursor;->__ID_phone:I

    .line 30
    sget-object v0, Lcom/callapp/contacts/model/objectbox/UserSpamData_;->spamScore:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/UserSpamDataCursor;->__ID_spamScore:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)V
    .locals 6

    .line 33
    sget-object v4, Lcom/callapp/contacts/model/objectbox/UserSpamData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/UserSpamData_;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/Cursor;-><init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V

    .line 27
    new-instance p1, Lcom/callapp/contacts/model/objectbox/UserSpamData$SpamScoreConverter;

    invoke-direct {p1}, Lcom/callapp/contacts/model/objectbox/UserSpamData$SpamScoreConverter;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/UserSpamDataCursor;->spamScoreConverter:Lcom/callapp/contacts/model/objectbox/UserSpamData$SpamScoreConverter;

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/objectbox/UserSpamData;)J
    .locals 2

    .line 38
    sget-object v0, Lcom/callapp/contacts/model/objectbox/UserSpamDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/UserSpamData_$UserSpamDataIdGetter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/objectbox/UserSpamData_$UserSpamDataIdGetter;->getId(Lcom/callapp/contacts/model/objectbox/UserSpamData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 16
    check-cast p1, Lcom/callapp/contacts/model/objectbox/UserSpamData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/UserSpamDataCursor;->getId(Lcom/callapp/contacts/model/objectbox/UserSpamData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(Lcom/callapp/contacts/model/objectbox/UserSpamData;)J
    .locals 36

    move-object/from16 v0, p0

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/UserSpamData;->getPhone()Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    if-eqz v7, :cond_0

    .line 49
    sget v2, Lcom/callapp/contacts/model/objectbox/UserSpamDataCursor;->__ID_phone:I

    move v6, v2

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 50
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/UserSpamData;->getSpamScore()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 51
    sget v1, Lcom/callapp/contacts/model/objectbox/UserSpamDataCursor;->__ID_spamScore:I

    move v14, v1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    .line 53
    :goto_1
    iget-wide v3, v0, Lcom/callapp/contacts/model/objectbox/UserSpamDataCursor;->cursor:J

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/UserSpamData;->getId()J

    move-result-wide v8

    const/4 v5, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    if-eqz v14, :cond_2

    iget-object v1, v0, Lcom/callapp/contacts/model/objectbox/UserSpamDataCursor;->spamScoreConverter:Lcom/callapp/contacts/model/objectbox/UserSpamData$SpamScoreConverter;

    .line 56
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/model/objectbox/UserSpamData$SpamScoreConverter;->convertToDatabaseValue(Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x1

    move-wide/from16 v34, v1

    goto :goto_2

    :cond_2
    move-wide/from16 v34, v17

    :goto_2
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

    move-wide v1, v3

    move-wide v3, v8

    move v8, v10

    move-object v9, v11

    move v10, v12

    move-object v11, v13

    move v12, v15

    move-object/from16 v13, v16

    move-wide/from16 v15, v34

    .line 53
    invoke-static/range {v1 .. v33}, Lcom/callapp/contacts/model/objectbox/UserSpamDataCursor;->collect313311(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I[BIJIJIJIIIIIIIFID)J

    move-result-wide v1

    move-object/from16 v3, p1

    .line 61
    invoke-virtual {v3, v1, v2}, Lcom/callapp/contacts/model/objectbox/UserSpamData;->setId(J)V

    return-wide v1
.end method

.method public final bridge synthetic put(Ljava/lang/Object;)J
    .locals 2

    .line 16
    check-cast p1, Lcom/callapp/contacts/model/objectbox/UserSpamData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/UserSpamDataCursor;->put(Lcom/callapp/contacts/model/objectbox/UserSpamData;)J

    move-result-wide v0

    return-wide v0
.end method
