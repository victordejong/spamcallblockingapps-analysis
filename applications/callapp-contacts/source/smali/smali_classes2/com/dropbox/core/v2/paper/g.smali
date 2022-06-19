.class public final enum Lcom/dropbox/core/v2/paper/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/paper/g;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/paper/g;

.field public static final enum CONTENT_MALFORMED:Lcom/dropbox/core/v2/paper/g;

.field public static final enum DOC_ARCHIVED:Lcom/dropbox/core/v2/paper/g;

.field public static final enum DOC_DELETED:Lcom/dropbox/core/v2/paper/g;

.field public static final enum DOC_LENGTH_EXCEEDED:Lcom/dropbox/core/v2/paper/g;

.field public static final enum DOC_NOT_FOUND:Lcom/dropbox/core/v2/paper/g;

.field public static final enum IMAGE_SIZE_EXCEEDED:Lcom/dropbox/core/v2/paper/g;

.field public static final enum INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/paper/g;

.field public static final enum OTHER:Lcom/dropbox/core/v2/paper/g;

.field public static final enum REVISION_MISMATCH:Lcom/dropbox/core/v2/paper/g;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 28
    new-instance v0, Lcom/dropbox/core/v2/paper/g;

    const-string v1, "INSUFFICIENT_PERMISSIONS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/paper/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/g;->INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/paper/g;

    .line 36
    new-instance v1, Lcom/dropbox/core/v2/paper/g;

    const-string v3, "OTHER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dropbox/core/v2/paper/g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/paper/g;->OTHER:Lcom/dropbox/core/v2/paper/g;

    .line 40
    new-instance v3, Lcom/dropbox/core/v2/paper/g;

    const-string v5, "DOC_NOT_FOUND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dropbox/core/v2/paper/g;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/paper/g;->DOC_NOT_FOUND:Lcom/dropbox/core/v2/paper/g;

    .line 44
    new-instance v5, Lcom/dropbox/core/v2/paper/g;

    const-string v7, "CONTENT_MALFORMED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/dropbox/core/v2/paper/g;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dropbox/core/v2/paper/g;->CONTENT_MALFORMED:Lcom/dropbox/core/v2/paper/g;

    .line 48
    new-instance v7, Lcom/dropbox/core/v2/paper/g;

    const-string v9, "REVISION_MISMATCH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/dropbox/core/v2/paper/g;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/dropbox/core/v2/paper/g;->REVISION_MISMATCH:Lcom/dropbox/core/v2/paper/g;

    .line 53
    new-instance v9, Lcom/dropbox/core/v2/paper/g;

    const-string v11, "DOC_LENGTH_EXCEEDED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/dropbox/core/v2/paper/g;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/dropbox/core/v2/paper/g;->DOC_LENGTH_EXCEEDED:Lcom/dropbox/core/v2/paper/g;

    .line 58
    new-instance v11, Lcom/dropbox/core/v2/paper/g;

    const-string v13, "IMAGE_SIZE_EXCEEDED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/dropbox/core/v2/paper/g;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/dropbox/core/v2/paper/g;->IMAGE_SIZE_EXCEEDED:Lcom/dropbox/core/v2/paper/g;

    .line 62
    new-instance v13, Lcom/dropbox/core/v2/paper/g;

    const-string v15, "DOC_ARCHIVED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/dropbox/core/v2/paper/g;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/dropbox/core/v2/paper/g;->DOC_ARCHIVED:Lcom/dropbox/core/v2/paper/g;

    .line 66
    new-instance v15, Lcom/dropbox/core/v2/paper/g;

    const-string v14, "DOC_DELETED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/dropbox/core/v2/paper/g;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/dropbox/core/v2/paper/g;->DOC_DELETED:Lcom/dropbox/core/v2/paper/g;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/dropbox/core/v2/paper/g;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 19
    sput-object v14, Lcom/dropbox/core/v2/paper/g;->$VALUES:[Lcom/dropbox/core/v2/paper/g;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/g;
    .locals 1

    .line 19
    const-class v0, Lcom/dropbox/core/v2/paper/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/paper/g;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/paper/g;
    .locals 1

    .line 19
    sget-object v0, Lcom/dropbox/core/v2/paper/g;->$VALUES:[Lcom/dropbox/core/v2/paper/g;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/paper/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/paper/g;

    return-object v0
.end method
