.class public final Lpq;
.super Lgq;
.source ""


# static fields
.field public static final H:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public A:Lak;

.field public B:Z

.field public C:Lwq;

.field public D:I

.field public E:Z

.field public volatile F:Z

.field public G:Z

.field public final j:I

.field public final k:I

.field public final l:Landroid/net/Uri;

.field public final m:Lls;

.field public final n:Los;

.field public final o:Z

.field public final p:Z

.field public final q:Lju;

.field public final r:Z

.field public final s:Lnq;

.field public final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Landroidx/media2/exoplayer/external/drm/DrmInitData;

.field public final v:Lak;

.field public final w:Llo;

.field public final x:Lyt;

.field public final y:Z

.field public final z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lpq;->H:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lnq;Lls;Los;Landroidx/media2/exoplayer/external/Format;ZLls;Los;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZZLju;Landroidx/media2/exoplayer/external/drm/DrmInitData;Lak;Llo;Lyt;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnq;",
            "Lls;",
            "Los;",
            "Landroidx/media2/exoplayer/external/Format;",
            "Z",
            "Lls;",
            "Los;",
            "Z",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;I",
            "Ljava/lang/Object;",
            "JJJIZZ",
            "Lju;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Lak;",
            "Llo;",
            "Lyt;",
            "Z)V"
        }
    .end annotation

    move-object v12, p0

    move-object/from16 v13, p7

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p11

    move-object/from16 v5, p12

    move-wide/from16 v6, p13

    move-wide/from16 v8, p15

    move-wide/from16 v10, p17

    invoke-direct/range {v0 .. v11}, Lgq;-><init>(Lls;Los;Landroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJ)V

    move/from16 v0, p5

    iput-boolean v0, v12, Lpq;->y:Z

    move/from16 v0, p19

    iput v0, v12, Lpq;->k:I

    move-object/from16 v0, p6

    iput-object v0, v12, Lpq;->m:Lls;

    iput-object v13, v12, Lpq;->n:Los;

    move/from16 v0, p8

    iput-boolean v0, v12, Lpq;->z:Z

    move-object/from16 v0, p9

    iput-object v0, v12, Lpq;->l:Landroid/net/Uri;

    move/from16 v0, p21

    iput-boolean v0, v12, Lpq;->o:Z

    move-object/from16 v0, p22

    iput-object v0, v12, Lpq;->q:Lju;

    move/from16 v0, p20

    iput-boolean v0, v12, Lpq;->p:Z

    move-object v0, p1

    iput-object v0, v12, Lpq;->s:Lnq;

    move-object/from16 v0, p10

    iput-object v0, v12, Lpq;->t:Ljava/util/List;

    move-object/from16 v0, p23

    iput-object v0, v12, Lpq;->u:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-object/from16 v0, p24

    iput-object v0, v12, Lpq;->v:Lak;

    move-object/from16 v0, p25

    iput-object v0, v12, Lpq;->w:Llo;

    move-object/from16 v0, p26

    iput-object v0, v12, Lpq;->x:Lyt;

    move/from16 v0, p27

    iput-boolean v0, v12, Lpq;->r:Z

    if-eqz v13, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v12, Lpq;->E:Z

    sget-object v0, Lpq;->H:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, v12, Lpq;->j:I

    return-void
.end method

