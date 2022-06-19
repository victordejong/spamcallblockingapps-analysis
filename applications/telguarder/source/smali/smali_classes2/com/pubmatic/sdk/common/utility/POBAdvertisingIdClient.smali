.class public final Lcom/pubmatic/sdk/common/utility/POBAdvertisingIdClient;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/common/utility/POBAdvertisingIdClient$c;,
        Lcom/pubmatic/sdk/common/utility/POBAdvertisingIdClient$b;,
        Lcom/pubmatic/sdk/common/utility/POBAdvertisingIdClient$AdInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdvertisingIdInfo(Landroid/content/Context;)Lcom/pubmatic/sdk/common/utility/POBAdvertisingIdClient$AdInfo;
    .locals 6

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/pubmatic/sdk/common/utility/POBAdvertisingIdClient$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pubmatic/sdk/common/utility/POBAdvertisingIdClient$b;-><init>(Lcom/pubmatic/sdk/common/utility/POBAdvertisingIdClient$a;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.google.android.gms"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Lcom/pubmatic/sdk/common/utility/POBAdvertisingIdClient$c;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/utility/POBAdvertisingIdClient$b;->a()Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/pubmatic/sdk/common/utility/POBAdvertisingIdClient$c;-><init>(Landroid/os/IBinder;)V

    new-instance v4, Lcom/pubmatic/sdk/common/utility/POBAdvertisingIdClient$AdInfo;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/common/utility/POBAdvertisingIdClient$c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3}, Lcom/pubmatic/sdk/common/utility/POBAdvertisingIdClient$c;->a(Z)Z

    move-result v2

    invoke-direct {v4, v5, v2}, Lcom/pubmatic/sdk/common/utility/POBAdvertisingIdClient$AdInfo;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    move-object v1, v4

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    const-string v2, "AdvertisingIdClient"

    const-string v3, "Failed to get AdvertisingIdInfo"

    const/4 v4, 0x0

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :goto_0
    return-object v1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v1

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Google Play connection failed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot be called from the main thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
