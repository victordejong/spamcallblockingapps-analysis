.class public final Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;
.super Lcom/google/android/exoplayer2/source/l;
.source "HlsMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    }
.end annotation


# instance fields
.field private final f:Lcom/google/android/exoplayer2/source/hls/i;

.field private final g:Landroid/net/Uri;

.field private final h:Lcom/google/android/exoplayer2/source/hls/h;

.field private final i:Lcom/google/android/exoplayer2/source/p;

.field private final j:Lcom/google/android/exoplayer2/drm/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/k<",
            "*>;"
        }
    .end annotation
.end field

.field private final k:Lcom/google/android/exoplayer2/upstream/u;

.field private final l:Z

.field private final m:I

.field private final n:Z

.field private final o:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

.field private final p:Ljava/lang/Object;

.field private q:Lcom/google/android/exoplayer2/upstream/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.hls"

    .line 1
    invoke-static {v0}, Lcom/google/android/exoplayer2/e0;->a(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/hls/h;Lcom/google/android/exoplayer2/source/hls/i;Lcom/google/android/exoplayer2/source/p;Lcom/google/android/exoplayer2/drm/k;Lcom/google/android/exoplayer2/upstream/u;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;ZIZLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/source/hls/h;",
            "Lcom/google/android/exoplayer2/source/hls/i;",
            "Lcom/google/android/exoplayer2/source/p;",
            "Lcom/google/android/exoplayer2/drm/k<",
            "*>;",
            "Lcom/google/android/exoplayer2/upstream/u;",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;",
            "ZIZ",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/l;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->g:Landroid/net/Uri;

    .line 4
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->h:Lcom/google/android/exoplayer2/source/hls/h;

    .line 5
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->f:Lcom/google/android/exoplayer2/source/hls/i;

    .line 6
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->i:Lcom/google/android/exoplayer2/source/p;

    .line 7
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->j:Lcom/google/android/exoplayer2/drm/k;

    .line 8
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->k:Lcom/google/android/exoplayer2/upstream/u;

    .line 9
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->o:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 10
    iput-boolean p8, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->l:Z

    .line 11
    iput p9, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->m:I

    .line 12
    iput-boolean p10, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->n:Z

    .line 13
    iput-object p11, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->p:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/hls/h;Lcom/google/android/exoplayer2/source/hls/i;Lcom/google/android/exoplayer2/source/p;Lcom/google/android/exoplayer2/drm/k;Lcom/google/android/exoplayer2/upstream/u;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;ZIZLjava/lang/Object;Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p11}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/hls/h;Lcom/google/android/exoplayer2/source/hls/i;Lcom/google/android/exoplayer2/source/p;Lcom/google/android/exoplayer2/drm/k;Lcom/google/android/exoplayer2/upstream/u;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;ZIZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/source/v$a;Lcom/google/android/exoplayer2/upstream/e;J)Lcom/google/android/exoplayer2/source/u;
    .locals 15

    move-object v0, p0

    .line 1
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/l;->m(Lcom/google/android/exoplayer2/source/v$a;)Lcom/google/android/exoplayer2/source/w$a;

    move-result-object v8

    .line 2
    new-instance v14, Lcom/google/android/exoplayer2/source/hls/l;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->f:Lcom/google/android/exoplayer2/source/hls/i;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->o:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->h:Lcom/google/android/exoplayer2/source/hls/h;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->q:Lcom/google/android/exoplayer2/upstream/x;

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->j:Lcom/google/android/exoplayer2/drm/k;

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->k:Lcom/google/android/exoplayer2/upstream/u;

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->i:Lcom/google/android/exoplayer2/source/p;

    iget-boolean v11, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->l:Z

    iget v12, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->m:I

    iget-boolean v13, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->n:Z

    move-object v1, v14

    move-object/from16 v9, p2

    invoke-direct/range {v1 .. v13}, Lcom/google/android/exoplayer2/source/hls/l;-><init>(Lcom/google/android/exoplayer2/source/hls/i;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lcom/google/android/exoplayer2/source/hls/h;Lcom/google/android/exoplayer2/upstream/x;Lcom/google/android/exoplayer2/drm/k;Lcom/google/android/exoplayer2/upstream/u;Lcom/google/android/exoplayer2/source/w$a;Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/source/p;ZIZ)V

    return-object v14
.end method

