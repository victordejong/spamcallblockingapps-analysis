.class public final Lcom/google/android/gms/internal/ads/be2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/x51;


# instance fields
.field private b:I

.field private c:F

.field private d:F

.field private e:Lcom/google/android/gms/internal/ads/w31;

.field private f:Lcom/google/android/gms/internal/ads/w31;

.field private g:Lcom/google/android/gms/internal/ads/w31;

.field private h:Lcom/google/android/gms/internal/ads/w31;

.field private i:Z

.field private j:Lcom/google/android/gms/internal/ads/ad2;

.field private k:Ljava/nio/ByteBuffer;

.field private l:Ljava/nio/ShortBuffer;

.field private m:Ljava/nio/ByteBuffer;

.field private n:J

.field private o:J

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/gms/internal/ads/be2;->c:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/be2;->d:F

    sget-object v0, Lcom/google/android/gms/internal/ads/w31;->a:Lcom/google/android/gms/internal/ads/w31;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/be2;->e:Lcom/google/android/gms/internal/ads/w31;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/be2;->f:Lcom/google/android/gms/internal/ads/w31;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/be2;->g:Lcom/google/android/gms/internal/ads/w31;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/be2;->h:Lcom/google/android/gms/internal/ads/w31;

    sget-object v0, Lcom/google/android/gms/internal/ads/x51;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/be2;->k:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/be2;->l:Ljava/nio/ShortBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/be2;->m:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/be2;->b:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/nio/ByteBuffer;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/be2;->j:Lcom/google/android/gms/internal/ads/ad2;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ad2;->f()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/be2;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/be2;->k:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/be2;->l:Ljava/nio/ShortBuffer;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/be2;->k:Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/be2;->l:Ljava/nio/ShortBuffer;

    .line 6
    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/be2;->l:Ljava/nio/ShortBuffer;

    .line 8
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/ad2;->c(Ljava/nio/ShortBuffer;)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/be2;->o:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/be2;->o:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/be2;->k:Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/be2;->k:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/be2;->m:Ljava/nio/ByteBuffer;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/be2;->m:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/x51;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/be2;->m:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final b()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/be2;->f:Lcom/google/android/gms/internal/ads/w31;

    iget v0, v0, Lcom/google/android/gms/internal/ads/w31;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/be2;->c:F

    const/high16 v3, -0x40800000    # -1.0f

    add-float/2addr v0, v3

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v4, 0x38d1b717    # 1.0E-4f

    cmpl-float v0, v0, v4

    if-gez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/be2;->d:F

    add-float/2addr v0, v3

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/be2;->f:Lcom/google/android/gms/internal/ads/w31;

    iget v0, v0, Lcom/google/android/gms/internal/ads/w31;->b:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/be2;->e:Lcom/google/android/gms/internal/ads/w31;

    iget v3, v3, Lcom/google/android/gms/internal/ads/w31;->b:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public final c(Lcom/google/android/gms/internal/ads/w31;)Lcom/google/android/gms/internal/ads/w31;
    .locals 3

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/ads/w31;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/be2;->b:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 3
    iget v0, p1, Lcom/google/android/gms/internal/ads/w31;->b:I

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/be2;->e:Lcom/google/android/gms/internal/ads/w31;

    new-instance v2, Lcom/google/android/gms/internal/ads/w31;

    .line 4
    iget p1, p1, Lcom/google/android/gms/internal/ads/w31;->c:I

    invoke-direct {v2, v0, p1, v1}, Lcom/google/android/gms/internal/ads/w31;-><init>(III)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/be2;->f:Lcom/google/android/gms/internal/ads/w31;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/be2;->i:Z

    return-object v2

    .line 5
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdd;

    .line 6
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdd;-><init>(Lcom/google/android/gms/internal/ads/w31;)V

    throw v0
.end method

.method public final d()Z
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/be2;->p:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/be2;->j:Lcom/google/android/gms/internal/ads/ad2;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ad2;->f()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :cond_2
    return v1
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/be2;->j:Lcom/google/android/gms/internal/ads/ad2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ad2;->d()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/be2;->p:Z

    return-void
