.class public final Lcom/callapp/contacts/model/UsageCounterDataCursor;
.super Lio/objectbox/Cursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/UsageCounterDataCursor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/objectbox/Cursor<",
        "Lcom/callapp/contacts/model/UsageCounterData;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GETTER:Lcom/callapp/contacts/model/UsageCounterData_$UsageCounterDataIdGetter;

.field private static final __ID_count:I

.field private static final __ID_date:I

.field private static final __ID_netCallType:I

.field private static final __ID_socialNetworkId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget-object v0, Lcom/callapp/contacts/model/UsageCounterData_;->__ID_GETTER:Lcom/callapp/contacts/model/UsageCounterData_$UsageCounterDataIdGetter;

    sput-object v0, Lcom/callapp/contacts/model/UsageCounterDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/UsageCounterData_$UsageCounterDataIdGetter;

    .line 26
    sget-object v0, Lcom/callapp/contacts/model/UsageCounterData_;->socialNetworkId:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/UsageCounterDataCursor;->__ID_socialNetworkId:I

    .line 27
    sget-object v0, Lcom/callapp/contacts/model/UsageCounterData_;->netCallType:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/UsageCounterDataCursor;->__ID_netCallType:I

    .line 28
    sget-object v0, Lcom/callapp/contacts/model/UsageCounterData_;->count:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/UsageCounterDataCursor;->__ID_count:I

    .line 29
    sget-object v0, Lcom/callapp/contacts/model/UsageCounterData_;->date:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/UsageCounterDataCursor;->__ID_date:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)V
    .locals 6

    .line 32
    sget-object v4, Lcom/callapp/contacts/model/UsageCounterData_;->__INSTANCE:Lcom/callapp/contacts/model/UsageCounterData_;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/Cursor;-><init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/UsageCounterData;)J
    .locals 2

    .line 37
    sget-object v0, Lcom/callapp/contacts/model/UsageCounterDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/UsageCounterData_$UsageCounterDataIdGetter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/UsageCounterData_$UsageCounterDataIdGetter;->getId(Lcom/callapp/contacts/model/UsageCounterData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 14
    check-cast p1, Lcom/callapp/contacts/model/UsageCounterData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/UsageCounterDataCursor;->getId(Lcom/callapp/contacts/model/UsageCounterData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(Lcom/callapp/contacts/model/UsageCounterData;)J
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 47
    iget-wide v2, v0, Lcom/callapp/contacts/model/UsageCounterDataCursor;->cursor:J

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/UsageCounterData;->getId()J

    move-result-wide v4

    sget v7, Lcom/callapp/contacts/model/UsageCounterDataCursor;->__ID_count:I

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/UsageCounterData;->getCount()J

    move-result-wide v8

    sget v10, Lcom/callapp/contacts/model/UsageCounterDataCursor;->__ID_date:I

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/UsageCounterData;->getDate()J

    move-result-wide v11

    sget v13, Lcom/callapp/contacts/model/UsageCounterDataCursor;->__ID_socialNetworkId:I

    iget v6, v1, Lcom/callapp/contacts/model/UsageCounterData;->socialNetworkId:I

    int-to-long v14, v6

    sget v16, Lcom/callapp/contacts/model/UsageCounterDataCursor;->__ID_netCallType:I

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/UsageCounterData;->getNetCallType()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v17, v0

    const/4 v6, 0x3

    .line 47
    invoke-static/range {v2 .. v18}, Lcom/callapp/contacts/model/UsageCounterDataCursor;->collect004000(JJIIJIJIJIJ)J

    move-result-wide v0

    move-object/from16 v2, p1

    .line 51
    invoke-virtual {v2, v0, v1}, Lcom/callapp/contacts/model/UsageCounterData;->setId(J)V

    return-wide v0
.end method

.method public final bridge synthetic put(Ljava/lang/Object;)J
    .locals 2

    .line 14
    check-cast p1, Lcom/callapp/contacts/model/UsageCounterData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/UsageCounterDataCursor;->put(Lcom/callapp/contacts/model/UsageCounterData;)J

    move-result-wide v0

    return-wide v0
.end method
