.class public final Lcom/google/android/gms/internal/ads/zzxa;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzwq;Z)Lcom/google/android/gms/internal/ads/zzdd;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzzt;->zza:Lcom/google/android/gms/internal/ads/zzzr;

    .line 2
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzxh;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzxh;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzxh;->zza(Lcom/google/android/gms/internal/ads/zzwq;Lcom/google/android/gms/internal/ads/zzzr;)Lcom/google/android/gms/internal/ads/zzdd;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdd;->zza()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    return-object p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzfd;)Lcom/google/android/gms/internal/ads/zzxc;
    .locals 11

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzm()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzc()I

    move-result v1

    int-to-long v1, v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    div-int/lit8 v0, v0, 0x12

    new-array v3, v0, [J

    new-array v4, v0, [J

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzr()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-nez v10, :cond_0

    .line 4
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    .line 5
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    goto :goto_1

    .line 6
    :cond_0
    aput-wide v6, v3, v5

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzr()J

    move-result-wide v6

    aput-wide v6, v4, v5

    const/4 v6, 0x2

    .line 8
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfd;->zzc()I

    move-result v0

    int-to-long v5, v0

    sub-long/2addr v1, v5

    long-to-int v0, v1

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfd;->zzG(I)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzxc;

    invoke-direct {p0, v3, v4}, Lcom/google/android/gms/internal/ads/zzxc;-><init>([J[J)V

    return-object p0
.end method
