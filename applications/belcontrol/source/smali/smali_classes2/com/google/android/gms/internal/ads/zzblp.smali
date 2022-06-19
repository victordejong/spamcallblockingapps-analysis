.class public final Lcom/google/android/gms/internal/ads/zzblp;
.super Lcom/google/android/gms/internal/ads/zzsn;
.source ""


# instance fields
.field private zzbpk:Z

.field private final zzbuz:Lcom/google/android/gms/internal/ads/zzxl;

.field private final zzfug:Lcom/google/android/gms/internal/ads/zzblq;

.field private final zzfuh:Lcom/google/android/gms/internal/ads/zzdil;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzblq;Lcom/google/android/gms/internal/ads/zzxl;Lcom/google/android/gms/internal/ads/zzdil;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzblp;->zzbpk:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzblp;->zzfug:Lcom/google/android/gms/internal/ads/zzblq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzblp;->zzbuz:Lcom/google/android/gms/internal/ads/zzxl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzblp;->zzfuh:Lcom/google/android/gms/internal/ads/zzdil;

    return-void
.end method


# virtual methods
.method public final setImmersiveMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzblp;->zzbpk:Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzsv;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblp;->zzfuh:Lcom/google/android/gms/internal/ads/zzdil;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzdil;->zza(Lcom/google/android/gms/internal/ads/zzsv;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblp;->zzfug:Lcom/google/android/gms/internal/ads/zzblq;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzblp;->zzbpk:Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzblq;->zza(Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzsv;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzsq;)V
    .locals 0

    return-void
.end method

.method public final zzdx()Lcom/google/android/gms/internal/ads/zzxl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblp;->zzbuz:Lcom/google/android/gms/internal/ads/zzxl;

    return-object v0
.end method

.method public final zzki()Lcom/google/android/gms/internal/ads/zzyx;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcyy:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblp;->zzfug:Lcom/google/android/gms/internal/ads/zzblq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zzakr()Lcom/google/android/gms/internal/ads/zzbrh;

    move-result-object v0

    return-object v0
.end method
