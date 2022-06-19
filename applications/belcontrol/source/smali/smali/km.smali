.class public final Lkm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lum;


# instance fields
.field public final a:Lxt;

.field public final b:Lyt;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lkk;

.field public f:I

.field public g:I

.field public h:Z

.field public i:J

.field public j:Landroidx/media2/exoplayer/external/Format;

.field public k:I

.field public l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkm;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lxt;

    const/16 v1, 0x80

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lxt;-><init>([B)V

    iput-object v0, p0, Lkm;->a:Lxt;

    new-instance v1, Lyt;

    iget-object v0, v0, Lxt;->a:[B

    invoke-direct {v1, v0}, Lyt;-><init>([B)V

    iput-object v1, p0, Lkm;->b:Lyt;

    const/4 v0, 0x0

    iput v0, p0, Lkm;->f:I

    iput-object p1, p0, Lkm;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lyt;)V
    .locals 10

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lyt;->a()I

    move-result v0

    if-lez v0, :cond_4

    iget v0, p0, Lkm;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lyt;->a()I

    move-result v0

    iget v2, p0, Lkm;->k:I

    iget v3, p0, Lkm;->g:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lkm;->e:Lkk;

    invoke-interface {v2, p1, v0}, Lkk;->c(Lyt;I)V

    iget v2, p0, Lkm;->g:I

    add-int/2addr v2, v0

    iput v2, p0, Lkm;->g:I

    iget v7, p0, Lkm;->k:I

    if-ne v2, v7, :cond_0

    iget-object v3, p0, Lkm;->e:Lkk;

    iget-wide v4, p0, Lkm;->l:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lkk;->a(JIIILkk$a;)V

    iget-wide v2, p0, Lkm;->l:J

    iget-wide v4, p0, Lkm;->i:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lkm;->l:J

    iput v1, p0, Lkm;->f:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lkm;->b:Lyt;

    iget-object v0, v0, Lyt;->a:[B

    const/16 v3, 0x80

    invoke-virtual {p0, p1, v0, v3}, Lkm;->d(Lyt;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkm;->e()V

    iget-object v0, p0, Lkm;->b:Lyt;

    invoke-virtual {v0, v1}, Lyt;->J(I)V

    iget-object v0, p0, Lkm;->e:Lkk;

    iget-object v1, p0, Lkm;->b:Lyt;

    invoke-interface {v0, v1, v3}, Lkk;->c(Lyt;I)V

    iput v2, p0, Lkm;->f:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lkm;->f(Lyt;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v3, p0, Lkm;->f:I

    iget-object v0, p0, Lkm;->b:Lyt;

    iget-object v0, v0, Lyt;->a:[B

    const/16 v4, 0xb

    aput-byte v4, v0, v1

    const/16 v1, 0x77

    aput-byte v1, v0, v3

    iput v2, p0, Lkm;->g:I

    goto :goto_0

    :cond_4
    return-void
.end method

.method public b(Lck;Lpn$d;)V
    .locals 1

    invoke-virtual {p2}, Lpn$d;->a()V

    invoke-virtual {p2}, Lpn$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkm;->d:Ljava/lang/String;

    invoke-virtual {p2}, Lpn$d;->c()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lck;->track(II)Lkk;

    move-result-object p1

    iput-object p1, p0, Lkm;->e:Lkk;

    return-void
.end method

.method public c(JI)V
    .locals 0

    iput-wide p1, p0, Lkm;->l:J

    return-void
.end method

.method public final d(Lyt;[BI)Z
    .locals 2

    invoke-virtual {p1}, Lyt;->a()I

    move-result v0

    iget v1, p0, Lkm;->g:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lkm;->g:I

    invoke-virtual {p1, p2, v1, v0}, Lyt;->f([BII)V

    iget p1, p0, Lkm;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lkm;->g:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final e()V
    .locals 14

    iget-object v0, p0, Lkm;->a:Lxt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lxt;->l(I)V

    iget-object v0, p0, Lkm;->a:Lxt;

    invoke-static {v0}, Lsh;->e(Lxt;)Lsh$b;

    move-result-object v0

    iget-object v1, p0, Lkm;->j:Landroidx/media2/exoplayer/external/Format;

    if-eqz v1, :cond_0

    iget v2, v0, Lsh$b;->c:I

    iget v3, v1, Landroidx/media2/exoplayer/external/Format;->x:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lsh$b;->b:I

    iget v3, v1, Landroidx/media2/exoplayer/external/Format;->y:I

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lsh$b;->a:Ljava/lang/String;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    if-eq v2, v1, :cond_1

    :cond_0
    iget-object v3, p0, Lkm;->d:Ljava/lang/String;

    iget-object v4, v0, Lsh$b;->a:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    iget v8, v0, Lsh$b;->c:I

    iget v9, v0, Lsh$b;->b:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Lkm;->c:Ljava/lang/String;

    invoke-static/range {v3 .. v13}, Landroidx/media2/exoplayer/external/Format;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    iput-object v1, p0, Lkm;->j:Landroidx/media2/exoplayer/external/Format;

    iget-object v2, p0, Lkm;->e:Lkk;

    invoke-interface {v2, v1}, Lkk;->b(Landroidx/media2/exoplayer/external/Format;)V

    :cond_1
    iget v1, v0, Lsh$b;->d:I

    iput v1, p0, Lkm;->k:I

    const-wide/32 v1, 0xf4240

    iget v0, v0, Lsh$b;->e:I

    int-to-long v3, v0

    mul-long v3, v3, v1

    iget-object v0, p0, Lkm;->j:Landroidx/media2/exoplayer/external/Format;

    iget v0, v0, Landroidx/media2/exoplayer/external/Format;->y:I

    int-to-long v0, v0

    div-long/2addr v3, v0

    iput-wide v3, p0, Lkm;->i:J

    return-void
.end method

.method public final f(Lyt;)Z
    .locals 5

    :goto_0
    invoke-virtual {p1}, Lyt;->a()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lkm;->h:Z

    const/16 v2, 0xb

    const/4 v3, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lyt;->w()I

    move-result v0

    if-ne v0, v2, :cond_0

    :goto_1
    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lkm;->h:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lyt;->w()I

    move-result v0

    const/16 v4, 0x77

    if-ne v0, v4, :cond_2

    iput-boolean v1, p0, Lkm;->h:Z

    return v3

    :cond_2
    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_3
    return v1
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public seek()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkm;->f:I

    iput v0, p0, Lkm;->g:I

    iput-boolean v0, p0, Lkm;->h:Z

    return-void
.end method
