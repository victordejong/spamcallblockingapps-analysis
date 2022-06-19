.class Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$c;
.super Landroid/telephony/PhoneStateListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->a(Landroid/telephony/TelephonyManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/telephony/TelephonyManager;

.field final synthetic b:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;Landroid/telephony/TelephonyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$c;->b:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;

    iput-object p2, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$c;->a:Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V

    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$c;->b:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;

    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result p1

    invoke-static {v0, p1}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->a(Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;I)Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->a(Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;)Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$c;->b:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;

    sget-object v0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;->CELLULAR_NETWORK_5G:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    invoke-static {p1, v0}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->a(Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;)Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    :goto_1
    iget-object p1, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$c;->a:Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
