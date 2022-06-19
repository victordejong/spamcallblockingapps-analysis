.class public final Lcom/google/android/exoplayer2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/s;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/k;

.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:I

.field private final g:Z

.field private final h:J

.field private final i:Z

.field private j:I

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 264
    new-instance v1, Lcom/google/android/exoplayer2/upstream/k;

    const/4 v0, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/upstream/k;-><init>(ZI)V

    const v2, 0xc350

    const v3, 0xc350

    const/16 v4, 0x9c4

    const/16 v5, 0x1388

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/j;-><init>(Lcom/google/android/exoplayer2/upstream/k;IIIIIZIZ)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/exoplayer2/upstream/k;IIIIIZIZ)V
    .locals 5

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const-string v1, "bufferForPlaybackMs"

    const-string v2, "0"

    .line 286
    invoke-static {p4, v0, v1, v2}, Lcom/google/android/exoplayer2/j;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v3, "bufferForPlaybackAfterRebufferMs"

    .line 287
    invoke-static {p5, v0, v3, v2}, Lcom/google/android/exoplayer2/j;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v4, "minBufferMs"

    .line 289
    invoke-static {p2, p4, v4, v1}, Lcom/google/android/exoplayer2/j;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-static {p2, p5, v4, v3}, Lcom/google/android/exoplayer2/j;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "maxBufferMs"

    .line 295
    invoke-static {p3, p2, v1, v4}, Lcom/google/android/exoplayer2/j;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "backBufferDurationMs"

    .line 296
    invoke-static {p8, v0, v1, v2}, Lcom/google/android/exoplayer2/j;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 298
    iput-object p1, p0, Lcom/google/android/exoplayer2/j;->a:Lcom/google/android/exoplayer2/upstream/k;

    int-to-long p1, p2

    .line 299
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/f;->b(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/j;->b:J

    int-to-long p1, p3

    .line 300
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/f;->b(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/j;->c:J

    int-to-long p1, p4

    .line 301
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/f;->b(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/j;->d:J

    int-to-long p1, p5

    .line 302
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/f;->b(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/j;->e:J

    .line 303
    iput p6, p0, Lcom/google/android/exoplayer2/j;->f:I

    const/4 p1, -0x1

    if-eq p6, p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p6, 0xc80000

    .line 307
    :goto_0
    iput p6, p0, Lcom/google/android/exoplayer2/j;->j:I

    .line 308
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/j;->g:Z

    int-to-long p1, p8

    .line 309
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/f;->b(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/j;->h:J

    .line 310
    iput-boolean p9, p0, Lcom/google/android/exoplayer2/j;->i:Z

    return-void
.end method

.method private static a(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 446
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be less than "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/a;->a(ZLjava/lang/Object;)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 415
    iget v0, p0, Lcom/google/android/exoplayer2/j;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/high16 v0, 0xc80000

    .line 417
    :cond_0
    iput v0, p0, Lcom/google/android/exoplayer2/j;->j:I

    const/4 v0, 0x0

    .line 418
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/j;->k:Z

    if-eqz p1, :cond_1

    .line 420
    iget-object p1, p0, Lcom/google/android/exoplayer2/j;->a:Lcom/google/android/exoplayer2/upstream/k;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/k;->d()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 315
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/j;->a(Z)V

    return-void
.end method

.method public final a([Lcom/google/android/exoplayer2/af;[Lcom/google/android/exoplayer2/trackselection/c;)V
    .locals 7

    .line 322
    iget v0, p0, Lcom/google/android/exoplayer2/j;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1405
    :goto_0
    array-length v3, p1

    const/high16 v4, 0xc80000

    if-ge v1, v3, :cond_6

    .line 1406
    aget-object v3, p2, v1

    if-eqz v3, :cond_5

    .line 1407
    aget-object v3, p1, v1

    invoke-interface {v3}, Lcom/google/android/exoplayer2/af;->a()I

    move-result v3

    const/high16 v5, 0x20000

    if-eqz v3, :cond_3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    .line 1441
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    const/high16 v4, 0x20000

    goto :goto_1

    :cond_2
    const/high16 v4, 0x7d00000

    goto :goto_1

    :cond_3
    const/high16 v4, 0x89a0000

    :cond_4
    :goto_1
    add-int/2addr v2, v4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1410
    :cond_6
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 324
    :cond_7
    iput v0, p0, Lcom/google/android/exoplayer2/j;->j:I

    .line 325
    iget-object p1, p0, Lcom/google/android/exoplayer2/j;->a:Lcom/google/android/exoplayer2/upstream/k;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/upstream/k;->a(I)V

    return-void
.end method

.method public final a(JF)Z
    .locals 8

    .line 356
    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->a:Lcom/google/android/exoplayer2/upstream/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/k;->e()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/j;->j:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 357
    :goto_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/j;->b:J

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    .line 362
    invoke-static {v4, v5, p3}, Lcom/google/android/exoplayer2/util/af;->a(JF)J

    move-result-wide v4

    .line 363
    iget-wide v6, p0, Lcom/google/android/exoplayer2/j;->c:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_1
    const-wide/32 v6, 0x7a120

    .line 366
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    cmp-long p3, p1, v4

    if-gez p3, :cond_4

    .line 368
    iget-boolean p3, p0, Lcom/google/android/exoplayer2/j;->g:Z

    if-nez p3, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/j;->k:Z

    if-nez v2, :cond_6

    cmp-long p3, p1, v6

    if-gez p3, :cond_6

    const-string p1, "DefaultLoadControl"

    const-string p2, "Target buffer size reached with less than 500ms of buffered media data."

    .line 370
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 374
    :cond_4
    iget-wide v1, p0, Lcom/google/android/exoplayer2/j;->c:J

    cmp-long p3, p1, v1

    if-gez p3, :cond_5

    if-eqz v0, :cond_6

    .line 375
    :cond_5
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/j;->k:Z

    .line 377
    :cond_6
    :goto_2
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/j;->k:Z

    return p1
.end method

.method public final a(JFZJ)Z
    .locals 3

    .line 383
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/util/af;->b(JF)J

    move-result-wide p1

    if-eqz p4, :cond_0

    .line 384
    iget-wide p3, p0, Lcom/google/android/exoplayer2/j;->e:J

    goto :goto_0

    :cond_0
    iget-wide p3, p0, Lcom/google/android/exoplayer2/j;->d:J

    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p5, v0

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x2

    .line 386
    div-long/2addr p5, v0

    invoke-static {p5, p6, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :cond_1
    const-wide/16 p5, 0x0

    cmp-long v0, p3, p5

    if-lez v0, :cond_3

    cmp-long p5, p1, p3

    if-gez p5, :cond_3

    .line 388
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/j;->g:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/j;->a:Lcom/google/android/exoplayer2/upstream/k;

    .line 391
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/k;->e()I

    move-result p1

    iget p2, p0, Lcom/google/android/exoplayer2/j;->j:I

    if-lt p1, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    .line 330
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/j;->a(Z)V

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    .line 335
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/j;->a(Z)V

    return-void
.end method

.method public final d()Lcom/google/android/exoplayer2/upstream/b;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/google/android/exoplayer2/j;->a:Lcom/google/android/exoplayer2/upstream/k;

    return-object v0
.end method

.method public final e()J
    .locals 2

    .line 345
    iget-wide v0, p0, Lcom/google/android/exoplayer2/j;->h:J

    return-wide v0
.end method

.method public final f()Z
    .locals 1

    .line 350
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/j;->i:Z

    return v0
.end method
