.class public final Lnm;
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

.field public i:Z

.field public j:J

.field public k:Landroidx/media2/exoplayer/external/Format;

.field public l:I

.field public m:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnm;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lxt;

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lxt;-><init>([B)V

    iput-object v0, p0, Lnm;->a:Lxt;

    new-instance v1, Lyt;

    iget-object v0, v0, Lxt;->a:[B

    invoke-direct {v1, v0}, Lyt;-><init>([B)V

    iput-object v1, p0, Lnm;->b:Lyt;

    const/4 v0, 0x0

    iput v0, p0, Lnm;->f:I

    iput v0, p0, Lnm;->g:I

    iput-boolean v0, p0, Lnm;->h:Z

    iput-boolean v0, p0, Lnm;->i:Z

    iput-object p1, p0, Lnm;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lyt;)V
    .locals 10

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lyt;->a()I

    move-result v0

    if-lez v0, :cond_5

    iget v0, p0, Lnm;->f:I

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

    iget v2, p0, Lnm;->l:I

    iget v3, p0, Lnm;->g:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lnm;->e:Lkk;

    invoke-interface {v2, p1, v0}, Lkk;->c(Lyt;I)V

    iget v2, p0, Lnm;->g:I

    add-int/2addr v2, v0

    iput v2, p0, Lnm;->g:I

    iget v7, p0, Lnm;->l:I

    if-ne v2, v7, :cond_0

    iget-object v3, p0, Lnm;->e:Lkk;

    iget-wide v4, p0, Lnm;->m:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lkk;->a(JIIILkk$a;)V

    iget-wide v2, p0, Lnm;->m:J

    iget-wide v4, p0, Lnm;->j:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lnm;->m:J

    iput v1, p0, Lnm;->f:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnm;->b:Lyt;

    iget-object v0, v0, Lyt;->a:[B

    const/16 v3, 0x10

    invoke-virtual {p0, p1, v0, v3}, Lnm;->d(Lyt;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnm;->e()V

    iget-object v0, p0, Lnm;->b:Lyt;

    invoke-virtual {v0, v1}, Lyt;->J(I)V

    iget-object v0, p0, Lnm;->e:Lkk;

    iget-object v1, p0, Lnm;->b:Lyt;

    invoke-interface {v0, v1, v3}, Lkk;->c(Lyt;I)V

    iput v2, p0, Lnm;->f:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lnm;->f(Lyt;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v3, p0, Lnm;->f:I

    iget-object v0, p0, Lnm;->b:Lyt;

    iget-object v0, v0, Lyt;->a:[B

    const/16 v4, -0x54

    aput-byte v4, v0, v1

    iget-boolean v1, p0, Lnm;->i:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x41

    goto :goto_1

    :cond_4
    const/16 v1, 0x40

    :goto_1
    int-to-byte v1, v1

    aput-byte v1, v0, v3

    iput v2, p0, Lnm;->g:I

    goto :goto_0

    :cond_5
    return-void
.end method

.method public b(Lck;Lpn$d;)V
    .locals 1

    invoke-virtual {p2}, Lpn$d;->a()V

    invoke-virtual {p2}, Lpn$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnm;->d:Ljava/lang/String;

    invoke-virtual {p2}, Lpn$d;->c()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lck;->track(II)Lkk;

    move-result-object p1

    iput-object p1, p0, Lnm;->e:Lkk;

    return-void
.end method

.method public c(JI)V
    .locals 0

    iput-wide p1, p0, Lnm;->m:J

    return-void
.end method

.method public final d(Lyt;[BI)Z
    .locals 2

    invoke-virtual {p1}, Lyt;->a()I

    move-result v0

    iget v1, p0, Lnm;->g:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lnm;->g:I

    invoke-virtual {p1, p2, v1, v0}, Lyt;->f([BII)V

    iget p1, p0, Lnm;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lnm;->g:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final e()V
    .locals 13

    iget-object v0, p0, Lnm;->a:Lxt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lxt;->l(I)V

    iget-object v0, p0, Lnm;->a:Lxt;

    invoke-static {v0}, Lth;->d(Lxt;)Lth$b;

    move-result-object v0

    iget-object v1, p0, Lnm;->k:Landroidx/media2/exoplayer/external/Format;

    if-eqz v1, :cond_0

    iget v2, v0, Lth$b;->b:I

    iget v3, v1, Landroidx/media2/exoplayer/external/Format;->x:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lth$b;->a:I

    iget v3, v1, Landroidx/media2/exoplayer/external/Format;->y:I

    if-ne v2, v3, :cond_0

    iget-object v1, v1, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    const-string v2, "audio/ac4"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v2, p0, Lnm;->d:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    iget v7, v0, Lth$b;->b:I

    iget v8, v0, Lth$b;->a:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lnm;->c:Ljava/lang/String;

    const-string v3, "audio/ac4"

    invoke-static/range {v2 .. v12}, Landroidx/media2/exoplayer/external/Format;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    iput-object v1, p0, Lnm;->k:Landroidx/media2/exoplayer/external/Format;

    iget-object v2, p0, Lnm;->e:Lkk;

    invoke-interface {v2, v1}, Lkk;->b(Landroidx/media2/exoplayer/external/Format;)V

    :cond_1
    iget v1, v0, Lth$b;->c:I

    iput v1, p0, Lnm;->l:I

    const-wide/32 v1, 0xf4240

    iget v0, v0, Lth$b;->d:I

    int-to-long v3, v0

    mul-long v3, v3, v1

    iget-object v0, p0, Lnm;->k:Landroidx/media2/exoplayer/external/Format;

    iget v0, v0, Landroidx/media2/exoplayer/external/Format;->y:I

    int-to-long v0, v0

    div-long/2addr v3, v0

    iput-wide v3, p0, Lnm;->j:J

    return-void
.end method

.method public final f(Lyt;)Z
    .locals 5

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lyt;->a()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_6

    iget-boolean v0, p0, Lnm;->h:Z

    const/16 v2, 0xac

    const/4 v3, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lyt;->w()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lnm;->h:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lyt;->w()I

    move-result v0

    if-ne v0, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lnm;->h:Z

    const/16 v2, 0x40

    const/16 v4, 0x41

    if-eq v0, v2, :cond_4

    if-ne v0, v4, :cond_0

    :cond_4
    if-ne v0, v4, :cond_5

    const/4 v1, 0x1

    :cond_5
    iput-boolean v1, p0, Lnm;->i:Z

    return v3

    :cond_6
    return v1
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public seek()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lnm;->f:I

    iput v0, p0, Lnm;->g:I

    iput-boolean v0, p0, Lnm;->h:Z

    iput-boolean v0, p0, Lnm;->i:Z

    return-void
.end method
