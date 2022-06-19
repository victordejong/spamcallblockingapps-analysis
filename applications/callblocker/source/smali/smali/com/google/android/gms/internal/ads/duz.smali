.class public final Lcom/google/android/gms/internal/ads/duz;
.super Lcom/google/android/gms/internal/ads/duo;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private b:Ljava/security/MessageDigest;

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/duo;-><init>()V

    .line 2
    div-int/lit8 v0, p1, 0x8

    .line 3
    rem-int/lit8 v1, p1, 0x8

    if-lez v1, :cond_0

    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/duz;->c:I

    .line 6
    iput p1, p0, Lcom/google/android/gms/internal/ads/duz;->d:I

    .line 7
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)[B
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v1, 0x0

    .line 8
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/duz;->a:Ljava/lang/Object;

    monitor-enter v4

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/duo;->a()Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/duz;->b:Ljava/security/MessageDigest;

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duz;->b:Ljava/security/MessageDigest;

    if-nez v0, :cond_0

    .line 11
    const/4 v0, 0x0

    new-array v0, v0, [B

    monitor-exit v4

    .line 30
    :goto_0
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duz;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duz;->b:Ljava/security/MessageDigest;

    const-string/jumbo v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duz;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 15
    array-length v0, v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/duz;->c:I

    if-le v0, v3, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/duz;->c:I

    :goto_1
    new-array v0, v0, [B

    .line 16
    const/4 v3, 0x0

    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v2, v3, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    iget v2, p0, Lcom/google/android/gms/internal/ads/duz;->d:I

    rem-int/lit8 v2, v2, 0x8

    if-lez v2, :cond_4

    .line 18
    const-wide/16 v2, 0x0

    .line 19
    :goto_2
    array-length v5, v0

    if-ge v1, v5, :cond_3

    .line 20
    if-lez v1, :cond_1

    .line 21
    shl-long/2addr v2, v8

    .line 22
    :cond_1
    aget-byte v5, v0, v1

    and-int/lit16 v5, v5, 0xff

    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 23
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 15
    :cond_2
    array-length v0, v2

    goto :goto_1

    .line 24
    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/duz;->d:I

    rem-int/lit8 v1, v1, 0x8

    rsub-int/lit8 v1, v1, 0x8

    .line 25
    ushr-long/2addr v2, v1

    .line 26
    iget v1, p0, Lcom/google/android/gms/internal/ads/duz;->c:I

    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-ltz v1, :cond_4

    .line 27
    const-wide/16 v6, 0xff

    and-long/2addr v6, v2

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    .line 28
    ushr-long/2addr v2, v8

    .line 29
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 30
    :cond_4
    monitor-exit v4

    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
