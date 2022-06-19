.class final Landroidx/media2/exoplayer/external/source/hls/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/hls/d$b;,
        Landroidx/media2/exoplayer/external/source/hls/d$d;,
        Landroidx/media2/exoplayer/external/source/hls/d$a;,
        Landroidx/media2/exoplayer/external/source/hls/d$e;,
        Landroidx/media2/exoplayer/external/source/hls/d$c;
    }
.end annotation


# instance fields
.field final a:[Landroid/net/Uri;

.field final b:Landroidx/media2/exoplayer/external/source/TrackGroup;

.field final c:Landroidx/media2/exoplayer/external/source/hls/d$b;

.field d:Z

.field e:[B

.field f:Ljava/io/IOException;

.field g:Landroid/net/Uri;

.field h:Landroidx/media2/exoplayer/external/trackselection/e;

.field i:Z

.field private final j:Landroidx/media2/exoplayer/external/source/hls/f;

.field private final k:Landroidx/media2/exoplayer/external/upstream/f;

.field private final l:Landroidx/media2/exoplayer/external/upstream/f;

.field private final m:Landroidx/media2/exoplayer/external/source/hls/o;

.field private final n:[Landroidx/media2/exoplayer/external/Format;

.field private final o:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:J


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/hls/f;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;[Landroid/net/Uri;[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/source/hls/e;Landroidx/media2/exoplayer/external/upstream/w;Landroidx/media2/exoplayer/external/source/hls/o;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/hls/f;",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;",
            "[",
            "Landroid/net/Uri;",
            "[",
            "Landroidx/media2/exoplayer/external/Format;",
            "Landroidx/media2/exoplayer/external/source/hls/e;",
            "Landroidx/media2/exoplayer/external/upstream/w;",
            "Landroidx/media2/exoplayer/external/source/hls/o;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;)V"
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/d;->j:Landroidx/media2/exoplayer/external/source/hls/f;

    .line 147
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/d;->o:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    .line 148
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/hls/d;->a:[Landroid/net/Uri;

    .line 149
    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/hls/d;->n:[Landroidx/media2/exoplayer/external/Format;

    .line 150
    iput-object p7, p0, Landroidx/media2/exoplayer/external/source/hls/d;->m:Landroidx/media2/exoplayer/external/source/hls/o;

    .line 151
    iput-object p8, p0, Landroidx/media2/exoplayer/external/source/hls/d;->p:Ljava/util/List;

    .line 152
    new-instance p1, Landroidx/media2/exoplayer/external/source/hls/d$b;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/source/hls/d$b;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/d;->c:Landroidx/media2/exoplayer/external/source/hls/d$b;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 153
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/hls/d;->r:J

    .line 154
    invoke-interface {p5}, Landroidx/media2/exoplayer/external/source/hls/e;->a()Landroidx/media2/exoplayer/external/upstream/f;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/d;->k:Landroidx/media2/exoplayer/external/upstream/f;

    if-eqz p6, :cond_0

    .line 156
    invoke-interface {p1, p6}, Landroidx/media2/exoplayer/external/upstream/f;->a(Landroidx/media2/exoplayer/external/upstream/w;)V

    .line 158
    :cond_0
    invoke-interface {p5}, Landroidx/media2/exoplayer/external/source/hls/e;->a()Landroidx/media2/exoplayer/external/upstream/f;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/d;->l:Landroidx/media2/exoplayer/external/upstream/f;

    .line 159
    new-instance p1, Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {p1, p4}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/d;->b:Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 160
    array-length p1, p3

    new-array p1, p1, [I

    const/4 p2, 0x0

    .line 161
    :goto_0
    array-length p4, p3

    if-ge p2, p4, :cond_1

    .line 162
    aput p2, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 164
    :cond_1
    new-instance p2, Landroidx/media2/exoplayer/external/source/hls/d$e;

    iget-object p3, p0, Landroidx/media2/exoplayer/external/source/hls/d;->b:Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {p2, p3, p1}, Landroidx/media2/exoplayer/external/source/hls/d$e;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V

    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/d;->h:Landroidx/media2/exoplayer/external/trackselection/e;

    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/source/hls/h;ZLandroidx/media2/exoplayer/external/source/hls/playlist/f;JJ)J
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/hls/h;->f()J

    move-result-wide p1

    return-wide p1

    .line 475
    :cond_1
    :goto_0
    iget-wide v0, p3, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->m:J

    add-long/2addr v0, p4

    if-eqz p1, :cond_3

    .line 477
    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/source/hls/d;->q:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    iget-wide p6, p1, Landroidx/media2/exoplayer/external/source/hls/h;->f:J

    .line 478
    :cond_3
    :goto_1
    iget-boolean p2, p3, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->i:Z

    if-nez p2, :cond_4

    cmp-long p2, p6, v0

    if-ltz p2, :cond_4

    .line 480
    iget-wide p1, p3, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->f:J

    iget-object p3, p3, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->l:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    int-to-long p3, p3

    :goto_2
    add-long/2addr p1, p3

    return-wide p1

    :cond_4
    sub-long/2addr p6, p4

    .line 483
    iget-object p2, p3, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->l:Ljava/util/List;

    .line 485
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    iget-object p5, p0, Landroidx/media2/exoplayer/external/source/hls/d;->o:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    .line 487
    invoke-interface {p5}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->e()Z

    move-result p5

    if-eqz p5, :cond_6

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 p1, 0x1

    .line 483
    :goto_4
    invoke-static {p2, p4, p1}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/util/List;Ljava/lang/Comparable;Z)I

    move-result p1

    int-to-long p1, p1

    iget-wide p3, p3, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->f:J

    goto :goto_2
.end method

.method private static a(Landroidx/media2/exoplayer/external/source/hls/playlist/f;Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;)Landroid/net/Uri;
    .locals 1

    if-eqz p1, :cond_1

    .line 533
    iget-object v0, p1, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 536
    :cond_0
    iget-object p0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->n:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->h:Ljava/lang/String;

    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/util/ab;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Landroid/net/Uri;I)Landroidx/media2/exoplayer/external/source/a/b;
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 514
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/d;->c:Landroidx/media2/exoplayer/external/source/hls/d$b;

    invoke-virtual {v1, p1}, Landroidx/media2/exoplayer/external/source/hls/d$b;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 518
    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/d;->c:Landroidx/media2/exoplayer/external/source/hls/d$b;

    invoke-virtual {p2, p1}, Landroidx/media2/exoplayer/external/source/hls/d$b;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p2, p1, v1}, Landroidx/media2/exoplayer/external/source/hls/d$b;->a(Landroid/net/Uri;[B)[B

    return-object v0

    .line 521
    :cond_1
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/h;

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Landroidx/media2/exoplayer/external/upstream/h;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 522
    new-instance p1, Landroidx/media2/exoplayer/external/source/hls/d$a;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/d;->l:Landroidx/media2/exoplayer/external/upstream/f;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/d;->n:[Landroidx/media2/exoplayer/external/Format;

    aget-object v5, v1, p2

    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/d;->h:Landroidx/media2/exoplayer/external/trackselection/e;

    .line 526
    invoke-interface {p2}, Landroidx/media2/exoplayer/external/trackselection/e;->b()I

    move-result v6

    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/d;->h:Landroidx/media2/exoplayer/external/trackselection/e;

    .line 527
    invoke-interface {p2}, Landroidx/media2/exoplayer/external/trackselection/e;->c()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Landroidx/media2/exoplayer/external/source/hls/d;->e:[B

    move-object v2, p1

    move-object v4, v0

    invoke-direct/range {v2 .. v8}, Landroidx/media2/exoplayer/external/source/hls/d$a;-><init>(Landroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/upstream/h;Landroidx/media2/exoplayer/external/Format;ILjava/lang/Object;[B)V

    return-object p1
.end method


# virtual methods
.method public final a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/d;->f:Ljava/io/IOException;

    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/d;->g:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/source/hls/d;->i:Z

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/d;->o:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->b(Landroid/net/Uri;)V

    :cond_0
    return-void

    .line 175
    :cond_1
    throw v0
.end method

.method public final a(JJLjava/util/List;ZLandroidx/media2/exoplayer/external/source/hls/d$c;)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/h;",
            ">;Z",
            "Landroidx/media2/exoplayer/external/source/hls/d$c;",
            ")V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-wide/from16 v9, p3

    move-object/from16 v11, p7

    .line 245
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_0

    const/4 v15, 0x0

    goto :goto_0

    :cond_0
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v13

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/hls/h;

    move-object v15, v0

    :goto_0
    if-nez v15, :cond_1

    const/4 v0, -0x1

    const/4 v14, -0x1

    goto :goto_1

    .line 246
    :cond_1
    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/d;->b:Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object v1, v15, Landroidx/media2/exoplayer/external/source/hls/h;->c:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/source/TrackGroup;->indexOf(Landroidx/media2/exoplayer/external/Format;)I

    move-result v0

    move v14, v0

    :goto_1
    sub-long v0, v9, p1

    .line 1496
    iget-wide v2, v8, Landroidx/media2/exoplayer/external/source/hls/d;->r:J

    const/4 v7, 0x0

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v16

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    sub-long v2, v2, p1

    goto :goto_3

    :cond_3
    move-wide/from16 v2, v16

    :goto_3
    if-eqz v15, :cond_4

    .line 249
    iget-boolean v4, v8, Landroidx/media2/exoplayer/external/source/hls/d;->q:Z

    if-nez v4, :cond_4

    .line 2112
    iget-wide v4, v15, Landroidx/media2/exoplayer/external/source/a/b;->g:J

    iget-wide v12, v15, Landroidx/media2/exoplayer/external/source/a/b;->f:J

    sub-long/2addr v4, v12

    sub-long/2addr v0, v4

    const-wide/16 v12, 0x0

    .line 257
    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long v6, v2, v16

    if-eqz v6, :cond_4

    sub-long/2addr v2, v4

    .line 259
    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_4
    move-wide v5, v2

    move-wide v3, v0

    .line 264
    invoke-virtual {v8, v15, v9, v10}, Landroidx/media2/exoplayer/external/source/hls/d;->a(Landroidx/media2/exoplayer/external/source/hls/h;J)[Landroidx/media2/exoplayer/external/source/a/e;

    .line 265
    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/d;->h:Landroidx/media2/exoplayer/external/trackselection/e;

    move-wide/from16 v1, p1

    invoke-interface/range {v0 .. v6}, Landroidx/media2/exoplayer/external/trackselection/e;->a(JJJ)V

    .line 267
    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/d;->h:Landroidx/media2/exoplayer/external/trackselection/e;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/trackselection/e;->h()I

    move-result v12

    if-eq v14, v12, :cond_5

    const/4 v13, 0x1

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    .line 270
    :goto_4
    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/d;->a:[Landroid/net/Uri;

    aget-object v6, v0, v12

    .line 271
    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/d;->o:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, v6}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->a(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 272
    iput-object v6, v11, Landroidx/media2/exoplayer/external/source/hls/d$c;->c:Landroid/net/Uri;

    .line 273
    iget-boolean v0, v8, Landroidx/media2/exoplayer/external/source/hls/d;->i:Z

    iget-object v1, v8, Landroidx/media2/exoplayer/external/source/hls/d;->g:Landroid/net/Uri;

    invoke-virtual {v6, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    and-int/2addr v0, v1

    iput-boolean v0, v8, Landroidx/media2/exoplayer/external/source/hls/d;->i:Z

    .line 274
    iput-object v6, v8, Landroidx/media2/exoplayer/external/source/hls/d;->g:Landroid/net/Uri;

    return-void

    .line 278
    :cond_6
    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/d;->o:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    const/4 v1, 0x1

    .line 279
    invoke-interface {v0, v6, v1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->a(Landroid/net/Uri;Z)Landroidx/media2/exoplayer/external/source/hls/playlist/f;

    move-result-object v4

    .line 280
    iget-boolean v0, v4, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->p:Z

    iput-boolean v0, v8, Landroidx/media2/exoplayer/external/source/hls/d;->q:Z

    .line 2504
    iget-boolean v0, v4, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->i:Z

    if-eqz v0, :cond_7

    goto :goto_5

    .line 2506
    :cond_7
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->a()J

    move-result-wide v0

    iget-object v2, v8, Landroidx/media2/exoplayer/external/source/hls/d;->o:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->c()J

    move-result-wide v2

    sub-long v16, v0, v2

    :goto_5
    move-wide/from16 v0, v16

    iput-wide v0, v8, Landroidx/media2/exoplayer/external/source/hls/d;->r:J

    .line 285
    iget-wide v0, v4, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->c:J

    iget-object v2, v8, Landroidx/media2/exoplayer/external/source/hls/d;->o:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    .line 286
    invoke-interface {v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->c()J

    move-result-wide v2

    sub-long v16, v0, v2

    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v13

    move-object v3, v4

    move-object v9, v4

    move-wide/from16 v4, v16

    move-object/from16 p1, v6

    const/4 v10, 0x0

    move-wide/from16 v6, p3

    .line 288
    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/source/hls/d;->a(Landroidx/media2/exoplayer/external/source/hls/h;ZLandroidx/media2/exoplayer/external/source/hls/playlist/f;JJ)J

    move-result-wide v0

    .line 290
    iget-wide v2, v9, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->f:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_8

    if-eqz v15, :cond_8

    if-eqz v13, :cond_8

    .line 294
    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/d;->a:[Landroid/net/Uri;

    aget-object v0, v0, v14

    .line 295
    iget-object v1, v8, Landroidx/media2/exoplayer/external/source/hls/d;->o:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    const/4 v2, 0x1

    .line 296
    invoke-interface {v1, v0, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->a(Landroid/net/Uri;Z)Landroidx/media2/exoplayer/external/source/hls/playlist/f;

    move-result-object v1

    .line 297
    iget-wide v2, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->c:J

    iget-object v4, v8, Landroidx/media2/exoplayer/external/source/hls/d;->o:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    .line 298
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 299
    invoke-virtual {v15}, Landroidx/media2/exoplayer/external/source/hls/h;->f()J

    move-result-wide v4

    move-object v9, v1

    move-wide/from16 v30, v4

    move-object v4, v0

    move-wide/from16 v0, v30

    goto :goto_6

    :cond_8
    move-object/from16 v4, p1

    move v14, v12

    move-wide/from16 v2, v16

    .line 302
    :goto_6
    iget-wide v5, v9, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->f:J

    cmp-long v7, v0, v5

    if-gez v7, :cond_9

    .line 303
    new-instance v0, Landroidx/media2/exoplayer/external/source/BehindLiveWindowException;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/source/BehindLiveWindowException;-><init>()V

    iput-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/d;->f:Ljava/io/IOException;

    return-void

    .line 307
    :cond_9
    iget-wide v5, v9, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->f:J

    sub-long/2addr v0, v5

    long-to-int v1, v0

    .line 308
    iget-object v0, v9, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_d

    .line 310
    iget-boolean v1, v9, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->i:Z

    if-eqz v1, :cond_c

    if-nez p6, :cond_b

    if-nez v0, :cond_a

    goto :goto_7

    :cond_a
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    goto :goto_8

    :cond_b
    :goto_7
    const/4 v1, 0x1

    .line 312
    iput-boolean v1, v11, Landroidx/media2/exoplayer/external/source/hls/d$c;->b:Z

    return-void

    .line 317
    :cond_c
    iput-object v4, v11, Landroidx/media2/exoplayer/external/source/hls/d$c;->c:Landroid/net/Uri;

    .line 318
    iget-boolean v0, v8, Landroidx/media2/exoplayer/external/source/hls/d;->i:Z

    iget-object v1, v8, Landroidx/media2/exoplayer/external/source/hls/d;->g:Landroid/net/Uri;

    invoke-virtual {v4, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    and-int/2addr v0, v1

    iput-boolean v0, v8, Landroidx/media2/exoplayer/external/source/hls/d;->i:Z

    .line 319
    iput-object v4, v8, Landroidx/media2/exoplayer/external/source/hls/d;->g:Landroid/net/Uri;

    return-void

    :cond_d
    move v0, v1

    .line 324
    :goto_8
    iput-boolean v10, v8, Landroidx/media2/exoplayer/external/source/hls/d;->i:Z

    const/4 v1, 0x0

    .line 325
    iput-object v1, v8, Landroidx/media2/exoplayer/external/source/hls/d;->g:Landroid/net/Uri;

    .line 328
    iget-object v1, v9, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;

    .line 331
    iget-object v5, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->b:Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;

    invoke-static {v9, v5}, Landroidx/media2/exoplayer/external/source/hls/d;->a(Landroidx/media2/exoplayer/external/source/hls/playlist/f;Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;)Landroid/net/Uri;

    move-result-object v5

    .line 332
    invoke-direct {v8, v5, v14}, Landroidx/media2/exoplayer/external/source/hls/d;->a(Landroid/net/Uri;I)Landroidx/media2/exoplayer/external/source/a/b;

    move-result-object v6

    iput-object v6, v11, Landroidx/media2/exoplayer/external/source/hls/d$c;->a:Landroidx/media2/exoplayer/external/source/a/b;

    .line 333
    iget-object v6, v11, Landroidx/media2/exoplayer/external/source/hls/d$c;->a:Landroidx/media2/exoplayer/external/source/a/b;

    if-eqz v6, :cond_e

    return-void

    .line 336
    :cond_e
    invoke-static {v9, v1}, Landroidx/media2/exoplayer/external/source/hls/d;->a(Landroidx/media2/exoplayer/external/source/hls/playlist/f;Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;)Landroid/net/Uri;

    move-result-object v1

    .line 337
    invoke-direct {v8, v1, v14}, Landroidx/media2/exoplayer/external/source/hls/d;->a(Landroid/net/Uri;I)Landroidx/media2/exoplayer/external/source/a/b;

    move-result-object v6

    iput-object v6, v11, Landroidx/media2/exoplayer/external/source/hls/d$c;->a:Landroidx/media2/exoplayer/external/source/a/b;

    .line 338
    iget-object v6, v11, Landroidx/media2/exoplayer/external/source/hls/d$c;->a:Landroidx/media2/exoplayer/external/source/a/b;

    if-eqz v6, :cond_f

    return-void

    .line 342
    :cond_f
    iget-object v6, v8, Landroidx/media2/exoplayer/external/source/hls/d;->j:Landroidx/media2/exoplayer/external/source/hls/f;

    iget-object v7, v8, Landroidx/media2/exoplayer/external/source/hls/d;->k:Landroidx/media2/exoplayer/external/upstream/f;

    iget-object v10, v8, Landroidx/media2/exoplayer/external/source/hls/d;->n:[Landroidx/media2/exoplayer/external/Format;

    aget-object v16, v10, v14

    iget-object v10, v8, Landroidx/media2/exoplayer/external/source/hls/d;->p:Ljava/util/List;

    iget-object v12, v8, Landroidx/media2/exoplayer/external/source/hls/d;->h:Landroidx/media2/exoplayer/external/trackselection/e;

    .line 352
    invoke-interface {v12}, Landroidx/media2/exoplayer/external/trackselection/e;->b()I

    move-result v23

    iget-object v12, v8, Landroidx/media2/exoplayer/external/source/hls/d;->h:Landroidx/media2/exoplayer/external/trackselection/e;

    .line 353
    invoke-interface {v12}, Landroidx/media2/exoplayer/external/trackselection/e;->c()Ljava/lang/Object;

    move-result-object v24

    iget-boolean v12, v8, Landroidx/media2/exoplayer/external/source/hls/d;->d:Z

    iget-object v13, v8, Landroidx/media2/exoplayer/external/source/hls/d;->m:Landroidx/media2/exoplayer/external/source/hls/o;

    iget-object v14, v8, Landroidx/media2/exoplayer/external/source/hls/d;->c:Landroidx/media2/exoplayer/external/source/hls/d$b;

    .line 357
    invoke-virtual {v14, v1}, Landroidx/media2/exoplayer/external/source/hls/d$b;->a(Ljava/lang/Object;)[B

    move-result-object v28

    iget-object v1, v8, Landroidx/media2/exoplayer/external/source/hls/d;->c:Landroidx/media2/exoplayer/external/source/hls/d$b;

    .line 358
    invoke-virtual {v1, v5}, Landroidx/media2/exoplayer/external/source/hls/d$b;->a(Ljava/lang/Object;)[B

    move-result-object v29

    move-object v14, v6

    move-object v1, v15

    move-object v15, v7

    move-wide/from16 v17, v2

    move-object/from16 v19, v9

    move/from16 v20, v0

    move-object/from16 v21, v4

    move-object/from16 v22, v10

    move/from16 v25, v12

    move-object/from16 v26, v13

    move-object/from16 v27, v1

    .line 343
    invoke-static/range {v14 .. v29}, Landroidx/media2/exoplayer/external/source/hls/h;->a(Landroidx/media2/exoplayer/external/source/hls/f;Landroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/Format;JLandroidx/media2/exoplayer/external/source/hls/playlist/f;ILandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;ZLandroidx/media2/exoplayer/external/source/hls/o;Landroidx/media2/exoplayer/external/source/hls/h;[B[B)Landroidx/media2/exoplayer/external/source/hls/h;

    move-result-object v0

    iput-object v0, v11, Landroidx/media2/exoplayer/external/source/hls/d$c;->a:Landroidx/media2/exoplayer/external/source/a/b;

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/hls/h;J)[Landroidx/media2/exoplayer/external/source/a/e;
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    if-nez v9, :cond_0

    const/4 v0, -0x1

    const/4 v10, -0x1

    goto :goto_0

    .line 426
    :cond_0
    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/d;->b:Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object v1, v9, Landroidx/media2/exoplayer/external/source/hls/h;->c:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/source/TrackGroup;->indexOf(Landroidx/media2/exoplayer/external/Format;)I

    move-result v0

    move v10, v0

    .line 427
    :goto_0
    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/d;->h:Landroidx/media2/exoplayer/external/trackselection/e;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/trackselection/e;->f()I

    move-result v11

    new-array v12, v11, [Landroidx/media2/exoplayer/external/source/a/e;

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v11, :cond_4

    .line 429
    iget-object v0, v8, Landroidx/media2/exoplayer/external/source/hls/d;->h:Landroidx/media2/exoplayer/external/trackselection/e;

    invoke-interface {v0, v14}, Landroidx/media2/exoplayer/external/trackselection/e;->b(I)I

    move-result v0

    .line 430
    iget-object v1, v8, Landroidx/media2/exoplayer/external/source/hls/d;->a:[Landroid/net/Uri;

    aget-object v1, v1, v0

    .line 431
    iget-object v2, v8, Landroidx/media2/exoplayer/external/source/hls/d;->o:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v2, v1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->a(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 432
    sget-object v0, Landroidx/media2/exoplayer/external/source/a/e;->a:Landroidx/media2/exoplayer/external/source/a/e;

    aput-object v0, v12, v14

    goto :goto_3

    .line 435
    :cond_1
    iget-object v2, v8, Landroidx/media2/exoplayer/external/source/hls/d;->o:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    .line 436
    invoke-interface {v2, v1, v13}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->a(Landroid/net/Uri;Z)Landroidx/media2/exoplayer/external/source/hls/playlist/f;

    move-result-object v15

    .line 437
    iget-wide v1, v15, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->c:J

    iget-object v3, v8, Landroidx/media2/exoplayer/external/source/hls/d;->o:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    .line 438
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->c()J

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

    .line 441
    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/source/hls/d;->a(Landroidx/media2/exoplayer/external/source/hls/h;ZLandroidx/media2/exoplayer/external/source/hls/playlist/f;JJ)J

    move-result-wide v0

    .line 443
    iget-wide v2, v15, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->f:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    .line 444
    sget-object v0, Landroidx/media2/exoplayer/external/source/a/e;->a:Landroidx/media2/exoplayer/external/source/a/e;

    aput-object v0, v12, v14

    goto :goto_3

    .line 447
    :cond_3
    iget-wide v2, v15, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->f:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    .line 448
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/d$d;

    move-wide/from16 v2, v16

    invoke-direct {v0, v15, v2, v3, v1}, Landroidx/media2/exoplayer/external/source/hls/d$d;-><init>(Landroidx/media2/exoplayer/external/source/hls/playlist/f;JI)V

    aput-object v0, v12, v14

    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_4
    return-object v12
.end method
