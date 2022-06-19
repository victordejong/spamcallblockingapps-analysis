.class public Lcom/callapp/contacts/manager/WifiLockManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;


# instance fields
.field private a:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    monitor-enter p0

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/WifiLockManager;->a:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_0

    .line 29
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x3

    const-string v2, "CallApp"

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/manager/WifiLockManager;->a:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/WifiLockManager;->a:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/WifiLockManager;->a:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public destroy()V
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/WifiLockManager;->b()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/callapp/contacts/manager/WifiLockManager;->a:Landroid/net/wifi/WifiManager$WifiLock;

    return-void
.end method

.method public init()V
    .locals 0

    return-void
.end method
