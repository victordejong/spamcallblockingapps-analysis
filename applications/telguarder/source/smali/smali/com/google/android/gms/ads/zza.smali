.class public final Lcom/google/android/gms/ads/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"


# direct methods
.method public static zza(II)Lcom/google/android/gms/ads/AdSize;
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    const/4 p0, 0x1

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/AdSize;->zzc(Z)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdSize;->zzr(I)V

    return-object v0
.end method

.method public static zza(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/ads/AdSize;)Z
    .locals 0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdSize;->zzdt()Z

    move-result p0

    return p0
.end method

.method public static zzb(Lcom/google/android/gms/ads/AdSize;)Z
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdSize;->zzdu()Z

    move-result p0

    return p0
.end method

.method public static zzc(Lcom/google/android/gms/ads/AdSize;)I
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdSize;->zzdv()I

    move-result p0

    return p0
.end method
