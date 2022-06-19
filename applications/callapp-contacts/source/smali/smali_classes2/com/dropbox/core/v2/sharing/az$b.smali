.class public final enum Lcom/dropbox/core/v2/sharing/az$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/sharing/az$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/sharing/az$b;

.field public static final enum ALREADY_SHARED:Lcom/dropbox/core/v2/sharing/az$b;

.field public static final enum CONTAINS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/az$b;

.field public static final enum CONTAINS_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/az$b;

.field public static final enum CONTAINS_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/az$b;

.field public static final enum INSIDE_APP_FOLDER:Lcom/dropbox/core/v2/sharing/az$b;

.field public static final enum INSIDE_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/az$b;

.field public static final enum INSIDE_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/az$b;

.field public static final enum INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/az$b;

.field public static final enum INVALID_PATH:Lcom/dropbox/core/v2/sharing/az$b;

.field public static final enum IS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/az$b;

.field public static final enum IS_FILE:Lcom/dropbox/core/v2/sharing/az$b;

.field public static final enum IS_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/az$b;

.field public static final enum IS_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/az$b;

.field public static final enum IS_VAULT:Lcom/dropbox/core/v2/sharing/az$b;

.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/az$b;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 39
    new-instance v0, Lcom/dropbox/core/v2/sharing/az$b;

    const-string v1, "IS_FILE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/az$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/az$b;->IS_FILE:Lcom/dropbox/core/v2/sharing/az$b;

    .line 43
    new-instance v1, Lcom/dropbox/core/v2/sharing/az$b;

    const-string v3, "INSIDE_SHARED_FOLDER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dropbox/core/v2/sharing/az$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/sharing/az$b;->INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/az$b;

    .line 47
    new-instance v3, Lcom/dropbox/core/v2/sharing/az$b;

    const-string v5, "CONTAINS_SHARED_FOLDER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dropbox/core/v2/sharing/az$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/sharing/az$b;->CONTAINS_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/az$b;

    .line 51
    new-instance v5, Lcom/dropbox/core/v2/sharing/az$b;

    const-string v7, "CONTAINS_APP_FOLDER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/dropbox/core/v2/sharing/az$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dropbox/core/v2/sharing/az$b;->CONTAINS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/az$b;

    .line 55
    new-instance v7, Lcom/dropbox/core/v2/sharing/az$b;

    const-string v9, "CONTAINS_TEAM_FOLDER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/dropbox/core/v2/sharing/az$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/dropbox/core/v2/sharing/az$b;->CONTAINS_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/az$b;

    .line 59
    new-instance v9, Lcom/dropbox/core/v2/sharing/az$b;

    const-string v11, "IS_APP_FOLDER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/dropbox/core/v2/sharing/az$b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/dropbox/core/v2/sharing/az$b;->IS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/az$b;

    .line 63
    new-instance v11, Lcom/dropbox/core/v2/sharing/az$b;

    const-string v13, "INSIDE_APP_FOLDER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/dropbox/core/v2/sharing/az$b;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/dropbox/core/v2/sharing/az$b;->INSIDE_APP_FOLDER:Lcom/dropbox/core/v2/sharing/az$b;

    .line 67
    new-instance v13, Lcom/dropbox/core/v2/sharing/az$b;

    const-string v15, "IS_PUBLIC_FOLDER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/dropbox/core/v2/sharing/az$b;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/dropbox/core/v2/sharing/az$b;->IS_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/az$b;

    .line 72
    new-instance v15, Lcom/dropbox/core/v2/sharing/az$b;

    const-string v14, "INSIDE_PUBLIC_FOLDER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/dropbox/core/v2/sharing/az$b;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/dropbox/core/v2/sharing/az$b;->INSIDE_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/az$b;

    .line 77
    new-instance v14, Lcom/dropbox/core/v2/sharing/az$b;

    const-string v12, "ALREADY_SHARED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/dropbox/core/v2/sharing/az$b;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/dropbox/core/v2/sharing/az$b;->ALREADY_SHARED:Lcom/dropbox/core/v2/sharing/az$b;

    .line 81
    new-instance v12, Lcom/dropbox/core/v2/sharing/az$b;

    const-string v10, "INVALID_PATH"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/dropbox/core/v2/sharing/az$b;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/dropbox/core/v2/sharing/az$b;->INVALID_PATH:Lcom/dropbox/core/v2/sharing/az$b;

    .line 85
    new-instance v10, Lcom/dropbox/core/v2/sharing/az$b;

    const-string v8, "IS_OSX_PACKAGE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/dropbox/core/v2/sharing/az$b;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/dropbox/core/v2/sharing/az$b;->IS_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/az$b;

    .line 89
    new-instance v8, Lcom/dropbox/core/v2/sharing/az$b;

    const-string v6, "INSIDE_OSX_PACKAGE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/dropbox/core/v2/sharing/az$b;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/dropbox/core/v2/sharing/az$b;->INSIDE_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/az$b;

    .line 93
    new-instance v6, Lcom/dropbox/core/v2/sharing/az$b;

    const-string v4, "IS_VAULT"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/dropbox/core/v2/sharing/az$b;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/dropbox/core/v2/sharing/az$b;->IS_VAULT:Lcom/dropbox/core/v2/sharing/az$b;

    .line 102
    new-instance v4, Lcom/dropbox/core/v2/sharing/az$b;

    const-string v2, "OTHER"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/dropbox/core/v2/sharing/az$b;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dropbox/core/v2/sharing/az$b;->OTHER:Lcom/dropbox/core/v2/sharing/az$b;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/dropbox/core/v2/sharing/az$b;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v6

    .line 35
    sput-object v2, Lcom/dropbox/core/v2/sharing/az$b;->$VALUES:[Lcom/dropbox/core/v2/sharing/az$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/az$b;
    .locals 1

    .line 35
    const-class v0, Lcom/dropbox/core/v2/sharing/az$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/sharing/az$b;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/az$b;
    .locals 1

    .line 35
    sget-object v0, Lcom/dropbox/core/v2/sharing/az$b;->$VALUES:[Lcom/dropbox/core/v2/sharing/az$b;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/az$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/az$b;

    return-object v0
.end method
