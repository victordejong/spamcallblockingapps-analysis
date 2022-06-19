.class public final Lcom/google/android/gms/internal/ads/dxh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dwj;


# instance fields
.field b:F

.field c:F

.field d:J

.field e:J

.field private f:I

.field private g:I

.field private h:Lcom/google/android/gms/internal/ads/dxe;

.field private i:Ljava/nio/ByteBuffer;

.field private j:Ljava/nio/ShortBuffer;

.field private k:Ljava/nio/ByteBuffer;

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/dxh;->b:F

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/dxh;->c:F

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/dxh;->f:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/dxh;->g:I

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/dxh;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dxh;->i:Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dxh;->j:Ljava/nio/ShortBuffer;

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/dxh;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dxh;->k:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 26
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 28
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 29
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dxh;->d:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dxh;->d:J

    .line 30
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dxh;->h:Lcom/google/android/gms/internal/ads/dxe;

    .line 1024
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v3

    iget v4, v2, Lcom/google/android/gms/internal/ads/dxe;->a:I

    div-int/2addr v3, v4

    .line 1025
    iget v4, v2, Lcom/google/android/gms/internal/ads/dxe;->a:I

    mul-int v4, v4, v3

    shl-int/lit8 v4, v4, 0x1

    .line 1026
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/dxe;->a(I)V

    .line 1027
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/dxe;->c:[S

    iget v6, v2, Lcom/google/android/gms/internal/ads/dxe;->g:I

    iget v7, v2, Lcom/google/android/gms/internal/ads/dxe;->a:I

    mul-int v6, v6, v7

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v5, v6, v4}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 1028
    iget v0, v2, Lcom/google/android/gms/internal/ads/dxe;->g:I

    add-int/2addr v0, v3

    iput v0, v2, Lcom/google/android/gms/internal/ads/dxe;->g:I

    .line 1029
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dxe;->a()V

    .line 31
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dxh;->h:Lcom/google/android/gms/internal/ads/dxe;

    .line 1051
    iget p1, p1, Lcom/google/android/gms/internal/ads/dxe;->h:I

    .line 32
    iget v0, p0, Lcom/google/android/gms/internal/ads/dxh;->f:I

    mul-int p1, p1, v0

    shl-int/lit8 p1, p1, 0x1

    if-lez p1, :cond_2

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxh;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 35
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dxh;->i:Ljava/nio/ByteBuffer;

    .line 36
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dxh;->j:Ljava/nio/ShortBuffer;

    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxh;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxh;->j:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 39
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxh;->h:Lcom/google/android/gms/internal/ads/dxe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dxh;->j:Ljava/nio/ShortBuffer;

    .line 2031
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v2

    iget v3, v0, Lcom/google/android/gms/internal/ads/dxe;->a:I

    div-int/2addr v2, v3

    iget v3, v0, Lcom/google/android/gms/internal/ads/dxe;->h:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2032
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dxe;->d:[S

    iget v4, v0, Lcom/google/android/gms/internal/ads/dxe;->a:I

    mul-int v4, v4, v2

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 2033
    iget v1, v0, Lcom/google/android/gms/internal/ads/dxe;->h:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/dxe;->h:I

    .line 2034
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/dxe;->d:[S

    iget v3, v0, Lcom/google/android/gms/internal/ads/dxe;->a:I

    mul-int v2, v2, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dxe;->d:[S

    iget v4, v0, Lcom/google/android/gms/internal/ads/dxe;->h:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/dxe;->a:I

    mul-int v4, v4, v0

    invoke-static {v1, v2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dxh;->e:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dxh;->e:J

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxh;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 42
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dxh;->i:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dxh;->k:Ljava/nio/ByteBuffer;

    :cond_2
    return-void
.end method

.method public final a()Z
    .locals 3

    .line 23
    iget v0, p0, Lcom/google/android/gms/internal/ads/dxh;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/dxh;->c:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final a(III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 18
    iget p3, p0, Lcom/google/android/gms/internal/ads/dxh;->g:I

    if-ne p3, p1, :cond_0

    iget p3, p0, Lcom/google/android/gms/internal/ads/dxh;->f:I

    if-ne p3, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 20
    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/dxh;->g:I

    .line 21
    iput p2, p0, Lcom/google/android/gms/internal/ads/dxh;->f:I

    const/4 p1, 0x1

    return p1

    .line 17
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzii;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzii;-><init>(III)V

    throw v0
.end method

.method public final b()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/ads/dxh;->f:I

    return v0
.end method

.method public final c()V
    .locals 7

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxh;->h:Lcom/google/android/gms/internal/ads/dxe;

    .line 2036
    iget v1, v0, Lcom/google/android/gms/internal/ads/dxe;->g:I

    .line 2037
    iget v2, v0, Lcom/google/android/gms/internal/ads/dxe;->e:F

    iget v3, v0, Lcom/google/android/gms/internal/ads/dxe;->f:F

    div-float/2addr v2, v3

    .line 2038
    iget v3, v0, Lcom/google/android/gms/internal/ads/dxe;->h:I

    int-to-float v4, v1

    div-float/2addr v4, v2

    iget v2, v0, Lcom/google/android/gms/internal/ads/dxe;->i:I

    int-to-float v2, v2

    add-float/2addr v4, v2

    iget v2, v0, Lcom/google/android/gms/internal/ads/dxe;->f:F

    div-float/2addr v4, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v4, v2

    float-to-int v2, v4

    add-int/2addr v3, v2

    .line 2039
    iget v2, v0, Lcom/google/android/gms/internal/ads/dxe;->b:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dxe;->a(I)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 2040
    :goto_0
    iget v5, v0, Lcom/google/android/gms/internal/ads/dxe;->b:I

    mul-int/lit8 v5, v5, 0x2

    iget v6, v0, Lcom/google/android/gms/internal/ads/dxe;->a:I

    mul-int v5, v5, v6

    if-ge v4, v5, :cond_0

    .line 2041
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dxe;->c:[S

    iget v6, v0, Lcom/google/android/gms/internal/ads/dxe;->a:I

    mul-int v6, v6, v1

    add-int/2addr v6, v4

    aput-short v2, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2043
    :cond_0
    iget v1, v0, Lcom/google/android/gms/internal/ads/dxe;->g:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/dxe;->b:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/android/gms/internal/ads/dxe;->g:I

    .line 2044
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dxe;->a()V

    .line 2045
    iget v1, v0, Lcom/google/android/gms/internal/ads/dxe;->h:I

    if-le v1, v3, :cond_1

    .line 2046
    iput v3, v0, Lcom/google/android/gms/internal/ads/dxe;->h:I

    .line 2047
    :cond_1
    iput v2, v0, Lcom/google/android/gms/internal/ads/dxe;->g:I

    .line 2048
    iput v2, v0, Lcom/google/android/gms/internal/ads/dxe;->j:I

    .line 2049
    iput v2, v0, Lcom/google/android/gms/internal/ads/dxe;->i:I

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dxh;->l:Z

    return-void
.end method

.method public final d()Ljava/nio/ByteBuffer;
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxh;->k:Ljava/nio/ByteBuffer;

    .line 48
    sget-object v1, Lcom/google/android/gms/internal/ads/dxh;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dxh;->k:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dxh;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxh;->h:Lcom/google/android/gms/internal/ads/dxe;

    if-eqz v0, :cond_0

    .line 2051
    iget v0, v0, Lcom/google/android/gms/internal/ads/dxe;->h:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final f()V
    .locals 3

    .line 51
    new-instance v0, Lcom/google/android/gms/internal/ads/dxe;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dxh;->g:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/dxh;->f:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dxe;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dxh;->h:Lcom/google/android/gms/internal/ads/dxe;

    .line 52
    iget v1, p0, Lcom/google/android/gms/internal/ads/dxh;->b:F

    .line 3020
    iput v1, v0, Lcom/google/android/gms/internal/ads/dxe;->e:F

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dxh;->h:Lcom/google/android/gms/internal/ads/dxe;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dxh;->c:F

    .line 3022
    iput v1, v0, Lcom/google/android/gms/internal/ads/dxe;->f:F

    .line 54
    sget-object v0, Lcom/google/android/gms/internal/ads/dxh;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dxh;->k:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    .line 55
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dxh;->d:J

    .line 56
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dxh;->e:J

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dxh;->l:Z

    return-void
.end method

.method public final g()V
    .locals 2

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dxh;->h:Lcom/google/android/gms/internal/ads/dxe;

    .line 60
    sget-object v0, Lcom/google/android/gms/internal/ads/dxh;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dxh;->i:Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dxh;->j:Ljava/nio/ShortBuffer;

    .line 62
    sget-object v0, Lcom/google/android/gms/internal/ads/dxh;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dxh;->k:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lcom/google/android/gms/internal/ads/dxh;->f:I

    .line 64
    iput v0, p0, Lcom/google/android/gms/internal/ads/dxh;->g:I

    const-wide/16 v0, 0x0

    .line 65
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dxh;->d:J

    .line 66
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dxh;->e:J

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dxh;->l:Z

    return-void
.end method
