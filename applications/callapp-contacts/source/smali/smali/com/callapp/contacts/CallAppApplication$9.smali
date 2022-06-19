.class Lcom/callapp/contacts/CallAppApplication$9;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/CallAppApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/CallAppApplication;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/CallAppApplication;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/callapp/contacts/CallAppApplication$9;->a:Lcom/callapp/contacts/CallAppApplication;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 460
    iget-object v0, p0, Lcom/callapp/contacts/CallAppApplication$9;->a:Lcom/callapp/contacts/CallAppApplication;

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->isUnitTestMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 461
    invoke-static {}, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;->a()V

    .line 463
    invoke-static {}, Lcom/callapp/contacts/manager/phone/BluetoothHeadsetConnectivityManager;->a()V

    .line 464
    invoke-static {}, Lcom/callapp/contacts/receiver/SmsSentReceiver;->a()V

    .line 465
    invoke-static {}, Lcom/callapp/contacts/receiver/StartupReceiver;->a()V

    .line 469
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/util/GooglePlayUtils;->isGooglePlayServicesAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->setCollectIMEI(Z)V

    .line 473
    :cond_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/CallAppApplication$9;->a:Lcom/callapp/contacts/CallAppApplication;

    const v2, 0x7f1200b0

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/AppsFlyerLib;->startTracking(Landroid/content/Context;Ljava/lang/String;)V

    .line 475
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 476
    invoke-static {}, Lcom/callapp/contacts/receiver/WifiStateReceiver;->get()Lcom/callapp/contacts/receiver/WifiStateReceiver;

    move-result-object v0

    const-string v1, "connectivity"

    .line 1057
    invoke-static {v1}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, v0, Lcom/callapp/contacts/receiver/WifiStateReceiver;->a:Landroid/net/ConnectivityManager;

    .line 1058
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1059
    iget-object v2, v0, Lcom/callapp/contacts/receiver/WifiStateReceiver;->a:Landroid/net/ConnectivityManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v0, v0, Lcom/callapp/contacts/receiver/WifiStateReceiver;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v1, v0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