.method public static f(Lls;[B[B)Lls;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Liq;

    invoke-direct {v0, p0, p1, p2}, Liq;-><init>(Lls;[B[B)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static g(Lnq;Lls;Landroidx/media2/exoplayer/external/Format;JLfr;ILandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;ZLyq;Lpq;[B[B)Lpq;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnq;",
            "Lls;",
            "Landroidx/media2/exoplayer/external/Format;",
            "J",
            "Lfr;",
            "I",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;I",
            "Ljava/lang/Object;",
            "Z",
            "Lyq;",
            "Lpq;",
            "[B[B)",
            "Lpq;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, p13

    move-object/from16 v4, p14

    move-object/from16 v5, p15

    iget-object v6, v1, Lfr;->o:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfr$a;

    new-instance v14, Los;

    iget-object v7, v1, Lgr;->a:Ljava/lang/String;

    iget-object v8, v6, Lfr$a;->a:Ljava/lang/String;

    invoke-static {v7, v8}, Llu;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-wide v9, v6, Lfr$a;->k:J

    iget-wide v11, v6, Lfr$a;->l:J

    const/4 v13, 0x0

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Los;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    if-eqz v4, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    if-eqz v12, :cond_1

    iget-object v10, v6, Lfr$a;->j:Ljava/lang/String;

    invoke-static {v10}, Lpq;->i(Ljava/lang/String;)[B

    move-result-object v10

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    invoke-static {v0, v4, v10}, Lpq;->f(Lls;[B[B)Lls;

    move-result-object v4

    iget-object v10, v6, Lfr$a;->b:Lfr$a;

    if-eqz v10, :cond_4

    if-eqz v5, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    if-eqz v11, :cond_3

    iget-object v13, v10, Lfr$a;->j:Ljava/lang/String;

    invoke-static {v13}, Lpq;->i(Ljava/lang/String;)[B

    move-result-object v13

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    :goto_3
    iget-object v15, v1, Lgr;->a:Ljava/lang/String;

    iget-object v7, v10, Lfr$a;->a:Ljava/lang/String;

    invoke-static {v15, v7}, Llu;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    new-instance v7, Los;

    iget-wide v8, v10, Lfr$a;->k:J

    move/from16 p14, v11

    iget-wide v10, v10, Lfr$a;->l:J

    const/16 v23, 0x0

    move-object/from16 v17, v7

    move-wide/from16 v19, v8

    move-wide/from16 v21, v10

    invoke-direct/range {v17 .. v23}, Los;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    invoke-static {v0, v5, v13}, Lpq;->f(Lls;[B[B)Lls;

    move-result-object v0

    move/from16 v5, p14

    move-object v13, v0

    move-object v0, v7

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    :goto_4
    iget-wide v7, v6, Lfr$a;->f:J

    add-long v20, p3, v7

    iget-wide v7, v6, Lfr$a;->c:J

    add-long v22, v20, v7

    iget v7, v1, Lfr;->h:I

    iget v8, v6, Lfr$a;->d:I

    add-int v11, v7, v8

    if-eqz v3, :cond_8

    iget-object v7, v3, Lpq;->w:Llo;

    iget-object v8, v3, Lpq;->x:Lyt;

    iget-object v9, v3, Lpq;->l:Landroid/net/Uri;

    move-object/from16 v10, p7

    invoke-virtual {v10, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-boolean v9, v3, Lpq;->G:Z

    if-nez v9, :cond_5

    goto :goto_5

    :cond_5
    const/16 v16, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    const/16 v16, 0x1

    :goto_6
    iget-boolean v9, v3, Lpq;->B:Z

    if-eqz v9, :cond_7

    iget v9, v3, Lpq;->k:I

    if-ne v9, v11, :cond_7

    if-nez v16, :cond_7

    iget-object v9, v3, Lpq;->A:Lak;

    goto :goto_7

    :cond_7
    const/4 v9, 0x0

    :goto_7
    move-object/from16 v32, v7

    move-object/from16 v33, v8

    move-object/from16 v31, v9

    move/from16 v34, v16

    goto :goto_8

    :cond_8
    move-object/from16 v10, p7

    new-instance v3, Llo;

    invoke-direct {v3}, Llo;-><init>()V

    new-instance v7, Lyt;

    const/16 v8, 0xa

    invoke-direct {v7, v8}, Lyt;-><init>(I)V

    move-object/from16 v32, v3

    move-object/from16 v33, v7

    const/16 v31, 0x0

    const/16 v34, 0x0

    :goto_8
    new-instance v3, Lpq;

    move-object v7, v3

    iget-wide v8, v1, Lfr;->i:J

    int-to-long v1, v2

    add-long v24, v8, v1

    iget-boolean v1, v6, Lfr$a;->m:Z

    move/from16 v27, v1

    move-object/from16 v1, p12

    invoke-virtual {v1, v11}, Lyq;->a(I)Lju;

    move-result-object v29

    iget-object v1, v6, Lfr$a;->g:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-object/from16 v30, v1

    move-object/from16 v8, p0

    move-object v9, v4

    move-object v10, v14

    move v1, v11

    move-object/from16 v11, p2

    move-object v14, v0

    move v15, v5

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    move/from16 v18, p9

    move-object/from16 v19, p10

    move/from16 v26, v1

    move/from16 v28, p11

    invoke-direct/range {v7 .. v34}, Lpq;-><init>(Lnq;Lls;Los;Landroidx/media2/exoplayer/external/Format;ZLls;Los;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZZLju;Landroidx/media2/exoplayer/external/drm/DrmInitData;Lak;Llo;Lyt;Z)V

    return-object v3
.end method

.method public static i(Ljava/lang/String;)[B
    .locals 4

    invoke-static {p0}, Lnu;->m0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    new-array v0, v1, [B

    array-length v2, p0

    if-le v2, v1, :cond_1

    array-length v2, p0

    sub-int/2addr v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    sub-int/2addr v1, v3

    add-int/2addr v1, v2

    array-length v3, p0

    sub-int/2addr v3, v2

    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lpq;->F:Z

    return-void
.end method

.method public final h(Lls;Los;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget p3, p0, Lpq;->D:I

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move v1, p3

    move-object p3, p2

    goto :goto_1

    :cond_1
    iget p3, p0, Lpq;->D:I

    int-to-long v1, p3

    invoke-virtual {p2, v1, v2}, Los;->d(J)Los;

    move-result-object p3

    const/4 v1, 0x0

    :goto_1
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lpq;->o(Lls;Los;)Lxj;

    move-result-object p3

    if-eqz v1, :cond_2

    iget v1, p0, Lpq;->D:I

    invoke-interface {p3, v1}, Lbk;->skipFully(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    :goto_2
    if-nez v0, :cond_3

    :try_start_1
    iget-boolean v0, p0, Lpq;->F:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lpq;->A:Lak;

    const/4 v1, 0x0

    invoke-interface {v0, p3, v1}, Lak;->a(Lbk;Lhk;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {p3}, Lbk;->getPosition()J

    move-result-wide v1

    iget-wide p2, p2, Los;->d:J

    sub-long/2addr v1, p2

    long-to-int p2, v1

    iput p2, p0, Lpq;->D:I

    throw v0

    :cond_3
    invoke-interface {p3}, Lbk;->getPosition()J

    move-result-wide v0

    iget-wide p2, p2, Los;->d:J

    sub-long/2addr v0, p2

    long-to-int p2, v0

    iput p2, p0, Lpq;->D:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {p1}, Lnu;->j(Lls;)V

    return-void

    :catchall_1
    move-exception p2

    invoke-static {p1}, Lnu;->j(Lls;)V

    throw p2
.end method

.method public j(Lwq;)V
    .locals 0

    iput-object p1, p0, Lpq;->C:Lwq;

    return-void
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lpq;->G:Z

    return v0
.end method

.method public final l()V
    .locals 5

    iget-boolean v0, p0, Lpq;->o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lpq;->q:Lju;

    invoke-virtual {v0}, Lju;->j()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lpq;->q:Lju;

    invoke-virtual {v0}, Lju;->c()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-object v0, p0, Lpq;->q:Lju;

    iget-wide v1, p0, Leq;->f:J

    invoke-virtual {v0, v1, v2}, Lju;->h(J)V

    :cond_1
    :goto_0
    iget-object v0, p0, Leq;->h:Lgt;

    iget-object v1, p0, Leq;->a:Los;

    iget-boolean v2, p0, Lpq;->y:Z

    invoke-virtual {p0, v0, v1, v2}, Lpq;->h(Lls;Los;Z)V

    return-void
.end method

.method public load()V
    .locals 4

    iget-object v0, p0, Lpq;->A:Lak;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lpq;->v:Lak;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lpq;->A:Lak;

    iput-boolean v1, p0, Lpq;->B:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpq;->E:Z

    iget-object v0, p0, Lpq;->C:Lwq;

    iget v2, p0, Lpq;->j:I

    iget-boolean v3, p0, Lpq;->r:Z

    invoke-virtual {v0, v2, v3, v1}, Lwq;->t(IZZ)V

    :cond_0
    invoke-virtual {p0}, Lpq;->m()V

    iget-boolean v0, p0, Lpq;->F:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lpq;->p:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lpq;->l()V

    :cond_1
    iput-boolean v1, p0, Lpq;->G:Z

    :cond_2
    return-void
.end method

.method public final m()V
    .locals 3

    iget-boolean v0, p0, Lpq;->E:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lpq;->m:Lls;

    iget-object v1, p0, Lpq;->n:Los;

    iget-boolean v2, p0, Lpq;->z:Z

    invoke-virtual {p0, v0, v1, v2}, Lpq;->h(Lls;Los;Z)V

    const/4 v0, 0x0

    iput v0, p0, Lpq;->D:I

    iput-boolean v0, p0, Lpq;->E:Z

    return-void
.end method

.method public final n(Lbk;)J
    .locals 8

    invoke-interface {p1}, Lbk;->resetPeekPosition()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :try_start_0
    iget-object v2, p0, Lpq;->x:Lyt;

    iget-object v2, v2, Lyt;->a:[B

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {p1, v2, v4, v3}, Lbk;->peekFully([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lpq;->x:Lyt;

    invoke-virtual {v2, v3}, Lyt;->F(I)V

    iget-object v2, p0, Lpq;->x:Lyt;

    invoke-virtual {v2}, Lyt;->z()I

    move-result v2

    const v5, 0x494433

    if-eq v2, v5, :cond_0

    return-wide v0

    :cond_0
    iget-object v2, p0, Lpq;->x:Lyt;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lyt;->K(I)V

    iget-object v2, p0, Lpq;->x:Lyt;

    invoke-virtual {v2}, Lyt;->v()I

    move-result v2

    add-int/lit8 v5, v2, 0xa

    iget-object v6, p0, Lpq;->x:Lyt;

    invoke-virtual {v6}, Lyt;->b()I

    move-result v6

    if-le v5, v6, :cond_1

    iget-object v6, p0, Lpq;->x:Lyt;

    iget-object v7, v6, Lyt;->a:[B

    invoke-virtual {v6, v5}, Lyt;->F(I)V

    iget-object v5, p0, Lpq;->x:Lyt;

    iget-object v5, v5, Lyt;->a:[B

    invoke-static {v7, v4, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v5, p0, Lpq;->x:Lyt;

    iget-object v5, v5, Lyt;->a:[B

    invoke-interface {p1, v5, v3, v2}, Lbk;->peekFully([BII)V

    iget-object p1, p0, Lpq;->w:Llo;

    iget-object v3, p0, Lpq;->x:Lyt;

    iget-object v3, v3, Lyt;->a:[B

    invoke-virtual {p1, v3, v2}, Llo;->c([BI)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object p1

    if-nez p1, :cond_2

    return-wide v0

    :cond_2
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/metadata/Metadata;->d()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/metadata/Metadata;->c(I)Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    move-result-object v5

    instance-of v6, v5, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;

    if-eqz v6, :cond_3

    check-cast v5, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;

    iget-object v6, v5, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;->b:Ljava/lang/String;

    const-string v7, "com.apple.streaming.transportStreamTimestamp"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object p1, v5, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;->c:[B

    iget-object v0, p0, Lpq;->x:Lyt;

    iget-object v0, v0, Lyt;->a:[B

    const/16 v1, 0x8

    invoke-static {p1, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lpq;->x:Lyt;

    invoke-virtual {p1, v1}, Lyt;->F(I)V

    iget-object p1, p0, Lpq;->x:Lyt;

    invoke-virtual {p1}, Lyt;->p()J

    move-result-wide v0

    const-wide v2, 0x1ffffffffL

    and-long/2addr v0, v2

    return-wide v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_4
    return-wide v0
.end method

.method public final o(Lls;Los;)Lxj;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface/range {p1 .. p2}, Lls;->a(Los;)J

    move-result-wide v6

    new-instance v15, Lxj;

    iget-wide v4, v1, Los;->d:J

    move-object v2, v15

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lxj;-><init>(Lls;JJ)V

    iget-object v2, v0, Lpq;->A:Lak;

    if-nez v2, :cond_2

    invoke-virtual {v0, v15}, Lpq;->n(Lbk;)J

    move-result-wide v2

    invoke-virtual {v15}, Lxj;->resetPeekPosition()V

    iget-object v8, v0, Lpq;->s:Lnq;

    iget-object v9, v0, Lpq;->v:Lak;

    iget-object v10, v1, Los;->a:Landroid/net/Uri;

    iget-object v11, v0, Leq;->c:Landroidx/media2/exoplayer/external/Format;

    iget-object v12, v0, Lpq;->t:Ljava/util/List;

    iget-object v13, v0, Lpq;->u:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-object v14, v0, Lpq;->q:Lju;

    invoke-interface/range {p1 .. p1}, Lls;->getResponseHeaders()Ljava/util/Map;

    move-result-object v1

    move-object v4, v15

    move-object v15, v1

    move-object/from16 v16, v4

    invoke-interface/range {v8 .. v16}, Lnq;->a(Lak;Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;Lju;Ljava/util/Map;Lbk;)Lnq$a;

    move-result-object v1

    iget-object v5, v1, Lnq$a;->a:Lak;

    iput-object v5, v0, Lpq;->A:Lak;

    iget-boolean v5, v1, Lnq$a;->c:Z

    iput-boolean v5, v0, Lpq;->B:Z

    iget-boolean v1, v1, Lnq$a;->b:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lpq;->C:Lwq;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v2, v5

    if-eqz v7, :cond_0

    iget-object v5, v0, Lpq;->q:Lju;

    invoke-virtual {v5, v2, v3}, Lju;->b(J)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    iget-wide v2, v0, Leq;->f:J

    :goto_0
    invoke-virtual {v1, v2, v3}, Lwq;->N(J)V

    :cond_1
    iget-object v1, v0, Lpq;->C:Lwq;

    iget v2, v0, Lpq;->j:I

    iget-boolean v3, v0, Lpq;->r:Z

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v5}, Lwq;->t(IZZ)V

    iget-object v1, v0, Lpq;->A:Lak;

    iget-object v2, v0, Lpq;->C:Lwq;

    invoke-interface {v1, v2}, Lak;->c(Lck;)V

    goto :goto_1

    :cond_2
    move-object v4, v15

    :goto_1
    return-object v4
.end method
