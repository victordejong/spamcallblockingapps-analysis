.class final Landroidx/media2/exoplayer/external/source/ClippingMediaSource$a;
.super Landroidx/media2/exoplayer/external/source/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/ClippingMediaSource;
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
.method public constructor <init>(Landroidx/media2/exoplayer/external/al;JJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;
        }
    .end annotation

    .line 322
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/o;-><init>(Landroidx/media2/exoplayer/external/al;)V

    .line 323
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/al;->c()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    .line 326
    new-instance v0, Landroidx/media2/exoplayer/external/al$b;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/al$b;-><init>()V

    const-wide/16 v3, 0x0

    .line 1648
    invoke-virtual {p1, v1, v0, v3, v4}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$b;J)Landroidx/media2/exoplayer/external/al$b;

    move-result-object p1

    .line 327
    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v0, p4, v5

    if-nez v0, :cond_0

    .line 328
    iget-wide p4, p1, Landroidx/media2/exoplayer/external/al$b;->j:J

    goto :goto_0

    :cond_0
    invoke-static {v3, v4, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    .line 329
    :goto_0
    iget-wide v5, p1, Landroidx/media2/exoplayer/external/al$b;->j:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v7

    if-eqz v0, :cond_5

    .line 330
    iget-wide v5, p1, Landroidx/media2/exoplayer/external/al$b;->j:J

    cmp-long v0, p4, v5

    if-lez v0, :cond_1

    .line 331
    iget-wide p4, p1, Landroidx/media2/exoplayer/external/al$b;->j:J

    :cond_1
    cmp-long v0, p2, v3

    if-eqz v0, :cond_3

    .line 333
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/al$b;->e:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 334
    :cond_2
    new-instance p1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;

    invoke-direct {p1, v2}, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw p1

    :cond_3
    :goto_1
    cmp-long v0, p2, p4

    if-gtz v0, :cond_4

    goto :goto_2

    .line 337
    :cond_4
    new-instance p1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw p1

    .line 340
    :cond_5
    :goto_2
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$a;->c:J

    .line 341
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$a;->d:J

    cmp-long v0, p4, v7

    if-nez v0, :cond_6

    move-wide p2, v7

    goto :goto_3

    :cond_6
    sub-long p2, p4, p2

    .line 342
    :goto_3
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$a;->e:J

    .line 343
    iget-boolean p2, p1, Landroidx/media2/exoplayer/external/al$b;->f:Z

    if-eqz p2, :cond_8

    if-eqz v0, :cond_7

    iget-wide p2, p1, Landroidx/media2/exoplayer/external/al$b;->j:J

    cmp-long v0, p2, v7

    if-eqz v0, :cond_8

    iget-wide p1, p1, Landroidx/media2/exoplayer/external/al$b;->j:J

    cmp-long p3, p4, p1

    if-nez p3, :cond_8

    :cond_7
    const/4 v1, 0x1

    :cond_8
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$a;->f:Z

    return-void

    .line 324
    :cond_9
    new-instance p1, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;

    invoke-direct {p1, v1}, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw p1
.end method


# virtual methods
.method public final a(ILandroidx/media2/exoplayer/external/al$a;Z)Landroidx/media2/exoplayer/external/al$a;
    .locals 11

    .line 373
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$a;->b:Landroidx/media2/exoplayer/external/al;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$a;Z)Landroidx/media2/exoplayer/external/al$a;

    .line 2391
    iget-wide v0, p2, Landroidx/media2/exoplayer/external/al$a;->e:J

    .line 374
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$a;->c:J

    sub-long v9, v0, v2

    .line 376
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$a;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    move-wide v7, v2

    goto :goto_0

    :cond_0
    sub-long/2addr v0, v9

    move-wide v7, v0

    .line 377
    :goto_0
    iget-object v5, p2, Landroidx/media2/exoplayer/external/al$a;->a:Ljava/lang/Object;

    iget-object v6, p2, Landroidx/media2/exoplayer/external/al$a;->b:Ljava/lang/Object;

    move-object v4, p2

    invoke-virtual/range {v4 .. v10}, Landroidx/media2/exoplayer/external/al$a;->a(Ljava/lang/Object;Ljava/lang/Object;JJ)Landroidx/media2/exoplayer/external/al$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILandroidx/media2/exoplayer/external/al$b;J)Landroidx/media2/exoplayer/external/al$b;
    .locals 4

    .line 351
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$a;->b:Landroidx/media2/exoplayer/external/al;

    const/4 p3, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p3, p2, v0, v1}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$b;J)Landroidx/media2/exoplayer/external/al$b;

    .line 352
    iget-wide p3, p2, Landroidx/media2/exoplayer/external/al$b;->k:J

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$a;->c:J

    add-long/2addr p3, v0

    iput-wide p3, p2, Landroidx/media2/exoplayer/external/al$b;->k:J

    .line 353
    iget-wide p3, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$a;->e:J

    iput-wide p3, p2, Landroidx/media2/exoplayer/external/al$b;->j:J

    .line 354
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$a;->f:Z

    iput-boolean p1, p2, Landroidx/media2/exoplayer/external/al$b;->f:Z

    .line 355
    iget-wide p3, p2, Landroidx/media2/exoplayer/external/al$b;->i:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, v0

    if-eqz p1, :cond_1

    .line 356
    iget-wide p3, p2, Landroidx/media2/exoplayer/external/al$b;->i:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$a;->c:J

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p2, Landroidx/media2/exoplayer/external/al$b;->i:J

    .line 357
    iget-wide p3, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$a;->d:J

    cmp-long p1, p3, v0

    if-nez p1, :cond_0

    iget-wide p3, p2, Landroidx/media2/exoplayer/external/al$b;->i:J

    goto :goto_0

    .line 358
    :cond_0
    iget-wide p3, p2, Landroidx/media2/exoplayer/external/al$b;->i:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$a;->d:J

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :goto_0
    iput-wide p3, p2, Landroidx/media2/exoplayer/external/al$b;->i:J

    .line 359
    iget-wide p3, p2, Landroidx/media2/exoplayer/external/al$b;->i:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$a;->c:J

    sub-long/2addr p3, v2

    iput-wide p3, p2, Landroidx/media2/exoplayer/external/al$b;->i:J

    .line 361
    :cond_1
    iget-wide p3, p0, Landroidx/media2/exoplayer/external/source/ClippingMediaSource$a;->c:J

    invoke-static {p3, p4}, Landroidx/media2/exoplayer/external/c;->a(J)J

    move-result-wide p3

    .line 362
    iget-wide v2, p2, Landroidx/media2/exoplayer/external/al$b;->c:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_2

    .line 363
    iget-wide v2, p2, Landroidx/media2/exoplayer/external/al$b;->c:J

    add-long/2addr v2, p3

    iput-wide v2, p2, Landroidx/media2/exoplayer/external/al$b;->c:J

    .line 365
    :cond_2
    iget-wide v2, p2, Landroidx/media2/exoplayer/external/al$b;->d:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_3

    .line 366
    iget-wide v0, p2, Landroidx/media2/exoplayer/external/al$b;->d:J

    add-long/2addr v0, p3

    iput-wide v0, p2, Landroidx/media2/exoplayer/external/al$b;->d:J

    :cond_3
    return-object p2
.end method
