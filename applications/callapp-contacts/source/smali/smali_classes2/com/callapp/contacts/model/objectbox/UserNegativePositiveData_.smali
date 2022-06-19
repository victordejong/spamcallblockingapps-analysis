.class public final Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_$UserNegativePositiveDataIdGetter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/c<",
        "Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;",
        ">;"
    }
.end annotation


# static fields
.field public static final __ALL_PROPERTIES:[Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __CURSOR_FACTORY:Lio/objectbox/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/b/b<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __DB_NAME:Ljava/lang/String; = "UserNegativePositiveData"

.field public static final __ENTITY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __ENTITY_ID:I = 0x13

.field public static final __ENTITY_NAME:Ljava/lang/String; = "UserNegativePositiveData"

.field static final __ID_GETTER:Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_$UserNegativePositiveDataIdGetter;

.field public static final __ID_PROPERTY:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __INSTANCE:Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;

.field public static final id:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;",
            ">;"
        }
    .end annotation
.end field

.field public static final phoneOrIdKey:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;",
            ">;"
        }
    .end annotation
.end field

.field public static final userNegativeSocialData:Lio/objectbox/relation/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/relation/b<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;",
            "Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;",
            ">;"
        }
    .end annotation
.end field

.field public static final userPositiveSocialData:Lio/objectbox/relation/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/relation/b<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;",
            "Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 28
    const-class v0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;->__ENTITY_CLASS:Ljava/lang/Class;

    .line 32
    new-instance v0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveDataCursor$Factory;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveDataCursor$Factory;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;->__CURSOR_FACTORY:Lio/objectbox/b/b;

    .line 35
    new-instance v0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_$UserNegativePositiveDataIdGetter;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_$UserNegativePositiveDataIdGetter;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_$UserNegativePositiveDataIdGetter;

    .line 37
    new-instance v0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;

    .line 39
    new-instance v9, Lio/objectbox/g;

    const-class v5, Ljava/lang/Long;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v6, "id"

    const/4 v7, 0x1

    const-string v8, "id"

    move-object v1, v9

    move-object v2, v0

    invoke-direct/range {v1 .. v8}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v9, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;->id:Lio/objectbox/g;

    .line 42
    new-instance v7, Lio/objectbox/g;

    const-class v5, Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v6, "phoneOrIdKey"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v7, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;->phoneOrIdKey:Lio/objectbox/g;

    const/4 v1, 0x2

    new-array v1, v1, [Lio/objectbox/g;

    const/4 v2, 0x0

    aput-object v9, v1, v2

    const/4 v2, 0x1

    aput-object v7, v1, v2

    .line 46
    sput-object v1, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;->__ALL_PROPERTIES:[Lio/objectbox/g;

    .line 51
    sput-object v9, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;->__ID_PROPERTY:Lio/objectbox/g;

    .line 103
    new-instance v7, Lio/objectbox/relation/b;

    sget-object v3, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_;

    new-instance v4, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_$1;

    invoke-direct {v4}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_$1;-><init>()V

    sget-object v5, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_;->userNegativeDataId:Lio/objectbox/g;

    new-instance v6, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_$2;

    invoke-direct {v6}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_$2;-><init>()V

    move-object v1, v7

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lio/objectbox/relation/b;-><init>(Lio/objectbox/c;Lio/objectbox/c;Lio/objectbox/b/g;Lio/objectbox/g;Lio/objectbox/b/h;)V

    sput-object v7, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;->userNegativeSocialData:Lio/objectbox/relation/b;

    .line 119
    new-instance v7, Lio/objectbox/relation/b;

    sget-object v3, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData_;

    new-instance v4, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_$3;

    invoke-direct {v4}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_$3;-><init>()V

    sget-object v5, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData_;->userPositiveDataId:Lio/objectbox/g;

    new-instance v6, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_$4;

    invoke-direct {v6}, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_$4;-><init>()V

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/objectbox/relation/b;-><init>(Lio/objectbox/c;Lio/objectbox/c;Lio/objectbox/b/g;Lio/objectbox/g;Lio/objectbox/b/h;)V

    sput-object v7, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;->userPositiveSocialData:Lio/objectbox/relation/b;

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
            "Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;",
            ">;"
        }
    .end annotation

    .line 75
    sget-object v0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;->__ALL_PROPERTIES:[Lio/objectbox/g;

    return-object v0
.end method

.method public final getCursorFactory()Lio/objectbox/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/b/b<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;",
            ">;"
        }
    .end annotation

    .line 90
    sget-object v0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;->__CURSOR_FACTORY:Lio/objectbox/b/b;

    return-object v0
.end method

.method public final getDbName()Ljava/lang/String;
    .locals 1

    const-string v0, "UserNegativePositiveData"

    return-object v0
.end method

.method public final getEntityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;",
            ">;"
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;->__ENTITY_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public final getEntityId()I
    .locals 1

    const/16 v0, 0x13

    return v0
.end method

.method public final getEntityName()Ljava/lang/String;
    .locals 1

    const-string v0, "UserNegativePositiveData"

    return-object v0
.end method

.method public final getIdGetter()Lio/objectbox/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/b/c<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;",
            ">;"
        }
    .end annotation

    .line 85
    sget-object v0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_$UserNegativePositiveDataIdGetter;

    return-object v0
.end method

.method public final getIdProperty()Lio/objectbox/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;",
            ">;"
        }
    .end annotation

    .line 80
    sget-object v0, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;->__ID_PROPERTY:Lio/objectbox/g;

    return-object v0
.end method
