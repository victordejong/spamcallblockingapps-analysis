.class Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$a;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$a;->a:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    iget-object p1, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$a;->a:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;

    invoke-static {p1}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->a(Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    iget-object p1, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$a;->a:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;

    invoke-static {p1}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->a(Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;)V

    return-void
.end method
