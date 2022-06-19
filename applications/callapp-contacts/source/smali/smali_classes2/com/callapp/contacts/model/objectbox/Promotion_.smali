.class public final Lcom/callapp/contacts/model/objectbox/Promotion_;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/Promotion_$PromotionIdGetter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/c<",
        "Lcom/callapp/contacts/model/objectbox/Promotion;",
        ">;"
    }
.end annotation


# static fields
.field public static final __ALL_PROPERTIES:[Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/Promotion;",
            ">;"
        }
    .end annotation
.end field

.field public static final __CURSOR_FACTORY:Lio/objectbox/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/b/b<",
            "Lcom/callapp/contacts/model/objectbox/Promotion;",
            ">;"
        }
    .end annotation
.end field

.field public static final __DB_NAME:Ljava/lang/String; = "Promotion"

.field public static final __ENTITY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/objectbox/Promotion;",
            ">;"
        }
    .end annotation
.end field

.field public static final __ENTITY_ID:I = 0x22

.field public static final __ENTITY_NAME:Ljava/lang/String; = "Promotion"

.field static final __ID_GETTER:Lcom/callapp/contacts/model/objectbox/Promotion_$PromotionIdGetter;

.field public static final __ID_PROPERTY:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/Promotion;",
            ">;"
        }
    .end annotation
.end field

.field public static final __INSTANCE:Lcom/callapp/contacts/model/objectbox/Promotion_;

.field public static final currentNumberToGetGift:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/Promotion;",
            ">;"
        }
    .end annotation
.end field

.field public static final expiredDate:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/Promotion;",
            ">;"
        }
    .end annotation
.end field

.field public static final id:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/Promotion;",
            ">;"
        }
    .end annotation
.end field

.field public static final numberOfGift:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/Promotion;",
            ">;"
        }
    .end annotation
.end field

.field public static final numberOfUsedGift:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/Promotion;",
            ">;"
        }
    .end annotation
.end field

.field public static final numberToGetGift:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/Promotion;",
            ">;"
        }
    .end annotation
.end field

.field public static final typeOfGift:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/Promotion;",
            ">;"
        }
    .end annotation
.end field

