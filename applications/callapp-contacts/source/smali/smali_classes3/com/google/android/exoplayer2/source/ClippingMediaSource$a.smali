.class final Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;
.super Lcom/google/android/exoplayer2/source/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ClippingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/al;JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;
        }
    .end annotation

    .line 330
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/j;-><init>(Lcom/google/android/exoplayer2/al;)V

    .line 331
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/al;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    .line 334
    new-instance v0, Lcom/google/android/exoplayer2/al$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/al$b;-><init>()V

    const-wide/16 v3, 0x0

    .line 1809
    invoke-virtual {p1, v1, v0, v3, v4}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    move-result-object p1

    .line 335
    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 336
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/al$b;->m:Z

    if-nez v0, :cond_1

    cmp-long v0, p2, v3

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/al$b;->i:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    invoke-direct {p1, v2}, Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw p1

    :cond_1
    :goto_0
    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v0, p4, v5

    if-nez v0, :cond_2

    .line 339
    iget-wide p4, p1, Lcom/google/android/exoplayer2/al$b;->q:J

    goto :goto_1

    :cond_2
    invoke-static {v3, v4, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    .line 340
    :goto_1
    iget-wide v3, p1, Lcom/google/android/exoplayer2/al$b;->q:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_5

    .line 341
    iget-wide v3, p1, Lcom/google/android/exoplayer2/al$b;->q:J

    cmp-long v0, p4, v3

    if-lez v0, :cond_3

    .line 342
    iget-wide p4, p1, Lcom/google/android/exoplayer2/al$b;->q:J

    :cond_3
    cmp-long v0, p2, p4

    if-gtz v0, :cond_4

    goto :goto_2

    .line 345
    :cond_4
    new-instance p1, Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw p1

    .line 348
    :cond_5
    :goto_2
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;->c:J

    .line 349
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;->d:J

    cmp-long v0, p4, v5

    if-nez v0, :cond_6

    move-wide p2, v5

    goto :goto_3

    :cond_6
    sub-long p2, p4, p2

    .line 350
    :goto_3
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;->e:J

    .line 351
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/al$b;->j:Z

    if-eqz p2, :cond_8

    if-eqz v0, :cond_7

    iget-wide p2, p1, Lcom/google/android/exoplayer2/al$b;->q:J

    cmp-long v0, p2, v5

    if-eqz v0, :cond_8

    iget-wide p1, p1, Lcom/google/android/exoplayer2/al$b;->q:J

    cmp-long p3, p4, p1

    if-nez p3, :cond_8

    :cond_7
    const/4 v1, 0x1

    :cond_8
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;->f:Z

    return-void

    .line 332
    :cond_9
    new-instance p1, Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    invoke-direct {p1, v1}, Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw p1
.end method


# virtual methods
.method public final a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;
    .locals 11

    .line 381
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;->a:Lcom/google/android/exoplayer2/al;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;

    .line 2532
    iget-wide v0, p2, Lcom/google/android/exoplayer2/al$a;->e:J

    .line 382
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;->c:J

    sub-long v9, v0, v2

    .line 384
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    move-wide v7, v2

    goto :goto_0

    :cond_0
    sub-long/2addr v0, v9

    move-wide v7, v0

    .line 385
    :goto_0
    iget-object v5, p2, Lcom/google/android/exoplayer2/al$a;->a:Ljava/lang/Object;

    iget-object v6, p2, Lcom/google/android/exoplayer2/al$a;->b:Ljava/lang/Object;

    move-object v4, p2

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/exoplayer2/al$a;->a(Ljava/lang/Object;Ljava/lang/Object;JJ)Lcom/google/android/exoplayer2/al$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;
    .locals 4

    .line 359
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;->a:Lcom/google/android/exoplayer2/al;

    const/4 p3, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p3, p2, v0, v1}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    .line 360
    iget-wide p3, p2, Lcom/google/android/exoplayer2/al$b;->r:J

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;->c:J

    add-long/2addr p3, v0

    iput-wide p3, p2, Lcom/google/android/exoplayer2/al$b;->r:J

    .line 361
    iget-wide p3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;->e:J

    iput-wide p3, p2, Lcom/google/android/exoplayer2/al$b;->q:J

    .line 362
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;->f:Z

    iput-boolean p1, p2, Lcom/google/android/exoplayer2/al$b;->j:Z

    .line 363
    iget-wide p3, p2, Lcom/google/android/exoplayer2/al$b;->p:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, v0

    if-eqz p1, :cond_1

    .line 364
    iget-wide p3, p2, Lcom/google/android/exoplayer2/al$b;->p:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;->c:J

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p2, Lcom/google/android/exoplayer2/al$b;->p:J

    .line 366
    iget-wide p3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;->d:J

    cmp-long p1, p3, v0

    iget-wide p3, p2, Lcom/google/android/exoplayer2/al$b;->p:J

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;->d:J

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :goto_0
    iput-wide p3, p2, Lcom/google/android/exoplayer2/al$b;->p:J

    .line 367
    iget-wide p3, p2, Lcom/google/android/exoplayer2/al$b;->p:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;->c:J

    sub-long/2addr p3, v2

    iput-wide p3, p2, Lcom/google/android/exoplayer2/al$b;->p:J

    .line 369
    :cond_1
    iget-wide p3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$a;->c:J

    invoke-static {p3, p4}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide p3

    .line 370
    iget-wide v2, p2, Lcom/google/android/exoplayer2/al$b;->f:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_2

    .line 371
    iget-wide v2, p2, Lcom/google/android/exoplayer2/al$b;->f:J

    add-long/2addr v2, p3

    iput-wide v2, p2, Lcom/google/android/exoplayer2/al$b;->f:J

    .line 373
    :cond_2
    iget-wide v2, p2, Lcom/google/android/exoplayer2/al$b;->g:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_3

    .line 374
    iget-wide v0, p2, Lcom/google/android/exoplayer2/al$b;->g:J

    add-long/2addr v0, p3

    iput-wide v0, p2, Lcom/google/android/exoplayer2/al$b;->g:J

    :cond_3
    return-object p2
.end method
