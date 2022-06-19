.class public final enum Lcom/dropbox/core/v2/team/am;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/team/am;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/am;

.field public static final enum DIRECTORY_RESTRICTED_OFF:Lcom/dropbox/core/v2/team/am;

.field public static final enum EMAIL_RESERVED_FOR_OTHER_USER:Lcom/dropbox/core/v2/team/am;

.field public static final enum EXTERNAL_ID_AND_NEW_EXTERNAL_ID_UNSAFE:Lcom/dropbox/core/v2/team/am;

.field public static final enum EXTERNAL_ID_USED_BY_OTHER_USER:Lcom/dropbox/core/v2/team/am;

.field public static final enum NO_NEW_DATA_SPECIFIED:Lcom/dropbox/core/v2/team/am;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/am;

.field public static final enum PARAM_CANNOT_BE_EMPTY:Lcom/dropbox/core/v2/team/am;

.field public static final enum PERSISTENT_ID_DISABLED:Lcom/dropbox/core/v2/team/am;

.field public static final enum PERSISTENT_ID_USED_BY_OTHER_USER:Lcom/dropbox/core/v2/team/am;

.field public static final enum SET_PROFILE_DISALLOWED:Lcom/dropbox/core/v2/team/am;

.field public static final enum USER_NOT_FOUND:Lcom/dropbox/core/v2/team/am;

.field public static final enum USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/am;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 25
    new-instance v0, Lcom/dropbox/core/v2/team/am;

    const-string v1, "USER_NOT_FOUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/am;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/am;->USER_NOT_FOUND:Lcom/dropbox/core/v2/team/am;

    .line 29
    new-instance v1, Lcom/dropbox/core/v2/team/am;

    const-string v3, "USER_NOT_IN_TEAM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dropbox/core/v2/team/am;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/team/am;->USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/am;

    .line 33
    new-instance v3, Lcom/dropbox/core/v2/team/am;

    const-string v5, "EXTERNAL_ID_AND_NEW_EXTERNAL_ID_UNSAFE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dropbox/core/v2/team/am;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/team/am;->EXTERNAL_ID_AND_NEW_EXTERNAL_ID_UNSAFE:Lcom/dropbox/core/v2/team/am;

    .line 38
    new-instance v5, Lcom/dropbox/core/v2/team/am;

    const-string v7, "NO_NEW_DATA_SPECIFIED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/dropbox/core/v2/team/am;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dropbox/core/v2/team/am;->NO_NEW_DATA_SPECIFIED:Lcom/dropbox/core/v2/team/am;

    .line 42
    new-instance v7, Lcom/dropbox/core/v2/team/am;

    const-string v9, "EMAIL_RESERVED_FOR_OTHER_USER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/dropbox/core/v2/team/am;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/dropbox/core/v2/team/am;->EMAIL_RESERVED_FOR_OTHER_USER:Lcom/dropbox/core/v2/team/am;

    .line 46
    new-instance v9, Lcom/dropbox/core/v2/team/am;

    const-string v11, "EXTERNAL_ID_USED_BY_OTHER_USER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/dropbox/core/v2/team/am;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/dropbox/core/v2/team/am;->EXTERNAL_ID_USED_BY_OTHER_USER:Lcom/dropbox/core/v2/team/am;

    .line 50
    new-instance v11, Lcom/dropbox/core/v2/team/am;

    const-string v13, "SET_PROFILE_DISALLOWED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/dropbox/core/v2/team/am;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/dropbox/core/v2/team/am;->SET_PROFILE_DISALLOWED:Lcom/dropbox/core/v2/team/am;

    .line 54
    new-instance v13, Lcom/dropbox/core/v2/team/am;

    const-string v15, "PARAM_CANNOT_BE_EMPTY"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/dropbox/core/v2/team/am;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/dropbox/core/v2/team/am;->PARAM_CANNOT_BE_EMPTY:Lcom/dropbox/core/v2/team/am;

    .line 59
    new-instance v15, Lcom/dropbox/core/v2/team/am;

    const-string v14, "PERSISTENT_ID_DISABLED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/dropbox/core/v2/team/am;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/dropbox/core/v2/team/am;->PERSISTENT_ID_DISABLED:Lcom/dropbox/core/v2/team/am;

    .line 63
    new-instance v14, Lcom/dropbox/core/v2/team/am;

    const-string v12, "PERSISTENT_ID_USED_BY_OTHER_USER"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/dropbox/core/v2/team/am;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/dropbox/core/v2/team/am;->PERSISTENT_ID_USED_BY_OTHER_USER:Lcom/dropbox/core/v2/team/am;

    .line 67
    new-instance v12, Lcom/dropbox/core/v2/team/am;

    const-string v10, "DIRECTORY_RESTRICTED_OFF"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/dropbox/core/v2/team/am;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/dropbox/core/v2/team/am;->DIRECTORY_RESTRICTED_OFF:Lcom/dropbox/core/v2/team/am;

    .line 75
    new-instance v10, Lcom/dropbox/core/v2/team/am;

    const-string v8, "OTHER"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/dropbox/core/v2/team/am;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/dropbox/core/v2/team/am;->OTHER:Lcom/dropbox/core/v2/team/am;

    const/16 v8, 0xc

    new-array v8, v8, [Lcom/dropbox/core/v2/team/am;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    .line 19
    sput-object v8, Lcom/dropbox/core/v2/team/am;->$VALUES:[Lcom/dropbox/core/v2/team/am;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/am;
    .locals 1

    .line 19
    const-class v0, Lcom/dropbox/core/v2/team/am;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/team/am;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/am;
    .locals 1

    .line 19
    sget-object v0, Lcom/dropbox/core/v2/team/am;->$VALUES:[Lcom/dropbox/core/v2/team/am;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/am;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/am;

    return-object v0
.end method