.field public static final typeToBuyToGetGift:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/Promotion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 25
    const-class v0, Lcom/callapp/contacts/model/objectbox/Promotion;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/Promotion_;->__ENTITY_CLASS:Ljava/lang/Class;

    .line 29
    new-instance v0, Lcom/callapp/contacts/model/objectbox/PromotionCursor$Factory;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/PromotionCursor$Factory;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/Promotion_;->__CURSOR_FACTORY:Lio/objectbox/b/b;

    .line 32
    new-instance v0, Lcom/callapp/contacts/model/objectbox/Promotion_$PromotionIdGetter;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/Promotion_$PromotionIdGetter;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/Promotion_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/Promotion_$PromotionIdGetter;

    .line 34
    new-instance v0, Lcom/callapp/contacts/model/objectbox/Promotion_;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/Promotion_;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/Promotion_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/Promotion_;

    .line 36
    new-instance v11, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v6, "id"

    const/4 v7, 0x1

    const-string v8, "id"

    move-object v1, v11

    move-object v2, v0

    invoke-direct/range {v1 .. v8}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v11, Lcom/callapp/contacts/model/objectbox/Promotion_;->id:Lio/objectbox/g;

    .line 39
    new-instance v12, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v6, "numberToGetGift"

    move-object v1, v12

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v12, Lcom/callapp/contacts/model/objectbox/Promotion_;->numberToGetGift:Lio/objectbox/g;

    .line 42
    new-instance v13, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    const/4 v4, 0x3

    const-string v6, "currentNumberToGetGift"

    move-object v1, v13

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v13, Lcom/callapp/contacts/model/objectbox/Promotion_;->currentNumberToGetGift:Lio/objectbox/g;

    .line 45
    new-instance v14, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v9, Lcom/callapp/contacts/model/objectbox/Promotion$ProductTypeConverter;

    const-class v10, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    const/4 v3, 0x3

    const/4 v4, 0x4

    const-string v6, "typeToBuyToGetGift"

    const/4 v7, 0x0

    const-string v8, "typeToBuyToGetGift"

    move-object v1, v14

    invoke-direct/range {v1 .. v10}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v14, Lcom/callapp/contacts/model/objectbox/Promotion_;->typeToBuyToGetGift:Lio/objectbox/g;

    .line 48
    new-instance v15, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x4

    const/4 v4, 0x5

    const-string v6, "numberOfGift"

    move-object v1, v15

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v15, Lcom/callapp/contacts/model/objectbox/Promotion_;->numberOfGift:Lio/objectbox/g;

    .line 51
    new-instance v16, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x5

    const/4 v4, 0x6

    const-string v6, "numberOfUsedGift"

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v16, Lcom/callapp/contacts/model/objectbox/Promotion_;->numberOfUsedGift:Lio/objectbox/g;

    .line 54
    new-instance v17, Lio/objectbox/g;

    const-class v5, Ljava/util/Date;

    const/4 v3, 0x6

    const/4 v4, 0x7

    const-string v6, "expiredDate"

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v17, Lcom/callapp/contacts/model/objectbox/Promotion_;->expiredDate:Lio/objectbox/g;

    .line 57
    new-instance v18, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v9, Lcom/callapp/contacts/model/objectbox/Promotion$ProductTypeConverter;

    const-class v10, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    const/4 v3, 0x7

    const/16 v4, 0x8

    const-string v6, "typeOfGift"

    const-string v8, "typeOfGift"

    move-object/from16 v1, v18

    invoke-direct/range {v1 .. v10}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v18, Lcom/callapp/contacts/model/objectbox/Promotion_;->typeOfGift:Lio/objectbox/g;

    const/16 v0, 0x8

    new-array v0, v0, [Lio/objectbox/g;

    const/4 v1, 0x0

    aput-object v11, v0, v1

    const/4 v1, 0x1

    aput-object v12, v0, v1

    const/4 v1, 0x2

    aput-object v13, v0, v1

    const/4 v1, 0x3

    aput-object v14, v0, v1

    const/4 v1, 0x4

    aput-object v15, v0, v1

    const/4 v1, 0x5

    aput-object v16, v0, v1

    const/4 v1, 0x6

    aput-object v17, v0, v1

    const/4 v1, 0x7

    aput-object v18, v0, v1

    .line 61
    sput-object v0, Lcom/callapp/contacts/model/objectbox/Promotion_;->__ALL_PROPERTIES:[Lio/objectbox/g;

    .line 72
    sput-object v11, Lcom/callapp/contacts/model/objectbox/Promotion_;->__ID_PROPERTY:Lio/objectbox/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAllProperties()[Lio/objectbox/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/Promotion;",
            ">;"
        }
    .end annotation

    .line 96
    sget-object v0, Lcom/callapp/contacts/model/objectbox/Promotion_;->__ALL_PROPERTIES:[Lio/objectbox/g;

    return-object v0
.end method

.method public final getCursorFactory()Lio/objectbox/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/b/b<",
            "Lcom/callapp/contacts/model/objectbox/Promotion;",
            ">;"
        }
    .end annotation

    .line 111
    sget-object v0, Lcom/callapp/contacts/model/objectbox/Promotion_;->__CURSOR_FACTORY:Lio/objectbox/b/b;

    return-object v0
.end method

.method public final getDbName()Ljava/lang/String;
    .locals 1

    const-string v0, "Promotion"

    return-object v0
.end method

.method public final getEntityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/objectbox/Promotion;",
            ">;"
        }
    .end annotation

    .line 86
    sget-object v0, Lcom/callapp/contacts/model/objectbox/Promotion_;->__ENTITY_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public final getEntityId()I
    .locals 1

    const/16 v0, 0x22

    return v0
.end method

.method public final getEntityName()Ljava/lang/String;
    .locals 1

    const-string v0, "Promotion"

    return-object v0
.end method

.method public final getIdGetter()Lio/objectbox/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/b/c<",
            "Lcom/callapp/contacts/model/objectbox/Promotion;",
            ">;"
        }
    .end annotation

    .line 106
    sget-object v0, Lcom/callapp/contacts/model/objectbox/Promotion_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/Promotion_$PromotionIdGetter;

    return-object v0
.end method

.method public final getIdProperty()Lio/objectbox/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/Promotion;",
            ">;"
        }
    .end annotation

    .line 101
    sget-object v0, Lcom/callapp/contacts/model/objectbox/Promotion_;->__ID_PROPERTY:Lio/objectbox/g;

    return-object v0
.end method
