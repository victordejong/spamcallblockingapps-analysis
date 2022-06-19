.class final synthetic Lcom/google/android/gms/internal/ads/zzciv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zztx;


# instance fields
.field private final zzdjf:Ljava/lang/String;

.field private final zzgkr:Lcom/google/android/gms/internal/ads/zzug$zza$zza;

.field private final zzgks:Lcom/google/android/gms/internal/ads/zzug$zzu;

.field private final zzgkt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzug$zza$zza;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzug$zzu;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzciv;->zzgkr:Lcom/google/android/gms/internal/ads/zzug$zza$zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzciv;->zzdjf:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzciv;->zzgks:Lcom/google/android/gms/internal/ads/zzug$zzu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzciv;->zzgkt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzug$zzi$zza;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciv;->zzgkr:Lcom/google/android/gms/internal/ads/zzug$zza$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzciv;->zzdjf:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzciv;->zzgks:Lcom/google/android/gms/internal/ads/zzug$zzu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzciv;->zzgkt:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzug$zzi$zza;->zzoe()Lcom/google/android/gms/internal/ads/zzug$zza;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzelb;->zzbij()Lcom/google/android/gms/internal/ads/zzelb$zzb;

    move-result-object v4

    .line 4
    check-cast v4, Lcom/google/android/gms/internal/ads/zzelb$zzb;

    check-cast v4, Lcom/google/android/gms/internal/ads/zzug$zza$zzb;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzug$zza$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzug$zza$zza;)Lcom/google/android/gms/internal/ads/zzug$zza$zzb;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzug$zzi$zza;->zza(Lcom/google/android/gms/internal/ads/zzug$zza$zzb;)Lcom/google/android/gms/internal/ads/zzug$zzi$zza;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzug$zzi$zza;->zzod()Lcom/google/android/gms/internal/ads/zzug$zzg;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzelb;->zzbij()Lcom/google/android/gms/internal/ads/zzelb$zzb;

    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/zzelb$zzb;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzug$zzg$zza;

    .line 8
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzug$zzg$zza;->zzbw(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzug$zzg$zza;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzug$zzg$zza;->zzb(Lcom/google/android/gms/internal/ads/zzug$zzu;)Lcom/google/android/gms/internal/ads/zzug$zzg$zza;

    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzug$zzi$zza;->zza(Lcom/google/android/gms/internal/ads/zzug$zzg$zza;)Lcom/google/android/gms/internal/ads/zzug$zzi$zza;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzug$zzi$zza;->zzby(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzug$zzi$zza;

    return-void
.end method
