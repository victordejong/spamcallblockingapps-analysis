.class public final enum Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;

.field public static final enum LANDSCAPE:Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;

.field public static final enum NONE:Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;

.field public static final enum PORTRAIT:Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;


# instance fields
.field private final mOrientation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 53
    new-instance v0, Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;

    const-string v1, "PORTRAIT"

    const/4 v2, 0x0

    const-string v3, "portrait"

    invoke-direct {v0, v1, v2, v3}, Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;->PORTRAIT:Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;

    .line 54
    new-instance v1, Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;

    const-string v3, "LANDSCAPE"

    const/4 v4, 0x1

    const-string v5, "landscape"

    invoke-direct {v1, v3, v4, v5}, Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;->LANDSCAPE:Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;

    .line 55
    new-instance v3, Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;

    const-string v5, "NONE"

    const/4 v6, 0x2

    const-string v7, "none"

    invoke-direct {v3, v5, v6, v7}, Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;->NONE:Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;

    const/4 v5, 0x3

    new-array v5, v5, [Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 52
    sput-object v5, Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;->$VALUES:[Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput-object p3, p0, Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;->mOrientation:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;
    .locals 1

    .line 52
    const-class v0, Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;

    return-object p0
.end method

.method public static values()[Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;
    .locals 1

    .line 52
    sget-object v0, Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;->$VALUES:[Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;

    invoke-virtual {v0}, [Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lnet/pubnative/lite/sdk/DeviceInfo$Orientation;->mOrientation:Ljava/lang/String;

    return-object v0
.end method
