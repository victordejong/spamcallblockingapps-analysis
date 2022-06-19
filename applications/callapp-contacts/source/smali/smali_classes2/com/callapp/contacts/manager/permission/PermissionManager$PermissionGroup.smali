.class public final enum Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/permission/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PermissionGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

.field public static final enum CALENDAR:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

.field public static final enum CALL_LOG:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

.field public static final enum CONTACTS:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

.field public static final enum CORE_PERMISSIONS:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

.field public static final enum LOCATION:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

.field public static final enum MICROPHONE:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

.field public static final enum PHONE:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

.field public static final enum SMS:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

.field public static final enum STORAGE:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;


# instance fields
.field private final permissions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 47
    new-instance v0, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    const-string v1, "android.permission.READ_CONTACTS"

    const-string v2, "android.permission.WRITE_CONTACTS"

    const-string v3, "android.permission.GET_ACCOUNTS"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "CONTACTS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->CONTACTS:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    .line 48
    new-instance v1, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v4, "android.permission.CALL_PHONE"

    const-string v5, "android.permission.PROCESS_OUTGOING_CALLS"

    filled-new-array {v2, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    const-string v4, "PHONE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v1, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->PHONE:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    .line 49
    new-instance v2, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    const-string v4, "android.permission.READ_CALL_LOG"

    const-string v6, "android.permission.WRITE_CALL_LOG"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "CALL_LOG"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v2, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->CALL_LOG:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    .line 50
    new-instance v4, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    const-string v6, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v8, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v6, v8}, [Ljava/lang/String;

    move-result-object v6

    const-string v8, "STORAGE"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v4, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->STORAGE:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    .line 51
    new-instance v6, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    const-string v8, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v10, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v8, v10}, [Ljava/lang/String;

    move-result-object v8

    const-string v10, "LOCATION"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v6, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->LOCATION:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    .line 52
    new-instance v8, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    const-string v10, "android.permission.READ_SMS"

    const-string v12, "android.permission.SEND_SMS"

    const-string v13, "android.permission.RECEIVE_SMS"

    filled-new-array {v10, v12, v13}, [Ljava/lang/String;

    move-result-object v10

    const-string v12, "SMS"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v8, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->SMS:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    .line 53
    new-instance v10, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    const-string v12, "android.permission.RECORD_AUDIO"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    const-string v14, "MICROPHONE"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v10, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->MICROPHONE:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    .line 54
    new-instance v12, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    const-string v14, "android.permission.READ_CALENDAR"

    const-string v15, "android.permission.WRITE_CALENDAR"

    filled-new-array {v14, v15}, [Ljava/lang/String;

    move-result-object v14

    const-string v15, "CALENDAR"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v12, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->CALENDAR:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    .line 55
    new-instance v14, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    new-array v15, v11, [Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    aput-object v0, v15, v3

    aput-object v1, v15, v5

    aput-object v2, v15, v7

    aput-object v4, v15, v9

    const-string v13, "CORE_PERMISSIONS"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;-><init>(Ljava/lang/String;I[Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V

    sput-object v14, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->CORE_PERMISSIONS:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    const/16 v13, 0x9

    new-array v13, v13, [Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    aput-object v0, v13, v3

    aput-object v1, v13, v5

    aput-object v2, v13, v7

    aput-object v4, v13, v9

    const/4 v0, 0x4

    aput-object v6, v13, v0

    const/4 v0, 0x5

    aput-object v8, v13, v0

    const/4 v0, 0x6

    aput-object v10, v13, v0

    const/4 v0, 0x7

    aput-object v12, v13, v0

    aput-object v14, v13, v11

    .line 46
    sput-object v13, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->$VALUES:[Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p3, v0

    .line 66
    iget-object v1, v1, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->permissions:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    const-class p2, Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/lang/Class;Ljava/util/List;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->permissions:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput-object p3, p0, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->permissions:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)[Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->permissions:[Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;
    .locals 1

    .line 46
    const-class v0, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;
    .locals 1

    .line 46
    sget-object v0, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->$VALUES:[Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    invoke-virtual {v0}, [Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    return-object v0
.end method


# virtual methods
.method public final arePermissionsGranted()Z
    .locals 6

    .line 72
    iget-object v0, p0, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->permissions:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 73
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v5

    invoke-static {v5, v4}, Landroidx/core/content/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
