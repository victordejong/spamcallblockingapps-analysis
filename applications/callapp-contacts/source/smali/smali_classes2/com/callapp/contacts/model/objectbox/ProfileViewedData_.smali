.class public final Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/ProfileViewedData_$ProfileViewedDataIdGetter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/c<",
        "Lcom/callapp/contacts/model/objectbox/ProfileViewedData;",
        ">;"
    }
.end annotation


# static fields
.field public static final __ALL_PROPERTIES:[Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/ProfileViewedData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __CURSOR_FACTORY:Lio/objectbox/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/b/b<",
            "Lcom/callapp/contacts/model/objectbox/ProfileViewedData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __DB_NAME:Ljava/lang/String; = "ProfileViewedData"

.field public static final __ENTITY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/objectbox/ProfileViewedData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __ENTITY_ID:I = 0x31

.field public static final __ENTITY_NAME:Ljava/lang/String; = "ProfileViewedData"

.field static final __ID_GETTER:Lcom/callapp/contacts/model/objectbox/ProfileViewedData_$ProfileViewedDataIdGetter;

.field public static final __ID_PROPERTY:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/ProfileViewedData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __INSTANCE:Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;

.field public static final counter:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/ProfileViewedData;",
            ">;"
        }
    .end annotation
.end field

.field public static final entrypoint:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/ProfileViewedData;",
            ">;"
        }
    .end annotation
.end field

.field public static final id:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/ProfileViewedData;",
            ">;"
        }
    .end annotation
.end field

.field public static final lastViewed:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/ProfileViewedData;",
            ">;"
        }
    .end annotation
.end field

.field public static final name:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/ProfileViewedData;",
            ">;"
        }
    .end annotation
.end field

.field public static final phoneNumber:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/ProfileViewedData;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/ProfileViewedData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 23
    const-class v0, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->__ENTITY_CLASS:Ljava/lang/Class;

    .line 27
    new-instance v0, Lcom/callapp/contacts/model/objectbox/ProfileViewedDataCursor$Factory;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/ProfileViewedDataCursor$Factory;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->__CURSOR_FACTORY:Lio/objectbox/b/b;

    .line 30
    new-instance v0, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_$ProfileViewedDataIdGetter;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_$ProfileViewedDataIdGetter;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/ProfileViewedData_$ProfileViewedDataIdGetter;

    .line 32
    new-instance v0, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;

    .line 34
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

    sput-object v11, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->id:Lio/objectbox/g;

    .line 37
    new-instance v12, Lio/objectbox/g;

    const-class v5, Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v6, "phoneNumber"

    move-object v1, v12

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v12, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->phoneNumber:Lio/objectbox/g;

    .line 40
    new-instance v13, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v9, Lcom/callapp/contacts/model/objectbox/WhoViewedProfileEntryPointConverter;

    const-class v10, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    const/4 v3, 0x2

    const/16 v4, 0x8

    const-string v6, "entrypoint"

    const/4 v7, 0x0

    const-string v8, "entrypoint"

    move-object v1, v13

    invoke-direct/range {v1 .. v10}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v13, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->entrypoint:Lio/objectbox/g;

    .line 43
    new-instance v14, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x3

    const/4 v4, 0x4

    const-string v6, "lastViewed"

    move-object v1, v14

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v14, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->lastViewed:Lio/objectbox/g;

    .line 46
    new-instance v15, Lio/objectbox/g;

    const-class v5, Ljava/lang/String;

    const/4 v3, 0x4

    const/4 v4, 0x5

    const-string v6, "name"

    move-object v1, v15

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v15, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->name:Lio/objectbox/g;

    .line 49
    new-instance v16, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x5

    const/4 v4, 0x6

    const-string v6, "counter"

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v16, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->counter:Lio/objectbox/g;

    .line 52
    new-instance v17, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v9, Lcom/callapp/contacts/model/objectbox/ViewType;

    const-class v10, Lcom/callapp/contacts/model/objectbox/TYPE;

    const/4 v3, 0x6

    const/4 v4, 0x7

    const-string v6, "type"

    const-string v8, "type"

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v10}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v17, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->type:Lio/objectbox/g;

    const/4 v0, 0x7

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

    .line 56
    sput-object v0, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->__ALL_PROPERTIES:[Lio/objectbox/g;

    .line 66
    sput-object v11, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->__ID_PROPERTY:Lio/objectbox/g;

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
            "Lcom/callapp/contacts/model/objectbox/ProfileViewedData;",
            ">;"
        }
    .end annotation

    .line 90
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->__ALL_PROPERTIES:[Lio/objectbox/g;

    return-object v0
.end method

.method public final getCursorFactory()Lio/objectbox/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/b/b<",
            "Lcom/callapp/contacts/model/objectbox/ProfileViewedData;",
            ">;"
        }
    .end annotation

    .line 105
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->__CURSOR_FACTORY:Lio/objectbox/b/b;

    return-object v0
.end method

.method public final getDbName()Ljava/lang/String;
    .locals 1

    const-string v0, "ProfileViewedData"

    return-object v0
.end method

.method public final getEntityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/objectbox/ProfileViewedData;",
            ">;"
        }
    .end annotation

    .line 80
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->__ENTITY_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public final getEntityId()I
    .locals 1

    const/16 v0, 0x31

    return v0
.end method

.method public final getEntityName()Ljava/lang/String;
    .locals 1

    const-string v0, "ProfileViewedData"

    return-object v0
.end method

.method public final getIdGetter()Lio/objectbox/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/b/c<",
            "Lcom/callapp/contacts/model/objectbox/ProfileViewedData;",
            ">;"
        }
    .end annotation

    .line 100
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/ProfileViewedData_$ProfileViewedDataIdGetter;

    return-object v0
.end method

.method public final getIdProperty()Lio/objectbox/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/ProfileViewedData;",
            ">;"
        }
    .end annotation

    .line 95
    sget-object v0, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->__ID_PROPERTY:Lio/objectbox/g;

    return-object v0
.end method
