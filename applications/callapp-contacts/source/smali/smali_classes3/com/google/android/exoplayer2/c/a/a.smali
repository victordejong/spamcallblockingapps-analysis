.class public final Lcom/google/android/exoplayer2/c/a/a;
.super Lcom/google/android/exoplayer2/upstream/d;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/HttpDataSource;


# static fields
.field private static final b:[B


# instance fields
.field private final c:Lokhttp3/Call$Factory;

.field private final d:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

.field private final e:Ljava/lang/String;

.field private final f:Lokhttp3/CacheControl;

.field private final g:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

.field private h:Lcom/google/common/base/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/n<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/android/exoplayer2/upstream/j;

.field private j:Lokhttp3/Response;

.field private k:Ljava/io/InputStream;

.field private l:Z

.field private m:J

.field private n:J

.field private o:J

.field private p:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.okhttp"

    .line 62
    invoke-static {v0}, Lcom/google/android/exoplayer2/p;->a(Ljava/lang/String;)V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 171
    sput-object v0, Lcom/google/android/exoplayer2/c/a/a;->b:[B

    return-void
.end method

.method public constructor <init>(Lokhttp3/Call$Factory;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 196
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/c/a/a;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/Call$Factory;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 203
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/android/exoplayer2/c/a/a;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lokhttp3/CacheControl;Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lokhttp3/CacheControl;Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 213
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/c/a/a;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lokhttp3/CacheControl;Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;Lcom/google/common/base/n;)V

    return-void
.end method

.method private constructor <init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lokhttp3/CacheControl;Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;Lcom/google/common/base/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call$Factory;",
            "Ljava/lang/String;",
            "Lokhttp3/CacheControl;",
            "Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;",
            "Lcom/google/common/base/n<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 227
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/d;-><init>(Z)V

    .line 228
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/Call$Factory;

    iput-object p1, p0, Lcom/google/android/exoplayer2/c/a/a;->c:Lokhttp3/Call$Factory;

    .line 229
    iput-object p2, p0, Lcom/google/android/exoplayer2/c/a/a;->e:Ljava/lang/String;

    .line 230
    iput-object p3, p0, Lcom/google/android/exoplayer2/c/a/a;->f:Lokhttp3/CacheControl;

    .line 231
    iput-object p4, p0, Lcom/google/android/exoplayer2/c/a/a;->g:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

    .line 232
    iput-object p5, p0, Lcom/google/android/exoplayer2/c/a/a;->h:Lcom/google/common/base/n;

    .line 233
    new-instance p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/c/a/a;->d:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lokhttp3/CacheControl;Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;Lcom/google/common/base/n;Lcom/google/android/exoplayer2/c/a/a$1;)V
    .locals 0

    .line 59
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/c/a/a;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lokhttp3/CacheControl;Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;Lcom/google/common/base/n;)V

    return-void
.end method

