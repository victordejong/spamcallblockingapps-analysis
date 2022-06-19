.class public final Lcom/google/android/gms/internal/ads/agj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/z;Lcom/google/android/gms/internal/ads/zzap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/z<",
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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/z;->zzj()Lcom/google/android/gms/internal/ads/iy;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/z;->zzi()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 26
    :try_start_0
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/iy;->a(Lcom/google/android/gms/internal/ads/zzap;)V
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

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/z;->zzc(Ljava/lang/String;)V

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
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/z;->zzc(Ljava/lang/String;)V

    .line 32
    throw p2
.end method

.method static a(Ljava/io/InputStream;ILcom/google/android/gms/internal/ads/rq;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Error occurred when closing InputStream"

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/afk;

    invoke-direct {v1, p2, p1}, Lcom/google/android/gms/internal/ads/afk;-><init>(Lcom/google/android/gms/internal/ads/rq;I)V

    const/16 p1, 0x400

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/rq;->a(I)[B

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
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/afk;->write([BII)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/afk;->toByteArray()[B

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
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/mz;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    :cond_1
    :goto_1
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/rq;->a([B)V

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/afk;->close()V

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
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/mz;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    :cond_2
    :goto_3
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/rq;->a([B)V

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/afk;->close()V

    .line 23
    throw v3
.end method
