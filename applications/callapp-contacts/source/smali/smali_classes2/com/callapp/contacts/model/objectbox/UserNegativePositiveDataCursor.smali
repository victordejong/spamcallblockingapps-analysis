.class public final Lcom/callapp/contacts/model/objectbox/UserNegativePositiveDataCursor;
.super Lio/objectbox/Cursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/UserNegativePositiveDataCursor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/objectbox/Cursor<",
        "Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GETTER:Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_$UserNegativePositiveDataIdGetter;

.field private static final __ID_phoneOrIdKey:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    sget-object v0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_$UserNegativePositiveDataIdGetter;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_$UserNegativePositiveDataIdGetter;

    .line 28
    sget-object v0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;->phoneOrIdKey:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveDataCursor;->__ID_phoneOrIdKey:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)V
    .locals 6

    .line 31
    sget-object v4, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/Cursor;-><init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V

    return-void
.end method

.method private attachEntity(Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lio/objectbox/Cursor;->boxStoreForEntities:Lio/objectbox/BoxStore;

    iput-object v0, p1, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->__boxStore:Lio/objectbox/BoxStore;

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;)J
    .locals 2

    .line 36
    sget-object v0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveDataCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_$UserNegativePositiveDataIdGetter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_$UserNegativePositiveDataIdGetter;->getId(Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 16
    check-cast p1, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveDataCursor;->getId(Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;)J
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 46
    iget-object v2, v1, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->id:Ljava/lang/Long;

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->getPhoneOrIdKey()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 48
    sget v3, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveDataCursor;->__ID_phoneOrIdKey:I

    move v8, v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 50
    :goto_0
    iget-wide v3, v0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveDataCursor;->cursor:J

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

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

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

    invoke-static/range {v3 .. v35}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveDataCursor;->collect313311(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I[BIJIJIJIIIIIIIFID)J

    move-result-wide v2

    .line 58
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->id:Ljava/lang/Long;

    .line 60
    invoke-direct/range {p0 .. p1}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveDataCursor;->attachEntity(Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;)V

    .line 61
    iget-object v4, v1, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->userNegativeSocialData:Lio/objectbox/relation/ToMany;

    const-class v5, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;

    invoke-virtual {v0, v4, v5}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveDataCursor;->checkApplyToManyToDb(Ljava/util/List;Ljava/lang/Class;)V

    .line 62
    iget-object v1, v1, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;->userPositiveSocialData:Lio/objectbox/relation/ToMany;

    const-class v4, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;

    invoke-virtual {v0, v1, v4}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveDataCursor;->checkApplyToManyToDb(Ljava/util/List;Ljava/lang/Class;)V

    return-wide v2
.end method

.method public final bridge synthetic put(Ljava/lang/Object;)J
    .locals 2

    .line 16
    check-cast p1, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveDataCursor;->put(Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;)J

    move-result-wide v0

    return-wide v0
.end method
