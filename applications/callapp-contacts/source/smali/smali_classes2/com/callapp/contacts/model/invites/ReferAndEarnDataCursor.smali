.class public final Lcom/callapp/contacts/model/invites/ReferAndEarnDataCursor;
.super Lio/objectbox/Cursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/invites/ReferAndEarnDataCursor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/objectbox/Cursor<",
        "Lcom/callapp/contacts/model/invites/ReferAndEarnData;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GETTER:Lcom/callapp/contacts/model/invites/ReferAndEarnData_$ReferAndEarnDataIdGetter;

.field private static final __ID_earnedPoints:I

.field private static final __ID_referId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnData_;->__ID_GETTER:Lcom/callapp/contacts/model/invites/ReferAndEarnData_$ReferAndEarnDataIdGetter;

    sput-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/invites/ReferAndEarnData_$ReferAndEarnDataIdGetter;

    .line 28
    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnData_;->referId:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataCursor;->__ID_referId:I

    .line 29
    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnData_;->earnedPoints:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataCursor;->__ID_earnedPoints:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)V
    .locals 6

    .line 32
    sget-object v4, Lcom/callapp/contacts/model/invites/ReferAndEarnData_;->__INSTANCE:Lcom/callapp/contacts/model/invites/ReferAndEarnData_;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/Cursor;-><init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V

    return-void
.end method

.method private attachEntity(Lcom/callapp/contacts/model/invites/ReferAndEarnData;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lio/objectbox/Cursor;->boxStoreForEntities:Lio/objectbox/BoxStore;

    iput-object v0, p1, Lcom/callapp/contacts/model/invites/ReferAndEarnData;->__boxStore:Lio/objectbox/BoxStore;

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/invites/ReferAndEarnData;)J
    .locals 2

    .line 37
    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/invites/ReferAndEarnData_$ReferAndEarnDataIdGetter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/invites/ReferAndEarnData_$ReferAndEarnDataIdGetter;->getId(Lcom/callapp/contacts/model/invites/ReferAndEarnData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 16
    check-cast p1, Lcom/callapp/contacts/model/invites/ReferAndEarnData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataCursor;->getId(Lcom/callapp/contacts/model/invites/ReferAndEarnData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(Lcom/callapp/contacts/model/invites/ReferAndEarnData;)J
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 47
    iget-object v2, v1, Lcom/callapp/contacts/model/invites/ReferAndEarnData;->id:Ljava/lang/Long;

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/invites/ReferAndEarnData;->getReferId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 49
    sget v3, Lcom/callapp/contacts/model/invites/ReferAndEarnDataCursor;->__ID_referId:I

    move v8, v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 51
    :goto_0
    iget-wide v3, v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataCursor;->cursor:J

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_1

    :cond_1
    const-wide/16 v5, 0x0

    :goto_1
    const/4 v7, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget v16, Lcom/callapp/contacts/model/invites/ReferAndEarnDataCursor;->__ID_earnedPoints:I

    .line 54
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/invites/ReferAndEarnData;->getEarnedPoints()I

    move-result v2

    int-to-long v10, v2

    move-wide/from16 v17, v10

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 51
    invoke-static/range {v3 .. v35}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataCursor;->collect313311(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I[BIJIJIJIIIIIIIFID)J

    move-result-wide v2

    .line 59
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Lcom/callapp/contacts/model/invites/ReferAndEarnData;->id:Ljava/lang/Long;

    .line 61
    invoke-direct/range {p0 .. p1}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataCursor;->attachEntity(Lcom/callapp/contacts/model/invites/ReferAndEarnData;)V

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/invites/ReferAndEarnData;->getReferAndEarnUserDataToMany()Lio/objectbox/relation/ToMany;

    move-result-object v1

    const-class v4, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;

    invoke-virtual {v0, v1, v4}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataCursor;->checkApplyToManyToDb(Ljava/util/List;Ljava/lang/Class;)V

    return-wide v2
.end method

.method public final bridge synthetic put(Ljava/lang/Object;)J
    .locals 2

    .line 16
    check-cast p1, Lcom/callapp/contacts/model/invites/ReferAndEarnData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataCursor;->put(Lcom/callapp/contacts/model/invites/ReferAndEarnData;)J

    move-result-wide v0

    return-wide v0
.end method
