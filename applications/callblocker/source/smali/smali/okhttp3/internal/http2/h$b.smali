.class final Lokhttp3/internal/http2/h$b;
.super Ljava/lang/Object;
.source "Http2Stream.java"

# interfaces
.implements La/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# static fields
.field static final synthetic c:Z


# instance fields
.field a:Z

.field b:Z

.field final synthetic d:Lokhttp3/internal/http2/h;

.field private final e:La/c;

.field private final f:La/c;

.field private final g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 309
    const-class v0, Lokhttp3/internal/http2/h;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lokhttp3/internal/http2/h$b;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lokhttp3/internal/http2/h;J)V
    .locals 2

    .prologue
    .line 328
    iput-object p1, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    new-instance v0, La/c;

    invoke-direct {v0}, La/c;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/h$b;->e:La/c;

    .line 314
    new-instance v0, La/c;

    invoke-direct {v0}, La/c;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/h$b;->f:La/c;

    .line 329
    iput-wide p2, p0, Lokhttp3/internal/http2/h$b;->g:J

    .line 330
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 368
    iget-object v0, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-object v0, v0, Lokhttp3/internal/http2/h;->f:Lokhttp3/internal/http2/h$c;

    invoke-virtual {v0}, Lokhttp3/internal/http2/h$c;->c()V

    .line 370
    :goto_0
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/h$b;->f:La/c;

    invoke-virtual {v0}, La/c;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lokhttp3/internal/http2/h$b;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lokhttp3/internal/http2/h$b;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-object v0, v0, Lokhttp3/internal/http2/h;->h:Lokhttp3/internal/http2/a;

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    invoke-virtual {v0}, Lokhttp3/internal/http2/h;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-object v1, v1, Lokhttp3/internal/http2/h;->f:Lokhttp3/internal/http2/h$c;

    invoke-virtual {v1}, Lokhttp3/internal/http2/h$c;->b()V

    throw v0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-object v0, v0, Lokhttp3/internal/http2/h;->f:Lokhttp3/internal/http2/h$c;

    invoke-virtual {v0}, Lokhttp3/internal/http2/h$c;->b()V

    .line 376
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 432
    iget-boolean v0, p0, Lokhttp3/internal/http2/h$b;->a:Z

    if-eqz v0, :cond_0

    .line 433
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-object v0, v0, Lokhttp3/internal/http2/h;->h:Lokhttp3/internal/http2/a;

    if-eqz v0, :cond_1

    .line 436
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-object v1, v1, Lokhttp3/internal/http2/h;->h:Lokhttp3/internal/http2/a;

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/a;)V

    throw v0

    .line 438
    :cond_1
    return-void
.end method


# virtual methods
.method public a(La/c;J)J
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 333
    cmp-long v0, p2, v4

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_0
    iget-object v2, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    monitor-enter v2

    .line 337
    :try_start_0
    invoke-direct {p0}, Lokhttp3/internal/http2/h$b;->b()V

    .line 338
    invoke-direct {p0}, Lokhttp3/internal/http2/h$b;->c()V

    .line 339
    iget-object v0, p0, Lokhttp3/internal/http2/h$b;->f:La/c;

    invoke-virtual {v0}, La/c;->b()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    const-wide/16 v0, -0x1

    monitor-exit v2

    .line 363
    :goto_0
    return-wide v0

    .line 342
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/http2/h$b;->f:La/c;

    iget-object v1, p0, Lokhttp3/internal/http2/h$b;->f:La/c;

    invoke-virtual {v1}, La/c;->b()J

    move-result-wide v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v0, p1, v4, v5}, La/c;->a(La/c;J)J

    move-result-wide v0

    .line 345
    iget-object v3, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-wide v4, v3, Lokhttp3/internal/http2/h;->a:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Lokhttp3/internal/http2/h;->a:J

    .line 346
    iget-object v3, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-wide v4, v3, Lokhttp3/internal/http2/h;->a:J

    iget-object v3, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-object v3, v3, Lokhttp3/internal/http2/h;->d:Lokhttp3/internal/http2/f;

    iget-object v3, v3, Lokhttp3/internal/http2/f;->k:Lokhttp3/internal/http2/l;

    .line 347
    invoke-virtual {v3}, Lokhttp3/internal/http2/l;->d()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_2

    .line 348
    iget-object v3, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-object v3, v3, Lokhttp3/internal/http2/h;->d:Lokhttp3/internal/http2/f;

    iget-object v4, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget v4, v4, Lokhttp3/internal/http2/h;->c:I

    iget-object v5, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-wide v6, v5, Lokhttp3/internal/http2/h;->a:J

    invoke-virtual {v3, v4, v6, v7}, Lokhttp3/internal/http2/f;->a(IJ)V

    .line 349
    iget-object v3, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lokhttp3/internal/http2/h;->a:J

    .line 351
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 354
    iget-object v2, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-object v2, v2, Lokhttp3/internal/http2/h;->d:Lokhttp3/internal/http2/f;

    monitor-enter v2

    .line 355
    :try_start_1
    iget-object v3, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-object v3, v3, Lokhttp3/internal/http2/h;->d:Lokhttp3/internal/http2/f;

    iget-wide v4, v3, Lokhttp3/internal/http2/f;->i:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Lokhttp3/internal/http2/f;->i:J

    .line 356
    iget-object v3, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-object v3, v3, Lokhttp3/internal/http2/h;->d:Lokhttp3/internal/http2/f;

    iget-wide v4, v3, Lokhttp3/internal/http2/f;->i:J

    iget-object v3, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-object v3, v3, Lokhttp3/internal/http2/h;->d:Lokhttp3/internal/http2/f;

    iget-object v3, v3, Lokhttp3/internal/http2/f;->k:Lokhttp3/internal/http2/l;

    .line 357
    invoke-virtual {v3}, Lokhttp3/internal/http2/l;->d()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_3

    .line 358
    iget-object v3, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-object v3, v3, Lokhttp3/internal/http2/h;->d:Lokhttp3/internal/http2/f;

    const/4 v4, 0x0

    iget-object v5, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-object v5, v5, Lokhttp3/internal/http2/h;->d:Lokhttp3/internal/http2/f;

    iget-wide v6, v5, Lokhttp3/internal/http2/f;->i:J

    invoke-virtual {v3, v4, v6, v7}, Lokhttp3/internal/http2/f;->a(IJ)V

    .line 359
    iget-object v3, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-object v3, v3, Lokhttp3/internal/http2/h;->d:Lokhttp3/internal/http2/f;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lokhttp3/internal/http2/f;->i:J

    .line 361
    :cond_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 351
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public a()La/t;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-object v0, v0, Lokhttp3/internal/http2/h;->f:Lokhttp3/internal/http2/h$c;

    return-object v0
