.class public final enum Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CELLULAR_NETWORK_2G:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

.field public static final enum CELLULAR_NETWORK_3G:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

.field public static final enum CELLULAR_NETWORK_4G:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

.field public static final enum CELLULAR_NETWORK_5G:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

.field public static final enum CELLULAR_NETWORK_UN:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

.field public static final enum ETHERNET:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

.field public static final enum UNKNOWN:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

.field public static final enum WIFI:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

.field private static final synthetic b:[Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;->UNKNOWN:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    new-instance v1, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    const-string v3, "ETHERNET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;->ETHERNET:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    new-instance v3, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    const-string v5, "WIFI"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;->WIFI:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    new-instance v5, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    const-string v7, "CELLULAR_NETWORK_UN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;->CELLULAR_NETWORK_UN:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    new-instance v7, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    const-string v9, "CELLULAR_NETWORK_2G"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;->CELLULAR_NETWORK_2G:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    new-instance v9, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    const-string v11, "CELLULAR_NETWORK_3G"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;->CELLULAR_NETWORK_3G:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    new-instance v11, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    const-string v13, "CELLULAR_NETWORK_4G"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;->CELLULAR_NETWORK_4G:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    new-instance v13, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    const-string v15, "CELLULAR_NETWORK_5G"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;->CELLULAR_NETWORK_5G:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;->b:[Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;
    .locals 1

    const-class v0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    return-object p0
.end method

.method public static values()[Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;->b:[Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;->a:I

    return v0
.end method
