.class public final Lcom/google/android/gms/internal/ads/xs2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/i2;

.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private e:[B


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/i2;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xs2;->a:Lcom/google/android/gms/internal/ads/i2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xs2;->b:Ljava/io/File;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/xs2;->c:Ljava/io/File;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/xs2;->d:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/i2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xs2;->a:Lcom/google/android/gms/internal/ads/i2;

    return-object v0
.end method

.method public final b()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xs2;->b:Ljava/io/File;

    return-object v0
.end method

.method public final c()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xs2;->c:Ljava/io/File;

    return-object v0
.end method

.method public final d()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xs2;->e:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xs2;->d:Ljava/io/File;

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgex;->zzw(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgex;->zzz()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/common/util/k;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/util/k;->a(Ljava/io/Closeable;)V

    .line 4
    throw v0

    :catch_0
    move-object v2, v1

    .line 5
    :catch_1
    invoke-static {v2}, Lcom/google/android/gms/common/util/k;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xs2;->e:[B

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xs2;->e:[B

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    array-length v1, v0

    .line 6
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public final e(J)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/xs2;->a:Lcom/google/android/gms/internal/ads/i2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/i2;->E()J

    move-result-wide p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xe10

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
