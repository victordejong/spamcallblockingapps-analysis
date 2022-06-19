.class Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->a()V
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

    iput-object p1, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$d;->a:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$d;->a:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->b(Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;)V

    return-void
.end method
