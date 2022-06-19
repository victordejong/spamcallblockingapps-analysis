.class public final Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_$PersonalStoreItemUrlDataIdGetter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/c<",
        "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;",
        ">;"
    }
.end annotation


# static fields
.field public static final __ALL_PROPERTIES:[Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __CURSOR_FACTORY:Lio/objectbox/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/b/b<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __DB_NAME:Ljava/lang/String; = "PersonalStoreItemUrlData"

.field public static final __ENTITY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __ENTITY_ID:I = 0x26

.field public static final __ENTITY_NAME:Ljava/lang/String; = "PersonalStoreItemUrlData"

.field static final __ID_GETTER:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_$PersonalStoreItemUrlDataIdGetter;

.field public static final __ID_PROPERTY:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __INSTANCE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;

.field public static final id:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;",
            ">;"
        }
    .end annotation
.end field

.field public static final isUploaded:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;",
            ">;"
        }
    .end annotation
.end field

.field public static final personalStoreItemType:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;",
            ">;"
        }
    .end annotation
.end field

.field public static final personalStoreItemUrl:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;",
            ">;"
        }
    .end annotation
.end field

.field public static final personalStoreItemUserData:Lio/objectbox/relation/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/relation/b<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 30
    const-class v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;->__ENTITY_CLASS:Ljava/lang/Class;

    .line 34
    new-instance v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlDataCursor$Factory;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlDataCursor$Factory;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;->__CURSOR_FACTORY:Lio/objectbox/b/b;

    .line 37
    new-instance v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_$PersonalStoreItemUrlDataIdGetter;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_$PersonalStoreItemUrlDataIdGetter;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_$PersonalStoreItemUrlDataIdGetter;

    .line 39
    new-instance v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;

    .line 41
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

    sput-object v11, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;->id:Lio/objectbox/g;

    .line 44
    new-instance v12, Lio/objectbox/g;

    const-class v5, Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v6, "personalStoreItemUrl"

    move-object v1, v12

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v12, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;->personalStoreItemUrl:Lio/objectbox/g;

    .line 47
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

    sput-object v13, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;->personalStoreItemType:Lio/objectbox/g;

    .line 50
    new-instance v7, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x3

    const/4 v4, 0x3

    const-string v6, "type"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v7, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;->type:Lio/objectbox/g;

    .line 53
    new-instance v8, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x4

    const/4 v4, 0x4

    const-string v6, "isUploaded"

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v8, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;->isUploaded:Lio/objectbox/g;

    const/4 v1, 0x5

    new-array v1, v1, [Lio/objectbox/g;

    const/4 v2, 0x0

    aput-object v11, v1, v2

    const/4 v2, 0x1

    aput-object v12, v1, v2

    const/4 v2, 0x2

    aput-object v13, v1, v2

    const/4 v2, 0x3

    aput-object v7, v1, v2

    const/4 v2, 0x4

    aput-object v8, v1, v2

    .line 57
    sput-object v1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;->__ALL_PROPERTIES:[Lio/objectbox/g;

    .line 65
    sput-object v11, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;->__ID_PROPERTY:Lio/objectbox/g;

    .line 116
    new-instance v7, Lio/objectbox/relation/b;

    sget-object v3, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;

    new-instance v4, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_$1;

    invoke-direct {v4}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_$1;-><init>()V

    sget-object v5, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData_;->personalStoreItemUrlDataToOneId:Lio/objectbox/g;

    new-instance v6, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_$2;

    invoke-direct {v6}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_$2;-><init>()V

    move-object v1, v7

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lio/objectbox/relation/b;-><init>(Lio/objectbox/c;Lio/objectbox/c;Lio/objectbox/b/g;Lio/objectbox/g;Lio/objectbox/b/h;)V

    sput-object v7, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;->personalStoreItemUserData:Lio/objectbox/relation/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
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
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;",
            ">;"
        }
    .end annotation

    .line 89
    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;->__ALL_PROPERTIES:[Lio/objectbox/g;

    return-object v0
.end method

.method public final getCursorFactory()Lio/objectbox/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/b/b<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;",
            ">;"
        }
    .end annotation

    .line 104
    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;->__CURSOR_FACTORY:Lio/objectbox/b/b;

    return-object v0
.end method

.method public final getDbName()Ljava/lang/String;
    .locals 1

    const-string v0, "PersonalStoreItemUrlData"

    return-object v0
.end method

.method public final getEntityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;",
            ">;"
        }
    .end annotation

    .line 79
    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;->__ENTITY_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public final getEntityId()I
    .locals 1

    const/16 v0, 0x26

    return v0
.end method

.method public final getEntityName()Ljava/lang/String;
    .locals 1

    const-string v0, "PersonalStoreItemUrlData"

    return-object v0
.end method

.method public final getIdGetter()Lio/objectbox/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/b/c<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;",
            ">;"
        }
    .end annotation

    .line 99
    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_$PersonalStoreItemUrlDataIdGetter;

    return-object v0
.end method

.method public final getIdProperty()Lio/objectbox/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;",
            ">;"
        }
    .end annotation

    .line 94
    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;->__ID_PROPERTY:Lio/objectbox/g;

    return-object v0
.end method
