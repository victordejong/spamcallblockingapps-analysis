.class public Lcom/google/android/gms/ads/MobileAds;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/MobileAds$Settings;
    }
.end annotation


# static fields
.field public static final ERROR_DOMAIN:Ljava/lang/String; = "com.google.android.gms.ads"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableMediationAdapterInitialization(Landroid/content/Context;)V
    .locals 2

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/emy;->a()Lcom/google/android/gms/internal/ads/emy;

    move-result-object v0

    .line 2134
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/emy;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2135
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/emy;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2136
    :try_start_1
    iget-object p0, v0, Lcom/google/android/gms/internal/ads/emy;->b:Lcom/google/android/gms/internal/ads/eln;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/eln;->f()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p0, "Unable to disable mediation adapter initialization."

    .line 2139
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/za;->zzex(Ljava/lang/String;)V

    .line 2140
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static getInitializationStatus()Lcom/google/android/gms/ads/initialization/InitializationStatus;
    .locals 1

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/ads/emy;->a()Lcom/google/android/gms/internal/ads/emy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/emy;->e()Lcom/google/android/gms/ads/initialization/InitializationStatus;

    move-result-object v0

    return-object v0
.end method

.method public static getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;
    .locals 1

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/ads/emy;->a()Lcom/google/android/gms/internal/ads/emy;

    move-result-object v0

    .line 1148
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emy;->c:Lcom/google/android/gms/ads/RequestConfiguration;

    return-object v0
.end method

.method public static getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/emy;->a()Lcom/google/android/gms/internal/ads/emy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/emy;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object p0

    return-object p0
.end method

.method public static getVersionString()Ljava/lang/String;
    .locals 1

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/emy;->a()Lcom/google/android/gms/internal/ads/emy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/emy;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-static {p0, v0, v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/MobileAds$Settings;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V
    .locals 2

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/emy;->a()Lcom/google/android/gms/internal/ads/emy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/android/gms/internal/ads/emy;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/MobileAds$Settings;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/MobileAds$Settings;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/emy;->a()Lcom/google/android/gms/internal/ads/emy;

    move-result-object p2

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p2, p0, p1, v0}, Lcom/google/android/gms/internal/ads/emy;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    return-void
.end method

.method public static openDebugMenu(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/emy;->a()Lcom/google/android/gms/internal/ads/emy;

    move-result-object v0

    .line 1104
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/emy;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1105
    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/emy;->b:Lcom/google/android/gms/internal/ads/eln;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "MobileAds.initialize() must be called prior to opening debug menu."

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    :try_start_1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emy;->b:Lcom/google/android/gms/internal/ads/eln;

    invoke-static {p0}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/eln;->a(Lcom/google/android/gms/dynamic/b;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "Unable to open debug menu."

    .line 1109
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1110
    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static registerRtbAdapter(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/emy;->a()Lcom/google/android/gms/internal/ads/emy;

    move-result-object v0

    .line 1119
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/emy;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1120
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emy;->b:Lcom/google/android/gms/internal/ads/eln;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/eln;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string v0, "Unable to register RtbAdapter"

    .line 1123
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1124
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static setAppMuted(Z)V
    .locals 4

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/emy;->a()Lcom/google/android/gms/internal/ads/emy;

    move-result-object v0

    .line 1087
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/emy;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1088
    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/emy;->b:Lcom/google/android/gms/internal/ads/eln;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "MobileAds.initialize() must be called prior to setting app muted state."

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1089
    :try_start_1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emy;->b:Lcom/google/android/gms/internal/ads/eln;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/eln;->a(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    const-string v0, "Unable to set app mute state."

    .line 1092
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1093
    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static setAppVolume(F)V
    .locals 5

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/emy;->a()Lcom/google/android/gms/internal/ads/emy;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpg-float v3, v3, p0

    if-gtz v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, p0, v3

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "The app volume must be a value between 0 and 1 inclusive."

    .line 1069
    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/o;->b(ZLjava/lang/Object;)V

    .line 1070
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/emy;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 1071
    :try_start_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/emy;->b:Lcom/google/android/gms/internal/ads/eln;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v2, "MobileAds.initialize() must be called prior to setting the app volume."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1072
    :try_start_1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emy;->b:Lcom/google/android/gms/internal/ads/eln;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/eln;->a(F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string v0, "Unable to set app volume."

    .line 1075
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1076
    :goto_2
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V
    .locals 5

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/emy;->a()Lcom/google/android/gms/internal/ads/emy;

    move-result-object v0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Null passed to setRequestConfiguration."

    .line 1149
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/o;->b(ZLjava/lang/Object;)V

    .line 1150
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/emy;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1151
    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/emy;->c:Lcom/google/android/gms/ads/RequestConfiguration;

    .line 1152
    iput-object p0, v0, Lcom/google/android/gms/internal/ads/emy;->c:Lcom/google/android/gms/ads/RequestConfiguration;

    .line 1153
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/emy;->b:Lcom/google/android/gms/internal/ads/eln;

    if-nez v3, :cond_1

    .line 1154
    monitor-exit v1

    return-void

    .line 1155
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForChildDirectedTreatment()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForChildDirectedTreatment()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1156
    invoke-virtual {v2}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForUnderAgeOfConsent()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForUnderAgeOfConsent()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 1157
    :cond_2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/emy;->a(Lcom/google/android/gms/ads/RequestConfiguration;)V

    .line 1158
    :cond_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
