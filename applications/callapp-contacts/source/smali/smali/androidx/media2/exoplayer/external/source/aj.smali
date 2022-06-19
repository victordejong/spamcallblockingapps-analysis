.class public final Landroidx/media2/exoplayer/external/source/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/aj$a;
    }
.end annotation


# instance fields
.field a:[I

.field b:I

.field c:I

.field private d:I

.field private e:[J

.field private f:[I

.field private g:[I

.field private h:[J

.field private i:[Landroidx/media2/exoplayer/external/extractor/q$a;

.field private j:[Landroidx/media2/exoplayer/external/Format;

.field private k:I

.field private l:I

.field private m:I

.field private n:J

.field private o:J

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Landroidx/media2/exoplayer/external/Format;

.field private t:Landroidx/media2/exoplayer/external/Format;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 75
    iput v0, p0, Landroidx/media2/exoplayer/external/source/aj;->d:I

    new-array v1, v0, [I

    .line 76
    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/aj;->a:[I

    new-array v1, v0, [J

    .line 77
    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/aj;->e:[J

    new-array v1, v0, [J

    .line 78
    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/aj;->h:[J

    new-array v1, v0, [I

    .line 79
    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/aj;->g:[I

    new-array v1, v0, [I

    .line 80
    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/aj;->f:[I

    new-array v1, v0, [Landroidx/media2/exoplayer/external/extractor/q$a;

    .line 81
    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/aj;->i:[Landroidx/media2/exoplayer/external/extractor/q$a;

    new-array v0, v0, [Landroidx/media2/exoplayer/external/Format;

    .line 82
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/aj;->j:[Landroidx/media2/exoplayer/external/Format;

    const-wide/high16 v0, -0x8000000000000000L

    .line 83
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/aj;->n:J

    .line 84
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/aj;->o:J

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/aj;->r:Z

    .line 86
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/aj;->q:Z

    return-void
.end method

.method private a(IIJZ)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_3

    .line 559
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/aj;->h:[J

    aget-wide v4, v3, p1

    cmp-long v3, v4, p3

    if-gtz v3, :cond_3

    if-eqz p5, :cond_0

    .line 560
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/aj;->g:[I

    aget v3, v3, p1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 565
    iget v3, p0, Landroidx/media2/exoplayer/external/source/aj;->d:I

    if-ne p1, v3, :cond_2

    const/4 p1, 0x0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private b(I)J
    .locals 4

    .line 579
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/aj;->n:J

    .line 580
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/aj;->c(I)J

    move-result-wide v2

    .line 579
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/aj;->n:J

    .line 581
    iget v0, p0, Landroidx/media2/exoplayer/external/source/aj;->k:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/source/aj;->k:I

    .line 582
    iget v1, p0, Landroidx/media2/exoplayer/external/source/aj;->l:I

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/media2/exoplayer/external/source/aj;->l:I

    .line 583
    iget v1, p0, Landroidx/media2/exoplayer/external/source/aj;->m:I

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/media2/exoplayer/external/source/aj;->m:I

    .line 584
    iget v2, p0, Landroidx/media2/exoplayer/external/source/aj;->d:I

    if-lt v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 585
    iput v1, p0, Landroidx/media2/exoplayer/external/source/aj;->m:I

    .line 587
    :cond_0
    iget v1, p0, Landroidx/media2/exoplayer/external/source/aj;->b:I

    sub-int/2addr v1, p1

    iput v1, p0, Landroidx/media2/exoplayer/external/source/aj;->b:I

    if-gez v1, :cond_1

    const/4 p1, 0x0

    .line 589
    iput p1, p0, Landroidx/media2/exoplayer/external/source/aj;->b:I

    :cond_1
    if-nez v0, :cond_3

    .line 592
    iget p1, p0, Landroidx/media2/exoplayer/external/source/aj;->m:I

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, p1

    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 593
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/aj;->e:[J

    aget-wide v0, p1, v2

    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/aj;->f:[I

    aget p1, p1, v2

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0

    .line 595
    :cond_3
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/aj;->e:[J

    iget v0, p0, Landroidx/media2/exoplayer/external/source/aj;->m:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method private c(I)J
    .locals 7

    const-wide/high16 v0, -0x8000000000000000L

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, p1, -0x1

    .line 612
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/source/aj;->a(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_2

    .line 614
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/aj;->h:[J

    aget-wide v5, v4, v2

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 615
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/aj;->g:[I

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2

    add-int/lit8 v2, v2, -0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 620
    iget v2, p0, Landroidx/media2/exoplayer/external/source/aj;->d:I

    add-int/lit8 v2, v2, -0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 117
    iget v0, p0, Landroidx/media2/exoplayer/external/source/aj;->l:I

    iget v1, p0, Landroidx/media2/exoplayer/external/source/aj;->k:I

    add-int/2addr v0, v1

    return v0
.end method

.method final a(I)I
    .locals 1

    .line 632
    iget v0, p0, Landroidx/media2/exoplayer/external/source/aj;->m:I

    add-int/2addr v0, p1

    .line 633
    iget p1, p0, Landroidx/media2/exoplayer/external/source/aj;->d:I

    if-ge v0, p1, :cond_0

    return v0

    :cond_0
    sub-int/2addr v0, p1

    return v0
.end method

.method public final declared-synchronized a(JZZ)I
    .locals 7

    monitor-enter p0

    .line 333
    :try_start_0
    iget p3, p0, Landroidx/media2/exoplayer/external/source/aj;->b:I

    invoke-virtual {p0, p3}, Landroidx/media2/exoplayer/external/source/aj;->a(I)I

    move-result v1

    .line 334
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/aj;->c()Z

    move-result p3

    const/4 v6, -0x1

    if-eqz p3, :cond_2

    iget-object p3, p0, Landroidx/media2/exoplayer/external/source/aj;->h:[J

    aget-wide v2, p3, v1

    cmp-long p3, p1, v2

    if-ltz p3, :cond_2

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/aj;->o:J

    cmp-long p3, p1, v2

    if-lez p3, :cond_0

    if-nez p4, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    iget p3, p0, Landroidx/media2/exoplayer/external/source/aj;->k:I

    iget p4, p0, Landroidx/media2/exoplayer/external/source/aj;->b:I

    sub-int v2, p3, p4

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/source/aj;->a(IIJZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v6, :cond_1

    .line 340
    monitor-exit p0

    return v6

    .line 342
    :cond_1
    :try_start_1
    iget p2, p0, Landroidx/media2/exoplayer/external/source/aj;->b:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media2/exoplayer/external/source/aj;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    monitor-exit p0

    return p1

    .line 336
    :cond_2
    :goto_0
    monitor-exit p0

    return v6

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Landroidx/media2/exoplayer/external/Format;)I
    .locals 2

    monitor-enter p0

    .line 234
    :try_start_0
    iget v0, p0, Landroidx/media2/exoplayer/external/source/aj;->b:I

    iget v1, p0, Landroidx/media2/exoplayer/external/source/aj;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    .line 235
    monitor-exit p0

    return p1

    .line 237
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/aj;->a(I)I

    move-result v0

    .line 238
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/aj;->j:[Landroidx/media2/exoplayer/external/Format;

    aget-object v1, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v1, p1, :cond_1

    const/4 p1, 0x1

    .line 239
    monitor-exit p0

    return p1

    .line 241
    :cond_1
    :try_start_2
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/aj;->g:[I

    aget p1, p1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    .line 242
    monitor-exit p0

    return p1

    :cond_2
    const/4 p1, 0x2

    .line 241
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Landroidx/media2/exoplayer/external/x;Landroidx/media2/exoplayer/external/b/e;ZZZLandroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/source/aj$a;)I
    .locals 4

    monitor-enter p0

    .line 281
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/aj;->c()Z

    move-result v0

    const/4 v1, -0x5

    const/4 v2, -0x3

    const/4 v3, -0x4

    if-nez v0, :cond_4

    if-nez p5, :cond_3

    .line 282
    iget-boolean p4, p0, Landroidx/media2/exoplayer/external/source/aj;->p:Z

    if-eqz p4, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/aj;->s:Landroidx/media2/exoplayer/external/Format;

    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    if-eq p2, p6, :cond_2

    .line 286
    :cond_1
    iput-object p2, p1, Landroidx/media2/exoplayer/external/x;->c:Landroidx/media2/exoplayer/external/Format;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    monitor-exit p0

    return v1

    .line 289
    :cond_2
    monitor-exit p0

    return v2

    :cond_3
    :goto_0
    const/4 p1, 0x4

    .line 1074
    :try_start_1
    iput p1, p2, Landroidx/media2/exoplayer/external/b/a;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    monitor-exit p0

    return v3

    .line 293
    :cond_4
    :try_start_2
    iget p5, p0, Landroidx/media2/exoplayer/external/source/aj;->b:I

    invoke-virtual {p0, p5}, Landroidx/media2/exoplayer/external/source/aj;->a(I)I

    move-result p5

    if-nez p3, :cond_8

    .line 294
    iget-object p3, p0, Landroidx/media2/exoplayer/external/source/aj;->j:[Landroidx/media2/exoplayer/external/Format;

    aget-object p3, p3, p5

    if-eq p3, p6, :cond_5

    goto :goto_1

    :cond_5
    if-eqz p4, :cond_6

    .line 299
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/aj;->g:[I

    aget p1, p1, p5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/high16 p3, 0x40000000    # 2.0f

    and-int/2addr p1, p3

    if-eqz p1, :cond_6

    .line 300
    monitor-exit p0

    return v2

    .line 303
    :cond_6
    :try_start_3
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/aj;->g:[I

    aget p1, p1, p5

    .line 2074
    iput p1, p2, Landroidx/media2/exoplayer/external/b/a;->a:I

    .line 304
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/aj;->h:[J

    aget-wide p3, p1, p5

    iput-wide p3, p2, Landroidx/media2/exoplayer/external/b/e;->d:J

    .line 305
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/b/e;->f()Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_7

    .line 306
    monitor-exit p0

    return v3

    .line 309
    :cond_7
    :try_start_4
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/aj;->f:[I

    aget p1, p1, p5

    iput p1, p7, Landroidx/media2/exoplayer/external/source/aj$a;->a:I

    .line 310
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/aj;->e:[J

    aget-wide p2, p1, p5

    iput-wide p2, p7, Landroidx/media2/exoplayer/external/source/aj$a;->b:J

    .line 311
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/aj;->i:[Landroidx/media2/exoplayer/external/extractor/q$a;

    aget-object p1, p1, p5

    iput-object p1, p7, Landroidx/media2/exoplayer/external/source/aj$a;->c:Landroidx/media2/exoplayer/external/extractor/q$a;

    .line 313
    iget p1, p0, Landroidx/media2/exoplayer/external/source/aj;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media2/exoplayer/external/source/aj;->b:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 314
    monitor-exit p0

    return v3

    .line 295
    :cond_8
    :goto_1
    :try_start_5
    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/aj;->j:[Landroidx/media2/exoplayer/external/Format;

    aget-object p2, p2, p5

    iput-object p2, p1, Landroidx/media2/exoplayer/external/x;->c:Landroidx/media2/exoplayer/external/Format;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 296
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(JIJILandroidx/media2/exoplayer/external/extractor/q$a;)V
    .locals 5

    monitor-enter p0

    .line 450
    :try_start_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/aj;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_0

    .line 452
    monitor-exit p0

    return-void

    .line 454
    :cond_0
    :try_start_1
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/source/aj;->q:Z

    .line 456
    :cond_1
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/aj;->r:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    const/high16 v0, 0x20000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 458
    :goto_1
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/aj;->p:Z

    .line 459
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/source/aj;->o:J

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/media2/exoplayer/external/source/aj;->o:J

    .line 461
    iget v0, p0, Landroidx/media2/exoplayer/external/source/aj;->k:I

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/aj;->a(I)I

    move-result v0

    .line 462
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/aj;->h:[J

    aput-wide p1, v3, v0

    .line 463
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/aj;->e:[J

    aput-wide p4, p1, v0

    .line 464
    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/aj;->f:[I

    aput p6, p2, v0

    .line 465
    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/aj;->g:[I

    aput p3, p2, v0

    .line 466
    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/aj;->i:[Landroidx/media2/exoplayer/external/extractor/q$a;

    aput-object p7, p2, v0

    .line 467
    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/aj;->j:[Landroidx/media2/exoplayer/external/Format;

    iget-object p3, p0, Landroidx/media2/exoplayer/external/source/aj;->s:Landroidx/media2/exoplayer/external/Format;

    aput-object p3, p2, v0

    .line 468
    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/aj;->a:[I

    iget p4, p0, Landroidx/media2/exoplayer/external/source/aj;->c:I

    aput p4, p2, v0

    .line 469
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/aj;->t:Landroidx/media2/exoplayer/external/Format;

    .line 471
    iget p2, p0, Landroidx/media2/exoplayer/external/source/aj;->k:I

    add-int/2addr p2, v2

    iput p2, p0, Landroidx/media2/exoplayer/external/source/aj;->k:I

    .line 472
    iget p3, p0, Landroidx/media2/exoplayer/external/source/aj;->d:I

    if-ne p2, p3, :cond_4

    add-int/lit16 p2, p3, 0x3e8

    .line 475
    new-array p4, p2, [I

    .line 476
    new-array p5, p2, [J

    .line 477
    new-array p6, p2, [J

    .line 478
    new-array p7, p2, [I

    .line 479
    new-array v0, p2, [I

    .line 480
    new-array v2, p2, [Landroidx/media2/exoplayer/external/extractor/q$a;

    .line 481
    new-array v3, p2, [Landroidx/media2/exoplayer/external/Format;

    .line 482
    iget v4, p0, Landroidx/media2/exoplayer/external/source/aj;->m:I

    sub-int/2addr p3, v4

    .line 483
    invoke-static {p1, v4, p5, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 484
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/aj;->h:[J

    iget v4, p0, Landroidx/media2/exoplayer/external/source/aj;->m:I

    invoke-static {p1, v4, p6, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 485
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/aj;->g:[I

    iget v4, p0, Landroidx/media2/exoplayer/external/source/aj;->m:I

    invoke-static {p1, v4, p7, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 486
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/aj;->f:[I

    iget v4, p0, Landroidx/media2/exoplayer/external/source/aj;->m:I

    invoke-static {p1, v4, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 487
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/aj;->i:[Landroidx/media2/exoplayer/external/extractor/q$a;

    iget v4, p0, Landroidx/media2/exoplayer/external/source/aj;->m:I

    invoke-static {p1, v4, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 488
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/aj;->j:[Landroidx/media2/exoplayer/external/Format;

    iget v4, p0, Landroidx/media2/exoplayer/external/source/aj;->m:I

    invoke-static {p1, v4, v3, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 489
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/aj;->a:[I

    iget v4, p0, Landroidx/media2/exoplayer/external/source/aj;->m:I

    invoke-static {p1, v4, p4, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 490
    iget p1, p0, Landroidx/media2/exoplayer/external/source/aj;->m:I

    .line 491
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/aj;->e:[J

    invoke-static {v4, v1, p5, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 492
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/aj;->h:[J

    invoke-static {v4, v1, p6, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 493
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/aj;->g:[I

    invoke-static {v4, v1, p7, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 494
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/aj;->f:[I

    invoke-static {v4, v1, v0, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 495
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/aj;->i:[Landroidx/media2/exoplayer/external/extractor/q$a;

    invoke-static {v4, v1, v2, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 496
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/aj;->j:[Landroidx/media2/exoplayer/external/Format;

    invoke-static {v4, v1, v3, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 497
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/aj;->a:[I

    invoke-static {v4, v1, p4, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 498
    iput-object p5, p0, Landroidx/media2/exoplayer/external/source/aj;->e:[J

    .line 499
    iput-object p6, p0, Landroidx/media2/exoplayer/external/source/aj;->h:[J

    .line 500
    iput-object p7, p0, Landroidx/media2/exoplayer/external/source/aj;->g:[I

    .line 501
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/aj;->f:[I

    .line 502
    iput-object v2, p0, Landroidx/media2/exoplayer/external/source/aj;->i:[Landroidx/media2/exoplayer/external/extractor/q$a;

    .line 503
    iput-object v3, p0, Landroidx/media2/exoplayer/external/source/aj;->j:[Landroidx/media2/exoplayer/external/Format;

    .line 504
    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/aj;->a:[I

    .line 505
    iput v1, p0, Landroidx/media2/exoplayer/external/source/aj;->m:I

    .line 506
    iget p1, p0, Landroidx/media2/exoplayer/external/source/aj;->d:I

    iput p1, p0, Landroidx/media2/exoplayer/external/source/aj;->k:I

    .line 507
    iput p2, p0, Landroidx/media2/exoplayer/external/source/aj;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Z)V
    .locals 4

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Landroidx/media2/exoplayer/external/source/aj;->k:I

    .line 99
    iput v0, p0, Landroidx/media2/exoplayer/external/source/aj;->l:I

    .line 100
    iput v0, p0, Landroidx/media2/exoplayer/external/source/aj;->m:I

    .line 101
    iput v0, p0, Landroidx/media2/exoplayer/external/source/aj;->b:I

    const/4 v1, 0x1

    .line 102
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/source/aj;->q:Z

    const-wide/high16 v2, -0x8000000000000000L

    .line 103
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/source/aj;->n:J

    .line 104
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/source/aj;->o:J

    .line 105
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/aj;->p:Z

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/aj;->t:Landroidx/media2/exoplayer/external/Format;

    if-eqz p1, :cond_0

    .line 108
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/aj;->s:Landroidx/media2/exoplayer/external/Format;

    .line 109
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/source/aj;->r:Z

    :cond_0
    return-void
.end method

.method public final declared-synchronized a(J)Z
    .locals 7

    monitor-enter p0

    .line 519
    :try_start_0
    iget v0, p0, Landroidx/media2/exoplayer/external/source/aj;->k:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 520
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/source/aj;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, p1, v3

    monitor-exit p0

    if-lez v0, :cond_0

    return v2

    :cond_0
    return v1

    .line 522
    :cond_1
    :try_start_1
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/source/aj;->n:J

    iget v0, p0, Landroidx/media2/exoplayer/external/source/aj;->b:I

    .line 523
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/aj;->c(I)J

    move-result-wide v5

    .line 522
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v3, p1

    if-ltz v0, :cond_2

    .line 525
    monitor-exit p0

    return v1

    .line 527
    :cond_2
    :try_start_2
    iget v0, p0, Landroidx/media2/exoplayer/external/source/aj;->k:I

    add-int/lit8 v3, v0, -0x1

    .line 528
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/source/aj;->a(I)I

    move-result v3

    .line 529
    :cond_3
    :goto_0
    iget v4, p0, Landroidx/media2/exoplayer/external/source/aj;->b:I

    if-le v0, v4, :cond_4

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/aj;->h:[J

    aget-wide v5, v4, v3

    cmp-long v4, v5, p1

    if-ltz v4, :cond_4

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v3, -0x1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 533
    iget v3, p0, Landroidx/media2/exoplayer/external/source/aj;->d:I

    sub-int/2addr v3, v2

    goto :goto_0

    .line 536
    :cond_4
    iget p1, p0, Landroidx/media2/exoplayer/external/source/aj;->l:I

    add-int/2addr p1, v0

    .line 2128
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/aj;->a()I

    move-result p2

    sub-int/2addr p2, p1

    if-ltz p2, :cond_5

    .line 2129
    iget p1, p0, Landroidx/media2/exoplayer/external/source/aj;->k:I

    iget v0, p0, Landroidx/media2/exoplayer/external/source/aj;->b:I

    sub-int/2addr p1, v0

    if-gt p2, p1, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    .line 2130
    iget p1, p0, Landroidx/media2/exoplayer/external/source/aj;->k:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroidx/media2/exoplayer/external/source/aj;->k:I

    .line 2131
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/source/aj;->n:J

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/aj;->c(I)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/media2/exoplayer/external/source/aj;->o:J

    if-nez p2, :cond_6

    .line 2132
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/source/aj;->p:Z

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    :cond_6
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/source/aj;->p:Z

    .line 2133
    iget p1, p0, Landroidx/media2/exoplayer/external/source/aj;->k:I

    if-eqz p1, :cond_7

    sub-int/2addr p1, v2

    .line 2136
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/aj;->a(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 537
    :cond_7
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()I
    .locals 2

    .line 158
    iget v0, p0, Landroidx/media2/exoplayer/external/source/aj;->l:I

    iget v1, p0, Landroidx/media2/exoplayer/external/source/aj;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final declared-synchronized b(JZZ)J
    .locals 10

    monitor-enter p0

    .line 386
    :try_start_0
    iget v0, p0, Landroidx/media2/exoplayer/external/source/aj;->k:I

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_3

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/aj;->h:[J

    iget v5, p0, Landroidx/media2/exoplayer/external/source/aj;->m:I

    aget-wide v6, v3, v5

    cmp-long v3, p1, v6

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 389
    iget p4, p0, Landroidx/media2/exoplayer/external/source/aj;->b:I

    if-eq p4, v0, :cond_1

    add-int/lit8 v0, p4, 0x1

    :cond_1
    move v6, v0

    move-object v4, p0

    move-wide v7, p1

    move v9, p3

    .line 390
    invoke-direct/range {v4 .. v9}, Landroidx/media2/exoplayer/external/source/aj;->a(IIJZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    .line 392
    monitor-exit p0

    return-wide v1

    .line 394
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/aj;->b(I)J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide p1

    .line 387
    :cond_3
    :goto_0
    monitor-exit p0

    return-wide v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Landroidx/media2/exoplayer/external/Format;)Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 427
    :try_start_0
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/aj;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    monitor-exit p0

    return v1

    .line 430
    :cond_0
    :try_start_1
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/source/aj;->r:Z

    .line 431
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/aj;->s:Landroidx/media2/exoplayer/external/Format;

    invoke-static {p1, v2}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 435
    monitor-exit p0

    return v1

    .line 436
    :cond_1
    :try_start_2
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/aj;->t:Landroidx/media2/exoplayer/external/Format;

    invoke-static {p1, v1}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 440
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/aj;->t:Landroidx/media2/exoplayer/external/Format;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/aj;->s:Landroidx/media2/exoplayer/external/Format;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 441
    monitor-exit p0

    return v0

    .line 443
    :cond_2
    :try_start_3
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/aj;->s:Landroidx/media2/exoplayer/external/Format;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 444
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c()Z
    .locals 2

    monitor-enter p0

    .line 176
    :try_start_0
    iget v0, p0, Landroidx/media2/exoplayer/external/source/aj;->b:I

    iget v1, p0, Landroidx/media2/exoplayer/external/source/aj;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Landroidx/media2/exoplayer/external/Format;
    .locals 1

    monitor-enter p0

    .line 183
    :try_start_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/aj;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/aj;->s:Landroidx/media2/exoplayer/external/Format;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()J
    .locals 2

    monitor-enter p0

    .line 198
    :try_start_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/aj;->o:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Z
    .locals 1

    monitor-enter p0

    .line 211
    :try_start_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/aj;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 223
    :try_start_0
    iput v0, p0, Landroidx/media2/exoplayer/external/source/aj;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()I
    .locals 2

    monitor-enter p0

    .line 352
    :try_start_0
    iget v0, p0, Landroidx/media2/exoplayer/external/source/aj;->k:I

    iget v1, p0, Landroidx/media2/exoplayer/external/source/aj;->b:I

    sub-int v1, v0, v1

    .line 353
    iput v0, p0, Landroidx/media2/exoplayer/external/source/aj;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()J
    .locals 2

    monitor-enter p0

    .line 417
    :try_start_0
    iget v0, p0, Landroidx/media2/exoplayer/external/source/aj;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    .line 418
    monitor-exit p0

    return-wide v0

    .line 420
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/aj;->b(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
