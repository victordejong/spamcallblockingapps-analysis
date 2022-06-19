.class public final Lcom/google/android/exoplayer2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/i$a;
    }
.end annotation


# instance fields
.field private final a:F

.field private final b:F

.field private final c:J

.field private final d:F

.field private final e:J

.field private final f:J

.field private final g:F

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:F

.field private o:F

.field private p:F

.field private q:J

.field private r:J

.field private s:J


# direct methods
.method private constructor <init>(FFJFJJF)V
    .locals 0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput p1, p0, Lcom/google/android/exoplayer2/i;->a:F

    .line 276
    iput p2, p0, Lcom/google/android/exoplayer2/i;->b:F

    .line 277
    iput-wide p3, p0, Lcom/google/android/exoplayer2/i;->c:J

    .line 278
    iput p5, p0, Lcom/google/android/exoplayer2/i;->d:F

    .line 279
    iput-wide p6, p0, Lcom/google/android/exoplayer2/i;->e:J

    .line 280
    iput-wide p8, p0, Lcom/google/android/exoplayer2/i;->f:J

    .line 281
    iput p10, p0, Lcom/google/android/exoplayer2/i;->g:F

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    .line 282
    iput-wide p3, p0, Lcom/google/android/exoplayer2/i;->h:J

    .line 283
    iput-wide p3, p0, Lcom/google/android/exoplayer2/i;->i:J

    .line 284
    iput-wide p3, p0, Lcom/google/android/exoplayer2/i;->k:J

    .line 285
    iput-wide p3, p0, Lcom/google/android/exoplayer2/i;->l:J

    .line 286
    iput p1, p0, Lcom/google/android/exoplayer2/i;->o:F

    .line 287
    iput p2, p0, Lcom/google/android/exoplayer2/i;->n:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 288
    iput p1, p0, Lcom/google/android/exoplayer2/i;->p:F

    .line 289
    iput-wide p3, p0, Lcom/google/android/exoplayer2/i;->q:J

    .line 290
    iput-wide p3, p0, Lcom/google/android/exoplayer2/i;->j:J

    .line 291
    iput-wide p3, p0, Lcom/google/android/exoplayer2/i;->m:J

    .line 292
    iput-wide p3, p0, Lcom/google/android/exoplayer2/i;->r:J

    .line 293
    iput-wide p3, p0, Lcom/google/android/exoplayer2/i;->s:J

    return-void
.end method

.method synthetic constructor <init>(FFJFJJFLcom/google/android/exoplayer2/i$1;)V
    .locals 0

    .line 48
    invoke-direct/range {p0 .. p10}, Lcom/google/android/exoplayer2/i;-><init>(FFJFJJF)V

    return-void
.end method

.method private static a(JJF)J
    .locals 0

    long-to-float p0, p0

    mul-float p0, p0, p4

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p4

    long-to-float p2, p2

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    float-to-long p0, p0

    return-wide p0
.end method

.method private c()V
    .locals 7

    .line 364
    iget-wide v0, p0, Lcom/google/android/exoplayer2/i;->h:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 366
    iget-wide v4, p0, Lcom/google/android/exoplayer2/i;->i:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    move-wide v0, v4

    .line 369
    :cond_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/i;->k:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    move-wide v0, v4

    .line 372
    :cond_1
    iget-wide v4, p0, Lcom/google/android/exoplayer2/i;->l:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_3

    cmp-long v6, v0, v4

    if-lez v6, :cond_3

    move-wide v0, v4

    goto :goto_0

    :cond_2
    move-wide v0, v2

    .line 376
    :cond_3
    :goto_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/i;->j:J

    cmp-long v6, v4, v0

    if-nez v6, :cond_4

    return-void

    .line 379
    :cond_4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/i;->j:J

    .line 380
    iput-wide v0, p0, Lcom/google/android/exoplayer2/i;->m:J

    .line 381
    iput-wide v2, p0, Lcom/google/android/exoplayer2/i;->r:J

    .line 382
    iput-wide v2, p0, Lcom/google/android/exoplayer2/i;->s:J

    .line 383
    iput-wide v2, p0, Lcom/google/android/exoplayer2/i;->q:J

    return-void
