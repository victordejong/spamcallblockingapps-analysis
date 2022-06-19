.class public final enum Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Connectivity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;

.field public static final enum ETHERNET:Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;

.field public static final enum NONE:Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;

.field public static final enum WIFI:Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;

.field public static final enum WWAN:Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;


# instance fields
.field private final mConnectivity:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 70
    new-instance v0, Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;

    const-string v1, "ETHERNET"

    const/4 v2, 0x0

    const-string v3, "ethernet"

    invoke-direct {v0, v1, v2, v3}, Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;->ETHERNET:Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;

    .line 71
    new-instance v1, Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;

    const-string v3, "WIFI"

    const/4 v4, 0x1

    const-string/jumbo v5, "wifi"

    invoke-direct {v1, v3, v4, v5}, Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;->WIFI:Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;

    .line 72
    new-instance v3, Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;

    const-string v5, "WWAN"

    const/4 v6, 0x2

    const-string/jumbo v7, "wwan"

    invoke-direct {v3, v5, v6, v7}, Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;->WWAN:Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;

    .line 73
    new-instance v5, Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;

    const-string v7, "NONE"

    const/4 v8, 0x3

    const-string v9, "none"

    invoke-direct {v5, v7, v8, v9}, Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;->NONE:Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;

    const/4 v7, 0x4

    new-array v7, v7, [Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 69
    sput-object v7, Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;->$VALUES:[Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;

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

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput-object p3, p0, Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;->mConnectivity:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;
    .locals 1

    .line 69
    const-class v0, Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;

    return-object p0
.end method

.method public static values()[Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;
    .locals 1

    .line 69
    sget-object v0, Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;->$VALUES:[Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;

    invoke-virtual {v0}, [Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lnet/pubnative/lite/sdk/DeviceInfo$Connectivity;->mConnectivity:Ljava/lang/String;

    return-object v0
.end method
