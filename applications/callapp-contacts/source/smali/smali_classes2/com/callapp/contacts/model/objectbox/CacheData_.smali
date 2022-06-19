.class public final Lcom/callapp/contacts/model/objectbox/CacheData_;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/CacheData_$CacheDataIdGetter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/c<",
        "Lcom/callapp/contacts/model/objectbox/CacheData;",
        ">;"
    }
.end annotation


# static fields
.field public static final __ALL_PROPERTIES:[Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/CacheData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __CURSOR_FACTORY:Lio/objectbox/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/b/b<",
            "Lcom/callapp/contacts/model/objectbox/CacheData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __DB_NAME:Ljava/lang/String; = "CacheData"

.field public static final __ENTITY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/objectbox/CacheData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __ENTITY_ID:I = 0x19

.field public static final __ENTITY_NAME:Ljava/lang/String; = "CacheData"

.field static final __ID_GETTER:Lcom/callapp/contacts/model/objectbox/CacheData_$CacheDataIdGetter;

.field public static final __ID_PROPERTY:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/CacheData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __INSTANCE:Lcom/callapp/contacts/model/objectbox/CacheData_;

.field public static final booleanVal:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/CacheData;",
            ">;"
        }
    .end annotation
.end field

.field public static final bytesVal:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/CacheData;",
            ">;"
        }
    .end annotation
.end field

.field public static final expires:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/CacheData;",
            ">;"
        }
    .end annotation
.end field

.field public static final file:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/CacheData;",
            ">;"
        }
    .end annotation
.end field

.field public static final id:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/CacheData;",
            ">;"
        }
    .end annotation
.end field

.field public static final integerVal:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/CacheData;",
            ">;"
        }
    .end annotation
.end field

.field public static final longVal:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/CacheData;",
            ">;"
        }
    .end annotation
.end field

.field public static final stringVal:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/CacheData;",
            ">;"
        }
    .end annotation
.end field

