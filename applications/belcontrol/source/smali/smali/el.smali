.class public final Lel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lak;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lel$a;
    }
.end annotation


# static fields
.field public static final o:Llo$a;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Lyt;

.field public final d:Lgk;

.field public final e:Lek;

.field public final f:Lfk;

.field public g:Lck;

.field public h:Lkk;

.field public i:I

.field public j:Landroidx/media2/exoplayer/external/metadata/Metadata;

.field public k:Lel$a;

.field public l:J

.field public m:J

.field public n:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcl;->a:Ldk;

    sget-object v0, Ldl;->a:Llo$a;

    sput-object v0, Lel;->o:Llo$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lel;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p1, v0, v1}, Lel;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lel;->a:I

    iput-wide p2, p0, Lel;->b:J

    new-instance p1, Lyt;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lyt;-><init>(I)V

    iput-object p1, p0, Lel;->c:Lyt;

    new-instance p1, Lgk;

    invoke-direct {p1}, Lgk;-><init>()V

    iput-object p1, p0, Lel;->d:Lgk;

    new-instance p1, Lek;

    invoke-direct {p1}, Lek;-><init>()V

    iput-object p1, p0, Lel;->e:Lek;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lel;->l:J

    new-instance p1, Lfk;

    invoke-direct {p1}, Lfk;-><init>()V

    iput-object p1, p0, Lel;->f:Lfk;

    return-void
.end method

