.class public final Lcom/callapp/contacts/model/objectbox/BirthdayData_;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/BirthdayData_$BirthdayDataIdGetter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/c<",
        "Lcom/callapp/contacts/model/objectbox/BirthdayData;",
        ">;"
    }
.end annotation


# static fields
.field public static final __ALL_PROPERTIES:[Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/BirthdayData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __CURSOR_FACTORY:Lio/objectbox/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/b/b<",
            "Lcom/callapp/contacts/model/objectbox/BirthdayData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __DB_NAME:Ljava/lang/String; = "BirthdayData"

.field public static final __ENTITY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/objectbox/BirthdayData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __ENTITY_ID:I = 0x16

.field public static final __ENTITY_NAME:Ljava/lang/String; = "BirthdayData"

.field static final __ID_GETTER:Lcom/callapp/contacts/model/objectbox/BirthdayData_$BirthdayDataIdGetter;

.field public static final __ID_PROPERTY:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/BirthdayData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __INSTANCE:Lcom/callapp/contacts/model/objectbox/BirthdayData_;

.field public static final dayOfMonth:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/BirthdayData;",
            ">;"
        }
    .end annotation
.end field

.field public static final displayName:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/BirthdayData;",
            ">;"
        }
    .end annotation
.end field

.field public static final id:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/BirthdayData;",
            ">;"
        }
    .end annotation
.end field

.field public static final month:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/BirthdayData;",
            ">;"
        }
    .end annotation
.end field

.field public static final phoneOrIdKey:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/BirthdayData;",
            ">;"
        }
    .end annotation
.end field

.field public static final socialNetId:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/BirthdayData;",
            ">;"
        }
    .end annotation
.end field

.field public static final socialProfileId:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/BirthdayData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 23
    const-class v0, Lcom/callapp/contacts/model/objectbox/BirthdayData;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->__ENTITY_CLASS:Ljava/lang/Class;

    .line 27
    new-instance v0, Lcom/callapp/contacts/model/objectbox/BirthdayDataCursor$Factory;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/BirthdayDataCursor$Factory;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->__CURSOR_FACTORY:Lio/objectbox/b/b;

    .line 30
    new-instance v0, Lcom/callapp/contacts/model/objectbox/BirthdayData_$BirthdayDataIdGetter;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/BirthdayData_$BirthdayDataIdGetter;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/BirthdayData_$BirthdayDataIdGetter;

    .line 32
    new-instance v0, Lcom/callapp/contacts/model/objectbox/BirthdayData_;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/BirthdayData_;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/BirthdayData_;

    .line 34
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

    sput-object v9, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->id:Lio/objectbox/g;

    .line 37
    new-instance v7, Lio/objectbox/g;

    const-class v5, Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v6, "phoneOrIdKey"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v7, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->phoneOrIdKey:Lio/objectbox/g;

    .line 40
    new-instance v8, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    const/4 v4, 0x3

    const-string v6, "dayOfMonth"

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v8, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->dayOfMonth:Lio/objectbox/g;

    .line 43
    new-instance v10, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x3

    const/4 v4, 0x4

    const-string v6, "month"

    move-object v1, v10

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v10, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->month:Lio/objectbox/g;

    .line 46
    new-instance v11, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x4

    const/4 v4, 0x5

    const-string v6, "socialNetId"

    move-object v1, v11

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v11, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->socialNetId:Lio/objectbox/g;

    .line 49
    new-instance v12, Lio/objectbox/g;

    const-class v5, Ljava/lang/String;

    const/4 v3, 0x5

    const/4 v4, 0x6

    const-string v6, "socialProfileId"

    move-object v1, v12

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v12, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->socialProfileId:Lio/objectbox/g;

    .line 52
    new-instance v13, Lio/objectbox/g;

    const-class v5, Ljava/lang/String;

    const/4 v3, 0x6

    const/4 v4, 0x7

    const-string v6, "displayName"

    move-object v1, v13

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v13, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->displayName:Lio/objectbox/g;

    const/4 v0, 0x7

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

    .line 56
    sput-object v0, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->__ALL_PROPERTIES:[Lio/objectbox/g;

    .line 66
    sput-object v9, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->__ID_PROPERTY:Lio/objectbox/g;

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
            "Lcom/callapp/contacts/model/objectbox/BirthdayData;",
            ">;"
        }
    .end annotation

    .line 90
    sget-object v0, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->__ALL_PROPERTIES:[Lio/objectbox/g;

    return-object v0
.end method

.method public final getCursorFactory()Lio/objectbox/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/b/b<",
            "Lcom/callapp/contacts/model/objectbox/BirthdayData;",
            ">;"
        }
    .end annotation

    .line 105
    sget-object v0, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->__CURSOR_FACTORY:Lio/objectbox/b/b;

    return-object v0
.end method

.method public final getDbName()Ljava/lang/String;
    .locals 1

    const-string v0, "BirthdayData"

    return-object v0
.end method

.method public final getEntityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/objectbox/BirthdayData;",
            ">;"
        }
    .end annotation

    .line 80
    sget-object v0, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->__ENTITY_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public final getEntityId()I
    .locals 1

    const/16 v0, 0x16

    return v0
.end method

.method public final getEntityName()Ljava/lang/String;
    .locals 1

    const-string v0, "BirthdayData"

    return-object v0
.end method

.method public final getIdGetter()Lio/objectbox/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/b/c<",
            "Lcom/callapp/contacts/model/objectbox/BirthdayData;",
            ">;"
        }
    .end annotation

    .line 100
    sget-object v0, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/BirthdayData_$BirthdayDataIdGetter;

    return-object v0
.end method

.method public final getIdProperty()Lio/objectbox/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/BirthdayData;",
            ">;"
        }
    .end annotation

    .line 95
    sget-object v0, Lcom/callapp/contacts/model/objectbox/BirthdayData_;->__ID_PROPERTY:Lio/objectbox/g;

    return-object v0
.end method
