.class public final Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/BlockedNumberData_$BlockedNumberDataIdGetter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/c<",
        "Lcom/callapp/contacts/model/objectbox/BlockedNumberData;",
        ">;"
    }
.end annotation


# static fields
.field public static final __ALL_PROPERTIES:[Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/BlockedNumberData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __CURSOR_FACTORY:Lio/objectbox/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/b/b<",
            "Lcom/callapp/contacts/model/objectbox/BlockedNumberData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __DB_NAME:Ljava/lang/String; = "BlockedNumberData"

.field public static final __ENTITY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/objectbox/BlockedNumberData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __ENTITY_ID:I = 0x1

.field public static final __ENTITY_NAME:Ljava/lang/String; = "BlockedNumberData"

.field static final __ID_GETTER:Lcom/callapp/contacts/model/objectbox/BlockedNumberData_$BlockedNumberDataIdGetter;

.field public static final __ID_PROPERTY:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/BlockedNumberData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __INSTANCE:Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;

.field public static final blockCall:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/BlockedNumberData;",
            ">;"
        }
    .end annotation
.end field

.field public static final blockSms:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/BlockedNumberData;",
            ">;"
        }
    .end annotation
.end field

.field public static final fullName:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/BlockedNumberData;",
            ">;"
        }
    .end annotation
.end field

.field public static final id:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/BlockedNumberData;",
            ">;"
        }
    .end annotation
.end field

.field public static final phoneNum:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/BlockedNumberData;",
            ">;"
        }
    .end annotation
.end field

.field public static final when:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/BlockedNumberData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 23
    const-class v0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;->__ENTITY_CLASS:Ljava/lang/Class;

    .line 27
    new-instance v0, Lcom/callapp/contacts/model/objectbox/BlockedNumberDataCursor$Factory;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/BlockedNumberDataCursor$Factory;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;->__CURSOR_FACTORY:Lio/objectbox/b/b;

    .line 30
    new-instance v0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData_$BlockedNumberDataIdGetter;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/BlockedNumberData_$BlockedNumberDataIdGetter;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/BlockedNumberData_$BlockedNumberDataIdGetter;

    .line 32
    new-instance v0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;

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

    sput-object v9, Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;->id:Lio/objectbox/g;

    .line 37
    new-instance v7, Lio/objectbox/g;

    const-class v5, Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v6, "phoneNum"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v7, Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;->phoneNum:Lio/objectbox/g;

    .line 40
    new-instance v8, Lio/objectbox/g;

    const-class v5, Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x3

    const-string v6, "fullName"

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v8, Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;->fullName:Lio/objectbox/g;

    .line 43
    new-instance v10, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x3

    const/4 v4, 0x4

    const-string v6, "blockSms"

    move-object v1, v10

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v10, Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;->blockSms:Lio/objectbox/g;

    .line 46
    new-instance v11, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x4

    const/4 v4, 0x5

    const-string v6, "blockCall"

    move-object v1, v11

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v11, Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;->blockCall:Lio/objectbox/g;

    .line 49
    new-instance v12, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x5

    const/4 v4, 0x6

    const-string v6, "when"

    move-object v1, v12

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v12, Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;->when:Lio/objectbox/g;

    const/4 v0, 0x6

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

    .line 53
    sput-object v0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;->__ALL_PROPERTIES:[Lio/objectbox/g;

    .line 62
    sput-object v9, Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;->__ID_PROPERTY:Lio/objectbox/g;

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
            "Lcom/callapp/contacts/model/objectbox/BlockedNumberData;",
            ">;"
        }
    .end annotation

    .line 86
    sget-object v0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;->__ALL_PROPERTIES:[Lio/objectbox/g;

    return-object v0
.end method

.method public final getCursorFactory()Lio/objectbox/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/b/b<",
            "Lcom/callapp/contacts/model/objectbox/BlockedNumberData;",
            ">;"
        }
    .end annotation

    .line 101
    sget-object v0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;->__CURSOR_FACTORY:Lio/objectbox/b/b;

    return-object v0
.end method

.method public final getDbName()Ljava/lang/String;
    .locals 1

    const-string v0, "BlockedNumberData"

    return-object v0
.end method

.method public final getEntityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/objectbox/BlockedNumberData;",
            ">;"
        }
    .end annotation

    .line 76
    sget-object v0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;->__ENTITY_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public final getEntityId()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getEntityName()Ljava/lang/String;
    .locals 1

    const-string v0, "BlockedNumberData"

    return-object v0
.end method

.method public final getIdGetter()Lio/objectbox/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/b/c<",
            "Lcom/callapp/contacts/model/objectbox/BlockedNumberData;",
            ">;"
        }
    .end annotation

    .line 96
    sget-object v0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/BlockedNumberData_$BlockedNumberDataIdGetter;

    return-object v0
.end method

.method public final getIdProperty()Lio/objectbox/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/BlockedNumberData;",
            ">;"
        }
    .end annotation

    .line 91
    sget-object v0, Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;->__ID_PROPERTY:Lio/objectbox/g;

    return-object v0
.end method
