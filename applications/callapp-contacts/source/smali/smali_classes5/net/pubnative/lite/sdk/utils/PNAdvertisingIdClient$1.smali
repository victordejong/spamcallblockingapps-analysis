.class Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;->getAdvertisingId(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;Landroid/content/Context;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$1;->this$0:Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "getAdvertisingIdInfo - Error: "

    const/4 v1, 0x0

    .line 65
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.google.android.gms"

    .line 66
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    new-instance v3, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$AdvertisingConnection;

    iget-object v4, p0, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$1;->this$0:Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;

    invoke-direct {v3, v4}, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$AdvertisingConnection;-><init>(Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 69
    :try_start_1
    iget-object v4, p0, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$1;->val$context:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v3, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    new-instance v2, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$AdvertisingInterface;

    iget-object v4, p0, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$1;->this$0:Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;

    invoke-virtual {v3}, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$AdvertisingConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$AdvertisingInterface;-><init>(Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;Landroid/os/IBinder;)V

    .line 71
    new-instance v4, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$AdInfo;

    iget-object v6, p0, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$1;->this$0:Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;

    invoke-virtual {v2}, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$AdvertisingInterface;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5}, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$AdvertisingInterface;->isLimitAdTrackingEnabled(Z)Z

    move-result v2

    invoke-direct {v4, v6, v7, v2}, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$AdInfo;-><init>(Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    move-object v4, v1

    .line 76
    :goto_0
    :try_start_2
    iget-object v2, p0, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 74
    :try_start_3
    invoke-static {}, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    :try_start_4
    iget-object v2, p0, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    move-object v4, v1

    goto :goto_3

    :goto_1
    iget-object v4, p0, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v2

    move-object v4, v1

    .line 79
    :goto_2
    invoke-static {}, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/4 v0, 0x0

    if-eqz v4, :cond_2

    .line 85
    invoke-virtual {v4}, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-static {}, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;->access$000()Ljava/lang/String;

    goto :goto_4

    .line 89
    :cond_1
    invoke-virtual {v4}, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 93
    :cond_2
    :goto_4
    iget-object v2, p0, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient$1;->this$0:Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;

    invoke-virtual {v2, v1, v0}, Lnet/pubnative/lite/sdk/utils/PNAdvertisingIdClient;->invokeOnFinish(Ljava/lang/String;Z)V

    return-void
.end method
