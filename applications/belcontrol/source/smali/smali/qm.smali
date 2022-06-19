.class public final Lqm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lum;


# static fields
.field public static final v:[B


# instance fields
.field public final a:Z

.field public final b:Lxt;

.field public final c:Lyt;

.field public final d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lkk;

.field public g:Lkk;

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:J

.field public r:I

.field public s:J

.field public t:Lkk;

.field public u:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lqm;->v:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lqm;-><init>(ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lxt;

    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lxt;-><init>([B)V

    iput-object v0, p0, Lqm;->b:Lxt;

    new-instance v0, Lyt;

    sget-object v1, Lqm;->v:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lyt;-><init>([B)V

    iput-object v0, p0, Lqm;->c:Lyt;

    invoke-virtual {p0}, Lqm;->p()V

    const/4 v0, -0x1

    iput v0, p0, Lqm;->m:I

    iput v0, p0, Lqm;->n:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lqm;->q:J

    iput-boolean p1, p0, Lqm;->a:Z

    iput-object p2, p0, Lqm;->d:Ljava/lang/String;

    return-void
.end method

.method public static j(I)Z
    .locals 1

    const v0, 0xfff6

    and-int/2addr p0, v0

    const v0, 0xfff0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Lyt;)V
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lyt;->a()I

    move-result v0

    if-lez v0, :cond_7

    iget v0, p0, Lqm;->h:I

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lqm;->m(Lyt;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    iget-boolean v0, p0, Lqm;->k:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    goto :goto_1

    :cond_3
    const/4 v0, 0x5

    :goto_1
    iget-object v1, p0, Lqm;->b:Lxt;

    iget-object v1, v1, Lxt;->a:[B

    invoke-virtual {p0, p1, v1, v0}, Lqm;->f(Lyt;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lqm;->k()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lqm;->c:Lyt;

    iget-object v0, v0, Lyt;->a:[B

    const/16 v1, 0xa

    invoke-virtual {p0, p1, v0, v1}, Lqm;->f(Lyt;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lqm;->l()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lqm;->d(Lyt;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p1}, Lqm;->g(Lyt;)V

    goto :goto_0

    :cond_7
    return-void
.end method

.method public b(Lck;Lpn$d;)V
    .locals 3

    invoke-virtual {p2}, Lpn$d;->a()V

    invoke-virtual {p2}, Lpn$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqm;->e:Ljava/lang/String;

    invoke-virtual {p2}, Lpn$d;->c()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lck;->track(II)Lkk;

    move-result-object v0

    iput-object v0, p0, Lqm;->f:Lkk;

    iget-boolean v0, p0, Lqm;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lpn$d;->a()V

    invoke-virtual {p2}, Lpn$d;->c()I

    move-result v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Lck;->track(II)Lkk;

    move-result-object p1

    iput-object p1, p0, Lqm;->g:Lkk;

    invoke-virtual {p2}, Lpn$d;->b()Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    const-string v1, "application/id3"

    const/4 v2, 0x0

    invoke-static {p2, v1, v2, v0, v2}, Landroidx/media2/exoplayer/external/Format;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p2

    invoke-interface {p1, p2}, Lkk;->b(Landroidx/media2/exoplayer/external/Format;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lzj;

    invoke-direct {p1}, Lzj;-><init>()V

    iput-object p1, p0, Lqm;->g:Lkk;

    :goto_0
    return-void
.end method

.method public c(JI)V
    .locals 0

    iput-wide p1, p0, Lqm;->s:J

    return-void
.end method

.method public final d(Lyt;)V
    .locals 3

    invoke-virtual {p1}, Lyt;->a()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lqm;->b:Lxt;

    iget-object v0, v0, Lxt;->a:[B

    const/4 v1, 0x0

    iget-object v2, p1, Lyt;->a:[B

    invoke-virtual {p1}, Lyt;->c()I

    move-result p1

    aget-byte p1, v2, p1

    aput-byte p1, v0, v1

    iget-object p1, p0, Lqm;->b:Lxt;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lxt;->l(I)V

    iget-object p1, p0, Lqm;->b:Lxt;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lxt;->g(I)I

    move-result p1

    iget v0, p0, Lqm;->n:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lqm;->n()V

    return-void

    :cond_1
    iget-boolean v0, p0, Lqm;->l:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lqm;->l:Z

    iget v0, p0, Lqm;->o:I

    iput v0, p0, Lqm;->m:I

    iput p1, p0, Lqm;->n:I

    :cond_2
    invoke-virtual {p0}, Lqm;->q()V

    return-void
.end method

.method public final e(Lyt;I)Z
    .locals 7

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Lyt;->J(I)V

    iget-object v0, p0, Lqm;->b:Lxt;

    iget-object v0, v0, Lxt;->a:[B

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lqm;->t(Lyt;[BI)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lqm;->b:Lxt;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lxt;->l(I)V

    iget-object v0, p0, Lqm;->b:Lxt;

    invoke-virtual {v0, v1}, Lxt;->g(I)I

    move-result v0

    iget v4, p0, Lqm;->m:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    if-eq v0, v4, :cond_1

    return v2

    :cond_1
    iget v4, p0, Lqm;->n:I

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lqm;->b:Lxt;

    iget-object v4, v4, Lxt;->a:[B

    invoke-virtual {p0, p1, v4, v1}, Lqm;->t(Lyt;[BI)Z

    move-result v4

    if-nez v4, :cond_2

    return v1

    :cond_2
    iget-object v4, p0, Lqm;->b:Lxt;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lxt;->l(I)V

    iget-object v4, p0, Lqm;->b:Lxt;

    invoke-virtual {v4, v3}, Lxt;->g(I)I

    move-result v4

    iget v6, p0, Lqm;->n:I

    if-eq v4, v6, :cond_3

    return v2

    :cond_3
    add-int/lit8 v4, p2, 0x2

    invoke-virtual {p1, v4}, Lyt;->J(I)V

    :cond_4
    iget-object v4, p0, Lqm;->b:Lxt;

    iget-object v4, v4, Lxt;->a:[B

    invoke-virtual {p0, p1, v4, v3}, Lqm;->t(Lyt;[BI)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    :cond_5
    iget-object v3, p0, Lqm;->b:Lxt;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lxt;->l(I)V

    iget-object v3, p0, Lqm;->b:Lxt;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lxt;->g(I)I

    move-result v3

    const/4 v4, 0x6

    if-gt v3, v4, :cond_6

    return v2

    :cond_6
    add-int/2addr p2, v3

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p1}, Lyt;->d()I

    move-result v4

    if-lt v3, v4, :cond_7

    return v1

    :cond_7
    iget-object v4, p1, Lyt;->a:[B

    aget-byte p2, v4, p2

    aget-byte v4, v4, v3

    invoke-virtual {p0, p2, v4}, Lqm;->i(BB)Z

    move-result p2

    if-eqz p2, :cond_8

    iget p2, p0, Lqm;->m:I

    if-eq p2, v5, :cond_9

    iget-object p1, p1, Lyt;->a:[B

    aget-byte p1, p1, v3

    and-int/lit8 p1, p1, 0x8

    shr-int/lit8 p1, p1, 0x3

    if-ne p1, v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_0
    return v1
.end method

.method public final f(Lyt;[BI)Z
    .locals 2

    invoke-virtual {p1}, Lyt;->a()I

    move-result v0

    iget v1, p0, Lqm;->i:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lqm;->i:I

    invoke-virtual {p1, p2, v1, v0}, Lyt;->f([BII)V

    iget p1, p0, Lqm;->i:I

    add-int/2addr p1, v0

    iput p1, p0, Lqm;->i:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final g(Lyt;)V
    .locals 7

    iget-object v0, p1, Lyt;->a:[B

    invoke-virtual {p1}, Lyt;->c()I

    move-result v1

    invoke-virtual {p1}, Lyt;->d()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_9

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iget v4, p0, Lqm;->j:I

    const/16 v5, 0x200

    if-ne v4, v5, :cond_3

    int-to-byte v4, v1

    const/4 v6, -0x1

    invoke-virtual {p0, v6, v4}, Lqm;->i(BB)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lqm;->l:Z

    if-nez v4, :cond_0

    add-int/lit8 v4, v3, -0x2

    invoke-virtual {p0, p1, v4}, Lqm;->e(Lyt;I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    and-int/lit8 v0, v1, 0x8

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lqm;->o:I

    const/4 v0, 0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lqm;->k:Z

    iget-boolean v0, p0, Lqm;->l:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lqm;->o()V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lqm;->q()V

    :goto_2
    invoke-virtual {p1, v3}, Lyt;->J(I)V

    return-void

    :cond_3
    iget v4, p0, Lqm;->j:I

    or-int/2addr v1, v4

    const/16 v6, 0x149

    if-eq v1, v6, :cond_7

    const/16 v6, 0x1ff

    if-eq v1, v6, :cond_6

    const/16 v5, 0x344

    if-eq v1, v5, :cond_5

    const/16 v5, 0x433

    if-eq v1, v5, :cond_4

    const/16 v1, 0x100

    if-eq v4, v1, :cond_8

    iput v1, p0, Lqm;->j:I

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lqm;->r()V

    invoke-virtual {p1, v3}, Lyt;->J(I)V

    return-void

    :cond_5
    const/16 v1, 0x400

    goto :goto_3

    :cond_6
    iput v5, p0, Lqm;->j:I

    goto :goto_4

    :cond_7
    const/16 v1, 0x300

    :goto_3
    iput v1, p0, Lqm;->j:I

    :cond_8
    :goto_4
    move v1, v3

    goto :goto_0

    :cond_9
    invoke-virtual {p1, v1}, Lyt;->J(I)V

    return-void
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lqm;->q:J

    return-wide v0
.end method

.method public final i(BB)Z
    .locals 0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p1, p2

    invoke-static {p1}, Lqm;->j(I)Z

    move-result p1

    return p1
.end method

.method public final k()V
    .locals 18

    move-object/from16 v6, p0

    iget-object v0, v6, Lqm;->b:Lxt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lxt;->l(I)V

    iget-boolean v0, v6, Lqm;->p:Z

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-nez v0, :cond_1

    iget-object v0, v6, Lqm;->b:Lxt;

    invoke-virtual {v0, v2}, Lxt;->g(I)I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    if-eq v0, v2, :cond_0

    const/16 v4, 0x3d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Detected audio object type: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but assuming AAC LC."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "AdtsReader"

    invoke-static {v4, v0}, Lst;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    :cond_0
    iget-object v4, v6, Lqm;->b:Lxt;

    invoke-virtual {v4, v1}, Lxt;->n(I)V

    iget-object v4, v6, Lqm;->b:Lxt;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lxt;->g(I)I

    move-result v4

    iget v5, v6, Lqm;->n:I

    invoke-static {v0, v5, v4}, Lkt;->a(III)[B

    move-result-object v0

    invoke-static {v0}, Lkt;->g([B)Landroid/util/Pair;

    move-result-object v4

    iget-object v7, v6, Lqm;->e:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v0, v6, Lqm;->d:Ljava/lang/String;

    const-string v8, "audio/mp4a-latm"

    move-object/from16 v17, v0

    invoke-static/range {v7 .. v17}, Landroidx/media2/exoplayer/external/Format;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    const-wide/32 v4, 0x3d090000

    iget v7, v0, Landroidx/media2/exoplayer/external/Format;->y:I

    int-to-long v7, v7

    div-long/2addr v4, v7

    iput-wide v4, v6, Lqm;->q:J

    iget-object v4, v6, Lqm;->f:Lkk;

    invoke-interface {v4, v0}, Lkk;->b(Landroidx/media2/exoplayer/external/Format;)V

    iput-boolean v3, v6, Lqm;->p:Z

    goto :goto_0

    :cond_1
    iget-object v0, v6, Lqm;->b:Lxt;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Lxt;->n(I)V

    :goto_0
    iget-object v0, v6, Lqm;->b:Lxt;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lxt;->n(I)V

    iget-object v0, v6, Lqm;->b:Lxt;

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Lxt;->g(I)I

    move-result v0

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    iget-boolean v1, v6, Lqm;->k:Z

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x2

    :cond_2
    move v5, v0

    iget-object v1, v6, Lqm;->f:Lkk;

    iget-wide v2, v6, Lqm;->q:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lqm;->s(Lkk;JII)V

    return-void
.end method

.method public final l()V
    .locals 9

    iget-object v0, p0, Lqm;->g:Lkk;

    iget-object v1, p0, Lqm;->c:Lyt;

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Lkk;->c(Lyt;I)V

    iget-object v0, p0, Lqm;->c:Lyt;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lyt;->J(I)V

    iget-object v4, p0, Lqm;->g:Lkk;

    iget-object v0, p0, Lqm;->c:Lyt;

    invoke-virtual {v0}, Lyt;->v()I

    move-result v0

    add-int/lit8 v8, v0, 0xa

    const-wide/16 v5, 0x0

    const/16 v7, 0xa

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lqm;->s(Lkk;JII)V

    return-void
.end method

.method public final m(Lyt;)V
    .locals 7

    invoke-virtual {p1}, Lyt;->a()I

    move-result v0

    iget v1, p0, Lqm;->r:I

    iget v2, p0, Lqm;->i:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lqm;->t:Lkk;

    invoke-interface {v1, p1, v0}, Lkk;->c(Lyt;I)V

    iget p1, p0, Lqm;->i:I

    add-int/2addr p1, v0

    iput p1, p0, Lqm;->i:I

    iget v4, p0, Lqm;->r:I

    if-ne p1, v4, :cond_0

    iget-object v0, p0, Lqm;->t:Lkk;

    iget-wide v1, p0, Lqm;->s:J

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lkk;->a(JIIILkk$a;)V

    iget-wide v0, p0, Lqm;->s:J

    iget-wide v2, p0, Lqm;->u:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lqm;->s:J

    invoke-virtual {p0}, Lqm;->p()V

    :cond_0
    return-void
.end method

.method public final n()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lqm;->l:Z

    invoke-virtual {p0}, Lqm;->p()V

    return-void
.end method

.method public final o()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lqm;->h:I

    const/4 v0, 0x0

    iput v0, p0, Lqm;->i:I

    return-void
.end method

.method public final p()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lqm;->h:I

    iput v0, p0, Lqm;->i:I

    const/16 v0, 0x100

    iput v0, p0, Lqm;->j:I

    return-void
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public final q()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lqm;->h:I

    const/4 v0, 0x0

    iput v0, p0, Lqm;->i:I

    return-void
.end method

.method public final r()V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lqm;->h:I

    sget-object v0, Lqm;->v:[B

    array-length v0, v0

    iput v0, p0, Lqm;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lqm;->r:I

    iget-object v1, p0, Lqm;->c:Lyt;

    invoke-virtual {v1, v0}, Lyt;->J(I)V

    return-void
.end method

.method public final s(Lkk;JII)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lqm;->h:I

    iput p4, p0, Lqm;->i:I

    iput-object p1, p0, Lqm;->t:Lkk;

    iput-wide p2, p0, Lqm;->u:J

    iput p5, p0, Lqm;->r:I

    return-void
.end method

.method public seek()V
    .locals 0

    invoke-virtual {p0}, Lqm;->n()V

    return-void
.end method

.method public final t(Lyt;[BI)Z
    .locals 2

    invoke-virtual {p1}, Lyt;->a()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p3, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1, p2, v1, p3}, Lyt;->f([BII)V

    const/4 p1, 0x1

    return p1
.end method
