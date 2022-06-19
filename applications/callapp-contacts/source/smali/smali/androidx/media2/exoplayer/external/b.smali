.class public abstract Landroidx/media2/exoplayer/external/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/ag;
.implements Landroidx/media2/exoplayer/external/ah;


# instance fields
.field private final a:I

.field private b:Landroidx/media2/exoplayer/external/RendererConfiguration;

.field private c:I

.field private d:I

.field private e:Landroidx/media2/exoplayer/external/source/al;

.field private f:[Landroidx/media2/exoplayer/external/Format;

.field private g:J

.field private h:J

.field private i:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Landroidx/media2/exoplayer/external/b;->a:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 55
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/b;->h:J

    return-void
.end method

.method protected static a(Landroidx/media2/exoplayer/external/drm/k;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/k<",
            "*>;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ")Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 370
    :cond_1
    invoke-interface {p0, p1}, Landroidx/media2/exoplayer/external/drm/k;->a(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 60
    iget v0, p0, Landroidx/media2/exoplayer/external/b;->a:I

    return v0
.end method

.method protected final a(Landroidx/media2/exoplayer/external/x;Landroidx/media2/exoplayer/external/b/e;Z)I
    .locals 5

    .line 316
    iget-object v0, p0, Landroidx/media2/exoplayer/external/b;->e:Landroidx/media2/exoplayer/external/source/al;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/al;->a(Landroidx/media2/exoplayer/external/x;Landroidx/media2/exoplayer/external/b/e;Z)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    .line 318
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/b/e;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    .line 319
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/b;->h:J

    .line 320
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/b;->i:Z

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, -0x3

    return p1

    .line 322
    :cond_1
    iget-wide v0, p2, Landroidx/media2/exoplayer/external/b/e;->d:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/b;->g:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Landroidx/media2/exoplayer/external/b/e;->d:J

    .line 323
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/b;->h:J

    iget-wide p1, p2, Landroidx/media2/exoplayer/external/b/e;->d:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/b;->h:J

    goto :goto_0

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    .line 325
    iget-object p2, p1, Landroidx/media2/exoplayer/external/x;->c:Landroidx/media2/exoplayer/external/Format;

    .line 326
    iget-wide v0, p2, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 327
    iget-wide v0, p2, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/b;->g:J

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Landroidx/media2/exoplayer/external/Format;->copyWithSubsampleOffsetUs(J)Landroidx/media2/exoplayer/external/Format;

    move-result-object p2

    .line 328
    iput-object p2, p1, Landroidx/media2/exoplayer/external/x;->c:Landroidx/media2/exoplayer/external/Format;

    :cond_3
    :goto_0
    return p3
.end method

.method public a(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method public final a(I)V
    .locals 0

    .line 70
    iput p1, p0, Landroidx/media2/exoplayer/external/b;->c:I

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method public final a(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/b;->i:Z

    .line 148
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/b;->h:J

    .line 149
    invoke-virtual {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/b;->a(JZ)V

    return-void
.end method

.method protected a(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/RendererConfiguration;[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/source/al;JZJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 88
    iget v0, p0, Landroidx/media2/exoplayer/external/b;->d:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 89
    iput-object p1, p0, Landroidx/media2/exoplayer/external/b;->b:Landroidx/media2/exoplayer/external/RendererConfiguration;

    .line 90
    iput v1, p0, Landroidx/media2/exoplayer/external/b;->d:I

    .line 91
    invoke-virtual {p0, p6}, Landroidx/media2/exoplayer/external/b;->a(Z)V

    .line 92
    invoke-virtual {p0, p2, p3, p7, p8}, Landroidx/media2/exoplayer/external/b;->a([Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/source/al;J)V

    .line 93
    invoke-virtual {p0, p4, p5, p6}, Landroidx/media2/exoplayer/external/b;->a(JZ)V

    return-void
.end method

.method protected a(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method public a([Landroidx/media2/exoplayer/external/Format;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method public final a([Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/source/al;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 106
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/b;->i:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 107
    iput-object p2, p0, Landroidx/media2/exoplayer/external/b;->e:Landroidx/media2/exoplayer/external/source/al;

    .line 108
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/b;->h:J

    .line 109
    iput-object p1, p0, Landroidx/media2/exoplayer/external/b;->f:[Landroidx/media2/exoplayer/external/Format;

    .line 110
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/b;->g:J

    .line 111
    invoke-virtual {p0, p1, p3, p4}, Landroidx/media2/exoplayer/external/b;->a([Landroidx/media2/exoplayer/external/Format;J)V

    return-void
.end method

.method protected final b(J)I
    .locals 3

    .line 342
    iget-object v0, p0, Landroidx/media2/exoplayer/external/b;->e:Landroidx/media2/exoplayer/external/source/al;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/b;->g:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/al;->a(J)I

    move-result p1

    return p1
.end method

.method public final b()Landroidx/media2/exoplayer/external/ah;
    .locals 0

    return-object p0
.end method

.method public c()Landroidx/media2/exoplayer/external/util/l;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 98
    iget v0, p0, Landroidx/media2/exoplayer/external/b;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    const/4 v0, 0x2

    .line 99
    iput v0, p0, Landroidx/media2/exoplayer/external/b;->d:I

    .line 100
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/b;->p()V

    return-void
.end method

.method public final f()Landroidx/media2/exoplayer/external/source/al;
    .locals 1

    .line 117
    iget-object v0, p0, Landroidx/media2/exoplayer/external/b;->e:Landroidx/media2/exoplayer/external/source/al;

    return-object v0
.end method

.method public final g()Z
    .locals 5

    .line 122
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/b;->h:J

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

    .line 127
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/b;->h:J

    return-wide v0
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/b;->i:Z

    return-void
.end method

.method public final i_()I
    .locals 1

    .line 81
    iget v0, p0, Landroidx/media2/exoplayer/external/b;->d:I

    return v0
.end method

.method public final j()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/b;->i:Z

    return v0
.end method

.method public final k()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Landroidx/media2/exoplayer/external/b;->e:Landroidx/media2/exoplayer/external/source/al;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/al;->b()V

    return-void
.end method

.method public final l()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 154
    iget v0, p0, Landroidx/media2/exoplayer/external/b;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 155
    iput v1, p0, Landroidx/media2/exoplayer/external/b;->d:I

    .line 156
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/b;->q()V

    return-void
.end method

.method public final m()V
    .locals 3

    .line 161
    iget v0, p0, Landroidx/media2/exoplayer/external/b;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 162
    iput v2, p0, Landroidx/media2/exoplayer/external/b;->d:I

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Landroidx/media2/exoplayer/external/b;->e:Landroidx/media2/exoplayer/external/source/al;

    .line 164
    iput-object v0, p0, Landroidx/media2/exoplayer/external/b;->f:[Landroidx/media2/exoplayer/external/Format;

    .line 165
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/b;->i:Z

    .line 166
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/b;->r()V

    return-void
.end method

.method public final n()V
    .locals 1

    .line 171
    iget v0, p0, Landroidx/media2/exoplayer/external/b;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 172
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/b;->s()V

    return-void
.end method

.method public o()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected p()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected q()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

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

.method protected final t()[Landroidx/media2/exoplayer/external/Format;
    .locals 1

    .line 282
    iget-object v0, p0, Landroidx/media2/exoplayer/external/b;->f:[Landroidx/media2/exoplayer/external/Format;

    return-object v0
.end method

.method protected final u()Landroidx/media2/exoplayer/external/RendererConfiguration;
    .locals 1

    .line 289
    iget-object v0, p0, Landroidx/media2/exoplayer/external/b;->b:Landroidx/media2/exoplayer/external/RendererConfiguration;

    return-object v0
.end method

.method protected final v()I
    .locals 1

    .line 296
    iget v0, p0, Landroidx/media2/exoplayer/external/b;->c:I

    return v0
.end method

.method protected final w()Z
    .locals 1

    .line 349
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/b;->i:Z

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/b;->e:Landroidx/media2/exoplayer/external/source/al;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/al;->a()Z

    move-result v0

    return v0
.end method
