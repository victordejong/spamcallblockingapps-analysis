.class public Lsa1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# static fields
.field public static a:Z = true


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_0

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method

.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    sget-boolean p1, Lsa1;->a:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    sput-boolean p1, Lsa1;->a:Z

    invoke-static {}, Lj61;->d()V

    invoke-static {}, Lr71;->m()[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_0

    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lnf;->b(Landroid/content/Context;)Lnf;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.kedlin.cch.intent.INTENT_ACTION_CHECK_ADV_ID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lnf;->d(Landroid/content/Intent;)Z

    :cond_0
    sget-object p1, Lr71$a;->V:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lnf;->b(Landroid/content/Context;)Lnf;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Laa1;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lnf;->d(Landroid/content/Intent;)Z

    :cond_2
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lsa1;->a:Z

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    return-void
.end method

.method public onUnavailable()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lsa1;->a:Z

    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    return-void
.end method
