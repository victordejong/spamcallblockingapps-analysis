.class Lcom/pubmatic/sdk/common/utility/POBLooper$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$PMConnectivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/common/utility/POBLooper;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/common/utility/POBLooper;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/common/utility/POBLooper;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/utility/POBLooper$b;->a:Lcom/pubmatic/sdk/common/utility/POBLooper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkConnectionChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBLooper$b;->a:Lcom/pubmatic/sdk/common/utility/POBLooper;

    invoke-static {v0, p1}, Lcom/pubmatic/sdk/common/utility/POBLooper;->a(Lcom/pubmatic/sdk/common/utility/POBLooper;Z)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Network connectivity = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBLooper$b;->a:Lcom/pubmatic/sdk/common/utility/POBLooper;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBLooper;->b(Lcom/pubmatic/sdk/common/utility/POBLooper;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PMLooper"

    invoke-static {v1, p1, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/common/utility/POBLooper$b;->a:Lcom/pubmatic/sdk/common/utility/POBLooper;

    invoke-static {p1}, Lcom/pubmatic/sdk/common/utility/POBLooper;->b(Lcom/pubmatic/sdk/common/utility/POBLooper;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/pubmatic/sdk/common/utility/POBLooper;->b(Lcom/pubmatic/sdk/common/utility/POBLooper;Z)V

    return-void
.end method