.method public static e(Lyt;I)I
    .locals 2

    invoke-virtual {p0}, Lyt;->d()I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lyt;->J(I)V

    invoke-virtual {p0}, Lyt;->h()I

    move-result p1

    const v0, 0x58696e67

    if-eq p1, v0, :cond_0

    const v0, 0x496e666f

    if-ne p1, v0, :cond_1

    :cond_0
    return p1

    :cond_1
    invoke-virtual {p0}, Lyt;->d()I

    move-result p1

    const/16 v0, 0x28

    if-lt p1, v0, :cond_2

    const/16 p1, 0x24

    invoke-virtual {p0, p1}, Lyt;->J(I)V

    invoke-virtual {p0}, Lyt;->h()I

    move-result p0

    const p1, 0x56425249

    if-ne p0, p1, :cond_2

    return p1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static f(IJ)Z
    .locals 4

    const v0, -0x1f400

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, -0x1f400

    and-long p0, p1, v2

    cmp-long p2, v0, p0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final synthetic g()[Lak;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lak;

    new-instance v1, Lel;

    invoke-direct {v1}, Lel;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static final synthetic h(IIIII)Z
    .locals 3

    const/4 v0, 0x2

    const/16 v1, 0x4d

    const/16 v2, 0x43

    if-ne p1, v2, :cond_0

    const/16 v2, 0x4f

    if-ne p2, v2, :cond_0

    if-ne p3, v1, :cond_0

    if-eq p4, v1, :cond_1

    if-eq p0, v0, :cond_1

    :cond_0
    if-ne p1, v1, :cond_2

    const/16 p1, 0x4c

    if-ne p2, p1, :cond_2

    if-ne p3, p1, :cond_2

    const/16 p1, 0x54

    if-eq p4, p1, :cond_1

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static i(Landroidx/media2/exoplayer/external/metadata/Metadata;J)Lbl;
    .locals 4

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/metadata/Metadata;->d()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/metadata/Metadata;->c(I)Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    move-result-object v2

    instance-of v3, v2, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;

    if-eqz v3, :cond_0

    check-cast v2, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;

    invoke-static {p1, p2, v2}, Lbl;->a(JLandroidx/media2/exoplayer/external/metadata/id3/MlltFrame;)Lbl;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Lbk;Lhk;)I
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lel;->i:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move-object/from16 v2, p1

    :try_start_0
    invoke-virtual {v0, v2, v1}, Lel;->m(Lbk;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, -0x1

    return v1

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    iget-object v1, v0, Lel;->k:Lel$a;

    if-nez v1, :cond_6

    invoke-virtual/range {p0 .. p1}, Lel;->j(Lbk;)Lel$a;

    move-result-object v1

    iget-object v3, v0, Lel;->j:Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-interface/range {p1 .. p1}, Lbk;->getPosition()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lel;->i(Landroidx/media2/exoplayer/external/metadata/Metadata;J)Lbl;

    move-result-object v3

    if-eqz v3, :cond_1

    iput-object v3, v0, Lel;->k:Lel$a;

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    iput-object v1, v0, Lel;->k:Lel$a;

    :cond_2
    :goto_1
    iget-object v1, v0, Lel;->k:Lel$a;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lik;->isSeekable()Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, v0, Lel;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual/range {p0 .. p1}, Lel;->d(Lbk;)Lel$a;

    move-result-object v1

    iput-object v1, v0, Lel;->k:Lel$a;

    :cond_4
    iget-object v1, v0, Lel;->g:Lck;

    iget-object v3, v0, Lel;->k:Lel$a;

    invoke-interface {v1, v3}, Lck;->e(Lik;)V

    iget-object v1, v0, Lel;->h:Lkk;

    const/4 v3, 0x0

    iget-object v4, v0, Lel;->d:Lgk;

    iget-object v5, v4, Lgk;->b:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/16 v8, 0x1000

    iget v9, v4, Lgk;->e:I

    iget v10, v4, Lgk;->d:I

    const/4 v11, -0x1

    iget-object v4, v0, Lel;->e:Lek;

    iget v12, v4, Lek;->a:I

    iget v13, v4, Lek;->b:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget v4, v0, Lel;->a:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    iget-object v4, v0, Lel;->j:Landroidx/media2/exoplayer/external/metadata/Metadata;

    :goto_2
    move-object/from16 v18, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move-object v13, v14

    move-object v14, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    invoke-static/range {v3 .. v17}, Landroidx/media2/exoplayer/external/Format;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    invoke-interface {v1, v3}, Lkk;->b(Landroidx/media2/exoplayer/external/Format;)V

    :cond_6
    invoke-virtual/range {p0 .. p1}, Lel;->l(Lbk;)I

    move-result v1

    return v1
.end method

.method public b(Lbk;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lel;->m(Lbk;Z)Z

    move-result p1

    return p1
.end method

.method public c(Lck;)V
    .locals 2

    iput-object p1, p0, Lel;->g:Lck;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lck;->track(II)Lkk;

    move-result-object p1

    iput-object p1, p0, Lel;->h:Lkk;

    iget-object p1, p0, Lel;->g:Lck;

    invoke-interface {p1}, Lck;->endTracks()V

    return-void
.end method

.method public final d(Lbk;)Lel$a;
    .locals 8

    iget-object v0, p0, Lel;->c:Lyt;

    iget-object v0, v0, Lyt;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Lbk;->peekFully([BII)V

    iget-object v0, p0, Lel;->c:Lyt;

    invoke-virtual {v0, v1}, Lyt;->J(I)V

    iget-object v0, p0, Lel;->c:Lyt;

    invoke-virtual {v0}, Lyt;->h()I

    move-result v0

    iget-object v1, p0, Lel;->d:Lgk;

    invoke-static {v0, v1}, Lgk;->b(ILgk;)Z

    new-instance v0, Lal;

    invoke-interface {p1}, Lbk;->getLength()J

    move-result-wide v3

    invoke-interface {p1}, Lbk;->getPosition()J

    move-result-wide v5

    iget-object v7, p0, Lel;->d:Lgk;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lal;-><init>(JJLgk;)V

    return-object v0
.end method

.method public final j(Lbk;)Lel$a;
    .locals 10

    new-instance v5, Lyt;

    iget-object v0, p0, Lel;->d:Lgk;

    iget v0, v0, Lgk;->c:I

    invoke-direct {v5, v0}, Lyt;-><init>(I)V

    iget-object v0, v5, Lyt;->a:[B

    iget-object v1, p0, Lel;->d:Lgk;

    iget v1, v1, Lgk;->c:I

    const/4 v6, 0x0

    invoke-interface {p1, v0, v6, v1}, Lbk;->peekFully([BII)V

    iget-object v0, p0, Lel;->d:Lgk;

    iget v1, v0, Lgk;->a:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/16 v3, 0x15

    iget v0, v0, Lgk;->e:I

    if-eqz v1, :cond_0

    if-eq v0, v2, :cond_1

    const/16 v3, 0x24

    const/16 v7, 0x24

    goto :goto_0

    :cond_0
    if-eq v0, v2, :cond_2

    :cond_1
    const/16 v7, 0x15

    goto :goto_0

    :cond_2
    const/16 v3, 0xd

    const/16 v7, 0xd

    :goto_0
    invoke-static {v5, v7}, Lel;->e(Lyt;I)I

    move-result v8

    const v0, 0x58696e67

    const v9, 0x496e666f

    if-eq v8, v0, :cond_5

    if-ne v8, v9, :cond_3

    goto :goto_1

    :cond_3
    const v0, 0x56425249

    if-ne v8, v0, :cond_4

    invoke-interface {p1}, Lbk;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Lbk;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lel;->d:Lgk;

    invoke-static/range {v0 .. v5}, Lfl;->a(JJLgk;Lyt;)Lfl;

    move-result-object v0

    iget-object v1, p0, Lel;->d:Lgk;

    iget v1, v1, Lgk;->c:I

    invoke-interface {p1, v1}, Lbk;->skipFully(I)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    invoke-interface {p1}, Lbk;->resetPeekPosition()V

    goto :goto_2

    :cond_5
    :goto_1
    invoke-interface {p1}, Lbk;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Lbk;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lel;->d:Lgk;

    invoke-static/range {v0 .. v5}, Lgl;->a(JJLgk;Lyt;)Lgl;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lel;->e:Lek;

    invoke-virtual {v1}, Lek;->a()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {p1}, Lbk;->resetPeekPosition()V

    add-int/lit16 v7, v7, 0x8d

    invoke-interface {p1, v7}, Lbk;->advancePeekPosition(I)V

    iget-object v1, p0, Lel;->c:Lyt;

    iget-object v1, v1, Lyt;->a:[B

    const/4 v2, 0x3

    invoke-interface {p1, v1, v6, v2}, Lbk;->peekFully([BII)V

    iget-object v1, p0, Lel;->c:Lyt;

    invoke-virtual {v1, v6}, Lyt;->J(I)V

    iget-object v1, p0, Lel;->e:Lek;

    iget-object v2, p0, Lel;->c:Lyt;

    invoke-virtual {v2}, Lyt;->z()I

    move-result v2

    invoke-virtual {v1, v2}, Lek;->d(I)Z

    :cond_6
    iget-object v1, p0, Lel;->d:Lgk;

    iget v1, v1, Lgk;->c:I

    invoke-interface {p1, v1}, Lbk;->skipFully(I)V

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lik;->isSeekable()Z

    move-result v1

    if-nez v1, :cond_7

    if-ne v8, v9, :cond_7

    invoke-virtual {p0, p1}, Lel;->d(Lbk;)Lel$a;

    move-result-object p1

    return-object p1

    :cond_7
    :goto_2
    return-object v0
.end method

.method public final k(Lbk;)Z
    .locals 8

    iget-object v0, p0, Lel;->k:Lel$a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lel$a;->d()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lbk;->getPeekPosition()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    sub-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lel;->c:Lyt;

    iget-object v0, v0, Lyt;->a:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {p1, v0, v2, v3, v1}, Lbk;->peekFully([BIIZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v1

    return p1

    :catch_0
    return v1
.end method

.method public final l(Lbk;)I
    .locals 13

    iget v0, p0, Lel;->n:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    invoke-interface {p1}, Lbk;->resetPeekPosition()V

    invoke-virtual {p0, p1}, Lel;->k(Lbk;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lel;->c:Lyt;

    invoke-virtual {v0, v3}, Lyt;->J(I)V

    iget-object v0, p0, Lel;->c:Lyt;

    invoke-virtual {v0}, Lyt;->h()I

    move-result v0

    iget v4, p0, Lel;->i:I

    int-to-long v4, v4

    invoke-static {v0, v4, v5}, Lel;->f(IJ)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v0}, Lgk;->a(I)I

    move-result v4

    if-ne v4, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lel;->d:Lgk;

    invoke-static {v0, v4}, Lgk;->b(ILgk;)Z

    iget-wide v4, p0, Lel;->l:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    iget-object v0, p0, Lel;->k:Lel$a;

    invoke-interface {p1}, Lbk;->getPosition()J

    move-result-wide v4

    invoke-interface {v0, v4, v5}, Lel$a;->getTimeUs(J)J

    move-result-wide v4

    iput-wide v4, p0, Lel;->l:J

    iget-wide v4, p0, Lel;->b:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    iget-object v0, p0, Lel;->k:Lel$a;

    const-wide/16 v4, 0x0

    invoke-interface {v0, v4, v5}, Lel$a;->getTimeUs(J)J

    move-result-wide v4

    iget-wide v6, p0, Lel;->l:J

    iget-wide v8, p0, Lel;->b:J

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lel;->l:J

    :cond_2
    iget-object v0, p0, Lel;->d:Lgk;

    iget v0, v0, Lgk;->c:I

    iput v0, p0, Lel;->n:I

    goto :goto_1

    :cond_3
    :goto_0
    invoke-interface {p1, v1}, Lbk;->skipFully(I)V

    iput v3, p0, Lel;->i:I

    return v3

    :cond_4
    :goto_1
    iget-object v0, p0, Lel;->h:Lkk;

    iget v4, p0, Lel;->n:I

    invoke-interface {v0, p1, v4, v1}, Lkk;->d(Lbk;IZ)I

    move-result p1

    if-ne p1, v2, :cond_5

    return v2

    :cond_5
    iget v0, p0, Lel;->n:I

    sub-int/2addr v0, p1

    iput v0, p0, Lel;->n:I

    if-lez v0, :cond_6

    return v3

    :cond_6
    iget-wide v0, p0, Lel;->l:J

    iget-wide v4, p0, Lel;->m:J

    const-wide/32 v6, 0xf4240

    mul-long v4, v4, v6

    iget-object p1, p0, Lel;->d:Lgk;

    iget v2, p1, Lgk;->d:I

    int-to-long v6, v2

    div-long/2addr v4, v6

    add-long v7, v0, v4

    iget-object v6, p0, Lel;->h:Lkk;

    const/4 v9, 0x1

    iget v10, p1, Lgk;->c:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Lkk;->a(JIIILkk$a;)V

    iget-wide v0, p0, Lel;->m:J

    iget-object p1, p0, Lel;->d:Lgk;

    iget p1, p1, Lgk;->g:I

    int-to-long v4, p1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lel;->m:J

    iput v3, p0, Lel;->n:I

    return v3
.end method

.method public final m(Lbk;Z)Z
    .locals 10

    if-eqz p2, :cond_0

    const/16 v0, 0x4000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x20000

    :goto_0
    invoke-interface {p1}, Lbk;->resetPeekPosition()V

    invoke-interface {p1}, Lbk;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmp-long v7, v1, v3

    if-nez v7, :cond_5

    iget v1, p0, Lel;->a:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    sget-object v1, Lel;->o:Llo$a;

    :goto_2
    iget-object v2, p0, Lel;->f:Lfk;

    invoke-virtual {v2, p1, v1}, Lfk;->a(Lbk;Llo$a;)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v1

    iput-object v1, p0, Lel;->j:Landroidx/media2/exoplayer/external/metadata/Metadata;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lel;->e:Lek;

    invoke-virtual {v2, v1}, Lek;->c(Landroidx/media2/exoplayer/external/metadata/Metadata;)Z

    :cond_3
    invoke-interface {p1}, Lbk;->getPeekPosition()J

    move-result-wide v1

    long-to-int v2, v1

    if-nez p2, :cond_4

    invoke-interface {p1, v2}, Lbk;->skipFully(I)V

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_4
    invoke-virtual {p0, p1}, Lel;->k(Lbk;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-lez v3, :cond_6

    goto :goto_6

    :cond_6
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_7
    iget-object v7, p0, Lel;->c:Lyt;

    invoke-virtual {v7, v6}, Lyt;->J(I)V

    iget-object v7, p0, Lel;->c:Lyt;

    invoke-virtual {v7}, Lyt;->h()I

    move-result v7

    if-eqz v1, :cond_8

    int-to-long v8, v1

    invoke-static {v7, v8, v9}, Lel;->f(IJ)Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_8
    invoke-static {v7}, Lgk;->a(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_d

    :cond_9
    add-int/lit8 v1, v4, 0x1

    if-ne v4, v0, :cond_b

    if-eqz p2, :cond_a

    return v6

    :cond_a
    new-instance p1, Lch;

    const-string p2, "Searched too many bytes."

    invoke-direct {p1, p2}, Lch;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    if-eqz p2, :cond_c

    invoke-interface {p1}, Lbk;->resetPeekPosition()V

    add-int v3, v2, v1

    invoke-interface {p1, v3}, Lbk;->advancePeekPosition(I)V

    goto :goto_5

    :cond_c
    invoke-interface {p1, v5}, Lbk;->skipFully(I)V

    :goto_5
    move v4, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto :goto_4

    :cond_d
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_e

    iget-object v1, p0, Lel;->d:Lgk;

    invoke-static {v7, v1}, Lgk;->b(ILgk;)Z

    move v1, v7

    goto :goto_8

    :cond_e
    const/4 v7, 0x4

    if-ne v3, v7, :cond_10

    :goto_6
    if-eqz p2, :cond_f

    add-int/2addr v2, v4

    invoke-interface {p1, v2}, Lbk;->skipFully(I)V

    goto :goto_7

    :cond_f
    invoke-interface {p1}, Lbk;->resetPeekPosition()V

    :goto_7
    iput v1, p0, Lel;->i:I

    return v5

    :cond_10
    :goto_8
    add-int/lit8 v8, v8, -0x4

    invoke-interface {p1, v8}, Lbk;->advancePeekPosition(I)V

    goto :goto_4
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lel;->i:I

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p2, p0, Lel;->l:J

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lel;->m:J

    iput p1, p0, Lel;->n:I

    return-void
.end method
