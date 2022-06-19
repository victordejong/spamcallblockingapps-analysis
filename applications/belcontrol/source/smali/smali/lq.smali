.class public Llq;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llq$b;,
        Llq$d;,
        Llq$a;,
        Llq$e;,
        Llq$c;
    }
.end annotation


# instance fields
.field public final a:Lnq;

.field public final b:Lls;

.field public final c:Lls;

.field public final d:Lyq;

.field public final e:[Landroid/net/Uri;

.field public final f:[Landroidx/media2/exoplayer/external/Format;

.field public final g:Ljr;

.field public final h:Landroidx/media2/exoplayer/external/source/TrackGroup;

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Llq$b;

.field public k:Z

.field public l:[B

.field public m:Ljava/io/IOException;

.field public n:Landroid/net/Uri;

.field public o:Z

.field public p:Lyr;

.field public q:J

.field public r:Z


# direct methods
.method public constructor <init>(Lnq;Ljr;[Landroid/net/Uri;[Landroidx/media2/exoplayer/external/Format;Lmq;Lht;Lyq;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnq;",
            "Ljr;",
            "[",
            "Landroid/net/Uri;",
            "[",
            "Landroidx/media2/exoplayer/external/Format;",
            "Lmq;",
            "Lht;",
            "Lyq;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llq;->a:Lnq;

    iput-object p2, p0, Llq;->g:Ljr;

    iput-object p3, p0, Llq;->e:[Landroid/net/Uri;

    iput-object p4, p0, Llq;->f:[Landroidx/media2/exoplayer/external/Format;

    iput-object p7, p0, Llq;->d:Lyq;

    iput-object p8, p0, Llq;->i:Ljava/util/List;

    new-instance p1, Llq$b;

    invoke-direct {p1}, Llq$b;-><init>()V

    iput-object p1, p0, Llq;->j:Llq$b;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Llq;->q:J

    const/4 p1, 0x1

    invoke-interface {p5, p1}, Lmq;->createDataSource(I)Lls;

    move-result-object p1

    iput-object p1, p0, Llq;->b:Lls;

    if-eqz p6, :cond_0

    invoke-interface {p1, p6}, Lls;->b(Lht;)V

    :cond_0
    const/4 p1, 0x3

    invoke-interface {p5, p1}, Lmq;->createDataSource(I)Lls;

    move-result-object p1

    iput-object p1, p0, Llq;->c:Lls;

    new-instance p1, Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {p1, p4}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    iput-object p1, p0, Llq;->h:Landroidx/media2/exoplayer/external/source/TrackGroup;

    array-length p1, p3

    new-array p1, p1, [I

    const/4 p2, 0x0

    :goto_0
    array-length p4, p3

    if-ge p2, p4, :cond_1

    aput p2, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    new-instance p2, Llq$e;

    iget-object p3, p0, Llq;->h:Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {p2, p3, p1}, Llq$e;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    iput-object p2, p0, Llq;->p:Lyr;

    return-void
.end method

.method public static c(Lfr;Lfr$a;)Landroid/net/Uri;
    .locals 0

    if-eqz p1, :cond_1

    iget-object p1, p1, Lfr$a;->h:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lgr;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Llu;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Lpq;J)[Lhq;
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    if-nez v9, :cond_0

    const/4 v0, -0x1

    const/4 v10, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, v8, Llq;->h:Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object v1, v9, Leq;->c:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/source/TrackGroup;->b(Landroidx/media2/exoplayer/external/Format;)I

    move-result v0

    move v10, v0

    :goto_0
    iget-object v0, v8, Llq;->p:Lyr;

    invoke-interface {v0}, Lyr;->length()I

    move-result v11

    new-array v12, v11, [Lhq;

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v11, :cond_4

    iget-object v0, v8, Llq;->p:Lyr;

    invoke-interface {v0, v14}, Lyr;->getIndexInTrackGroup(I)I

    move-result v0

    iget-object v1, v8, Llq;->e:[Landroid/net/Uri;

    aget-object v1, v1, v0

    iget-object v2, v8, Llq;->g:Ljr;

    invoke-interface {v2, v1}, Ljr;->g(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v0, Lhq;->a:Lhq;

    aput-object v0, v12, v14

    goto :goto_3

    :cond_1
    iget-object v2, v8, Llq;->g:Ljr;

    invoke-interface {v2, v1, v13}, Ljr;->i(Landroid/net/Uri;Z)Lfr;

    move-result-object v15

    iget-wide v1, v15, Lfr;->f:J

    iget-object v3, v8, Llq;->g:Ljr;

    invoke-interface {v3}, Ljr;->getInitialStartTimeUs()J

    move-result-wide v3

    sub-long v6, v1, v3

    if-eq v0, v10, :cond_2

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v15

    move-wide v4, v6

    move-wide/from16 v16, v6

    move-wide/from16 v6, p2

    invoke-virtual/range {v0 .. v7}, Llq;->b(Lpq;ZLfr;JJ)J

    move-result-wide v0

    iget-wide v2, v15, Lfr;->i:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    sget-object v0, Lhq;->a:Lhq;

    aput-object v0, v12, v14

    goto :goto_3

    :cond_3
    sub-long/2addr v0, v2

    long-to-int v1, v0

    new-instance v0, Llq$d;

    move-wide/from16 v2, v16

    invoke-direct {v0, v15, v2, v3, v1}, Llq$d;-><init>(Lfr;JI)V

    aput-object v0, v12, v14

    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_4
    return-object v12
.end method

.method public final b(Lpq;ZLfr;JJ)J
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lgq;->e()J

    move-result-wide p1

    return-wide p1

    :cond_1
    :goto_0
    iget-wide v0, p3, Lfr;->p:J

    add-long/2addr v0, p4

    if-eqz p1, :cond_3

    iget-boolean p2, p0, Llq;->o:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    iget-wide p6, p1, Leq;->f:J

    :cond_3
    :goto_1
    iget-boolean p2, p3, Lfr;->l:Z

    if-nez p2, :cond_4

    cmp-long p2, p6, v0

    if-ltz p2, :cond_4

    iget-wide p1, p3, Lfr;->i:J

    iget-object p3, p3, Lfr;->o:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    int-to-long p3, p3

    :goto_2
    add-long/2addr p1, p3

    return-wide p1

    :cond_4
    sub-long/2addr p6, p4

    iget-object p2, p3, Lfr;->o:Ljava/util/List;

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    iget-object p5, p0, Llq;->g:Ljr;

    invoke-interface {p5}, Ljr;->isLive()Z

    move-result p5

    const/4 p6, 0x1

    if-eqz p5, :cond_6

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 p1, 0x1

    :goto_4
    invoke-static {p2, p4, p6, p1}, Lnu;->d(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result p1

    int-to-long p1, p1

    iget-wide p3, p3, Lfr;->i:J

    goto :goto_2
.end method

.method public d(JJLjava/util/List;Llq$c;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Lpq;",
            ">;",
            "Llq$c;",
            ")V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-wide/from16 v6, p3

    move-object/from16 v9, p6

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_0

    move-object/from16 v1, p5

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v11

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpq;

    move-object v4, v0

    :goto_0
    if-nez v4, :cond_1

    const/4 v0, -0x1

    const/4 v5, -0x1

    goto :goto_1

    :cond_1
    iget-object v0, v8, Llq;->h:Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object v2, v4, Leq;->c:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/source/TrackGroup;->b(Landroidx/media2/exoplayer/external/Format;)I

    move-result v0

    move v5, v0

    :goto_1
    sub-long v2, v6, p1

    invoke-virtual/range {p0 .. p2}, Llq;->m(J)J

    move-result-wide v12

    if-eqz v4, :cond_2

    iget-boolean v0, v8, Llq;->o:Z

    if-nez v0, :cond_2

    invoke-virtual {v4}, Leq;->b()J

    move-result-wide v14

    sub-long/2addr v2, v14

    const-wide/16 v10, 0x0

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v12, v16

    if-eqz v0, :cond_2

    sub-long/2addr v12, v14

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    move-wide v15, v2

    move-wide/from16 v17, v10

    goto :goto_2

    :cond_2
    move-wide v15, v2

    move-wide/from16 v17, v12

    :goto_2
    invoke-virtual {v8, v4, v6, v7}, Llq;->a(Lpq;J)[Lhq;

    move-result-object v20

    iget-object v12, v8, Llq;->p:Lyr;

    move-wide/from16 v13, p1

    move-object/from16 v19, p5

    invoke-interface/range {v12 .. v20}, Lyr;->a(JJJLjava/util/List;[Lhq;)V

    iget-object v0, v8, Llq;->p:Lyr;

    invoke-interface {v0}, Lyr;->getSelectedIndexInTrackGroup()I

    move-result v10

    const/4 v11, 0x0

    if-eq v5, v10, :cond_3

    const/4 v12, 0x1

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    :goto_3
    iget-object v0, v8, Llq;->e:[Landroid/net/Uri;

    aget-object v13, v0, v10

    iget-object v0, v8, Llq;->g:Ljr;

    invoke-interface {v0, v13}, Ljr;->g(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_4

    iput-object v13, v9, Llq$c;->c:Landroid/net/Uri;

    iget-boolean v0, v8, Llq;->r:Z

    iget-object v1, v8, Llq;->n:Landroid/net/Uri;

    invoke-virtual {v13, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    and-int/2addr v0, v1

    iput-boolean v0, v8, Llq;->r:Z

    iput-object v13, v8, Llq;->n:Landroid/net/Uri;

    return-void

    :cond_4
    iget-object v0, v8, Llq;->g:Ljr;

    const/4 v1, 0x1

    invoke-interface {v0, v13, v1}, Ljr;->i(Landroid/net/Uri;Z)Lfr;

    move-result-object v14

    iget-boolean v0, v14, Lgr;->c:Z

    iput-boolean v0, v8, Llq;->o:Z

    invoke-virtual {v8, v14}, Llq;->p(Lfr;)V

    iget-wide v0, v14, Lfr;->f:J

    iget-object v2, v8, Llq;->g:Ljr;

    invoke-interface {v2}, Ljr;->getInitialStartTimeUs()J

    move-result-wide v2

    sub-long v15, v0, v2

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v12

    move-object v3, v14

    move-object/from16 v25, v4

    move/from16 v17, v5

    move-wide v4, v15

    move-wide/from16 v6, p3

    invoke-virtual/range {v0 .. v7}, Llq;->b(Lpq;ZLfr;JJ)J

    move-result-wide v0

    iget-wide v2, v14, Lfr;->i:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_5

    if-eqz v25, :cond_5

    if-eqz v12, :cond_5

    iget-object v0, v8, Llq;->e:[Landroid/net/Uri;

    aget-object v0, v0, v17

    iget-object v1, v8, Llq;->g:Ljr;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Ljr;->i(Landroid/net/Uri;Z)Lfr;

    move-result-object v1

    iget-wide v2, v1, Lfr;->f:J

    iget-object v4, v8, Llq;->g:Ljr;

    invoke-interface {v4}, Ljr;->getInitialStartTimeUs()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual/range {v25 .. v25}, Lgq;->e()J

    move-result-wide v4

    move-wide v15, v2

    move-object v3, v0

    move-object v2, v1

    move-wide v0, v4

    move/from16 v5, v17

    goto :goto_4

    :cond_5
    move v5, v10

    move-object v3, v13

    move-object v2, v14

    :goto_4
    iget-wide v6, v2, Lfr;->i:J

    cmp-long v4, v0, v6

    if-gez v4, :cond_6

    new-instance v0, Lqo;

    invoke-direct {v0}, Lqo;-><init>()V

    iput-object v0, v8, Llq;->m:Ljava/io/IOException;

    return-void

    :cond_6
    sub-long/2addr v0, v6

    long-to-int v1, v0

    iget-object v0, v2, Lfr;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_8

    iget-boolean v0, v2, Lfr;->l:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, v9, Llq$c;->b:Z

    goto :goto_5

    :cond_7
    iput-object v3, v9, Llq$c;->c:Landroid/net/Uri;

    iget-boolean v0, v8, Llq;->r:Z

    iget-object v1, v8, Llq;->n:Landroid/net/Uri;

    invoke-virtual {v3, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    and-int/2addr v0, v1

    iput-boolean v0, v8, Llq;->r:Z

    iput-object v3, v8, Llq;->n:Landroid/net/Uri;

    :goto_5
    return-void

    :cond_8
    iput-boolean v11, v8, Llq;->r:Z

    const/4 v0, 0x0

    iput-object v0, v8, Llq;->n:Landroid/net/Uri;

    iget-object v0, v2, Lfr;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr$a;

    iget-object v4, v0, Lfr$a;->b:Lfr$a;

    invoke-static {v2, v4}, Llq;->c(Lfr;Lfr$a;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v8, v4, v5}, Llq;->h(Landroid/net/Uri;I)Leq;

    move-result-object v6

    iput-object v6, v9, Llq$c;->a:Leq;

    if-eqz v6, :cond_9

    return-void

    :cond_9
    invoke-static {v2, v0}, Llq;->c(Lfr;Lfr$a;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0, v5}, Llq;->h(Landroid/net/Uri;I)Leq;

    move-result-object v6

    iput-object v6, v9, Llq$c;->a:Leq;

    if-eqz v6, :cond_a

    return-void

    :cond_a
    iget-object v12, v8, Llq;->a:Lnq;

    iget-object v13, v8, Llq;->b:Lls;

    iget-object v6, v8, Llq;->f:[Landroidx/media2/exoplayer/external/Format;

    aget-object v14, v6, v5

    iget-object v5, v8, Llq;->i:Ljava/util/List;

    iget-object v6, v8, Llq;->p:Lyr;

    invoke-interface {v6}, Lyr;->getSelectionReason()I

    move-result v21

    iget-object v6, v8, Llq;->p:Lyr;

    invoke-interface {v6}, Lyr;->getSelectionData()Ljava/lang/Object;

    move-result-object v22

    iget-boolean v6, v8, Llq;->k:Z

    iget-object v7, v8, Llq;->d:Lyq;

    iget-object v10, v8, Llq;->j:Llq$b;

    invoke-virtual {v10, v0}, Llq$b;->b(Ljava/lang/Object;)[B

    move-result-object v26

    iget-object v0, v8, Llq;->j:Llq$b;

    invoke-virtual {v0, v4}, Llq$b;->b(Ljava/lang/Object;)[B

    move-result-object v27

    move-object/from16 v17, v2

    move/from16 v18, v1

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move/from16 v23, v6

    move-object/from16 v24, v7

    invoke-static/range {v12 .. v27}, Lpq;->g(Lnq;Lls;Landroidx/media2/exoplayer/external/Format;JLfr;ILandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;ZLyq;Lpq;[B[B)Lpq;

    move-result-object v0

    iput-object v0, v9, Llq$c;->a:Leq;

    return-void
.end method

.method public e()Landroidx/media2/exoplayer/external/source/TrackGroup;
    .locals 1

    iget-object v0, p0, Llq;->h:Landroidx/media2/exoplayer/external/source/TrackGroup;

    return-object v0
.end method

.method public f()Lyr;
    .locals 1

    iget-object v0, p0, Llq;->p:Lyr;

    return-object v0
.end method

.method public g(Leq;J)Z
    .locals 2

    iget-object v0, p0, Llq;->p:Lyr;

    iget-object v1, p0, Llq;->h:Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object p1, p1, Leq;->c:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v1, p1}, Landroidx/media2/exoplayer/external/source/TrackGroup;->b(Landroidx/media2/exoplayer/external/Format;)I

    move-result p1

    invoke-interface {v0, p1}, Lyr;->indexOf(I)I

    move-result p1

    invoke-interface {v0, p1, p2, p3}, Lyr;->blacklist(IJ)Z

    move-result p1

    return p1
.end method

.method public final h(Landroid/net/Uri;I)Leq;
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Llq;->j:Llq$b;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p2, p0, Llq;->j:Llq$b;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p2, p1, v1}, Llq$b;->c(Landroid/net/Uri;[B)[B

    return-object v0

    :cond_1
    new-instance v0, Los;

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Los;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    new-instance p1, Llq$a;

    iget-object v3, p0, Llq;->c:Lls;

    iget-object v1, p0, Llq;->f:[Landroidx/media2/exoplayer/external/Format;

    aget-object v5, v1, p2

    iget-object p2, p0, Llq;->p:Lyr;

    invoke-interface {p2}, Lyr;->getSelectionReason()I

    move-result v6

    iget-object p2, p0, Llq;->p:Lyr;

    invoke-interface {p2}, Lyr;->getSelectionData()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Llq;->l:[B

    move-object v2, p1

    move-object v4, v0

    invoke-direct/range {v2 .. v8}, Llq$a;-><init>(Lls;Los;Landroidx/media2/exoplayer/external/Format;ILjava/lang/Object;[B)V

    return-object p1
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Llq;->m:Ljava/io/IOException;

    if-nez v0, :cond_1

    iget-object v0, p0, Llq;->n:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Llq;->r:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Llq;->g:Ljr;

    invoke-interface {v1, v0}, Ljr;->a(Landroid/net/Uri;)V

    :cond_0
    return-void

    :cond_1
    throw v0
.end method

.method public j(Leq;)V
    .locals 2

    instance-of v0, p1, Llq$a;

    if-eqz v0, :cond_0

    check-cast p1, Llq$a;

    invoke-virtual {p1}, Lfq;->f()[B

    move-result-object v0

    iput-object v0, p0, Llq;->l:[B

    iget-object v0, p0, Llq;->j:Llq$b;

    iget-object v1, p1, Leq;->a:Los;

    iget-object v1, v1, Los;->a:Landroid/net/Uri;

    invoke-virtual {p1}, Llq$a;->h()[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Llq$b;->c(Landroid/net/Uri;[B)[B

    :cond_0
    return-void
.end method

.method public k(Landroid/net/Uri;J)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Llq;->e:[Landroid/net/Uri;

    array-length v3, v2

    const/4 v4, -0x1

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    const/4 v2, 0x1

    if-ne v1, v4, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Llq;->p:Lyr;

    invoke-interface {v3, v1}, Lyr;->indexOf(I)I

    move-result v1

    if-ne v1, v4, :cond_3

    return v2

    :cond_3
    iget-boolean v3, p0, Llq;->r:Z

    iget-object v4, p0, Llq;->n:Landroid/net/Uri;

    invoke-virtual {p1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p1, v3

    iput-boolean p1, p0, Llq;->r:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p2, v3

    if-eqz p1, :cond_4

    iget-object p1, p0, Llq;->p:Lyr;

    invoke-interface {p1, v1, p2, p3}, Lyr;->blacklist(IJ)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Llq;->m:Ljava/io/IOException;

    return-void
.end method

.method public final m(J)J
    .locals 5

    iget-wide v0, p0, Llq;->q:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    sub-long v2, v0, p1

    :cond_1
    return-wide v2
.end method

.method public n(Lyr;)V
    .locals 0

    iput-object p1, p0, Llq;->p:Lyr;

    return-void
.end method

.method public o(Z)V
    .locals 0

    iput-boolean p1, p0, Llq;->k:Z

    return-void
.end method

.method public final p(Lfr;)V
    .locals 4

    iget-boolean v0, p1, Lfr;->l:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lfr;->d()J

    move-result-wide v0

    iget-object p1, p0, Llq;->g:Ljr;

    invoke-interface {p1}, Ljr;->getInitialStartTimeUs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    :goto_0
    iput-wide v0, p0, Llq;->q:J

    return-void
.end method
