.class public final Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_$ReferAndEarnUserDataIdGetter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/c<",
        "Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;",
        ">;"
    }
.end annotation


# static fields
.field public static final __ALL_PROPERTIES:[Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __CURSOR_FACTORY:Lio/objectbox/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/b/b<",
            "Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __DB_NAME:Ljava/lang/String; = "ReferAndEarnUserData"

.field public static final __ENTITY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __ENTITY_ID:I = 0x2f

.field public static final __ENTITY_NAME:Ljava/lang/String; = "ReferAndEarnUserData"

.field static final __ID_GETTER:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_$ReferAndEarnUserDataIdGetter;

.field public static final __ID_PROPERTY:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __INSTANCE:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;

.field public static final date:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;",
            ">;"
        }
    .end annotation
.end field

.field public static final globalPhoneNumber:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;",
            ">;"
        }
    .end annotation
.end field

.field public static final id:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;",
            ">;"
        }
    .end annotation
.end field

.field public static final nameOrNumber:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;",
            ">;"
        }
    .end annotation
.end field

.field public static final referAndEarnDataToOne:Lio/objectbox/relation/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/relation/b<",
            "Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;",
            "Lcom/callapp/contacts/model/invites/ReferAndEarnData;",
            ">;"
        }
    .end annotation
.end field

.field public static final referAndEarnDataToOneId:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;",
            ">;"
        }
    .end annotation
.end field

.field public static final status:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 28
    const-class v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;

    sput-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;->__ENTITY_CLASS:Ljava/lang/Class;

    .line 32
    new-instance v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserDataCursor$Factory;

    invoke-direct {v0}, Lcom/callapp/contacts/model/invites/ReferAndEarnUserDataCursor$Factory;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;->__CURSOR_FACTORY:Lio/objectbox/b/b;

    .line 35
    new-instance v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_$ReferAndEarnUserDataIdGetter;

    invoke-direct {v0}, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_$ReferAndEarnUserDataIdGetter;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;->__ID_GETTER:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_$ReferAndEarnUserDataIdGetter;

    .line 37
    new-instance v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;

    invoke-direct {v0}, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;->__INSTANCE:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;

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

    sput-object v11, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;->id:Lio/objectbox/g;

    .line 42
    new-instance v12, Lio/objectbox/g;

    const-class v5, Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x6

    const-string v6, "globalPhoneNumber"

    move-object v1, v12

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v12, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;->globalPhoneNumber:Lio/objectbox/g;

    .line 45
    new-instance v13, Lio/objectbox/g;

    const-class v5, Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x7

    const-string v6, "nameOrNumber"

    move-object v1, v13

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v13, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;->nameOrNumber:Lio/objectbox/g;

    .line 48
    new-instance v14, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x3

    const/16 v4, 0x8

    const-string v6, "date"

    move-object v1, v14

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v14, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;->date:Lio/objectbox/g;

    .line 51
    new-instance v15, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v9, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$ReferAndEarnStatusConverter;

    const-class v10, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

    const/4 v3, 0x4

    const/4 v4, 0x3

    const-string v6, "status"

    const/4 v7, 0x0

    const-string v8, "status"

    move-object v1, v15

    invoke-direct/range {v1 .. v10}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v15, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;->status:Lio/objectbox/g;

    .line 54
    new-instance v8, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x5

    const/4 v4, 0x4

    const-string v6, "referAndEarnDataToOneId"

    const/4 v7, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;Z)V

    sput-object v8, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;->referAndEarnDataToOneId:Lio/objectbox/g;

    const/4 v1, 0x6

    new-array v1, v1, [Lio/objectbox/g;

    const/4 v2, 0x0

    aput-object v11, v1, v2

    const/4 v2, 0x1

    aput-object v12, v1, v2

    const/4 v2, 0x2

    aput-object v13, v1, v2

    const/4 v2, 0x3

    aput-object v14, v1, v2

    const/4 v2, 0x4

    aput-object v15, v1, v2

    const/4 v2, 0x5

    aput-object v8, v1, v2

    .line 58
    sput-object v1, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;->__ALL_PROPERTIES:[Lio/objectbox/g;

    .line 67
    sput-object v11, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;->__ID_PROPERTY:Lio/objectbox/g;

    .line 119
    new-instance v1, Lio/objectbox/relation/b;

    sget-object v2, Lcom/callapp/contacts/model/invites/ReferAndEarnData_;->__INSTANCE:Lcom/callapp/contacts/model/invites/ReferAndEarnData_;

    new-instance v3, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_$1;

    invoke-direct {v3}, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_$1;-><init>()V

    invoke-direct {v1, v0, v2, v8, v3}, Lio/objectbox/relation/b;-><init>(Lio/objectbox/c;Lio/objectbox/c;Lio/objectbox/g;Lio/objectbox/b/h;)V

    sput-object v1, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;->referAndEarnDataToOne:Lio/objectbox/relation/b;

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
            "Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;",
            ">;"
        }
    .end annotation

    .line 91
    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;->__ALL_PROPERTIES:[Lio/objectbox/g;

    return-object v0
.end method

.method public final getCursorFactory()Lio/objectbox/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/b/b<",
            "Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;",
            ">;"
        }
    .end annotation

    .line 106
    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;->__CURSOR_FACTORY:Lio/objectbox/b/b;

    return-object v0
.end method

.method public final getDbName()Ljava/lang/String;
    .locals 1

    const-string v0, "ReferAndEarnUserData"

    return-object v0
.end method

.method public final getEntityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;",
            ">;"
        }
    .end annotation

    .line 81
    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;->__ENTITY_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public final getEntityId()I
    .locals 1

    const/16 v0, 0x2f

    return v0
.end method

.method public final getEntityName()Ljava/lang/String;
    .locals 1

    const-string v0, "ReferAndEarnUserData"

    return-object v0
.end method

.method public final getIdGetter()Lio/objectbox/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/b/c<",
            "Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;",
            ">;"
        }
    .end annotation

    .line 101
    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;->__ID_GETTER:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_$ReferAndEarnUserDataIdGetter;

    return-object v0
.end method

.method public final getIdProperty()Lio/objectbox/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;",
            ">;"
        }
    .end annotation

    .line 96
    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;->__ID_PROPERTY:Lio/objectbox/g;

    return-object v0
.end method
