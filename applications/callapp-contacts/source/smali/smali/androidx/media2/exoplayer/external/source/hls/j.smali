.class final Landroidx/media2/exoplayer/external/source/hls/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/al;


# instance fields
.field final a:I

.field final b:Landroidx/media2/exoplayer/external/source/hls/k;

.field c:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/hls/k;I)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/j;->b:Landroidx/media2/exoplayer/external/source/hls/k;

    .line 42
    iput p2, p0, Landroidx/media2/exoplayer/external/source/hls/j;->a:I

    const/4 p1, -0x1

    .line 43
    iput p1, p0, Landroidx/media2/exoplayer/external/source/hls/j;->c:I

    return-void
.end method

.method private d()Z
    .locals 2

    .line 99
    iget v0, p0, Landroidx/media2/exoplayer/external/source/hls/j;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(J)I
    .locals 4

    .line 91
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/j;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/j;->b:Landroidx/media2/exoplayer/external/source/hls/k;

    iget v1, p0, Landroidx/media2/exoplayer/external/source/hls/j;->c:I

    .line 3554
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/hls/k;->k()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3558
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/k;->i:[Landroidx/media2/exoplayer/external/source/ak;

    aget-object v1, v2, v1

    .line 3559
    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/source/hls/k;->y:Z

    if-eqz v0, :cond_0

    .line 4257
    iget-object v0, v1, Landroidx/media2/exoplayer/external/source/ak;->a:Landroidx/media2/exoplayer/external/source/aj;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/aj;->e()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    .line 4316
    iget-object p1, v1, Landroidx/media2/exoplayer/external/source/ak;->a:Landroidx/media2/exoplayer/external/source/aj;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/aj;->h()I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 3562
    invoke-virtual {v1, p1, p2, v0}, Landroidx/media2/exoplayer/external/source/ak;->a(JZ)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Landroidx/media2/exoplayer/external/x;Landroidx/media2/exoplayer/external/b/e;Z)I
    .locals 12

    .line 80
    iget v0, p0, Landroidx/media2/exoplayer/external/source/hls/j;->c:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    const/4 p1, 0x4

    .line 81
    invoke-virtual {p2, p1}, Landroidx/media2/exoplayer/external/b/e;->a(I)V

    const/4 p1, -0x4

    return p1

    .line 84
    :cond_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/j;->d()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 85
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/j;->b:Landroidx/media2/exoplayer/external/source/hls/k;

    iget v2, p0, Landroidx/media2/exoplayer/external/source/hls/j;->c:I

    .line 2508
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/hls/k;->k()Z

    move-result v3

    if-nez v3, :cond_a

    .line 2513
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_5

    const/4 v1, 0x0

    .line 2515
    :goto_0
    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/hls/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v1, v4, :cond_3

    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/hls/k;->e:Ljava/util/ArrayList;

    .line 2516
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/source/hls/h;

    .line 2928
    iget v4, v4, Landroidx/media2/exoplayer/external/source/hls/h;->j:I

    .line 2929
    iget-object v6, v0, Landroidx/media2/exoplayer/external/source/hls/k;->i:[Landroidx/media2/exoplayer/external/source/ak;

    array-length v6, v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    .line 2931
    iget-object v8, v0, Landroidx/media2/exoplayer/external/source/hls/k;->u:[Z

    aget-boolean v8, v8, v7

    if-eqz v8, :cond_1

    iget-object v8, v0, Landroidx/media2/exoplayer/external/source/hls/k;->i:[Landroidx/media2/exoplayer/external/source/ak;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/source/ak;->a()I

    move-result v8

    if-ne v8, v4, :cond_1

    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v5, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2519
    :cond_3
    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/hls/k;->e:Ljava/util/ArrayList;

    invoke-static {v4, v3, v1}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/util/List;II)V

    .line 2520
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/hls/h;

    .line 2521
    iget-object v11, v1, Landroidx/media2/exoplayer/external/source/hls/h;->c:Landroidx/media2/exoplayer/external/Format;

    .line 2522
    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/hls/k;->p:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v11, v4}, Landroidx/media2/exoplayer/external/Format;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2523
    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/hls/k;->d:Landroidx/media2/exoplayer/external/source/u$a;

    iget v5, v0, Landroidx/media2/exoplayer/external/source/hls/k;->a:I

    iget v7, v1, Landroidx/media2/exoplayer/external/source/hls/h;->d:I

    iget-object v8, v1, Landroidx/media2/exoplayer/external/source/hls/h;->e:Ljava/lang/Object;

    iget-wide v9, v1, Landroidx/media2/exoplayer/external/source/hls/h;->f:J

    move-object v6, v11

    invoke-virtual/range {v4 .. v10}, Landroidx/media2/exoplayer/external/source/u$a;->a(ILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;J)V

    .line 2527
    :cond_4
    iput-object v11, v0, Landroidx/media2/exoplayer/external/source/hls/k;->p:Landroidx/media2/exoplayer/external/Format;

    .line 2530
    :cond_5
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/k;->j:[Landroidx/media2/exoplayer/external/source/j;

    aget-object v4, v1, v2

    iget-boolean v8, v0, Landroidx/media2/exoplayer/external/source/hls/k;->y:Z

    iget-wide v9, v0, Landroidx/media2/exoplayer/external/source/hls/k;->v:J

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    .line 2531
    invoke-virtual/range {v4 .. v10}, Landroidx/media2/exoplayer/external/source/j;->a(Landroidx/media2/exoplayer/external/x;Landroidx/media2/exoplayer/external/b/e;ZZJ)I

    move-result p2

    const/4 p3, -0x5

    if-ne p2, p3, :cond_9

    .line 2534
    iget-object p3, p1, Landroidx/media2/exoplayer/external/x;->c:Landroidx/media2/exoplayer/external/Format;

    .line 2535
    iget v1, v0, Landroidx/media2/exoplayer/external/source/hls/k;->k:I

    if-ne v2, v1, :cond_8

    .line 2537
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/k;->i:[Landroidx/media2/exoplayer/external/source/ak;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/ak;->a()I

    move-result v1

    .line 2539
    :goto_3
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_6

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/source/hls/h;

    iget v2, v2, Landroidx/media2/exoplayer/external/source/hls/h;->j:I

    if-eq v2, v1, :cond_6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2543
    :cond_6
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_7

    .line 2544
    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/hls/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/hls/h;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/hls/h;->c:Landroidx/media2/exoplayer/external/Format;

    goto :goto_4

    .line 2545
    :cond_7
    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/hls/k;->o:Landroidx/media2/exoplayer/external/Format;

    .line 2546
    :goto_4
    invoke-virtual {p3, v0}, Landroidx/media2/exoplayer/external/Format;->copyWithManifestFormatInfo(Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p3

    .line 2548
    :cond_8
    iput-object p3, p1, Landroidx/media2/exoplayer/external/x;->c:Landroidx/media2/exoplayer/external/Format;

    :cond_9
    return p2

    :cond_a
    return v1
.end method

.method public final a()Z
    .locals 5

    .line 62
    iget v0, p0, Landroidx/media2/exoplayer/external/source/hls/j;->c:I

    const/4 v1, 0x1

    const/4 v2, -0x3

    if-eq v0, v2, :cond_2

    .line 63
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/j;->d()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/j;->b:Landroidx/media2/exoplayer/external/source/hls/k;

    iget v3, p0, Landroidx/media2/exoplayer/external/source/hls/j;->c:I

    .line 1493
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/hls/k;->k()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/hls/k;->j:[Landroidx/media2/exoplayer/external/source/j;

    aget-object v3, v4, v3

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/source/hls/k;->y:Z

    invoke-virtual {v3, v0}, Landroidx/media2/exoplayer/external/source/j;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v1
.end method

.method public final b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget v0, p0, Landroidx/media2/exoplayer/external/source/hls/j;->c:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 72
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/j;->b:Landroidx/media2/exoplayer/external/source/hls/k;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/hls/k;->c()V

    return-void

    :cond_0
    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    .line 74
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/j;->b:Landroidx/media2/exoplayer/external/source/hls/k;

    .line 2497
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/hls/k;->c()V

    .line 2498
    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/hls/k;->j:[Landroidx/media2/exoplayer/external/source/j;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/j;->b()V

    :cond_1
    return-void

    .line 69
    :cond_2
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/SampleQueueMappingException;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/j;->b:Landroidx/media2/exoplayer/external/source/hls/k;

    .line 2248
    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/hls/k;->r:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 70
    iget v2, p0, Landroidx/media2/exoplayer/external/source/hls/j;->a:I

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    iget-object v1, v1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/source/hls/SampleQueueMappingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()V
    .locals 2

    .line 47
    iget v0, p0, Landroidx/media2/exoplayer/external/source/hls/j;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    .line 48
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/j;->b:Landroidx/media2/exoplayer/external/source/hls/k;

    iget v1, p0, Landroidx/media2/exoplayer/external/source/hls/j;->a:I

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/source/hls/k;->a(I)I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/source/hls/j;->c:I

    return-void
.end method
