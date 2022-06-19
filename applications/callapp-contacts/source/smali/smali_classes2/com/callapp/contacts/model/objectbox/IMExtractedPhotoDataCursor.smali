.class public final Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoDataCursor;
.super Lio/objectbox/Cursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoDataCursor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/objectbox/Cursor<",
        "Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GETTER:Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_$IMExtractedPhotoDataIdGetter;

.field private static final __ID_dataSource:I

.field private static final __ID_date:I

.field private static final __ID_phoneOrIdKey:I

.field private static final __ID_url:I


# instance fields
.field private final dataSourceConverter:Lcom/callapp/contacts/model/objectbox/DataSourceConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    sget-object v0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_$IMExtractedPhotoDataIdGetter;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_$IMExtractedPhotoDataIdGetter;

    .line 28
    sget-object v0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_;->phoneOrIdKey:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoDataCursor;->__ID_phoneOrIdKey:I

    .line 29
    sget-object v0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_;->dataSource:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoDataCursor;->__ID_dataSource:I

    .line 30
    sget-object v0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_;->date:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoDataCursor;->__ID_date:I

    .line 31
    sget-object v0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_;->url:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoDataCursor;->__ID_url:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)V
    .locals 6

    .line 34
    sget-object v4, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/Cursor;-><init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V

    .line 26
    new-instance p1, Lcom/callapp/contacts/model/objectbox/DataSourceConverter;

    invoke-direct {p1}, Lcom/callapp/contacts/model/objectbox/DataSourceConverter;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoDataCursor;->dataSourceConverter:Lcom/callapp/contacts/model/objectbox/DataSourceConverter;

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;)J
    .locals 2

    .line 39
    sget-object v0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_$IMExtractedPhotoDataIdGetter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_$IMExtractedPhotoDataIdGetter;->getId(Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 15
    check-cast p1, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoDataCursor;->getId(Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;)J
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 49
    iget-object v2, v1, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->id:Ljava/lang/Long;

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->getPhoneOrIdKey()Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x0

    if-eqz v9, :cond_0

    .line 51
    sget v4, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoDataCursor;->__ID_phoneOrIdKey:I

    move v8, v4

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 52
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 53
    sget v5, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoDataCursor;->__ID_dataSource:I

    move v10, v5

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    .line 54
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->getUrl()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 55
    sget v3, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoDataCursor;->__ID_url:I

    move v12, v3

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    .line 57
    :goto_2
    iget-wide v5, v0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoDataCursor;->cursor:J

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_3

    :cond_3
    const-wide/16 v2, 0x0

    :goto_3
    move-wide/from16 v36, v2

    const/4 v7, 0x3

    if-eqz v10, :cond_4

    iget-object v2, v0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoDataCursor;->dataSourceConverter:Lcom/callapp/contacts/model/objectbox/DataSourceConverter;

    .line 58
    invoke-virtual {v2, v4}, Lcom/callapp/contacts/model/objectbox/DataSourceConverter;->convertToDatabaseValue(Lcom/callapp/contacts/model/contact/DataSource;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    move-object v11, v2

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget v16, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoDataCursor;->__ID_date:I

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->getDate()J

    move-result-wide v17

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

    move-wide/from16 v5, v36

    .line 57
    invoke-static/range {v3 .. v35}, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoDataCursor;->collect313311(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I[BIJIJIJIIIIIIIFID)J

    move-result-wide v2

    .line 65
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->id:Ljava/lang/Long;

    return-wide v2
.end method

.method public final bridge synthetic put(Ljava/lang/Object;)J
    .locals 2

    .line 15
    check-cast p1, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoDataCursor;->put(Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;)J

    move-result-wide v0

    return-wide v0
.end method
