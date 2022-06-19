.class public final Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_$UserNegativeSocialDataIdGetter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/c<",
        "Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;",
        ">;"
    }
.end annotation


# static fields
.field public static final __ALL_PROPERTIES:[Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __CURSOR_FACTORY:Lio/objectbox/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/b/b<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __DB_NAME:Ljava/lang/String; = "UserNegativeSocialData"

.field public static final __ENTITY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __ENTITY_ID:I = 0x14

.field public static final __ENTITY_NAME:Ljava/lang/String; = "UserNegativeSocialData"

.field static final __ID_GETTER:Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_$UserNegativeSocialDataIdGetter;

.field public static final __ID_PROPERTY:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __INSTANCE:Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_;

.field public static final id:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;",
            ">;"
        }
    .end annotation
.end field

.field public static final profileId:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;",
            ">;"
        }
    .end annotation
.end field

.field public static final socialNetworkId:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;",
            ">;"
        }
    .end annotation
.end field

.field public static final userNegativeData:Lio/objectbox/relation/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/relation/b<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;",
            "Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;",
            ">;"
        }
    .end annotation
.end field

.field public static final userNegativeDataId:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 26
    const-class v0, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_;->__ENTITY_CLASS:Ljava/lang/Class;

    .line 30
    new-instance v0, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialDataCursor$Factory;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialDataCursor$Factory;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_;->__CURSOR_FACTORY:Lio/objectbox/b/b;

    .line 33
    new-instance v0, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_$UserNegativeSocialDataIdGetter;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_$UserNegativeSocialDataIdGetter;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_$UserNegativeSocialDataIdGetter;

    .line 35
    new-instance v0, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_;

    .line 37
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

    sput-object v9, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_;->id:Lio/objectbox/g;

    .line 40
    new-instance v8, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v6, "socialNetworkId"

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v8, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_;->socialNetworkId:Lio/objectbox/g;

    .line 43
    new-instance v10, Lio/objectbox/g;

    const-class v5, Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x3

    const-string v6, "profileId"

    move-object v1, v10

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v10, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_;->profileId:Lio/objectbox/g;

    .line 46
    new-instance v11, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x3

    const/4 v4, 0x4

    const-string v6, "userNegativeDataId"

    move-object v1, v11

    invoke-direct/range {v1 .. v7}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;Z)V

    sput-object v11, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_;->userNegativeDataId:Lio/objectbox/g;

    const/4 v1, 0x4

    new-array v1, v1, [Lio/objectbox/g;

    const/4 v2, 0x0

    aput-object v9, v1, v2

    const/4 v2, 0x1

    aput-object v8, v1, v2

    const/4 v2, 0x2

    aput-object v10, v1, v2

    const/4 v2, 0x3

    aput-object v11, v1, v2

    .line 50
    sput-object v1, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_;->__ALL_PROPERTIES:[Lio/objectbox/g;

    .line 57
    sput-object v9, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_;->__ID_PROPERTY:Lio/objectbox/g;

    .line 109
    new-instance v1, Lio/objectbox/relation/b;

    sget-object v2, Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData_;

    new-instance v3, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_$1;

    invoke-direct {v3}, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_$1;-><init>()V

    invoke-direct {v1, v0, v2, v11, v3}, Lio/objectbox/relation/b;-><init>(Lio/objectbox/c;Lio/objectbox/c;Lio/objectbox/g;Lio/objectbox/b/h;)V

    sput-object v1, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_;->userNegativeData:Lio/objectbox/relation/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
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
            "Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;",
            ">;"
        }
    .end annotation

    .line 81
    sget-object v0, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_;->__ALL_PROPERTIES:[Lio/objectbox/g;

    return-object v0
.end method

.method public final getCursorFactory()Lio/objectbox/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/b/b<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;",
            ">;"
        }
    .end annotation

    .line 96
    sget-object v0, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_;->__CURSOR_FACTORY:Lio/objectbox/b/b;

    return-object v0
.end method

.method public final getDbName()Ljava/lang/String;
    .locals 1

    const-string v0, "UserNegativeSocialData"

    return-object v0
.end method

.method public final getEntityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;",
            ">;"
        }
    .end annotation

    .line 71
    sget-object v0, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_;->__ENTITY_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public final getEntityId()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public final getEntityName()Ljava/lang/String;
    .locals 1

    const-string v0, "UserNegativeSocialData"

    return-object v0
.end method

.method public final getIdGetter()Lio/objectbox/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/b/c<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;",
            ">;"
        }
    .end annotation

    .line 91
    sget-object v0, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_$UserNegativeSocialDataIdGetter;

    return-object v0
.end method

.method public final getIdProperty()Lio/objectbox/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;",
            ">;"
        }
    .end annotation

    .line 86
    sget-object v0, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_;->__ID_PROPERTY:Lio/objectbox/g;

    return-object v0
.end method
