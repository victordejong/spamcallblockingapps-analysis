.class public final Lcom/google/android/gms/internal/ads/we;
.super Ljava/io/ByteArrayOutputStream;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/hx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/hx;I)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/we;->a:Lcom/google/android/gms/internal/ads/hx;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/we;->a:Lcom/google/android/gms/internal/ads/hx;

    const/16 v1, 0x100

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/hx;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/we;->buf:[B

    .line 4
    return-void
.end method

.method private final a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/we;->count:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/we;->buf:[B

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 17
    :goto_0
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/we;->a:Lcom/google/android/gms/internal/ads/hx;

    iget v1, p0, Lcom/google/android/gms/internal/ads/we;->count:I

    add-int/2addr v1, p1

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/hx;->a(I)[B

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/we;->buf:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/we;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/we;->a:Lcom/google/android/gms/internal/ads/hx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/we;->buf:[B

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/hx;->a([B)V

    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/we;->buf:[B

    goto :goto_0
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/we;->a:Lcom/google/android/gms/internal/ads/hx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/we;->buf:[B

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/hx;->a([B)V

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/we;->buf:[B

    .line 7
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 8
    return-void
.end method

.method public final finalize()V
    .locals 2

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/we;->a:Lcom/google/android/gms/internal/ads/hx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/we;->buf:[B

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/hx;->a([B)V

    .line 10
    return-void
.end method

.method public final declared-synchronized write(I)V
    .locals 1

    .prologue
    .line 21
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/we;->a(I)V

    .line 22
    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    return-void

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized write([BII)V
    .locals 1

    .prologue
    .line 18
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/we;->a(I)V

    .line 19
    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