.end method

.method public final f()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/be2;->c:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/be2;->d:F

    sget-object v0, Lcom/google/android/gms/internal/ads/w31;->a:Lcom/google/android/gms/internal/ads/w31;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/be2;->e:Lcom/google/android/gms/internal/ads/w31;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/be2;->f:Lcom/google/android/gms/internal/ads/w31;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/be2;->g:Lcom/google/android/gms/internal/ads/w31;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/be2;->h:Lcom/google/android/gms/internal/ads/w31;

    sget-object v0, Lcom/google/android/gms/internal/ads/x51;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/be2;->k:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/be2;->l:Ljava/nio/ShortBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/be2;->m:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/be2;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/be2;->i:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/be2;->j:Lcom/google/android/gms/internal/ads/ad2;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/be2;->n:J

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/be2;->o:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/be2;->p:Z

    return-void
.end method

.method public final g(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/be2;->j:Lcom/google/android/gms/internal/ads/ad2;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/be2;->n:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/be2;->n:J

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ad2;->b(Ljava/nio/ShortBuffer;)V

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final h(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/be2;->c:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/ads/be2;->c:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/be2;->i:Z

    :cond_0
    return-void
.end method

.method public final i(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/be2;->d:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/ads/be2;->d:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/be2;->i:Z

    :cond_0
    return-void
.end method

.method public final j(J)J
    .locals 15

    move-object v0, p0

    .line 1
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/be2;->o:J

    const-wide/16 v3, 0x400

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/be2;->n:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/be2;->j:Lcom/google/android/gms/internal/ads/ad2;

    .line 2
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ad2;->a()I

    move-result v3

    int-to-long v3, v3

    sub-long v7, v1, v3

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/be2;->h:Lcom/google/android/gms/internal/ads/w31;

    iget v1, v1, Lcom/google/android/gms/internal/ads/w31;->b:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/be2;->g:Lcom/google/android/gms/internal/ads/w31;

    iget v2, v2, Lcom/google/android/gms/internal/ads/w31;->b:I

    if-ne v1, v2, :cond_0

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/be2;->o:J

    move-wide/from16 v5, p1

    .line 4
    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/wa;->h(JJJ)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    int-to-long v3, v1

    mul-long v11, v7, v3

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/be2;->o:J

    int-to-long v1, v2

    mul-long v13, v3, v1

    move-wide/from16 v9, p1

    .line 5
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/wa;->h(JJJ)J

    move-result-wide v1

    :goto_0
    return-wide v1

    .line 6
    :cond_1
    iget v1, v0, Lcom/google/android/gms/internal/ads/be2;->c:F

    float-to-double v1, v1

    move-wide/from16 v3, p1

    long-to-double v3, v3

    mul-double v1, v1, v3

    double-to-long v1, v1

    return-wide v1
.end method

.method public final zzg()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/be2;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/be2;->e:Lcom/google/android/gms/internal/ads/w31;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/be2;->g:Lcom/google/android/gms/internal/ads/w31;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/be2;->f:Lcom/google/android/gms/internal/ads/w31;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/be2;->h:Lcom/google/android/gms/internal/ads/w31;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/be2;->i:Z

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/ads/ad2;

    .line 2
    iget v4, v0, Lcom/google/android/gms/internal/ads/w31;->b:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/w31;->c:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/be2;->c:F

    iget v7, p0, Lcom/google/android/gms/internal/ads/be2;->d:F

    iget v8, v1, Lcom/google/android/gms/internal/ads/w31;->b:I

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/ad2;-><init>(IIFFI)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/be2;->j:Lcom/google/android/gms/internal/ads/ad2;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/be2;->j:Lcom/google/android/gms/internal/ads/ad2;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ad2;->e()V

    .line 4
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/x51;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/be2;->m:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/be2;->n:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/be2;->o:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/be2;->p:Z

    return-void
.end method
