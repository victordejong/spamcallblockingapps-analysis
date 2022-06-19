.class final synthetic Lcom/google/android/gms/internal/ads/zzcqq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zztx;


# instance fields
.field private final zzgrs:Lcom/google/android/gms/internal/ads/zzug$zzu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzug$zzu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqq;->zzgrs:Lcom/google/android/gms/internal/ads/zzug$zzu;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzug$zzi$zza;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqq;->zzgrs:Lcom/google/android/gms/internal/ads/zzug$zzu;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzug$zzi$zza;->zzod()Lcom/google/android/gms/internal/ads/zzug$zzg;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzelb;->zzbij()Lcom/google/android/gms/internal/ads/zzelb$zzb;

    move-result-object v1

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/ads/zzelb$zzb;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzug$zzg$zza;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzug$zzg$zza;->zzb(Lcom/google/android/gms/internal/ads/zzug$zzu;)Lcom/google/android/gms/internal/ads/zzug$zzg$zza;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzug$zzi$zza;->zza(Lcom/google/android/gms/internal/ads/zzug$zzg$zza;)Lcom/google/android/gms/internal/ads/zzug$zzi$zza;

    return-void
.end method
