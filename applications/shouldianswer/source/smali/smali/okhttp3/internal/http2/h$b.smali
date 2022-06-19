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

    .line 309
    const-class v0, Lokhttp3/internal/http2/h;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lokhttp3/internal/http2/h$b;->c:Z

    return-void
.end method

.method constructor <init>(Lokhttp3/internal/http2/h;J)V
    .locals 0

    .line 328
    iput-object p1, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    new-instance p1, La/c;

    invoke-direct {p1}, La/c;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/h$b;->e:La/c;

    .line 314
    new-instance p1, La/c;

    invoke-direct {p1}, La/c;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/h$b;->f:La/c;

    .line 329
    iput-wide p2, p0, Lokhttp3/internal/http2/h$b;->g:J

    return-void
.end method

.method private b()V
    .locals 4

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
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-object v0, v0, Lokhttp3/internal/http2/h;->f:Lokhttp3/internal/http2/h$c;

    invoke-virtual {v0}, Lokhttp3/internal/http2/h$c;->b()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-object v1, v1, Lokhttp3/internal/http2/h;->f:Lokhttp3/internal/http2/h$c;

    invoke-virtual {v1}, Lokhttp3/internal/http2/h$c;->b()V

    throw v0
.end method

.method private c()V
    .locals 2

    .line 432
    iget-boolean v0, p0, Lokhttp3/internal/http2/h$b;->a:Z

    if-nez v0, :cond_1

    .line 435
    iget-object v0, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-object v0, v0, Lokhttp3/internal/http2/h;->h:Lokhttp3/internal/http2/a;

    if-nez v0, :cond_0

    return-void

    .line 436
    :cond_0
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-object v1, v1, Lokhttp3/internal/http2/h;->h:Lokhttp3/internal/http2/a;

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/a;)V

    throw v0

    .line 433
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(La/c;J)J
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    .line 336
    iget-object v2, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    monitor-enter v2

    .line 337
    :try_start_0
    invoke-direct {p0}, Lokhttp3/internal/http2/h$b;->b()V

    .line 338
    invoke-direct {p0}, Lokhttp3/internal/http2/h$b;->c()V

    .line 339
    iget-object v3, p0, Lokhttp3/internal/http2/h$b;->f:La/c;

    invoke-virtual {v3}, La/c;->b()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-nez v3, :cond_0

    const-wide/16 p1, -0x1

    monitor-exit v2

    return-wide p1

    .line 342
    :cond_0
    iget-object v3, p0, Lokhttp3/internal/http2/h$b;->f:La/c;

    iget-object v4, p0, Lokhttp3/internal/http2/h$b;->f:La/c;

    invoke-virtual {v4}, La/c;->b()J

    move-result-wide v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v3, p1, p2, p3}, La/c;->a(La/c;J)J

    move-result-wide p1

    .line 345
    iget-object p3, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-wide v3, p3, Lokhttp3/internal/http2/h;->a:J

    add-long/2addr v3, p1

    iput-wide v3, p3, Lokhttp3/internal/http2/h;->a:J

    .line 346
    iget-object p3, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-wide v3, p3, Lokhttp3/internal/http2/h;->a:J

    iget-object p3, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-object p3, p3, Lokhttp3/internal/http2/h;->d:Lokhttp3/internal/http2/f;

    iget-object p3, p3, Lokhttp3/internal/http2/f;->k:Lokhttp3/internal/http2/l;

    .line 347
    invoke-virtual {p3}, Lokhttp3/internal/http2/l;->d()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-long v5, p3

    cmp-long p3, v3, v5

    if-ltz p3, :cond_1

    .line 348
    iget-object p3, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-object p3, p3, Lokhttp3/internal/http2/h;->d:Lokhttp3/internal/http2/f;

    iget-object v3, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget v3, v3, Lokhttp3/internal/http2/h;->c:I

    iget-object v4, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-wide v4, v4, Lokhttp3/internal/http2/h;->a:J

    invoke-virtual {p3, v3, v4, v5}, Lokhttp3/internal/http2/f;->a(IJ)V

    .line 349
    iget-object p3, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iput-wide v0, p3, Lokhttp3/internal/http2/h;->a:J

    .line 351
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 354
    iget-object p3, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-object p3, p3, Lokhttp3/internal/http2/h;->d:Lokhttp3/internal/http2/f;

    monitor-enter p3

    .line 355
    :try_start_1
    iget-object v2, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-object v2, v2, Lokhttp3/internal/http2/h;->d:Lokhttp3/internal/http2/f;

    iget-wide v3, v2, Lokhttp3/internal/http2/f;->i:J

    add-long/2addr v3, p1

    iput-wide v3, v2, Lokhttp3/internal/http2/f;->i:J

    .line 356
    iget-object v2, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-object v2, v2, Lokhttp3/internal/http2/h;->d:Lokhttp3/internal/http2/f;

    iget-wide v2, v2, Lokhttp3/internal/http2/f;->i:J

    iget-object v4, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-object v4, v4, Lokhttp3/internal/http2/h;->d:Lokhttp3/internal/http2/f;

    iget-object v4, v4, Lokhttp3/internal/http2/f;->k:Lokhttp3/internal/http2/l;

    .line 357
    invoke-virtual {v4}, Lokhttp3/internal/http2/l;->d()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 358
    iget-object v2, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-object v2, v2, Lokhttp3/internal/http2/h;->d:Lokhttp3/internal/http2/f;

    const/4 v3, 0x0

    iget-object v4, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-object v4, v4, Lokhttp3/internal/http2/h;->d:Lokhttp3/internal/http2/f;

    iget-wide v4, v4, Lokhttp3/internal/http2/f;->i:J

    invoke-virtual {v2, v3, v4, v5}, Lokhttp3/internal/http2/f;->a(IJ)V

    .line 359
    iget-object v2, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-object v2, v2, Lokhttp3/internal/http2/h;->d:Lokhttp3/internal/http2/f;

    iput-wide v0, v2, Lokhttp3/internal/http2/f;->i:J

    .line 361
    :cond_2
    monitor-exit p3

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 351
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 333
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()La/t;
    .locals 1

    .line 419
    iget-object v0, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    iget-object v0, v0, Lokhttp3/internal/http2/h;->f:Lokhttp3/internal/http2/h$c;

    return-object v0
