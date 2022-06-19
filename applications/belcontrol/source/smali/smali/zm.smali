.class public final Lzm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lum;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lyt;

.field public final c:Lxt;

.field public d:Lkk;

.field public e:Landroidx/media2/exoplayer/external/Format;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:J

.field public l:Z

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:J

.field public r:I

.field public s:J

.field public t:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzm;->a:Ljava/lang/String;

    new-instance p1, Lyt;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Lyt;-><init>(I)V

    iput-object p1, p0, Lzm;->b:Lyt;

    new-instance v0, Lxt;

    iget-object p1, p1, Lyt;->a:[B

    invoke-direct {v0, p1}, Lxt;-><init>([B)V

    iput-object v0, p0, Lzm;->c:Lxt;

    return-void
.end method

.method public static d(Lxt;)J
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lxt;->g(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lxt;->g(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method


# virtual methods
.method public a(Lyt;)V
    .locals 6

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lyt;->a()I

    move-result v0

    if-lez v0, :cond_7

    iget v0, p0, Lzm;->g:I

    const/16 v1, 0x56

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v2, :cond_4

    const/4 v1, 0x3

    if-eq v0, v3, :cond_2

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lyt;->a()I

    move-result v0

    iget v1, p0, Lzm;->i:I

    iget v2, p0, Lzm;->h:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lzm;->c:Lxt;

    iget-object v1, v1, Lxt;->a:[B

    iget v2, p0, Lzm;->h:I

    invoke-virtual {p1, v1, v2, v0}, Lyt;->f([BII)V

    iget v1, p0, Lzm;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Lzm;->h:I

    iget v0, p0, Lzm;->i:I

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lzm;->c:Lxt;

    invoke-virtual {v0, v4}, Lxt;->l(I)V

    iget-object v0, p0, Lzm;->c:Lxt;

    invoke-virtual {p0, v0}, Lzm;->e(Lxt;)V

    :goto_1
    iput v4, p0, Lzm;->g:I

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    iget v0, p0, Lzm;->j:I

    and-int/lit16 v0, v0, -0xe1

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Lyt;->w()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Lzm;->i:I

    iget-object v2, p0, Lzm;->b:Lyt;

    iget-object v2, v2, Lyt;->a:[B

    array-length v2, v2

    if-le v0, v2, :cond_3

    invoke-virtual {p0, v0}, Lzm;->k(I)V

    :cond_3
    iput v4, p0, Lzm;->h:I

    iput v1, p0, Lzm;->g:I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lyt;->w()I

    move-result v0

    and-int/lit16 v2, v0, 0xe0

    const/16 v5, 0xe0

    if-ne v2, v5, :cond_5

    iput v0, p0, Lzm;->j:I

    iput v3, p0, Lzm;->g:I

    goto :goto_0

    :cond_5
    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lyt;->w()I

    move-result v0

    if-ne v0, v1, :cond_0

    iput v2, p0, Lzm;->g:I

    goto :goto_0

    :cond_7
    return-void
.end method

.method public b(Lck;Lpn$d;)V
    .locals 2

    invoke-virtual {p2}, Lpn$d;->a()V

    invoke-virtual {p2}, Lpn$d;->c()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lck;->track(II)Lkk;

    move-result-object p1

    iput-object p1, p0, Lzm;->d:Lkk;

    invoke-virtual {p2}, Lpn$d;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzm;->f:Ljava/lang/String;

    return-void
.end method

.method public c(JI)V
    .locals 0

    iput-wide p1, p0, Lzm;->k:J

    return-void
.end method

.method public final e(Lxt;)V
    .locals 2

    invoke-virtual {p1}, Lxt;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzm;->l:Z

    invoke-virtual {p0, p1}, Lzm;->j(Lxt;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lzm;->l:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    :goto_0
    iget v0, p0, Lzm;->m:I

    if-nez v0, :cond_4

    iget v0, p0, Lzm;->n:I

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lzm;->h(Lxt;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lzm;->i(Lxt;I)V

    iget-boolean v0, p0, Lzm;->p:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lzm;->q:J

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Lxt;->n(I)V

    :cond_2
    return-void

    :cond_3
    new-instance p1, Lch;

    invoke-direct {p1}, Lch;-><init>()V

    throw p1

    :cond_4
    new-instance p1, Lch;

    invoke-direct {p1}, Lch;-><init>()V

    throw p1
.end method

.method public final f(Lxt;)I
    .locals 3

    invoke-virtual {p1}, Lxt;->b()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lkt;->f(Lxt;Z)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lzm;->r:I

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lzm;->t:I

    invoke-virtual {p1}, Lxt;->b()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public final g(Lxt;)V
    .locals 4

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lxt;->g(I)I

    move-result v1

    iput v1, p0, Lzm;->o:I

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x6

    if-eq v1, v0, :cond_2

    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    const/4 v0, 0x5

    if-eq v1, v0, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v0, 0x7

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Lxt;->n(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v3}, Lxt;->n(I)V

    goto :goto_2

    :cond_3
    const/16 v0, 0x9

    goto :goto_1

    :cond_4
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Lxt;->n(I)V

    :goto_2
    return-void
.end method

.method public final h(Lxt;)I
    .locals 3

    iget v0, p0, Lzm;->o:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lxt;->g(I)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    return v0

    :cond_1
    new-instance p1, Lch;

    invoke-direct {p1}, Lch;-><init>()V

    throw p1
.end method

.method public final i(Lxt;I)V
    .locals 8

    invoke-virtual {p1}, Lxt;->d()I

    move-result v0

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_0

    iget-object p1, p0, Lzm;->b:Lyt;

    shr-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Lyt;->J(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lzm;->b:Lyt;

    iget-object v0, v0, Lyt;->a:[B

    mul-int/lit8 v1, p2, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lxt;->h([BII)V

    iget-object p1, p0, Lzm;->b:Lyt;

    invoke-virtual {p1, v2}, Lyt;->J(I)V

    :goto_0
    iget-object p1, p0, Lzm;->d:Lkk;

    iget-object v0, p0, Lzm;->b:Lyt;

    invoke-interface {p1, v0, p2}, Lkk;->c(Lyt;I)V

    iget-object v1, p0, Lzm;->d:Lkk;

    iget-wide v2, p0, Lzm;->k:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, p2

    invoke-interface/range {v1 .. v7}, Lkk;->a(JIIILkk$a;)V

    iget-wide p1, p0, Lzm;->k:J

    iget-wide v0, p0, Lzm;->s:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lzm;->k:J

    return-void
.end method

.method public final j(Lxt;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lxt;->g(I)I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v2, :cond_0

    invoke-virtual {v1, v2}, Lxt;->g(I)I

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iput v5, v0, Lzm;->m:I

    if-nez v5, :cond_9

    if-ne v3, v2, :cond_1

    invoke-static/range {p1 .. p1}, Lzm;->d(Lxt;)J

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lxt;->f()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x6

    invoke-virtual {v1, v5}, Lxt;->g(I)I

    move-result v5

    iput v5, v0, Lzm;->n:I

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lxt;->g(I)I

    move-result v5

    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Lxt;->g(I)I

    move-result v6

    if-nez v5, :cond_7

    if-nez v6, :cond_7

    const/16 v5, 0x8

    if-nez v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lxt;->d()I

    move-result v6

    invoke-virtual/range {p0 .. p1}, Lzm;->f(Lxt;)I

    move-result v7

    invoke-virtual {v1, v6}, Lxt;->l(I)V

    add-int/lit8 v6, v7, 0x7

    div-int/2addr v6, v5

    new-array v6, v6, [B

    invoke-virtual {v1, v6, v4, v7}, Lxt;->h([BII)V

    iget-object v8, v0, Lzm;->f:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    iget v13, v0, Lzm;->t:I

    iget v14, v0, Lzm;->r:I

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-object v4, v0, Lzm;->a:Ljava/lang/String;

    const-string v9, "audio/mp4a-latm"

    move-object/from16 v18, v4

    invoke-static/range {v8 .. v18}, Landroidx/media2/exoplayer/external/Format;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v4

    iget-object v6, v0, Lzm;->e:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v4, v6}, Landroidx/media2/exoplayer/external/Format;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iput-object v4, v0, Lzm;->e:Landroidx/media2/exoplayer/external/Format;

    const-wide/32 v6, 0x3d090000

    iget v8, v4, Landroidx/media2/exoplayer/external/Format;->y:I

    int-to-long v8, v8

    div-long/2addr v6, v8

    iput-wide v6, v0, Lzm;->s:J

    iget-object v6, v0, Lzm;->d:Lkk;

    invoke-interface {v6, v4}, Lkk;->b(Landroidx/media2/exoplayer/external/Format;)V

    goto :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, Lzm;->d(Lxt;)J

    move-result-wide v6

    long-to-int v4, v6

    invoke-virtual/range {p0 .. p1}, Lzm;->f(Lxt;)I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual {v1, v4}, Lxt;->n(I)V

    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lzm;->g(Lxt;)V

    invoke-virtual/range {p1 .. p1}, Lxt;->f()Z

    move-result v4

    iput-boolean v4, v0, Lzm;->p:Z

    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lzm;->q:J

    if-eqz v4, :cond_5

    if-ne v3, v2, :cond_4

    invoke-static/range {p1 .. p1}, Lzm;->d(Lxt;)J

    move-result-wide v2

    iput-wide v2, v0, Lzm;->q:J

    goto :goto_2

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lxt;->f()Z

    move-result v2

    iget-wide v3, v0, Lzm;->q:J

    shl-long/2addr v3, v5

    invoke-virtual {v1, v5}, Lxt;->g(I)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v3, v6

    iput-wide v3, v0, Lzm;->q:J

    if-nez v2, :cond_4

    :cond_5
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lxt;->f()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, v5}, Lxt;->n(I)V

    :cond_6
    return-void

    :cond_7
    new-instance v1, Lch;

    invoke-direct {v1}, Lch;-><init>()V

    throw v1

    :cond_8
    new-instance v1, Lch;

    invoke-direct {v1}, Lch;-><init>()V

    throw v1

    :cond_9
    new-instance v1, Lch;

    invoke-direct {v1}, Lch;-><init>()V

    throw v1
.end method

.method public final k(I)V
    .locals 1

    iget-object v0, p0, Lzm;->b:Lyt;

    invoke-virtual {v0, p1}, Lyt;->F(I)V

    iget-object p1, p0, Lzm;->c:Lxt;

    iget-object v0, p0, Lzm;->b:Lyt;

    iget-object v0, v0, Lyt;->a:[B

    invoke-virtual {p1, v0}, Lxt;->j([B)V

    return-void
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public seek()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lzm;->g:I

    iput-boolean v0, p0, Lzm;->l:Z

    return-void
.end method
