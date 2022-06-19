.class final Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/Loader$a;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/hls/playlist/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/exoplayer/external/upstream/Loader$a<",
        "Landroidx/media2/exoplayer/external/upstream/u<",
        "Landroidx/media2/exoplayer/external/source/hls/playlist/g;",
        ">;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final a:Landroidx/media2/exoplayer/external/upstream/Loader;

.field b:Landroidx/media2/exoplayer/external/source/hls/playlist/f;

.field c:J

.field final synthetic d:Landroidx/media2/exoplayer/external/source/hls/playlist/b;

.field private final e:Landroid/net/Uri;

.field private final f:Landroidx/media2/exoplayer/external/upstream/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/upstream/u<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/g;",
            ">;"
        }
    .end annotation
.end field

.field private g:J

.field private h:J

.field private i:J

.field private j:Z

.field private k:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/hls/playlist/b;Landroid/net/Uri;)V
    .locals 3

    .line 468
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->d:Landroidx/media2/exoplayer/external/source/hls/playlist/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->e:Landroid/net/Uri;

    .line 470
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/Loader;

    const-string v1, "DefaultHlsPlaylistTracker:MediaPlaylist"

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->a:Landroidx/media2/exoplayer/external/upstream/Loader;

    .line 471
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/u;

    .line 473
    invoke-static {p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->a(Landroidx/media2/exoplayer/external/source/hls/playlist/b;)Landroidx/media2/exoplayer/external/source/hls/e;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/source/hls/e;->a()Landroidx/media2/exoplayer/external/upstream/f;

    move-result-object v1

    .line 476
    invoke-static {p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->b(Landroidx/media2/exoplayer/external/source/hls/playlist/b;)Landroidx/media2/exoplayer/external/upstream/u$a;

    move-result-object p1

    const/4 v2, 0x4

    invoke-direct {v0, v1, p2, v2, p1}, Landroidx/media2/exoplayer/external/upstream/u;-><init>(Landroidx/media2/exoplayer/external/upstream/f;Landroid/net/Uri;ILandroidx/media2/exoplayer/external/upstream/u$a;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->f:Landroidx/media2/exoplayer/external/upstream/u;

    return-void
.end method

.method static synthetic a(Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;)J
    .locals 2

    .line 453
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->i:J

    return-wide v0
.end method

.method static synthetic a(Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;Landroidx/media2/exoplayer/external/source/hls/playlist/f;J)V
    .locals 0

    .line 453
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->a(Landroidx/media2/exoplayer/external/source/hls/playlist/f;)V

    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/source/hls/playlist/f;)V
    .locals 11

    .line 628
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->b:Landroidx/media2/exoplayer/external/source/hls/playlist/f;

    .line 629
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 630
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->c:J

    .line 631
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->d:Landroidx/media2/exoplayer/external/source/hls/playlist/b;

    invoke-static {v3, v0, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->a(Landroidx/media2/exoplayer/external/source/hls/playlist/b;Landroidx/media2/exoplayer/external/source/hls/playlist/f;Landroidx/media2/exoplayer/external/source/hls/playlist/f;)Landroidx/media2/exoplayer/external/source/hls/playlist/f;

    move-result-object v3

    iput-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->b:Landroidx/media2/exoplayer/external/source/hls/playlist/f;

    if-eq v3, v0, :cond_0

    const/4 p1, 0x0

    .line 633
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->k:Ljava/io/IOException;

    .line 634
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->g:J

    .line 635
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->d:Landroidx/media2/exoplayer/external/source/hls/playlist/b;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->e:Landroid/net/Uri;

    invoke-static {p1, v4, v3}, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->a(Landroidx/media2/exoplayer/external/source/hls/playlist/b;Landroid/net/Uri;Landroidx/media2/exoplayer/external/source/hls/playlist/f;)V

    goto :goto_0

    .line 636
    :cond_0
    iget-boolean v3, v3, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->i:Z

    if-nez v3, :cond_2

    .line 637
    iget-wide v3, p1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->f:J

    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-long v5, p1

    add-long/2addr v3, v5

    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->b:Landroidx/media2/exoplayer/external/source/hls/playlist/f;

    iget-wide v5, p1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->f:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v3, v5

    if-gez p1, :cond_1

    .line 642
    new-instance p1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PlaylistResetException;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->e:Landroid/net/Uri;

    invoke-direct {p1, v3}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PlaylistResetException;-><init>(Landroid/net/Uri;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->k:Ljava/io/IOException;

    .line 643
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->d:Landroidx/media2/exoplayer/external/source/hls/playlist/b;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->e:Landroid/net/Uri;

    invoke-static {p1, v3, v7, v8}, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->a(Landroidx/media2/exoplayer/external/source/hls/playlist/b;Landroid/net/Uri;J)Z

    goto :goto_0

    .line 644
    :cond_1
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->g:J

    sub-long v3, v1, v3

    long-to-double v3, v3

    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->b:Landroidx/media2/exoplayer/external/source/hls/playlist/f;

    iget-wide v5, p1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->h:J

    .line 645
    invoke-static {v5, v6}, Landroidx/media2/exoplayer/external/c;->a(J)J

    move-result-wide v5

    long-to-double v5, v5

    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->d:Landroidx/media2/exoplayer/external/source/hls/playlist/b;

    .line 646
    invoke-static {p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->f(Landroidx/media2/exoplayer/external/source/hls/playlist/b;)D

    move-result-wide v9

    mul-double v5, v5, v9

    cmpl-double p1, v3, v5

    if-lez p1, :cond_2

    .line 648
    new-instance p1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PlaylistStuckException;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->e:Landroid/net/Uri;

    invoke-direct {p1, v3}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$PlaylistStuckException;-><init>(Landroid/net/Uri;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->k:Ljava/io/IOException;

    .line 649
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->d:Landroidx/media2/exoplayer/external/source/hls/playlist/b;

    .line 650
    invoke-static {p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->e(Landroidx/media2/exoplayer/external/source/hls/playlist/b;)Landroidx/media2/exoplayer/external/upstream/t;

    move-result-object p1

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->k:Ljava/io/IOException;

    invoke-interface {p1, v3}, Landroidx/media2/exoplayer/external/upstream/t;->a(Ljava/io/IOException;)J

    move-result-wide v3

    .line 652
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->d:Landroidx/media2/exoplayer/external/source/hls/playlist/b;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->e:Landroid/net/Uri;

    invoke-static {p1, v5, v3, v4}, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->a(Landroidx/media2/exoplayer/external/source/hls/playlist/b;Landroid/net/Uri;J)Z

    cmp-long p1, v3, v7

    if-eqz p1, :cond_2

    .line 654
    invoke-direct {p0, v3, v4}, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->a(J)Z

    .line 663
    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->b:Landroidx/media2/exoplayer/external/source/hls/playlist/f;

    if-eq p1, v0, :cond_3

    .line 664
    iget-wide v3, p1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->h:J

    goto :goto_1

    .line 665
    :cond_3
    iget-wide v3, p1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->h:J

    const-wide/16 v5, 0x2

    div-long/2addr v3, v5

    .line 662
    :goto_1
    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/c;->a(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->h:J

    .line 669
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->e:Landroid/net/Uri;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->d:Landroidx/media2/exoplayer/external/source/hls/playlist/b;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->g(Landroidx/media2/exoplayer/external/source/hls/playlist/b;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->b:Landroidx/media2/exoplayer/external/source/hls/playlist/f;

    iget-boolean p1, p1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->i:Z

    if-nez p1, :cond_4

    .line 670
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->a()V

    :cond_4
    return-void
.end method

.method private a(J)Z
    .locals 2

    .line 682
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->i:J

    .line 683
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->e:Landroid/net/Uri;

    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->d:Landroidx/media2/exoplayer/external/source/hls/playlist/b;

    invoke-static {p2}, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->g(Landroidx/media2/exoplayer/external/source/hls/playlist/b;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->d:Landroidx/media2/exoplayer/external/source/hls/playlist/b;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->h(Landroidx/media2/exoplayer/external/source/hls/playlist/b;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;)Landroid/net/Uri;
    .locals 0

    .line 453
    iget-object p0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->e:Landroid/net/Uri;

    return-object p0
.end method

.method private c()V
    .locals 5

    .line 616
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->a:Landroidx/media2/exoplayer/external/upstream/Loader;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->f:Landroidx/media2/exoplayer/external/upstream/u;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->d:Landroidx/media2/exoplayer/external/source/hls/playlist/b;

    .line 620
    invoke-static {v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->e(Landroidx/media2/exoplayer/external/source/hls/playlist/b;)Landroidx/media2/exoplayer/external/upstream/t;

    move-result-object v2

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->f:Landroidx/media2/exoplayer/external/upstream/u;

    iget v3, v3, Landroidx/media2/exoplayer/external/upstream/u;->b:I

    invoke-interface {v2, v3}, Landroidx/media2/exoplayer/external/upstream/t;->a(I)I

    move-result v2

    .line 617
    invoke-virtual {v0, v1, p0, v2}, Landroidx/media2/exoplayer/external/upstream/Loader;->a(Landroidx/media2/exoplayer/external/upstream/Loader$d;Landroidx/media2/exoplayer/external/upstream/Loader$a;I)J

    move-result-wide v0

    .line 621
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->d:Landroidx/media2/exoplayer/external/source/hls/playlist/b;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->d(Landroidx/media2/exoplayer/external/source/hls/playlist/b;)Landroidx/media2/exoplayer/external/source/u$a;

    move-result-object v2

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->f:Landroidx/media2/exoplayer/external/upstream/u;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/upstream/u;->a:Landroidx/media2/exoplayer/external/upstream/h;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->f:Landroidx/media2/exoplayer/external/upstream/u;

    iget v4, v4, Landroidx/media2/exoplayer/external/upstream/u;->b:I

    invoke-virtual {v2, v3, v4, v0, v1}, Landroidx/media2/exoplayer/external/source/u$a;->a(Landroidx/media2/exoplayer/external/upstream/h;IJ)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroidx/media2/exoplayer/external/upstream/Loader$d;JJLjava/io/IOException;I)Landroidx/media2/exoplayer/external/upstream/Loader$b;
    .locals 15

    move-object v0, p0

    move-object/from16 v12, p6

    .line 453
    move-object/from16 v1, p1

    check-cast v1, Landroidx/media2/exoplayer/external/upstream/u;

    .line 1568
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->d:Landroidx/media2/exoplayer/external/source/hls/playlist/b;

    .line 1569
    invoke-static {v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->e(Landroidx/media2/exoplayer/external/source/hls/playlist/b;)Landroidx/media2/exoplayer/external/upstream/t;

    move-result-object v2

    invoke-interface {v2, v12}, Landroidx/media2/exoplayer/external/upstream/t;->a(Ljava/io/IOException;)J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmp-long v8, v2, v4

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 1573
    :goto_0
    iget-object v9, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->d:Landroidx/media2/exoplayer/external/source/hls/playlist/b;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->e:Landroid/net/Uri;

    .line 1574
    invoke-static {v9, v10, v2, v3}, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->a(Landroidx/media2/exoplayer/external/source/hls/playlist/b;Landroid/net/Uri;J)Z

    move-result v9

    if-nez v9, :cond_2

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v9, 0x1

    :goto_2
    if-eqz v8, :cond_3

    .line 1576
    invoke-direct {p0, v2, v3}, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->a(J)Z

    move-result v2

    or-int/2addr v9, v2

    :cond_3
    if-eqz v9, :cond_5

    .line 1580
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->d:Landroidx/media2/exoplayer/external/source/hls/playlist/b;

    .line 1581
    invoke-static {v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->e(Landroidx/media2/exoplayer/external/source/hls/playlist/b;)Landroidx/media2/exoplayer/external/upstream/t;

    move-result-object v2

    move/from16 v3, p7

    invoke-interface {v2, v12, v3}, Landroidx/media2/exoplayer/external/upstream/t;->a(Ljava/io/IOException;I)J

    move-result-wide v2

    cmp-long v8, v2, v4

    if-eqz v8, :cond_4

    .line 1585
    invoke-static {v7, v2, v3}, Landroidx/media2/exoplayer/external/upstream/Loader;->a(ZJ)Landroidx/media2/exoplayer/external/upstream/Loader$b;

    move-result-object v2

    goto :goto_3

    .line 1586
    :cond_4
    sget-object v2, Landroidx/media2/exoplayer/external/upstream/Loader;->d:Landroidx/media2/exoplayer/external/upstream/Loader$b;

    goto :goto_3

    .line 1588
    :cond_5
    sget-object v2, Landroidx/media2/exoplayer/external/upstream/Loader;->c:Landroidx/media2/exoplayer/external/upstream/Loader$b;

    :goto_3
    move-object v14, v2

    .line 1591
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->d:Landroidx/media2/exoplayer/external/source/hls/playlist/b;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->d(Landroidx/media2/exoplayer/external/source/hls/playlist/b;)Landroidx/media2/exoplayer/external/source/u$a;

    move-result-object v2

    iget-object v3, v1, Landroidx/media2/exoplayer/external/upstream/u;->a:Landroidx/media2/exoplayer/external/upstream/h;

    .line 2154
    iget-object v4, v1, Landroidx/media2/exoplayer/external/upstream/u;->c:Landroidx/media2/exoplayer/external/upstream/v;

    .line 3071
    iget-object v4, v4, Landroidx/media2/exoplayer/external/upstream/v;->b:Landroid/net/Uri;

    .line 3162
    iget-object v5, v1, Landroidx/media2/exoplayer/external/upstream/u;->c:Landroidx/media2/exoplayer/external/upstream/v;

    .line 4076
    iget-object v5, v5, Landroidx/media2/exoplayer/external/upstream/v;->c:Ljava/util/Map;

    const/4 v7, 0x4

    .line 4146
    iget-object v1, v1, Landroidx/media2/exoplayer/external/upstream/u;->c:Landroidx/media2/exoplayer/external/upstream/v;

    .line 5063
    iget-wide v10, v1, Landroidx/media2/exoplayer/external/upstream/v;->a:J

    .line 1600
    invoke-virtual {v14}, Landroidx/media2/exoplayer/external/upstream/Loader$b;->a()Z

    move-result v1

    xor-int/lit8 v13, v1, 0x1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v7

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v12, p6

    .line 1591
    invoke-virtual/range {v1 .. v13}, Landroidx/media2/exoplayer/external/source/u$a;->a(Landroidx/media2/exoplayer/external/upstream/h;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    return-object v14
.end method

.method public final a()V
    .locals 5

    const-wide/16 v0, 0x0

    .line 501
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->i:J

    .line 502
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->j:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->a:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 506
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 507
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->h:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const/4 v2, 0x1

    .line 508
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->j:Z

    .line 509
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->d:Landroidx/media2/exoplayer/external/source/hls/playlist/b;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->c(Landroidx/media2/exoplayer/external/source/hls/playlist/b;)Landroid/os/Handler;

    move-result-object v2

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->h:J

    sub-long/2addr v3, v0

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 511
    :cond_1
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->c()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final synthetic a(Landroidx/media2/exoplayer/external/upstream/Loader$d;JJ)V
    .locals 13

    move-object v0, p0

    .line 453
    move-object v1, p1

    check-cast v1, Landroidx/media2/exoplayer/external/upstream/u;

    .line 10137
    iget-object v2, v1, Landroidx/media2/exoplayer/external/upstream/u;->d:Ljava/lang/Object;

    .line 9527
    check-cast v2, Landroidx/media2/exoplayer/external/source/hls/playlist/g;

    .line 9528
    instance-of v3, v2, Landroidx/media2/exoplayer/external/source/hls/playlist/f;

    if-eqz v3, :cond_0

    .line 9529
    check-cast v2, Landroidx/media2/exoplayer/external/source/hls/playlist/f;

    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->a(Landroidx/media2/exoplayer/external/source/hls/playlist/f;)V

    .line 9530
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->d:Landroidx/media2/exoplayer/external/source/hls/playlist/b;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->d(Landroidx/media2/exoplayer/external/source/hls/playlist/b;)Landroidx/media2/exoplayer/external/source/u$a;

    move-result-object v3

    iget-object v4, v1, Landroidx/media2/exoplayer/external/upstream/u;->a:Landroidx/media2/exoplayer/external/upstream/h;

    .line 10154
    iget-object v2, v1, Landroidx/media2/exoplayer/external/upstream/u;->c:Landroidx/media2/exoplayer/external/upstream/v;

    .line 11071
    iget-object v5, v2, Landroidx/media2/exoplayer/external/upstream/v;->b:Landroid/net/Uri;

    .line 11162
    iget-object v2, v1, Landroidx/media2/exoplayer/external/upstream/u;->c:Landroidx/media2/exoplayer/external/upstream/v;

    .line 12076
    iget-object v6, v2, Landroidx/media2/exoplayer/external/upstream/v;->c:Ljava/util/Map;

    .line 12146
    iget-object v1, v1, Landroidx/media2/exoplayer/external/upstream/u;->c:Landroidx/media2/exoplayer/external/upstream/v;

    .line 13063
    iget-wide v11, v1, Landroidx/media2/exoplayer/external/upstream/v;->a:J

    move-wide v7, p2

    move-wide/from16 v9, p4

    .line 9530
    invoke-virtual/range {v3 .. v12}, Landroidx/media2/exoplayer/external/source/u$a;->a(Landroidx/media2/exoplayer/external/upstream/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    return-void

    .line 9539
    :cond_0
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "Loaded playlist has unexpected type."

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->k:Ljava/io/IOException;

    return-void
.end method

.method public final synthetic a(Landroidx/media2/exoplayer/external/upstream/Loader$d;JJZ)V
    .locals 13

    .line 453
    move-object v0, p1

    check-cast v0, Landroidx/media2/exoplayer/external/upstream/u;

    move-object v1, p0

    .line 5549
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->d:Landroidx/media2/exoplayer/external/source/hls/playlist/b;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->d(Landroidx/media2/exoplayer/external/source/hls/playlist/b;)Landroidx/media2/exoplayer/external/source/u$a;

    move-result-object v3

    iget-object v4, v0, Landroidx/media2/exoplayer/external/upstream/u;->a:Landroidx/media2/exoplayer/external/upstream/h;

    .line 6154
    iget-object v2, v0, Landroidx/media2/exoplayer/external/upstream/u;->c:Landroidx/media2/exoplayer/external/upstream/v;

    .line 7071
    iget-object v5, v2, Landroidx/media2/exoplayer/external/upstream/v;->b:Landroid/net/Uri;

    .line 7162
    iget-object v2, v0, Landroidx/media2/exoplayer/external/upstream/u;->c:Landroidx/media2/exoplayer/external/upstream/v;

    .line 8076
    iget-object v6, v2, Landroidx/media2/exoplayer/external/upstream/v;->c:Ljava/util/Map;

    .line 8146
    iget-object v0, v0, Landroidx/media2/exoplayer/external/upstream/u;->c:Landroidx/media2/exoplayer/external/upstream/v;

    .line 9063
    iget-wide v11, v0, Landroidx/media2/exoplayer/external/upstream/v;->a:J

    move-wide v7, p2

    move-wide/from16 v9, p4

    .line 5549
    invoke-virtual/range {v3 .. v12}, Landroidx/media2/exoplayer/external/source/u$a;->b(Landroidx/media2/exoplayer/external/upstream/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    return-void
.end method

.method public final b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 516
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->a:Landroidx/media2/exoplayer/external/upstream/Loader;

    const/high16 v1, -0x80000000

    .line 1289
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader;->a(I)V

    .line 517
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->k:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    .line 518
    :cond_0
    throw v0
.end method

.method public final run()V
    .locals 1

    const/4 v0, 0x0

    .line 609
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->j:Z

    .line 610
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/playlist/b$a;->c()V

    return-void
.end method
