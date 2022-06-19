.class final Lcom/google/android/gms/internal/ads/lu1;
.super Lcom/google/android/gms/internal/ads/kt1;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private i:[I

.field private j:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/kt1;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lu1;->j:[I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int v3, v2, v1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/kt1;->b:Lcom/google/android/gms/internal/ads/w31;

    .line 4
    iget v4, v4, Lcom/google/android/gms/internal/ads/w31;->e:I

    div-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/kt1;->c:Lcom/google/android/gms/internal/ads/w31;

    .line 5
    iget v4, v4, Lcom/google/android/gms/internal/ads/w31;->e:I

    mul-int v3, v3, v4

    .line 6
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/kt1;->h(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    :goto_0
    if-ge v1, v2, :cond_1

    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    .line 7
    aget v6, v0, v5

    add-int/2addr v6, v6

    add-int/2addr v6, v1

    .line 8
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/kt1;->b:Lcom/google/android/gms/internal/ads/w31;

    .line 9
    iget v4, v4, Lcom/google/android/gms/internal/ads/w31;->e:I

    add-int/2addr v1, v4

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 11
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public final j(Lcom/google/android/gms/internal/ads/w31;)Lcom/google/android/gms/internal/ads/w31;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lu1;->i:[I

    if-nez v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/w31;->a:Lcom/google/android/gms/internal/ads/w31;

    return-object p1

    .line 2
    :cond_0
    iget v1, p1, Lcom/google/android/gms/internal/ads/w31;->d:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 3
    iget v1, p1, Lcom/google/android/gms/internal/ads/w31;->c:I

    array-length v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x0

    :goto_1
    array-length v6, v0

    if-ge v3, v6, :cond_4

    .line 4
    aget v6, v0, v3

    .line 5
    iget v7, p1, Lcom/google/android/gms/internal/ads/w31;->c:I

    if-ge v6, v7, :cond_3

    if-eq v6, v3, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    or-int/2addr v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdd;

    .line 6
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdd;-><init>(Lcom/google/android/gms/internal/ads/w31;)V

    throw v0

    :cond_4
    if-eqz v1, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/ads/w31;

    .line 7
    iget p1, p1, Lcom/google/android/gms/internal/ads/w31;->b:I

    invoke-direct {v0, p1, v6, v2}, Lcom/google/android/gms/internal/ads/w31;-><init>(III)V

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/ads/w31;->a:Lcom/google/android/gms/internal/ads/w31;

    :goto_3
    return-object v0

    .line 8
    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdd;

    .line 9
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdd;-><init>(Lcom/google/android/gms/internal/ads/w31;)V

    throw v0
.end method

.method protected final l()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lu1;->i:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/lu1;->j:[I

    return-void
.end method

.method protected final m()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/lu1;->j:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/lu1;->i:[I

    return-void
.end method

.method public final n([I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lu1;->i:[I

    return-void
.end method
