.class public final Lcom/google/android/gms/internal/ads/zzdmq;
.super Lcom/google/android/gms/internal/ads/zzauq;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private final zzfyy:Lcom/google/android/gms/internal/ads/zzdnk;

.field private zzgyo:Z

.field private final zzhip:Lcom/google/android/gms/internal/ads/zzdmc;

.field private final zzhiq:Lcom/google/android/gms/internal/ads/zzdlh;

.field private zzhir:Lcom/google/android/gms/internal/ads/zzchb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdmc;Lcom/google/android/gms/internal/ads/zzdlh;Lcom/google/android/gms/internal/ads/zzdnk;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzauq;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzgyo:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzhip:Lcom/google/android/gms/internal/ads/zzdmc;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzhiq:Lcom/google/android/gms/internal/ads/zzdlh;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzfyy:Lcom/google/android/gms/internal/ads/zzdnk;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdmq;)Lcom/google/android/gms/internal/ads/zzchb;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzhir:Lcom/google/android/gms/internal/ads/zzchb;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdmq;Lcom/google/android/gms/internal/ads/zzchb;)Lcom/google/android/gms/internal/ads/zzchb;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzhir:Lcom/google/android/gms/internal/ads/zzchb;

    return-object p1
.end method

.method private final declared-synchronized zzasm()Z
    .locals 1

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzhir:Lcom/google/android/gms/internal/ads/zzchb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzchb;->isClosed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdmq;->zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getAdMetadata can only be called from the UI thread."

    .line 74
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzhir:Lcom/google/android/gms/internal/ads/zzchb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzchb;->getAdMetadata()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final declared-synchronized getMediationAdapterClassName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzhir:Lcom/google/android/gms/internal/ads/zzchb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zzakr()Lcom/google/android/gms/internal/ads/zzbrh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzhir:Lcom/google/android/gms/internal/ads/zzchb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zzakr()Lcom/google/android/gms/internal/ads/zzbrh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbrh;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 59
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isLoaded()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "isLoaded must be called on the main UI thread."

    .line 60
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdmq;->zzasm()Z

    move-result v0

    return v0
.end method

.method public final pause()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdmq;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method

.method public final resume()V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdmq;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method

.method public final setAppPackageName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final declared-synchronized setCustomData(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 79
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcpk:Lcom/google/android/gms/internal/ads/zzaba;

    .line 80
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 81
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 82
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "#008 Must be called on the main UI thread.: setCustomData"

    .line 83
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzfyy:Lcom/google/android/gms/internal/ads/zzdnk;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzdnk;->zzdzi:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setImmersiveMode(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setImmersiveMode must be called on the main UI thread."

    .line 86
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 87
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzgyo:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setUserId(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "setUserId must be called on the main UI thread."

    .line 76
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzfyy:Lcom/google/android/gms/internal/ads/zzdnk;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzdnk;->zzdzh:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized show()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 42
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdmq;->zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaup;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread.: setRewardedAdSkuListener"

    .line 65
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzhiq:Lcom/google/android/gms/internal/ads/zzdlh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdlh;->zzb(Lcom/google/android/gms/internal/ads/zzaup;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzauu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "setRewardedVideoAdListener can only be called from the UI thread."

    .line 62
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzhiq:Lcom/google/android/gms/internal/ads/zzdlh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdlh;->zzb(Lcom/google/android/gms/internal/ads/zzauu;)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzava;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "loadAd must be called on the main UI thread."

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 9
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzava;->zzbut:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabr;->zzcp(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 10
    monitor-exit p0

    return-void

    .line 11
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdmq;->zzasm()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcwh:Lcom/google/android/gms/internal/ads/zzaba;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 14
    monitor-exit p0

    return-void

    .line 15
    :cond_1
    :try_start_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdmd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdmd;-><init>(Ljava/lang/String;)V

    .line 16
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzhir:Lcom/google/android/gms/internal/ads/zzchb;

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzhip:Lcom/google/android/gms/internal/ads/zzdmc;

    sget v2, Lcom/google/android/gms/internal/ads/zzdnh;->zzhkk:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdmc;->zzec(I)V

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzhip:Lcom/google/android/gms/internal/ads/zzdmc;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzava;->zzdud:Lcom/google/android/gms/internal/ads/zzvl;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzava;->zzbut:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdmt;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzdmt;-><init>(Lcom/google/android/gms/internal/ads/zzdmq;)V

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/google/android/gms/internal/ads/zzdmc;->zza(Lcom/google/android/gms/internal/ads/zzvl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzczb;Lcom/google/android/gms/internal/ads/zzcze;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzxs;)V
    .locals 2

    const-string v0, "setAdMetadataListener can only be called from the UI thread."

    .line 68
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzhiq:Lcom/google/android/gms/internal/ads/zzdlh;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdlh;->zza(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzhiq:Lcom/google/android/gms/internal/ads/zzdlh;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdms;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdms;-><init>(Lcom/google/android/gms/internal/ads/zzdmq;Lcom/google/android/gms/internal/ads/zzxs;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdlh;->zza(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    return-void
.end method

.method public final declared-synchronized zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "showAd must be called on the main UI thread."

    .line 44
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzhir:Lcom/google/android/gms/internal/ads/zzchb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 46
    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 49
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    .line 50
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 51
    check-cast p1, Landroid/app/Activity;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 54
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzhir:Lcom/google/android/gms/internal/ads/zzchb;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzgyo:Z

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzchb;->zzb(ZLandroid/app/Activity;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "pause must be called on the main UI thread."

    .line 30
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzhir:Lcom/google/android/gms/internal/ads/zzchb;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 32
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 33
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzhir:Lcom/google/android/gms/internal/ads/zzchb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zzakq()Lcom/google/android/gms/internal/ads/zzbsg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbsg;->zzcb(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "resume must be called on the main UI thread."

    .line 37
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzhir:Lcom/google/android/gms/internal/ads/zzchb;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 39
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 40
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzhir:Lcom/google/android/gms/internal/ads/zzchb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zzakq()Lcom/google/android/gms/internal/ads/zzbsg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbsg;->zzcc(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzki()Lcom/google/android/gms/internal/ads/zzyx;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 89
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcyy:Lcom/google/android/gms/internal/ads/zzaba;

    .line 90
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 92
    monitor-exit p0

    return-object v1

    .line 93
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzhir:Lcom/google/android/gms/internal/ads/zzchb;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zzakr()Lcom/google/android/gms/internal/ads/zzbrh;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "destroy must be called on the main UI thread."

    .line 22
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzhiq:Lcom/google/android/gms/internal/ads/zzdlh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdlh;->zza(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzhir:Lcom/google/android/gms/internal/ads/zzchb;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    .line 26
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzhir:Lcom/google/android/gms/internal/ads/zzchb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnt;->zzakq()Lcom/google/android/gms/internal/ads/zzbsg;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbsg;->zzcd(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzrw()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmq;->zzhir:Lcom/google/android/gms/internal/ads/zzchb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzchb;->zzrw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
