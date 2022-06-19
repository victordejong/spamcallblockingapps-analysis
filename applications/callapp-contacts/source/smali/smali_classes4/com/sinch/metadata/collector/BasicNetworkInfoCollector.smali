.class public final Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sinch/metadata/collector/MetadataCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sinch/metadata/collector/MetadataCollector<",
        "Lcom/sinch/metadata/model/network/NetworkInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u000c\u0012\u0004\u0012\u00020\u00020\u0001j\u0002`\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u001b\u001a\u00020\u0002H\u0016J\u0008\u0010\u001c\u001a\u00020\u001dH\u0002J\u0008\u0010\u001e\u001a\u00020\u001fH\u0002R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u000c\u001a\u0004\u0008\u0011\u0010\u0012R\u0018\u0010\u0014\u001a\u00020\u0015*\u00020\u00088CX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u0019*\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u001a\u00a8\u0006 "
    }
    d2 = {
        "Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;",
        "Lcom/sinch/metadata/collector/MetadataCollector;",
        "Lcom/sinch/metadata/model/network/NetworkInfo;",
        "Lcom/sinch/metadata/collector/NetworkInfoCollector;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "connectivityManager",
        "Landroid/net/ConnectivityManager;",
        "getConnectivityManager",
        "()Landroid/net/ConnectivityManager;",
        "connectivityManager$delegate",
        "Lkotlin/Lazy;",
        "logger",
        "Lcom/sinch/logging/Logger;",
        "telephonyManager",
        "Landroid/telephony/TelephonyManager;",
        "getTelephonyManager",
        "()Landroid/telephony/TelephonyManager;",
        "telephonyManager$delegate",
        "activeNetworkType",
        "Lcom/sinch/metadata/model/network/NetworkType;",
        "getActiveNetworkType",
        "(Landroid/net/ConnectivityManager;)Lcom/sinch/metadata/model/network/NetworkType;",
        "isVoiceCapableSafe",
        "",
        "(Landroid/telephony/TelephonyManager;)Ljava/lang/Boolean;",
        "collect",
        "collectNetworkData",
        "Lcom/sinch/metadata/model/network/NetworkData;",
        "emitPermissionWarning",
        "",
        "metadata-collector_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final connectivityManager$delegate:Lkotlin/Lazy;

.field private final context:Landroid/content/Context;

.field private final logger:Lcom/sinch/logging/Logger;

.field private final telephonyManager$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;->context:Landroid/content/Context;

    .line 24
    invoke-static {p0}, Lcom/sinch/logging/LogKt;->logger(Ljava/lang/Object;)Lcom/sinch/logging/Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;->logger:Lcom/sinch/logging/Logger;

    .line 26
    new-instance p1, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector$telephonyManager$2;

    invoke-direct {p1, p0}, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector$telephonyManager$2;-><init>(Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;->telephonyManager$delegate:Lkotlin/Lazy;

    .line 29
    new-instance p1, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector$connectivityManager$2;

    invoke-direct {p1, p0}, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector$connectivityManager$2;-><init>(Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;->connectivityManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$collectNetworkData(Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;)Lcom/sinch/metadata/model/network/NetworkData;
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;->collectNetworkData()Lcom/sinch/metadata/model/network/NetworkData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$emitPermissionWarning(Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;->emitPermissionWarning()V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;)Landroid/content/Context;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;->context:Landroid/content/Context;

    return-object p0
.end method

.method private final collectNetworkData()Lcom/sinch/metadata/model/network/NetworkData;
    .locals 2

    .line 45
    new-instance v0, Lcom/sinch/metadata/model/network/NetworkData;

    invoke-direct {p0}, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;->getActiveNetworkType(Landroid/net/ConnectivityManager;)Lcom/sinch/metadata/model/network/NetworkType;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sinch/metadata/model/network/NetworkData;-><init>(Lcom/sinch/metadata/model/network/NetworkType;)V

    return-object v0
.end method

.method private final emitPermissionWarning()V
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;->logger:Lcom/sinch/logging/Logger;

    .line 50
    sget-object v1, Lcom/sinch/verification/utils/permission/PermissionUtils;->INSTANCE:Lcom/sinch/verification/utils/permission/PermissionUtils;

    .line 51
    sget-object v2, Lcom/sinch/verification/utils/permission/Permission;->ACCESS_NETWORK_STATE:Lcom/sinch/verification/utils/permission/Permission;

    const-string v3, "NetworkData"

    .line 50
    invoke-virtual {v1, v2, v3}, Lcom/sinch/verification/utils/permission/PermissionUtils;->permissionMetadataWarning(Lcom/sinch/verification/utils/permission/Permission;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 49
    invoke-static {v0, v1, v2, v3, v2}, Lcom/sinch/logging/Logger$DefaultImpls;->warn$default(Lcom/sinch/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method private final getActiveNetworkType(Landroid/net/ConnectivityManager;)Lcom/sinch/metadata/model/network/NetworkType;
    .locals 1

    .line 68
    sget-object v0, Lcom/sinch/verification/utils/api/ApiLevelUtils;->INSTANCE:Lcom/sinch/verification/utils/api/ApiLevelUtils;

    invoke-virtual {v0}, Lcom/sinch/verification/utils/api/ApiLevelUtils;->isApi23OrLater()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/sinch/metadata/model/network/NetworkType;->Companion:Lcom/sinch/metadata/model/network/NetworkType$Companion;

    invoke-virtual {v0, p1}, Lcom/sinch/metadata/model/network/NetworkType$Companion;->basedOn(Landroid/net/NetworkCapabilities;)Lcom/sinch/metadata/model/network/NetworkType;

    move-result-object p1

    if-nez p1, :cond_3

    .line 70
    :cond_0
    sget-object p1, Lcom/sinch/metadata/model/network/NetworkType;->NONE:Lcom/sinch/metadata/model/network/NetworkType;

    return-object p1

    .line 73
    :cond_1
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object v0, Lcom/sinch/metadata/model/network/NetworkType;->Companion:Lcom/sinch/metadata/model/network/NetworkType$Companion;

    invoke-virtual {v0, p1}, Lcom/sinch/metadata/model/network/NetworkType$Companion;->basedOn(Landroid/net/NetworkInfo;)Lcom/sinch/metadata/model/network/NetworkType;

    move-result-object p1

    if-nez p1, :cond_3

    :cond_2
    sget-object p1, Lcom/sinch/metadata/model/network/NetworkType;->NONE:Lcom/sinch/metadata/model/network/NetworkType;

    :cond_3
    return-object p1
.end method

.method private final getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;->connectivityManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private final getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;->telephonyManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private final isVoiceCapableSafe(Landroid/telephony/TelephonyManager;)Ljava/lang/Boolean;
    .locals 1

    .line 59
    sget-object v0, Lcom/sinch/verification/utils/api/ApiLevelUtils;->INSTANCE:Lcom/sinch/verification/utils/api/ApiLevelUtils;

    invoke-virtual {v0}, Lcom/sinch/verification/utils/api/ApiLevelUtils;->isApi22OrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final collect()Lcom/sinch/metadata/model/network/NetworkInfo;
    .locals 6

    .line 34
    invoke-direct {p0}, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;->isVoiceCapableSafe(Landroid/telephony/TelephonyManager;)Ljava/lang/Boolean;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;->context:Landroid/content/Context;

    .line 37
    sget-object v2, Lcom/sinch/verification/utils/permission/Permission;->ACCESS_NETWORK_STATE:Lcom/sinch/verification/utils/permission/Permission;

    .line 38
    new-instance v3, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector$collect$networkData$1;

    move-object v4, p0

    check-cast v4, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;

    invoke-direct {v3, v4}, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector$collect$networkData$1;-><init>(Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 39
    new-instance v5, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector$collect$networkData$2;

    invoke-direct {v5, v4}, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector$collect$networkData$2;-><init>(Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 36
    invoke-static {v1, v2, v3, v5}, Lcom/sinch/verification/utils/permission/PermissionUtilsKt;->runIfPermissionGranted(Landroid/content/Context;Lcom/sinch/verification/utils/permission/Permission;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 35
    check-cast v1, Lcom/sinch/metadata/model/network/NetworkData;

    .line 41
    new-instance v2, Lcom/sinch/metadata/model/network/NetworkInfo;

    invoke-direct {v2, v0, v1}, Lcom/sinch/metadata/model/network/NetworkInfo;-><init>(Ljava/lang/Boolean;Lcom/sinch/metadata/model/network/NetworkData;)V

    return-object v2
.end method

.method public final bridge synthetic collect()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;->collect()Lcom/sinch/metadata/model/network/NetworkInfo;

    move-result-object v0

    return-object v0
.end method
