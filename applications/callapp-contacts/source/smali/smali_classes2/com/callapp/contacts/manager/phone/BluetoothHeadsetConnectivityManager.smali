.class public Lcom/callapp/contacts/manager/phone/BluetoothHeadsetConnectivityManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 14
    sput-object p0, Lcom/callapp/contacts/manager/phone/BluetoothHeadsetConnectivityManager;->a:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method public static a()V
    .locals 2

    .line 18
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->isUnitTestMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CallApp.BluetoothAdapter"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 21
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/os/Looper;)V

    .line 22
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 23
    new-instance v0, Lcom/callapp/contacts/manager/phone/BluetoothHeadsetConnectivityManager$1;

    invoke-direct {v0}, Lcom/callapp/contacts/manager/phone/BluetoothHeadsetConnectivityManager$1;-><init>()V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    invoke-static {}, Lcom/callapp/contacts/receiver/HeadsetReceiver;->a()V

    .line 32
    invoke-static {}, Lcom/callapp/contacts/receiver/BluetoothReceiver;->a()V

    :cond_0
    return-void
.end method

.method public static isBluetoothConnected()Z
    .locals 3

    .line 37
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    const-string v0, "android.permission.BLUETOOTH"

    invoke-static {v0}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/phone/BluetoothHeadsetConnectivityManager;->a:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/phone/BluetoothHeadsetConnectivityManager;->a:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isUsingBT()Z
    .locals 1

    .line 42
    invoke-static {}, Lcom/callapp/contacts/manager/phone/BluetoothHeadsetConnectivityManager;->isBluetoothConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isBluetoothAudioSCOActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
