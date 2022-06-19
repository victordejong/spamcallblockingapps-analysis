.class public final Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_$PersonalStoreItemUserDataIdGetter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/c<",
        "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;",
        ">;"
    }
.end annotation


# static fields
.field public static final __ALL_PROPERTIES:[Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __CURSOR_FACTORY:Lio/objectbox/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/b/b<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __DB_NAME:Ljava/lang/String; = "PersonalStoreItemUserData"

.field public static final __ENTITY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __ENTITY_ID:I = 0x29

.field public static final __ENTITY_NAME:Ljava/lang/String; = "PersonalStoreItemUserData"

.field static final __ID_GETTER:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_$PersonalStoreItemUserDataIdGetter;

.field public static final __ID_PROPERTY:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __INSTANCE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;

.field public static final id:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;",
            ">;"
        }
    .end annotation
.end field

.field public static final personalStoreItemType:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;",
            ">;"
        }
    .end annotation
.end field

.field public static final personalStoreItemUrlDataToOne:Lio/objectbox/relation/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/relation/b<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;",
            ">;"
        }
    .end annotation
.end field

.field public static final personalStoreItemUrlDataToOneId:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;",
            ">;"
        }
    .end annotation
.end field

.field public static final phoneOrIdKey:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 28
    const-class v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;->__ENTITY_CLASS:Ljava/lang/Class;

    .line 32
    new-instance v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserDataCursor$Factory;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserDataCursor$Factory;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;->__CURSOR_FACTORY:Lio/objectbox/b/b;

    .line 35
    new-instance v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_$PersonalStoreItemUserDataIdGetter;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_$PersonalStoreItemUserDataIdGetter;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_$PersonalStoreItemUserDataIdGetter;

    .line 37
    new-instance v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;

    .line 39
    new-instance v11, Lio/objectbox/g;

    const-class v5, Ljava/lang/Long;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v6, "id"

    const/4 v7, 0x1

    const-string v8, "id"

    move-object v1, v11

    move-object v2, v0

    invoke-direct/range {v1 .. v8}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v11, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;->id:Lio/objectbox/g;

    .line 42
    new-instance v12, Lio/objectbox/g;

    const-class v5, Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x4

    const-string v6, "phoneOrIdKey"

    move-object v1, v12

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v12, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;->phoneOrIdKey:Lio/objectbox/g;

    .line 45
    new-instance v13, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v9, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$ProductTypeConverter;

    const-class v10, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    const/4 v3, 0x2

    const/4 v4, 0x5

    const-string v6, "personalStoreItemType"

    const/4 v7, 0x0

    const-string v8, "personalStoreItemType"

    move-object v1, v13

    invoke-direct/range {v1 .. v10}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v13, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;->personalStoreItemType:Lio/objectbox/g;

    .line 48
    new-instance v8, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x3

    const/4 v4, 0x3

    const-string v6, "personalStoreItemUrlDataToOneId"

    const/4 v7, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;Z)V

    sput-object v8, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;->personalStoreItemUrlDataToOneId:Lio/objectbox/g;

    const/4 v1, 0x4

    new-array v1, v1, [Lio/objectbox/g;

    const/4 v2, 0x0

    aput-object v11, v1, v2

    const/4 v2, 0x1

    aput-object v12, v1, v2

    const/4 v2, 0x2

    aput-object v13, v1, v2

    const/4 v2, 0x3

    aput-object v8, v1, v2

    .line 52
    sput-object v1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;->__ALL_PROPERTIES:[Lio/objectbox/g;

    .line 59
    sput-object v11, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;->__ID_PROPERTY:Lio/objectbox/g;

    .line 111
    new-instance v1, Lio/objectbox/relation/b;

    sget-object v2, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;

    new-instance v3, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_$1;

    invoke-direct {v3}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_$1;-><init>()V

    invoke-direct {v1, v0, v2, v8, v3}, Lio/objectbox/relation/b;-><init>(Lio/objectbox/c;Lio/objectbox/c;Lio/objectbox/g;Lio/objectbox/b/h;)V

    sput-object v1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;->personalStoreItemUrlDataToOne:Lio/objectbox/relation/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
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
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;",
            ">;"
        }
    .end annotation

    .line 83
    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;->__ALL_PROPERTIES:[Lio/objectbox/g;

    return-object v0
.end method

.method public final getCursorFactory()Lio/objectbox/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/b/b<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;",
            ">;"
        }
    .end annotation

    .line 98
    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;->__CURSOR_FACTORY:Lio/objectbox/b/b;

    return-object v0
.end method

.method public final getDbName()Ljava/lang/String;
    .locals 1

    const-string v0, "PersonalStoreItemUserData"

    return-object v0
.end method

.method public final getEntityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;",
            ">;"
        }
    .end annotation

    .line 73
    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;->__ENTITY_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public final getEntityId()I
    .locals 1

    const/16 v0, 0x29

    return v0
.end method

.method public final getEntityName()Ljava/lang/String;
    .locals 1

    const-string v0, "PersonalStoreItemUserData"

    return-object v0
.end method

.method public final getIdGetter()Lio/objectbox/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/b/c<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;",
            ">;"
        }
    .end annotation

    .line 93
    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_$PersonalStoreItemUserDataIdGetter;

    return-object v0
.end method

.method public final getIdProperty()Lio/objectbox/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;",
            ">;"
        }
    .end annotation

    .line 88
    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;->__ID_PROPERTY:Lio/objectbox/g;

    return-object v0
.end method