.end method

.method a(La/e;J)V
    .locals 9

    .line 379
    sget-boolean v0, Lokhttp3/internal/http2/h$b;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_8

    .line 384
    iget-object v2, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    monitor-enter v2

    .line 385
    :try_start_0
    iget-boolean v3, p0, Lokhttp3/internal/http2/h$b;->b:Z

    .line 386
    iget-object v4, p0, Lokhttp3/internal/http2/h$b;->f:La/c;

    invoke-virtual {v4}, La/c;->b()J

    move-result-wide v4

    add-long/2addr v4, p2

    iget-wide v6, p0, Lokhttp3/internal/http2/h$b;->g:J

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v4, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v4, v6

    .line 387
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_3

    .line 391
    invoke-interface {p1, p2, p3}, La/e;->h(J)V

    .line 392
    iget-object p1, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    sget-object p2, Lokhttp3/internal/http2/a;->d:Lokhttp3/internal/http2/a;

    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/h;->b(Lokhttp3/internal/http2/a;)V

    return-void

    :cond_3
    if-eqz v3, :cond_4

    .line 398
    invoke-interface {p1, p2, p3}, La/e;->h(J)V

    return-void

    .line 403
    :cond_4
    iget-object v2, p0, Lokhttp3/internal/http2/h$b;->e:La/c;

    invoke-interface {p1, v2, p2, p3}, La/e;->a(La/c;J)J

    move-result-wide v2

    const-wide/16 v7, -0x1

    cmp-long v4, v2, v7

    if-eqz v4, :cond_7

    sub-long/2addr p2, v2

    .line 408
    iget-object v2, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    monitor-enter v2

    .line 409
    :try_start_1
    iget-object v3, p0, Lokhttp3/internal/http2/h$b;->f:La/c;

    invoke-virtual {v3}, La/c;->b()J

    move-result-wide v3

    cmp-long v0, v3, v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    move v5, v6

    .line 410
    :goto_2
    iget-object v0, p0, Lokhttp3/internal/http2/h$b;->f:La/c;

    iget-object v1, p0, Lokhttp3/internal/http2/h$b;->e:La/c;

    invoke-virtual {v0, v1}, La/c;->a(La/s;)J

    if-eqz v5, :cond_6

    .line 412
    iget-object v0, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 414
    :cond_6
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 404
    :cond_7
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    .line 387
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_8
    return-void
.end method

.method public close()V
    .locals 2

    .line 423
    iget-object v0, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    monitor-enter v0

    const/4 v1, 0x1

    .line 424
    :try_start_0
    iput-boolean v1, p0, Lokhttp3/internal/http2/h$b;->a:Z

    .line 425
    iget-object v1, p0, Lokhttp3/internal/http2/h$b;->f:La/c;

    invoke-virtual {v1}, La/c;->r()V

    .line 426
    iget-object v1, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 427
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    iget-object v0, p0, Lokhttp3/internal/http2/h$b;->d:Lokhttp3/internal/http2/h;

    invoke-virtual {v0}, Lokhttp3/internal/http2/h;->j()V

    return-void

    :catchall_0
    move-exception v1

    .line 427
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
