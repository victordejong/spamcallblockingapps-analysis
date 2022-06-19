.class public final enum Lcom/dropbox/core/v2/sharing/o;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/sharing/o;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/sharing/o;

.field public static final enum CHANGE_OPTIONS:Lcom/dropbox/core/v2/sharing/o;

.field public static final enum CREATE_LINK:Lcom/dropbox/core/v2/sharing/o;

.field public static final enum DISABLE_VIEWER_INFO:Lcom/dropbox/core/v2/sharing/o;

.field public static final enum EDIT_CONTENTS:Lcom/dropbox/core/v2/sharing/o;

.field public static final enum ENABLE_VIEWER_INFO:Lcom/dropbox/core/v2/sharing/o;

.field public static final enum INVITE_EDITOR:Lcom/dropbox/core/v2/sharing/o;

.field public static final enum INVITE_VIEWER:Lcom/dropbox/core/v2/sharing/o;

.field public static final enum INVITE_VIEWER_NO_COMMENT:Lcom/dropbox/core/v2/sharing/o;

.field public static final enum LEAVE_A_COPY:Lcom/dropbox/core/v2/sharing/o;

.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/o;

.field public static final enum RELINQUISH_MEMBERSHIP:Lcom/dropbox/core/v2/sharing/o;

.field public static final enum SET_ACCESS_INHERITANCE:Lcom/dropbox/core/v2/sharing/o;

.field public static final enum SHARE_LINK:Lcom/dropbox/core/v2/sharing/o;

.field public static final enum UNMOUNT:Lcom/dropbox/core/v2/sharing/o;

.field public static final enum UNSHARE:Lcom/dropbox/core/v2/sharing/o;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 27
    new-instance v0, Lcom/dropbox/core/v2/sharing/o;

    const-string v1, "CHANGE_OPTIONS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/o;->CHANGE_OPTIONS:Lcom/dropbox/core/v2/sharing/o;

    .line 31
    new-instance v1, Lcom/dropbox/core/v2/sharing/o;

    const-string v3, "DISABLE_VIEWER_INFO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dropbox/core/v2/sharing/o;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/sharing/o;->DISABLE_VIEWER_INFO:Lcom/dropbox/core/v2/sharing/o;

    .line 35
    new-instance v3, Lcom/dropbox/core/v2/sharing/o;

    const-string v5, "EDIT_CONTENTS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dropbox/core/v2/sharing/o;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/sharing/o;->EDIT_CONTENTS:Lcom/dropbox/core/v2/sharing/o;

    .line 39
    new-instance v5, Lcom/dropbox/core/v2/sharing/o;

    const-string v7, "ENABLE_VIEWER_INFO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/dropbox/core/v2/sharing/o;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dropbox/core/v2/sharing/o;->ENABLE_VIEWER_INFO:Lcom/dropbox/core/v2/sharing/o;

    .line 43
    new-instance v7, Lcom/dropbox/core/v2/sharing/o;

    const-string v9, "INVITE_EDITOR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/dropbox/core/v2/sharing/o;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/dropbox/core/v2/sharing/o;->INVITE_EDITOR:Lcom/dropbox/core/v2/sharing/o;

    .line 47
    new-instance v9, Lcom/dropbox/core/v2/sharing/o;

    const-string v11, "INVITE_VIEWER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/dropbox/core/v2/sharing/o;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/dropbox/core/v2/sharing/o;->INVITE_VIEWER:Lcom/dropbox/core/v2/sharing/o;

    .line 52
    new-instance v11, Lcom/dropbox/core/v2/sharing/o;

    const-string v13, "INVITE_VIEWER_NO_COMMENT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/dropbox/core/v2/sharing/o;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/dropbox/core/v2/sharing/o;->INVITE_VIEWER_NO_COMMENT:Lcom/dropbox/core/v2/sharing/o;

    .line 56
    new-instance v13, Lcom/dropbox/core/v2/sharing/o;

    const-string v15, "RELINQUISH_MEMBERSHIP"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/dropbox/core/v2/sharing/o;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/dropbox/core/v2/sharing/o;->RELINQUISH_MEMBERSHIP:Lcom/dropbox/core/v2/sharing/o;

    .line 60
    new-instance v15, Lcom/dropbox/core/v2/sharing/o;

    const-string v14, "UNMOUNT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/dropbox/core/v2/sharing/o;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/dropbox/core/v2/sharing/o;->UNMOUNT:Lcom/dropbox/core/v2/sharing/o;

    .line 64
    new-instance v14, Lcom/dropbox/core/v2/sharing/o;

    const-string v12, "UNSHARE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/dropbox/core/v2/sharing/o;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/dropbox/core/v2/sharing/o;->UNSHARE:Lcom/dropbox/core/v2/sharing/o;

    .line 68
    new-instance v12, Lcom/dropbox/core/v2/sharing/o;

    const-string v10, "LEAVE_A_COPY"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/dropbox/core/v2/sharing/o;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/dropbox/core/v2/sharing/o;->LEAVE_A_COPY:Lcom/dropbox/core/v2/sharing/o;

    .line 72
    new-instance v10, Lcom/dropbox/core/v2/sharing/o;

    const-string v8, "SHARE_LINK"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/dropbox/core/v2/sharing/o;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/dropbox/core/v2/sharing/o;->SHARE_LINK:Lcom/dropbox/core/v2/sharing/o;

    .line 76
    new-instance v8, Lcom/dropbox/core/v2/sharing/o;

    const-string v6, "CREATE_LINK"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/dropbox/core/v2/sharing/o;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/dropbox/core/v2/sharing/o;->CREATE_LINK:Lcom/dropbox/core/v2/sharing/o;

    .line 80
    new-instance v6, Lcom/dropbox/core/v2/sharing/o;

    const-string v4, "SET_ACCESS_INHERITANCE"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/dropbox/core/v2/sharing/o;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/dropbox/core/v2/sharing/o;->SET_ACCESS_INHERITANCE:Lcom/dropbox/core/v2/sharing/o;

    .line 88
    new-instance v4, Lcom/dropbox/core/v2/sharing/o;

    const-string v2, "OTHER"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/dropbox/core/v2/sharing/o;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dropbox/core/v2/sharing/o;->OTHER:Lcom/dropbox/core/v2/sharing/o;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/dropbox/core/v2/sharing/o;

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

    .line 22
    sput-object v2, Lcom/dropbox/core/v2/sharing/o;->$VALUES:[Lcom/dropbox/core/v2/sharing/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/o;
    .locals 1

    .line 22
    const-class v0, Lcom/dropbox/core/v2/sharing/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/sharing/o;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/o;
    .locals 1

    .line 22
    sget-object v0, Lcom/dropbox/core/v2/sharing/o;->$VALUES:[Lcom/dropbox/core/v2/sharing/o;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/o;

    return-object v0
.end method
