.class public final Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;
.super Landroidx/media2/exoplayer/external/source/b;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;
    }
.end annotation


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/source/hls/f;

.field private final b:Landroid/net/Uri;

.field private final c:Landroidx/media2/exoplayer/external/source/hls/e;

.field private final d:Landroidx/media2/exoplayer/external/source/g;

.field private final e:Landroidx/media2/exoplayer/external/drm/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/k<",
            "*>;"
        }
    .end annotation
.end field

.field private final f:Landroidx/media2/exoplayer/external/upstream/t;

.field private final g:Z

.field private final h:Z

.field private final i:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

.field private final j:Ljava/lang/Object;

.field private k:Landroidx/media2/exoplayer/external/upstream/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.hls"

    .line 65
    invoke-static {v0}, Landroidx/media2/exoplayer/external/w;->a(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/source/hls/e;Landroidx/media2/exoplayer/external/source/hls/f;Landroidx/media2/exoplayer/external/source/g;Landroidx/media2/exoplayer/external/drm/k;Landroidx/media2/exoplayer/external/upstream/t;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;ZZLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroidx/media2/exoplayer/external/source/hls/e;",
            "Landroidx/media2/exoplayer/external/source/hls/f;",
            "Landroidx/media2/exoplayer/external/source/g;",
            "Landroidx/media2/exoplayer/external/drm/k<",
            "*>;",
            "Landroidx/media2/exoplayer/external/upstream/t;",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;",
            "ZZ",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 346
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/b;-><init>()V

    .line 347
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->b:Landroid/net/Uri;

    .line 348
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->c:Landroidx/media2/exoplayer/external/source/hls/e;

    .line 349
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->a:Landroidx/media2/exoplayer/external/source/hls/f;

    .line 350
    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->d:Landroidx/media2/exoplayer/external/source/g;

    .line 351
    iput-object p5, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->e:Landroidx/media2/exoplayer/external/drm/k;

    .line 352
    iput-object p6, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->f:Landroidx/media2/exoplayer/external/upstream/t;

    .line 353
    iput-object p7, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->i:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    .line 354
    iput-boolean p8, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->g:Z

    .line 355
    iput-boolean p9, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->h:Z

    .line 356
    iput-object p10, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->j:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/source/hls/e;Landroidx/media2/exoplayer/external/source/hls/f;Landroidx/media2/exoplayer/external/source/g;Landroidx/media2/exoplayer/external/drm/k;Landroidx/media2/exoplayer/external/upstream/t;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;ZZLjava/lang/Object;Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$1;)V
    .locals 0

    .line 61
    invoke-direct/range {p0 .. p10}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/source/hls/e;Landroidx/media2/exoplayer/external/source/hls/f;Landroidx/media2/exoplayer/external/source/g;Landroidx/media2/exoplayer/external/drm/k;Landroidx/media2/exoplayer/external/upstream/t;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;ZZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/upstream/b;J)Landroidx/media2/exoplayer/external/source/s;
    .locals 14

    move-object v0, p0

    .line 379
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->a(Landroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/source/u$a;

    move-result-object v8

    .line 380
    new-instance v13, Landroidx/media2/exoplayer/external/source/hls/i;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->a:Landroidx/media2/exoplayer/external/source/hls/f;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->i:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->c:Landroidx/media2/exoplayer/external/source/hls/e;

    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->k:Landroidx/media2/exoplayer/external/upstream/w;

    iget-object v6, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->e:Landroidx/media2/exoplayer/external/drm/k;

    iget-object v7, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->f:Landroidx/media2/exoplayer/external/upstream/t;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->d:Landroidx/media2/exoplayer/external/source/g;

    iget-boolean v11, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->g:Z

    iget-boolean v12, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->h:Z

    move-object v1, v13

    move-object/from16 v9, p2

    invoke-direct/range {v1 .. v12}, Landroidx/media2/exoplayer/external/source/hls/i;-><init>(Landroidx/media2/exoplayer/external/source/hls/f;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;Landroidx/media2/exoplayer/external/source/hls/e;Landroidx/media2/exoplayer/external/upstream/w;Landroidx/media2/exoplayer/external/drm/k;Landroidx/media2/exoplayer/external/upstream/t;Landroidx/media2/exoplayer/external/source/u$a;Landroidx/media2/exoplayer/external/upstream/b;Landroidx/media2/exoplayer/external/source/g;ZZ)V

    return-object v13
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/hls/playlist/f;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 407
    iget-boolean v2, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->j:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_0

    iget-wide v5, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->c:J

    invoke-static {v5, v6}, Landroidx/media2/exoplayer/external/c;->a(J)J

    move-result-wide v5

    move-wide v10, v5

    goto :goto_0

    :cond_0
    move-wide v10, v3

    .line 413
    :goto_0
    iget v2, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->a:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v5, :cond_2

    iget v2, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->a:I

    if-ne v2, v6, :cond_1

    goto :goto_1

    :cond_1
    move-wide v8, v3

    goto :goto_2

    :cond_2
    :goto_1
    move-wide v8, v10

    .line 416
    :goto_2
    iget-wide v12, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->b:J

    .line 417
    new-instance v2, Landroidx/media2/exoplayer/external/source/hls/g;

    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->i:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v5}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->b()Landroidx/media2/exoplayer/external/source/hls/playlist/e;

    move-result-object v5

    invoke-direct {v2, v5, v1}, Landroidx/media2/exoplayer/external/source/hls/g;-><init>(Landroidx/media2/exoplayer/external/source/hls/playlist/e;Landroidx/media2/exoplayer/external/source/hls/playlist/f;)V

    .line 418
    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->i:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v5}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->e()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 419
    iget-wide v14, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->c:J

    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->i:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    .line 420
    invoke-interface {v5}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->c()J

    move-result-wide v18

    sub-long v18, v14, v18

    .line 422
    iget-boolean v5, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->i:Z

    if-eqz v5, :cond_3

    iget-wide v14, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->m:J

    add-long v14, v18, v14

    goto :goto_3

    :cond_3
    move-wide v14, v3

    .line 423
    :goto_3
    iget-object v5, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->l:Ljava/util/List;

    cmp-long v7, v12, v3

    if-nez v7, :cond_5

    .line 425
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    const-wide/16 v16, 0x0

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    .line 426
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;

    iget-wide v3, v3, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->f:J

    move-wide/from16 v16, v3

    :goto_4
    move-wide/from16 v3, v16

    goto :goto_5

    :cond_5
    move-wide v3, v12

    .line 428
    :goto_5
    new-instance v5, Landroidx/media2/exoplayer/external/source/ao;

    iget-wide v12, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->m:J

    const/16 v20, 0x1

    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->i:Z

    xor-int/lit8 v21, v1, 0x1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->j:Ljava/lang/Object;

    move-object/from16 v23, v1

    move-object v7, v5

    move-wide/from16 v16, v12

    move-wide v12, v14

    move-wide/from16 v14, v16

    move-wide/from16 v16, v18

    move-wide/from16 v18, v3

    move-object/from16 v22, v2

    invoke-direct/range {v7 .. v23}, Landroidx/media2/exoplayer/external/source/ao;-><init>(JJJJJJZZLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    :cond_6
    cmp-long v5, v12, v3

    if-nez v5, :cond_7

    const-wide/16 v18, 0x0

    goto :goto_6

    :cond_7
    move-wide/from16 v18, v12

    .line 444
    :goto_6
    new-instance v5, Landroidx/media2/exoplayer/external/source/ao;

    move-object v7, v5

    iget-wide v12, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->m:J

    iget-wide v14, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->m:J

    const-wide/16 v16, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->j:Ljava/lang/Object;

    move-object/from16 v23, v1

    move-object/from16 v22, v2

    invoke-direct/range {v7 .. v23}, Landroidx/media2/exoplayer/external/source/ao;-><init>(JJJJJJZZLjava/lang/Object;Ljava/lang/Object;)V

    .line 457
    :goto_7
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->a(Landroidx/media2/exoplayer/external/al;)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/s;)V
    .locals 10

    .line 396
    check-cast p1, Landroidx/media2/exoplayer/external/source/hls/i;

    .line 1149
    iget-object v0, p1, Landroidx/media2/exoplayer/external/source/hls/i;->a:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->b(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$b;)V

    .line 1150
    iget-object v0, p1, Landroidx/media2/exoplayer/external/source/hls/i;->d:[Landroidx/media2/exoplayer/external/source/hls/k;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 1458
    iget-boolean v6, v5, Landroidx/media2/exoplayer/external/source/hls/k;->m:Z

    if-eqz v6, :cond_1

    .line 1461
    iget-object v6, v5, Landroidx/media2/exoplayer/external/source/hls/k;->i:[Landroidx/media2/exoplayer/external/source/ak;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    aget-object v9, v6, v8

    .line 1462
    invoke-virtual {v9}, Landroidx/media2/exoplayer/external/source/ak;->c()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1464
    :cond_0
    iget-object v6, v5, Landroidx/media2/exoplayer/external/source/hls/k;->j:[Landroidx/media2/exoplayer/external/source/j;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    .line 1465
    invoke-virtual {v9}, Landroidx/media2/exoplayer/external/source/j;->a()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1468
    :cond_1
    iget-object v6, v5, Landroidx/media2/exoplayer/external/source/hls/k;->c:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v6, v5}, Landroidx/media2/exoplayer/external/upstream/Loader;->a(Landroidx/media2/exoplayer/external/upstream/Loader$e;)V

    .line 1469
    iget-object v6, v5, Landroidx/media2/exoplayer/external/source/hls/k;->g:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v4, 0x1

    .line 1470
    iput-boolean v4, v5, Landroidx/media2/exoplayer/external/source/hls/k;->q:Z

    .line 1471
    iget-object v4, v5, Landroidx/media2/exoplayer/external/source/hls/k;->h:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1153
    :cond_2
    iput-object v4, p1, Landroidx/media2/exoplayer/external/source/hls/i;->c:Landroidx/media2/exoplayer/external/source/s$a;

    .line 1154
    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/hls/i;->b:Landroidx/media2/exoplayer/external/source/u$a;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/u$a;->b()V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/upstream/w;)V
    .locals 2

    .line 367
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->k:Landroidx/media2/exoplayer/external/upstream/w;

    const/4 p1, 0x0

    .line 368
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->a(Landroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/source/u$a;

    move-result-object p1

    .line 369
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->i:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->b:Landroid/net/Uri;

    invoke-interface {v0, v1, p1, p0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->a(Landroid/net/Uri;Landroidx/media2/exoplayer/external/source/u$a;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$c;)V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 401
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->i:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->a()V

    return-void
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    .line 362
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public final f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->i:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;->d()V

    return-void
.end method
