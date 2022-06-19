.class public final Lwm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwm$b;
    }
.end annotation


# instance fields
.field public final a:Ljn;

.field public final b:Z

.field public final c:Z

.field public final d:Lbn;

.field public final e:Lbn;

.field public final f:Lbn;

.field public g:J

.field public final h:[Z

.field public i:Ljava/lang/String;

.field public j:Lkk;

.field public k:Lwm$b;

.field public l:Z

.field public m:J

.field public n:Z

.field public final o:Lyt;


# direct methods
.method public constructor <init>(Ljn;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwm;->a:Ljn;

    iput-boolean p2, p0, Lwm;->b:Z

    iput-boolean p3, p0, Lwm;->c:Z

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Lwm;->h:[Z

    new-instance p1, Lbn;

    const/4 p2, 0x7

    const/16 p3, 0x80

    invoke-direct {p1, p2, p3}, Lbn;-><init>(II)V

    iput-object p1, p0, Lwm;->d:Lbn;

    new-instance p1, Lbn;

    const/16 p2, 0x8

    invoke-direct {p1, p2, p3}, Lbn;-><init>(II)V

    iput-object p1, p0, Lwm;->e:Lbn;

    new-instance p1, Lbn;

    const/4 p2, 0x6

    invoke-direct {p1, p2, p3}, Lbn;-><init>(II)V

    iput-object p1, p0, Lwm;->f:Lbn;

    new-instance p1, Lyt;

    invoke-direct {p1}, Lyt;-><init>()V

    iput-object p1, p0, Lwm;->o:Lyt;

    return-void
.end method


# virtual methods
.method public a(Lyt;)V
    .locals 14

    invoke-virtual {p1}, Lyt;->c()I

    move-result v0

    invoke-virtual {p1}, Lyt;->d()I

    move-result v1

    iget-object v2, p1, Lyt;->a:[B

    iget-wide v3, p0, Lwm;->g:J

    invoke-virtual {p1}, Lyt;->a()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lwm;->g:J

    iget-object v3, p0, Lwm;->j:Lkk;

    invoke-virtual {p1}, Lyt;->a()I

    move-result v4

    invoke-interface {v3, p1, v4}, Lkk;->c(Lyt;I)V

    :goto_0
    iget-object p1, p0, Lwm;->h:[Z

    invoke-static {v2, v0, v1, p1}, Lwt;->c([BII[Z)I

    move-result p1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v2, v0, v1}, Lwm;->e([BII)V

    return-void

    :cond_0
    invoke-static {v2, p1}, Lwt;->f([BI)I

    move-result v6

    sub-int v3, p1, v0

    if-lez v3, :cond_1

    invoke-virtual {p0, v2, v0, p1}, Lwm;->e([BII)V

    :cond_1
    sub-int v10, v1, p1

    iget-wide v4, p0, Lwm;->g:J

    int-to-long v7, v10

    sub-long/2addr v4, v7

    if-gez v3, :cond_2

    neg-int v0, v3

    move v11, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_1
    iget-wide v12, p0, Lwm;->m:J

    move-object v7, p0

    move-wide v8, v4

    invoke-virtual/range {v7 .. v13}, Lwm;->d(JIIJ)V

    iget-wide v7, p0, Lwm;->m:J

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lwm;->f(JIJ)V

    add-int/lit8 v0, p1, 0x3

    goto :goto_0
.end method

.method public b(Lck;Lpn$d;)V
    .locals 4

    invoke-virtual {p2}, Lpn$d;->a()V

    invoke-virtual {p2}, Lpn$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwm;->i:Ljava/lang/String;

    invoke-virtual {p2}, Lpn$d;->c()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lck;->track(II)Lkk;

    move-result-object v0

    iput-object v0, p0, Lwm;->j:Lkk;

    new-instance v1, Lwm$b;

    iget-boolean v2, p0, Lwm;->b:Z

    iget-boolean v3, p0, Lwm;->c:Z

    invoke-direct {v1, v0, v2, v3}, Lwm$b;-><init>(Lkk;ZZ)V

    iput-object v1, p0, Lwm;->k:Lwm$b;

    iget-object v0, p0, Lwm;->a:Ljn;

    invoke-virtual {v0, p1, p2}, Ljn;->b(Lck;Lpn$d;)V

    return-void
.end method

.method public c(JI)V
    .locals 0

    iput-wide p1, p0, Lwm;->m:J

    iget-boolean p1, p0, Lwm;->n:Z

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Lwm;->n:Z

    return-void
.end method

.method public final d(JIIJ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p4

    iget-boolean v2, v0, Lwm;->l:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lwm;->k:Lwm$b;

    invoke-virtual {v2}, Lwm$b;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    iget-object v2, v0, Lwm;->d:Lbn;

    invoke-virtual {v2, v1}, Lbn;->b(I)Z

    iget-object v2, v0, Lwm;->e:Lbn;

    invoke-virtual {v2, v1}, Lbn;->b(I)Z

    iget-boolean v2, v0, Lwm;->l:Z

    const/4 v3, 0x3

    if-nez v2, :cond_1

    iget-object v2, v0, Lwm;->d:Lbn;

    invoke-virtual {v2}, Lbn;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lwm;->e:Lbn;

    invoke-virtual {v2}, Lbn;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lwm;->d:Lbn;

    iget-object v4, v2, Lbn;->d:[B

    iget v2, v2, Lbn;->e:I

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lwm;->e:Lbn;

    iget-object v4, v2, Lbn;->d:[B

    iget v2, v2, Lbn;->e:I

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lwm;->d:Lbn;

    iget-object v4, v2, Lbn;->d:[B

    iget v2, v2, Lbn;->e:I

    invoke-static {v4, v3, v2}, Lwt;->i([BII)Lwt$b;

    move-result-object v2

    iget-object v4, v0, Lwm;->e:Lbn;

    iget-object v5, v4, Lbn;->d:[B

    iget v4, v4, Lbn;->e:I

    invoke-static {v5, v3, v4}, Lwt;->h([BII)Lwt$a;

    move-result-object v3

    iget-object v15, v0, Lwm;->j:Lkk;

    iget-object v4, v0, Lwm;->i:Ljava/lang/String;

    iget v5, v2, Lwt$b;->a:I

    iget v6, v2, Lwt$b;->b:I

    iget v7, v2, Lwt$b;->c:I

    invoke-static {v5, v6, v7}, Lkt;->b(III)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    const/4 v8, -0x1

    iget v9, v2, Lwt$b;->e:I

    iget v10, v2, Lwt$b;->f:I

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v13, -0x1

    iget v14, v2, Lwt$b;->g:F

    const/16 v16, 0x0

    const-string v5, "video/avc"

    move-object v1, v15

    move-object/from16 v15, v16

    invoke-static/range {v4 .. v15}, Landroidx/media2/exoplayer/external/Format;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v4

    invoke-interface {v1, v4}, Lkk;->b(Landroidx/media2/exoplayer/external/Format;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lwm;->l:Z

    iget-object v1, v0, Lwm;->k:Lwm$b;

    invoke-virtual {v1, v2}, Lwm$b;->f(Lwt$b;)V

    iget-object v1, v0, Lwm;->k:Lwm$b;

    invoke-virtual {v1, v3}, Lwm$b;->e(Lwt$a;)V

    iget-object v1, v0, Lwm;->d:Lbn;

    invoke-virtual {v1}, Lbn;->d()V

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lwm;->d:Lbn;

    invoke-virtual {v1}, Lbn;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lwm;->d:Lbn;

    iget-object v2, v1, Lbn;->d:[B

    iget v1, v1, Lbn;->e:I

    invoke-static {v2, v3, v1}, Lwt;->i([BII)Lwt$b;

    move-result-object v1

    iget-object v2, v0, Lwm;->k:Lwm$b;

    invoke-virtual {v2, v1}, Lwm$b;->f(Lwt$b;)V

    iget-object v1, v0, Lwm;->d:Lbn;

    :goto_0
    invoke-virtual {v1}, Lbn;->d()V

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lwm;->e:Lbn;

    invoke-virtual {v1}, Lbn;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lwm;->e:Lbn;

    iget-object v2, v1, Lbn;->d:[B

    iget v1, v1, Lbn;->e:I

    invoke-static {v2, v3, v1}, Lwt;->h([BII)Lwt$a;

    move-result-object v1

    iget-object v2, v0, Lwm;->k:Lwm$b;

    invoke-virtual {v2, v1}, Lwm$b;->e(Lwt$a;)V

    :goto_1
    iget-object v1, v0, Lwm;->e:Lbn;

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v1, v0, Lwm;->f:Lbn;

    move/from16 v2, p4

    invoke-virtual {v1, v2}, Lbn;->b(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lwm;->f:Lbn;

    iget-object v2, v1, Lbn;->d:[B

    iget v1, v1, Lbn;->e:I

    invoke-static {v2, v1}, Lwt;->k([BI)I

    move-result v1

    iget-object v2, v0, Lwm;->o:Lyt;

    iget-object v3, v0, Lwm;->f:Lbn;

    iget-object v3, v3, Lbn;->d:[B

    invoke-virtual {v2, v3, v1}, Lyt;->H([BI)V

    iget-object v1, v0, Lwm;->o:Lyt;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lyt;->J(I)V

    iget-object v1, v0, Lwm;->a:Ljn;

    iget-object v2, v0, Lwm;->o:Lyt;

    move-wide/from16 v3, p5

    invoke-virtual {v1, v3, v4, v2}, Ljn;->a(JLyt;)V

    :cond_4
    iget-object v3, v0, Lwm;->k:Lwm$b;

    iget-boolean v7, v0, Lwm;->l:Z

    iget-boolean v8, v0, Lwm;->n:Z

    move-wide/from16 v4, p1

    move/from16 v6, p3

    invoke-virtual/range {v3 .. v8}, Lwm$b;->b(JIZZ)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    iput-boolean v1, v0, Lwm;->n:Z

    :cond_5
    return-void
.end method

.method public final e([BII)V
    .locals 1

    iget-boolean v0, p0, Lwm;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwm;->k:Lwm$b;

    invoke-virtual {v0}, Lwm$b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lwm;->d:Lbn;

    invoke-virtual {v0, p1, p2, p3}, Lbn;->a([BII)V

    iget-object v0, p0, Lwm;->e:Lbn;

    invoke-virtual {v0, p1, p2, p3}, Lbn;->a([BII)V

    :cond_1
    iget-object v0, p0, Lwm;->f:Lbn;

    invoke-virtual {v0, p1, p2, p3}, Lbn;->a([BII)V

    iget-object v0, p0, Lwm;->k:Lwm$b;

    invoke-virtual {v0, p1, p2, p3}, Lwm$b;->a([BII)V

    return-void
.end method

.method public final f(JIJ)V
    .locals 7

    iget-boolean v0, p0, Lwm;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwm;->k:Lwm$b;

    invoke-virtual {v0}, Lwm$b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lwm;->d:Lbn;

    invoke-virtual {v0, p3}, Lbn;->e(I)V

    iget-object v0, p0, Lwm;->e:Lbn;

    invoke-virtual {v0, p3}, Lbn;->e(I)V

    :cond_1
    iget-object v0, p0, Lwm;->f:Lbn;

    invoke-virtual {v0, p3}, Lbn;->e(I)V

    iget-object v1, p0, Lwm;->k:Lwm$b;

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lwm$b;->h(JIJ)V

    return-void
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public seek()V
    .locals 2

    iget-object v0, p0, Lwm;->h:[Z

    invoke-static {v0}, Lwt;->a([Z)V

    iget-object v0, p0, Lwm;->d:Lbn;

    invoke-virtual {v0}, Lbn;->d()V

    iget-object v0, p0, Lwm;->e:Lbn;

    invoke-virtual {v0}, Lbn;->d()V

    iget-object v0, p0, Lwm;->f:Lbn;

    invoke-virtual {v0}, Lbn;->d()V

    iget-object v0, p0, Lwm;->k:Lwm$b;

    invoke-virtual {v0}, Lwm$b;->g()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lwm;->g:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lwm;->n:Z

    return-void
.end method
