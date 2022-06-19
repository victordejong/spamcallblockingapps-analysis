.class final enum Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "UploadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

.field public static final enum CLEARING:Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

.field public static final enum ERROR_SENDING_TO_SERVER:Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

.field public static final enum IDLE:Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

.field public static final enum UPLOADING:Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 474
    new-instance v0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;->IDLE:Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

    new-instance v1, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

    const-string v3, "UPLOADING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;->UPLOADING:Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

    new-instance v3, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

    const-string v5, "ERROR_SENDING_TO_SERVER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;->ERROR_SENDING_TO_SERVER:Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

    new-instance v5, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

    const-string v7, "CLEARING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;->CLEARING:Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 473
    sput-object v7, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;->$VALUES:[Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 473
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;
    .locals 1

    .line 473
    const-class v0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

    return-object p0
.end method

.method public static values()[Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;
    .locals 1

    .line 473
    sget-object v0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;->$VALUES:[Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

    invoke-virtual {v0}, [Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

    return-object v0
.end method
