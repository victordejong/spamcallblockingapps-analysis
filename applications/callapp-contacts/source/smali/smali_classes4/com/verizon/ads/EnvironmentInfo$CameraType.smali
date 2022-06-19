.class public final enum Lcom/verizon/ads/EnvironmentInfo$CameraType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/EnvironmentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verizon/ads/EnvironmentInfo$CameraType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verizon/ads/EnvironmentInfo$CameraType;

.field public static final enum BACK:Lcom/verizon/ads/EnvironmentInfo$CameraType;

.field public static final enum FRONT:Lcom/verizon/ads/EnvironmentInfo$CameraType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 100
    new-instance v0, Lcom/verizon/ads/EnvironmentInfo$CameraType;

    const-string v1, "FRONT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/verizon/ads/EnvironmentInfo$CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verizon/ads/EnvironmentInfo$CameraType;->FRONT:Lcom/verizon/ads/EnvironmentInfo$CameraType;

    .line 102
    new-instance v1, Lcom/verizon/ads/EnvironmentInfo$CameraType;

    const-string v3, "BACK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/verizon/ads/EnvironmentInfo$CameraType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/verizon/ads/EnvironmentInfo$CameraType;->BACK:Lcom/verizon/ads/EnvironmentInfo$CameraType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/verizon/ads/EnvironmentInfo$CameraType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 98
    sput-object v3, Lcom/verizon/ads/EnvironmentInfo$CameraType;->$VALUES:[Lcom/verizon/ads/EnvironmentInfo$CameraType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verizon/ads/EnvironmentInfo$CameraType;
    .locals 1

    .line 98
    const-class v0, Lcom/verizon/ads/EnvironmentInfo$CameraType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verizon/ads/EnvironmentInfo$CameraType;

    return-object p0
.end method

.method public static values()[Lcom/verizon/ads/EnvironmentInfo$CameraType;
    .locals 1

    .line 98
    sget-object v0, Lcom/verizon/ads/EnvironmentInfo$CameraType;->$VALUES:[Lcom/verizon/ads/EnvironmentInfo$CameraType;

    invoke-virtual {v0}, [Lcom/verizon/ads/EnvironmentInfo$CameraType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verizon/ads/EnvironmentInfo$CameraType;

    return-object v0
.end method
