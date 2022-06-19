.class public final Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntityCursor;
.super Lio/objectbox/Cursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntityCursor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/objectbox/Cursor<",
        "Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GETTER:Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity_$JSONExternalSourceContactOBEntityIdGetter;

.field private static final __ID_externalSourceId:I

.field private static final __ID_jsonDoc:I

.field private static final __ID_key:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget-object v0, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity_$JSONExternalSourceContactOBEntityIdGetter;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntityCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity_$JSONExternalSourceContactOBEntityIdGetter;

    .line 26
    sget-object v0, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity_;->externalSourceId:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntityCursor;->__ID_externalSourceId:I

    .line 27
    sget-object v0, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity_;->key:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntityCursor;->__ID_key:I

    .line 28
    sget-object v0, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity_;->jsonDoc:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntityCursor;->__ID_jsonDoc:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)V
    .locals 6

    .line 31
    sget-object v4, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity_;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/Cursor;-><init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;)J
    .locals 2

    .line 36
    sget-object v0, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntityCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity_$JSONExternalSourceContactOBEntityIdGetter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity_$JSONExternalSourceContactOBEntityIdGetter;->getId(Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 14
    check-cast p1, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntityCursor;->getId(Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;)J
    .locals 33

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;->getKey()Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    if-eqz v6, :cond_0

    .line 47
    sget v1, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntityCursor;->__ID_key:I

    move v5, v1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 48
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;->getJsonDoc()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 49
    sget v0, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntityCursor;->__ID_jsonDoc:I

    move-object/from16 v14, p0

    move v7, v0

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    move-object/from16 v14, p0

    .line 51
    :goto_1
    iget-wide v0, v14, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntityCursor;->cursor:J

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;->getId()J

    move-result-wide v2

    const/4 v4, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget v13, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntityCursor;->__ID_externalSourceId:I

    .line 54
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;->getExternalSourceId()I

    move-result v15

    int-to-long v9, v15

    move-wide v14, v9

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 51
    invoke-static/range {v0 .. v32}, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntityCursor;->collect313311(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I[BIJIJIJIIIIIIIFID)J

    move-result-wide v0

    move-object/from16 v2, p1

    .line 59
    invoke-virtual {v2, v0, v1}, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;->setId(J)V

    return-wide v0
.end method

.method public final bridge synthetic put(Ljava/lang/Object;)J
    .locals 2

    .line 14
    check-cast p1, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntityCursor;->put(Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;)J

    move-result-wide v0

    return-wide v0
.end method
