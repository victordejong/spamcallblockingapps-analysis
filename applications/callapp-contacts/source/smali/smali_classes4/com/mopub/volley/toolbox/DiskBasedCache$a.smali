.class final Lcom/mopub/volley/toolbox/DiskBasedCache$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/volley/toolbox/DiskBasedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:J

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:J

.field final e:J

.field final f:J

.field final g:J

.field final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/volley/Header;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/mopub/volley/Cache$Entry;)V
    .locals 12

    .line 418
    iget-object v2, p2, Lcom/mopub/volley/Cache$Entry;->etag:Ljava/lang/String;

    iget-wide v3, p2, Lcom/mopub/volley/Cache$Entry;->serverDate:J

    iget-wide v5, p2, Lcom/mopub/volley/Cache$Entry;->lastModified:J

    iget-wide v7, p2, Lcom/mopub/volley/Cache$Entry;->ttl:J

    iget-wide v9, p2, Lcom/mopub/volley/Cache$Entry;->softTtl:J

    .line 1430
    iget-object v0, p2, Lcom/mopub/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1431
    iget-object p2, p2, Lcom/mopub/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    goto :goto_0

    .line 1435
    :cond_0
    iget-object p2, p2, Lcom/mopub/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-static {p2}, Lcom/mopub/volley/toolbox/HttpHeaderParser;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object p2

    :goto_0
    move-object v11, p2

    move-object v0, p0

    move-object v1, p1

    .line 418
    invoke-direct/range {v0 .. v11}, Lcom/mopub/volley/toolbox/DiskBasedCache$a;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJJ",
            "Ljava/util/List<",
            "Lcom/mopub/volley/Header;",
            ">;)V"
        }
    .end annotation

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iput-object p1, p0, Lcom/mopub/volley/toolbox/DiskBasedCache$a;->b:Ljava/lang/String;

    const-string p1, ""

    .line 403
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lcom/mopub/volley/toolbox/DiskBasedCache$a;->c:Ljava/lang/String;

    .line 404
    iput-wide p3, p0, Lcom/mopub/volley/toolbox/DiskBasedCache$a;->d:J

    .line 405
    iput-wide p5, p0, Lcom/mopub/volley/toolbox/DiskBasedCache$a;->e:J

    .line 406
    iput-wide p7, p0, Lcom/mopub/volley/toolbox/DiskBasedCache$a;->f:J

    .line 407
    iput-wide p9, p0, Lcom/mopub/volley/toolbox/DiskBasedCache$a;->g:J

    .line 408
    iput-object p11, p0, Lcom/mopub/volley/toolbox/DiskBasedCache$a;->h:Ljava/util/List;

    return-void
.end method

.method static a(Lcom/mopub/volley/toolbox/DiskBasedCache$b;)Lcom/mopub/volley/toolbox/DiskBasedCache$a;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    invoke-static {p0}, Lcom/mopub/volley/toolbox/DiskBasedCache;->a(Ljava/io/InputStream;)I

    move-result v0

    const v1, 0x20150306

    if-ne v0, v1, :cond_0

    .line 450
    invoke-static {p0}, Lcom/mopub/volley/toolbox/DiskBasedCache;->a(Lcom/mopub/volley/toolbox/DiskBasedCache$b;)Ljava/lang/String;

    move-result-object v3

    .line 451
    invoke-static {p0}, Lcom/mopub/volley/toolbox/DiskBasedCache;->a(Lcom/mopub/volley/toolbox/DiskBasedCache$b;)Ljava/lang/String;

    move-result-object v4

    .line 452
    invoke-static {p0}, Lcom/mopub/volley/toolbox/DiskBasedCache;->b(Ljava/io/InputStream;)J

    move-result-wide v5

    .line 453
    invoke-static {p0}, Lcom/mopub/volley/toolbox/DiskBasedCache;->b(Ljava/io/InputStream;)J

    move-result-wide v7

    .line 454
    invoke-static {p0}, Lcom/mopub/volley/toolbox/DiskBasedCache;->b(Ljava/io/InputStream;)J

    move-result-wide v9

    .line 455
    invoke-static {p0}, Lcom/mopub/volley/toolbox/DiskBasedCache;->b(Ljava/io/InputStream;)J

    move-result-wide v11

    .line 456
    invoke-static {p0}, Lcom/mopub/volley/toolbox/DiskBasedCache;->b(Lcom/mopub/volley/toolbox/DiskBasedCache$b;)Ljava/util/List;

    move-result-object v13

    .line 457
    new-instance p0, Lcom/mopub/volley/toolbox/DiskBasedCache$a;

    move-object v2, p0

    invoke-direct/range {v2 .. v13}, Lcom/mopub/volley/toolbox/DiskBasedCache$a;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-object p0

    .line 448
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method


# virtual methods
.method final a(Ljava/io/OutputStream;)Z
    .locals 4

    const v0, 0x20150306

    const/4 v1, 0x1

    .line 478
    :try_start_0
    invoke-static {p1, v0}, Lcom/mopub/volley/toolbox/DiskBasedCache;->a(Ljava/io/OutputStream;I)V

    .line 479
    iget-object v0, p0, Lcom/mopub/volley/toolbox/DiskBasedCache$a;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mopub/volley/toolbox/DiskBasedCache;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/mopub/volley/toolbox/DiskBasedCache$a;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-static {p1, v0}, Lcom/mopub/volley/toolbox/DiskBasedCache;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 481
    iget-wide v2, p0, Lcom/mopub/volley/toolbox/DiskBasedCache$a;->d:J

    invoke-static {p1, v2, v3}, Lcom/mopub/volley/toolbox/DiskBasedCache;->a(Ljava/io/OutputStream;J)V

    .line 482
    iget-wide v2, p0, Lcom/mopub/volley/toolbox/DiskBasedCache$a;->e:J

    invoke-static {p1, v2, v3}, Lcom/mopub/volley/toolbox/DiskBasedCache;->a(Ljava/io/OutputStream;J)V

    .line 483
    iget-wide v2, p0, Lcom/mopub/volley/toolbox/DiskBasedCache$a;->f:J

    invoke-static {p1, v2, v3}, Lcom/mopub/volley/toolbox/DiskBasedCache;->a(Ljava/io/OutputStream;J)V

    .line 484
    iget-wide v2, p0, Lcom/mopub/volley/toolbox/DiskBasedCache$a;->g:J

    invoke-static {p1, v2, v3}, Lcom/mopub/volley/toolbox/DiskBasedCache;->a(Ljava/io/OutputStream;J)V

    .line 485
    iget-object v0, p0, Lcom/mopub/volley/toolbox/DiskBasedCache$a;->h:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/mopub/volley/toolbox/DiskBasedCache;->a(Ljava/util/List;Ljava/io/OutputStream;)V

    .line 486
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    new-array v0, v1, [Ljava/lang/Object;

    .line 489
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%s"

    invoke-static {p1, v0}, Lcom/mopub/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method
