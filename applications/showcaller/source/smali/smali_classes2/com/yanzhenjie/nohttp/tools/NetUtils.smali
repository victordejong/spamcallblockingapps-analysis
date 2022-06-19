.class public Lcom/yanzhenjie/nohttp/tools/NetUtils;
.super Ljava/lang/Object;
.source "NetUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;
    }
.end annotation


# static fields
.field private static final IPV4_PATTERN:Ljava/util/regex/Pattern;

.field private static final IPV6_HEX_COMPRESSED_PATTERN:Ljava/util/regex/Pattern;

.field private static final IPV6_STD_PATTERN:Ljava/util/regex/Pattern;

.field private static sConnectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/yanzhenjie/nohttp/tools/NetUtils;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^[0-9a-fA-F]{1,4}(:[0-9a-fA-F]{1,4}){7}$"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/yanzhenjie/nohttp/tools/NetUtils;->IPV6_STD_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^(([0-9A-Fa-f]{1,4}(:[0-9A-Fa-f]{1,4}){0,5})?)::(([0-9A-Fa-f]{1,4}(:[0-9A-Fa-f]{1,4}){0,5})?)$"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/yanzhenjie/nohttp/tools/NetUtils;->IPV6_HEX_COMPRESSED_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 3

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/tools/NetUtils;->sConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/yanzhenjie/nohttp/tools/NetUtils;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/yanzhenjie/nohttp/tools/NetUtils;->sConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lcom/yanzhenjie/nohttp/NoHttp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    sput-object v1, Lcom/yanzhenjie/nohttp/tools/NetUtils;->sConnectivityManager:Landroid/net/ConnectivityManager;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/yanzhenjie/nohttp/tools/NetUtils;->sConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public static getLocalIPAddress()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lcom/yanzhenjie/nohttp/Logger;->w(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 5
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 8
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yanzhenjie/nohttp/tools/NetUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method private static isConnected(Landroid/net/NetworkInfo;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isConnected(Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;Landroid/net/NetworkInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    sget-object v1, Lcom/yanzhenjie/nohttp/tools/NetUtils$1;->$SwitchMap$com$yanzhenjie$nohttp$tools$NetUtils$NetType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    return v0

    .line 2
    :pswitch_0
    sget-object p0, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;->Mobile:Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    invoke-static {p0, p1}, Lcom/yanzhenjie/nohttp/tools/NetUtils;->isConnected(Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;Landroid/net/NetworkInfo;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    .line 3
    :cond_1
    sget-object p0, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;->Mobile4G:Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    invoke-static {p0, p1}, Lcom/yanzhenjie/nohttp/tools/NetUtils;->isMobileSubType(Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;Landroid/net/NetworkInfo;)Z

    move-result p0

    return p0

    .line 4
    :pswitch_1
    sget-object p0, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;->Mobile:Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    invoke-static {p0, p1}, Lcom/yanzhenjie/nohttp/tools/NetUtils;->isConnected(Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;Landroid/net/NetworkInfo;)Z

    move-result p0

    if-nez p0, :cond_2

    return v0

    .line 5
    :cond_2
    sget-object p0, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;->Mobile3G:Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    invoke-static {p0, p1}, Lcom/yanzhenjie/nohttp/tools/NetUtils;->isMobileSubType(Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;Landroid/net/NetworkInfo;)Z

    move-result p0

    return p0

    .line 6
    :pswitch_2
    sget-object p0, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;->Mobile:Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    invoke-static {p0, p1}, Lcom/yanzhenjie/nohttp/tools/NetUtils;->isConnected(Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;Landroid/net/NetworkInfo;)Z

    move-result p0

    if-nez p0, :cond_3

    return v0

    .line 7
    :cond_3
    sget-object p0, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;->Mobile2G:Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    invoke-static {p0, p1}, Lcom/yanzhenjie/nohttp/tools/NetUtils;->isMobileSubType(Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;Landroid/net/NetworkInfo;)Z

    move-result p0

    return p0

    .line 8
    :pswitch_3
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/tools/NetUtils;->isConnected(Landroid/net/NetworkInfo;)Z

    move-result p0

    if-nez p0, :cond_4

    return v0

    .line 9
    :cond_4
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-nez p0, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0

    .line 10
    :pswitch_4
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/tools/NetUtils;->isConnected(Landroid/net/NetworkInfo;)Z

    move-result p0

    if-nez p0, :cond_6

    return v0

    .line 11
    :cond_6
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt p0, v2, :cond_7

    .line 12
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/16 p1, 0x9

    if-ne p0, p1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0

    .line 13
    :pswitch_5
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/tools/NetUtils;->isConnected(Landroid/net/NetworkInfo;)Z

    move-result p0

    if-nez p0, :cond_8

    return v0

    .line 14
    :cond_8
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-ne p0, v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isGPRSOpen()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/yanzhenjie/nohttp/tools/NetUtils;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 2
    sget-object v0, Lcom/yanzhenjie/nohttp/tools/NetUtils;->sConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "getMobileDataEnabled"

    new-array v3, v1, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 5
    sget-object v2, Lcom/yanzhenjie/nohttp/tools/NetUtils;->sConnectivityManager:Landroid/net/ConnectivityManager;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    return v1
.end method

.method public static isIPv4Address(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/tools/NetUtils;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isIPv6Address(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/yanzhenjie/nohttp/tools/NetUtils;->isIPv6StdAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/yanzhenjie/nohttp/tools/NetUtils;->isIPv6HexCompressedAddress(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isIPv6HexCompressedAddress(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    if-gt v2, v1, :cond_2

    .line 3
    sget-object v1, Lcom/yanzhenjie/nohttp/tools/NetUtils;->IPV6_HEX_COMPRESSED_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static isIPv6StdAddress(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/tools/NetUtils;->IPV6_STD_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isMobile2GConnected()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;->Mobile2G:Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    invoke-static {v0}, Lcom/yanzhenjie/nohttp/tools/NetUtils;->isNetworkAvailable(Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;)Z

    move-result v0

    return v0
.end method

.method public static isMobile3GConnected()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;->Mobile3G:Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    invoke-static {v0}, Lcom/yanzhenjie/nohttp/tools/NetUtils;->isNetworkAvailable(Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;)Z

    move-result v0

    return v0
.end method

.method public static isMobile4GConnected()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;->Mobile4G:Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    invoke-static {v0}, Lcom/yanzhenjie/nohttp/tools/NetUtils;->isNetworkAvailable(Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;)Z

    move-result v0

    return v0
.end method

.method public static isMobileConnected()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;->Mobile:Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    invoke-static {v0}, Lcom/yanzhenjie/nohttp/tools/NetUtils;->isNetworkAvailable(Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;)Z

    move-result v0

    return v0
.end method

.method private static isMobileSubType(Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;Landroid/net/NetworkInfo;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TD-SCDMA"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "WCDMA"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "CDMA2000"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    .line 6
    :pswitch_0
    sget-object p1, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;->Mobile4G:Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 7
    :pswitch_1
    sget-object p1, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;->Mobile3G:Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 8
    :pswitch_2
    sget-object p1, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;->Mobile2G:Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    if-ne p0, p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1

    :cond_3
    return v2

    .line 9
    :cond_4
    :goto_3
    sget-object p1, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;->Mobile3G:Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    if-ne p0, p1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    return v1

    nop

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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isNetworkAvailable()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/yanzhenjie/nohttp/tools/NetUtils;->isWifiConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/yanzhenjie/nohttp/tools/NetUtils;->isWiredConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/yanzhenjie/nohttp/tools/NetUtils;->isMobileConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isNetworkAvailable(Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;)Z
    .locals 1

    .line 4
    invoke-static {}, Lcom/yanzhenjie/nohttp/tools/NetUtils;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 5
    sget-object v0, Lcom/yanzhenjie/nohttp/tools/NetUtils;->sConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yanzhenjie/nohttp/tools/NetUtils;->isConnected(Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;Landroid/net/NetworkInfo;)Z

    move-result p0

    return p0
.end method

.method public static isWifiConnected()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;->Wifi:Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    invoke-static {v0}, Lcom/yanzhenjie/nohttp/tools/NetUtils;->isNetworkAvailable(Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;)Z

    move-result v0

    return v0
.end method

.method public static isWiredConnected()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;->Wired:Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;

    invoke-static {v0}, Lcom/yanzhenjie/nohttp/tools/NetUtils;->isNetworkAvailable(Lcom/yanzhenjie/nohttp/tools/NetUtils$NetType;)Z

    move-result v0

    return v0
.end method

.method public static openSetting()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    invoke-static {}, Lcom/yanzhenjie/nohttp/NoHttp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static setGPRSEnable(Z)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/yanzhenjie/nohttp/tools/NetUtils;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 2
    sget-object v0, Lcom/yanzhenjie/nohttp/tools/NetUtils;->sConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    const-string v1, "setMobileDataEnabled"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 3
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 5
    sget-object v1, Lcom/yanzhenjie/nohttp/tools/NetUtils;->sConnectivityManager:Landroid/net/ConnectivityManager;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
