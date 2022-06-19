.class public final enum Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/common/model/json/JSONClientValidationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RejectionReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

.field public static final enum ANDROID_OS_VERSION:Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

.field public static final enum DEVICE:Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

.field public static final enum NONE:Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

.field public static final enum NO_TELEPHONY_SUPPORT:Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

.field public static final enum RESOLUTION_TOO_LARGE:Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

.field public static final enum RESOLUTION_TOO_SMALL:Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

.field public static final enum UNSUPPORTED_ROM:Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;


# instance fields
.field public code:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 22
    new-instance v0, Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;->NONE:Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

    .line 23
    new-instance v1, Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

    const-string v3, "DEVICE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;->DEVICE:Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

    .line 24
    new-instance v3, Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

    const-string v5, "RESOLUTION_TOO_SMALL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;->RESOLUTION_TOO_SMALL:Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

    .line 25
    new-instance v5, Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

    const-string v7, "RESOLUTION_TOO_LARGE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;->RESOLUTION_TOO_LARGE:Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

    .line 26
    new-instance v7, Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

    const-string v9, "NO_TELEPHONY_SUPPORT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;->NO_TELEPHONY_SUPPORT:Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

    .line 27
    new-instance v9, Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

    const-string v11, "ANDROID_OS_VERSION"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;->ANDROID_OS_VERSION:Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

    .line 28
    new-instance v11, Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

    const-string v13, "UNSUPPORTED_ROM"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;->UNSUPPORTED_ROM:Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 21
    sput-object v13, Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;->$VALUES:[Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;
    .locals 1

    .line 21
    const-class v0, Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

    return-object p0
.end method

.method public static values()[Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;
    .locals 1

    .line 21
    sget-object v0, Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;->$VALUES:[Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

    invoke-virtual {v0}, [Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/common/model/json/JSONClientValidationResponse$RejectionReason;

    return-object v0
.end method
