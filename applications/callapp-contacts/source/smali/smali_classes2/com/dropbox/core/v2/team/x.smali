.class public final enum Lcom/dropbox/core/v2/team/x;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/team/x;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/x;

.field public static final enum EMPTY_MEMBERS_LIST:Lcom/dropbox/core/v2/team/x;

.field public static final enum INACTIVE_LEGAL_HOLD:Lcom/dropbox/core/v2/team/x;

.field public static final enum INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/team/x;

.field public static final enum INVALID_MEMBERS:Lcom/dropbox/core/v2/team/x;

.field public static final enum LEGAL_HOLD_PERFORMING_ANOTHER_OPERATION:Lcom/dropbox/core/v2/team/x;

.field public static final enum LEGAL_HOLD_POLICY_NOT_FOUND:Lcom/dropbox/core/v2/team/x;

.field public static final enum NAME_MUST_BE_UNIQUE:Lcom/dropbox/core/v2/team/x;

.field public static final enum NUMBER_OF_USERS_ON_HOLD_IS_GREATER_THAN_HOLD_LIMITATION:Lcom/dropbox/core/v2/team/x;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/x;

.field public static final enum UNKNOWN_LEGAL_HOLD_ERROR:Lcom/dropbox/core/v2/team/x;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 24
    new-instance v0, Lcom/dropbox/core/v2/team/x;

    const-string v1, "UNKNOWN_LEGAL_HOLD_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/x;->UNKNOWN_LEGAL_HOLD_ERROR:Lcom/dropbox/core/v2/team/x;

    .line 28
    new-instance v1, Lcom/dropbox/core/v2/team/x;

    const-string v3, "INSUFFICIENT_PERMISSIONS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dropbox/core/v2/team/x;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/team/x;->INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/team/x;

    .line 36
    new-instance v3, Lcom/dropbox/core/v2/team/x;

    const-string v5, "OTHER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dropbox/core/v2/team/x;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/team/x;->OTHER:Lcom/dropbox/core/v2/team/x;

    .line 40
    new-instance v5, Lcom/dropbox/core/v2/team/x;

    const-string v7, "INACTIVE_LEGAL_HOLD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/dropbox/core/v2/team/x;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dropbox/core/v2/team/x;->INACTIVE_LEGAL_HOLD:Lcom/dropbox/core/v2/team/x;

    .line 44
    new-instance v7, Lcom/dropbox/core/v2/team/x;

    const-string v9, "LEGAL_HOLD_PERFORMING_ANOTHER_OPERATION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/dropbox/core/v2/team/x;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/dropbox/core/v2/team/x;->LEGAL_HOLD_PERFORMING_ANOTHER_OPERATION:Lcom/dropbox/core/v2/team/x;

    .line 49
    new-instance v9, Lcom/dropbox/core/v2/team/x;

    const-string v11, "INVALID_MEMBERS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/dropbox/core/v2/team/x;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/dropbox/core/v2/team/x;->INVALID_MEMBERS:Lcom/dropbox/core/v2/team/x;

    .line 53
    new-instance v11, Lcom/dropbox/core/v2/team/x;

    const-string v13, "NUMBER_OF_USERS_ON_HOLD_IS_GREATER_THAN_HOLD_LIMITATION"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/dropbox/core/v2/team/x;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/dropbox/core/v2/team/x;->NUMBER_OF_USERS_ON_HOLD_IS_GREATER_THAN_HOLD_LIMITATION:Lcom/dropbox/core/v2/team/x;

    .line 57
    new-instance v13, Lcom/dropbox/core/v2/team/x;

    const-string v15, "EMPTY_MEMBERS_LIST"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/dropbox/core/v2/team/x;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/dropbox/core/v2/team/x;->EMPTY_MEMBERS_LIST:Lcom/dropbox/core/v2/team/x;

    .line 61
    new-instance v15, Lcom/dropbox/core/v2/team/x;

    const-string v14, "NAME_MUST_BE_UNIQUE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/dropbox/core/v2/team/x;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/dropbox/core/v2/team/x;->NAME_MUST_BE_UNIQUE:Lcom/dropbox/core/v2/team/x;

    .line 66
    new-instance v14, Lcom/dropbox/core/v2/team/x;

    const-string v12, "LEGAL_HOLD_POLICY_NOT_FOUND"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/dropbox/core/v2/team/x;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/dropbox/core/v2/team/x;->LEGAL_HOLD_POLICY_NOT_FOUND:Lcom/dropbox/core/v2/team/x;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/dropbox/core/v2/team/x;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 19
    sput-object v12, Lcom/dropbox/core/v2/team/x;->$VALUES:[Lcom/dropbox/core/v2/team/x;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/x;
    .locals 1

    .line 19
    const-class v0, Lcom/dropbox/core/v2/team/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/team/x;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/x;
    .locals 1

    .line 19
    sget-object v0, Lcom/dropbox/core/v2/team/x;->$VALUES:[Lcom/dropbox/core/v2/team/x;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/x;

    return-object v0
.end method
