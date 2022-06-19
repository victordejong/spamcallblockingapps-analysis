.class public final Landroidx/media2/exoplayer/external/source/hls/playlist/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;
.implements Landroidx/media2/exoplayer/external/upstream/Loader$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;",
        "Landroidx/media2/exoplayer/external/upstream/Loader$a<",
        "Landroidx/media2/exoplayer/external/upstream/u<",
        "Landroidx/media2/exoplayer/external/source/hls/playlist/g;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final a:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$a;


# instance fields
.field private final b:Landroidx/media2/exoplayer/external/source/hls/e;

.field private final c:Landroidx/media2/exoplayer/external/source/hls/playlist/i;

.field private final d:Landroidx/media2/exoplayer/external/upstream/t;

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$b;",
            ">;"
        }
    .end annotation
.end field

.field private final g:D

.field private h:Landroidx/media2/exoplayer/external/upstream/u$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/upstream/u$a<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/g;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroidx/media2/exoplayer/external/source/u$a;

.field private j:Landroidx/media2/exoplayer/external/upstream/Loader;

.field private k:Landroid/os/Handler;

.field private l:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$c;

.field private m:Landroidx/media2/exoplayer/external/source/hls/playlist/e;

.field private n:Landroid/net/Uri;

.field private o:Landroidx/media2/exoplayer/external/source/hls/playlist/f;

.field private p:Z

.field private q:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    sget-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/c;->a:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$a;

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->a:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$a;

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/source/hls/e;Landroidx/media2/exoplayer/external/upstream/t;Landroidx/media2/exoplayer/external/source/hls/playlist/i;)V
    .locals 6

    const-wide/high16 v4, 0x400c000000000000L    # 3.5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 89
    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/source/hls/playlist/b;-><init>(Landroidx/media2/exoplayer/external/source/hls/e;Landroidx/media2/exoplayer/external/upstream/t;Landroidx/media2/exoplayer/external/source/hls/playlist/i;D)V

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/source/hls/e;Landroidx/media2/exoplayer/external/upstream/t;Landroidx/media2/exoplayer/external/source/hls/playlist/i;D)V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->b:Landroidx/media2/exoplayer/external/source/hls/e;

    .line 113
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->c:Landroidx/media2/exoplayer/external/source/hls/playlist/i;

    .line 114
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->d:Landroidx/media2/exoplayer/external/upstream/t;

    .line 115
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->g:D

    .line 116
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->f:Ljava/util/List;

    .line 117
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->e:Ljava/util/HashMap;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 118
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->q:J

    return-void
.end method

.method static synthetic a(Landroidx/media2/exoplayer/external/source/hls/playlist/b;)Landroidx/media2/exoplayer/external/source/hls/e;
    .locals 0

    .line 48
    iget-object p0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->b:Landroidx/media2/exoplayer/external/source/hls/e;

    return-object p0
.end method

