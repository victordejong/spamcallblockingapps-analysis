.class public final Lxm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxm$a;
    }
.end annotation


# instance fields
.field public final a:Ljn;

.field public b:Ljava/lang/String;

.field public c:Lkk;

.field public d:Lxm$a;

.field public e:Z

.field public final f:[Z

.field public final g:Lbn;

.field public final h:Lbn;

.field public final i:Lbn;

.field public final j:Lbn;

.field public final k:Lbn;

.field public l:J

.field public m:J

.field public final n:Lyt;


# direct methods
.method public constructor <init>(Ljn;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxm;->a:Ljn;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Lxm;->f:[Z

    new-instance p1, Lbn;

    const/16 v0, 0x20

    const/16 v1, 0x80

    invoke-direct {p1, v0, v1}, Lbn;-><init>(II)V

    iput-object p1, p0, Lxm;->g:Lbn;

    new-instance p1, Lbn;

    const/16 v0, 0x21

    invoke-direct {p1, v0, v1}, Lbn;-><init>(II)V

    iput-object p1, p0, Lxm;->h:Lbn;

    new-instance p1, Lbn;

    const/16 v0, 0x22

    invoke-direct {p1, v0, v1}, Lbn;-><init>(II)V

    iput-object p1, p0, Lxm;->i:Lbn;

    new-instance p1, Lbn;

    const/16 v0, 0x27

    invoke-direct {p1, v0, v1}, Lbn;-><init>(II)V

    iput-object p1, p0, Lxm;->j:Lbn;

    new-instance p1, Lbn;

    const/16 v0, 0x28

    invoke-direct {p1, v0, v1}, Lbn;-><init>(II)V

    iput-object p1, p0, Lxm;->k:Lbn;

    new-instance p1, Lyt;

    invoke-direct {p1}, Lyt;-><init>()V

    iput-object p1, p0, Lxm;->n:Lyt;

    return-void
.end method

.method public static f(Ljava/lang/String;Lbn;Lbn;Lbn;)Landroidx/media2/exoplayer/external/Format;
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget v3, v0, Lbn;->e:I

    iget v4, v1, Lbn;->e:I

    add-int/2addr v4, v3

    iget v5, v2, Lbn;->e:I

    add-int/2addr v4, v5

    new-array v4, v4, [B

    iget-object v5, v0, Lbn;->d:[B

    const/4 v6, 0x0

    invoke-static {v5, v6, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v1, Lbn;->d:[B

    iget v5, v0, Lbn;->e:I

    iget v7, v1, Lbn;->e:I

    invoke-static {v3, v6, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v2, Lbn;->d:[B

    iget v0, v0, Lbn;->e:I

    iget v5, v1, Lbn;->e:I

    add-int/2addr v0, v5

    iget v2, v2, Lbn;->e:I

    invoke-static {v3, v6, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lzt;

    iget-object v2, v1, Lbn;->d:[B

    iget v1, v1, Lbn;->e:I

    invoke-direct {v0, v2, v6, v1}, Lzt;-><init>([BII)V

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lzt;->l(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lzt;->e(I)I

    move-result v2

    invoke-virtual {v0}, Lzt;->k()V

    const/16 v3, 0x58

    invoke-virtual {v0, v3}, Lzt;->l(I)V

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lzt;->l(I)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    invoke-virtual {v0}, Lzt;->d()Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v7, v7, 0x59

    :cond_0
    invoke-virtual {v0}, Lzt;->d()Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v7, v7, 0x8

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v7}, Lzt;->l(I)V

    const/4 v5, 0x2

    if-lez v2, :cond_3

    rsub-int/lit8 v7, v2, 0x8

    mul-int/lit8 v7, v7, 0x2

    invoke-virtual {v0, v7}, Lzt;->l(I)V

    :cond_3
    invoke-virtual {v0}, Lzt;->h()I

    invoke-virtual {v0}, Lzt;->h()I

    move-result v7

    if-ne v7, v1, :cond_4

    invoke-virtual {v0}, Lzt;->k()V

    :cond_4
    invoke-virtual {v0}, Lzt;->h()I

    move-result v1

    invoke-virtual {v0}, Lzt;->h()I

    move-result v8

    invoke-virtual {v0}, Lzt;->d()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_8

    invoke-virtual {v0}, Lzt;->h()I

    move-result v9

    invoke-virtual {v0}, Lzt;->h()I

    move-result v11

    invoke-virtual {v0}, Lzt;->h()I

    move-result v12

    invoke-virtual {v0}, Lzt;->h()I

    move-result v13

    if-eq v7, v10, :cond_6

    if-ne v7, v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v14, 0x1

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v14, 0x2

    :goto_2
    if-ne v7, v10, :cond_7

    const/4 v7, 0x2

    goto :goto_3

    :cond_7
    const/4 v7, 0x1

    :goto_3
    add-int/2addr v9, v11

    mul-int v14, v14, v9

    sub-int/2addr v1, v14

    add-int/2addr v12, v13

    mul-int v7, v7, v12

    sub-int/2addr v8, v7

    :cond_8
    move/from16 v16, v1

    move/from16 v17, v8

    invoke-virtual {v0}, Lzt;->h()I

    invoke-virtual {v0}, Lzt;->h()I

    invoke-virtual {v0}, Lzt;->h()I

    move-result v1

    invoke-virtual {v0}, Lzt;->d()Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x0

    goto :goto_4

    :cond_9
    move v7, v2

    :goto_4
    invoke-virtual {v0}, Lzt;->h()I

    invoke-virtual {v0}, Lzt;->h()I

    invoke-virtual {v0}, Lzt;->h()I

    if-gt v7, v2, :cond_a

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {v0}, Lzt;->h()I

    invoke-virtual {v0}, Lzt;->h()I

    invoke-virtual {v0}, Lzt;->h()I

    invoke-virtual {v0}, Lzt;->d()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Lzt;->d()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v0}, Lxm;->g(Lzt;)V

    :cond_b
    invoke-virtual {v0, v5}, Lzt;->l(I)V

    invoke-virtual {v0}, Lzt;->d()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v0, v3}, Lzt;->l(I)V

    invoke-virtual {v0}, Lzt;->h()I

    invoke-virtual {v0}, Lzt;->h()I

    invoke-virtual {v0}, Lzt;->k()V

    :cond_c
    invoke-static {v0}, Lxm;->h(Lzt;)V

    invoke-virtual {v0}, Lzt;->d()Z

    move-result v2

    if-eqz v2, :cond_d

    :goto_5
    invoke-virtual {v0}, Lzt;->h()I

    move-result v2

    if-ge v6, v2, :cond_d

    add-int/lit8 v2, v1, 0x4

    add-int/2addr v2, v10

    invoke-virtual {v0, v2}, Lzt;->l(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_d
    invoke-virtual {v0, v5}, Lzt;->l(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Lzt;->d()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v0}, Lzt;->d()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v0, v3}, Lzt;->e(I)I

    move-result v2

    const/16 v3, 0xff

    if-ne v2, v3, :cond_f

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lzt;->e(I)I

    move-result v3

    invoke-virtual {v0, v2}, Lzt;->e(I)I

    move-result v0

    if-eqz v3, :cond_e

    if-eqz v0, :cond_e

    int-to-float v1, v3

    int-to-float v0, v0

    div-float/2addr v1, v0

    :cond_e
    move/from16 v21, v1

    goto :goto_6

    :cond_f
    sget-object v0, Lwt;->b:[F

    array-length v3, v0

    if-ge v2, v3, :cond_10

    aget v0, v0, v2

    move/from16 v21, v0

    goto :goto_6

    :cond_10
    const/16 v0, 0x2e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "H265Reader"

    invoke-static {v2, v0}, Lst;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    const/high16 v21, 0x3f800000    # 1.0f

    :goto_6
    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/high16 v18, -0x40800000    # -1.0f

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const/16 v20, -0x1

    const/16 v22, 0x0

    const-string v12, "video/hevc"

    move-object/from16 v11, p0

    invoke-static/range {v11 .. v22}, Landroidx/media2/exoplayer/external/Format;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    return-object v0
.end method

.method public static g(Lzt;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_5

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x6

    if-ge v3, v4, :cond_4

    invoke-virtual {p0}, Lzt;->d()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lzt;->h()I

    goto :goto_3

    :cond_0
    const/16 v4, 0x40

    shl-int/lit8 v6, v1, 0x1

    add-int/2addr v6, v2

    shl-int v6, v5, v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-le v1, v5, :cond_1

    invoke-virtual {p0}, Lzt;->g()I

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_2

    invoke-virtual {p0}, Lzt;->g()I

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    const/4 v5, 0x3

    :cond_3
    add-int/2addr v3, v5

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static h(Lzt;)V
    .locals 8

    invoke-virtual {p0}, Lzt;->h()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lzt;->d()Z

    move-result v3

    :cond_0
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lzt;->k()V

    invoke-virtual {p0}, Lzt;->h()I

    const/4 v5, 0x0

    :goto_1
    if-gt v5, v4, :cond_5

    invoke-virtual {p0}, Lzt;->d()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lzt;->k()V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lzt;->h()I

    move-result v4

    invoke-virtual {p0}, Lzt;->h()I

    move-result v5

    add-int v6, v4, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v4, :cond_3

    invoke-virtual {p0}, Lzt;->h()I

    invoke-virtual {p0}, Lzt;->k()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_4

    invoke-virtual {p0}, Lzt;->h()I

    invoke-virtual {p0}, Lzt;->k()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    move v4, v6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public a(Lyt;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lyt;->a()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Lyt;->c()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lyt;->d()I

    move-result v9

    iget-object v10, v8, Lyt;->a:[B

    iget-wide v1, v7, Lxm;->l:J

    invoke-virtual/range {p1 .. p1}, Lyt;->a()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v7, Lxm;->l:J

    iget-object v1, v7, Lxm;->c:Lkk;

    invoke-virtual/range {p1 .. p1}, Lyt;->a()I

    move-result v2

    invoke-interface {v1, v8, v2}, Lkk;->c(Lyt;I)V

    :goto_0
    if-ge v0, v9, :cond_0

    iget-object v1, v7, Lxm;->f:[Z

    invoke-static {v10, v0, v9, v1}, Lwt;->c([BII[Z)I

    move-result v11

    if-ne v11, v9, :cond_1

    invoke-virtual {v7, v10, v0, v9}, Lxm;->e([BII)V

    return-void

    :cond_1
    invoke-static {v10, v11}, Lwt;->e([BI)I

    move-result v12

    sub-int v1, v11, v0

    if-lez v1, :cond_2

    invoke-virtual {v7, v10, v0, v11}, Lxm;->e([BII)V

    :cond_2
    sub-int v13, v9, v11

    iget-wide v2, v7, Lxm;->l:J

    int-to-long v4, v13

    sub-long v14, v2, v4

    if-gez v1, :cond_3

    neg-int v0, v1

    move v4, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_1
    iget-wide v5, v7, Lxm;->m:J

    move-object/from16 v0, p0

    move-wide v1, v14

    move v3, v13

    invoke-virtual/range {v0 .. v6}, Lxm;->d(JIIJ)V

    iget-wide v5, v7, Lxm;->m:J

    move v4, v12

    invoke-virtual/range {v0 .. v6}, Lxm;->i(JIIJ)V

    add-int/lit8 v0, v11, 0x3

    goto :goto_0

    :cond_4
    return-void
.end method

.method public b(Lck;Lpn$d;)V
    .locals 2

    invoke-virtual {p2}, Lpn$d;->a()V

    invoke-virtual {p2}, Lpn$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxm;->b:Ljava/lang/String;

    invoke-virtual {p2}, Lpn$d;->c()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lck;->track(II)Lkk;

    move-result-object v0

    iput-object v0, p0, Lxm;->c:Lkk;

    new-instance v1, Lxm$a;

    invoke-direct {v1, v0}, Lxm$a;-><init>(Lkk;)V

    iput-object v1, p0, Lxm;->d:Lxm$a;

    iget-object v0, p0, Lxm;->a:Ljn;

    invoke-virtual {v0, p1, p2}, Ljn;->b(Lck;Lpn$d;)V

    return-void
.end method

.method public c(JI)V
    .locals 0

    iput-wide p1, p0, Lxm;->m:J

    return-void
.end method

.method public final d(JIIJ)V
    .locals 2

    iget-boolean v0, p0, Lxm;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxm;->d:Lxm$a;

    invoke-virtual {v0, p1, p2, p3}, Lxm$a;->a(JI)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lxm;->g:Lbn;

    invoke-virtual {p1, p4}, Lbn;->b(I)Z

    iget-object p1, p0, Lxm;->h:Lbn;

    invoke-virtual {p1, p4}, Lbn;->b(I)Z

    iget-object p1, p0, Lxm;->i:Lbn;

    invoke-virtual {p1, p4}, Lbn;->b(I)Z

    iget-object p1, p0, Lxm;->g:Lbn;

    invoke-virtual {p1}, Lbn;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lxm;->h:Lbn;

    invoke-virtual {p1}, Lbn;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lxm;->i:Lbn;

    invoke-virtual {p1}, Lbn;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lxm;->c:Lkk;

    iget-object p2, p0, Lxm;->b:Ljava/lang/String;

    iget-object p3, p0, Lxm;->g:Lbn;

    iget-object v0, p0, Lxm;->h:Lbn;

    iget-object v1, p0, Lxm;->i:Lbn;

    invoke-static {p2, p3, v0, v1}, Lxm;->f(Ljava/lang/String;Lbn;Lbn;Lbn;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p2

    invoke-interface {p1, p2}, Lkk;->b(Landroidx/media2/exoplayer/external/Format;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lxm;->e:Z

    :cond_1
    :goto_0
    iget-object p1, p0, Lxm;->j:Lbn;

    invoke-virtual {p1, p4}, Lbn;->b(I)Z

    move-result p1

    const/4 p2, 0x5

    if-eqz p1, :cond_2

    iget-object p1, p0, Lxm;->j:Lbn;

    iget-object p3, p1, Lbn;->d:[B

    iget p1, p1, Lbn;->e:I

    invoke-static {p3, p1}, Lwt;->k([BI)I

    move-result p1

    iget-object p3, p0, Lxm;->n:Lyt;

    iget-object v0, p0, Lxm;->j:Lbn;

    iget-object v0, v0, Lbn;->d:[B

    invoke-virtual {p3, v0, p1}, Lyt;->H([BI)V

    iget-object p1, p0, Lxm;->n:Lyt;

    invoke-virtual {p1, p2}, Lyt;->K(I)V

    iget-object p1, p0, Lxm;->a:Ljn;

    iget-object p3, p0, Lxm;->n:Lyt;

    invoke-virtual {p1, p5, p6, p3}, Ljn;->a(JLyt;)V

    :cond_2
    iget-object p1, p0, Lxm;->k:Lbn;

    invoke-virtual {p1, p4}, Lbn;->b(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lxm;->k:Lbn;

    iget-object p3, p1, Lbn;->d:[B

    iget p1, p1, Lbn;->e:I

    invoke-static {p3, p1}, Lwt;->k([BI)I

    move-result p1

    iget-object p3, p0, Lxm;->n:Lyt;

    iget-object p4, p0, Lxm;->k:Lbn;

    iget-object p4, p4, Lbn;->d:[B

    invoke-virtual {p3, p4, p1}, Lyt;->H([BI)V

    iget-object p1, p0, Lxm;->n:Lyt;

    invoke-virtual {p1, p2}, Lyt;->K(I)V

    iget-object p1, p0, Lxm;->a:Ljn;

    iget-object p2, p0, Lxm;->n:Lyt;

    invoke-virtual {p1, p5, p6, p2}, Ljn;->a(JLyt;)V

    :cond_3
    return-void
.end method

.method public final e([BII)V
    .locals 1

    iget-boolean v0, p0, Lxm;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxm;->d:Lxm$a;

    invoke-virtual {v0, p1, p2, p3}, Lxm$a;->c([BII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lxm;->g:Lbn;

    invoke-virtual {v0, p1, p2, p3}, Lbn;->a([BII)V

    iget-object v0, p0, Lxm;->h:Lbn;

    invoke-virtual {v0, p1, p2, p3}, Lbn;->a([BII)V

    iget-object v0, p0, Lxm;->i:Lbn;

    invoke-virtual {v0, p1, p2, p3}, Lbn;->a([BII)V

    :goto_0
    iget-object v0, p0, Lxm;->j:Lbn;

    invoke-virtual {v0, p1, p2, p3}, Lbn;->a([BII)V

    iget-object v0, p0, Lxm;->k:Lbn;

    invoke-virtual {v0, p1, p2, p3}, Lbn;->a([BII)V

    return-void
.end method

.method public final i(JIIJ)V
    .locals 8

    iget-boolean v0, p0, Lxm;->e:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lxm;->d:Lxm$a;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lxm$a;->e(JIIJ)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lxm;->g:Lbn;

    invoke-virtual {p1, p4}, Lbn;->e(I)V

    iget-object p1, p0, Lxm;->h:Lbn;

    invoke-virtual {p1, p4}, Lbn;->e(I)V

    iget-object p1, p0, Lxm;->i:Lbn;

    invoke-virtual {p1, p4}, Lbn;->e(I)V

    :goto_0
    iget-object p1, p0, Lxm;->j:Lbn;

    invoke-virtual {p1, p4}, Lbn;->e(I)V

    iget-object p1, p0, Lxm;->k:Lbn;

    invoke-virtual {p1, p4}, Lbn;->e(I)V

    return-void
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public seek()V
    .locals 2

    iget-object v0, p0, Lxm;->f:[Z

    invoke-static {v0}, Lwt;->a([Z)V

    iget-object v0, p0, Lxm;->g:Lbn;

    invoke-virtual {v0}, Lbn;->d()V

    iget-object v0, p0, Lxm;->h:Lbn;

    invoke-virtual {v0}, Lbn;->d()V

    iget-object v0, p0, Lxm;->i:Lbn;

    invoke-virtual {v0}, Lbn;->d()V

    iget-object v0, p0, Lxm;->j:Lbn;

    invoke-virtual {v0}, Lbn;->d()V

    iget-object v0, p0, Lxm;->k:Lbn;

    invoke-virtual {v0}, Lbn;->d()V

    iget-object v0, p0, Lxm;->d:Lxm$a;

    invoke-virtual {v0}, Lxm$a;->d()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lxm;->l:J

    return-void
.end method
