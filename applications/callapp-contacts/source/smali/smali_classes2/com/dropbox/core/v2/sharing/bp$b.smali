.class public final enum Lcom/dropbox/core/v2/sharing/bp$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/sharing/bp$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/sharing/bp$b;

.field public static final enum ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/bp$b;

.field public static final enum INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/bp$b;

.field public static final enum NEW_OWNER_EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/bp$b;

.field public static final enum NEW_OWNER_NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/bp$b;

.field public static final enum NEW_OWNER_UNMOUNTED:Lcom/dropbox/core/v2/sharing/bp$b;

.field public static final enum NO_PERMISSION:Lcom/dropbox/core/v2/sharing/bp$b;

.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/bp$b;

.field public static final enum TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/bp$b;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 36
    new-instance v0, Lcom/dropbox/core/v2/sharing/bp$b;

    const-string v1, "ACCESS_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/bp$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/bp$b;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/bp$b;

    .line 40
    new-instance v1, Lcom/dropbox/core/v2/sharing/bp$b;

    const-string v3, "INVALID_DROPBOX_ID"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dropbox/core/v2/sharing/bp$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/sharing/bp$b;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/bp$b;

    .line 45
    new-instance v3, Lcom/dropbox/core/v2/sharing/bp$b;

    const-string v5, "NEW_OWNER_NOT_A_MEMBER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dropbox/core/v2/sharing/bp$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/sharing/bp$b;->NEW_OWNER_NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/bp$b;

    .line 49
    new-instance v5, Lcom/dropbox/core/v2/sharing/bp$b;

    const-string v7, "NEW_OWNER_UNMOUNTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/dropbox/core/v2/sharing/bp$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dropbox/core/v2/sharing/bp$b;->NEW_OWNER_UNMOUNTED:Lcom/dropbox/core/v2/sharing/bp$b;

    .line 53
    new-instance v7, Lcom/dropbox/core/v2/sharing/bp$b;

    const-string v9, "NEW_OWNER_EMAIL_UNVERIFIED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/dropbox/core/v2/sharing/bp$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/dropbox/core/v2/sharing/bp$b;->NEW_OWNER_EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/bp$b;

    .line 57
    new-instance v9, Lcom/dropbox/core/v2/sharing/bp$b;

    const-string v11, "TEAM_FOLDER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/dropbox/core/v2/sharing/bp$b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/dropbox/core/v2/sharing/bp$b;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/bp$b;

    .line 61
    new-instance v11, Lcom/dropbox/core/v2/sharing/bp$b;

    const-string v13, "NO_PERMISSION"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/dropbox/core/v2/sharing/bp$b;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/dropbox/core/v2/sharing/bp$b;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/bp$b;

    .line 70
    new-instance v13, Lcom/dropbox/core/v2/sharing/bp$b;

    const-string v15, "OTHER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/dropbox/core/v2/sharing/bp$b;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/dropbox/core/v2/sharing/bp$b;->OTHER:Lcom/dropbox/core/v2/sharing/bp$b;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/dropbox/core/v2/sharing/bp$b;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 35
    sput-object v15, Lcom/dropbox/core/v2/sharing/bp$b;->$VALUES:[Lcom/dropbox/core/v2/sharing/bp$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/bp$b;
    .locals 1

    .line 35
    const-class v0, Lcom/dropbox/core/v2/sharing/bp$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/sharing/bp$b;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/bp$b;
    .locals 1

    .line 35
    sget-object v0, Lcom/dropbox/core/v2/sharing/bp$b;->$VALUES:[Lcom/dropbox/core/v2/sharing/bp$b;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/bp$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/bp$b;

    return-object v0
.end method
