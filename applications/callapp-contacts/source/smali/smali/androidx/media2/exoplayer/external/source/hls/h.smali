.class final Landroidx/media2/exoplayer/external/source/hls/h;
.super Landroidx/media2/exoplayer/external/source/a/d;
.source "SourceFile"


# static fields
.field private static final o:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final A:Landroidx/media2/exoplayer/external/util/p;

.field private final B:Z

.field private final C:Z

.field private D:Landroidx/media2/exoplayer/external/extractor/g;

.field private E:Z

.field private F:I

.field private G:Z

.field private volatile H:Z

.field public final j:I

.field public final k:I

.field public final l:Landroid/net/Uri;

.field m:Landroidx/media2/exoplayer/external/source/hls/k;

.field n:Z

.field private final p:Landroidx/media2/exoplayer/external/upstream/f;

.field private final q:Landroidx/media2/exoplayer/external/upstream/h;

.field private final r:Z

.field private final s:Z

.field private final t:Landroidx/media2/exoplayer/external/util/z;

.field private final u:Z

.field private final v:Landroidx/media2/exoplayer/external/source/hls/f;

.field private final w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Landroidx/media2/exoplayer/external/drm/DrmInitData;

.field private final y:Landroidx/media2/exoplayer/external/extractor/g;

.field private final z:Landroidx/media2/exoplayer/external/metadata/id3/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 180
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/h;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Landroidx/media2/exoplayer/external/source/hls/f;Landroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/upstream/h;Landroidx/media2/exoplayer/external/Format;ZLandroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/upstream/h;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZZLandroidx/media2/exoplayer/external/util/z;Landroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/extractor/g;Landroidx/media2/exoplayer/external/metadata/id3/a;Landroidx/media2/exoplayer/external/util/p;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/hls/f;",
            "Landroidx/media2/exoplayer/external/upstream/f;",
            "Landroidx/media2/exoplayer/external/upstream/h;",
            "Landroidx/media2/exoplayer/external/Format;",
            "Z",
            "Landroidx/media2/exoplayer/external/upstream/f;",
            "Landroidx/media2/exoplayer/external/upstream/h;",
            "Z",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;I",
            "Ljava/lang/Object;",
            "JJJIZZ",
            "Landroidx/media2/exoplayer/external/util/z;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Landroidx/media2/exoplayer/external/extractor/g;",
            "Landroidx/media2/exoplayer/external/metadata/id3/a;",
            "Landroidx/media2/exoplayer/external/util/p;",
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

    .line 245
    invoke-direct/range {v0 .. v11}, Landroidx/media2/exoplayer/external/source/a/d;-><init>(Landroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/upstream/h;Landroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJ)V

    move/from16 v0, p5

    .line 254
    iput-boolean v0, v12, Landroidx/media2/exoplayer/external/source/hls/h;->B:Z

    move/from16 v0, p19

    .line 255
    iput v0, v12, Landroidx/media2/exoplayer/external/source/hls/h;->k:I

    move-object/from16 v0, p6

    .line 256
    iput-object v0, v12, Landroidx/media2/exoplayer/external/source/hls/h;->p:Landroidx/media2/exoplayer/external/upstream/f;

    .line 257
    iput-object v13, v12, Landroidx/media2/exoplayer/external/source/hls/h;->q:Landroidx/media2/exoplayer/external/upstream/h;

    move/from16 v0, p8

    .line 258
    iput-boolean v0, v12, Landroidx/media2/exoplayer/external/source/hls/h;->C:Z

    move-object/from16 v0, p9

    .line 259
    iput-object v0, v12, Landroidx/media2/exoplayer/external/source/hls/h;->l:Landroid/net/Uri;

    move/from16 v0, p21

    .line 260
    iput-boolean v0, v12, Landroidx/media2/exoplayer/external/source/hls/h;->r:Z

    move-object/from16 v0, p22

    .line 261
    iput-object v0, v12, Landroidx/media2/exoplayer/external/source/hls/h;->t:Landroidx/media2/exoplayer/external/util/z;

    move/from16 v0, p20

    .line 262
    iput-boolean v0, v12, Landroidx/media2/exoplayer/external/source/hls/h;->s:Z

    move-object v0, p1

    .line 263
    iput-object v0, v12, Landroidx/media2/exoplayer/external/source/hls/h;->v:Landroidx/media2/exoplayer/external/source/hls/f;

    move-object/from16 v0, p10

    .line 264
    iput-object v0, v12, Landroidx/media2/exoplayer/external/source/hls/h;->w:Ljava/util/List;

    move-object/from16 v0, p23

    .line 265
    iput-object v0, v12, Landroidx/media2/exoplayer/external/source/hls/h;->x:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-object/from16 v0, p24

    .line 266
    iput-object v0, v12, Landroidx/media2/exoplayer/external/source/hls/h;->y:Landroidx/media2/exoplayer/external/extractor/g;

    move-object/from16 v0, p25

    .line 267
    iput-object v0, v12, Landroidx/media2/exoplayer/external/source/hls/h;->z:Landroidx/media2/exoplayer/external/metadata/id3/a;

    move-object/from16 v0, p26

    .line 268
    iput-object v0, v12, Landroidx/media2/exoplayer/external/source/hls/h;->A:Landroidx/media2/exoplayer/external/util/p;

    move/from16 v0, p27

    .line 269
    iput-boolean v0, v12, Landroidx/media2/exoplayer/external/source/hls/h;->u:Z

    if-eqz v13, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 270
    :goto_0
    iput-boolean v0, v12, Landroidx/media2/exoplayer/external/source/hls/h;->G:Z

    .line 271
    sget-object v0, Landroidx/media2/exoplayer/external/source/hls/h;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, v12, Landroidx/media2/exoplayer/external/source/hls/h;->j:I

    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/extractor/h;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 420
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 422
    :try_start_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/h;->A:Landroidx/media2/exoplayer/external/util/p;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {p1, v2, v4, v3}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/h;->A:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/util/p;->a(I)V

    .line 428
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/h;->A:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->f()I

    move-result v2

    const v5, 0x494433

    if-eq v2, v5, :cond_0

    return-wide v0

    .line 432
    :cond_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/h;->A:Landroidx/media2/exoplayer/external/util/p;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 433
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/h;->A:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->m()I

    move-result v2

    add-int/lit8 v5, v2, 0xa

    .line 435
    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/hls/h;->A:Landroidx/media2/exoplayer/external/util/p;

    .line 3149
    iget-object v6, v6, Landroidx/media2/exoplayer/external/util/p;->a:[B

    array-length v6, v6

    if-le v5, v6, :cond_1

    .line 436
    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/hls/h;->A:Landroidx/media2/exoplayer/external/util/p;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 437
    iget-object v7, p0, Landroidx/media2/exoplayer/external/source/hls/h;->A:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v7, v5}, Landroidx/media2/exoplayer/external/util/p;->a(I)V

    .line 438
    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/hls/h;->A:Landroidx/media2/exoplayer/external/util/p;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-static {v6, v4, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 440
    :cond_1
    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/hls/h;->A:Landroidx/media2/exoplayer/external/util/p;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-interface {p1, v5, v3, v2}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 441
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/h;->z:Landroidx/media2/exoplayer/external/metadata/id3/a;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/h;->A:Landroidx/media2/exoplayer/external/util/p;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-virtual {p1, v3, v2}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a([BI)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object p1

    if-nez p1, :cond_2

    return-wide v0

    .line 445
    :cond_2
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/metadata/Metadata;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    .line 447
    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/metadata/Metadata;->get(I)Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    move-result-object v5

    .line 448
    instance-of v6, v5, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;

    if-eqz v6, :cond_3

    .line 449
    check-cast v5, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;

    .line 450
    iget-object v6, v5, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    const-string v7, "com.apple.streaming.transportStreamTimestamp"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 451
    iget-object p1, v5, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;->privateData:[B

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/h;->A:Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/16 v1, 0x8

    invoke-static {p1, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 453
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/h;->A:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/util/p;->a(I)V

    .line 456
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/h;->A:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->k()J

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

.method private a(Landroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/upstream/h;)Landroidx/media2/exoplayer/external/extractor/d;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 375
    invoke-interface/range {p1 .. p2}, Landroidx/media2/exoplayer/external/upstream/f;->a(Landroidx/media2/exoplayer/external/upstream/h;)J

    move-result-wide v6

    .line 377
    new-instance v15, Landroidx/media2/exoplayer/external/extractor/d;

    iget-wide v4, v1, Landroidx/media2/exoplayer/external/upstream/h;->e:J

    move-object v2, v15

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Landroidx/media2/exoplayer/external/extractor/d;-><init>(Landroidx/media2/exoplayer/external/upstream/f;JJ)V

    .line 380
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/h;->D:Landroidx/media2/exoplayer/external/extractor/g;

    if-nez v2, :cond_2

    .line 381
    invoke-direct {v0, v15}, Landroidx/media2/exoplayer/external/source/hls/h;->a(Landroidx/media2/exoplayer/external/extractor/h;)J

    move-result-wide v2

    const/4 v4, 0x0

    .line 2159
    iput v4, v15, Landroidx/media2/exoplayer/external/extractor/d;->a:I

    .line 384
    iget-object v8, v0, Landroidx/media2/exoplayer/external/source/hls/h;->v:Landroidx/media2/exoplayer/external/source/hls/f;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/source/hls/h;->y:Landroidx/media2/exoplayer/external/extractor/g;

    iget-object v10, v1, Landroidx/media2/exoplayer/external/upstream/h;->a:Landroid/net/Uri;

    iget-object v11, v0, Landroidx/media2/exoplayer/external/source/hls/h;->c:Landroidx/media2/exoplayer/external/Format;

    iget-object v12, v0, Landroidx/media2/exoplayer/external/source/hls/h;->w:Ljava/util/List;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/source/hls/h;->x:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-object v14, v0, Landroidx/media2/exoplayer/external/source/hls/h;->t:Landroidx/media2/exoplayer/external/util/z;

    .line 392
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/upstream/f;->b()Ljava/util/Map;

    move-object v1, v15

    .line 385
    invoke-interface/range {v8 .. v15}, Landroidx/media2/exoplayer/external/source/hls/f;->a(Landroidx/media2/exoplayer/external/extractor/g;Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/util/z;Landroidx/media2/exoplayer/external/extractor/h;)Landroidx/media2/exoplayer/external/source/hls/f$a;

    move-result-object v5

    .line 394
    iget-object v6, v5, Landroidx/media2/exoplayer/external/source/hls/f$a;->a:Landroidx/media2/exoplayer/external/extractor/g;

    iput-object v6, v0, Landroidx/media2/exoplayer/external/source/hls/h;->D:Landroidx/media2/exoplayer/external/extractor/g;

    .line 395
    iget-boolean v6, v5, Landroidx/media2/exoplayer/external/source/hls/f$a;->c:Z

    iput-boolean v6, v0, Landroidx/media2/exoplayer/external/source/hls/h;->E:Z

    .line 396
    iget-boolean v5, v5, Landroidx/media2/exoplayer/external/source/hls/f$a;->b:Z

    if-eqz v5, :cond_1

    .line 397
    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/h;->m:Landroidx/media2/exoplayer/external/source/hls/k;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v2, v6

    if-eqz v8, :cond_0

    .line 399
    iget-object v6, v0, Landroidx/media2/exoplayer/external/source/hls/h;->t:Landroidx/media2/exoplayer/external/util/z;

    invoke-virtual {v6, v2, v3}, Landroidx/media2/exoplayer/external/util/z;->b(J)J

    move-result-wide v2

    goto :goto_0

    .line 400
    :cond_0
    iget-wide v2, v0, Landroidx/media2/exoplayer/external/source/hls/h;->f:J

    .line 397
    :goto_0
    invoke-virtual {v5, v2, v3}, Landroidx/media2/exoplayer/external/source/hls/k;->b(J)V

    .line 402
    :cond_1
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/h;->m:Landroidx/media2/exoplayer/external/source/hls/k;

    iget v3, v0, Landroidx/media2/exoplayer/external/source/hls/h;->j:I

    iget-boolean v5, v0, Landroidx/media2/exoplayer/external/source/hls/h;->u:Z

    invoke-virtual {v2, v3, v5, v4}, Landroidx/media2/exoplayer/external/source/hls/k;->a(IZZ)V

    .line 403
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/h;->D:Landroidx/media2/exoplayer/external/extractor/g;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/hls/h;->m:Landroidx/media2/exoplayer/external/source/hls/k;

    invoke-interface {v2, v3}, Landroidx/media2/exoplayer/external/extractor/g;->a(Landroidx/media2/exoplayer/external/extractor/i;)V

    goto :goto_1

    :cond_2
    move-object v1, v15

    :goto_1
    return-object v1
.end method

.method public static a(Landroidx/media2/exoplayer/external/source/hls/f;Landroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/Format;JLandroidx/media2/exoplayer/external/source/hls/playlist/f;ILandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;ZLandroidx/media2/exoplayer/external/source/hls/o;Landroidx/media2/exoplayer/external/source/hls/h;[B[B)Landroidx/media2/exoplayer/external/source/hls/h;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/hls/f;",
            "Landroidx/media2/exoplayer/external/upstream/f;",
            "Landroidx/media2/exoplayer/external/Format;",
            "J",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/f;",
            "I",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;I",
            "Ljava/lang/Object;",
            "Z",
            "Landroidx/media2/exoplayer/external/source/hls/o;",
            "Landroidx/media2/exoplayer/external/source/hls/h;",
            "[B[B)",
            "Landroidx/media2/exoplayer/external/source/hls/h;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, p12

    move-object/from16 v4, p13

    move-object/from16 v5, p14

    move-object/from16 v6, p15

    .line 93
    iget-object v7, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->l:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;

    .line 94
    new-instance v15, Landroidx/media2/exoplayer/external/upstream/h;

    iget-object v8, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->n:Ljava/lang/String;

    iget-object v9, v7, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->a:Ljava/lang/String;

    .line 96
    invoke-static {v8, v9}, Landroidx/media2/exoplayer/external/util/ab;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-wide v10, v7, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->j:J

    iget-wide v12, v7, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->k:J

    const/4 v14, 0x0

    move-object v8, v15

    invoke-direct/range {v8 .. v14}, Landroidx/media2/exoplayer/external/upstream/h;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    if-eqz v5, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    if-eqz v13, :cond_1

    .line 102
    iget-object v11, v7, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->i:Ljava/lang/String;

    invoke-static {v11}, Landroidx/media2/exoplayer/external/source/hls/h;->a(Ljava/lang/String;)[B

    move-result-object v11

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    .line 103
    :goto_1
    invoke-static {v0, v5, v11}, Landroidx/media2/exoplayer/external/source/hls/h;->a(Landroidx/media2/exoplayer/external/upstream/f;[B[B)Landroidx/media2/exoplayer/external/upstream/f;

    move-result-object v5

    .line 106
    iget-object v11, v7, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->b:Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;

    if-eqz v11, :cond_4

    if-eqz v6, :cond_2

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    :goto_2
    if-eqz v12, :cond_3

    .line 113
    iget-object v14, v11, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->i:Ljava/lang/String;

    invoke-static {v14}, Landroidx/media2/exoplayer/external/source/hls/h;->a(Ljava/lang/String;)[B

    move-result-object v14

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    .line 114
    :goto_3
    iget-object v8, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->n:Ljava/lang/String;

    iget-object v9, v11, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->a:Ljava/lang/String;

    invoke-static {v8, v9}, Landroidx/media2/exoplayer/external/util/ab;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 115
    new-instance v8, Landroidx/media2/exoplayer/external/upstream/h;

    iget-wide v9, v11, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->j:J

    move/from16 p14, v12

    iget-wide v11, v11, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->k:J

    const/16 v24, 0x0

    move-object/from16 v18, v8

    move-wide/from16 v20, v9

    move-wide/from16 v22, v11

    invoke-direct/range {v18 .. v24}, Landroidx/media2/exoplayer/external/upstream/h;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 121
    invoke-static {v0, v6, v14}, Landroidx/media2/exoplayer/external/source/hls/h;->a(Landroidx/media2/exoplayer/external/upstream/f;[B[B)Landroidx/media2/exoplayer/external/upstream/f;

    move-result-object v0

    move/from16 v6, p14

    move-object v14, v0

    move-object v0, v8

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x0

    .line 124
    :goto_4
    iget-wide v8, v7, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->f:J

    add-long v21, p3, v8

    .line 125
    iget-wide v8, v7, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->c:J

    add-long v23, v21, v8

    .line 126
    iget v8, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->e:I

    iget v9, v7, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->e:I

    add-int v12, v8, v9

    if-eqz v4, :cond_8

    .line 134
    iget-object v8, v4, Landroidx/media2/exoplayer/external/source/hls/h;->z:Landroidx/media2/exoplayer/external/metadata/id3/a;

    .line 135
    iget-object v9, v4, Landroidx/media2/exoplayer/external/source/hls/h;->A:Landroidx/media2/exoplayer/external/util/p;

    .line 136
    iget-object v10, v4, Landroidx/media2/exoplayer/external/source/hls/h;->l:Landroid/net/Uri;

    move-object/from16 v11, p7

    .line 137
    invoke-virtual {v11, v10}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-boolean v10, v4, Landroidx/media2/exoplayer/external/source/hls/h;->n:Z

    if-nez v10, :cond_5

    goto :goto_5

    :cond_5
    const/16 v16, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    const/16 v16, 0x1

    .line 141
    :goto_6
    iget-boolean v10, v4, Landroidx/media2/exoplayer/external/source/hls/h;->E:Z

    if-eqz v10, :cond_7

    iget v10, v4, Landroidx/media2/exoplayer/external/source/hls/h;->k:I

    if-ne v10, v12, :cond_7

    if-nez v16, :cond_7

    .line 142
    iget-object v10, v4, Landroidx/media2/exoplayer/external/source/hls/h;->D:Landroidx/media2/exoplayer/external/extractor/g;

    goto :goto_7

    :cond_7
    const/4 v10, 0x0

    :goto_7
    move-object/from16 v33, v8

    move-object/from16 v34, v9

    move-object/from16 v32, v10

    move/from16 v35, v16

    goto :goto_8

    :cond_8
    move-object/from16 v11, p7

    .line 145
    new-instance v4, Landroidx/media2/exoplayer/external/metadata/id3/a;

    invoke-direct {v4}, Landroidx/media2/exoplayer/external/metadata/id3/a;-><init>()V

    .line 146
    new-instance v8, Landroidx/media2/exoplayer/external/util/p;

    const/16 v9, 0xa

    invoke-direct {v8, v9}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    move-object/from16 v33, v4

    move-object/from16 v34, v8

    const/16 v32, 0x0

    const/16 v35, 0x0

    .line 150
    :goto_8
    new-instance v4, Landroidx/media2/exoplayer/external/source/hls/h;

    iget-wide v8, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->f:J

    int-to-long v1, v2

    add-long v25, v8, v1

    iget-boolean v1, v7, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->l:Z

    .line 1048
    iget-object v2, v3, Landroidx/media2/exoplayer/external/source/hls/o;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/util/z;

    if-nez v2, :cond_9

    .line 1050
    new-instance v2, Landroidx/media2/exoplayer/external/util/z;

    const-wide v8, 0x7fffffffffffffffL

    invoke-direct {v2, v8, v9}, Landroidx/media2/exoplayer/external/util/z;-><init>(J)V

    .line 1051
    iget-object v3, v3, Landroidx/media2/exoplayer/external/source/hls/o;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v12, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_9
    move-object/from16 v30, v2

    .line 169
    iget-object v2, v7, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->g:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-object/from16 v31, v2

    move-object v8, v4

    move-object/from16 v9, p0

    move-object v10, v5

    move-object v11, v15

    move v2, v12

    move-object/from16 v12, p2

    move-object v15, v0

    move/from16 v16, v6

    move-object/from16 v17, p7

    move-object/from16 v18, p8

    move/from16 v19, p9

    move-object/from16 v20, p10

    move/from16 v27, v2

    move/from16 v28, v1

    move/from16 v29, p11

    invoke-direct/range {v8 .. v35}, Landroidx/media2/exoplayer/external/source/hls/h;-><init>(Landroidx/media2/exoplayer/external/source/hls/f;Landroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/upstream/h;Landroidx/media2/exoplayer/external/Format;ZLandroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/upstream/h;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZZLandroidx/media2/exoplayer/external/util/z;Landroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/extractor/g;Landroidx/media2/exoplayer/external/metadata/id3/a;Landroidx/media2/exoplayer/external/util/p;Z)V

    return-object v4
.end method

.method private static a(Landroidx/media2/exoplayer/external/upstream/f;[B[B)Landroidx/media2/exoplayer/external/upstream/f;
    .locals 1

    if-eqz p1, :cond_0

    .line 492
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/a;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/exoplayer/external/source/hls/a;-><init>(Landroidx/media2/exoplayer/external/upstream/f;[B[B)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method private a(Landroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/upstream/h;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 350
    iget p3, p0, Landroidx/media2/exoplayer/external/source/hls/h;->F:I

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move v1, p3

    move-object p3, p2

    goto :goto_1

    .line 352
    :cond_1
    iget p3, p0, Landroidx/media2/exoplayer/external/source/hls/h;->F:I

    int-to-long v1, p3

    invoke-virtual {p2, v1, v2}, Landroidx/media2/exoplayer/external/upstream/h;->a(J)Landroidx/media2/exoplayer/external/upstream/h;

    move-result-object p3

    const/4 v1, 0x0

    .line 356
    :goto_1
    :try_start_0
    invoke-direct {p0, p1, p3}, Landroidx/media2/exoplayer/external/source/hls/h;->a(Landroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/upstream/h;)Landroidx/media2/exoplayer/external/extractor/d;

    move-result-object p3

    if-eqz v1, :cond_2

    .line 358
    iget v1, p0, Landroidx/media2/exoplayer/external/source/hls/h;->F:I

    invoke-interface {p3, v1}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 362
    :try_start_1
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/h;->H:Z

    if-nez v0, :cond_3

    .line 363
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/h;->D:Landroidx/media2/exoplayer/external/extractor/g;

    const/4 v1, 0x0

    invoke-interface {v0, p3, v1}, Landroidx/media2/exoplayer/external/extractor/g;->a(Landroidx/media2/exoplayer/external/extractor/h;Landroidx/media2/exoplayer/external/extractor/n;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 366
    :try_start_2
    invoke-interface {p3}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v1

    iget-wide p2, p2, Landroidx/media2/exoplayer/external/upstream/h;->e:J

    sub-long/2addr v1, p2

    long-to-int p2, v1

    iput p2, p0, Landroidx/media2/exoplayer/external/source/hls/h;->F:I

    throw v0

    :cond_3
    invoke-interface {p3}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v0

    iget-wide p2, p2, Landroidx/media2/exoplayer/external/upstream/h;->e:J

    sub-long/2addr v0, p2

    long-to-int p2, v0

    iput p2, p0, Landroidx/media2/exoplayer/external/source/hls/h;->F:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 369
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/ac;->a(Landroidx/media2/exoplayer/external/upstream/f;)V

    return-void

    :catchall_1
    move-exception p2

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/ac;->a(Landroidx/media2/exoplayer/external/upstream/f;)V

    throw p2
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 4

    .line 467
    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 468
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 473
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    new-array v0, v1, [B

    .line 475
    array-length v2, p0

    if-le v2, v1, :cond_1

    array-length v2, p0

    sub-int/2addr v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 476
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
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 293
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/h;->H:Z

    return-void
.end method

.method public final b()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 298
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/h;->D:Landroidx/media2/exoplayer/external/extractor/g;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/h;->y:Landroidx/media2/exoplayer/external/extractor/g;

    if-eqz v0, :cond_0

    .line 299
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/h;->D:Landroidx/media2/exoplayer/external/extractor/g;

    .line 300
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/source/hls/h;->E:Z

    .line 301
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/source/hls/h;->G:Z

    .line 302
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/h;->m:Landroidx/media2/exoplayer/external/source/hls/k;

    iget v3, p0, Landroidx/media2/exoplayer/external/source/hls/h;->j:I

    iget-boolean v4, p0, Landroidx/media2/exoplayer/external/source/hls/h;->u:Z

    invoke-virtual {v0, v3, v4, v1}, Landroidx/media2/exoplayer/external/source/hls/k;->a(IZZ)V

    .line 1316
    :cond_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/h;->G:Z

    if-eqz v0, :cond_1

    .line 1319
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/h;->p:Landroidx/media2/exoplayer/external/upstream/f;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/h;->q:Landroidx/media2/exoplayer/external/upstream/h;

    iget-boolean v4, p0, Landroidx/media2/exoplayer/external/source/hls/h;->C:Z

    invoke-direct {p0, v0, v3, v4}, Landroidx/media2/exoplayer/external/source/hls/h;->a(Landroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/upstream/h;Z)V

    .line 1320
    iput v2, p0, Landroidx/media2/exoplayer/external/source/hls/h;->F:I

    .line 1321
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/source/hls/h;->G:Z

    .line 305
    :cond_1
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/h;->H:Z

    if-nez v0, :cond_5

    .line 306
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/h;->s:Z

    if-nez v0, :cond_4

    .line 1325
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/h;->r:Z

    if-nez v0, :cond_2

    .line 1326
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/h;->t:Landroidx/media2/exoplayer/external/util/z;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/z;->b()V

    goto :goto_0

    .line 1327
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/h;->t:Landroidx/media2/exoplayer/external/util/z;

    .line 2072
    iget-wide v2, v0, Landroidx/media2/exoplayer/external/util/z;->a:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 1329
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/h;->t:Landroidx/media2/exoplayer/external/util/z;

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/hls/h;->f:J

    invoke-virtual {v0, v2, v3}, Landroidx/media2/exoplayer/external/util/z;->a(J)V

    .line 1331
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/h;->h:Landroidx/media2/exoplayer/external/upstream/v;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/h;->a:Landroidx/media2/exoplayer/external/upstream/h;

    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/source/hls/h;->B:Z

    invoke-direct {p0, v0, v2, v3}, Landroidx/media2/exoplayer/external/source/hls/h;->a(Landroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/upstream/h;Z)V

    .line 309
    :cond_4
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/source/hls/h;->n:Z

    :cond_5
    return-void
.end method
