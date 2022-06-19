.class public final synthetic Lcom/google/android/gms/internal/ads/zzcjj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zztx;


# instance fields
.field private final zzfzt:Lcom/google/android/gms/internal/ads/zzdnl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdnl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjj;->zzfzt:Lcom/google/android/gms/internal/ads/zzdnl;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzug$zzi$zza;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjj;->zzfzt:Lcom/google/android/gms/internal/ads/zzdnl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzug$zzi$zza;->zzoe()Lcom/google/android/gms/internal/ads/zzug$zza;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzelb;->zzbij()Lcom/google/android/gms/internal/ads/zzelb$zzb;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzug$zza$zzb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzug$zzi$zza;->zzoe()Lcom/google/android/gms/internal/ads/zzug$zza;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzug$zza;->zzni()Lcom/google/android/gms/internal/ads/zzug$zze;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzelb;->zzbij()Lcom/google/android/gms/internal/ads/zzelb$zzb;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzug$zze$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnl;->zzhks:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnj;->zzess:Lcom/google/android/gms/internal/ads/zzdnb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnb;->zzbvs:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzug$zze$zza;->zzbu(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzug$zze$zza;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzug$zza$zzb;->zza(Lcom/google/android/gms/internal/ads/zzug$zze$zza;)Lcom/google/android/gms/internal/ads/zzug$zza$zzb;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzug$zzi$zza;->zza(Lcom/google/android/gms/internal/ads/zzug$zza$zzb;)Lcom/google/android/gms/internal/ads/zzug$zzi$zza;

    return-void
.end method