.end method


# virtual methods
.method public final a(JJ)F
    .locals 16

    move-object/from16 v0, p0

    .line 333
    iget-wide v1, v0, Lcom/google/android/exoplayer2/i;->h:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/high16 v5, 0x3f800000    # 1.0f

    cmp-long v6, v1, v3

    if-nez v6, :cond_0

    return v5

    :cond_0
    sub-long v1, p1, p3

    .line 1388
    iget-wide v6, v0, Lcom/google/android/exoplayer2/i;->r:J

    cmp-long v8, v6, v3

    if-nez v8, :cond_1

    .line 1389
    iput-wide v1, v0, Lcom/google/android/exoplayer2/i;->r:J

    const-wide/16 v1, 0x0

    .line 1390
    iput-wide v1, v0, Lcom/google/android/exoplayer2/i;->s:J

    goto :goto_0

    .line 1394
    :cond_1
    iget v8, v0, Lcom/google/android/exoplayer2/i;->g:F

    .line 1397
    invoke-static {v6, v7, v1, v2, v8}, Lcom/google/android/exoplayer2/i;->a(JJF)J

    move-result-wide v6

    .line 1395
    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/exoplayer2/i;->r:J

    sub-long/2addr v1, v6

    .line 1402
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 1403
    iget-wide v6, v0, Lcom/google/android/exoplayer2/i;->s:J

    iget v8, v0, Lcom/google/android/exoplayer2/i;->g:F

    .line 1404
    invoke-static {v6, v7, v1, v2, v8}, Lcom/google/android/exoplayer2/i;->a(JJF)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/exoplayer2/i;->s:J

    .line 339
    :goto_0
    iget-wide v1, v0, Lcom/google/android/exoplayer2/i;->q:J

    cmp-long v6, v1, v3

    if-eqz v6, :cond_2

    .line 340
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v6, v0, Lcom/google/android/exoplayer2/i;->q:J

    sub-long/2addr v1, v6

    iget-wide v6, v0, Lcom/google/android/exoplayer2/i;->c:J

    cmp-long v8, v1, v6

    if-gez v8, :cond_2

    .line 341
    iget v1, v0, Lcom/google/android/exoplayer2/i;->p:F

    return v1

    .line 343
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/exoplayer2/i;->q:J

    .line 1413
    iget-wide v1, v0, Lcom/google/android/exoplayer2/i;->r:J

    const-wide/16 v6, 0x3

    iget-wide v8, v0, Lcom/google/android/exoplayer2/i;->s:J

    mul-long v8, v8, v6

    add-long v14, v1, v8

    .line 1415
    iget-wide v1, v0, Lcom/google/android/exoplayer2/i;->m:J

    cmp-long v6, v1, v14

    if-lez v6, :cond_5

    .line 1419
    iget-wide v1, v0, Lcom/google/android/exoplayer2/i;->c:J

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/f;->b(J)J

    move-result-wide v1

    .line 1420
    iget v3, v0, Lcom/google/android/exoplayer2/i;->p:F

    sub-float/2addr v3, v5

    long-to-float v1, v1

    mul-float v3, v3, v1

    float-to-long v2, v3

    .line 1422
    iget v4, v0, Lcom/google/android/exoplayer2/i;->n:F

    sub-float/2addr v4, v5

    mul-float v4, v4, v1

    float-to-long v6, v4

    add-long/2addr v2, v6

    const/4 v1, 0x3

    new-array v4, v1, [J

    const/4 v6, 0x0

    aput-wide v14, v4, v6

    .line 1424
    iget-wide v7, v0, Lcom/google/android/exoplayer2/i;->j:J

    const/4 v9, 0x1

    aput-wide v7, v4, v9

    const/4 v7, 0x2

    iget-wide v10, v0, Lcom/google/android/exoplayer2/i;->m:J

    sub-long/2addr v10, v2

    aput-wide v10, v4, v7

    .line 2213
    invoke-static {v9}, Lcom/google/common/base/m;->a(Z)V

    .line 2214
    aget-wide v2, v4, v6

    :goto_1
    if-ge v9, v1, :cond_4

    .line 2216
    aget-wide v6, v4, v9

    cmp-long v8, v6, v2

    if-lez v8, :cond_3

    .line 2217
    aget-wide v2, v4, v9

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1425
    :cond_4
    iput-wide v2, v0, Lcom/google/android/exoplayer2/i;->m:J

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 1430
    iget v2, v0, Lcom/google/android/exoplayer2/i;->p:F

    sub-float/2addr v2, v5

    .line 1431
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, v0, Lcom/google/android/exoplayer2/i;->d:F

    div-float/2addr v1, v2

    float-to-long v1, v1

    sub-long v10, p1, v1

    .line 1432
    iget-wide v12, v0, Lcom/google/android/exoplayer2/i;->m:J

    .line 1433
    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer2/util/af;->a(JJJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/exoplayer2/i;->m:J

    .line 1434
    iget-wide v6, v0, Lcom/google/android/exoplayer2/i;->l:J

    cmp-long v8, v6, v3

    if-eqz v8, :cond_6

    cmp-long v3, v1, v6

    if-lez v3, :cond_6

    .line 1436
    iput-wide v6, v0, Lcom/google/android/exoplayer2/i;->m:J

    .line 346
    :cond_6
    :goto_2
    iget-wide v1, v0, Lcom/google/android/exoplayer2/i;->m:J

    sub-long v1, p1, v1

    .line 347
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    iget-wide v6, v0, Lcom/google/android/exoplayer2/i;->e:J

    cmp-long v8, v3, v6

    if-gez v8, :cond_7

    .line 348
    iput v5, v0, Lcom/google/android/exoplayer2/i;->p:F

    goto :goto_3

    .line 350
    :cond_7
    iget v3, v0, Lcom/google/android/exoplayer2/i;->d:F

    long-to-float v1, v1

    mul-float v3, v3, v1

    add-float/2addr v3, v5

    .line 351
    iget v1, v0, Lcom/google/android/exoplayer2/i;->o:F

    iget v2, v0, Lcom/google/android/exoplayer2/i;->n:F

    .line 352
    invoke-static {v3, v1, v2}, Lcom/google/android/exoplayer2/util/af;->a(FFF)F

    move-result v1

    iput v1, v0, Lcom/google/android/exoplayer2/i;->p:F

    .line 354
    :goto_3
    iget v1, v0, Lcom/google/android/exoplayer2/i;->p:F

    return v1
.end method

.method public final a()V
    .locals 7

    .line 320
    iget-wide v0, p0, Lcom/google/android/exoplayer2/i;->m:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 323
    :cond_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/i;->f:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/i;->m:J

    .line 324
    iget-wide v4, p0, Lcom/google/android/exoplayer2/i;->l:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    .line 326
    iput-wide v4, p0, Lcom/google/android/exoplayer2/i;->m:J

    .line 328
    :cond_1
    iput-wide v2, p0, Lcom/google/android/exoplayer2/i;->q:J

    return-void
.end method

.method public final a(J)V
    .locals 0

    .line 314
    iput-wide p1, p0, Lcom/google/android/exoplayer2/i;->i:J

    .line 315
    invoke-direct {p0}, Lcom/google/android/exoplayer2/i;->c()V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V
    .locals 2

    .line 298
    iget-wide v0, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/f;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/i;->h:J

    .line 299
    iget-wide v0, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/f;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/i;->k:J

    .line 300
    iget-wide v0, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/f;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/i;->l:J

    .line 302
    iget v0, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    const v1, -0x800001

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 303
    iget v0, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    goto :goto_0

    .line 304
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/i;->a:F

    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer2/i;->o:F

    .line 306
    iget v0, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 307
    iget p1, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    goto :goto_1

    .line 308
    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/i;->b:F

    :goto_1
    iput p1, p0, Lcom/google/android/exoplayer2/i;->n:F

    .line 309
    invoke-direct {p0}, Lcom/google/android/exoplayer2/i;->c()V

    return-void
.end method

.method public final b()J
    .locals 2

    .line 359
    iget-wide v0, p0, Lcom/google/android/exoplayer2/i;->m:J

    return-wide v0
.end method
