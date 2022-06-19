.class public final enum Lcom/millennialmedia/mediation/ErrorCode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/millennialmedia/mediation/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/millennialmedia/mediation/ErrorCode;

.field public static final enum CONFIGURATION_ERROR:Lcom/millennialmedia/mediation/ErrorCode;

.field public static final enum INTERNAL_ERROR:Lcom/millennialmedia/mediation/ErrorCode;

.field public static final enum NETWORK_ERROR:Lcom/millennialmedia/mediation/ErrorCode;

.field public static final enum NO_FILL:Lcom/millennialmedia/mediation/ErrorCode;

.field public static final enum SERVER_ERROR:Lcom/millennialmedia/mediation/ErrorCode;

.field public static final enum UNKNOWN_ERROR:Lcom/millennialmedia/mediation/ErrorCode;

.field public static final enum VIDEO_DOWNLOAD_ERROR:Lcom/millennialmedia/mediation/ErrorCode;

.field public static final enum VIDEO_PLAYBACK_ERROR:Lcom/millennialmedia/mediation/ErrorCode;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/millennialmedia/mediation/ErrorCode;

    const-string v1, "CONFIGURATION_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/mediation/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/mediation/ErrorCode;->CONFIGURATION_ERROR:Lcom/millennialmedia/mediation/ErrorCode;

    new-instance v1, Lcom/millennialmedia/mediation/ErrorCode;

    const-string v3, "INTERNAL_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/millennialmedia/mediation/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/millennialmedia/mediation/ErrorCode;->INTERNAL_ERROR:Lcom/millennialmedia/mediation/ErrorCode;

    new-instance v3, Lcom/millennialmedia/mediation/ErrorCode;

    const-string v5, "NO_FILL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/millennialmedia/mediation/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/millennialmedia/mediation/ErrorCode;->NO_FILL:Lcom/millennialmedia/mediation/ErrorCode;

    new-instance v5, Lcom/millennialmedia/mediation/ErrorCode;

    const-string v7, "NETWORK_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/millennialmedia/mediation/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/millennialmedia/mediation/ErrorCode;->NETWORK_ERROR:Lcom/millennialmedia/mediation/ErrorCode;

    new-instance v7, Lcom/millennialmedia/mediation/ErrorCode;

    const-string v9, "SERVER_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/millennialmedia/mediation/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/millennialmedia/mediation/ErrorCode;->SERVER_ERROR:Lcom/millennialmedia/mediation/ErrorCode;

    new-instance v9, Lcom/millennialmedia/mediation/ErrorCode;

    const-string v11, "VIDEO_DOWNLOAD_ERROR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/millennialmedia/mediation/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/millennialmedia/mediation/ErrorCode;->VIDEO_DOWNLOAD_ERROR:Lcom/millennialmedia/mediation/ErrorCode;

    new-instance v11, Lcom/millennialmedia/mediation/ErrorCode;

    const-string v13, "VIDEO_PLAYBACK_ERROR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/millennialmedia/mediation/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/millennialmedia/mediation/ErrorCode;->VIDEO_PLAYBACK_ERROR:Lcom/millennialmedia/mediation/ErrorCode;

    new-instance v13, Lcom/millennialmedia/mediation/ErrorCode;

    const-string v15, "UNKNOWN_ERROR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/millennialmedia/mediation/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/millennialmedia/mediation/ErrorCode;->UNKNOWN_ERROR:Lcom/millennialmedia/mediation/ErrorCode;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/millennialmedia/mediation/ErrorCode;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/millennialmedia/mediation/ErrorCode;->$VALUES:[Lcom/millennialmedia/mediation/ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/millennialmedia/mediation/ErrorCode;
    .locals 1

    const-class v0, Lcom/millennialmedia/mediation/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/millennialmedia/mediation/ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/millennialmedia/mediation/ErrorCode;
    .locals 1

    sget-object v0, Lcom/millennialmedia/mediation/ErrorCode;->$VALUES:[Lcom/millennialmedia/mediation/ErrorCode;

    invoke-virtual {v0}, [Lcom/millennialmedia/mediation/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/millennialmedia/mediation/ErrorCode;

    return-object v0
.end method
