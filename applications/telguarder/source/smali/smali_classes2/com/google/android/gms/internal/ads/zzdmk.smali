.class public final Lcom/google/android/gms/internal/ads/zzdmk;
.super Lcom/google/android/gms/internal/ads/zzavp;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private final zzbut:Ljava/lang/String;

.field private final zzfyy:Lcom/google/android/gms/internal/ads/zzdnk;

.field private final zzgxt:Landroid/content/Context;

.field private zzgyo:Z

.field private final zzhip:Lcom/google/android/gms/internal/ads/zzdmc;

.field private final zzhiq:Lcom/google/android/gms/internal/ads/zzdlh;

.field private zzhir:Lcom/google/android/gms/internal/ads/zzchb;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdmc;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdlh;Lcom/google/android/gms/internal/ads/zzdnk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzavp;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzbut:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzhip:Lcom/google/android/gms/internal/ads/zzdmc;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzhiq:Lcom/google/android/gms/internal/ads/zzdlh;

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzfyy:Lcom/google/android/gms/internal/ads/zzdnk;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzgxt:Landroid/content/Context;

    .line 7
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabp;->zzcox:Lcom/google/android/gms/internal/ads/zzaba;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzgyo:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdmk;)Lcom/google/android/gms/internal/ads/zzchb;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzhir:Lcom/google/android/gms/internal/ads/zzchb;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdmk;Lcom/google/android/gms/internal/ads/zzchb;)Lcom/google/android/gms/internal/ads/zzchb;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzhir:Lcom/google/android/gms/internal/ads/zzchb;

    return-object p1
.end method

.method private final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzvl;Lcom/google/android/gms/internal/ads/zzavu;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread."

    .line 66
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzhiq:Lcom/google/android/gms/internal/ads/zzdlh;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzdlh;->zzb(Lcom/google/android/gms/internal/ads/zzavu;)V

    .line 68
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzgxt:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzaz(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzvl;->zzcia:Lcom/google/android/gms/internal/ads/zzve;

    if-nez p2, :cond_0

    const-string p1, "Failed to load the ad because app ID is missing."

    .line 69
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzev(Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzhiq:Lcom/google/android/gms/internal/ads/zzdlh;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdom;->zzhlx:Lcom/google/android/gms/internal/ads/zzdom;

    .line 71
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/internal/ads/zzdok;->zza(Lcom/google/android/gms/internal/ads/zzdom;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object p2

    .line 72
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdlh;->zzc(Lcom/google/android/gms/internal/ads/zzvg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 74
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzhir:Lcom/google/android/gms/internal/ads/zzchb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    .line 75
    monitor-exit p0

    return-void

    .line 76
    :cond_1
    :try_start_2
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdmd;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzdmd;-><init>(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzhip:Lcom/google/android/gms/internal/ads/zzdmc;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzdmc;->zzec(I)V

    .line 78
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzhip:Lcom/google/android/gms/internal/ads/zzdmc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzbut:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdmm;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdmm;-><init>(Lcom/google/android/gms/internal/ads/zzdmk;)V

    invoke-virtual {p3, p1, v0, p2, v1}, Lcom/google/android/gms/internal/ads/zzdmc;->zza(Lcom/google/android/gms/internal/ads/zzvl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzczb;Lcom/google/android/gms/internal/ads/zzcze;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final getAdMetadata()Landroid/os/Bundle;
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 43
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzhir:Lcom/google/android/gms/internal/ads/zzchb;

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

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzhir:Lcom/google/android/gms/internal/ads/zzchb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zzakr()Lcom/google/android/gms/internal/ads/zzbrh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzhir:Lcom/google/android/gms/internal/ads/zzchb;

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

    .line 29
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isLoaded()Z
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 30
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzhir:Lcom/google/android/gms/internal/ads/zzchb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzchb;->isUsed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized setImmersiveMode(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setImmersiveMode must be called on the main UI thread."

    .line 63
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 64
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzgyo:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread."

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzhir:Lcom/google/android/gms/internal/ads/zzchb;

    if-nez v0, :cond_0

    const-string p1, "Rewarded can not be shown before loaded"

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzhiq:Lcom/google/android/gms/internal/ads/zzdlh;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdom;->zzhmc:Lcom/google/android/gms/internal/ads/zzdom;

    const/4 v0, 0x0

    .line 21
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/internal/ads/zzdok;->zza(Lcom/google/android/gms/internal/ads/zzdom;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdlh;->zzk(Lcom/google/android/gms/internal/ads/zzvg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    return-void

    .line 24
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzhir:Lcom/google/android/gms/internal/ads/zzchb;

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzchb;->zzb(ZLandroid/app/Activity;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzavr;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 32
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzhiq:Lcom/google/android/gms/internal/ads/zzdlh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdlh;->zzb(Lcom/google/android/gms/internal/ads/zzavr;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzavz;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 35
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzhiq:Lcom/google/android/gms/internal/ads/zzdlh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdlh;->zzb(Lcom/google/android/gms/internal/ads/zzavz;)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzawh;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread."

    .line 47
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzfyy:Lcom/google/android/gms/internal/ads/zzdnk;

    .line 49
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzawh;->zzdzh:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdnk;->zzdzh:Ljava/lang/String;

    .line 50
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabp;->zzcpk:Lcom/google/android/gms/internal/ads/zzaba;

    .line 51
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v1

    .line 52
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzawh;->zzdzi:Ljava/lang/String;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzdnk;->zzdzi:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzvl;Lcom/google/android/gms/internal/ads/zzavu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 11
    :try_start_0
    sget v0, Lcom/google/android/gms/internal/ads/zzdnh;->zzhkl:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdmk;->zza(Lcom/google/android/gms/internal/ads/zzvl;Lcom/google/android/gms/internal/ads/zzavu;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyr;)V
    .locals 2

    if-nez p1, :cond_0

    .line 39
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzhiq:Lcom/google/android/gms/internal/ads/zzdlh;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdlh;->zza(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzhiq:Lcom/google/android/gms/internal/ads/zzdlh;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdmn;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdmn;-><init>(Lcom/google/android/gms/internal/ads/zzdmk;Lcom/google/android/gms/internal/ads/zzyr;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdlh;->zza(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyw;)V
    .locals 1

    const-string v0, "setOnPaidEventListener must be called on the main UI thread."

    .line 60
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzhiq:Lcom/google/android/gms/internal/ads/zzdlh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdlh;->zzd(Lcom/google/android/gms/internal/ads/zzyw;)V

    return-void
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzvl;Lcom/google/android/gms/internal/ads/zzavu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 13
    :try_start_0
    sget v0, Lcom/google/android/gms/internal/ads/zzdnh;->zzhkm:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdmk;->zza(Lcom/google/android/gms/internal/ads/zzvl;Lcom/google/android/gms/internal/ads/zzavu;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 15
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzgyo:Z

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdmk;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzki()Lcom/google/android/gms/internal/ads/zzyx;
    .locals 2

    .line 55
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcyy:Lcom/google/android/gms/internal/ads/zzaba;

    .line 56
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzhir:Lcom/google/android/gms/internal/ads/zzchb;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zzakr()Lcom/google/android/gms/internal/ads/zzbrh;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final zzrv()Lcom/google/android/gms/internal/ads/zzavl;
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 45
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmk;->zzhir:Lcom/google/android/gms/internal/ads/zzchb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzchb;->zzrv()Lcom/google/android/gms/internal/ads/zzavl;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
