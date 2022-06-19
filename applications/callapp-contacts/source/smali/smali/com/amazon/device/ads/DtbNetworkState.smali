.class Lcom/amazon/device/ads/DtbNetworkState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/amazon/device/ads/DtbNetworkState;


# instance fields
.field final b:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/amazon/device/ads/DtbNetworkState;

    invoke-direct {v0}, Lcom/amazon/device/ads/DtbNetworkState;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/DtbNetworkState;->a:Lcom/amazon/device/ads/DtbNetworkState;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/amazon/device/ads/DtbNetworkState;->b:Landroid/net/ConnectivityManager;

    return-void
.end method
