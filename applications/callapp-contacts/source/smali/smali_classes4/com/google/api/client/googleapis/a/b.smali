.class public final Lcom/google/api/client/googleapis/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/a/b$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/google/api/client/http/j;

.field public c:Ljava/lang/String;

.field public d:Lcom/google/api/client/http/n;

.field public e:Z

.field f:Ljava/lang/String;

.field public g:Z

.field h:Lcom/google/api/client/a/ac;

.field private final i:Lcom/google/api/client/http/b;

.field private final j:Lcom/google/api/client/http/r;

.field private final k:Lcom/google/api/client/http/w;

.field private l:J

.field private m:Z

.field private n:Lcom/google/api/client/http/q;

.field private o:Ljava/io/InputStream;

.field private p:J

.field private q:I

.field private r:Ljava/lang/Byte;

.field private s:J

.field private t:I

.field private u:[B


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/b;Lcom/google/api/client/http/w;Lcom/google/api/client/http/s;)V
    .locals 1

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    sget v0, Lcom/google/api/client/googleapis/a/b$a;->a:I

    iput v0, p0, Lcom/google/api/client/googleapis/a/b;->a:I

    const-string v0, "POST"

    .line 181
    iput-object v0, p0, Lcom/google/api/client/googleapis/a/b;->c:Ljava/lang/String;

    .line 184
    new-instance v0, Lcom/google/api/client/http/n;

    invoke-direct {v0}, Lcom/google/api/client/http/n;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/googleapis/a/b;->d:Lcom/google/api/client/http/n;

    const-string v0, "*"

    .line 213
    iput-object v0, p0, Lcom/google/api/client/googleapis/a/b;->f:Ljava/lang/String;

    const/high16 v0, 0xa00000

    .line 226
    iput v0, p0, Lcom/google/api/client/googleapis/a/b;->q:I

    .line 264
    sget-object v0, Lcom/google/api/client/a/ac;->a:Lcom/google/api/client/a/ac;

    iput-object v0, p0, Lcom/google/api/client/googleapis/a/b;->h:Lcom/google/api/client/a/ac;

    .line 286
    invoke-static {p1}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/http/b;

    iput-object p1, p0, Lcom/google/api/client/googleapis/a/b;->i:Lcom/google/api/client/http/b;

    .line 287
    invoke-static {p2}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/http/w;

    iput-object p1, p0, Lcom/google/api/client/googleapis/a/b;->k:Lcom/google/api/client/http/w;

    if-nez p3, :cond_0

    .line 289
    invoke-virtual {p2}, Lcom/google/api/client/http/w;->createRequestFactory()Lcom/google/api/client/http/r;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/api/client/http/w;->createRequestFactory(Lcom/google/api/client/http/s;)Lcom/google/api/client/http/r;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/api/client/googleapis/a/b;->j:Lcom/google/api/client/http/r;

    return-void
.end method

.method private static a(Lcom/google/api/client/http/q;)Lcom/google/api/client/http/t;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    new-instance v0, Lcom/google/api/client/googleapis/b;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/api/client/googleapis/b;->intercept(Lcom/google/api/client/http/q;)V

    const/4 v0, 0x0

    .line 543
    invoke-virtual {p0, v0}, Lcom/google/api/client/http/q;->a(Z)Lcom/google/api/client/http/q;

    .line 545
    invoke-virtual {p0}, Lcom/google/api/client/http/q;->o()Lcom/google/api/client/http/t;

    move-result-object p0

    return-object p0
.end method

.method private b(Lcom/google/api/client/http/q;)Lcom/google/api/client/http/t;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 558
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/a/b;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/api/client/http/q;->d()Lcom/google/api/client/http/j;

    move-result-object v0

    instance-of v0, v0, Lcom/google/api/client/http/f;

    if-nez v0, :cond_0

    .line 559
    new-instance v0, Lcom/google/api/client/http/h;

    invoke-direct {v0}, Lcom/google/api/client/http/h;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/q;->a(Lcom/google/api/client/http/k;)Lcom/google/api/client/http/q;

    .line 562
    :cond_0
    invoke-static {p1}, Lcom/google/api/client/googleapis/a/b;->a(Lcom/google/api/client/http/q;)Lcom/google/api/client/http/t;

    move-result-object p1

    return-object p1
