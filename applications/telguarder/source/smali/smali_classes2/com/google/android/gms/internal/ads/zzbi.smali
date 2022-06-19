.class public final Lcom/google/android/gms/internal/ads/zzbi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# direct methods
.method static zza(Lcom/google/android/gms/internal/ads/zzab;Ljava/io/IOException;JLcom/google/android/gms/internal/ads/zzbb;[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzab<",
            "*>;",
            "Ljava/io/IOException;",
            "J",
            "Lcom/google/android/gms/internal/ads/zzbb;",
            "[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzap;
        }
    .end annotation

    .line 35
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_0

    .line 36
    new-instance p1, Lcom/google/android/gms/internal/ads/zzam;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzam;-><init>()V

    const-string p2, "socket"

    invoke-static {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzbi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zzap;)V

    return-void

    .line 37
    :cond_0
    instance-of v0, p1, Ljava/net/MalformedURLException;

    if-eqz v0, :cond_2

    .line 38
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Bad URL "

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzab;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    if-eqz p4, :cond_9

    .line 40
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzbb;->getStatusCode()I

    move-result p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzab;->getUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Unexpected response code %d for %s"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzao;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p5, :cond_8

    .line 44
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzbb;->zzq()Ljava/util/List;

    move-result-object v6

    .line 45
    new-instance p4, Lcom/google/android/gms/internal/ads/zzz;

    const/4 v3, 0x0

    .line 46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v4, v0, p2

    move-object v0, p4

    move v1, p1

    move-object v2, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzz;-><init>(I[BZJLjava/util/List;)V

    const/16 p2, 0x191

    if-eq p1, p2, :cond_7

    const/16 p2, 0x193

    if-ne p1, p2, :cond_3

    goto :goto_2

    :cond_3
    const/16 p0, 0x190

    if-lt p1, p0, :cond_5

    const/16 p0, 0x1f3

    if-le p1, p0, :cond_4

    goto :goto_1

    .line 50
    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/ads/zzo;

    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/ads/zzo;-><init>(Lcom/google/android/gms/internal/ads/zzz;)V

    throw p0

    :cond_5
    :goto_1
    const/16 p0, 0x1f4

    if-lt p1, p0, :cond_6

    const/16 p0, 0x257

    if-gt p1, p0, :cond_6

    .line 52
    new-instance p0, Lcom/google/android/gms/internal/ads/zzan;

    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/ads/zzan;-><init>(Lcom/google/android/gms/internal/ads/zzz;)V

    throw p0

    .line 53
    :cond_6
    new-instance p0, Lcom/google/android/gms/internal/ads/zzan;

    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/ads/zzan;-><init>(Lcom/google/android/gms/internal/ads/zzz;)V

    throw p0

    .line 48
    :cond_7
    :goto_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzl;

    invoke-direct {p1, p4}, Lcom/google/android/gms/internal/ads/zzl;-><init>(Lcom/google/android/gms/internal/ads/zzz;)V

    const-string p2, "auth"

    invoke-static {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzbi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zzap;)V

    return-void

    .line 54
    :cond_8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzw;-><init>()V

    const-string p2, "network"

    invoke-static {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzbi;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zzap;)V

    return-void

    .line 41
    :cond_9
    new-instance p0, Lcom/google/android/gms/internal/ads/zzy;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzy;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method private static zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zzap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzab<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzap;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzap;
        }
    .end annotation

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzab;->zzj()Lcom/google/android/gms/internal/ads/zzak;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzab;->zzi()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 26
    :try_start_0
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzak;->zza(Lcom/google/android/gms/internal/ads/zzap;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzap; {:try_start_0 .. :try_end_0} :catch_0

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p0, p2, v3

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v2

    const-string p0, "%s-retry [timeout=%s]"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzab;->zzc(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p2

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v3

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "%s-timeout-giveup [timeout=%s]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 31
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzab;->zzc(Ljava/lang/String;)V

    .line 32
    throw p2
.end method

.method static zza(Ljava/io/InputStream;ILcom/google/android/gms/internal/ads/zzat;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Error occurred when closing InputStream"

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbh;

    invoke-direct {v1, p2, p1}, Lcom/google/android/gms/internal/ads/zzbh;-><init>(Lcom/google/android/gms/internal/ads/zzat;I)V

    const/16 p1, 0x400

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzat;->zzf(I)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :goto_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 5
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbh;->write([BII)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbh;->toByteArray()[B

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 8
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    new-array p0, v2, [Ljava/lang/Object;

    .line 11
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzao;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    :cond_1
    :goto_1
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzat;->zza([B)V

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbh;->close()V

    return-object v3

    :catchall_0
    move-exception v3

    goto :goto_2

    :catchall_1
    move-exception v3

    const/4 p1, 0x0

    :goto_2
    if-eqz p0, :cond_2

    .line 17
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    new-array p0, v2, [Ljava/lang/Object;

    .line 20
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzao;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    :cond_2
    :goto_3
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzat;->zza([B)V

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbh;->close()V

    .line 23
    throw v3
.end method
