.class Lcom/pubmatic/sdk/common/models/POBDeviceInfo$a;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->updateAdvertisingIdInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/common/models/POBDeviceInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo$a;->a:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo$a;->a:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    invoke-static {v1}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->a(Lcom/pubmatic/sdk/common/models/POBDeviceInfo;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/pubmatic/sdk/common/utility/POBAdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/pubmatic/sdk/common/utility/POBAdvertisingIdClient$AdInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/utility/POBAdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo$a;->a:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/utility/POBAdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->a(Lcom/pubmatic/sdk/common/models/POBDeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo$a;->a:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/utility/POBAdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->a(Lcom/pubmatic/sdk/common/models/POBDeviceInfo;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo$a;->a:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    invoke-static {v1}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->b(Lcom/pubmatic/sdk/common/models/POBDeviceInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo$a;->a:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    invoke-static {v2}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->d(Lcom/pubmatic/sdk/common/models/POBDeviceInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo$a;->a:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    invoke-static {v1}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->b(Lcom/pubmatic/sdk/common/models/POBDeviceInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->b(Lcom/pubmatic/sdk/common/models/POBDeviceInfo;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo$a;->a:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    invoke-static {v1}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->c(Lcom/pubmatic/sdk/common/models/POBDeviceInfo;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo$a;->a:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    invoke-static {v1}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->c(Lcom/pubmatic/sdk/common/models/POBDeviceInfo;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/2addr v1, v0

    iget-object v2, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo$a;->a:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    invoke-static {v2}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->e(Lcom/pubmatic/sdk/common/models/POBDeviceInfo;)Z

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/pubmatic/sdk/common/models/POBDeviceInfo$a;->a:Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    invoke-static {v1}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->c(Lcom/pubmatic/sdk/common/models/POBDeviceInfo;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->a(Lcom/pubmatic/sdk/common/models/POBDeviceInfo;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "PMDeviceInfo"

    const-string v2, "Failed to retrieve advertising Id from device : %s"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
