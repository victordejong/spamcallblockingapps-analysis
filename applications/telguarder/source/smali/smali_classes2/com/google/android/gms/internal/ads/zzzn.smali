.class public Lcom/google/android/gms/internal/ads/zzzn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzzn$zza;
    }
.end annotation


# static fields
.field private static zzckt:Lcom/google/android/gms/internal/ads/zzzn;


# instance fields
.field private final lock:Ljava/lang/Object;

.field private zzcks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzcku:Lcom/google/android/gms/internal/ads/zzyg;

.field private zzckv:Z

.field private zzckw:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

.field private zzckx:Lcom/google/android/gms/ads/RequestConfiguration;

.field private zzcky:Lcom/google/android/gms/ads/initialization/InitializationStatus;

.field private zzzl:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzn;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzckv:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzzl:Z

    .line 5
    new-instance v0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;-><init>()V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzckx:Lcom/google/android/gms/ads/RequestConfiguration;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzcks:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzzn;Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;
    .locals 0

    .line 176
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzzn;->zzd(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzzn;)Ljava/util/ArrayList;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzcks:Ljava/util/ArrayList;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/ads/RequestConfiguration;)V
    .locals 2

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzcku:Lcom/google/android/gms/internal/ads/zzyg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaao;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaao;-><init>(Lcom/google/android/gms/ads/RequestConfiguration;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzyg;->zza(Lcom/google/android/gms/internal/ads/zzaao;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Unable to set request configuration parcel."

    .line 162
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzzn;Z)Z
    .locals 0

    const/4 p1, 0x0

    .line 174
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzckv:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzzn;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 175
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzzl:Z

    return p1
.end method

.method private static zzd(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzajh;",
            ">;)",
            "Lcom/google/android/gms/ads/initialization/InitializationStatus;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 142
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzajh;

    .line 143
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzajh;->zzdit:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzajp;

    .line 144
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzajh;->zzdiu:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/android/gms/ads/initialization/AdapterStatus$State;->READY:Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/google/android/gms/ads/initialization/AdapterStatus$State;->NOT_READY:Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

    :goto_1
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzajh;->description:Ljava/lang/String;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzajh;->zzdiv:I

    invoke-direct {v3, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzajp;-><init>(Lcom/google/android/gms/ads/initialization/AdapterStatus$State;Ljava/lang/String;I)V

    .line 145
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 147
    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzajo;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzajo;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method private final zzg(Landroid/content/Context;)V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzcku:Lcom/google/android/gms/internal/ads/zzyg;

    if-nez v0, :cond_0

    .line 166
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqo()Lcom/google/android/gms/internal/ads/zzwc;

    move-result-object v0

    .line 167
    new-instance v1, Lcom/google/android/gms/internal/ads/zzwo;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzwo;-><init>(Lcom/google/android/gms/internal/ads/zzwc;Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 168
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzws;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 169
    check-cast p1, Lcom/google/android/gms/internal/ads/zzyg;

    .line 170
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzcku:Lcom/google/android/gms/internal/ads/zzyg;

    :cond_0
    return-void
.end method

.method public static zzrs()Lcom/google/android/gms/internal/ads/zzzn;
    .locals 2

    .line 9
    const-class v0, Lcom/google/android/gms/internal/ads/zzzn;

    monitor-enter v0

    .line 10
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzzn;->zzckt:Lcom/google/android/gms/internal/ads/zzzn;

    if-nez v1, :cond_0

    .line 11
    new-instance v1, Lcom/google/android/gms/internal/ads/zzzn;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzzn;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzzn;->zzckt:Lcom/google/android/gms/internal/ads/zzzn;

    .line 12
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzzn;->zzckt:Lcom/google/android/gms/internal/ads/zzzn;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final disableMediationAdapterInitialization(Landroid/content/Context;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzn;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzzn;->zzg(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzcku:Lcom/google/android/gms/internal/ads/zzyg;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzyg;->zzrd()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p1, "Unable to disable mediation adapter initialization."

    .line 139
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzev(Ljava/lang/String;)V

    .line 140
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final getInitializationStatus()Lcom/google/android/gms/ads/initialization/InitializationStatus;
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzn;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzcku:Lcom/google/android/gms/internal/ads/zzyg;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "MobileAds.initialize() must be called prior to getting initialization status."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzcky:Lcom/google/android/gms/ads/initialization/InitializationStatus;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 128
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    .line 129
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzcku:Lcom/google/android/gms/internal/ads/zzyg;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzyg;->zzrc()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzzn;->zzd(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;

    move-result-object v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    return-object v1

    :catch_0
    const-string v1, "Unable to get Initialization status."

    .line 131
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzazk;->zzev(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 132
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 133
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public final getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzckx:Lcom/google/android/gms/ads/RequestConfiguration;

    return-object v0
.end method

.method public final getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzn;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzckw:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-eqz v1, :cond_0

    .line 59
    monitor-exit v0

    return-object v1

    .line 60
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzanf;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzanf;-><init>()V

    .line 61
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqo()Lcom/google/android/gms/internal/ads/zzwc;

    move-result-object v2

    .line 62
    new-instance v3, Lcom/google/android/gms/internal/ads/zzwp;

    invoke-direct {v3, v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzwp;-><init>(Lcom/google/android/gms/internal/ads/zzwc;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzane;)V

    const/4 v1, 0x0

    .line 63
    invoke-virtual {v3, p1, v1}, Lcom/google/android/gms/internal/ads/zzws;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v1

    .line 64
    check-cast v1, Lcom/google/android/gms/internal/ads/zzaur;

    .line 66
    new-instance v2, Lcom/google/android/gms/internal/ads/zzavc;

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzavc;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaur;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzckw:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    .line 67
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 68
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getVersionString()Ljava/lang/String;
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzn;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzcku:Lcom/google/android/gms/internal/ads/zzyg;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "MobileAds.initialize() must be called prior to getting version string."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzcku:Lcom/google/android/gms/internal/ads/zzyg;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzyg;->getVersionString()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdwt;->zzhm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "Unable to get version string."

    .line 116
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, ""

    .line 117
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 118
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final openDebugMenu(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzn;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzcku:Lcom/google/android/gms/internal/ads/zzyg;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "MobileAds.initialize() must be called prior to opening debug menu."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzcku:Lcom/google/android/gms/internal/ads/zzyg;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzyg;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "Unable to open debug menu."

    .line 109
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final registerRtbAdapter(Ljava/lang/Class;)V
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

    .line 119
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzn;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzcku:Lcom/google/android/gms/internal/ads/zzyg;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzyg;->zzce(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "Unable to register RtbAdapter"

    .line 123
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final setAppMuted(Z)V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzn;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzcku:Lcom/google/android/gms/internal/ads/zzyg;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "MobileAds.initialize() must be called prior to setting app muted state."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzcku:Lcom/google/android/gms/internal/ads/zzyg;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzyg;->setAppMuted(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "Unable to set app mute state."

    .line 92
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final setAppVolume(F)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "The app volume must be a value between 0 and 1 inclusive."

    .line 69
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 70
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzzn;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 71
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzcku:Lcom/google/android/gms/internal/ads/zzyg;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "MobileAds.initialize() must be called prior to setting the app volume."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzcku:Lcom/google/android/gms/internal/ads/zzyg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzyg;->setAppVolume(F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "Unable to set app volume."

    .line 75
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    :goto_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Null passed to setRequestConfiguration."

    .line 149
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzn;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzckx:Lcom/google/android/gms/ads/RequestConfiguration;

    .line 152
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzckx:Lcom/google/android/gms/ads/RequestConfiguration;

    .line 153
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzcku:Lcom/google/android/gms/internal/ads/zzyg;

    if-nez v2, :cond_1

    .line 154
    monitor-exit v0

    return-void

    .line 155
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForChildDirectedTreatment()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForChildDirectedTreatment()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 156
    invoke-virtual {v1}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForUnderAgeOfConsent()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForUnderAgeOfConsent()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 157
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzzn;->zza(Lcom/google/android/gms/ads/RequestConfiguration;)V

    .line 158
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V
    .locals 4

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzn;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzckv:Z

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzzn;->zzrs()Lcom/google/android/gms/internal/ads/zzzn;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzzn;->zzcks:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_0
    monitor-exit v0

    return-void

    .line 19
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzzl:Z

    if-eqz v1, :cond_3

    if-eqz p3, :cond_2

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzzn;->getInitializationStatus()Lcom/google/android/gms/ads/initialization/InitializationStatus;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;->onInitializationComplete(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V

    .line 22
    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    const/4 v1, 0x1

    .line 23
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzckv:Z

    if-eqz p3, :cond_4

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzzn;->zzrs()Lcom/google/android/gms/internal/ads/zzzn;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzzn;->zzcks:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-eqz p1, :cond_9

    .line 28
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzamz;->zzut()Lcom/google/android/gms/internal/ads/zzamz;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzamz;->zzc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Thread;

    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzzn;->zzg(Landroid/content/Context;)V

    if-eqz p3, :cond_5

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzcku:Lcom/google/android/gms/internal/ads/zzyg;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzzn$zza;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/ads/zzzn$zza;-><init>(Lcom/google/android/gms/internal/ads/zzzn;Lcom/google/android/gms/internal/ads/zzzr;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzyg;->zza(Lcom/google/android/gms/internal/ads/zzajk;)V

    .line 32
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzcku:Lcom/google/android/gms/internal/ads/zzyg;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzanf;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzanf;-><init>()V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzyg;->zza(Lcom/google/android/gms/internal/ads/zzane;)V

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzcku:Lcom/google/android/gms/internal/ads/zzyg;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzyg;->initialize()V

    .line 34
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzcku:Lcom/google/android/gms/internal/ads/zzyg;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzzq;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/ads/zzzq;-><init>(Lcom/google/android/gms/internal/ads/zzzn;Landroid/content/Context;)V

    .line 35
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 36
    invoke-interface {v1, p2, v2}, Lcom/google/android/gms/internal/ads/zzyg;->zza(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 37
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzckx:Lcom/google/android/gms/ads/RequestConfiguration;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForChildDirectedTreatment()I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_6

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzckx:Lcom/google/android/gms/ads/RequestConfiguration;

    .line 38
    invoke-virtual {p2}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForUnderAgeOfConsent()I

    move-result p2

    if-eq p2, v1, :cond_7

    .line 39
    :cond_6
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzckx:Lcom/google/android/gms/ads/RequestConfiguration;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzzn;->zza(Lcom/google/android/gms/ads/RequestConfiguration;)V

    .line 40
    :cond_7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzabp;->initialize(Landroid/content/Context;)V

    .line 41
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabp;->zzcwc:Lcom/google/android/gms/internal/ads/zzaba;

    .line 42
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object p1

    .line 43
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_8

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzzn;->getVersionString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "Google Mobile Ads SDK initialization functionality unavailable for this session. Ad requests can be made at any time."

    .line 47
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzev(Ljava/lang/String;)V

    .line 49
    new-instance p1, Lcom/google/android/gms/internal/ads/zzzs;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzzs;-><init>(Lcom/google/android/gms/internal/ads/zzzn;)V

    .line 50
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzcky:Lcom/google/android/gms/ads/initialization/InitializationStatus;

    if-eqz p3, :cond_8

    .line 52
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaza;->zzaac:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzzp;

    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/zzzp;-><init>(Lcom/google/android/gms/internal/ads/zzzn;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "MobileAdsSettingManager initialization failed"

    .line 55
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    :cond_8
    :goto_0
    monitor-exit v0

    return-void

    .line 27
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 56
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method final synthetic zza(Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzcky:Lcom/google/android/gms/ads/initialization/InitializationStatus;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;->onInitializationComplete(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V

    return-void
.end method

.method public final zzra()F
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzn;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzcku:Lcom/google/android/gms/internal/ads/zzyg;

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_0

    .line 80
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 81
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzyg;->zzra()F

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "Unable to get app volume."

    .line 84
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 86
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final zzrb()Z
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzn;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzn;->zzcku:Lcom/google/android/gms/internal/ads/zzyg;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 97
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 98
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzyg;->zzrb()Z

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "Unable to get app mute state."

    .line 101
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 103
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
