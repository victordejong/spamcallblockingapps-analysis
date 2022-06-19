.class public final enum Lcom/criteo/publisher/CriteoErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/criteo/publisher/CriteoErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/criteo/publisher/CriteoErrorCode;

.field public static final enum ERROR_CODE_INTERNAL_ERROR:Lcom/criteo/publisher/CriteoErrorCode;

.field public static final enum ERROR_CODE_INVALID_REQUEST:Lcom/criteo/publisher/CriteoErrorCode;

.field public static final enum ERROR_CODE_NETWORK_ERROR:Lcom/criteo/publisher/CriteoErrorCode;

.field public static final enum ERROR_CODE_NO_FILL:Lcom/criteo/publisher/CriteoErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 26
    new-instance v0, Lcom/criteo/publisher/CriteoErrorCode;

    const-string v1, "ERROR_CODE_NO_FILL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/criteo/publisher/CriteoErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/criteo/publisher/CriteoErrorCode;->ERROR_CODE_NO_FILL:Lcom/criteo/publisher/CriteoErrorCode;

    .line 27
    new-instance v1, Lcom/criteo/publisher/CriteoErrorCode;

    const-string v3, "ERROR_CODE_NETWORK_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/criteo/publisher/CriteoErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/criteo/publisher/CriteoErrorCode;->ERROR_CODE_NETWORK_ERROR:Lcom/criteo/publisher/CriteoErrorCode;

    .line 28
    new-instance v3, Lcom/criteo/publisher/CriteoErrorCode;

    const-string v5, "ERROR_CODE_INVALID_REQUEST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/criteo/publisher/CriteoErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/criteo/publisher/CriteoErrorCode;->ERROR_CODE_INVALID_REQUEST:Lcom/criteo/publisher/CriteoErrorCode;

    .line 29
    new-instance v5, Lcom/criteo/publisher/CriteoErrorCode;

    const-string v7, "ERROR_CODE_INTERNAL_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/criteo/publisher/CriteoErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/criteo/publisher/CriteoErrorCode;->ERROR_CODE_INTERNAL_ERROR:Lcom/criteo/publisher/CriteoErrorCode;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/criteo/publisher/CriteoErrorCode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 24
    sput-object v7, Lcom/criteo/publisher/CriteoErrorCode;->$VALUES:[Lcom/criteo/publisher/CriteoErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/criteo/publisher/CriteoErrorCode;
    .locals 1

    .line 24
    const-class v0, Lcom/criteo/publisher/CriteoErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/criteo/publisher/CriteoErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/criteo/publisher/CriteoErrorCode;
    .locals 1

    .line 24
    sget-object v0, Lcom/criteo/publisher/CriteoErrorCode;->$VALUES:[Lcom/criteo/publisher/CriteoErrorCode;

    invoke-virtual {v0}, [Lcom/criteo/publisher/CriteoErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/criteo/publisher/CriteoErrorCode;

    return-object v0
.end method
