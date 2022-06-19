.class public final Lcom/callapp/contacts/model/UsageCounterData_;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/UsageCounterData_$UsageCounterDataIdGetter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/c<",
        "Lcom/callapp/contacts/model/UsageCounterData;",
        ">;"
    }
.end annotation


# static fields
.field public static final __ALL_PROPERTIES:[Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/UsageCounterData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __CURSOR_FACTORY:Lio/objectbox/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/b/b<",
            "Lcom/callapp/contacts/model/UsageCounterData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __DB_NAME:Ljava/lang/String; = "UsageCounterData"

.field public static final __ENTITY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/UsageCounterData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __ENTITY_ID:I = 0x11

.field public static final __ENTITY_NAME:Ljava/lang/String; = "UsageCounterData"

.field static final __ID_GETTER:Lcom/callapp/contacts/model/UsageCounterData_$UsageCounterDataIdGetter;

.field public static final __ID_PROPERTY:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/UsageCounterData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __INSTANCE:Lcom/callapp/contacts/model/UsageCounterData_;

.field public static final count:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/UsageCounterData;",
            ">;"
        }
    .end annotation
.end field

.field public static final date:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/UsageCounterData;",
            ">;"
        }
    .end annotation
.end field

.field public static final id:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/UsageCounterData;",
            ">;"
        }
    .end annotation
.end field

.field public static final netCallType:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/UsageCounterData;",
            ">;"
        }
    .end annotation
.end field

.field public static final socialNetworkId:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/UsageCounterData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 23
    const-class v0, Lcom/callapp/contacts/model/UsageCounterData;

    sput-object v0, Lcom/callapp/contacts/model/UsageCounterData_;->__ENTITY_CLASS:Ljava/lang/Class;

    .line 27
    new-instance v0, Lcom/callapp/contacts/model/UsageCounterDataCursor$Factory;

    invoke-direct {v0}, Lcom/callapp/contacts/model/UsageCounterDataCursor$Factory;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/UsageCounterData_;->__CURSOR_FACTORY:Lio/objectbox/b/b;

    .line 30
    new-instance v0, Lcom/callapp/contacts/model/UsageCounterData_$UsageCounterDataIdGetter;

    invoke-direct {v0}, Lcom/callapp/contacts/model/UsageCounterData_$UsageCounterDataIdGetter;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/UsageCounterData_;->__ID_GETTER:Lcom/callapp/contacts/model/UsageCounterData_$UsageCounterDataIdGetter;

    .line 32
    new-instance v0, Lcom/callapp/contacts/model/UsageCounterData_;

    invoke-direct {v0}, Lcom/callapp/contacts/model/UsageCounterData_;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/UsageCounterData_;->__INSTANCE:Lcom/callapp/contacts/model/UsageCounterData_;

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

    sput-object v9, Lcom/callapp/contacts/model/UsageCounterData_;->id:Lio/objectbox/g;

    .line 37
    new-instance v7, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v6, "socialNetworkId"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v7, Lcom/callapp/contacts/model/UsageCounterData_;->socialNetworkId:Lio/objectbox/g;

    .line 40
    new-instance v8, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    const/4 v4, 0x3

    const-string v6, "netCallType"

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v8, Lcom/callapp/contacts/model/UsageCounterData_;->netCallType:Lio/objectbox/g;

    .line 43
    new-instance v10, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x3

    const/4 v4, 0x4

    const-string v6, "count"

    move-object v1, v10

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v10, Lcom/callapp/contacts/model/UsageCounterData_;->count:Lio/objectbox/g;

    .line 46
    new-instance v11, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x4

    const/4 v4, 0x5

    const-string v6, "date"

    move-object v1, v11

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v11, Lcom/callapp/contacts/model/UsageCounterData_;->date:Lio/objectbox/g;

    const/4 v0, 0x5

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

    .line 50
    sput-object v0, Lcom/callapp/contacts/model/UsageCounterData_;->__ALL_PROPERTIES:[Lio/objectbox/g;

    .line 58
    sput-object v9, Lcom/callapp/contacts/model/UsageCounterData_;->__ID_PROPERTY:Lio/objectbox/g;

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
            "Lcom/callapp/contacts/model/UsageCounterData;",
            ">;"
        }
    .end annotation

    .line 82
    sget-object v0, Lcom/callapp/contacts/model/UsageCounterData_;->__ALL_PROPERTIES:[Lio/objectbox/g;

    return-object v0
.end method

.method public final getCursorFactory()Lio/objectbox/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/b/b<",
            "Lcom/callapp/contacts/model/UsageCounterData;",
            ">;"
        }
    .end annotation

    .line 97
    sget-object v0, Lcom/callapp/contacts/model/UsageCounterData_;->__CURSOR_FACTORY:Lio/objectbox/b/b;

    return-object v0
.end method

.method public final getDbName()Ljava/lang/String;
    .locals 1

    const-string v0, "UsageCounterData"

    return-object v0
.end method

.method public final getEntityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/UsageCounterData;",
            ">;"
        }
    .end annotation

    .line 72
    sget-object v0, Lcom/callapp/contacts/model/UsageCounterData_;->__ENTITY_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public final getEntityId()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public final getEntityName()Ljava/lang/String;
    .locals 1

    const-string v0, "UsageCounterData"

    return-object v0
.end method

.method public final getIdGetter()Lio/objectbox/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/b/c<",
            "Lcom/callapp/contacts/model/UsageCounterData;",
            ">;"
        }
    .end annotation

    .line 92
    sget-object v0, Lcom/callapp/contacts/model/UsageCounterData_;->__ID_GETTER:Lcom/callapp/contacts/model/UsageCounterData_$UsageCounterDataIdGetter;

    return-object v0
.end method

.method public final getIdProperty()Lio/objectbox/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/UsageCounterData;",
            ">;"
        }
    .end annotation

    .line 87
    sget-object v0, Lcom/callapp/contacts/model/UsageCounterData_;->__ID_PROPERTY:Lio/objectbox/g;

    return-object v0
.end method
