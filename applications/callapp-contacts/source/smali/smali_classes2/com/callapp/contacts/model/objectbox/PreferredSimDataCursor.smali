.class public final Lcom/callapp/contacts/model/objectbox/PreferredSimDataCursor;
.super Lio/objectbox/Cursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/PreferredSimDataCursor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/objectbox/Cursor<",
        "Lcom/callapp/contacts/model/objectbox/PreferredSimData;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GETTER:Lcom/callapp/contacts/model/objectbox/PreferredSimData_$PreferredSimDataIdGetter;

.field private static final __ID_phoneOrIdKey:I

.field private static final __ID_simId:I


# instance fields
.field private final simIdConverter:Lcom/callapp/contacts/model/objectbox/PreferredSimData$SimTypeConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    sget-object v0, Lcom/callapp/contacts/model/objectbox/PreferredSimData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/PreferredSimData_$PreferredSimDataIdGetter;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/PreferredSimDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/PreferredSimData_$PreferredSimDataIdGetter;

    .line 29
    sget-object v0, Lcom/callapp/contacts/model/objectbox/PreferredSimData_;->phoneOrIdKey:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/PreferredSimDataCursor;->__ID_phoneOrIdKey:I

    .line 30
    sget-object v0, Lcom/callapp/contacts/model/objectbox/PreferredSimData_;->simId:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/PreferredSimDataCursor;->__ID_simId:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)V
    .locals 6

    .line 33
    sget-object v4, Lcom/callapp/contacts/model/objectbox/PreferredSimData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/PreferredSimData_;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/Cursor;-><init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V

    .line 27
    new-instance p1, Lcom/callapp/contacts/model/objectbox/PreferredSimData$SimTypeConverter;

    invoke-direct {p1}, Lcom/callapp/contacts/model/objectbox/PreferredSimData$SimTypeConverter;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/PreferredSimDataCursor;->simIdConverter:Lcom/callapp/contacts/model/objectbox/PreferredSimData$SimTypeConverter;

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/objectbox/PreferredSimData;)J
    .locals 2

    .line 38
    sget-object v0, Lcom/callapp/contacts/model/objectbox/PreferredSimDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/PreferredSimData_$PreferredSimDataIdGetter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/objectbox/PreferredSimData_$PreferredSimDataIdGetter;->getId(Lcom/callapp/contacts/model/objectbox/PreferredSimData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 16
    check-cast p1, Lcom/callapp/contacts/model/objectbox/PreferredSimData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/PreferredSimDataCursor;->getId(Lcom/callapp/contacts/model/objectbox/PreferredSimData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(Lcom/callapp/contacts/model/objectbox/PreferredSimData;)J
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 48
    iget-object v2, v1, Lcom/callapp/contacts/model/objectbox/PreferredSimData;->id:Ljava/lang/Long;

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/PreferredSimData;->getPhoneOrIdKey()Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x0

    if-eqz v9, :cond_0

    .line 50
    sget v4, Lcom/callapp/contacts/model/objectbox/PreferredSimDataCursor;->__ID_phoneOrIdKey:I

    move v8, v4

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 51
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/PreferredSimData;->getSimId()Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 52
    sget v3, Lcom/callapp/contacts/model/objectbox/PreferredSimDataCursor;->__ID_simId:I

    move/from16 v16, v3

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    .line 54
    :goto_1
    iget-wide v5, v0, Lcom/callapp/contacts/model/objectbox/PreferredSimDataCursor;->cursor:J

    const-wide/16 v10, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v12, v2

    goto :goto_2

    :cond_2
    move-wide v12, v10

    :goto_2
    const/4 v7, 0x3

    const/4 v2, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v36, 0x0

    if-eqz v16, :cond_3

    iget-object v3, v0, Lcom/callapp/contacts/model/objectbox/PreferredSimDataCursor;->simIdConverter:Lcom/callapp/contacts/model/objectbox/PreferredSimData$SimTypeConverter;

    .line 57
    invoke-virtual {v3, v4}, Lcom/callapp/contacts/model/objectbox/PreferredSimData$SimTypeConverter;->convertToDatabaseValue(Lcom/callapp/contacts/manager/sim/SimManager$SimId;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    move-wide/from16 v37, v3

    goto :goto_3

    :cond_3
    move-wide/from16 v37, v10

    :goto_3
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

    move-wide v3, v5

    move-wide v5, v12

    move v10, v2

    move-object v11, v14

    move v12, v15

    move-object/from16 v13, v17

    move/from16 v14, v18

    move-object/from16 v15, v36

    move-wide/from16 v17, v37

    .line 54
    invoke-static/range {v3 .. v35}, Lcom/callapp/contacts/model/objectbox/PreferredSimDataCursor;->collect313311(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I[BIJIJIJIIIIIIIFID)J

    move-result-wide v2

    .line 62
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Lcom/callapp/contacts/model/objectbox/PreferredSimData;->id:Ljava/lang/Long;

    return-wide v2
.end method

.method public final bridge synthetic put(Ljava/lang/Object;)J
    .locals 2

    .line 16
    check-cast p1, Lcom/callapp/contacts/model/objectbox/PreferredSimData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/PreferredSimDataCursor;->put(Lcom/callapp/contacts/model/objectbox/PreferredSimData;)J

    move-result-wide v0

    return-wide v0
.end method
