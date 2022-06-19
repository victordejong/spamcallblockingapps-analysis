.class public final Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_$CallReminderFrequentDataIdGetter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/c<",
        "Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;",
        ">;"
    }
.end annotation


# static fields
.field public static final __ALL_PROPERTIES:[Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __CURSOR_FACTORY:Lio/objectbox/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/b/b<",
            "Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __DB_NAME:Ljava/lang/String; = "CallReminderFrequentData"

.field public static final __ENTITY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __ENTITY_ID:I = 0x25

.field public static final __ENTITY_NAME:Ljava/lang/String; = "CallReminderFrequentData"

.field static final __ID_GETTER:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_$CallReminderFrequentDataIdGetter;

.field public static final __ID_PROPERTY:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __INSTANCE:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;

.field public static final deleteTimeStamp:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;",
            ">;"
        }
    .end annotation
.end field

.field public static final frequentType:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;",
            ">;"
        }
    .end annotation
.end field

.field public static final id:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;",
            ">;"
        }
    .end annotation
.end field

.field public static final lastDeleteFromNotificationTimeStamp:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;",
            ">;"
        }
    .end annotation
.end field

.field public static final missedCallType:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;",
            ">;"
        }
    .end annotation
.end field

.field public static final phoneAsGlobal:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 25
    const-class v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;->__ENTITY_CLASS:Ljava/lang/Class;

    .line 29
    new-instance v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentDataCursor$Factory;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentDataCursor$Factory;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;->__CURSOR_FACTORY:Lio/objectbox/b/b;

    .line 32
    new-instance v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_$CallReminderFrequentDataIdGetter;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_$CallReminderFrequentDataIdGetter;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_$CallReminderFrequentDataIdGetter;

    .line 34
    new-instance v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;

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

    sput-object v11, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;->id:Lio/objectbox/g;

    .line 39
    new-instance v12, Lio/objectbox/g;

    const-class v5, Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v6, "phoneAsGlobal"

    move-object v1, v12

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v12, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;->phoneAsGlobal:Lio/objectbox/g;

    .line 42
    new-instance v13, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v9, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentTypeConverter;

    const-class v10, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    const/4 v3, 0x2

    const/4 v4, 0x3

    const-string v6, "frequentType"

    const/4 v7, 0x0

    const-string v8, "frequentType"

    move-object v1, v13

    invoke-direct/range {v1 .. v10}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v13, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;->frequentType:Lio/objectbox/g;

    .line 45
    new-instance v7, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x3

    const/4 v4, 0x7

    const-string v6, "deleteTimeStamp"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v7, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;->deleteTimeStamp:Lio/objectbox/g;

    .line 48
    new-instance v8, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x4

    const/16 v4, 0x8

    const-string v6, "missedCallType"

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v8, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;->missedCallType:Lio/objectbox/g;

    .line 51
    new-instance v9, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x5

    const/16 v4, 0xa

    const-string v6, "lastDeleteFromNotificationTimeStamp"

    move-object v1, v9

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v9, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;->lastDeleteFromNotificationTimeStamp:Lio/objectbox/g;

    const/4 v0, 0x6

    new-array v0, v0, [Lio/objectbox/g;

    const/4 v1, 0x0

    aput-object v11, v0, v1

    const/4 v1, 0x1

    aput-object v12, v0, v1

    const/4 v1, 0x2

    aput-object v13, v0, v1

    const/4 v1, 0x3

    aput-object v7, v0, v1

    const/4 v1, 0x4

    aput-object v8, v0, v1

    const/4 v1, 0x5

    aput-object v9, v0, v1

    .line 55
    sput-object v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;->__ALL_PROPERTIES:[Lio/objectbox/g;

    .line 64
    sput-object v11, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;->__ID_PROPERTY:Lio/objectbox/g;

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
            "Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;",
            ">;"
        }
    .end annotation

    .line 88
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;->__ALL_PROPERTIES:[Lio/objectbox/g;

    return-object v0
.end method

.method public final getCursorFactory()Lio/objectbox/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/b/b<",
            "Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;",
            ">;"
        }
    .end annotation

    .line 103
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;->__CURSOR_FACTORY:Lio/objectbox/b/b;

    return-object v0
.end method

.method public final getDbName()Ljava/lang/String;
    .locals 1

    const-string v0, "CallReminderFrequentData"

    return-object v0
.end method

.method public final getEntityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;",
            ">;"
        }
    .end annotation

    .line 78
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;->__ENTITY_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public final getEntityId()I
    .locals 1

    const/16 v0, 0x25

    return v0
.end method

.method public final getEntityName()Ljava/lang/String;
    .locals 1

    const-string v0, "CallReminderFrequentData"

    return-object v0
.end method

.method public final getIdGetter()Lio/objectbox/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/b/c<",
            "Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;",
            ">;"
        }
    .end annotation

    .line 98
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_$CallReminderFrequentDataIdGetter;

    return-object v0
.end method

.method public final getIdProperty()Lio/objectbox/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;",
            ">;"
        }
    .end annotation

    .line 93
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData_;->__ID_PROPERTY:Lio/objectbox/g;

    return-object v0
.end method
