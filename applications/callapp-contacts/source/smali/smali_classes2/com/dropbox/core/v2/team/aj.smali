.class public final enum Lcom/dropbox/core/v2/team/aj;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/team/aj;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/aj;

.field public static final enum CANNOT_KEEP_ACCOUNT:Lcom/dropbox/core/v2/team/aj;

.field public static final enum CANNOT_KEEP_ACCOUNT_AND_DELETE_DATA:Lcom/dropbox/core/v2/team/aj;

.field public static final enum CANNOT_KEEP_ACCOUNT_AND_TRANSFER:Lcom/dropbox/core/v2/team/aj;

.field public static final enum CANNOT_KEEP_ACCOUNT_REQUIRED_TO_SIGN_TOS:Lcom/dropbox/core/v2/team/aj;

.field public static final enum CANNOT_KEEP_ACCOUNT_UNDER_LEGAL_HOLD:Lcom/dropbox/core/v2/team/aj;

.field public static final enum CANNOT_KEEP_INVITED_USER_ACCOUNT:Lcom/dropbox/core/v2/team/aj;

.field public static final enum CANNOT_RETAIN_SHARES_WHEN_DATA_WIPED:Lcom/dropbox/core/v2/team/aj;

.field public static final enum CANNOT_RETAIN_SHARES_WHEN_NO_ACCOUNT_KEPT:Lcom/dropbox/core/v2/team/aj;

.field public static final enum CANNOT_RETAIN_SHARES_WHEN_TEAM_EXTERNAL_SHARING_OFF:Lcom/dropbox/core/v2/team/aj;

.field public static final enum EMAIL_ADDRESS_TOO_LONG_TO_BE_DISABLED:Lcom/dropbox/core/v2/team/aj;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/aj;

.field public static final enum RECIPIENT_NOT_VERIFIED:Lcom/dropbox/core/v2/team/aj;

.field public static final enum REMOVED_AND_TRANSFER_ADMIN_SHOULD_DIFFER:Lcom/dropbox/core/v2/team/aj;

.field public static final enum REMOVED_AND_TRANSFER_DEST_SHOULD_DIFFER:Lcom/dropbox/core/v2/team/aj;

.field public static final enum REMOVE_LAST_ADMIN:Lcom/dropbox/core/v2/team/aj;

.field public static final enum TRANSFER_ADMIN_IS_NOT_ADMIN:Lcom/dropbox/core/v2/team/aj;

.field public static final enum TRANSFER_ADMIN_USER_NOT_FOUND:Lcom/dropbox/core/v2/team/aj;

.field public static final enum TRANSFER_ADMIN_USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/aj;

.field public static final enum TRANSFER_DEST_USER_NOT_FOUND:Lcom/dropbox/core/v2/team/aj;

.field public static final enum TRANSFER_DEST_USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/aj;

.field public static final enum UNSPECIFIED_TRANSFER_ADMIN_ID:Lcom/dropbox/core/v2/team/aj;

.field public static final enum USER_NOT_FOUND:Lcom/dropbox/core/v2/team/aj;