.method private static a(Landroidx/media2/exoplayer/external/source/hls/playlist/f;Landroidx/media2/exoplayer/external/source/hls/playlist/f;)Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;
    .locals 4

    .line 447
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->f:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->f:J

    sub-long/2addr v0, v2

    long-to-int p1, v0

    .line 448
    iget-object p0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->l:Ljava/util/List;

    .line 449
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Landroidx/media2/exoplayer/external/source/hls/playlist/b;Landroidx/media2/exoplayer/external/source/hls/playlist/f;Landroidx/media2/exoplayer/external/source/hls/playlist/f;)Landroidx/media2/exoplayer/external/source/hls/playlist/f;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 19309
    iget-wide v5, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->f:J

    iget-wide v7, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->f:J

    cmp-long v9, v5, v7

    if-lez v9, :cond_0

    goto :goto_0

    .line 19312
    :cond_0
    iget-wide v5, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->f:J

    iget-wide v7, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->f:J

    cmp-long v9, v5, v7

    if-ltz v9, :cond_1

    .line 19316
    iget-object v5, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->l:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 19317
    iget-object v6, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->l:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gt v5, v6, :cond_2

    if-ne v5, v6, :cond_1

    .line 19318
    iget-boolean v5, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->i:Z

    if-eqz v5, :cond_1

    iget-boolean v5, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->i:Z

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_0
    if-nez v3, :cond_5

    .line 18386
    iget-boolean v0, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->i:Z

    if-eqz v0, :cond_4

    .line 19362
    iget-boolean v0, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->i:Z

    if-eqz v0, :cond_3

    return-object v1

    .line 19365
    :cond_3
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/playlist/f;

    move-object v2, v0

    iget v3, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->a:I

    iget-object v4, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->n:Ljava/lang/String;

    iget-object v5, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->o:Ljava/util/List;

    iget-wide v6, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->b:J

    iget-wide v8, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->c:J

    iget-boolean v10, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->d:Z

    iget v11, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->e:I

    iget-wide v12, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->f:J

    iget v14, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->g:I

    move-object/from16 p0, v2

    move/from16 p2, v3

    iget-wide v2, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->h:J

    move-wide v15, v2

    iget-boolean v2, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->p:Z

    move/from16 v17, v2

    const/16 v18, 0x1

    iget-boolean v2, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->j:Z

    move/from16 v19, v2

    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->k:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-object/from16 v20, v2

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->l:Ljava/util/List;

    move-object/from16 v21, v1

    move-object/from16 v2, p0

    move/from16 v3, p2

    invoke-direct/range {v2 .. v21}, Landroidx/media2/exoplayer/external/source/hls/playlist/f;-><init>(ILjava/lang/String;Ljava/util/List;JJZIJIJZZZLandroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)V

    return-object v0

    :cond_4
    return-object v1

    .line 19403
    :cond_5
    iget-boolean v3, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->j:Z

    if-eqz v3, :cond_7

    .line 19404
    iget-wide v5, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->c:J

    :cond_6
    :goto_1
    move-wide v13, v5

    goto :goto_3

    .line 19407
    :cond_7
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->o:Landroidx/media2/exoplayer/external/source/hls/playlist/f;

    if-eqz v3, :cond_8

    iget-wide v5, v3, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->c:J

    goto :goto_2

    :cond_8
    const-wide/16 v5, 0x0

    :goto_2
    if-eqz v1, :cond_6

    .line 19411
    iget-object v3, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 19412
    invoke-static/range {p1 .. p2}, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->a(Landroidx/media2/exoplayer/external/source/hls/playlist/f;Landroidx/media2/exoplayer/external/source/hls/playlist/f;)Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 19414
    iget-wide v5, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->c:J

    iget-wide v7, v7, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->f:J

    add-long/2addr v5, v7

    goto :goto_1

    :cond_9
    int-to-long v7, v3

    .line 19415
    iget-wide v9, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->f:J

    iget-wide v11, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->f:J

    sub-long/2addr v9, v11

    cmp-long v3, v7, v9

    if-nez v3, :cond_6

    .line 19416
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->a()J

    move-result-wide v5

    goto :goto_1

    .line 19425
    :goto_3
    iget-boolean v3, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->d:Z

    if-eqz v3, :cond_b

    .line 19426
    iget v0, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->e:I

    :cond_a
    :goto_4
    move/from16 v16, v0

    goto :goto_6

    .line 19430
    :cond_b
    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->o:Landroidx/media2/exoplayer/external/source/hls/playlist/f;

    if-eqz v0, :cond_c

    .line 19431
    iget v0, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->e:I

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    :goto_5
    if-eqz v1, :cond_a

    .line 19436
    invoke-static/range {p1 .. p2}, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->a(Landroidx/media2/exoplayer/external/source/hls/playlist/f;Landroidx/media2/exoplayer/external/source/hls/playlist/f;)Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 19438
    iget v0, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->e:I

    iget v1, v3, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->e:I

    add-int/2addr v0, v1

    iget-object v1, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->l:Ljava/util/List;

    .line 19440
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;

    iget v1, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->e:I

    sub-int/2addr v0, v1

    goto :goto_4

    .line 20339
    :goto_6
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/playlist/f;

    move-object v7, v0

    iget v8, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->a:I

    iget-object v9, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->n:Ljava/lang/String;

    iget-object v10, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->o:Ljava/util/List;

    iget-wide v11, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->b:J

    const/4 v15, 0x1

    iget-wide v3, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->f:J

    move-wide/from16 v17, v3

    iget v1, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->g:I

    move/from16 v19, v1

    iget-wide v3, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->h:J

    move-wide/from16 v20, v3

    iget-boolean v1, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->p:Z

    move/from16 v22, v1

    iget-boolean v1, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->i:Z

    move/from16 v23, v1

    iget-boolean v1, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->j:Z

    move/from16 v24, v1

    iget-object v1, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->k:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-object/from16 v25, v1

    iget-object v1, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->l:Ljava/util/List;

    move-object/from16 v26, v1

    invoke-direct/range {v7 .. v26}, Landroidx/media2/exoplayer/external/source/hls/playlist/f;-><init>(ILjava/lang/String;Ljava/util/List;JJZIJIJZZZLandroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)V

    return-object v0
