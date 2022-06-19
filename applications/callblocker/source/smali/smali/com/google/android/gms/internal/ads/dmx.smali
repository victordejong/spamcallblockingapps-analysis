.class public final Lcom/google/android/gms/internal/ads/dmx;
.super Lcom/google/android/gms/internal/ads/dmp;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/dms;

.field public b:Ljava/nio/ByteBuffer;

.field public c:J

.field private final d:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dmp;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/dms;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dms;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmx;->a:Lcom/google/android/gms/internal/ads/dms;

    .line 3
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmx;->d:I

    .line 4
    return-void
.end method

.method private final e(I)Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmx;->b:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 26
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const/16 v2, 0x2c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Buffer too small ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " < "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmx;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/dmp;->a()V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmx;->b:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmx;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 24
    :cond_0
    return-void
.end method

.method public final d(I)V
    .locals 4

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmx;->b:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dmx;->e(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmx;->b:Ljava/nio/ByteBuffer;

    .line 19
    :cond_0
    :goto_0
    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmx;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmx;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 10
    add-int v2, v1, p1

    .line 11
    if-ge v0, v2, :cond_0

    .line 13
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/dmx;->e(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 14
    if-lez v1, :cond_2

    .line 15
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dmx;->b:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 16
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dmx;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmx;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 18
    :cond_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmx;->b:Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 20
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dmp;->c(I)Z

    move-result v0

    return v0
.end method
