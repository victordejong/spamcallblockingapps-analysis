.class public Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$POBNetworkUpdateReceiver;,
        Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$e;,
        Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$PMConnectivityListener;,
        Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

.field private final c:Landroid/net/ConnectivityManager;

.field protected connectivityListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$PMConnectivityListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;->UNKNOWN:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->b:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->a:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->c:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->c()V

    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->updateConnectionType()V

    return-void
.end method

.method private a(I)Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;
    .locals 1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;->CELLULAR_NETWORK_UN:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    goto :goto_0

    :pswitch_0
    sget-object p1, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;->CELLULAR_NETWORK_4G:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    goto :goto_0

    :pswitch_1
    sget-object p1, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;->CELLULAR_NETWORK_3G:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    goto :goto_0

    :pswitch_2
    sget-object p1, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;->CELLULAR_NETWORK_2G:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;->CELLULAR_NETWORK_5G:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;I)Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->a(I)Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;)Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->b:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    return-object p1
.end method

.method private a()V
    .locals 1

    new-instance v0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$d;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$d;-><init>(Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;)V

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Landroid/telephony/TelephonyManager;)V
    .locals 4

    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->a:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v1, "PMNetworkMonitor"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$c;

    invoke-direct {v0, p0, p1}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$c;-><init>(Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;Landroid/telephony/TelephonyManager;)V

    const/high16 v3, 0x100000

    invoke-virtual {p1, v0, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    sget-object v0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;->CELLULAR_NETWORK_UN:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->b:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not able fetch connection type due to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;->CELLULAR_NETWORK_UN:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    iput-object p1, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->b:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Not able fetch connection type due to android.permission.READ_PHONE_STATE permission is not available for the app!"

    invoke-static {v1, v0, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->a()V

    return-void
.end method

.method private b()V
    .locals 3

    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->updateConnectionType()V

    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->connectivityListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->connectivityListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->connectivityListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$PMConnectivityListener;

    iget-object v2, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$PMConnectivityListener;->onNetworkConnectionChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->b()V

    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->c:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    new-instance v1, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$a;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$a;-><init>(Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;)V

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$b;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$b;-><init>(Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;)V

    invoke-static {v0}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$POBNetworkUpdateReceiver;->setNetworkUpdateListener(Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$e;)V

    :goto_0
    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;->CELLULAR_NETWORK_UN:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    :goto_0
    iput-object v0, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->b:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    goto :goto_1

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->a(Landroid/telephony/TelephonyManager;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->a(I)Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    move-result-object v0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public getConnectionType()Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->b:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    return-object v0
.end method

.method public isNetworkAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isWiFiConnected()Z
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->b:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    sget-object v1, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;->WIFI:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerConnectivityListener(Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$PMConnectivityListener;)V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->connectivityListeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->connectivityListeners:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->connectivityListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetConnectivityListener()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->connectivityListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->connectivityListeners:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public unregisterConnectivityListener(Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$PMConnectivityListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->connectivityListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->connectivityListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->connectivityListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->connectivityListeners:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public updateConnectionType()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->c:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->a:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;->ETHERNET:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;->WIFI:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->d()V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;->UNKNOWN:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    :goto_0
    iput-object v0, p0, Lcom/pubmatic/sdk/common/network/PMNetworkMonitor;->b:Lcom/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType;

    :goto_1
    return-void
.end method
