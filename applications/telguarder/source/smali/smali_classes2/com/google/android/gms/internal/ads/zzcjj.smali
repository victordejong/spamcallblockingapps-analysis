.class final synthetic Lcom/google/android/gms/internal/ads/zzcjj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zztx;


# instance fields
.field private final zzfzt:Lcom/google/android/gms/internal/ads/zzdnl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdnl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjj;->zzfzt:Lcom/google/android/gms/internal/ads/zzdnl;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzug$zzi$zza;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjj;->zzfzt:Lcom/google/android/gms/internal/ads/zzdnl;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzug$zzi$zza;->zzoe()Lcom/google/android/gms/internal/ads/zzug$zza;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzelb;->zzbij()Lcom/google/android/gms/internal/ads/zzelb$zzb;

    move-result-object v1

    .line 5
    check-cast v1, Lcom/google/android/gms/internal/ads/zzelb$zzb;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzug$zza$zzb;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzug$zzi$zza;->zzoe()Lcom/google/android/gms/internal/ads/zzug$zza;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzug$zza;->zzni()Lcom/google/android/gms/internal/ads/zzug$zze;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzelb;->zzbij()Lcom/google/android/gms/internal/ads/zzelb$zzb;

    move-result-object v2

    .line 8
    check-cast v2, Lcom/google/android/gms/internal/ads/zzelb$zzb;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzug$zze$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnl;->zzhks:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnj;->zzess:Lcom/google/android/gms/internal/ads/zzdnb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnb;->zzbvs:Ljava/lang/String;

    .line 9
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzug$zze$zza;->zzbu(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzug$zze$zza;

    move-result-object v0

    .line 10
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzug$zza$zzb;->zza(Lcom/google/android/gms/internal/ads/zzug$zze$zza;)Lcom/google/android/gms/internal/ads/zzug$zza$zzb;

    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzug$zzi$zza;->zza(Lcom/google/android/gms/internal/ads/zzug$zza$zzb;)Lcom/google/android/gms/internal/ads/zzug$zzi$zza;

    return-void
.end method
