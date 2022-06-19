.class public final Lcom/google/android/gms/internal/ads/zb2;
.super Lcom/google/android/gms/internal/ads/kt1;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private i:I

.field private j:Z

.field private k:[B

.field private l:[B

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/kt1;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/wa;->f:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zb2;->k:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zb2;->l:[B

    return-void
.end method

.method private final p([BI)V
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/kt1;->h(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zb2;->p:Z

    :cond_0
    return-void
.end method

.method private final q(Ljava/nio/ByteBuffer;[BI)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zb2;->o:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zb2;->o:I

    sub-int/2addr v1, v0

    sub-int/2addr p3, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zb2;->l:[B

    const/4 v3, 0x0

    .line 2
    invoke-static {p2, p3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zb2;->l:[B

    .line 4
    invoke-virtual {p1, p2, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final r(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kt1;->b:Lcom/google/android/gms/internal/ads/w31;

    iget v0, v0, Lcom/google/android/gms/internal/ads/w31;->b:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method

.method private final s(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x400

    if-le v1, v2, :cond_0

    iget p1, p0, Lcom/google/android/gms/internal/ads/zb2;->i:I

    .line 3
    div-int/2addr v0, p1

    mul-int p1, p1, v0

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    return p1
.end method


# virtual methods
.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zb2;->j:Z

    return v0
.end method

.method public final g(Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/kt1;->i()Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, p0, Lcom/google/android/gms/internal/ads/zb2;->m:I

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zb2;->s(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 4
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zb2;->q:J

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    iget v6, p0, Lcom/google/android/gms/internal/ads/zb2;->i:I

    div-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zb2;->q:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zb2;->l:[B

    iget v4, p0, Lcom/google/android/gms/internal/ads/zb2;->o:I

    .line 6
    invoke-direct {p0, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zb2;->q(Ljava/nio/ByteBuffer;[BI)V

    if-ge v1, v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zb2;->l:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/zb2;->o:I

    .line 7
    invoke-direct {p0, v1, v3}, Lcom/google/android/gms/internal/ads/zb2;->p([BI)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zb2;->m:I

    .line 8
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zb2;->s(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int v3, v1, v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zb2;->k:[B

    .line 12
    array-length v5, v4

    iget v6, p0, Lcom/google/android/gms/internal/ads/zb2;->n:I

    sub-int/2addr v5, v6

    if-ge v1, v0, :cond_2

    if-ge v3, v5, :cond_2

    .line 13
    invoke-direct {p0, v4, v6}, Lcom/google/android/gms/internal/ads/zb2;->p([BI)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zb2;->n:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zb2;->m:I

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zb2;->k:[B

    iget v4, p0, Lcom/google/android/gms/internal/ads/zb2;->n:I

    .line 16
    invoke-virtual {p1, v3, v4, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zb2;->n:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/android/gms/internal/ads/zb2;->n:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zb2;->k:[B

    .line 17
    array-length v4, v1

    if-ne v3, v4, :cond_4

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zb2;->p:Z

    if-eqz v4, :cond_3

    iget v3, p0, Lcom/google/android/gms/internal/ads/zb2;->o:I

    .line 18
    invoke-direct {p0, v1, v3}, Lcom/google/android/gms/internal/ads/zb2;->p([BI)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zb2;->q:J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zb2;->n:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zb2;->o:I

    add-int/2addr v5, v5

    sub-int v5, v1, v5

    iget v6, p0, Lcom/google/android/gms/internal/ads/zb2;->i:I

    .line 19
    div-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zb2;->q:J

    move v3, v1

    goto :goto_1

    .line 20
    :cond_3
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zb2;->q:J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zb2;->o:I

    sub-int v1, v3, v1

    iget v6, p0, Lcom/google/android/gms/internal/ads/zb2;->i:I

    .line 21
    div-int/2addr v1, v6

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zb2;->q:J

    .line 22
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zb2;->k:[B

    .line 23
    invoke-direct {p0, p1, v1, v3}, Lcom/google/android/gms/internal/ads/zb2;->q(Ljava/nio/ByteBuffer;[BI)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zb2;->n:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zb2;->m:I

    .line 24
    :cond_4
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 25
    :cond_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 26
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zb2;->k:[B

    array-length v3, v3

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 27
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    :cond_6
    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-lt v2, v3, :cond_7

    .line 28
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x400

    if-le v3, v4, :cond_6

    iget v3, p0, Lcom/google/android/gms/internal/ads/zb2;->i:I

    .line 29
    div-int/2addr v2, v3

    mul-int v2, v2, v3

    add-int/2addr v2, v3

    goto :goto_2

    .line 30
    :cond_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 31
    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-ne v2, v3, :cond_8

    iput v1, p0, Lcom/google/android/gms/internal/ads/zb2;->m:I

    goto :goto_3

    .line 32
    :cond_8
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 33
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 34
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/kt1;->h(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez v2, :cond_9

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zb2;->p:Z

    .line 35
    :cond_9
    :goto_3
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public final j(Lcom/google/android/gms/internal/ads/w31;)Lcom/google/android/gms/internal/ads/w31;
    .locals 2

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/ads/w31;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zb2;->j:Z

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/w31;->a:Lcom/google/android/gms/internal/ads/w31;

    return-object p1

    .line 3
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdd;

    .line 4
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdd;-><init>(Lcom/google/android/gms/internal/ads/w31;)V

    throw v0
.end method

.method protected final k()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zb2;->n:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zb2;->k:[B

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zb2;->p([BI)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zb2;->p:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zb2;->q:J

    iget v2, p0, Lcom/google/android/gms/internal/ads/zb2;->o:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zb2;->i:I

    .line 2
    div-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zb2;->q:J

    :cond_1
    return-void
.end method

.method protected final l()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zb2;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kt1;->b:Lcom/google/android/gms/internal/ads/w31;

    iget v0, v0, Lcom/google/android/gms/internal/ads/w31;->e:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zb2;->i:I

    const-wide/32 v0, 0x249f0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zb2;->r(J)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zb2;->i:I

    mul-int v0, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zb2;->k:[B

    .line 3
    array-length v1, v1

    if-eq v1, v0, :cond_0

    .line 4
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zb2;->k:[B

    :cond_0
    const-wide/16 v0, 0x4e20

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zb2;->r(J)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zb2;->i:I

    mul-int v0, v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zb2;->o:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zb2;->l:[B

    .line 6
    array-length v1, v1

    if-eq v1, v0, :cond_1

    .line 7
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zb2;->l:[B

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zb2;->m:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zb2;->q:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/zb2;->n:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zb2;->p:Z

    return-void
.end method

.method protected final m()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zb2;->j:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zb2;->o:I

    sget-object v0, Lcom/google/android/gms/internal/ads/wa;->f:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zb2;->k:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zb2;->l:[B

    return-void
.end method

.method public final n(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zb2;->j:Z

    return-void
.end method

.method public final o()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zb2;->q:J

    return-wide v0
.end method
