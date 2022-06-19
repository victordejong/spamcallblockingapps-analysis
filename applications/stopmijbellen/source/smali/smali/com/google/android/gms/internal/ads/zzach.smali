.class public final Lcom/google/android/gms/internal/ads/zzach;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza([B)Ljava/util/UUID;
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfd;-><init>([B)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzd()I

    move-result p0

    const/4 v1, 0x0

    const/16 v2, 0x20

    if-ge p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzF(I)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zza()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v2

    const v3, 0x70737368    # 3.013775E29f

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zze()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzabn;->zze(I)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    const/16 p0, 0x25

    const-string v0, "Unsupported pssh version: "

    const-string v3, "PsshAtomUtil"

    invoke-static {p0, v0, v2, v3}, La6/d;->g(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_3
    new-instance v4, Ljava/util/UUID;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzr()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzr()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/util/UUID;-><init>(JJ)V

    if-ne v2, v3, :cond_4

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzn()I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    .line 9
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 10
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzn()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfd;->zza()I

    move-result v5

    if-eq v3, v5, :cond_5

    :goto_0
    move-object p0, v1

    goto :goto_1

    :cond_5
    new-array v5, v3, [B

    .line 11
    invoke-virtual {v0, v5, p0, v3}, Lcom/google/android/gms/internal/ads/zzfd;->zzB([BII)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzacg;

    invoke-direct {p0, v4, v2, v5}, Lcom/google/android/gms/internal/ads/zzacg;-><init>(Ljava/util/UUID;I[B)V

    :goto_1
    if-nez p0, :cond_6

    return-object v1

    .line 12
    :cond_6
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzacg;->zza(Lcom/google/android/gms/internal/ads/zzacg;)Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method
