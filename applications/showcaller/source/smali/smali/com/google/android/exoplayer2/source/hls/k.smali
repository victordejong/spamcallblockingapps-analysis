.class final Lcom/google/android/exoplayer2/source/hls/k;
.super Lcom/google/android/exoplayer2/source/e0/d;
.source "HlsMediaChunk.java"


# static fields
.field private static final j:Lcom/google/android/exoplayer2/c1/s;

.field private static final k:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final A:Z

.field private final B:Z

.field private C:Lcom/google/android/exoplayer2/c1/h;

.field private D:Z

.field private E:Lcom/google/android/exoplayer2/source/hls/n;

.field private F:I

.field private G:Z

.field private volatile H:Z

.field private I:Z

.field public final l:I

.field public final m:I

.field public final n:Landroid/net/Uri;

.field private final o:Lcom/google/android/exoplayer2/upstream/j;

.field private final p:Lcom/google/android/exoplayer2/upstream/l;

.field private final q:Lcom/google/android/exoplayer2/c1/h;

.field private final r:Z

.field private final s:Z

.field private final t:Lcom/google/android/exoplayer2/util/e0;

.field private final u:Z

.field private final v:Lcom/google/android/exoplayer2/source/hls/i;

.field private final w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field private final y:Lcom/google/android/exoplayer2/metadata/id3/b;

