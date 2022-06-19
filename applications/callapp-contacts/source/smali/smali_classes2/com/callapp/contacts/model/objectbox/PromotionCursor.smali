.class public final Lcom/callapp/contacts/model/objectbox/PromotionCursor;
.super Lio/objectbox/Cursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/PromotionCursor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/objectbox/Cursor<",
        "Lcom/callapp/contacts/model/objectbox/Promotion;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_GETTER:Lcom/callapp/contacts/model/objectbox/Promotion_$PromotionIdGetter;

.field private static final __ID_currentNumberToGetGift:I

.field private static final __ID_expiredDate:I

.field private static final __ID_numberOfGift:I

.field private static final __ID_numberOfUsedGift:I

.field private static final __ID_numberToGetGift:I

.field private static final __ID_typeOfGift:I

.field private static final __ID_typeToBuyToGetGift:I


# instance fields
.field private final typeOfGiftConverter:Lcom/callapp/contacts/model/objectbox/Promotion$ProductTypeConverter;

.field private final typeToBuyToGetGiftConverter:Lcom/callapp/contacts/model/objectbox/Promotion$ProductTypeConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    sget-object v0, Lcom/callapp/contacts/model/objectbox/Promotion_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/Promotion_$PromotionIdGetter;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/PromotionCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/Promotion_$PromotionIdGetter;

    .line 30
    sget-object v0, Lcom/callapp/contacts/model/objectbox/Promotion_;->numberToGetGift:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/PromotionCursor;->__ID_numberToGetGift:I

    .line 31
    sget-object v0, Lcom/callapp/contacts/model/objectbox/Promotion_;->currentNumberToGetGift:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/PromotionCursor;->__ID_currentNumberToGetGift:I

    .line 32
    sget-object v0, Lcom/callapp/contacts/model/objectbox/Promotion_;->typeToBuyToGetGift:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/PromotionCursor;->__ID_typeToBuyToGetGift:I

    .line 33
    sget-object v0, Lcom/callapp/contacts/model/objectbox/Promotion_;->numberOfGift:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/PromotionCursor;->__ID_numberOfGift:I

    .line 34
    sget-object v0, Lcom/callapp/contacts/model/objectbox/Promotion_;->numberOfUsedGift:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/PromotionCursor;->__ID_numberOfUsedGift:I

    .line 35
    sget-object v0, Lcom/callapp/contacts/model/objectbox/Promotion_;->expiredDate:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/PromotionCursor;->__ID_expiredDate:I

    .line 36
    sget-object v0, Lcom/callapp/contacts/model/objectbox/Promotion_;->typeOfGift:Lio/objectbox/g;

    iget v0, v0, Lio/objectbox/g;->c:I

    sput v0, Lcom/callapp/contacts/model/objectbox/PromotionCursor;->__ID_typeOfGift:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/Transaction;JLio/objectbox/BoxStore;)V
    .locals 6

    .line 39
    sget-object v4, Lcom/callapp/contacts/model/objectbox/Promotion_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/Promotion_;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/Cursor;-><init>(Lio/objectbox/Transaction;JLio/objectbox/c;Lio/objectbox/BoxStore;)V

    .line 27
    new-instance p1, Lcom/callapp/contacts/model/objectbox/Promotion$ProductTypeConverter;

    invoke-direct {p1}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductTypeConverter;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/PromotionCursor;->typeToBuyToGetGiftConverter:Lcom/callapp/contacts/model/objectbox/Promotion$ProductTypeConverter;

    .line 28
    new-instance p1, Lcom/callapp/contacts/model/objectbox/Promotion$ProductTypeConverter;

    invoke-direct {p1}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductTypeConverter;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/PromotionCursor;->typeOfGiftConverter:Lcom/callapp/contacts/model/objectbox/Promotion$ProductTypeConverter;

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/objectbox/Promotion;)J
    .locals 2

    .line 44
    sget-object v0, Lcom/callapp/contacts/model/objectbox/PromotionCursor;->ID_GETTER:Lcom/callapp/contacts/model/objectbox/Promotion_$PromotionIdGetter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/objectbox/Promotion_$PromotionIdGetter;->getId(Lcom/callapp/contacts/model/objectbox/Promotion;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 16
    check-cast p1, Lcom/callapp/contacts/model/objectbox/Promotion;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/PromotionCursor;->getId(Lcom/callapp/contacts/model/objectbox/Promotion;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(Lcom/callapp/contacts/model/objectbox/Promotion;)J
    .locals 23

    move-object/from16 v0, p0

    .line 54
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/Promotion;->getExpiredDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    sget v3, Lcom/callapp/contacts/model/objectbox/PromotionCursor;->__ID_expiredDate:I

    move v9, v3

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 56
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/Promotion;->getTypeToBuyToGetGift()Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 57
    sget v4, Lcom/callapp/contacts/model/objectbox/PromotionCursor;->__ID_typeToBuyToGetGift:I

    move/from16 v18, v4

    goto :goto_1

    :cond_1
    const/16 v18, 0x0

    .line 59
    :goto_1
    iget-wide v4, v0, Lcom/callapp/contacts/model/objectbox/PromotionCursor;->cursor:J

    const-wide/16 v6, 0x0

    const-wide/16 v21, 0x0

    if-eqz v9, :cond_2

    .line 60
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    goto :goto_2

    :cond_2
    move-wide/from16 v10, v21

    :goto_2
    sget v12, Lcom/callapp/contacts/model/objectbox/PromotionCursor;->__ID_numberToGetGift:I

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/Promotion;->getNumberToGetGift()I

    move-result v1

    int-to-long v13, v1

    sget v15, Lcom/callapp/contacts/model/objectbox/PromotionCursor;->__ID_currentNumberToGetGift:I

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/Promotion;->getCurrentNumberToGetGift()I

    move-result v1

    move/from16 v16, v9

    int-to-long v8, v1

    if-eqz v18, :cond_3

    iget-object v1, v0, Lcom/callapp/contacts/model/objectbox/PromotionCursor;->typeToBuyToGetGiftConverter:Lcom/callapp/contacts/model/objectbox/Promotion$ProductTypeConverter;

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductTypeConverter;->convertToDatabaseValue(Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    move-wide/from16 v19, v2

    goto :goto_3

    :cond_3
    move-wide/from16 v19, v21

    :goto_3
    move-wide v2, v8

    const/4 v1, 0x1

    move v8, v1

    move/from16 v9, v16

    move-wide/from16 v16, v2

    .line 59
    invoke-static/range {v4 .. v20}, Lcom/callapp/contacts/model/objectbox/PromotionCursor;->collect004000(JJIIJIJIJIJ)J

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/Promotion;->getTypeOfGift()Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 64
    sget v2, Lcom/callapp/contacts/model/objectbox/PromotionCursor;->__ID_typeOfGift:I

    move v14, v2

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    .line 66
    :goto_4
    iget-wide v3, v0, Lcom/callapp/contacts/model/objectbox/PromotionCursor;->cursor:J

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/Promotion;->getId()J

    move-result-wide v5

    const/4 v7, 0x2

    sget v8, Lcom/callapp/contacts/model/objectbox/PromotionCursor;->__ID_numberOfGift:I

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/Promotion;->getNumberOfGift()I

    move-result v2

    int-to-long v9, v2

    sget v11, Lcom/callapp/contacts/model/objectbox/PromotionCursor;->__ID_numberOfUsedGift:I

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/objectbox/Promotion;->getNumberOfUsedGift()I

    move-result v2

    int-to-long v12, v2

    if-eqz v14, :cond_5

    iget-object v2, v0, Lcom/callapp/contacts/model/objectbox/PromotionCursor;->typeOfGiftConverter:Lcom/callapp/contacts/model/objectbox/Promotion$ProductTypeConverter;

    .line 68
    invoke-virtual {v2, v1}, Lcom/callapp/contacts/model/objectbox/Promotion$ProductTypeConverter;->convertToDatabaseValue(Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    move-wide v15, v1

    goto :goto_5

    :cond_5
    move-wide/from16 v15, v21

    :goto_5
    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    .line 66
    invoke-static/range {v3 .. v19}, Lcom/callapp/contacts/model/objectbox/PromotionCursor;->collect004000(JJIIJIJIJIJ)J

    move-result-wide v1

    move-object/from16 v3, p1

    .line 70
    invoke-virtual {v3, v1, v2}, Lcom/callapp/contacts/model/objectbox/Promotion;->setId(J)V

    return-wide v1
.end method

.method public final bridge synthetic put(Ljava/lang/Object;)J
    .locals 2

    .line 16
    check-cast p1, Lcom/callapp/contacts/model/objectbox/Promotion;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/PromotionCursor;->put(Lcom/callapp/contacts/model/objectbox/Promotion;)J

    move-result-wide v0

    return-wide v0
.end method
