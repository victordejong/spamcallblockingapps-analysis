.class public final Lcom/callapp/contacts/model/objectbox/FastCacheData_;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/FastCacheData_$FastCacheDataIdGetter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/c<",
        "Lcom/callapp/contacts/model/objectbox/FastCacheData;",
        ">;"
    }
.end annotation


# static fields
.field public static final __ALL_PROPERTIES:[Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/FastCacheData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __CURSOR_FACTORY:Lio/objectbox/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/b/b<",
            "Lcom/callapp/contacts/model/objectbox/FastCacheData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __DB_NAME:Ljava/lang/String; = "FastCacheData"

.field public static final __ENTITY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/objectbox/FastCacheData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __ENTITY_ID:I = 0x5

.field public static final __ENTITY_NAME:Ljava/lang/String; = "FastCacheData"

.field static final __ID_GETTER:Lcom/callapp/contacts/model/objectbox/FastCacheData_$FastCacheDataIdGetter;

.field public static final __ID_PROPERTY:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/FastCacheData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __INSTANCE:Lcom/callapp/contacts/model/objectbox/FastCacheData_;

.field public static final expirationDate:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/FastCacheData;",
            ">;"
        }
    .end annotation
.end field

.field public static final fullName:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/FastCacheData;",
            ">;"
        }
    .end annotation
.end field

.field public static final id:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/FastCacheData;",
            ">;"
        }
    .end annotation
.end field

.field public static final isSpam:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/FastCacheData;",
            ">;"
        }
    .end annotation
.end field

.field public static final nameDataSource:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/FastCacheData;",
            ">;"
        }
    .end annotation
.end field

.field public static final phoneOrIdKey:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/FastCacheData;",
            ">;"
        }
    .end annotation
.end field

.field public static final photoBackGroundColor:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/FastCacheData;",
            ">;"
        }
    .end annotation
.end field

.field public static final photoDataSource:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/FastCacheData;",
            ">;"
        }
    .end annotation
.end field

.field public static final photoUrl:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/FastCacheData;",
            ">;"
        }
    .end annotation
.end field

