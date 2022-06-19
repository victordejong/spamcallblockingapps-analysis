.class public final Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor;
.super Lio/objectbox/Cursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/objectbox/Cursor<",
        "Lcom/callapp/contacts/model/objectbox/FastCacheData;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GETTER:Lcom/callapp/contacts/model/objectbox/FastCacheData_$FastCacheDataIdGetter;

.field private static final __ID_expirationDate:I

.field private static final __ID_fullName:I

.field private static final __ID_isSpam:I

.field private static final __ID_nameDataSource:I

.field private static final __ID_phoneOrIdKey:I

.field private static final __ID_photoBackGroundColor:I

.field private static final __ID_photoDataSource:I

.field private static final __ID_photoUrl:I

.field private static final __ID_photoUrls:I


# instance fields
.field private final nameDataSourceConverter:Lcom/callapp/contacts/model/objectbox/DataSourceConverter;

.field private final photoDataSourceConverter:Lcom/callapp/contacts/model/objectbox/DataSourceConverter;

.field private final photoUrlsConverter:Lcom/callapp/contacts/model/objectbox/PhotoUrlsConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    sget-object v0, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/FastCacheData_$FastCacheDataIdGetter;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/FastCacheData_$FastCacheDataIdGetter;

    .line 31
    sget-object v0, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->phoneOrIdKey:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor;->__ID_phoneOrIdKey:I

    .line 32
    sget-object v0, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->expirationDate:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor;->__ID_expirationDate:I

    .line 33
    sget-object v0, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->fullName:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor;->__ID_fullName:I

    .line 34
    sget-object v0, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->photoUrls:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor;->__ID_photoUrls:I

    .line 35
    sget-object v0, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->photoBackGroundColor:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor;->__ID_photoBackGroundColor:I

    .line 36
    sget-object v0, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->photoUrl:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor;->__ID_photoUrl:I

    .line 37
    sget-object v0, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->isSpam:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor;->__ID_isSpam:I

    .line 38
    sget-object v0, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->photoDataSource:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor;->__ID_photoDataSource:I

    .line 39
    sget-object v0, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->nameDataSource:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor;->__ID_nameDataSource:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)V
    .locals 6

    .line 42
    sget-object v4, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/FastCacheData_;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/Cursor;-><init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V

    .line 27
    new-instance p1, Lcom/callapp/contacts/model/objectbox/PhotoUrlsConverter;

    invoke-direct {p1}, Lcom/callapp/contacts/model/objectbox/PhotoUrlsConverter;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor;->photoUrlsConverter:Lcom/callapp/contacts/model/objectbox/PhotoUrlsConverter;

    .line 28
    new-instance p1, Lcom/callapp/contacts/model/objectbox/DataSourceConverter;

    invoke-direct {p1}, Lcom/callapp/contacts/model/objectbox/DataSourceConverter;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor;->photoDataSourceConverter:Lcom/callapp/contacts/model/objectbox/DataSourceConverter;

    .line 29
    new-instance p1, Lcom/callapp/contacts/model/objectbox/DataSourceConverter;

    invoke-direct {p1}, Lcom/callapp/contacts/model/objectbox/DataSourceConverter;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor;->nameDataSourceConverter:Lcom/callapp/contacts/model/objectbox/DataSourceConverter;

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/objectbox/FastCacheData;)J
    .locals 2

    .line 47
    sget-object v0, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/FastCacheData_$FastCacheDataIdGetter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/objectbox/FastCacheData_$FastCacheDataIdGetter;->getId(Lcom/callapp/contacts/model/objectbox/FastCacheData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 16
    check-cast p1, Lcom/callapp/contacts/model/objectbox/FastCacheData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor;->getId(Lcom/callapp/contacts/model/objectbox/FastCacheData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(Lcom/callapp/contacts/model/objectbox/FastCacheData;)J
    .locals 50

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getPhoneOrIdKey()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 58
    sget v2, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor;->__ID_phoneOrIdKey:I

    move v7, v2

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 59
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getFullName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 60
    sget v2, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor;->__ID_fullName:I

    move v9, v2

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 61
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getPhotoUrls()Lcom/callapp/contacts/model/contact/PhotoUrls;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 62
    sget v3, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor;->__ID_photoUrls:I

    move v11, v3

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    .line 63
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 64
    sget v3, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor;->__ID_photoUrl:I

    move v13, v3

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    .line 66
    :goto_3
    iget-wide v3, v0, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor;->cursor:J

    const-wide/16 v5, 0x0

    const/4 v12, 0x1

    const/16 v16, 0x0

    if-eqz v11, :cond_4

    iget-object v15, v0, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor;->photoUrlsConverter:Lcom/callapp/contacts/model/objectbox/PhotoUrlsConverter;

    .line 68
    invoke-virtual {v15, v2}, Lcom/callapp/contacts/model/objectbox/PhotoUrlsConverter;->convertToDatabaseValue(Lcom/callapp/contacts/model/contact/PhotoUrls;)Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_4

    :cond_4
    move-object/from16 v15, v16

    :goto_4
    move-wide v2, v3

    move-wide v4, v5

    move v6, v12

    move-object v12, v15

    .line 66
    invoke-static/range {v2 .. v14}, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor;->collect400000(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)J

    .line 70
    iget-object v2, v1, Lcom/callapp/contacts/model/objectbox/FastCacheData;->id:Ljava/lang/Long;

    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getPhotoDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 72
    sget v4, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor;->__ID_photoDataSource:I

    move/from16 v22, v4

    goto :goto_5

    :cond_5
    const/16 v22, 0x0

    .line 73
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getNameDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 74
    sget v5, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor;->__ID_nameDataSource:I

    move/from16 v24, v5

    goto :goto_6

    :cond_6
    const/16 v24, 0x0

    .line 75
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getExpirationDate()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 76
    sget v6, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor;->__ID_expirationDate:I

    move/from16 v30, v6

    goto :goto_7

    :cond_7
    const/16 v30, 0x0

    .line 77
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getPhotoBackGroundColor()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 78
    sget v15, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor;->__ID_photoBackGroundColor:I

    move/from16 v33, v15

    goto :goto_8

    :cond_8
    const/16 v33, 0x0

    .line 80
    :goto_8
    iget-wide v7, v0, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor;->cursor:J

    const-wide/16 v9, 0x0

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-wide/from16 v19, v11

    goto :goto_9

    :cond_9
    move-wide/from16 v19, v9

    :goto_9
    const/16 v21, 0x2

    if-eqz v22, :cond_a

    iget-object v2, v0, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor;->photoDataSourceConverter:Lcom/callapp/contacts/model/objectbox/DataSourceConverter;

    .line 81
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/model/objectbox/DataSourceConverter;->convertToDatabaseValue(Lcom/callapp/contacts/model/contact/DataSource;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v23, v2

    goto :goto_a

    :cond_a
    move-object/from16 v23, v16

    :goto_a
    if-eqz v24, :cond_b

    iget-object v2, v0, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor;->nameDataSourceConverter:Lcom/callapp/contacts/model/objectbox/DataSourceConverter;

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/model/objectbox/DataSourceConverter;->convertToDatabaseValue(Lcom/callapp/contacts/model/contact/DataSource;)Ljava/lang/String;

    move-result-object v16

    :cond_b
    move-object/from16 v25, v16

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    if-eqz v30, :cond_c

    .line 83
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    move-wide/from16 v31, v2

    goto :goto_b

    :cond_c
    move-wide/from16 v31, v9

    :goto_b
    if-eqz v33, :cond_d

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    move-wide/from16 v34, v2

    goto :goto_c

    :cond_d
    move-wide/from16 v34, v9

    :goto_c
    sget v36, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor;->__ID_isSpam:I

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->isSpam()Z

    move-result v2

    if-eqz v2, :cond_e

    const-wide/16 v2, 0x1

    move-wide/from16 v37, v2

    goto :goto_d

    :cond_e
    move-wide/from16 v37, v9

    :goto_d
    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const-wide/16 v48, 0x0

    move-wide/from16 v17, v7

    .line 80
    invoke-static/range {v17 .. v49}, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor;->collect313311(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I[BIJIJIJIIIIIIIFID)J

    move-result-wide v2

    .line 88
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Lcom/callapp/contacts/model/objectbox/FastCacheData;->id:Ljava/lang/Long;

    return-wide v2
.end method

.method public final bridge synthetic put(Ljava/lang/Object;)J
    .locals 2

    .line 16
    check-cast p1, Lcom/callapp/contacts/model/objectbox/FastCacheData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor;->put(Lcom/callapp/contacts/model/objectbox/FastCacheData;)J

    move-result-wide v0

    return-wide v0
.end method
