.class public Lio/bidmachine/utils/BluetoothUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static isRegistered:Z

.field private static final listener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private static final profileArray:[I

.field private static final proxyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/bluetooth/BluetoothProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 24
    sput-object v1, Lio/bidmachine/utils/BluetoothUtils;->profileArray:[I

    .line 29
    new-instance v0, Ljava/util/HashMap;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lio/bidmachine/utils/BluetoothUtils;->proxyMap:Ljava/util/Map;

    .line 30
    new-instance v0, Lio/bidmachine/utils/BluetoothUtils$1;

    invoke-direct {v0}, Lio/bidmachine/utils/BluetoothUtils$1;-><init>()V

    sput-object v0, Lio/bidmachine/utils/BluetoothUtils;->listener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 42
    sput-boolean v2, Lio/bidmachine/utils/BluetoothUtils;->isRegistered:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 22
    sget-object v0, Lio/bidmachine/utils/BluetoothUtils;->proxyMap:Ljava/util/Map;

    return-object v0
.end method

.method private static getConnectedDevices(Landroid/content/Context;Ljava/lang/Integer;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "android.permission.BLUETOOTH"

    .line 93
    invoke-static {p0, v0}, Lio/bidmachine/core/Utils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 98
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 102
    :cond_1
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    :try_start_1
    sget-object v0, Lio/bidmachine/utils/BluetoothUtils;->proxyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz p1, :cond_3

    .line 104
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 105
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothProfile;

    if-eqz v1, :cond_2

    .line 107
    invoke-interface {v1}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 108
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 110
    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, p0

    :catch_1
    move-object p0, v0

    :cond_5
    return-object p0
.end method

.method public static getConnectedHeadsets(Landroid/content/Context;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lio/bidmachine/utils/BluetoothUtils;->getConnectedDevices(Landroid/content/Context;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static isHeadsetConnected(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 3

    const-string v0, "android.permission.BLUETOOTH"

    .line 71
    invoke-static {p0, v0}, Lio/bidmachine/core/Utils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 75
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    .line 77
    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    const/4 v2, 0x2

    if-ne p0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 79
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static register(Landroid/content/Context;)V
    .locals 7

    if-eqz p0, :cond_5

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 48
    :cond_0
    sget-boolean v0, Lio/bidmachine/utils/BluetoothUtils;->isRegistered:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "android.permission.BLUETOOTH"

    .line 51
    invoke-static {p0, v0}, Lio/bidmachine/core/Utils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 55
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 59
    :cond_3
    sget-object v1, Lio/bidmachine/utils/BluetoothUtils;->profileArray:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget v4, v1, v3

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lio/bidmachine/utils/BluetoothUtils;->listener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v0, v5, v6, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_4
    const/4 p0, 0x1

    .line 66
    sput-boolean p0, Lio/bidmachine/utils/BluetoothUtils;->isRegistered:Z

    :cond_5
    :goto_1
    return-void
.end method
