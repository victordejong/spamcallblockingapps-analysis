.class public final Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserDataCursor;
.super Lio/objectbox/Cursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserDataCursor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/objectbox/Cursor<",
        "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GETTER:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_$PersonalStoreItemUserDataIdGetter;

.field private static final __ID_personalStoreItemType:I

.field private static final __ID_personalStoreItemUrlDataToOneId:I

.field private static final __ID_phoneOrIdKey:I


# instance fields
.field private final personalStoreItemTypeConverter:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$ProductTypeConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_$PersonalStoreItemUserDataIdGetter;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_$PersonalStoreItemUserDataIdGetter;

    .line 31
    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;->phoneOrIdKey:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserDataCursor;->__ID_phoneOrIdKey:I

    .line 32
    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;->personalStoreItemType:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserDataCursor;->__ID_personalStoreItemType:I

    .line 33
    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;->personalStoreItemUrlDataToOneId:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserDataCursor;->__ID_personalStoreItemUrlDataToOneId:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)V
    .locals 6

    .line 36
    sget-object v4, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/Cursor;-><init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V

    .line 29
    new-instance p1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$ProductTypeConverter;

    invoke-direct {p1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$ProductTypeConverter;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserDataCursor;->personalStoreItemTypeConverter:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$ProductTypeConverter;

    return-void
.end method

.method private attachEntity(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lio/objectbox/Cursor;->boxStoreForEntities:Lio/objectbox/BoxStore;

    iput-object v0, p1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;->__boxStore:Lio/objectbox/BoxStore;

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;)J
    .locals 2

    .line 41
    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_$PersonalStoreItemUserDataIdGetter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_$PersonalStoreItemUserDataIdGetter;->getId(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 18
    check-cast p1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserDataCursor;->getId(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;)J
    .locals 40

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 51
    iget-object v2, v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;->personalStoreItemUrlDataToOne:Lio/objectbox/relation/ToOne;

    if-eqz v2, :cond_0

    .line 52
    invoke-virtual {v2}, Lio/objectbox/relation/ToOne;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    const-class v3, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserDataCursor;->getRelationTargetCursor(Ljava/lang/Class;)Lio/objectbox/Cursor;

    move-result-object v3

    .line 55
    :try_start_0
    invoke-virtual {v2, v3}, Lio/objectbox/relation/ToOne;->a(Lio/objectbox/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-virtual {v3}, Lio/objectbox/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-virtual {v3}, Lio/objectbox/Cursor;->close()V

    .line 58
    throw v2

    .line 60
    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;->id:Ljava/lang/Long;

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;->getPhoneOrIdKey()Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x0

    if-eqz v9, :cond_1

    .line 62
    sget v4, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserDataCursor;->__ID_phoneOrIdKey:I

    move v8, v4

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 63
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;->getPersonalStoreItemType()Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 64
    sget v3, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserDataCursor;->__ID_personalStoreItemType:I

    move/from16 v19, v3

    goto :goto_2

    :cond_2
    const/16 v19, 0x0

    .line 66
    :goto_2
    iget-wide v5, v1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserDataCursor;->cursor:J

    const-wide/16 v10, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v12, v2

    goto :goto_3

    :cond_3
    move-wide v12, v10

    :goto_3
    const/4 v7, 0x3

    const/4 v2, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    sget v20, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserDataCursor;->__ID_personalStoreItemUrlDataToOneId:I

    iget-object v3, v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;->personalStoreItemUrlDataToOne:Lio/objectbox/relation/ToOne;

    .line 69
    invoke-virtual {v3}, Lio/objectbox/relation/ToOne;->b()J

    move-result-wide v36

    if-eqz v19, :cond_4

    iget-object v3, v1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserDataCursor;->personalStoreItemTypeConverter:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$ProductTypeConverter;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$ProductTypeConverter;->convertToDatabaseValue(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    move-wide/from16 v38, v3

    goto :goto_4

    :cond_4
    move-wide/from16 v38, v10

    :goto_4
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

    move-object/from16 v13, v16

    move/from16 v14, v17

    move-object/from16 v15, v18

    move/from16 v16, v20

    move-wide/from16 v17, v36

    move-wide/from16 v20, v38

    .line 66
    invoke-static/range {v3 .. v35}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserDataCursor;->collect313311(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I[BIJIJIJIIIIIIIFID)J

    move-result-wide v2

    .line 74
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;->id:Ljava/lang/Long;

    .line 76
    invoke-direct/range {p0 .. p1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserDataCursor;->attachEntity(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;)V

    return-wide v2
.end method

.method public final bridge synthetic put(Ljava/lang/Object;)J
    .locals 2

    .line 18
    check-cast p1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserDataCursor;->put(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;)J

    move-result-wide v0

    return-wide v0
.end method
