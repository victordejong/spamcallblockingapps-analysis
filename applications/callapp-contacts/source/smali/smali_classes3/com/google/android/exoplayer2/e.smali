.class public abstract Lcom/google/android/exoplayer2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/af;
.implements Lcom/google/android/exoplayer2/ag;


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/exoplayer2/q;

.field private c:Lcom/google/android/exoplayer2/RendererConfiguration;

.field private d:I

.field private e:I

.field private f:Lcom/google/android/exoplayer2/source/aa;

.field private g:[Lcom/google/android/exoplayer2/Format;

.field private h:J

.field private i:J

.field private j:J

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/google/android/exoplayer2/e;->a:I

    .line 52
    new-instance p1, Lcom/google/android/exoplayer2/q;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/q;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/e;->b:Lcom/google/android/exoplayer2/q;

    const-wide/high16 v0, -0x8000000000000000L

    .line 53
    iput-wide v0, p0, Lcom/google/android/exoplayer2/e;->j:J

    return-void
.end method


# virtual methods
.method public final C_()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/google/android/exoplayer2/e;->e:I

    return v0
.end method

.method public final a()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/google/android/exoplayer2/e;->a:I

    return v0
.end method

.method protected final a(Lcom/google/android/exoplayer2/q;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 5

    .line 394
    iget-object v0, p0, Lcom/google/android/exoplayer2/e;->f:Lcom/google/android/exoplayer2/source/aa;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/aa;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/aa;->a(Lcom/google/android/exoplayer2/q;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    .line 396
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    .line 397
    iput-wide p1, p0, Lcom/google/android/exoplayer2/e;->j:J

    .line 398
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/e;->k:Z

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, -0x3

    return p1

    .line 400
    :cond_1
    iget-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/e;->h:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    .line 401
    iget-wide v0, p0, Lcom/google/android/exoplayer2/e;->j:J

    iget-wide p1, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/e;->j:J

    goto :goto_0

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    .line 403
    iget-object p2, p1, Lcom/google/android/exoplayer2/q;->b:Lcom/google/android/exoplayer2/Format;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/Format;

    .line 404
    iget-wide v0, p2, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 407
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$a;

    move-result-object v0

    iget-wide v1, p2, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/e;->h:J

    add-long/2addr v1, v3

    .line 1414
    iput-wide v1, v0, Lcom/google/android/exoplayer2/Format$a;->o:J

    .line 409
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    .line 410
    iput-object p2, p1, Lcom/google/android/exoplayer2/q;->b:Lcom/google/android/exoplayer2/Format;

    :cond_3
    :goto_0
    return p3
.end method

.method protected final a(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 1

    const/4 v0, 0x0

    .line 344
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/e;->a(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 8

    if-eqz p2, :cond_0

    .line 358
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/e;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 360
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/e;->l:Z

    const/4 v0, 0x0

    .line 362
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/e;->a(Lcom/google/android/exoplayer2/Format;)I

    move-result v1
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, v1, 0x7

    .line 366
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/e;->l:Z

    move v6, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/e;->l:Z

    .line 367
    throw p1

    .line 366
    :catch_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/e;->l:Z

    :cond_0
    const/4 v1, 0x4

    const/4 v6, 0x4

    .line 370
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e;->x()Ljava/lang/String;

    move-result-object v3

    .line 1332
    iget v4, p0, Lcom/google/android/exoplayer2/e;->d:I

    move-object v2, p1

    move-object v5, p2

    move v7, p3

    .line 369
    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/ExoPlaybackException;->a(Ljava/lang/Throwable;Ljava/lang/String;ILcom/google/android/exoplayer2/Format;IZ)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(FF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/af$-CC;->$default$a(Lcom/google/android/exoplayer2/af;FF)V

    return-void
.end method

.method public final a(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/google/android/exoplayer2/e;->d:I

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method public final a(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 154
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/e;->k:Z

    .line 155
    iput-wide p1, p0, Lcom/google/android/exoplayer2/e;->i:J

    .line 156
    iput-wide p1, p0, Lcom/google/android/exoplayer2/e;->j:J

    .line 157
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/e;->a(JZ)V

    return-void
.end method

.method protected a(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/aa;JZZJJ)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object v7, p0

    move-wide v8, p4

    move/from16 v10, p6

    .line 93
    iget v0, v7, Lcom/google/android/exoplayer2/e;->e:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    move-object v0, p1

    .line 94
    iput-object v0, v7, Lcom/google/android/exoplayer2/e;->c:Lcom/google/android/exoplayer2/RendererConfiguration;

    .line 95
    iput v1, v7, Lcom/google/android/exoplayer2/e;->e:I

    .line 96
    iput-wide v8, v7, Lcom/google/android/exoplayer2/e;->i:J

    move/from16 v0, p7

    .line 97
    invoke-virtual {p0, v10, v0}, Lcom/google/android/exoplayer2/e;->a(ZZ)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    .line 98
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/e;->a([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/aa;JJ)V

    .line 99
    invoke-virtual {p0, v8, v9, v10}, Lcom/google/android/exoplayer2/e;->a(JZ)V

    return-void
.end method

.method protected a(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected a([Lcom/google/android/exoplayer2/Format;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method public final a([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/aa;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 113
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/e;->k:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 114
    iput-object p2, p0, Lcom/google/android/exoplayer2/e;->f:Lcom/google/android/exoplayer2/source/aa;

    .line 115
    iput-wide p5, p0, Lcom/google/android/exoplayer2/e;->j:J

    .line 116
    iput-object p1, p0, Lcom/google/android/exoplayer2/e;->g:[Lcom/google/android/exoplayer2/Format;

    .line 117
    iput-wide p5, p0, Lcom/google/android/exoplayer2/e;->h:J

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    .line 118
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/e;->a([Lcom/google/android/exoplayer2/Format;JJ)V

    return-void
.end method

.method protected final b(J)I
    .locals 3

    .line 427
    iget-object v0, p0, Lcom/google/android/exoplayer2/e;->f:Lcom/google/android/exoplayer2/source/aa;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/aa;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/e;->h:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/aa;->a(J)I

    move-result p1

    return p1
.end method

.method public final b()Lcom/google/android/exoplayer2/ag;
    .locals 0

    return-object p0
.end method

.method public c()Lcom/google/android/exoplayer2/util/p;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 104
    iget v0, p0, Lcom/google/android/exoplayer2/e;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    const/4 v0, 0x2

    .line 105
    iput v0, p0, Lcom/google/android/exoplayer2/e;->e:I

    .line 106
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e;->p()V

    return-void
.end method

.method public final f()Lcom/google/android/exoplayer2/source/aa;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/android/exoplayer2/e;->f:Lcom/google/android/exoplayer2/source/aa;

    return-object v0
.end method

.method public final g()Z
    .locals 5

    .line 129
    iget-wide v0, p0, Lcom/google/android/exoplayer2/e;->j:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h()J
    .locals 2

    .line 134
    iget-wide v0, p0, Lcom/google/android/exoplayer2/e;->j:J

    return-wide v0
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/e;->k:Z

    return-void
.end method

.method public final j()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/e;->k:Z

    return v0
.end method

.method public final k()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/google/android/exoplayer2/e;->f:Lcom/google/android/exoplayer2/source/aa;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/aa;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/aa;->b()V

    return-void
.end method

.method public final l()V
    .locals 3

    .line 162
    iget v0, p0, Lcom/google/android/exoplayer2/e;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 163
    iput v1, p0, Lcom/google/android/exoplayer2/e;->e:I

    .line 164
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e;->q()V

    return-void
.end method

.method public final m()V
    .locals 3

    .line 169
    iget v0, p0, Lcom/google/android/exoplayer2/e;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 170
    iget-object v0, p0, Lcom/google/android/exoplayer2/e;->b:Lcom/google/android/exoplayer2/q;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/q;->a()V

    .line 171
    iput v2, p0, Lcom/google/android/exoplayer2/e;->e:I

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lcom/google/android/exoplayer2/e;->f:Lcom/google/android/exoplayer2/source/aa;

    .line 173
    iput-object v0, p0, Lcom/google/android/exoplayer2/e;->g:[Lcom/google/android/exoplayer2/Format;

    .line 174
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/e;->k:Z

    .line 175
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e;->r()V

    return-void
.end method

.method public final n()V
    .locals 1

    .line 180
    iget v0, p0, Lcom/google/android/exoplayer2/e;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/e;->b:Lcom/google/android/exoplayer2/q;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/q;->a()V

    .line 182
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e;->s()V

    return-void
.end method

.method public o()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected p()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected q()V
    .locals 0

    return-void
.end method

.method protected r()V
    .locals 0

    return-void
.end method

.method protected s()V
    .locals 0

    return-void
.end method

.method protected final t()Lcom/google/android/exoplayer2/q;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/google/android/exoplayer2/e;->b:Lcom/google/android/exoplayer2/q;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/q;->a()V

    .line 305
    iget-object v0, p0, Lcom/google/android/exoplayer2/e;->b:Lcom/google/android/exoplayer2/q;

    return-object v0
.end method

.method protected final u()[Lcom/google/android/exoplayer2/Format;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/google/android/exoplayer2/e;->g:[Lcom/google/android/exoplayer2/Format;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method protected final v()Lcom/google/android/exoplayer2/RendererConfiguration;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/google/android/exoplayer2/e;->c:Lcom/google/android/exoplayer2/RendererConfiguration;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/RendererConfiguration;

    return-object v0
.end method

.method protected final w()Z
    .locals 1

    .line 437
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/e;->k:Z

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/e;->f:Lcom/google/android/exoplayer2/source/aa;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/aa;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/aa;->a()Z

    move-result v0

    return v0
.end method
