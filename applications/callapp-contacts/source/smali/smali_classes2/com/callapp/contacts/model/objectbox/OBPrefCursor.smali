.class public final Lcom/callapp/contacts/model/objectbox/OBPrefCursor;
.super Lio/objectbox/Cursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/OBPrefCursor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/objectbox/Cursor<",
        "Lcom/callapp/contacts/model/objectbox/OBPref;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GETTER:Lcom/callapp/contacts/model/objectbox/OBPref_$OBPrefIdGetter;

.field private static final __ID_key:I

.field private static final __ID_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget-object v0, Lcom/callapp/contacts/model/objectbox/OBPref_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/OBPref_$OBPrefIdGetter;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/OBPrefCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/OBPref_$OBPrefIdGetter;

    .line 26
    sget-object v0, Lcom/callapp/contacts/model/objectbox/OBPref_;->key:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/OBPrefCursor;->__ID_key:I

    .line 27
    sget-object v0, Lcom/callapp/contacts/model/objectbox/OBPref_;->value:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/OBPrefCursor;->__ID_value:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)V
    .locals 6

    .line 30
    sget-object v4, Lcom/callapp/contacts/model/objectbox/OBPref_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/OBPref_;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/Cursor;-><init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/objectbox/OBPref;)J
    .locals 2

    .line 35
    sget-object v0, Lcom/callapp/contacts/model/objectbox/OBPrefCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/OBPref_$OBPrefIdGetter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/objectbox/OBPref_$OBPrefIdGetter;->getId(Lcom/callapp/contacts/model/objectbox/OBPref;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 14
    check-cast p1, Lcom/callapp/contacts/model/objectbox/OBPref;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/OBPrefCursor;->getId(Lcom/callapp/contacts/model/objectbox/OBPref;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(Lcom/callapp/contacts/model/objectbox/OBPref;)J
    .locals 37

    move-object/from16 v0, p1

    .line 45
    iget-object v1, v0, Lcom/callapp/contacts/model/objectbox/OBPref;->id:Ljava/lang/Long;

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/OBPref;->getKey()Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    if-eqz v8, :cond_0

    .line 47
    sget v3, Lcom/callapp/contacts/model/objectbox/OBPrefCursor;->__ID_key:I

    move v7, v3

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 48
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/OBPref;->getValue()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 49
    sget v2, Lcom/callapp/contacts/model/objectbox/OBPrefCursor;->__ID_value:I

    move-object/from16 v4, p0

    move v9, v2

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    move-object/from16 v4, p0

    .line 51
    :goto_1
    iget-wide v2, v4, Lcom/callapp/contacts/model/objectbox/OBPrefCursor;->cursor:J

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_2

    :cond_2
    const-wide/16 v5, 0x0

    :goto_2
    move-wide/from16 v35, v5

    const/4 v6, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

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

    move-wide/from16 v4, v35

    invoke-static/range {v2 .. v34}, Lcom/callapp/contacts/model/objectbox/OBPrefCursor;->collect313311(JJIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I[BIJIJIJIIIIIIIFID)J

    move-result-wide v1

    .line 59
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcom/callapp/contacts/model/objectbox/OBPref;->id:Ljava/lang/Long;

    return-wide v1
.end method

.method public final bridge synthetic put(Ljava/lang/Object;)J
    .locals 2

    .line 14
    check-cast p1, Lcom/callapp/contacts/model/objectbox/OBPref;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/OBPrefCursor;->put(Lcom/callapp/contacts/model/objectbox/OBPref;)J

    move-result-wide v0

    return-wide v0
.end method
