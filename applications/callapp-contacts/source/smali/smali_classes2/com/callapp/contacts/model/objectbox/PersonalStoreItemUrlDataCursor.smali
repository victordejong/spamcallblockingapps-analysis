.class public final Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlDataCursor;
.super Lio/objectbox/Cursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlDataCursor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/objectbox/Cursor<",
        "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GETTER:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_$PersonalStoreItemUrlDataIdGetter;

.field private static final __ID_isUploaded:I

.field private static final __ID_personalStoreItemType:I

.field private static final __ID_personalStoreItemUrl:I

.field private static final __ID_type:I


# instance fields
.field private final personalStoreItemTypeConverter:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$ProductTypeConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_$PersonalStoreItemUrlDataIdGetter;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_$PersonalStoreItemUrlDataIdGetter;

    .line 31
    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;->personalStoreItemUrl:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlDataCursor;->__ID_personalStoreItemUrl:I

    .line 32
    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;->personalStoreItemType:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlDataCursor;->__ID_personalStoreItemType:I

    .line 33
    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;->type:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlDataCursor;->__ID_type:I

    .line 34
    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;->isUploaded:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlDataCursor;->__ID_isUploaded:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)V
    .locals 6

    .line 37
    sget-object v4, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/Cursor;-><init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V

    .line 29
    new-instance p1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$ProductTypeConverter;

    invoke-direct {p1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$ProductTypeConverter;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlDataCursor;->personalStoreItemTypeConverter:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$ProductTypeConverter;

    return-void
.end method

.method private attachEntity(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lio/objectbox/Cursor;->boxStoreForEntities:Lio/objectbox/BoxStore;

    iput-object v0, p1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->__boxStore:Lio/objectbox/BoxStore;

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;)J
    .locals 2

    .line 42
    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_$PersonalStoreItemUrlDataIdGetter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_$PersonalStoreItemUrlDataIdGetter;->getId(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 18
    check-cast p1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlDataCursor;->getId(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;)J
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->getPersonalStoreItemUrl()Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    if-eqz v8, :cond_0

    .line 53
    sget v3, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlDataCursor;->__ID_personalStoreItemUrl:I

    move v7, v3

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 54
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->getPersonalStoreItemType()Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 55
    sget v2, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlDataCursor;->__ID_personalStoreItemType:I

    move v15, v2

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    .line 57
    :goto_1
    iget-wide v4, v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlDataCursor;->cursor:J

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->getId()J

    move-result-wide v9

    const/4 v6, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    if-eqz v15, :cond_2

    iget-object v2, v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlDataCursor;->personalStoreItemTypeConverter:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$ProductTypeConverter;

    .line 60
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$ProductTypeConverter;->convertToDatabaseValue(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    move-wide/from16 v20, v2

    goto :goto_2

    :cond_2
    move-wide/from16 v20, v18

    :goto_2
    sget v22, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlDataCursor;->__ID_type:I

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->getType()I

    move-result v2

    int-to-long v2, v2

    sget v23, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlDataCursor;->__ID_isUploaded:I

    iget-boolean v14, v1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->isUploaded:Z

    if-eqz v14, :cond_3

    const-wide/16 v18, 0x1

    :cond_3
    move-wide/from16 v35, v18

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-wide/16 v33, 0x0

    move-wide/from16 v37, v2

    move-wide v2, v4

    move-wide v4, v9

    move v9, v11

    move-object v10, v12

    move v11, v13

    const/4 v12, 0x0

    move/from16 v13, v16

    move-object/from16 v14, v17

    move-wide/from16 v16, v20

    move/from16 v18, v22

    move-wide/from16 v19, v37

    move/from16 v21, v23

    move-wide/from16 v22, v35

    .line 57
    invoke-static/range {v2 .. v34}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlDataCursor;->collect313311(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I[BIJIJIJIIIIIIIFID)J

    move-result-wide v2

    .line 65
    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->setId(J)V

    .line 67
    invoke-direct/range {p0 .. p1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlDataCursor;->attachEntity(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;)V

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->getPersonalStoreItemUserData()Lio/objectbox/relation/ToMany;

    move-result-object v1

    const-class v4, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;

    invoke-virtual {v0, v1, v4}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlDataCursor;->checkApplyToManyToDb(Ljava/util/List;Ljava/lang/Class;)V

    return-wide v2
.end method

.method public final bridge synthetic put(Ljava/lang/Object;)J
    .locals 2

    .line 18
    check-cast p1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlDataCursor;->put(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;)J

    move-result-wide v0

    return-wide v0
.end method
