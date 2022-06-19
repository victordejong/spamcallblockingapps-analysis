.class public final Lcom/google/android/gms/internal/ads/dmq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dls;


# instance fields
.field private b:I

.field private c:I

.field private d:Lcom/google/android/gms/internal/ads/dmn;

.field private e:F

.field private f:F

.field private g:Ljava/nio/ByteBuffer;

.field private h:Ljava/nio/ShortBuffer;

.field private i:Ljava/nio/ByteBuffer;

.field private j:J

.field private k:J

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/dmq;->e:F

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/dmq;->f:F

    .line 4
    iput v1, p0, Lcom/google/android/gms/internal/ads/dmq;->b:I

    .line 5
    iput v1, p0, Lcom/google/android/gms/internal/ads/dmq;->c:I

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/dmq;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmq;->g:Ljava/nio/ByteBuffer;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmq;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmq;->h:Ljava/nio/ShortBuffer;

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/dmq;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmq;->i:Ljava/nio/ByteBuffer;

    .line 9
    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 2

    .prologue
    .line 10
    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/dsn;->a(FFF)F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmq;->e:F

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmq;->e:F

    return v0
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 6

    .prologue
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
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dmq;->j:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dmq;->j:J

    .line 30
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dmq;->d:Lcom/google/android/gms/internal/ads/dmn;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/dmn;->a(Ljava/nio/ShortBuffer;)V

    .line 31
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmq;->d:Lcom/google/android/gms/internal/ads/dmn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmn;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/dmq;->b:I

    mul-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    .line 33
    if-lez v0, :cond_1

    .line 34
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmq;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_2

    .line 35
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dmq;->g:Ljava/nio/ByteBuffer;

    .line 36
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmq;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dmq;->h:Ljava/nio/ShortBuffer;

    .line 39
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmq;->d:Lcom/google/android/gms/internal/ads/dmn;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dmq;->h:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/dmn;->b(Ljava/nio/ShortBuffer;)V

    .line 40
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dmq;->k:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dmq;->k:J

    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmq;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmq;->g:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmq;->i:Ljava/nio/ByteBuffer;

    .line 43
    :cond_1
    return-void

    .line 37
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmq;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmq;->h:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public final a()Z
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3c23d70a    # 0.01f

    .line 23
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmq;->e:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/dmq;->f:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(III)Z
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhu;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhu;-><init>(III)V

    throw v0

    .line 18
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmq;->c:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/dmq;->b:I

    if-ne v0, p2, :cond_1

    .line 19
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0

    .line 20
    :cond_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/dmq;->c:I

    .line 21
    iput p2, p0, Lcom/google/android/gms/internal/ads/dmq;->b:I

    .line 22
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(F)F
    .locals 2

    .prologue
    .line 12
    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/dsn;->a(FFF)F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmq;->f:F

    .line 13
    return p1
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmq;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x2

    return v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmq;->d:Lcom/google/android/gms/internal/ads/dmn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmn;->a()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmq;->l:Z

    .line 46
    return-void
.end method

.method public final e()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmq;->i:Ljava/nio/ByteBuffer;

    .line 48
    sget-object v1, Lcom/google/android/gms/internal/ads/dmq;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dmq;->i:Ljava/nio/ByteBuffer;

    .line 49
    return-object v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmq;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmq;->d:Lcom/google/android/gms/internal/ads/dmn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmq;->d:Lcom/google/android/gms/internal/ads/dmn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmn;->b()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 51
    new-instance v0, Lcom/google/android/gms/internal/ads/dmn;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dmq;->c:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/dmq;->b:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dmn;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmq;->d:Lcom/google/android/gms/internal/ads/dmn;

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmq;->d:Lcom/google/android/gms/internal/ads/dmn;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dmq;->e:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dmn;->a(F)V

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmq;->d:Lcom/google/android/gms/internal/ads/dmn;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dmq;->f:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dmn;->b(F)V

    .line 54
    sget-object v0, Lcom/google/android/gms/internal/ads/dmq;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmq;->i:Ljava/nio/ByteBuffer;

    .line 55
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/dmq;->j:J

    .line 56
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/dmq;->k:J

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmq;->l:Z

    .line 58
    return-void
.end method

.method public final h()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, -0x1

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmq;->d:Lcom/google/android/gms/internal/ads/dmn;

    .line 60
    sget-object v0, Lcom/google/android/gms/internal/ads/dmq;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmq;->g:Ljava/nio/ByteBuffer;

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmq;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmq;->h:Ljava/nio/ShortBuffer;

    .line 62
    sget-object v0, Lcom/google/android/gms/internal/ads/dmq;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmq;->i:Ljava/nio/ByteBuffer;

    .line 63
    iput v1, p0, Lcom/google/android/gms/internal/ads/dmq;->b:I

    .line 64
    iput v1, p0, Lcom/google/android/gms/internal/ads/dmq;->c:I

    .line 65
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dmq;->j:J

    .line 66
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dmq;->k:J

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dmq;->l:Z

    .line 68
    return-void
.end method

.method public final i()J
    .locals 2

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dmq;->j:J

    return-wide v0
.end method

.method public final j()J
    .locals 2

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dmq;->k:J

    return-wide v0
.end method
