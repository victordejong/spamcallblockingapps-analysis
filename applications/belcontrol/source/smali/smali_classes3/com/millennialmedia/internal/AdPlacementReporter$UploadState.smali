.class public final enum Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/AdPlacementReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UploadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

.field public static final enum CLEARING:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

.field public static final enum ERROR_NETWORK_UNAVAILABLE:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

.field public static final enum ERROR_SENDING_TO_SERVER:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

.field public static final enum IDLE:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

.field public static final enum UPLOADING:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->IDLE:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    new-instance v1, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    const-string v3, "UPLOADING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->UPLOADING:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    new-instance v3, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    const-string v5, "ERROR_NETWORK_UNAVAILABLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->ERROR_NETWORK_UNAVAILABLE:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    new-instance v5, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    const-string v7, "ERROR_SENDING_TO_SERVER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->ERROR_SENDING_TO_SERVER:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    new-instance v7, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    const-string v9, "CLEARING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->CLEARING:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->$VALUES:[Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;
    .locals 1

    const-class v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    return-object p0
.end method

.method public static values()[Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->$VALUES:[Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    invoke-virtual {v0}, [Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    return-object v0
.end method