.end method

.method static synthetic a(Landroidx/media2/exoplayer/external/source/hls/playlist/b;Landroid/net/Uri;Landroidx/media2/exoplayer/external/source/hls/playlist/f;)V
    .locals 2

    .line 20359
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->n:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 20360
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->o:Landroidx/media2/exoplayer/external/source/hls/playlist/f;

    if-nez p1, :cond_0

    .line 20362
    iget-boolean p1, p2, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->i:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->p:Z

    .line 20363
    iget-wide v0, p2, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->c:J

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->q:J

    .line 20365
    :cond_0
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->o:Landroidx/media2/exoplayer/external/source/hls/playlist/f;

    .line 20366
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->l:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$c;

    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$c;->a(Landroidx/media2/exoplayer/external/source/hls/playlist/f;)V

    .line 20368
    :cond_1
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    .line 20370
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->f:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$b;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$b;->g()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic a(Landroidx/media2/exoplayer/external/source/hls/playlist/b;Landroid/net/Uri;J)Z
    .locals 4

    .line 18375
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 18378
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$b;

    invoke-interface {v3, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$b;->a(Landroid/net/Uri;J)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method static synthetic b(Landroidx/media2/exoplayer/external/source/hls/playlist/b;)Landroidx/media2/exoplayer/external/upstream/u$a;
    .locals 0

    .line 48
    iget-object p0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->h:Landroidx/media2/exoplayer/external/upstream/u$a;

    return-object p0
.end method

.method static synthetic c(Landroidx/media2/exoplayer/external/source/hls/playlist/b;)Landroid/os/Handler;
    .locals 0

    .line 48
    iget-object p0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->k:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d(Landroidx/media2/exoplayer/external/source/hls/playlist/b;)Landroidx/media2/exoplayer/external/source/u$a;
    .locals 0

    .line 48
    iget-object p0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->i:Landroidx/media2/exoplayer/external/source/u$a;

    return-object p0
.end method

.method static synthetic e(Landroidx/media2/exoplayer/external/source/hls/playlist/b;)Landroidx/media2/exoplayer/external/upstream/t;
    .locals 0

    .line 48
    iget-object p0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->d:Landroidx/media2/exoplayer/external/upstream/t;

    return-object p0
.end method

.method static synthetic f(Landroidx/media2/exoplayer/external/source/hls/playlist/b;)D
    .locals 2

    .line 48
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->g:D

    return-wide v0
.end method

.method static synthetic g(Landroidx/media2/exoplayer/external/source/hls/playlist/b;)Landroid/net/Uri;
    .locals 0

    .line 48
    iget-object p0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->n:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic h(Landroidx/media2/exoplayer/external/source/hls/playlist/b;)Z
    .locals 10

    .line 21306
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->m:Landroidx/media2/exoplayer/external/source/hls/playlist/e;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->c:Ljava/util/List;

    .line 21307
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 21308
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    .line 21310
    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->e:Ljava/util/HashMap;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;->a:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;

    .line 21311
    invoke-static {v6}, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->a(Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;)J

    move-result-wide v7

    cmp-long v9, v2, v7

    if-lez v9, :cond_0

    .line 21312
    invoke-static {v6}, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->b(Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->n:Landroid/net/Uri;

    .line 21313
    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->a()V

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Z)Landroidx/media2/exoplayer/external/source/hls/playlist/f;
    .locals 4

    .line 185
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;

    .line 2481
    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->b:Landroidx/media2/exoplayer/external/source/hls/playlist/f;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 3321
    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->n:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 3334
    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->m:Landroidx/media2/exoplayer/external/source/hls/playlist/e;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->c:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3335
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3336
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;->a:Landroid/net/Uri;

    invoke-virtual {p1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    .line 3322
    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->o:Landroidx/media2/exoplayer/external/source/hls/playlist/f;

    if-eqz p2, :cond_2

    iget-boolean p2, p2, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->i:Z

    if-eqz p2, :cond_2

    goto :goto_2

    .line 3328
    :cond_2
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->n:Landroid/net/Uri;

    .line 3329
    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->e:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->a()V

    :cond_3
    :goto_2
    return-object v0
.end method

.method public final bridge synthetic a(Landroidx/media2/exoplayer/external/upstream/Loader$d;JJLjava/io/IOException;I)Landroidx/media2/exoplayer/external/upstream/Loader$b;
    .locals 21

    move-object/from16 v0, p0

    .line 47
    move-object/from16 v1, p1

    check-cast v1, Landroidx/media2/exoplayer/external/upstream/u;

    .line 5284
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->d:Landroidx/media2/exoplayer/external/upstream/t;

    move-object/from16 v14, p6

    move/from16 v3, p7

    .line 5285
    invoke-interface {v2, v14, v3}, Landroidx/media2/exoplayer/external/upstream/t;->a(Ljava/io/IOException;I)J

    move-result-wide v12

    const/4 v2, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v12, v3

    if-nez v5, :cond_0

    const/4 v3, 0x1

    const/16 v16, 0x1

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    .line 5288
    :goto_0
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->i:Landroidx/media2/exoplayer/external/source/u$a;

    iget-object v4, v1, Landroidx/media2/exoplayer/external/upstream/u;->a:Landroidx/media2/exoplayer/external/upstream/h;

    .line 6154
    iget-object v5, v1, Landroidx/media2/exoplayer/external/upstream/u;->c:Landroidx/media2/exoplayer/external/upstream/v;

    .line 7071
    iget-object v5, v5, Landroidx/media2/exoplayer/external/upstream/v;->b:Landroid/net/Uri;

    .line 7162
    iget-object v6, v1, Landroidx/media2/exoplayer/external/upstream/u;->c:Landroidx/media2/exoplayer/external/upstream/v;

    .line 8076
    iget-object v6, v6, Landroidx/media2/exoplayer/external/upstream/v;->c:Ljava/util/Map;

    const/4 v7, 0x4

    .line 8146
    iget-object v1, v1, Landroidx/media2/exoplayer/external/upstream/u;->c:Landroidx/media2/exoplayer/external/upstream/v;

    .line 9063
    iget-wide v10, v1, Landroidx/media2/exoplayer/external/upstream/v;->a:J

    move-wide/from16 v8, p2

    move-wide/from16 v17, v10

    move-wide/from16 v10, p4

    move-wide/from16 v19, v12

    move-wide/from16 v12, v17

    move-object/from16 v14, p6

    move/from16 v15, v16

    .line 5288
    invoke-virtual/range {v3 .. v15}, Landroidx/media2/exoplayer/external/source/u$a;->a(Landroidx/media2/exoplayer/external/upstream/h;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    if-eqz v16, :cond_1

    .line 5299
    sget-object v1, Landroidx/media2/exoplayer/external/upstream/Loader;->d:Landroidx/media2/exoplayer/external/upstream/Loader$b;

    return-object v1

    :cond_1
    move-wide/from16 v3, v19

    .line 5300
    invoke-static {v2, v3, v4}, Landroidx/media2/exoplayer/external/upstream/Loader;->a(ZJ)Landroidx/media2/exoplayer/external/upstream/Loader$b;

    move-result-object v1

    return-object v1
.end method

.method public final a()V
    .locals 3

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->n:Landroid/net/Uri;

    .line 153
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->o:Landroidx/media2/exoplayer/external/source/hls/playlist/f;

    .line 154
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->m:Landroidx/media2/exoplayer/external/source/hls/playlist/e;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 155
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->q:J

    .line 156
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->j:Landroidx/media2/exoplayer/external/upstream/Loader;

    .line 1265
    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->a(Landroidx/media2/exoplayer/external/upstream/Loader$e;)V

    .line 157
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->j:Landroidx/media2/exoplayer/external/upstream/Loader;

    .line 158
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;

    .line 1497
    iget-object v2, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->a:Landroidx/media2/exoplayer/external/upstream/Loader;

    .line 2265
    invoke-virtual {v2, v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->a(Landroidx/media2/exoplayer/external/upstream/Loader$e;)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->k:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 162
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->k:Landroid/os/Handler;

    .line 163
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final a(Landroid/net/Uri;Landroidx/media2/exoplayer/external/source/u$a;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$c;)V
    .locals 3

    .line 128
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->k:Landroid/os/Handler;

    .line 129
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->i:Landroidx/media2/exoplayer/external/source/u$a;

    .line 130
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->l:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$c;

    .line 131
    new-instance p3, Landroidx/media2/exoplayer/external/upstream/u;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->b:Landroidx/media2/exoplayer/external/source/hls/e;

    .line 133
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/hls/e;->a()Landroidx/media2/exoplayer/external/upstream/f;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->c:Landroidx/media2/exoplayer/external/source/hls/playlist/i;

    .line 136
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/source/hls/playlist/i;->a()Landroidx/media2/exoplayer/external/upstream/u$a;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p3, v0, p1, v2, v1}, Landroidx/media2/exoplayer/external/upstream/u;-><init>(Landroidx/media2/exoplayer/external/upstream/f;Landroid/net/Uri;ILandroidx/media2/exoplayer/external/upstream/u$a;)V

    .line 137
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->j:Landroidx/media2/exoplayer/external/upstream/Loader;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 138
    new-instance p1, Landroidx/media2/exoplayer/external/upstream/Loader;

    const-string v0, "DefaultHlsPlaylistTracker:MasterPlaylist"

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->j:Landroidx/media2/exoplayer/external/upstream/Loader;

    .line 139
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->d:Landroidx/media2/exoplayer/external/upstream/t;

    iget v1, p3, Landroidx/media2/exoplayer/external/upstream/u;->b:I

    .line 143
    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/upstream/t;->a(I)I

    move-result v0

    .line 140
    invoke-virtual {p1, p3, p0, v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->a(Landroidx/media2/exoplayer/external/upstream/Loader$d;Landroidx/media2/exoplayer/external/upstream/Loader$a;I)J

    move-result-wide v0

    .line 144
    iget-object p1, p3, Landroidx/media2/exoplayer/external/upstream/u;->a:Landroidx/media2/exoplayer/external/upstream/h;

    iget p3, p3, Landroidx/media2/exoplayer/external/upstream/u;->b:I

    invoke-virtual {p2, p1, p3, v0, v1}, Landroidx/media2/exoplayer/external/source/u$a;->a(Landroidx/media2/exoplayer/external/upstream/h;IJ)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$b;)V
    .locals 1

    .line 168
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic a(Landroidx/media2/exoplayer/external/upstream/Loader$d;JJ)V
    .locals 15

    move-object v0, p0

    .line 47
    move-object/from16 v1, p1

    check-cast v1, Landroidx/media2/exoplayer/external/upstream/u;

    .line 14137
    iget-object v2, v1, Landroidx/media2/exoplayer/external/upstream/u;->d:Ljava/lang/Object;

    .line 13232
    check-cast v2, Landroidx/media2/exoplayer/external/source/hls/playlist/g;

    .line 13234
    instance-of v3, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/f;

    if-eqz v3, :cond_0

    .line 13236
    iget-object v4, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/g;->n:Ljava/lang/String;

    invoke-static {v4}, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->a(Ljava/lang/String;)Landroidx/media2/exoplayer/external/source/hls/playlist/e;

    move-result-object v4

    goto :goto_0

    .line 13238
    :cond_0
    move-object v4, v2

    check-cast v4, Landroidx/media2/exoplayer/external/source/hls/playlist/e;

    .line 13240
    :goto_0
    iput-object v4, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->m:Landroidx/media2/exoplayer/external/source/hls/playlist/e;

    .line 13241
    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->c:Landroidx/media2/exoplayer/external/source/hls/playlist/i;

    invoke-interface {v5, v4}, Landroidx/media2/exoplayer/external/source/hls/playlist/i;->a(Landroidx/media2/exoplayer/external/source/hls/playlist/e;)Landroidx/media2/exoplayer/external/upstream/u$a;

    move-result-object v5

    iput-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->h:Landroidx/media2/exoplayer/external/upstream/u$a;

    .line 13242
    iget-object v5, v4, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->c:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/source/hls/playlist/e$b;->a:Landroid/net/Uri;

    iput-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->n:Landroid/net/Uri;

    .line 13243
    iget-object v4, v4, Landroidx/media2/exoplayer/external/source/hls/playlist/e;->b:Ljava/util/List;

    .line 14344
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    :goto_1
    if-ge v6, v5, :cond_1

    .line 14346
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 14347
    new-instance v8, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;

    invoke-direct {v8, p0, v7}, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;-><init>(Landroidx/media2/exoplayer/external/source/hls/playlist/b;Landroid/net/Uri;)V

    .line 14348
    iget-object v9, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->e:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 13244
    :cond_1
    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->e:Ljava/util/HashMap;

    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->n:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;

    if-eqz v3, :cond_2

    .line 13247
    check-cast v2, Landroidx/media2/exoplayer/external/source/hls/playlist/f;

    move-wide/from16 v11, p4

    invoke-static {v4, v2, v11, v12}, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->a(Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;Landroidx/media2/exoplayer/external/source/hls/playlist/f;J)V

    goto :goto_2

    :cond_2
    move-wide/from16 v11, p4

    .line 13249
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->a()V

    .line 13251
    :goto_2
    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->i:Landroidx/media2/exoplayer/external/source/u$a;

    iget-object v6, v1, Landroidx/media2/exoplayer/external/upstream/u;->a:Landroidx/media2/exoplayer/external/upstream/h;

    .line 15154
    iget-object v2, v1, Landroidx/media2/exoplayer/external/upstream/u;->c:Landroidx/media2/exoplayer/external/upstream/v;

    .line 16071
    iget-object v7, v2, Landroidx/media2/exoplayer/external/upstream/v;->b:Landroid/net/Uri;

    .line 16162
    iget-object v2, v1, Landroidx/media2/exoplayer/external/upstream/u;->c:Landroidx/media2/exoplayer/external/upstream/v;

    .line 17076
    iget-object v8, v2, Landroidx/media2/exoplayer/external/upstream/v;->c:Ljava/util/Map;

    .line 17146
    iget-object v1, v1, Landroidx/media2/exoplayer/external/upstream/u;->c:Landroidx/media2/exoplayer/external/upstream/v;

    .line 18063
    iget-wide v13, v1, Landroidx/media2/exoplayer/external/upstream/v;->a:J

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    .line 13251
    invoke-virtual/range {v5 .. v14}, Landroidx/media2/exoplayer/external/source/u$a;->a(Landroidx/media2/exoplayer/external/upstream/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    return-void
.end method

.method public final synthetic a(Landroidx/media2/exoplayer/external/upstream/Loader$d;JJZ)V
    .locals 12

    .line 47
    move-object v0, p1

    check-cast v0, Landroidx/media2/exoplayer/external/upstream/u;

    move-object v1, p0

    .line 9267
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->i:Landroidx/media2/exoplayer/external/source/u$a;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/upstream/u;->a:Landroidx/media2/exoplayer/external/upstream/h;

    .line 10154
    iget-object v4, v0, Landroidx/media2/exoplayer/external/upstream/u;->c:Landroidx/media2/exoplayer/external/upstream/v;

    .line 11071
    iget-object v4, v4, Landroidx/media2/exoplayer/external/upstream/v;->b:Landroid/net/Uri;

    .line 11162
    iget-object v5, v0, Landroidx/media2/exoplayer/external/upstream/u;->c:Landroidx/media2/exoplayer/external/upstream/v;

    .line 12076
    iget-object v5, v5, Landroidx/media2/exoplayer/external/upstream/v;->c:Ljava/util/Map;

    .line 12146
    iget-object v0, v0, Landroidx/media2/exoplayer/external/upstream/u;->c:Landroidx/media2/exoplayer/external/upstream/v;

    .line 13063
    iget-wide v10, v0, Landroidx/media2/exoplayer/external/upstream/v;->a:J

    move-wide v6, p2

    move-wide/from16 v8, p4

    .line 9267
    invoke-virtual/range {v2 .. v11}, Landroidx/media2/exoplayer/external/source/u$a;->b(Landroidx/media2/exoplayer/external/upstream/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    return-void
.end method

.method public final a(Landroid/net/Uri;)Z
    .locals 8

    .line 199
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;

    .line 3485
    iget-object v0, p1, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->b:Landroidx/media2/exoplayer/external/source/hls/playlist/f;

    if-eqz v0, :cond_1

    .line 3488
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    .line 3489
    iget-object v4, p1, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->b:Landroidx/media2/exoplayer/external/source/hls/playlist/f;

    iget-wide v4, v4, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->m:J

    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/c;->a(J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 3490
    iget-object v4, p1, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->b:Landroidx/media2/exoplayer/external/source/hls/playlist/f;

    iget-boolean v4, v4, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->i:Z

    const/4 v5, 0x1

    if-nez v4, :cond_0

    iget-object v4, p1, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->b:Landroidx/media2/exoplayer/external/source/hls/playlist/f;

    iget v4, v4, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->a:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    iget-object v4, p1, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->b:Landroidx/media2/exoplayer/external/source/hls/playlist/f;

    iget v4, v4, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->a:I

    if-eq v4, v5, :cond_0

    iget-wide v6, p1, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->c:J

    add-long/2addr v6, v2

    cmp-long p1, v6, v0

    if-lez p1, :cond_1

    :cond_0
    return v5

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Landroidx/media2/exoplayer/external/source/hls/playlist/e;
    .locals 1

    .line 179
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->m:Landroidx/media2/exoplayer/external/source/hls/playlist/e;

    return-object v0
.end method

.method public final b(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->b()V

    return-void
.end method

.method public final b(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$b;)V
    .locals 1

    .line 173
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()J
    .locals 2

    .line 194
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->q:J

    return-wide v0
.end method

.method public final c(Landroid/net/Uri;)V
    .locals 1

    .line 219
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->a()V

    return-void
.end method

.method public final d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->j:Landroidx/media2/exoplayer/external/upstream/Loader;

    if-eqz v0, :cond_0

    const/high16 v1, -0x80000000

    .line 4289
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader;->a(I)V

    .line 207
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->n:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->b(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public final e()Z
    .locals 1

    .line 224
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->p:Z

    return v0
.end method