.field public static final photoUrls:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/FastCacheData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 25
    const-class v0, Lcom/callapp/contacts/model/objectbox/FastCacheData;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->__ENTITY_CLASS:Ljava/lang/Class;

    .line 29
    new-instance v0, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor$Factory;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/FastCacheDataCursor$Factory;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->__CURSOR_FACTORY:Lio/objectbox/b/b;

    .line 32
    new-instance v0, Lcom/callapp/contacts/model/objectbox/FastCacheData_$FastCacheDataIdGetter;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/FastCacheData_$FastCacheDataIdGetter;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/FastCacheData_$FastCacheDataIdGetter;

    .line 34
    new-instance v0, Lcom/callapp/contacts/model/objectbox/FastCacheData_;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/FastCacheData_;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/FastCacheData_;

    .line 36
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

    sput-object v11, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->id:Lio/objectbox/g;

    .line 39
    new-instance v12, Lio/objectbox/g;

    const-class v5, Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v6, "phoneOrIdKey"

    move-object v1, v12

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v12, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->phoneOrIdKey:Lio/objectbox/g;

    .line 42
    new-instance v13, Lio/objectbox/g;

    const-class v5, Ljava/util/Date;

    const/4 v3, 0x2

    const/4 v4, 0x3

    const-string v6, "expirationDate"

    move-object v1, v13

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v13, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->expirationDate:Lio/objectbox/g;

    .line 45
    new-instance v14, Lio/objectbox/g;

    const-class v5, Ljava/lang/String;

    const/4 v3, 0x3

    const/4 v4, 0x4

    const-string v6, "fullName"

    move-object v1, v14

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v14, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->fullName:Lio/objectbox/g;

    .line 48
    new-instance v15, Lio/objectbox/g;

    const-class v5, Ljava/lang/String;

    const-class v9, Lcom/callapp/contacts/model/objectbox/PhotoUrlsConverter;

    const-class v10, Lcom/callapp/contacts/model/contact/PhotoUrls;

    const/4 v3, 0x4

    const/16 v4, 0xa

    const-string v6, "photoUrls"

    const/4 v7, 0x0

    const-string v8, "photoUrls"

    move-object v1, v15

    invoke-direct/range {v1 .. v10}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v15, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->photoUrls:Lio/objectbox/g;

    .line 51
    new-instance v16, Lio/objectbox/g;

    const-class v5, Ljava/lang/Integer;

    const/4 v3, 0x5

    const/16 v4, 0xc

    const-string v6, "photoBackGroundColor"

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v16, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->photoBackGroundColor:Lio/objectbox/g;

    .line 54
    new-instance v17, Lio/objectbox/g;

    const-class v5, Ljava/lang/String;

    const/4 v3, 0x6

    const/4 v4, 0x5

    const-string v6, "photoUrl"

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v17, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->photoUrl:Lio/objectbox/g;

    .line 57
    new-instance v18, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x7

    const/4 v4, 0x6

    const-string v6, "isSpam"

    move-object/from16 v1, v18

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v18, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->isSpam:Lio/objectbox/g;

    .line 60
    new-instance v19, Lio/objectbox/g;

    const-class v5, Ljava/lang/String;

    const-class v9, Lcom/callapp/contacts/model/objectbox/DataSourceConverter;

    const-class v10, Lcom/callapp/contacts/model/contact/DataSource;

    const/16 v3, 0x8

    const/4 v4, 0x7

    const-string v6, "photoDataSource"

    const-string v8, "photoDataSource"

    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v10}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v19, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->photoDataSource:Lio/objectbox/g;

    .line 63
    new-instance v20, Lio/objectbox/g;

    const-class v5, Ljava/lang/String;

    const-class v9, Lcom/callapp/contacts/model/objectbox/DataSourceConverter;

    const-class v10, Lcom/callapp/contacts/model/contact/DataSource;

    const/16 v3, 0x9

    const/16 v4, 0x8

    const-string v6, "nameDataSource"

    const-string v8, "nameDataSource"

    move-object/from16 v1, v20

    invoke-direct/range {v1 .. v10}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v20, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->nameDataSource:Lio/objectbox/g;

    const/16 v0, 0xa

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

    const/16 v1, 0x8

    aput-object v19, v0, v1

    const/16 v1, 0x9

    aput-object v20, v0, v1

    .line 67
    sput-object v0, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->__ALL_PROPERTIES:[Lio/objectbox/g;

    .line 80
    sput-object v11, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->__ID_PROPERTY:Lio/objectbox/g;

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
            "Lcom/callapp/contacts/model/objectbox/FastCacheData;",
            ">;"
        }
    .end annotation

    .line 104
    sget-object v0, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->__ALL_PROPERTIES:[Lio/objectbox/g;

    return-object v0
.end method

.method public final getCursorFactory()Lio/objectbox/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/b/b<",
            "Lcom/callapp/contacts/model/objectbox/FastCacheData;",
            ">;"
        }
    .end annotation

    .line 119
    sget-object v0, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->__CURSOR_FACTORY:Lio/objectbox/b/b;

    return-object v0
.end method

.method public final getDbName()Ljava/lang/String;
    .locals 1

    const-string v0, "FastCacheData"

    return-object v0
.end method

.method public final getEntityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/objectbox/FastCacheData;",
            ">;"
        }
    .end annotation

    .line 94
    sget-object v0, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->__ENTITY_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public final getEntityId()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public final getEntityName()Ljava/lang/String;
    .locals 1

    const-string v0, "FastCacheData"

    return-object v0
.end method

.method public final getIdGetter()Lio/objectbox/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/b/c<",
            "Lcom/callapp/contacts/model/objectbox/FastCacheData;",
            ">;"
        }
    .end annotation

    .line 114
    sget-object v0, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/FastCacheData_$FastCacheDataIdGetter;

    return-object v0
.end method

.method public final getIdProperty()Lio/objectbox/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/FastCacheData;",
            ">;"
        }
    .end annotation

    .line 109
    sget-object v0, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->__ID_PROPERTY:Lio/objectbox/g;

    return-object v0
.end method