.method private f()V
    .locals 2

    .line 527
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/a;->j:Lokhttp3/Response;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 529
    iput-object v1, p0, Lcom/google/android/exoplayer2/c/a/a;->j:Lokhttp3/Response;

    .line 531
    :cond_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/c/a/a;->k:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 2465
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/a/a;->o:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/a/a;->m:J

    const/4 v4, 0x0

    const/4 v5, -0x1

    cmp-long v6, v0, v2

    if-eqz v6, :cond_2

    .line 2469
    :goto_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/a/a;->o:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/a/a;->m:J

    cmp-long v6, v0, v2

    if-eqz v6, :cond_2

    sub-long/2addr v2, v0

    .line 2470
    sget-object v0, Lcom/google/android/exoplayer2/c/a/a;->b:[B

    array-length v1, v0

    int-to-long v6, v1

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 2471
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/a/a;->k:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 2472
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1

    if-eq v0, v5, :cond_0

    .line 2478
    iget-wide v1, p0, Lcom/google/android/exoplayer2/c/a/a;->o:J

    int-to-long v6, v0

    add-long/2addr v1, v6

    iput-wide v1, p0, Lcom/google/android/exoplayer2/c/a/a;->o:J

    .line 2479
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/c/a/a;->a(I)V

    goto :goto_0

    .line 2476
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 2473
    :cond_1
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :cond_2
    if-nez p3, :cond_3

    return v4

    .line 2501
    :cond_3
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/a/a;->n:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    .line 2502
    iget-wide v6, p0, Lcom/google/android/exoplayer2/c/a/a;->p:J

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-nez v4, :cond_4

    return v5

    :cond_4
    int-to-long v6, p3

    .line 2506
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 2509
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/a;->k:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v5, :cond_7

    .line 2511
    iget-wide p1, p0, Lcom/google/android/exoplayer2/c/a/a;->n:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_6

    return v5

    .line 2513
    :cond_6
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 2518
    :cond_7
    iget-wide p2, p0, Lcom/google/android/exoplayer2/c/a/a;->p:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/exoplayer2/c/a/a;->p:J

    .line 2519
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/c/a/a;->a(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 357
    new-instance p2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    iget-object p3, p0, Lcom/google/android/exoplayer2/c/a/a;->i:Lcom/google/android/exoplayer2/upstream/j;

    .line 358
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/upstream/j;

    const/4 v0, 0x2

    invoke-direct {p2, p1, p3, v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/j;I)V

    throw p2
.end method

.method public final a(Lcom/google/android/exoplayer2/upstream/j;)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 280
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/a/a;->i:Lcom/google/android/exoplayer2/upstream/j;

    const-wide/16 v1, 0x0

    .line 281
    iput-wide v1, p0, Lcom/google/android/exoplayer2/c/a/a;->p:J

    .line 282
    iput-wide v1, p0, Lcom/google/android/exoplayer2/c/a/a;->o:J

    .line 283
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c/a/a;->d()V

    .line 1405
    iget-wide v3, p1, Lcom/google/android/exoplayer2/upstream/j;->g:J

    .line 1406
    iget-wide v6, p1, Lcom/google/android/exoplayer2/upstream/j;->h:J

    .line 1408
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/j;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    const/4 v8, 0x1

    if-eqz v0, :cond_13

    .line 1414
    new-instance v9, Lokhttp3/Request$Builder;

    invoke-direct {v9}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v9, v0}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 1415
    iget-object v9, p0, Lcom/google/android/exoplayer2/c/a/a;->f:Lokhttp3/CacheControl;

    if-eqz v9, :cond_0

    .line 1416
    invoke-virtual {v0, v9}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    .line 1419
    :cond_0
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1420
    iget-object v10, p0, Lcom/google/android/exoplayer2/c/a/a;->g:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

    if-eqz v10, :cond_1

    .line 1421
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;->a()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1424
    :cond_1
    iget-object v10, p0, Lcom/google/android/exoplayer2/c/a/a;->d:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;->a()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1425
    iget-object v10, p1, Lcom/google/android/exoplayer2/upstream/j;->e:Ljava/util/Map;

    invoke-interface {v9, v10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1427
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 1428
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v0, v11, v10}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_2
    const-wide/16 v9, -0x1

    cmp-long v11, v3, v1

    if-nez v11, :cond_3

    cmp-long v11, v6, v9

    if-eqz v11, :cond_5

    .line 1432
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "bytes="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    cmp-long v12, v6, v9

    if-eqz v12, :cond_4

    .line 1434
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long/2addr v3, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v3, v6

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_4
    const-string v3, "Range"

    .line 1436
    invoke-virtual {v0, v3, v11}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 1438
    :cond_5
    iget-object v3, p0, Lcom/google/android/exoplayer2/c/a/a;->e:Ljava/lang/String;

    if-eqz v3, :cond_6

    const-string v4, "User-Agent"

    .line 1439
    invoke-virtual {v0, v4, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 1441
    :cond_6
    invoke-virtual {p1, v8}, Lcom/google/android/exoplayer2/upstream/j;->b(I)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "Accept-Encoding"

    const-string v4, "identity"

    .line 1442
    invoke-virtual {v0, v3, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 1446
    :cond_7
    iget-object v3, p1, Lcom/google/android/exoplayer2/upstream/j;->d:[B

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    .line 1447
    iget-object v3, p1, Lcom/google/android/exoplayer2/upstream/j;->d:[B

    invoke-static {v4, v3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v4

    goto :goto_1

    .line 1448
    :cond_8
    iget v3, p1, Lcom/google/android/exoplayer2/upstream/j;->c:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_9

    .line 1450
    sget-object v3, Lcom/google/android/exoplayer2/util/af;->f:[B

    invoke-static {v4, v3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v4

    .line 1670
    :cond_9
    :goto_1
    iget v3, p1, Lcom/google/android/exoplayer2/upstream/j;->c:I

    invoke-static {v3}, Lcom/google/android/exoplayer2/upstream/j;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 1452
    invoke-virtual {v0, v3, v4}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 1453
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 289
    :try_start_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/c/a/a;->c:Lokhttp3/Call$Factory;

    invoke-interface {v3, v0}, Lokhttp3/Call$Factory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/a/a;->j:Lokhttp3/Response;

    .line 291
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/ResponseBody;

    .line 292
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/c/a/a;->k:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 303
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v7

    .line 306
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v4

    if-nez v4, :cond_b

    .line 309
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/a/a;->k:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/io/InputStream;)[B

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 311
    :catch_0
    sget-object v1, Lcom/google/android/exoplayer2/util/af;->f:[B

    :goto_2
    move-object v6, v1

    .line 313
    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v4

    .line 314
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/a/a;->f()V

    .line 315
    new-instance v8, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    .line 317
    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v3

    move-object v1, v8

    move v2, v7

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/lang/String;Ljava/util/Map;Lcom/google/android/exoplayer2/upstream/j;[B)V

    const/16 v0, 0x1a0

    if-ne v7, v0, :cond_a

    .line 319
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    invoke-virtual {v8, v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 321
    :cond_a
    throw v8

    .line 325
    :cond_b
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 326
    invoke-virtual {v0}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_c
    const-string v0, ""

    .line 327
    :goto_3
    iget-object v4, p0, Lcom/google/android/exoplayer2/c/a/a;->h:Lcom/google/common/base/n;

    if-eqz v4, :cond_e

    invoke-interface {v4, v0}, Lcom/google/common/base/n;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_4

    .line 328
    :cond_d
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/a/a;->f()V

    .line 329
    new-instance v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/j;)V

    throw v1

    :cond_e
    :goto_4
    const/16 v0, 0xc8

    if-ne v7, v0, :cond_f

    .line 335
    iget-wide v6, p1, Lcom/google/android/exoplayer2/upstream/j;->g:J

    cmp-long v0, v6, v1

    if-eqz v0, :cond_f

    iget-wide v1, p1, Lcom/google/android/exoplayer2/upstream/j;->g:J

    :cond_f
    iput-wide v1, p0, Lcom/google/android/exoplayer2/c/a/a;->m:J

    .line 338
    iget-wide v1, p1, Lcom/google/android/exoplayer2/upstream/j;->h:J

    cmp-long v0, v1, v9

    if-eqz v0, :cond_10

    .line 339
    iget-wide v9, p1, Lcom/google/android/exoplayer2/upstream/j;->h:J

    goto :goto_5

    .line 341
    :cond_10
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v1

    cmp-long v0, v1, v9

    if-eqz v0, :cond_11

    .line 342
    iget-wide v3, p0, Lcom/google/android/exoplayer2/c/a/a;->m:J

    sub-long v9, v1, v3

    :cond_11
    :goto_5
    iput-wide v9, p0, Lcom/google/android/exoplayer2/c/a/a;->n:J

    .line 345
    iput-boolean v8, p0, Lcom/google/android/exoplayer2/c/a/a;->l:Z

    .line 346
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/c/a/a;->b(Lcom/google/android/exoplayer2/upstream/j;)V

    .line 348
    iget-wide v1, p0, Lcom/google/android/exoplayer2/c/a/a;->n:J

    return-wide v1

    :catch_1
    move-exception v0

    .line 294
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 296
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cleartext communication.*not permitted.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 297
    new-instance v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$CleartextNotPermittedException;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$CleartextNotPermittedException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/j;)V

    throw v1

    .line 299
    :cond_12
    new-instance v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    const-string v2, "Unable to connect"

    invoke-direct {v1, v2, v0, p1, v8}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/j;I)V

    throw v1

    .line 1410
    :cond_13
    new-instance v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    const-string v1, "Malformed URL"

    invoke-direct {v0, v1, p1, v8}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/j;I)V

    throw v0
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/a;->j:Lokhttp3/Response;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/a;->j:Lokhttp3/Response;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 364
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/a/a;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 365
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/a/a;->l:Z

    .line 366
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/c/a/a;->e()V

    .line 367
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/a/a;->f()V

    :cond_0
    return-void
.end method