.field private final z:Lcom/google/android/exoplayer2/util/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/c1/s;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c1/s;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/k;->j:Lcom/google/android/exoplayer2/c1/s;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/k;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/source/hls/i;Lcom/google/android/exoplayer2/upstream/j;Lcom/google/android/exoplayer2/upstream/l;Lcom/google/android/exoplayer2/Format;ZLcom/google/android/exoplayer2/upstream/j;Lcom/google/android/exoplayer2/upstream/l;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZZLcom/google/android/exoplayer2/util/e0;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/c1/h;Lcom/google/android/exoplayer2/metadata/id3/b;Lcom/google/android/exoplayer2/util/v;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/hls/i;",
            "Lcom/google/android/exoplayer2/upstream/j;",
            "Lcom/google/android/exoplayer2/upstream/l;",
            "Lcom/google/android/exoplayer2/Format;",
            "Z",
            "Lcom/google/android/exoplayer2/upstream/j;",
            "Lcom/google/android/exoplayer2/upstream/l;",
            "Z",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;I",
            "Ljava/lang/Object;",
            "JJJIZZ",
            "Lcom/google/android/exoplayer2/util/e0;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "Lcom/google/android/exoplayer2/c1/h;",
            "Lcom/google/android/exoplayer2/metadata/id3/b;",
            "Lcom/google/android/exoplayer2/util/v;",
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

    .line 1
    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/source/e0/d;-><init>(Lcom/google/android/exoplayer2/upstream/j;Lcom/google/android/exoplayer2/upstream/l;Lcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    move/from16 v0, p5

    .line 2
    iput-boolean v0, v12, Lcom/google/android/exoplayer2/source/hls/k;->A:Z

    move/from16 v0, p19

    .line 3
    iput v0, v12, Lcom/google/android/exoplayer2/source/hls/k;->m:I

    .line 4
    iput-object v13, v12, Lcom/google/android/exoplayer2/source/hls/k;->p:Lcom/google/android/exoplayer2/upstream/l;

    move-object/from16 v0, p6

    .line 5
    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/k;->o:Lcom/google/android/exoplayer2/upstream/j;

    if-eqz v13, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iput-boolean v0, v12, Lcom/google/android/exoplayer2/source/hls/k;->G:Z

    move/from16 v0, p8

    .line 7
    iput-boolean v0, v12, Lcom/google/android/exoplayer2/source/hls/k;->B:Z

    move-object/from16 v0, p9

    .line 8
    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/k;->n:Landroid/net/Uri;

    move/from16 v0, p21

    .line 9
    iput-boolean v0, v12, Lcom/google/android/exoplayer2/source/hls/k;->r:Z

    move-object/from16 v0, p22

    .line 10
    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/k;->t:Lcom/google/android/exoplayer2/util/e0;

    move/from16 v0, p20

    .line 11
    iput-boolean v0, v12, Lcom/google/android/exoplayer2/source/hls/k;->s:Z

    move-object v0, p1

    .line 12
    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/k;->v:Lcom/google/android/exoplayer2/source/hls/i;

    move-object/from16 v0, p10

    .line 13
    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/k;->w:Ljava/util/List;

    move-object/from16 v0, p23

    .line 14
    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/k;->x:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v0, p24

    .line 15
    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/k;->q:Lcom/google/android/exoplayer2/c1/h;

    move-object/from16 v0, p25

    .line 16
    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/k;->y:Lcom/google/android/exoplayer2/metadata/id3/b;

    move-object/from16 v0, p26

    .line 17
    iput-object v0, v12, Lcom/google/android/exoplayer2/source/hls/k;->z:Lcom/google/android/exoplayer2/util/v;

    move/from16 v0, p27

    .line 18
    iput-boolean v0, v12, Lcom/google/android/exoplayer2/source/hls/k;->u:Z

    .line 19
    sget-object v0, Lcom/google/android/exoplayer2/source/hls/k;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, v12, Lcom/google/android/exoplayer2/source/hls/k;->l:I

    return-void
.end method

.method private static h(Lcom/google/android/exoplayer2/upstream/j;[B[B)Lcom/google/android/exoplayer2/upstream/j;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/d;-><init>(Lcom/google/android/exoplayer2/upstream/j;[B[B)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static i(Lcom/google/android/exoplayer2/source/hls/i;Lcom/google/android/exoplayer2/upstream/j;Lcom/google/android/exoplayer2/Format;JLcom/google/android/exoplayer2/source/hls/playlist/f;ILandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;ZLcom/google/android/exoplayer2/source/hls/o;Lcom/google/android/exoplayer2/source/hls/k;[B[B)Lcom/google/android/exoplayer2/source/hls/k;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/hls/i;",
            "Lcom/google/android/exoplayer2/upstream/j;",
            "Lcom/google/android/exoplayer2/Format;",
            "J",
            "Lcom/google/android/exoplayer2/source/hls/playlist/f;",
            "I",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;I",
            "Ljava/lang/Object;",
            "Z",
            "Lcom/google/android/exoplayer2/source/hls/o;",
            "Lcom/google/android/exoplayer2/source/hls/k;",
            "[B[B)",
            "Lcom/google/android/exoplayer2/source/hls/k;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, p13

    move-object/from16 v4, p14

    move-object/from16 v5, p15

    .line 1
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/hls/playlist/f;->o:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/hls/playlist/f$a;

    .line 2
    new-instance v14, Lcom/google/android/exoplayer2/upstream/l;

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/hls/playlist/g;->a:Ljava/lang/String;

    iget-object v8, v6, Lcom/google/android/exoplayer2/source/hls/playlist/f$a;->d:Ljava/lang/String;

    .line 3
    invoke-static {v7, v8}, Lcom/google/android/exoplayer2/util/g0;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-wide v9, v6, Lcom/google/android/exoplayer2/source/hls/playlist/f$a;->m:J

    iget-wide v11, v6, Lcom/google/android/exoplayer2/source/hls/playlist/f$a;->n:J

    const/4 v13, 0x0

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Lcom/google/android/exoplayer2/upstream/l;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    if-eqz v4, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    if-eqz v12, :cond_1

    .line 4
    iget-object v10, v6, Lcom/google/android/exoplayer2/source/hls/playlist/f$a;->l:Ljava/lang/String;

    .line 5
    invoke-static {v10}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcom/google/android/exoplayer2/source/hls/k;->k(Ljava/lang/String;)[B

    move-result-object v10

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    .line 6
    :goto_1
    invoke-static {v0, v4, v10}, Lcom/google/android/exoplayer2/source/hls/k;->h(Lcom/google/android/exoplayer2/upstream/j;[B[B)Lcom/google/android/exoplayer2/upstream/j;

    move-result-object v4

    .line 7
    iget-object v10, v6, Lcom/google/android/exoplayer2/source/hls/playlist/f$a;->e:Lcom/google/android/exoplayer2/source/hls/playlist/f$a;

    if-eqz v10, :cond_4

    if-eqz v5, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    if-eqz v11, :cond_3

    .line 8
    iget-object v13, v10, Lcom/google/android/exoplayer2/source/hls/playlist/f$a;->l:Ljava/lang/String;

    .line 9
    invoke-static {v13}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Lcom/google/android/exoplayer2/source/hls/k;->k(Ljava/lang/String;)[B

    move-result-object v13

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    .line 10
    :goto_3
    iget-object v15, v1, Lcom/google/android/exoplayer2/source/hls/playlist/g;->a:Ljava/lang/String;

    iget-object v7, v10, Lcom/google/android/exoplayer2/source/hls/playlist/f$a;->d:Ljava/lang/String;

    invoke-static {v15, v7}, Lcom/google/android/exoplayer2/util/g0;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 11
    new-instance v7, Lcom/google/android/exoplayer2/upstream/l;

    iget-wide v8, v10, Lcom/google/android/exoplayer2/source/hls/playlist/f$a;->m:J

    move/from16 p14, v11

    iget-wide v10, v10, Lcom/google/android/exoplayer2/source/hls/playlist/f$a;->n:J

    const/16 v23, 0x0

    move-object/from16 v17, v7

    move-wide/from16 v19, v8

    move-wide/from16 v21, v10

    invoke-direct/range {v17 .. v23}, Lcom/google/android/exoplayer2/upstream/l;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 12
    invoke-static {v0, v5, v13}, Lcom/google/android/exoplayer2/source/hls/k;->h(Lcom/google/android/exoplayer2/upstream/j;[B[B)Lcom/google/android/exoplayer2/upstream/j;

    move-result-object v0

    move/from16 v5, p14

    move-object v13, v0

    move-object v0, v7

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    .line 13
    :goto_4
    iget-wide v7, v6, Lcom/google/android/exoplayer2/source/hls/playlist/f$a;->i:J

    add-long v20, p3, v7

    .line 14
    iget-wide v7, v6, Lcom/google/android/exoplayer2/source/hls/playlist/f$a;->f:J

    add-long v22, v20, v7

    .line 15
    iget v7, v1, Lcom/google/android/exoplayer2/source/hls/playlist/f;->h:I

    iget v8, v6, Lcom/google/android/exoplayer2/source/hls/playlist/f$a;->h:I

    add-int v11, v7, v8

    if-eqz v3, :cond_8

    .line 16
    iget-object v7, v3, Lcom/google/android/exoplayer2/source/hls/k;->y:Lcom/google/android/exoplayer2/metadata/id3/b;

    .line 17
    iget-object v8, v3, Lcom/google/android/exoplayer2/source/hls/k;->z:Lcom/google/android/exoplayer2/util/v;

    .line 18
    iget-object v9, v3, Lcom/google/android/exoplayer2/source/hls/k;->n:Landroid/net/Uri;

    move-object/from16 v10, p7

    .line 19
    invoke-virtual {v10, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-boolean v9, v3, Lcom/google/android/exoplayer2/source/hls/k;->I:Z

    if-nez v9, :cond_5

    goto :goto_5

    :cond_5
    const/16 v16, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    const/16 v16, 0x1

    .line 20
    :goto_6
    iget-boolean v9, v3, Lcom/google/android/exoplayer2/source/hls/k;->D:Z

    if-eqz v9, :cond_7

    iget v9, v3, Lcom/google/android/exoplayer2/source/hls/k;->m:I

    if-ne v9, v11, :cond_7

    if-nez v16, :cond_7

    iget-object v9, v3, Lcom/google/android/exoplayer2/source/hls/k;->C:Lcom/google/android/exoplayer2/c1/h;

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

    .line 21
    new-instance v3, Lcom/google/android/exoplayer2/metadata/id3/b;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/metadata/id3/b;-><init>()V

    .line 22
    new-instance v7, Lcom/google/android/exoplayer2/util/v;

    const/16 v8, 0xa

    invoke-direct {v7, v8}, Lcom/google/android/exoplayer2/util/v;-><init>(I)V

    move-object/from16 v32, v3

    move-object/from16 v33, v7

    const/16 v31, 0x0

    const/16 v34, 0x0

    .line 23
    :goto_8
    new-instance v3, Lcom/google/android/exoplayer2/source/hls/k;

    move-object v7, v3

    iget-wide v8, v1, Lcom/google/android/exoplayer2/source/hls/playlist/f;->i:J

    int-to-long v1, v2

    add-long v24, v8, v1

    iget-boolean v1, v6, Lcom/google/android/exoplayer2/source/hls/playlist/f$a;->o:Z

    move/from16 v27, v1

    move-object/from16 v1, p12

    .line 24
    invoke-virtual {v1, v11}, Lcom/google/android/exoplayer2/source/hls/o;->a(I)Lcom/google/android/exoplayer2/util/e0;

    move-result-object v29

    iget-object v1, v6, Lcom/google/android/exoplayer2/source/hls/playlist/f$a;->j:Lcom/google/android/exoplayer2/drm/DrmInitData;

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

    invoke-direct/range {v7 .. v34}, Lcom/google/android/exoplayer2/source/hls/k;-><init>(Lcom/google/android/exoplayer2/source/hls/i;Lcom/google/android/exoplayer2/upstream/j;Lcom/google/android/exoplayer2/upstream/l;Lcom/google/android/exoplayer2/Format;ZLcom/google/android/exoplayer2/upstream/j;Lcom/google/android/exoplayer2/upstream/l;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZZLcom/google/android/exoplayer2/util/e0;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/c1/h;Lcom/google/android/exoplayer2/metadata/id3/b;Lcom/google/android/exoplayer2/util/v;Z)V

    return-object v3
.end method

.method private j(Lcom/google/android/exoplayer2/upstream/j;Lcom/google/android/exoplayer2/upstream/l;Z)V
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 1
    iget p3, p0, Lcom/google/android/exoplayer2/source/hls/k;->F:I

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move v1, p3

    move-object p3, p2

    goto :goto_1

    .line 2
    :cond_1
    iget p3, p0, Lcom/google/android/exoplayer2/source/hls/k;->F:I

    int-to-long v1, p3

    invoke-virtual {p2, v1, v2}, Lcom/google/android/exoplayer2/upstream/l;->e(J)Lcom/google/android/exoplayer2/upstream/l;

    move-result-object p3

    const/4 v1, 0x0

    .line 3
    :goto_1
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/exoplayer2/source/hls/k;->q(Lcom/google/android/exoplayer2/upstream/j;Lcom/google/android/exoplayer2/upstream/l;)Lcom/google/android/exoplayer2/c1/e;

    move-result-object p3

    if-eqz v1, :cond_2

    .line 4
    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/k;->F:I

    invoke-interface {p3, v1}, Lcom/google/android/exoplayer2/c1/i;->h(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 5
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->H:Z

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->C:Lcom/google/android/exoplayer2/c1/h;

    sget-object v1, Lcom/google/android/exoplayer2/source/hls/k;->j:Lcom/google/android/exoplayer2/c1/s;

    invoke-interface {v0, p3, v1}, Lcom/google/android/exoplayer2/c1/h;->f(Lcom/google/android/exoplayer2/c1/i;Lcom/google/android/exoplayer2/c1/s;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 7
    :try_start_2
    invoke-interface {p3}, Lcom/google/android/exoplayer2/c1/i;->k()J

    move-result-wide v1

    iget-wide p2, p2, Lcom/google/android/exoplayer2/upstream/l;->e:J

    sub-long/2addr v1, p2

    long-to-int p2, v1

    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/k;->F:I

    .line 8
    throw v0

    .line 9
    :cond_3
    invoke-interface {p3}, Lcom/google/android/exoplayer2/c1/i;->k()J

    move-result-wide v0

    iget-wide p2, p2, Lcom/google/android/exoplayer2/upstream/l;->e:J

    sub-long/2addr v0, p2

    long-to-int p2, v0

    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/k;->F:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/h0;->j(Lcom/google/android/exoplayer2/upstream/j;)V

    return-void

    :catchall_1
    move-exception p2

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/h0;->j(Lcom/google/android/exoplayer2/upstream/j;)V

    .line 11
    throw p2
.end method

.method private static k(Ljava/lang/String;)[B
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/h0;->u0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    new-array v0, v1, [B

    .line 4
    array-length v2, p0

    if-le v2, v1, :cond_1

    array-length v2, p0

    sub-int/2addr v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_0
    array-length v3, p0

    sub-int/2addr v1, v3

    add-int/2addr v1, v2

    array-length v3, p0

    sub-int/2addr v3, v2

    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private n()V
    .locals 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->r:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->t:Lcom/google/android/exoplayer2/util/e0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->j()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->t:Lcom/google/android/exoplayer2/util/e0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/e0;->c()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->t:Lcom/google/android/exoplayer2/util/e0;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/e0/b;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/e0;->h(J)V

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/e0/b;->h:Lcom/google/android/exoplayer2/upstream/w;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/e0/b;->a:Lcom/google/android/exoplayer2/upstream/l;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/k;->A:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/k;->j(Lcom/google/android/exoplayer2/upstream/j;Lcom/google/android/exoplayer2/upstream/l;Z)V

    return-void
.end method

.method private o()V
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->G:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->o:Lcom/google/android/exoplayer2/upstream/j;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->p:Lcom/google/android/exoplayer2/upstream/l;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->o:Lcom/google/android/exoplayer2/upstream/j;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/k;->p:Lcom/google/android/exoplayer2/upstream/l;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/k;->B:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/k;->j(Lcom/google/android/exoplayer2/upstream/j;Lcom/google/android/exoplayer2/upstream/l;Z)V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->F:I

    .line 6
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->G:Z

    return-void
.end method

.method private p(Lcom/google/android/exoplayer2/c1/i;)J
    .locals 8

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c1/i;->g()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/k;->z:Lcom/google/android/exoplayer2/util/v;

    iget-object v2, v2, Lcom/google/android/exoplayer2/util/v;->a:[B

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {p1, v2, v4, v3}, Lcom/google/android/exoplayer2/c1/i;->j([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/k;->z:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/v;->I(I)V

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/k;->z:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/v;->C()I

    move-result v2

    const v5, 0x494433

    if-eq v2, v5, :cond_0

    return-wide v0

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/k;->z:Lcom/google/android/exoplayer2/util/v;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/util/v;->N(I)V

    .line 6
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/k;->z:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/v;->y()I

    move-result v2

    add-int/lit8 v5, v2, 0xa

    .line 7
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/k;->z:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/v;->b()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 8
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/k;->z:Lcom/google/android/exoplayer2/util/v;

    iget-object v7, v6, Lcom/google/android/exoplayer2/util/v;->a:[B

    .line 9
    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/util/v;->I(I)V

    .line 10
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/k;->z:Lcom/google/android/exoplayer2/util/v;

    iget-object v5, v5, Lcom/google/android/exoplayer2/util/v;->a:[B

    invoke-static {v7, v4, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    :cond_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/k;->z:Lcom/google/android/exoplayer2/util/v;

    iget-object v5, v5, Lcom/google/android/exoplayer2/util/v;->a:[B

    invoke-interface {p1, v5, v3, v2}, Lcom/google/android/exoplayer2/c1/i;->j([BII)V

    .line 12
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/k;->y:Lcom/google/android/exoplayer2/metadata/id3/b;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/k;->z:Lcom/google/android/exoplayer2/util/v;

    iget-object v3, v3, Lcom/google/android/exoplayer2/util/v;->a:[B

    invoke-virtual {p1, v3, v2}, Lcom/google/android/exoplayer2/metadata/id3/b;->c([BI)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p1

    if-nez p1, :cond_2

    return-wide v0

    .line 13
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->d()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    .line 14
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/metadata/Metadata;->c(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v5

    .line 15
    instance-of v6, v5, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    if-eqz v6, :cond_3

    .line 16
    check-cast v5, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    .line 17
    iget-object v6, v5, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->e:Ljava/lang/String;

    const-string v7, "com.apple.streaming.transportStreamTimestamp"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 18
    iget-object p1, v5, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->f:[B

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->z:Lcom/google/android/exoplayer2/util/v;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/v;->a:[B

    const/16 v1, 0x8

    invoke-static {p1, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/k;->z:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/v;->I(I)V

    .line 20
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/k;->z:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->s()J

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

.method private q(Lcom/google/android/exoplayer2/upstream/j;Lcom/google/android/exoplayer2/upstream/l;)Lcom/google/android/exoplayer2/c1/e;
    .locals 16
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "extractor"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-interface/range {p1 .. p2}, Lcom/google/android/exoplayer2/upstream/j;->b(Lcom/google/android/exoplayer2/upstream/l;)J

    move-result-wide v6

    .line 2
    new-instance v15, Lcom/google/android/exoplayer2/c1/e;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/l;->e:J

    move-object v2, v15

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/c1/e;-><init>(Lcom/google/android/exoplayer2/upstream/j;JJ)V

    .line 3
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/k;->C:Lcom/google/android/exoplayer2/c1/h;

    if-nez v2, :cond_2

    .line 4
    invoke-direct {v0, v15}, Lcom/google/android/exoplayer2/source/hls/k;->p(Lcom/google/android/exoplayer2/c1/i;)J

    move-result-wide v2

    .line 5
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/c1/e;->g()V

    .line 6
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/k;->v:Lcom/google/android/exoplayer2/source/hls/i;

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/k;->q:Lcom/google/android/exoplayer2/c1/h;

    iget-object v10, v1, Lcom/google/android/exoplayer2/upstream/l;->a:Landroid/net/Uri;

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/e0/b;->c:Lcom/google/android/exoplayer2/Format;

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/hls/k;->w:Ljava/util/List;

    iget-object v13, v0, Lcom/google/android/exoplayer2/source/hls/k;->t:Lcom/google/android/exoplayer2/util/e0;

    .line 7
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/j;->getResponseHeaders()Ljava/util/Map;

    move-result-object v14

    move-object v1, v15

    .line 8
    invoke-interface/range {v8 .. v15}, Lcom/google/android/exoplayer2/source/hls/i;->a(Lcom/google/android/exoplayer2/c1/h;Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/util/e0;Ljava/util/Map;Lcom/google/android/exoplayer2/c1/i;)Lcom/google/android/exoplayer2/source/hls/i$a;

    move-result-object v4

    .line 9
    iget-object v5, v4, Lcom/google/android/exoplayer2/source/hls/i$a;->a:Lcom/google/android/exoplayer2/c1/h;

    iput-object v5, v0, Lcom/google/android/exoplayer2/source/hls/k;->C:Lcom/google/android/exoplayer2/c1/h;

    .line 10
    iget-boolean v5, v4, Lcom/google/android/exoplayer2/source/hls/i$a;->c:Z

    iput-boolean v5, v0, Lcom/google/android/exoplayer2/source/hls/k;->D:Z

    .line 11
    iget-boolean v4, v4, Lcom/google/android/exoplayer2/source/hls/i$a;->b:Z

    if-eqz v4, :cond_1

    .line 12
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/k;->E:Lcom/google/android/exoplayer2/source/hls/n;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v2, v5

    if-eqz v7, :cond_0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/k;->t:Lcom/google/android/exoplayer2/util/e0;

    .line 13
    invoke-virtual {v5, v2, v3}, Lcom/google/android/exoplayer2/util/e0;->b(J)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/e0/b;->f:J

    .line 14
    :goto_0
    invoke-virtual {v4, v2, v3}, Lcom/google/android/exoplayer2/source/hls/n;->i0(J)V

    goto :goto_1

    .line 15
    :cond_1
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/k;->E:Lcom/google/android/exoplayer2/source/hls/n;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/source/hls/n;->i0(J)V

    .line 16
    :goto_1
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/k;->E:Lcom/google/android/exoplayer2/source/hls/n;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/hls/n;->V()V

    .line 17
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/k;->C:Lcom/google/android/exoplayer2/c1/h;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/k;->E:Lcom/google/android/exoplayer2/source/hls/n;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/c1/h;->g(Lcom/google/android/exoplayer2/c1/j;)V

    goto :goto_2

    :cond_2
    move-object v1, v15

    .line 18
    :goto_2
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/k;->E:Lcom/google/android/exoplayer2/source/hls/n;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/k;->x:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/hls/n;->f0(Lcom/google/android/exoplayer2/drm/DrmInitData;)V

    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->E:Lcom/google/android/exoplayer2/source/hls/n;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->C:Lcom/google/android/exoplayer2/c1/h;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->q:Lcom/google/android/exoplayer2/c1/h;

    if-eqz v0, :cond_0

    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->C:Lcom/google/android/exoplayer2/c1/h;

    .line 4
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/k;->D:Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->G:Z

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/k;->o()V

    .line 7
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->H:Z

    if-nez v0, :cond_2

    .line 8
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->s:Z

    if-nez v0, :cond_1

    .line 9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/k;->n()V

    .line 10
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/k;->I:Z

    :cond_2
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->H:Z

    return-void
.end method

.method public l(Lcom/google/android/exoplayer2/source/hls/n;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/k;->E:Lcom/google/android/exoplayer2/source/hls/n;

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->l:I

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/k;->u:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/source/hls/n;->I(IZ)V

    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->I:Z

    return v0
.end method
