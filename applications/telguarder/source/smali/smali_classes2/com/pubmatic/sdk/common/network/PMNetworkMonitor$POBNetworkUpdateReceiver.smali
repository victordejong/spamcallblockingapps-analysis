.class public Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$POBNetworkUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "POBNetworkUpdateReceiver"
.end annotation


# static fields
.field private static a:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static setNetworkUpdateListener(Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$e;)V
    .locals 0

    sput-object p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$POBNetworkUpdateReceiver;->a:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$e;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$POBNetworkUpdateReceiver;->a:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$e;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$e;->a()V

    :cond_0
    return-void
.end method