.end method

.method a(La/e;J)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 379
    sget-boolean v0, Lokhttp3/internal/http2/h$b;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 405
    :cond_0
    sub-long/2addr p2, v4

    .line 408
    iget-object v3, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    monitor-enter v3

    .line 409
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/h$b;->f:La/c;

    invoke-virtual {v0}, La/c;->b()J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-nez v0, :cond_7

    move v0, v1

    .line 410
    :goto_0
    iget-object v4, p0, Lokhttp3/internal/http2/h$b;->f:La/c;

    iget-object v5, p0, Lokhttp3/internal/http2/h$b;->e:La/c;

    invoke-virtual {v4, v5}, La/c;->a(La/s;)J

    .line 411
    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 414
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 381
    :cond_2
    cmp-long v0, p2, v10

    if-lez v0, :cond_3

    .line 384
    iget-object v3, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    monitor-enter v3

    .line 385
    :try_start_1
    iget-boolean v4, p0, Lokhttp3/internal/http2/h$b;->b:Z

    .line 386
    iget-object v0, p0, Lokhttp3/internal/http2/h$b;->f:La/c;

    invoke-virtual {v0}, La/c;->b()J

    move-result-wide v6

    add-long/2addr v6, p2

    iget-wide v8, p0, Lokhttp3/internal/http2/h$b;->g:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_4

    move v0, v1

    .line 387
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    if-eqz v0, :cond_5

    .line 391
    invoke-interface {p1, p2, p3}, La/e;->h(J)V

    .line 392
    iget-object v0, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    sget-object v1, Lokhttp3/internal/http2/a;->d:Lokhttp3/internal/http2/a;

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/h;->b(Lokhttp3/internal/http2/a;)V

    .line 416
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v0, v2

    .line 386
    goto :goto_1

    .line 387
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 397
    :cond_5
    if-eqz v4, :cond_6

    .line 398
    invoke-interface {p1, p2, p3}, La/e;->h(J)V

    goto :goto_2

    .line 403
    :cond_6
    iget-object v0, p0, Lokhttp3/internal/http2/h$b;->e:La/c;

    invoke-interface {p1, v0, p2, p3}, La/e;->a(La/c;J)J

    move-result-wide v4

    .line 404
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_7
    move v0, v2

    .line 409
    goto :goto_0

    .line 414
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 423
    iget-object v1, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    monitor-enter v1

    .line 424
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lokhttp3/internal/http2/h$b;->a:Z

    .line 425
    iget-object v0, p0, Lokhttp3/internal/http2/h$b;->f:La/c;

    invoke-virtual {v0}, La/c;->q()V

    .line 426
    iget-object v0, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 427
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    iget-object v0, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    invoke-virtual {v0}, Lokhttp3/internal/http2/h;->j()V

    .line 429
    return-void

    .line 427
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
