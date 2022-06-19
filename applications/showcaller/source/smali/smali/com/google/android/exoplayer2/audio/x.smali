.class public final Lcom/google/android/exoplayer2/audio/x;
.super Ljava/lang/Object;
.source "SonicAudioProcessor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioProcessor;


# instance fields
.field private b:I

.field private c:F

.field private d:F

.field private e:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

.field private f:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

.field private g:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

.field private h:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

.field private i:Z

.field private j:Lcom/google/android/exoplayer2/audio/w;

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

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/audio/x;->c:F

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/audio/x;->d:F

    .line 4
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->a:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->e:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    .line 5
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->f:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    .line 6
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->g:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    .line 7
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->h:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    .line 8
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->k:Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/x;->l:Ljava/nio/ShortBuffer;

    .line 10
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->m:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/google/android/exoplayer2/audio/x;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/audio/x;->c:F

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/audio/x;->d:F

    .line 3
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->a:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->e:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    .line 4
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->f:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    .line 5
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->g:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    .line 6
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->h:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    .line 7
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->k:Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/x;->l:Ljava/nio/ShortBuffer;

    .line 9
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->m:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/google/android/exoplayer2/audio/x;->b:I

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/x;->i:Z

    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/x;->j:Lcom/google/android/exoplayer2/audio/w;

    const-wide/16 v1, 0x0

    .line 13
    iput-wide v1, p0, Lcom/google/android/exoplayer2/audio/x;->n:J

    .line 14
    iput-wide v1, p0, Lcom/google/android/exoplayer2/audio/x;->o:J

    .line 15
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/x;->p:Z

    return-void
.end method

.method public b()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->m:Ljava/nio/ByteBuffer;

    .line 2
    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/x;->m:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/x;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->j:Lcom/google/android/exoplayer2/audio/w;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/w;->k()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->j:Lcom/google/android/exoplayer2/audio/w;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/w;

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 5
    iget-wide v3, p0, Lcom/google/android/exoplayer2/audio/x;->n:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/exoplayer2/audio/x;->n:J

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/w;->s(Ljava/nio/ShortBuffer;)V

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/w;->k()I

    move-result p1

    if-lez p1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/x;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, p1, :cond_1

    .line 10
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/x;->k:Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/x;->l:Ljava/nio/ShortBuffer;

    goto :goto_0

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/x;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 13
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/x;->l:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 14
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/x;->l:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/w;->j(Ljava/nio/ShortBuffer;)V

    .line 15
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/x;->o:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/x;->o:J

    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 17
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/x;->k:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/x;->m:Ljava/nio/ByteBuffer;

    :cond_2
    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/audio/AudioProcessor$a;)Lcom/google/android/exoplayer2/audio/AudioProcessor$a;
    .locals 3

    .line 1
    iget v0, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/audio/x;->b:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget v0, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->b:I

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/x;->e:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    .line 4
    new-instance v2, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget p1, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->c:I

    invoke-direct {v2, v0, p1, v1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;-><init>(III)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/x;->f:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/x;->i:Z

    return-object v2

    .line 6
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Lcom/google/android/exoplayer2/audio/AudioProcessor$a;)V

    throw v0
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->j:Lcom/google/android/exoplayer2/audio/w;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/w;->r()V

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/x;->p:Z

    return-void
.end method

.method public flush()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/x;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->e:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->g:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/x;->f:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/x;->h:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    .line 4
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/x;->i:Z

    if-eqz v2, :cond_0

    .line 5
    new-instance v2, Lcom/google/android/exoplayer2/audio/w;

    iget v4, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->b:I

    iget v5, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->c:I

    iget v6, p0, Lcom/google/android/exoplayer2/audio/x;->c:F

    iget v7, p0, Lcom/google/android/exoplayer2/audio/x;->d:F

    iget v8, v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->b:I

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/audio/w;-><init>(IIFFI)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/x;->j:Lcom/google/android/exoplayer2/audio/w;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->j:Lcom/google/android/exoplayer2/audio/w;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/w;->i()V

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->m:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/x;->n:J

    .line 10
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/x;->o:J

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/x;->p:Z

    return-void
.end method

.method public g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->f:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/x;->c:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/x;->d:F

    sub-float/2addr v0, v1

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->f:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->b:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/x;->e:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->b:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h(J)J
    .locals 15

    move-object v0, p0

    .line 1
    iget-wide v5, v0, Lcom/google/android/exoplayer2/audio/x;->o:J

    const-wide/16 v1, 0x400

    cmp-long v3, v5, v1

    if-ltz v3, :cond_1

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/x;->h:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->b:I

    iget-object v2, v0, Lcom/google/android/exoplayer2/audio/x;->g:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->b:I

    if-ne v1, v2, :cond_0

    iget-wide v3, v0, Lcom/google/android/exoplayer2/audio/x;->n:J

    move-wide/from16 v1, p1

    .line 3
    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer2/util/h0;->l0(JJJ)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    iget-wide v3, v0, Lcom/google/android/exoplayer2/audio/x;->n:J

    int-to-long v7, v1

    mul-long v11, v3, v7

    int-to-long v1, v2

    mul-long v13, v5, v1

    move-wide/from16 v9, p1

    .line 4
    invoke-static/range {v9 .. v14}, Lcom/google/android/exoplayer2/util/h0;->l0(JJJ)J

    move-result-wide v1

    :goto_0
    return-wide v1

    .line 5
    :cond_1
    iget v1, v0, Lcom/google/android/exoplayer2/audio/x;->c:F

    float-to-double v1, v1

    move-wide/from16 v3, p1

    long-to-double v3, v3

    mul-double v1, v1, v3

    double-to-long v1, v1

    return-wide v1
.end method

.method public i(F)F
    .locals 2

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x41000000    # 8.0f

    .line 1
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/h0;->m(FFF)F

    move-result p1

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/audio/x;->d:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/audio/x;->d:F

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/x;->i:Z

    :cond_0
    return p1
.end method

.method public j(F)F
    .locals 2

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x41000000    # 8.0f

    .line 1
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/h0;->m(FFF)F

    move-result p1

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/audio/x;->c:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/audio/x;->c:F

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/x;->i:Z

    :cond_0
    return p1
.end method