.field public static final enum USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/aj;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 25
    new-instance v0, Lcom/dropbox/core/v2/team/aj;

    const-string v1, "USER_NOT_FOUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/aj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/aj;->USER_NOT_FOUND:Lcom/dropbox/core/v2/team/aj;

    .line 29
    new-instance v1, Lcom/dropbox/core/v2/team/aj;

    const-string v3, "USER_NOT_IN_TEAM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dropbox/core/v2/team/aj;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/team/aj;->USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/aj;

    .line 37
    new-instance v3, Lcom/dropbox/core/v2/team/aj;

    const-string v5, "OTHER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dropbox/core/v2/team/aj;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/team/aj;->OTHER:Lcom/dropbox/core/v2/team/aj;

    .line 41
    new-instance v5, Lcom/dropbox/core/v2/team/aj;

    const-string v7, "REMOVED_AND_TRANSFER_DEST_SHOULD_DIFFER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/dropbox/core/v2/team/aj;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dropbox/core/v2/team/aj;->REMOVED_AND_TRANSFER_DEST_SHOULD_DIFFER:Lcom/dropbox/core/v2/team/aj;

    .line 45
    new-instance v7, Lcom/dropbox/core/v2/team/aj;

    const-string v9, "REMOVED_AND_TRANSFER_ADMIN_SHOULD_DIFFER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/dropbox/core/v2/team/aj;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/dropbox/core/v2/team/aj;->REMOVED_AND_TRANSFER_ADMIN_SHOULD_DIFFER:Lcom/dropbox/core/v2/team/aj;

    .line 49
    new-instance v9, Lcom/dropbox/core/v2/team/aj;

    const-string v11, "TRANSFER_DEST_USER_NOT_FOUND"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/dropbox/core/v2/team/aj;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/dropbox/core/v2/team/aj;->TRANSFER_DEST_USER_NOT_FOUND:Lcom/dropbox/core/v2/team/aj;

    .line 53
    new-instance v11, Lcom/dropbox/core/v2/team/aj;

    const-string v13, "TRANSFER_DEST_USER_NOT_IN_TEAM"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/dropbox/core/v2/team/aj;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/dropbox/core/v2/team/aj;->TRANSFER_DEST_USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/aj;

    .line 57
    new-instance v13, Lcom/dropbox/core/v2/team/aj;

    const-string v15, "TRANSFER_ADMIN_USER_NOT_IN_TEAM"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/dropbox/core/v2/team/aj;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/dropbox/core/v2/team/aj;->TRANSFER_ADMIN_USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/aj;

    .line 61
    new-instance v15, Lcom/dropbox/core/v2/team/aj;

    const-string v14, "TRANSFER_ADMIN_USER_NOT_FOUND"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/dropbox/core/v2/team/aj;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/dropbox/core/v2/team/aj;->TRANSFER_ADMIN_USER_NOT_FOUND:Lcom/dropbox/core/v2/team/aj;

    .line 66
    new-instance v14, Lcom/dropbox/core/v2/team/aj;

    const-string v12, "UNSPECIFIED_TRANSFER_ADMIN_ID"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/dropbox/core/v2/team/aj;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/dropbox/core/v2/team/aj;->UNSPECIFIED_TRANSFER_ADMIN_ID:Lcom/dropbox/core/v2/team/aj;

    .line 70
    new-instance v12, Lcom/dropbox/core/v2/team/aj;

    const-string v10, "TRANSFER_ADMIN_IS_NOT_ADMIN"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/dropbox/core/v2/team/aj;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/dropbox/core/v2/team/aj;->TRANSFER_ADMIN_IS_NOT_ADMIN:Lcom/dropbox/core/v2/team/aj;

    .line 74
    new-instance v10, Lcom/dropbox/core/v2/team/aj;

    const-string v8, "RECIPIENT_NOT_VERIFIED"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/dropbox/core/v2/team/aj;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/dropbox/core/v2/team/aj;->RECIPIENT_NOT_VERIFIED:Lcom/dropbox/core/v2/team/aj;

    .line 78
    new-instance v8, Lcom/dropbox/core/v2/team/aj;

    const-string v6, "REMOVE_LAST_ADMIN"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/dropbox/core/v2/team/aj;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/dropbox/core/v2/team/aj;->REMOVE_LAST_ADMIN:Lcom/dropbox/core/v2/team/aj;

    .line 83
    new-instance v6, Lcom/dropbox/core/v2/team/aj;

    const-string v4, "CANNOT_KEEP_ACCOUNT_AND_TRANSFER"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/dropbox/core/v2/team/aj;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/dropbox/core/v2/team/aj;->CANNOT_KEEP_ACCOUNT_AND_TRANSFER:Lcom/dropbox/core/v2/team/aj;

    .line 88
    new-instance v4, Lcom/dropbox/core/v2/team/aj;

    const-string v2, "CANNOT_KEEP_ACCOUNT_AND_DELETE_DATA"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/dropbox/core/v2/team/aj;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dropbox/core/v2/team/aj;->CANNOT_KEEP_ACCOUNT_AND_DELETE_DATA:Lcom/dropbox/core/v2/team/aj;

    .line 92
    new-instance v2, Lcom/dropbox/core/v2/team/aj;

    const-string v6, "EMAIL_ADDRESS_TOO_LONG_TO_BE_DISABLED"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/dropbox/core/v2/team/aj;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/team/aj;->EMAIL_ADDRESS_TOO_LONG_TO_BE_DISABLED:Lcom/dropbox/core/v2/team/aj;

    .line 96
    new-instance v6, Lcom/dropbox/core/v2/team/aj;

    const-string v4, "CANNOT_KEEP_INVITED_USER_ACCOUNT"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/dropbox/core/v2/team/aj;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/dropbox/core/v2/team/aj;->CANNOT_KEEP_INVITED_USER_ACCOUNT:Lcom/dropbox/core/v2/team/aj;

    .line 102
    new-instance v4, Lcom/dropbox/core/v2/team/aj;

    const-string v2, "CANNOT_RETAIN_SHARES_WHEN_DATA_WIPED"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/dropbox/core/v2/team/aj;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dropbox/core/v2/team/aj;->CANNOT_RETAIN_SHARES_WHEN_DATA_WIPED:Lcom/dropbox/core/v2/team/aj;

    .line 107
    new-instance v2, Lcom/dropbox/core/v2/team/aj;

    const-string v6, "CANNOT_RETAIN_SHARES_WHEN_NO_ACCOUNT_KEPT"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/dropbox/core/v2/team/aj;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/team/aj;->CANNOT_RETAIN_SHARES_WHEN_NO_ACCOUNT_KEPT:Lcom/dropbox/core/v2/team/aj;

    .line 112
    new-instance v6, Lcom/dropbox/core/v2/team/aj;

    const-string v4, "CANNOT_RETAIN_SHARES_WHEN_TEAM_EXTERNAL_SHARING_OFF"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/dropbox/core/v2/team/aj;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/dropbox/core/v2/team/aj;->CANNOT_RETAIN_SHARES_WHEN_TEAM_EXTERNAL_SHARING_OFF:Lcom/dropbox/core/v2/team/aj;

    .line 116
    new-instance v4, Lcom/dropbox/core/v2/team/aj;

    const-string v2, "CANNOT_KEEP_ACCOUNT"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/dropbox/core/v2/team/aj;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dropbox/core/v2/team/aj;->CANNOT_KEEP_ACCOUNT:Lcom/dropbox/core/v2/team/aj;

    .line 122
    new-instance v2, Lcom/dropbox/core/v2/team/aj;

    const-string v6, "CANNOT_KEEP_ACCOUNT_UNDER_LEGAL_HOLD"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/dropbox/core/v2/team/aj;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/team/aj;->CANNOT_KEEP_ACCOUNT_UNDER_LEGAL_HOLD:Lcom/dropbox/core/v2/team/aj;

    .line 127
    new-instance v6, Lcom/dropbox/core/v2/team/aj;

    const-string v4, "CANNOT_KEEP_ACCOUNT_REQUIRED_TO_SIGN_TOS"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/dropbox/core/v2/team/aj;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/dropbox/core/v2/team/aj;->CANNOT_KEEP_ACCOUNT_REQUIRED_TO_SIGN_TOS:Lcom/dropbox/core/v2/team/aj;

    const/16 v2, 0x17

    new-array v2, v2, [Lcom/dropbox/core/v2/team/aj;

    const/4 v4, 0x0

    aput-object v0, v2, v4

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

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v6, v2, v0

    .line 19
    sput-object v2, Lcom/dropbox/core/v2/team/aj;->$VALUES:[Lcom/dropbox/core/v2/team/aj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/aj;
    .locals 1

    .line 19
    const-class v0, Lcom/dropbox/core/v2/team/aj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/team/aj;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/aj;
    .locals 1

    .line 19
    sget-object v0, Lcom/dropbox/core/v2/team/aj;->$VALUES:[Lcom/dropbox/core/v2/team/aj;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/aj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/aj;

    return-object v0
.end method
