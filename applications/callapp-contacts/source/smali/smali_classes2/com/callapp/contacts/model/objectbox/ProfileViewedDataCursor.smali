.class public final Lcom/callapp/contacts/model/objectbox/ProfileViewedDataCursor;
.super Lio/objectbox/Cursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/ProfileViewedDataCursor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/objectbox/Cursor<",
        "Lcom/callapp/contacts/model/objectbox/ProfileViewedData;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GETTER:Lcom/callapp/contacts/model/objectbox/ProfileViewedData_$ProfileViewedDataIdGetter;

.field private static final __ID_counter:I

.field private static final __ID_entrypoint:I

.field private static final __ID_lastViewed:I

.field private static final __ID_name:I

.field private static final __ID_phoneNumber:I

.field private static final __ID_type:I


# instance fields
.field private final entrypointConverter:Lcom/callapp/contacts/model/objectbox/WhoViewedProfileEntryPointConverter;

.field private final typeConverter:Lcom/callapp/contacts/model/objectbox/ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/ProfileViewedData_$ProfileViewedDataIdGetter;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/ProfileViewedDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/ProfileViewedData_$ProfileViewedDataIdGetter;

    .line 28
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->phoneNumber:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ProfileViewedDataCursor;->__ID_phoneNumber:I

    .line 29
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->entrypoint:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ProfileViewedDataCursor;->__ID_entrypoint:I

    .line 30
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->lastViewed:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ProfileViewedDataCursor;->__ID_lastViewed:I

    .line 31
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->name:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ProfileViewedDataCursor;->__ID_name:I

    .line 32
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->counter:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ProfileViewedDataCursor;->__ID_counter:I

    .line 33
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->type:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/ProfileViewedDataCursor;->__ID_type:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)V
    .locals 6

    .line 36
    sget-object v4, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/Cursor;-><init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V

    .line 25
    new-instance p1, Lcom/callapp/contacts/model/objectbox/WhoViewedProfileEntryPointConverter;

    invoke-direct {p1}, Lcom/callapp/contacts/model/objectbox/WhoViewedProfileEntryPointConverter;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/ProfileViewedDataCursor;->entrypointConverter:Lcom/callapp/contacts/model/objectbox/WhoViewedProfileEntryPointConverter;

    .line 26
    new-instance p1, Lcom/callapp/contacts/model/objectbox/ViewType;

    invoke-direct {p1}, Lcom/callapp/contacts/model/objectbox/ViewType;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/ProfileViewedDataCursor;->typeConverter:Lcom/callapp/contacts/model/objectbox/ViewType;

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/objectbox/ProfileViewedData;)J
    .locals 2

    .line 41
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ProfileViewedDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/ProfileViewedData_$ProfileViewedDataIdGetter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_$ProfileViewedDataIdGetter;->getId(Lcom/callapp/contacts/model/objectbox/ProfileViewedData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 14
    check-cast p1, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/ProfileViewedDataCursor;->getId(Lcom/callapp/contacts/model/objectbox/ProfileViewedData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(Lcom/callapp/contacts/model/objectbox/ProfileViewedData;)J
    .locals 39

    move-object/from16 v0, p0

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 52
    sget v2, Lcom/callapp/contacts/model/objectbox/ProfileViewedDataCursor;->__ID_phoneNumber:I

    move v6, v2

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 53
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 54
    sget v2, Lcom/callapp/contacts/model/objectbox/ProfileViewedDataCursor;->__ID_name:I

    move v8, v2

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 55
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->getEntrypoint()Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 56
    sget v3, Lcom/callapp/contacts/model/objectbox/ProfileViewedDataCursor;->__ID_entrypoint:I

    move/from16 v17, v3

    goto :goto_2

    :cond_2
    const/16 v17, 0x0

    .line 57
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->getType()Lcom/callapp/contacts/model/objectbox/TYPE;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 58
    sget v4, Lcom/callapp/contacts/model/objectbox/ProfileViewedDataCursor;->__ID_type:I

    move/from16 v23, v4

    goto :goto_3

    :cond_3
    const/16 v23, 0x0

    .line 60
    :goto_3
    iget-wide v4, v0, Lcom/callapp/contacts/model/objectbox/ProfileViewedDataCursor;->cursor:J

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->getId()J

    move-result-wide v10

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    sget v18, Lcom/callapp/contacts/model/objectbox/ProfileViewedDataCursor;->__ID_lastViewed:I

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->getLastViewed()J

    move-result-wide v19

    if-eqz v17, :cond_4

    iget-object v1, v0, Lcom/callapp/contacts/model/objectbox/ProfileViewedDataCursor;->entrypointConverter:Lcom/callapp/contacts/model/objectbox/WhoViewedProfileEntryPointConverter;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/model/objectbox/WhoViewedProfileEntryPointConverter;->convertToDatabaseValue(Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    goto :goto_4

    :cond_4
    const-wide/16 v1, 0x0

    :goto_4
    move-wide/from16 v34, v1

    sget v22, Lcom/callapp/contacts/model/objectbox/ProfileViewedDataCursor;->__ID_counter:I

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->getCounter()I

    move-result v1

    int-to-long v1, v1

    if-eqz v23, :cond_5

    iget-object v15, v0, Lcom/callapp/contacts/model/objectbox/ProfileViewedDataCursor;->typeConverter:Lcom/callapp/contacts/model/objectbox/ViewType;

    invoke-virtual {v15, v3}, Lcom/callapp/contacts/model/objectbox/ViewType;->convertToDatabaseValue(Lcom/callapp/contacts/model/objectbox/TYPE;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v36, v3

    goto :goto_5

    :cond_5
    const/16 v36, 0x0

    :goto_5
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    move-wide/from16 v37, v1

    move-wide v1, v4

    move-wide v3, v10

    move v5, v12

    move v10, v13

    move-object v11, v14

    const/4 v12, 0x0

    move-object/from16 v13, v16

    move/from16 v14, v18

    move-wide/from16 v15, v19

    move-wide/from16 v18, v34

    move/from16 v20, v22

    move-wide/from16 v21, v37

    move/from16 v24, v36

    .line 60
    invoke-static/range {v1 .. v33}, Lcom/callapp/contacts/model/objectbox/ProfileViewedDataCursor;->collect313311(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I[BIJIJIJIIIIIIIFID)J

    move-result-wide v1

    move-object/from16 v3, p1

    .line 68
    invoke-virtual {v3, v1, v2}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->setId(J)V

    return-wide v1
.end method

.method public final bridge synthetic put(Ljava/lang/Object;)J
    .locals 2

    .line 14
    check-cast p1, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/ProfileViewedDataCursor;->put(Lcom/callapp/contacts/model/objectbox/ProfileViewedData;)J

    move-result-wide v0

    return-wide v0
.end method
