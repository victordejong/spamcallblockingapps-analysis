.class final synthetic Lcom/google/android/gms/internal/ads/chk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/chl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/chl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/chk;->a:Lcom/google/android/gms/internal/ads/chl;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/chk;->a:Lcom/google/android/gms/internal/ads/chl;

    .line 1006
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/chl;->a:Landroid/content/Context;

    const-string v2, "phone"

    .line 1007
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1008
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    .line 1009
    invoke-static {}, Lcom/google/android/gms/common/util/n;->l()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/ads/aq;->eZ:Lcom/google/android/gms/internal/ads/af;

    .line 1010
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v2

    .line 1011
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    .line 1013
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    move v5, v2

    .line 1014
    :goto_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    const/4 v1, -0x2

    .line 1018
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/chl;->a:Landroid/content/Context;

    const-string v7, "android.permission.ACCESS_NETWORK_STATE"

    .line 1019
    invoke-static {v2, v7}, Lcom/google/android/gms/ads/internal/util/zzj;->zzp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v7, -0x1

    if-eqz v2, :cond_2

    .line 1020
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chl;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 1021
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1022
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1024
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    .line 1025
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    .line 1027
    :goto_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    move v8, v1

    move v4, v7

    move v7, v0

    goto :goto_2

    :cond_2
    const/4 v4, -0x2

    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 1028
    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/ads/chi;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/chi;-><init>(Ljava/lang/String;IIIZI)V

    return-object v0
.end method
