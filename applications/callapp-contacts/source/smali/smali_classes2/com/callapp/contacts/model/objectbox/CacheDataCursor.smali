.class public final Lcom/callapp/contacts/model/objectbox/CacheDataCursor;
.super Lio/objectbox/Cursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/CacheDataCursor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/objectbox/Cursor<",
        "Lcom/callapp/contacts/model/objectbox/CacheData;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GETTER:Lcom/callapp/contacts/model/objectbox/CacheData_$CacheDataIdGetter;

.field private static final __ID_booleanVal:I

.field private static final __ID_bytesVal:I

.field private static final __ID_expires:I

.field private static final __ID_file:I

.field private static final __ID_integerVal:I

.field private static final __ID_longVal:I

.field private static final __ID_stringVal:I

.field private static final __ID_valueType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CacheData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/CacheData_$CacheDataIdGetter;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/CacheDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/CacheData_$CacheDataIdGetter;

    .line 26
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CacheData_;->file:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/CacheDataCursor;->__ID_file:I

    .line 27
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CacheData_;->expires:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/CacheDataCursor;->__ID_expires:I

    .line 28
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CacheData_;->valueType:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/CacheDataCursor;->__ID_valueType:I

    .line 29
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CacheData_;->stringVal:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/CacheDataCursor;->__ID_stringVal:I

    .line 30
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CacheData_;->longVal:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/CacheDataCursor;->__ID_longVal:I

    .line 31
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CacheData_;->booleanVal:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/CacheDataCursor;->__ID_booleanVal:I

    .line 32
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CacheData_;->integerVal:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/CacheDataCursor;->__ID_integerVal:I

    .line 33
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CacheData_;->bytesVal:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/CacheDataCursor;->__ID_bytesVal:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)V
    .locals 6

    .line 36
    sget-object v4, Lcom/callapp/contacts/model/objectbox/CacheData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/CacheData_;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/Cursor;-><init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/objectbox/CacheData;)J
    .locals 2

    .line 41
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CacheDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/CacheData_$CacheDataIdGetter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/objectbox/CacheData_$CacheDataIdGetter;->getId(Lcom/callapp/contacts/model/objectbox/CacheData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 14
    check-cast p1, Lcom/callapp/contacts/model/objectbox/CacheData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/CacheDataCursor;->getId(Lcom/callapp/contacts/model/objectbox/CacheData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(Lcom/callapp/contacts/model/objectbox/CacheData;)J
    .locals 39

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/CacheData;->getFile()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 52
    sget v1, Lcom/callapp/contacts/model/objectbox/CacheDataCursor;->__ID_file:I

    move v5, v1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 53
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/CacheData;->getValueType()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 54
    sget v1, Lcom/callapp/contacts/model/objectbox/CacheDataCursor;->__ID_valueType:I

    move v7, v1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 55
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/CacheData;->getStringVal()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 56
    sget v1, Lcom/callapp/contacts/model/objectbox/CacheDataCursor;->__ID_stringVal:I

    move v9, v1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    .line 57
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/CacheData;->getBytesVal()[B

    move-result-object v12

    if-eqz v12, :cond_3

    .line 58
    sget v1, Lcom/callapp/contacts/model/objectbox/CacheDataCursor;->__ID_bytesVal:I

    move v11, v1

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    .line 59
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/CacheData;->getLongVal()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 60
    sget v2, Lcom/callapp/contacts/model/objectbox/CacheDataCursor;->__ID_longVal:I

    move v13, v2

    goto :goto_4

    :cond_4
    const/4 v13, 0x0

    .line 61
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/CacheData;->getExpires()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 62
    sget v3, Lcom/callapp/contacts/model/objectbox/CacheDataCursor;->__ID_expires:I

    move/from16 v16, v3

    goto :goto_5

    :cond_5
    const/16 v16, 0x0

    .line 63
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/CacheData;->getIntegerVal()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 64
    sget v4, Lcom/callapp/contacts/model/objectbox/CacheDataCursor;->__ID_integerVal:I

    move/from16 v19, v4

    goto :goto_6

    :cond_6
    const/16 v19, 0x0

    .line 65
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/CacheData;->getBooleanVal()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 66
    sget v14, Lcom/callapp/contacts/model/objectbox/CacheDataCursor;->__ID_booleanVal:I

    move-object/from16 v17, v1

    move/from16 v22, v14

    move-object/from16 v14, p0

    goto :goto_7

    :cond_7
    move-object/from16 v14, p0

    move-object/from16 v17, v1

    const/16 v22, 0x0

    .line 68
    :goto_7
    iget-wide v0, v14, Lcom/callapp/contacts/model/objectbox/CacheDataCursor;->cursor:J

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/CacheData;->getId()J

    move-result-wide v20

    const/16 v18, 0x3

    const-wide/16 v23, 0x0

    if-eqz v13, :cond_8

    .line 71
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    move-wide/from16 v33, v25

    goto :goto_8

    :cond_8
    move-wide/from16 v33, v23

    :goto_8
    if-eqz v16, :cond_9

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v25

    move-wide/from16 v35, v25

    goto :goto_9

    :cond_9
    move-wide/from16 v35, v23

    :goto_9
    if-eqz v19, :cond_a

    .line 72
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    move-wide/from16 v37, v2

    goto :goto_a

    :cond_a
    move-wide/from16 v37, v23

    :goto_a
    if-eqz v22, :cond_b

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    const/16 v23, 0x1

    goto :goto_b

    :cond_b
    const/16 v23, 0x0

    :goto_b
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

    move-wide/from16 v2, v20

    move/from16 v4, v18

    move-wide/from16 v14, v33

    move-wide/from16 v17, v35

    move-wide/from16 v20, v37

    .line 68
    invoke-static/range {v0 .. v32}, Lcom/callapp/contacts/model/objectbox/CacheDataCursor;->collect313311(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I[BIJIJIJIIIIIIIFID)J

    move-result-wide v0

    move-object/from16 v2, p1

    .line 76
    invoke-virtual {v2, v0, v1}, Lcom/callapp/contacts/model/objectbox/CacheData;->setId(J)V

    return-wide v0
.end method

.method public final bridge synthetic put(Ljava/lang/Object;)J
    .locals 2

    .line 14
    check-cast p1, Lcom/callapp/contacts/model/objectbox/CacheData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/CacheDataCursor;->put(Lcom/callapp/contacts/model/objectbox/CacheData;)J

    move-result-wide v0

    return-wide v0
.end method