.method public c(Lcom/google/android/exoplayer2/source/hls/playlist/f;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/f;->m:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_0

    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/hls/playlist/f;->f:J

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/v;->b(J)J

    move-result-wide v5

    move-wide v10, v5

    goto :goto_0

    :cond_0
    move-wide v10, v3

    .line 2
    :goto_0
    iget v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/f;->d:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v5, :cond_2

    if-ne v2, v6, :cond_1

    goto :goto_1

    :cond_1
    move-wide v8, v3

    goto :goto_2

    :cond_2
    :goto_1
    move-wide v8, v10

    .line 3
    :goto_2
    iget-wide v12, v1, Lcom/google/android/exoplayer2/source/hls/playlist/f;->e:J

    .line 4
    new-instance v2, Lcom/google/android/exoplayer2/source/hls/j;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->o:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 5
    invoke-interface {v5}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->f()Lcom/google/android/exoplayer2/source/hls/playlist/e;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/hls/playlist/e;

    invoke-direct {v2, v5, v1}, Lcom/google/android/exoplayer2/source/hls/j;-><init>(Lcom/google/android/exoplayer2/source/hls/playlist/e;Lcom/google/android/exoplayer2/source/hls/playlist/f;)V

    .line 6
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->o:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->e()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 7
    iget-wide v14, v1, Lcom/google/android/exoplayer2/source/hls/playlist/f;->f:J

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->o:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 8
    invoke-interface {v5}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->d()J

    move-result-wide v18

    sub-long v18, v14, v18

    .line 9
    iget-boolean v5, v1, Lcom/google/android/exoplayer2/source/hls/playlist/f;->l:Z

    if-eqz v5, :cond_3

    iget-wide v14, v1, Lcom/google/android/exoplayer2/source/hls/playlist/f;->p:J

    add-long v14, v18, v14

    goto :goto_3

    :cond_3
    move-wide v14, v3

    .line 10
    :goto_3
    iget-object v5, v1, Lcom/google/android/exoplayer2/source/hls/playlist/f;->o:Ljava/util/List;

    cmp-long v7, v12, v3

    if-nez v7, :cond_6

    .line 11
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x0

    .line 12
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 13
    iget-wide v12, v1, Lcom/google/android/exoplayer2/source/hls/playlist/f;->p:J

    iget-wide v6, v1, Lcom/google/android/exoplayer2/source/hls/playlist/f;->k:J

    const-wide/16 v16, 0x2

    mul-long v6, v6, v16

    sub-long/2addr v12, v6

    :goto_4
    if-lez v3, :cond_4

    .line 14
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/hls/playlist/f$a;

    iget-wide v6, v4, Lcom/google/android/exoplayer2/source/hls/playlist/f$a;->i:J

    cmp-long v4, v6, v12

    if-lez v4, :cond_4

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 15
    :cond_4
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/hls/playlist/f$a;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/hls/playlist/f$a;->i:J

    goto :goto_5

    :cond_5
    const-wide/16 v3, 0x0

    goto :goto_5

    :cond_6
    move-wide v3, v12

    .line 16
    :goto_5
    new-instance v5, Lcom/google/android/exoplayer2/source/d0;

    iget-wide v12, v1, Lcom/google/android/exoplayer2/source/hls/playlist/f;->p:J

    const/4 v6, 0x1

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/hls/playlist/f;->l:Z

    const/4 v7, 0x1

    xor-int/lit8 v21, v1, 0x1

    const/16 v22, 0x1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->p:Ljava/lang/Object;

    move-object/from16 v24, v1

    move-object v7, v5

    move-wide/from16 v16, v12

    move-wide v12, v14

    move-wide/from16 v14, v16

    move-wide/from16 v16, v18

    move-wide/from16 v18, v3

    move/from16 v20, v6

    move-object/from16 v23, v2

    invoke-direct/range {v7 .. v24}, Lcom/google/android/exoplayer2/source/d0;-><init>(JJJJJJZZZLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    :cond_7
    cmp-long v5, v12, v3

    if-nez v5, :cond_8

    const-wide/16 v18, 0x0

    goto :goto_6

    :cond_8
    move-wide/from16 v18, v12

    .line 17
    :goto_6
    new-instance v5, Lcom/google/android/exoplayer2/source/d0;

    move-object v7, v5

    iget-wide v14, v1, Lcom/google/android/exoplayer2/source/hls/playlist/f;->p:J

    move-wide v12, v14

    const-wide/16 v16, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->p:Ljava/lang/Object;

    move-object/from16 v24, v1

    move-object/from16 v23, v2

    invoke-direct/range {v7 .. v24}, Lcom/google/android/exoplayer2/source/d0;-><init>(JJJJJJZZZLjava/lang/Object;Ljava/lang/Object;)V

    .line 18
    :goto_7
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/source/l;->r(Lcom/google/android/exoplayer2/y0;)V

    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->o:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->h()V

    return-void
.end method

.method public i(Lcom/google/android/exoplayer2/source/u;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/hls/l;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/hls/l;->B()V

    return-void
.end method

.method protected q(Lcom/google/android/exoplayer2/upstream/x;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->q:Lcom/google/android/exoplayer2/upstream/x;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->j:Lcom/google/android/exoplayer2/drm/k;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/k;->c()V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/l;->m(Lcom/google/android/exoplayer2/source/v$a;)Lcom/google/android/exoplayer2/source/w$a;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->o:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->g:Landroid/net/Uri;

    invoke-interface {v0, v1, p1, p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->g(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/w$a;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$c;)V

    return-void
.end method

.method protected s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->o:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->stop()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->j:Lcom/google/android/exoplayer2/drm/k;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/k;->b()V

    return-void
.end method