.end method

.method private b()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 484
    invoke-direct {p0}, Lcom/google/api/client/googleapis/a/b;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private c()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 495
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/a/b;->m:Z

    if-nez v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/google/api/client/googleapis/a/b;->i:Lcom/google/api/client/http/b;

    invoke-virtual {v0}, Lcom/google/api/client/http/b;->getLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/api/client/googleapis/a/b;->l:J

    const/4 v0, 0x1

    .line 497
    iput-boolean v0, p0, Lcom/google/api/client/googleapis/a/b;->m:Z

    .line 499
    :cond_0
    iget-wide v0, p0, Lcom/google/api/client/googleapis/a/b;->l:J

    return-wide v0
.end method

.method private c(Lcom/google/api/client/http/i;)Lcom/google/api/client/http/t;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 508
    sget v0, Lcom/google/api/client/googleapis/a/b$a;->b:I

    .line 5907
    iput v0, p0, Lcom/google/api/client/googleapis/a/b;->a:I

    const-string v0, "uploadType"

    const-string v1, "resumable"

    .line 510
    invoke-virtual {p1, v0, v1}, Lcom/google/api/client/http/i;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object v0, p0, Lcom/google/api/client/googleapis/a/b;->b:Lcom/google/api/client/http/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/api/client/http/f;

    invoke-direct {v0}, Lcom/google/api/client/http/f;-><init>()V

    .line 512
    :cond_0
    iget-object v1, p0, Lcom/google/api/client/googleapis/a/b;->j:Lcom/google/api/client/http/r;

    iget-object v2, p0, Lcom/google/api/client/googleapis/a/b;->c:Ljava/lang/String;

    .line 513
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/api/client/http/r;->a(Ljava/lang/String;Lcom/google/api/client/http/i;Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;

    move-result-object p1

    .line 514
    iget-object v0, p0, Lcom/google/api/client/googleapis/a/b;->d:Lcom/google/api/client/http/n;

    iget-object v1, p0, Lcom/google/api/client/googleapis/a/b;->i:Lcom/google/api/client/http/b;

    invoke-virtual {v1}, Lcom/google/api/client/http/b;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Upload-Content-Type"

    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/http/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/n;

    .line 515
    invoke-direct {p0}, Lcom/google/api/client/googleapis/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/google/api/client/googleapis/a/b;->d:Lcom/google/api/client/http/n;

    invoke-direct {p0}, Lcom/google/api/client/googleapis/a/b;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "X-Upload-Content-Length"

    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/http/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/n;

    .line 518
    :cond_1
    invoke-virtual {p1}, Lcom/google/api/client/http/q;->g()Lcom/google/api/client/http/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/a/b;->d:Lcom/google/api/client/http/n;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/n;->putAll(Ljava/util/Map;)V

    .line 519
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/a/b;->b(Lcom/google/api/client/http/q;)Lcom/google/api/client/http/t;

    move-result-object p1

    .line 523
    :try_start_0
    sget v0, Lcom/google/api/client/googleapis/a/b$a;->c:I

    .line 6907
    iput v0, p0, Lcom/google/api/client/googleapis/a/b;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    .line 527
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->j()V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/api/client/http/i;)Lcom/google/api/client/http/t;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    sget v0, Lcom/google/api/client/googleapis/a/b$a;->d:I

    .line 1907
    iput v0, p0, Lcom/google/api/client/googleapis/a/b;->a:I

    .line 348
    iget-object v0, p0, Lcom/google/api/client/googleapis/a/b;->i:Lcom/google/api/client/http/b;

    .line 349
    iget-object v1, p0, Lcom/google/api/client/googleapis/a/b;->b:Lcom/google/api/client/http/j;

    const-string v2, "uploadType"

    if-eqz v1, :cond_0

    .line 350
    new-instance v0, Lcom/google/api/client/http/ab;

    invoke-direct {v0}, Lcom/google/api/client/http/ab;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/api/client/http/j;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/api/client/googleapis/a/b;->b:Lcom/google/api/client/http/j;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/api/client/googleapis/a/b;->i:Lcom/google/api/client/http/b;

    aput-object v4, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/ab;->a(Ljava/util/Collection;)Lcom/google/api/client/http/ab;

    move-result-object v0

    const-string v1, "multipart"

    .line 351
    invoke-virtual {p1, v2, v1}, Lcom/google/api/client/http/i;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "media"

    .line 353
    invoke-virtual {p1, v2, v1}, Lcom/google/api/client/http/i;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    :goto_0
    iget-object v1, p0, Lcom/google/api/client/googleapis/a/b;->j:Lcom/google/api/client/http/r;

    iget-object v2, p0, Lcom/google/api/client/googleapis/a/b;->c:Ljava/lang/String;

    .line 356
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/api/client/http/r;->a(Ljava/lang/String;Lcom/google/api/client/http/i;Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;

    move-result-object p1

    .line 357
    invoke-virtual {p1}, Lcom/google/api/client/http/q;->g()Lcom/google/api/client/http/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/a/b;->d:Lcom/google/api/client/http/n;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/n;->putAll(Ljava/util/Map;)V

    .line 360
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/a/b;->b(Lcom/google/api/client/http/q;)Lcom/google/api/client/http/t;

    move-result-object p1

    .line 363
    :try_start_0
    invoke-direct {p0}, Lcom/google/api/client/googleapis/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    invoke-direct {p0}, Lcom/google/api/client/googleapis/a/b;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/api/client/googleapis/a/b;->p:J

    .line 366
    :cond_1
    sget v0, Lcom/google/api/client/googleapis/a/b$a;->e:I

    .line 2907
    iput v0, p0, Lcom/google/api/client/googleapis/a/b;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    .line 370
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->j()V

    throw v0
.end method

.method final a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 679
    iget-object v0, p0, Lcom/google/api/client/googleapis/a/b;->n:Lcom/google/api/client/http/q;

    const-string v1, "The current request should not be null"

    invoke-static {v0, v1}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    iget-object v0, p0, Lcom/google/api/client/googleapis/a/b;->n:Lcom/google/api/client/http/q;

    new-instance v1, Lcom/google/api/client/http/f;

    invoke-direct {v1}, Lcom/google/api/client/http/f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/q;->a(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;

    .line 683
    iget-object v0, p0, Lcom/google/api/client/googleapis/a/b;->n:Lcom/google/api/client/http/q;

    invoke-virtual {v0}, Lcom/google/api/client/http/q;->g()Lcom/google/api/client/http/n;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bytes */"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/api/client/googleapis/a/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/n;->c(Ljava/lang/String;)Lcom/google/api/client/http/n;

    return-void
.end method

.method public final b(Lcom/google/api/client/http/i;)Lcom/google/api/client/http/t;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/a/b;->c(Lcom/google/api/client/http/i;)Lcom/google/api/client/http/t;

    move-result-object p1

    .line 385
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 391
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/api/client/http/i;

    invoke-virtual {p1}, Lcom/google/api/client/http/t;->c()Lcom/google/api/client/http/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/http/n;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/api/client/http/i;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 393
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->j()V

    .line 397
    iget-object p1, p0, Lcom/google/api/client/googleapis/a/b;->i:Lcom/google/api/client/http/b;

    invoke-virtual {p1}, Lcom/google/api/client/http/b;->a()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/client/googleapis/a/b;->o:Ljava/io/InputStream;

    .line 398
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/google/api/client/googleapis/a/b;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 402
    new-instance p1, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/google/api/client/googleapis/a/b;->o:Ljava/io/InputStream;

    invoke-direct {p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/google/api/client/googleapis/a/b;->o:Ljava/io/InputStream;

    .line 408
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/api/client/googleapis/a/b;->j:Lcom/google/api/client/http/r;

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/r;->b(Lcom/google/api/client/http/i;)Lcom/google/api/client/http/q;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/client/googleapis/a/b;->n:Lcom/google/api/client/http/q;

    .line 3572
    invoke-direct {p0}, Lcom/google/api/client/googleapis/a/b;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3574
    iget p1, p0, Lcom/google/api/client/googleapis/a/b;->q:I

    int-to-long v1, p1

    invoke-direct {p0}, Lcom/google/api/client/googleapis/a/b;->c()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/api/client/googleapis/a/b;->p:J

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int p1, v1

    goto :goto_1

    .line 3577
    :cond_2
    iget p1, p0, Lcom/google/api/client/googleapis/a/b;->q:I

    .line 3582
    :goto_1
    invoke-direct {p0}, Lcom/google/api/client/googleapis/a/b;->b()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 3584
    iget-object v1, p0, Lcom/google/api/client/googleapis/a/b;->o:Ljava/io/InputStream;

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->mark(I)V

    .line 3586
    iget-object v1, p0, Lcom/google/api/client/googleapis/a/b;->o:Ljava/io/InputStream;

    int-to-long v4, p1

    invoke-static {v1, v4, v5}, Lcom/google/api/client/a/f;->a(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object v1

    .line 3587
    new-instance v6, Lcom/google/api/client/http/y;

    iget-object v7, p0, Lcom/google/api/client/googleapis/a/b;->i:Lcom/google/api/client/http/b;

    .line 3588
    invoke-virtual {v7}, Lcom/google/api/client/http/b;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Lcom/google/api/client/http/y;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    invoke-virtual {v6}, Lcom/google/api/client/http/y;->c()Lcom/google/api/client/http/y;

    move-result-object v1

    .line 3589
    invoke-virtual {v1, v4, v5}, Lcom/google/api/client/http/y;->a(J)Lcom/google/api/client/http/y;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/api/client/http/y;->b(Z)Lcom/google/api/client/http/y;

    move-result-object v1

    .line 3590
    invoke-direct {p0}, Lcom/google/api/client/googleapis/a/b;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/api/client/googleapis/a/b;->f:Ljava/lang/String;

    goto/16 :goto_5

    .line 3601
    :cond_3
    iget-object v1, p0, Lcom/google/api/client/googleapis/a/b;->u:[B

    if-nez v1, :cond_6

    .line 3602
    iget-object v1, p0, Lcom/google/api/client/googleapis/a/b;->r:Ljava/lang/Byte;

    if-nez v1, :cond_4

    add-int/lit8 v4, p1, 0x1

    goto :goto_2

    :cond_4
    move v4, p1

    :goto_2
    add-int/lit8 v5, p1, 0x1

    .line 3603
    new-array v5, v5, [B

    iput-object v5, p0, Lcom/google/api/client/googleapis/a/b;->u:[B

    if-eqz v1, :cond_5

    .line 3605
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    aput-byte v1, v5, v3

    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    .line 3616
    :cond_6
    iget-wide v4, p0, Lcom/google/api/client/googleapis/a/b;->s:J

    iget-wide v6, p0, Lcom/google/api/client/googleapis/a/b;->p:J

    sub-long/2addr v4, v6

    long-to-int v5, v4

    .line 3619
    iget v4, p0, Lcom/google/api/client/googleapis/a/b;->t:I

    sub-int/2addr v4, v5

    invoke-static {v1, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3621
    iget-object v1, p0, Lcom/google/api/client/googleapis/a/b;->r:Ljava/lang/Byte;

    if-eqz v1, :cond_7

    .line 3623
    iget-object v4, p0, Lcom/google/api/client/googleapis/a/b;->u:[B

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    aput-byte v1, v4, v5

    :cond_7
    sub-int v4, p1, v5

    .line 3629
    :goto_3
    iget-object v1, p0, Lcom/google/api/client/googleapis/a/b;->o:Ljava/io/InputStream;

    iget-object v6, p0, Lcom/google/api/client/googleapis/a/b;->u:[B

    add-int/lit8 v7, p1, 0x1

    sub-int/2addr v7, v4

    invoke-static {v1, v6, v7, v4}, Lcom/google/api/client/a/f;->a(Ljava/io/InputStream;[BII)I

    move-result v1

    if-ge v1, v4, :cond_a

    .line 3634
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr v5, p1

    .line 3635
    iget-object p1, p0, Lcom/google/api/client/googleapis/a/b;->r:Ljava/lang/Byte;

    if-eqz p1, :cond_8

    add-int/lit8 v5, v5, 0x1

    .line 3637
    iput-object v2, p0, Lcom/google/api/client/googleapis/a/b;->r:Ljava/lang/Byte;

    .line 3640
    :cond_8
    iget-object p1, p0, Lcom/google/api/client/googleapis/a/b;->f:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 3643
    iget-wide v6, p0, Lcom/google/api/client/googleapis/a/b;->p:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/client/googleapis/a/b;->f:Ljava/lang/String;

    :cond_9
    move p1, v5

    goto :goto_4

    .line 3646
    :cond_a
    iget-object v1, p0, Lcom/google/api/client/googleapis/a/b;->u:[B

    aget-byte v1, v1, p1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/googleapis/a/b;->r:Ljava/lang/Byte;

    .line 3649
    :goto_4
    new-instance v1, Lcom/google/api/client/http/d;

    iget-object v4, p0, Lcom/google/api/client/googleapis/a/b;->i:Lcom/google/api/client/http/b;

    .line 3650
    invoke-virtual {v4}, Lcom/google/api/client/http/b;->getType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/api/client/googleapis/a/b;->u:[B

    invoke-direct {v1, v4, v5, v3, p1}, Lcom/google/api/client/http/d;-><init>(Ljava/lang/String;[BII)V

    .line 3651
    iget-wide v4, p0, Lcom/google/api/client/googleapis/a/b;->p:J

    int-to-long v6, p1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/api/client/googleapis/a/b;->s:J

    .line 3654
    :goto_5
    iput p1, p0, Lcom/google/api/client/googleapis/a/b;->t:I

    .line 3655
    iget-object v4, p0, Lcom/google/api/client/googleapis/a/b;->n:Lcom/google/api/client/http/q;

    invoke-virtual {v4, v1}, Lcom/google/api/client/http/q;->a(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;

    const-wide/16 v4, 0x1

    if-nez p1, :cond_b

    .line 3660
    iget-object p1, p0, Lcom/google/api/client/googleapis/a/b;->n:Lcom/google/api/client/http/q;

    invoke-virtual {p1}, Lcom/google/api/client/http/q;->g()Lcom/google/api/client/http/n;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "bytes */"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/google/api/client/googleapis/a/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/api/client/http/n;->c(Ljava/lang/String;)Lcom/google/api/client/http/n;

    goto :goto_6

    .line 3662
    :cond_b
    iget-object v1, p0, Lcom/google/api/client/googleapis/a/b;->n:Lcom/google/api/client/http/q;

    invoke-virtual {v1}, Lcom/google/api/client/http/q;->g()Lcom/google/api/client/http/n;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bytes "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/google/api/client/googleapis/a/b;->p:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/google/api/client/googleapis/a/b;->p:J

    int-to-long v9, p1

    add-long/2addr v7, v9

    sub-long/2addr v7, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/google/api/client/googleapis/a/b;->f:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/api/client/http/n;->c(Ljava/lang/String;)Lcom/google/api/client/http/n;

    .line 412
    :goto_6
    new-instance p1, Lcom/google/api/client/googleapis/a/c;

    iget-object v1, p0, Lcom/google/api/client/googleapis/a/b;->n:Lcom/google/api/client/http/q;

    invoke-direct {p1, p0, v1}, Lcom/google/api/client/googleapis/a/c;-><init>(Lcom/google/api/client/googleapis/a/b;Lcom/google/api/client/http/q;)V

    .line 414
    invoke-direct {p0}, Lcom/google/api/client/googleapis/a/b;->b()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 417
    iget-object p1, p0, Lcom/google/api/client/googleapis/a/b;->n:Lcom/google/api/client/http/q;

    invoke-static {p1}, Lcom/google/api/client/googleapis/a/b;->a(Lcom/google/api/client/http/q;)Lcom/google/api/client/http/t;

    move-result-object p1

    goto :goto_7

    .line 419
    :cond_c
    iget-object p1, p0, Lcom/google/api/client/googleapis/a/b;->n:Lcom/google/api/client/http/q;

    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/a/b;->b(Lcom/google/api/client/http/q;)Lcom/google/api/client/http/t;

    move-result-object p1

    .line 423
    :goto_7
    :try_start_1
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->d()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 424
    invoke-direct {p0}, Lcom/google/api/client/googleapis/a/b;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/api/client/googleapis/a/b;->p:J

    .line 425
    iget-object v0, p0, Lcom/google/api/client/googleapis/a/b;->i:Lcom/google/api/client/http/b;

    invoke-virtual {v0}, Lcom/google/api/client/http/b;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 426
    iget-object v0, p0, Lcom/google/api/client/googleapis/a/b;->o:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 428
    :cond_d
    sget v0, Lcom/google/api/client/googleapis/a/b$a;->e:I

    .line 3907
    iput v0, p0, Lcom/google/api/client/googleapis/a/b;->a:I

    return-object p1

    .line 433
    :cond_e
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->e()I

    move-result v1

    const/16 v6, 0x134

    if-eq v1, v6, :cond_f

    return-object p1

    .line 439
    :cond_f
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->c()Lcom/google/api/client/http/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/http/n;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 441
    new-instance v0, Lcom/google/api/client/http/i;

    invoke-direct {v0, v1}, Lcom/google/api/client/http/i;-><init>(Ljava/lang/String;)V

    .line 446
    :cond_10
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->c()Lcom/google/api/client/http/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/http/n;->k()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    if-nez v1, :cond_11

    move-wide v9, v6

    goto :goto_8

    :cond_11
    const/16 v9, 0x2d

    .line 4698
    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    add-long/2addr v9, v4

    .line 448
    :goto_8
    iget-wide v4, p0, Lcom/google/api/client/googleapis/a/b;->p:J

    sub-long v4, v9, v4

    cmp-long v1, v4, v6

    if-ltz v1, :cond_12

    .line 449
    iget v1, p0, Lcom/google/api/client/googleapis/a/b;->t:I

    int-to-long v11, v1

    cmp-long v1, v4, v11

    if-gtz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_9

    :cond_12
    const/4 v1, 0x0

    :goto_9
    invoke-static {v1}, Lcom/google/api/client/a/aa;->b(Z)V

    .line 451
    iget v1, p0, Lcom/google/api/client/googleapis/a/b;->t:I

    int-to-long v11, v1

    sub-long/2addr v11, v4

    .line 452
    invoke-direct {p0}, Lcom/google/api/client/googleapis/a/b;->b()Z

    move-result v1

    if-eqz v1, :cond_14

    cmp-long v1, v11, v6

    if-lez v1, :cond_15

    .line 459
    iget-object v1, p0, Lcom/google/api/client/googleapis/a/b;->o:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 460
    iget-object v1, p0, Lcom/google/api/client/googleapis/a/b;->o:Ljava/io/InputStream;

    invoke-virtual {v1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    cmp-long v6, v4, v1

    if-nez v6, :cond_13

    const/4 v3, 0x1

    .line 461
    :cond_13
    invoke-static {v3}, Lcom/google/api/client/a/aa;->b(Z)V

    goto :goto_a

    :cond_14
    cmp-long v1, v11, v6

    if-nez v1, :cond_15

    .line 467
    iput-object v2, p0, Lcom/google/api/client/googleapis/a/b;->u:[B

    .line 469
    :cond_15
    :goto_a
    iput-wide v9, p0, Lcom/google/api/client/googleapis/a/b;->p:J

    .line 471
    sget v1, Lcom/google/api/client/googleapis/a/b$a;->d:I

    .line 4907
    iput v1, p0, Lcom/google/api/client/googleapis/a/b;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->j()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/google/api/client/http/t;->j()V

    throw v0

    :catchall_1
    move-exception v0

    .line 393
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->j()V

    throw v0
.end method
