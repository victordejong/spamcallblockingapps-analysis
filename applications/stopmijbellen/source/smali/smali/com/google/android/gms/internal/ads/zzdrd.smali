.class public final synthetic Lcom/google/android/gms/internal/ads/zzdrd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbrt;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdre;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbqc;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdre;Lcom/google/android/gms/internal/ads/zzbqc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrd;->zza:Lcom/google/android/gms/internal/ads/zzdre;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdrd;->zzb:Lcom/google/android/gms/internal/ads/zzbqc;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrd;->zza:Lcom/google/android/gms/internal/ads/zzdre;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrd;->zzb:Lcom/google/android/gms/internal/ads/zzbqc;

    :try_start_0
    const-string v1, "timestamp"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p1, Lcom/google/android/gms/internal/ads/zzdre;->zzb:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Failed to call parse unconfirmedClickTimestamp."

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzciz;->zzg(Ljava/lang/String;)V

    :goto_0
    const-string v1, "id"

    .line 3
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p1, Lcom/google/android/gms/internal/ads/zzdre;->zza:Ljava/lang/String;

    const-string p1, "asset_id"

    .line 4
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p1, "Received unconfirmed click but UnconfirmedClickListener is null."

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzciz;->zze(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbqc;->zzf(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 7
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzciz;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