.field public static final valueType:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/CacheData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 23
    const-class v0, Lcom/callapp/contacts/model/objectbox/CacheData;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/CacheData_;->__ENTITY_CLASS:Ljava/lang/Class;

    .line 27
    new-instance v0, Lcom/callapp/contacts/model/objectbox/CacheDataCursor$Factory;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/CacheDataCursor$Factory;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/CacheData_;->__CURSOR_FACTORY:Lio/objectbox/b/b;

    .line 30
    new-instance v0, Lcom/callapp/contacts/model/objectbox/CacheData_$CacheDataIdGetter;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/CacheData_$CacheDataIdGetter;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/CacheData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/CacheData_$CacheDataIdGetter;

    .line 32
    new-instance v0, Lcom/callapp/contacts/model/objectbox/CacheData_;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/CacheData_;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/CacheData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/CacheData_;

    .line 34
    new-instance v9, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v6, "id"

    const/4 v7, 0x1

    const-string v8, "id"

    move-object v1, v9

    move-object v2, v0

    invoke-direct/range {v1 .. v8}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v9, Lcom/callapp/contacts/model/objectbox/CacheData_;->id:Lio/objectbox/g;

    .line 37
    new-instance v7, Lio/objectbox/g;

    const-class v5, Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v6, "file"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v7, Lcom/callapp/contacts/model/objectbox/CacheData_;->file:Lio/objectbox/g;

    .line 40
    new-instance v8, Lio/objectbox/g;

    const-class v5, Ljava/util/Date;

    const/4 v3, 0x2

    const/4 v4, 0x3

    const-string v6, "expires"

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v8, Lcom/callapp/contacts/model/objectbox/CacheData_;->expires:Lio/objectbox/g;

    .line 43
    new-instance v10, Lio/objectbox/g;

    const-class v5, Ljava/lang/String;

    const/4 v3, 0x3

    const/4 v4, 0x4

    const-string v6, "valueType"

    move-object v1, v10

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v10, Lcom/callapp/contacts/model/objectbox/CacheData_;->valueType:Lio/objectbox/g;

    .line 46
    new-instance v11, Lio/objectbox/g;

    const-class v5, Ljava/lang/String;

    const/4 v3, 0x4

    const/4 v4, 0x5

    const-string v6, "stringVal"

    move-object v1, v11

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v11, Lcom/callapp/contacts/model/objectbox/CacheData_;->stringVal:Lio/objectbox/g;

    .line 49
    new-instance v12, Lio/objectbox/g;

    const-class v5, Ljava/lang/Long;

    const/4 v3, 0x5

    const/4 v4, 0x6

    const-string v6, "longVal"

    move-object v1, v12

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v12, Lcom/callapp/contacts/model/objectbox/CacheData_;->longVal:Lio/objectbox/g;

    .line 52
    new-instance v13, Lio/objectbox/g;

    const-class v5, Ljava/lang/Boolean;

    const/4 v3, 0x6

    const/4 v4, 0x7

    const-string v6, "booleanVal"

    move-object v1, v13

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v13, Lcom/callapp/contacts/model/objectbox/CacheData_;->booleanVal:Lio/objectbox/g;

    .line 55
    new-instance v14, Lio/objectbox/g;

    const-class v5, Ljava/lang/Integer;

    const/4 v3, 0x7

    const/16 v4, 0x8

    const-string v6, "integerVal"

    move-object v1, v14

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v14, Lcom/callapp/contacts/model/objectbox/CacheData_;->integerVal:Lio/objectbox/g;

    .line 58
    new-instance v15, Lio/objectbox/g;

    const-class v5, [B

    const/16 v3, 0x8

    const/16 v4, 0x9

    const-string v6, "bytesVal"

    move-object v1, v15

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v15, Lcom/callapp/contacts/model/objectbox/CacheData_;->bytesVal:Lio/objectbox/g;

    const/16 v0, 0x9

    new-array v0, v0, [Lio/objectbox/g;

    const/4 v1, 0x0

    aput-object v9, v0, v1

    const/4 v1, 0x1

    aput-object v7, v0, v1

    const/4 v1, 0x2

    aput-object v8, v0, v1

    const/4 v1, 0x3

    aput-object v10, v0, v1

    const/4 v1, 0x4

    aput-object v11, v0, v1

    const/4 v1, 0x5

    aput-object v12, v0, v1

    const/4 v1, 0x6

    aput-object v13, v0, v1

    const/4 v1, 0x7

    aput-object v14, v0, v1

    const/16 v1, 0x8

    aput-object v15, v0, v1

    .line 62
    sput-object v0, Lcom/callapp/contacts/model/objectbox/CacheData_;->__ALL_PROPERTIES:[Lio/objectbox/g;

    .line 74
    sput-object v9, Lcom/callapp/contacts/model/objectbox/CacheData_;->__ID_PROPERTY:Lio/objectbox/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
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
            "Lcom/callapp/contacts/model/objectbox/CacheData;",
            ">;"
        }
    .end annotation

    .line 98
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CacheData_;->__ALL_PROPERTIES:[Lio/objectbox/g;

    return-object v0
.end method

.method public final getCursorFactory()Lio/objectbox/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/b/b<",
            "Lcom/callapp/contacts/model/objectbox/CacheData;",
            ">;"
        }
    .end annotation

    .line 113
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CacheData_;->__CURSOR_FACTORY:Lio/objectbox/b/b;

    return-object v0
.end method

.method public final getDbName()Ljava/lang/String;
    .locals 1

    const-string v0, "CacheData"

    return-object v0
.end method

.method public final getEntityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/objectbox/CacheData;",
            ">;"
        }
    .end annotation

    .line 88
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CacheData_;->__ENTITY_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public final getEntityId()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method

.method public final getEntityName()Ljava/lang/String;
    .locals 1

    const-string v0, "CacheData"

    return-object v0
.end method

.method public final getIdGetter()Lio/objectbox/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/b/c<",
            "Lcom/callapp/contacts/model/objectbox/CacheData;",
            ">;"
        }
    .end annotation

    .line 108
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CacheData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/CacheData_$CacheDataIdGetter;

    return-object v0
.end method

.method public final getIdProperty()Lio/objectbox/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/CacheData;",
            ">;"
        }
    .end annotation

    .line 103
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CacheData_;->__ID_PROPERTY:Lio/objectbox/g;

    return-object v0
.end method
