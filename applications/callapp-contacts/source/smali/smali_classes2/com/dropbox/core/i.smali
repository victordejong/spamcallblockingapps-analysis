.class public final Lcom/dropbox/core/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/i$a;,
        Lcom/dropbox/core/i$b;
    }
.end annotation


# static fields
.field public static a:Lcom/dropbox/core/v2/a/a;

.field private static final b:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/dropbox/core/i;->b:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/dropbox/core/http/a$b;)Lcom/dropbox/core/DbxException;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/NetworkIOException;,
            Lcom/dropbox/core/BadResponseException;
        }
    .end annotation

    .line 324
    invoke-static {p0}, Lcom/dropbox/core/i;->b(Lcom/dropbox/core/http/a$b;)Lcom/dropbox/core/DbxException;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/dropbox/core/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;)Lcom/dropbox/core/http/a$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/h;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/a$a;",
            ">;)",
            "Lcom/dropbox/core/http/a$b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/NetworkIOException;
        }
    .end annotation

    .line 269
    invoke-static {p2, p3}, Lcom/dropbox/core/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 271
    invoke-static {p5}, Lcom/dropbox/core/i;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    .line 272
    invoke-static {p3, p0, p1}, Lcom/dropbox/core/i;->a(Ljava/util/List;Lcom/dropbox/core/h;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 273
    new-instance p3, Lcom/dropbox/core/http/a$a;

    array-length p5, p4

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p5

    const-string v0, "Content-Length"

    invoke-direct {p3, v0, p5}, Lcom/dropbox/core/http/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4118
    :try_start_0
    iget-object p0, p0, Lcom/dropbox/core/h;->c:Lcom/dropbox/core/http/a;

    .line 276
    invoke-virtual {p0, p2, p1}, Lcom/dropbox/core/http/a;->a(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/a$c;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :try_start_1
    invoke-virtual {p0, p4}, Lcom/dropbox/core/http/a$c;->a([B)V

    .line 279
    invoke-virtual {p0}, Lcom/dropbox/core/http/a$c;->c()Lcom/dropbox/core/http/a$b;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    :try_start_2
    invoke-virtual {p0}, Lcom/dropbox/core/http/a$c;->b()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/dropbox/core/http/a$c;->b()V

    .line 282
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 284
    new-instance p1, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {p1, p0}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw p1
.end method

.method public static a(Lcom/dropbox/core/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/http/a$b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/h;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/a$a;",
            ">;)",
            "Lcom/dropbox/core/http/a$b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/NetworkIOException;
        }
    .end annotation

    .line 4110
    iget-object v0, p0, Lcom/dropbox/core/h;->b:Ljava/lang/String;

    .line 250
    invoke-static {v0, p4}, Lcom/dropbox/core/i;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/dropbox/core/util/f;->a(Ljava/lang/String;)[B

    move-result-object v4

    .line 252
    invoke-static {p5}, Lcom/dropbox/core/i;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 253
    new-instance p4, Lcom/dropbox/core/http/a$a;

    const-string p5, "Content-Type"

    const-string v0, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-direct {p4, p5, v0}, Lcom/dropbox/core/http/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 255
    invoke-static/range {v0 .. v5}, Lcom/dropbox/core/i;->a(Lcom/dropbox/core/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;)Lcom/dropbox/core/http/a$b;

    move-result-object p0

    return-object p0
.end method

.method private static a(ILcom/dropbox/core/i$a;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(I",
            "Lcom/dropbox/core/i$a<",
            "TT;TE;>;)TT;^",
            "Lcom/dropbox/core/DbxException;",
            "^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;,
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const-wide/16 v1, 0x0

    .line 554
    :try_start_0
    invoke-virtual {p1}, Lcom/dropbox/core/i$a;->a()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lcom/dropbox/core/RetryException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/dropbox/core/ServerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v3

    move-wide v4, v1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 21045
    iget-wide v4, v3, Lcom/dropbox/core/RetryException;->a:J

    :goto_1
    if-ge v0, p0, :cond_1

    .line 569
    sget-object v3, Lcom/dropbox/core/i;->b:Ljava/util/Random;

    const/16 v6, 0x3e8

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    cmp-long v3, v4, v1

    if-lez v3, :cond_0

    .line 573
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 576
    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 564
    :cond_1
    throw v3
.end method

.method public static a(Lcom/dropbox/core/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/i$b;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/h;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/a$a;",
            ">;",
            "Lcom/dropbox/core/i$b<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    move-object v1, p0

    .line 18156
    iget v8, v1, Lcom/dropbox/core/h;->d:I

    .line 502
    new-instance v9, Lcom/dropbox/core/i$1;

    move-object v0, v9

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/i$1;-><init>(Lcom/dropbox/core/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/i$b;)V

    invoke-static {v8, v9}, Lcom/dropbox/core/i;->a(ILcom/dropbox/core/i$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/dropbox/core/http/a$b;Lcom/dropbox/core/i$b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/http/a$b;",
            "Lcom/dropbox/core/i$b<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 513
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/dropbox/core/i$b;->a(Lcom/dropbox/core/http/a$b;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19151
    iget-object p0, p0, Lcom/dropbox/core/http/a$b;->b:Ljava/io/InputStream;

    .line 515
    invoke-static {p0}, Lcom/dropbox/core/util/IOUtil;->b(Ljava/io/InputStream;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 20151
    iget-object p0, p0, Lcom/dropbox/core/http/a$b;->b:Ljava/io/InputStream;

    .line 515
    invoke-static {p0}, Lcom/dropbox/core/util/IOUtil;->b(Ljava/io/InputStream;)V

    .line 516
    throw p1
.end method

.method public static a(Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/http/a$b;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/json/JsonReader<",
            "TT;>;",
            "Lcom/dropbox/core/http/a$b;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/BadResponseException;,
            Lcom/dropbox/core/NetworkIOException;
        }
    .end annotation

    .line 17151
    :try_start_0
    iget-object v0, p1, Lcom/dropbox/core/http/a$b;->b:Ljava/io/InputStream;

    .line 434
    invoke-virtual {p0, v0}, Lcom/dropbox/core/json/JsonReader;->readFully(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 439
    new-instance p1, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {p1, p0}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw p1

    :catch_1
    move-exception p0

    const-string v0, "X-Dropbox-Request-Id"

    .line 17536
    invoke-static {p1, v0}, Lcom/dropbox/core/i;->b(Lcom/dropbox/core/http/a$b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 437
    new-instance v0, Lcom/dropbox/core/BadResponseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error in response JSON: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dropbox/core/json/JsonReadException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a(Lcom/dropbox/core/http/a$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/NetworkIOException;,
            Lcom/dropbox/core/BadResponseException;
        }
    .end annotation

    .line 426
    invoke-static {p0}, Lcom/dropbox/core/i;->d(Lcom/dropbox/core/http/a$b;)[B

    move-result-object v0

    .line 17140
    iget p0, p0, Lcom/dropbox/core/http/a$b;->a:I

    .line 427
    invoke-static {p1, p0, v0}, Lcom/dropbox/core/i;->a(Ljava/lang/String;I[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 44
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "UTF-8 should always be supported"

    .line 46
    invoke-static {v0, p0}, Lcom/dropbox/core/util/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static a(Ljava/lang/String;I[B)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/BadResponseException;
        }
    .end annotation

    .line 317
    :try_start_0
    invoke-static {p2}, Lcom/dropbox/core/util/f;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    .line 319
    new-instance v0, Lcom/dropbox/core/BadResponseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got non-UTF8 response body: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/nio/charset/CharacterCodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 70
    :try_start_0
    new-instance v0, Ljava/net/URI;

    const-string v1, "https"

    const-string v2, "/"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, p0, v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URI creation failed, host="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/dropbox/core/util/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", path="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/dropbox/core/util/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/dropbox/core/util/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/dropbox/core/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p3}, Lcom/dropbox/core/i;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&"

    if-eqz p0, :cond_0

    const-string v2, "locale="

    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/dropbox/core/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object p0, v1

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    if-eqz p1, :cond_4

    .line 87
    array-length v2, p1

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    .line 90
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_4

    .line 91
    aget-object v3, p1, v2

    add-int/lit8 v4, v2, 0x1

    .line 92
    aget-object v4, p1, v4

    if-eqz v3, :cond_2

    if-eqz v4, :cond_1

    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-static {v3}, Lcom/dropbox/core/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    .line 97
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-static {v4}, Lcom/dropbox/core/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object p0, v1

    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 93
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "params["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] is null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 88
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'params.length\' is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; expecting a multiple of two"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 104
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/a$a;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/a$a;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 178
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 181
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dropbox/core/http/a$a;

    .line 4065
    iget-object v3, v2, Lcom/dropbox/core/http/a$a;->a:Ljava/lang/String;

    const-string v4, "Authorization"

    .line 184
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 185
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    :cond_2
    invoke-interface {p0, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public static a(Ljava/util/List;Lcom/dropbox/core/h;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/a$a;",
            ">;",
            "Lcom/dropbox/core/h;",
            ")",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/a$a;",
            ">;"
        }
    .end annotation

    .line 2110
    iget-object v0, p1, Lcom/dropbox/core/h;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    return-object p0

    .line 158
    :cond_0
    new-instance v0, Lcom/dropbox/core/http/a$a;

    .line 3110
    iget-object p1, p1, Lcom/dropbox/core/h;->b:Ljava/lang/String;

    const-string v1, "Dropbox-API-User-Locale"

    .line 158
    invoke-direct {v0, v1, p1}, Lcom/dropbox/core/http/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static a(Ljava/util/List;Lcom/dropbox/core/h;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/a$a;",
            ">;",
            "Lcom/dropbox/core/h;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/a$a;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 147
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1163
    :cond_0
    new-instance v0, Lcom/dropbox/core/http/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2086
    iget-object p1, p1, Lcom/dropbox/core/h;->a:Ljava/lang/String;

    .line 1163
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/dropbox/core/j;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "User-Agent"

    invoke-direct {v0, p2, p1}, Lcom/dropbox/core/http/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static a(Ljava/util/List;Lcom/dropbox/core/v2/c/a;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/a$a;",
            ">;",
            "Lcom/dropbox/core/v2/c/a;",
            ")",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/a$a;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 172
    :cond_0
    new-instance v0, Lcom/dropbox/core/http/a$a;

    invoke-virtual {p1}, Lcom/dropbox/core/v2/c/a;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Dropbox-API-Path-Root"

    invoke-direct {v0, v1, p1}, Lcom/dropbox/core/http/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/a$a;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/a$a;",
            ">;"
        }
    .end annotation

    const-string v0, "accessToken"

    .line 108
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p0, :cond_0

    .line 109
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    :cond_0
    new-instance v0, Lcom/dropbox/core/http/a$a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Bearer "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Authorization"

    invoke-direct {v0, v1, p1}, Lcom/dropbox/core/http/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/a$a;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/a$a;",
            ">;"
        }
    .end annotation

    const-string v0, "username"

    .line 132
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "password"

    .line 133
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-static {p1}, Lcom/dropbox/core/util/f;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/dropbox/core/util/f;->b([B)Ljava/lang/String;

    move-result-object p1

    .line 138
    new-instance p2, Lcom/dropbox/core/http/a$a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Basic "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Authorization"

    invoke-direct {p2, v0, p1}, Lcom/dropbox/core/http/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static a(Ljava/util/Map;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 58
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 60
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 61
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    .line 62
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static b(Lcom/dropbox/core/http/a$b;)Lcom/dropbox/core/DbxException;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/NetworkIOException;,
            Lcom/dropbox/core/BadResponseException;
        }
    .end annotation

    const-string v0, "X-Dropbox-Request-Id"

    .line 5536
    invoke-static {p0, v0}, Lcom/dropbox/core/i;->b(Lcom/dropbox/core/http/a$b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6140
    iget v1, p0, Lcom/dropbox/core/http/a$b;->a:I

    const/16 v2, 0x190

    if-eq v1, v2, :cond_a

    const/16 v2, 0x191

    const-string v3, "Bad JSON: "

    if-eq v1, v2, :cond_9

    const/16 v2, 0x193

    const/4 v4, 0x0

    if-eq v1, v2, :cond_7

    const/16 v2, 0x1a6

    if-eq v1, v2, :cond_5

    const/16 v2, 0x1ad

    const-string v8, "Invalid value for HTTP header: \"Retry-After\""

    const-string v3, "Retry-After"

    if-eq v1, v2, :cond_3

    const/16 v0, 0x1f4

    if-eq v1, v0, :cond_2

    const/16 v0, 0x1f7

    if-eq v1, v0, :cond_0

    .line 409
    new-instance v0, Lcom/dropbox/core/BadResponseCodeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected HTTP status code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15140
    iget v2, p0, Lcom/dropbox/core/http/a$b;->a:I

    .line 411
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16140
    iget p0, p0, Lcom/dropbox/core/http/a$b;->a:I

    .line 412
    invoke-direct {v0, v7, v1, p0}, Lcom/dropbox/core/BadResponseCodeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 394
    :cond_0
    invoke-static {p0, v3}, Lcom/dropbox/core/i;->b(Lcom/dropbox/core/http/a$b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 396
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 397
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 398
    new-instance v0, Lcom/dropbox/core/RetryException;

    const/4 v3, 0x0

    int-to-long v4, p0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, v0

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/core/RetryException;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    goto/16 :goto_0

    .line 401
    :cond_1
    new-instance v0, Lcom/dropbox/core/RetryException;

    invoke-direct {v0, v7, v4}, Lcom/dropbox/core/RetryException;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 405
    :catch_0
    new-instance v0, Lcom/dropbox/core/BadResponseException;

    invoke-direct {v0, v7, v8}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 390
    :cond_2
    new-instance v0, Lcom/dropbox/core/ServerException;

    invoke-direct {v0, v7, v4}, Lcom/dropbox/core/ServerException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 14160
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/dropbox/core/http/a$b;->c:Ljava/util/Map;

    .line 13520
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 13521
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 p0, 0x0

    .line 13524
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 382
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 383
    new-instance v0, Lcom/dropbox/core/RateLimitException;

    const/4 v3, 0x0

    int-to-long v4, p0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, v0

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/core/RateLimitException;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    goto/16 :goto_0

    .line 13522
    :cond_4
    new-instance v1, Lcom/dropbox/core/BadResponseException;

    .line 14536
    invoke-static {p0, v0}, Lcom/dropbox/core/i;->b(Lcom/dropbox/core/http/a$b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 13522
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "missing HTTP header \""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 386
    :catch_1
    new-instance v0, Lcom/dropbox/core/BadResponseException;

    invoke-direct {v0, v7, v8}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 367
    :cond_5
    :try_start_2
    new-instance v0, Lcom/dropbox/core/a$a;

    sget-object v1, Lcom/dropbox/core/v2/c/b$a;->a:Lcom/dropbox/core/v2/c/b$a;

    invoke-direct {v0, v1}, Lcom/dropbox/core/a$a;-><init>(Lcom/dropbox/core/a/c;)V

    .line 10151
    iget-object p0, p0, Lcom/dropbox/core/http/a$b;->b:Ljava/io/InputStream;

    .line 368
    invoke-virtual {v0, p0}, Lcom/dropbox/core/a$a;->deserialize(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/a;

    .line 11030
    iget-object v0, p0, Lcom/dropbox/core/a;->b:Lcom/dropbox/core/n;

    if-eqz v0, :cond_6

    .line 12030
    iget-object v0, p0, Lcom/dropbox/core/a;->b:Lcom/dropbox/core/n;

    .line 370
    invoke-virtual {v0}, Lcom/dropbox/core/n;->toString()Ljava/lang/String;

    move-result-object v4

    .line 13026
    :cond_6
    iget-object p0, p0, Lcom/dropbox/core/a;->a:Ljava/lang/Object;

    .line 372
    check-cast p0, Lcom/dropbox/core/v2/c/b;

    .line 373
    new-instance v0, Lcom/dropbox/core/PathRootErrorException;

    invoke-direct {v0, v7, v4, p0}, Lcom/dropbox/core/PathRootErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/c/b;)V
    :try_end_2
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception p0

    .line 377
    new-instance v0, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {v0, p0}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v0

    :catch_3
    move-exception p0

    .line 375
    new-instance v0, Lcom/dropbox/core/BadResponseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonProcessingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1, p0}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 352
    :cond_7
    :try_start_3
    new-instance v0, Lcom/dropbox/core/a$a;

    sget-object v1, Lcom/dropbox/core/v2/auth/a$a;->a:Lcom/dropbox/core/v2/auth/a$a;

    invoke-direct {v0, v1}, Lcom/dropbox/core/a$a;-><init>(Lcom/dropbox/core/a/c;)V

    .line 7151
    iget-object p0, p0, Lcom/dropbox/core/http/a$b;->b:Ljava/io/InputStream;

    .line 353
    invoke-virtual {v0, p0}, Lcom/dropbox/core/a$a;->deserialize(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/a;

    .line 8030
    iget-object v0, p0, Lcom/dropbox/core/a;->b:Lcom/dropbox/core/n;

    if-eqz v0, :cond_8

    .line 9030
    iget-object v0, p0, Lcom/dropbox/core/a;->b:Lcom/dropbox/core/n;

    .line 355
    invoke-virtual {v0}, Lcom/dropbox/core/n;->toString()Ljava/lang/String;

    move-result-object v4

    .line 10026
    :cond_8
    iget-object p0, p0, Lcom/dropbox/core/a;->a:Ljava/lang/Object;

    .line 357
    check-cast p0, Lcom/dropbox/core/v2/auth/a;

    .line 358
    new-instance v0, Lcom/dropbox/core/AccessErrorException;

    invoke-direct {v0, v7, v4, p0}, Lcom/dropbox/core/AccessErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/auth/a;)V
    :try_end_3
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    :catch_4
    move-exception p0

    .line 362
    new-instance v0, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {v0, p0}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v0

    :catch_5
    move-exception p0

    .line 360
    new-instance v0, Lcom/dropbox/core/BadResponseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonProcessingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1, p0}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 340
    :cond_9
    invoke-static {p0, v7}, Lcom/dropbox/core/i;->a(Lcom/dropbox/core/http/a$b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 342
    :try_start_4
    new-instance v0, Lcom/dropbox/core/a$a;

    sget-object v1, Lcom/dropbox/core/v2/auth/b$a;->a:Lcom/dropbox/core/v2/auth/b$a;

    invoke-direct {v0, v1}, Lcom/dropbox/core/a$a;-><init>(Lcom/dropbox/core/a/c;)V

    .line 343
    invoke-virtual {v0, p0}, Lcom/dropbox/core/a$a;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/a;

    .line 7026
    iget-object v0, v0, Lcom/dropbox/core/a;->a:Ljava/lang/Object;

    .line 344
    check-cast v0, Lcom/dropbox/core/v2/auth/b;

    .line 345
    new-instance v1, Lcom/dropbox/core/InvalidAccessTokenException;

    invoke-direct {v1, v7, p0, v0}, Lcom/dropbox/core/InvalidAccessTokenException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/auth/b;)V
    :try_end_4
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    goto :goto_0

    :catch_6
    move-exception p0

    .line 347
    new-instance v0, Lcom/dropbox/core/BadResponseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1, p0}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 336
    :cond_a
    invoke-static {p0, v7}, Lcom/dropbox/core/i;->a(Lcom/dropbox/core/http/a$b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 337
    new-instance v0, Lcom/dropbox/core/BadRequestException;

    invoke-direct {v0, v7, p0}, Lcom/dropbox/core/BadRequestException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private static b(Lcom/dropbox/core/http/a$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20160
    iget-object p0, p0, Lcom/dropbox/core/http/a$b;->c:Ljava/util/Map;

    .line 528
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    .line 529
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 532
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/a$a;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/a$a;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 290
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 292
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static c(Lcom/dropbox/core/http/a$b;)Ljava/lang/String;
    .locals 1

    const-string v0, "X-Dropbox-Request-Id"

    .line 536
    invoke-static {p0, v0}, Lcom/dropbox/core/i;->b(Lcom/dropbox/core/http/a$b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lcom/dropbox/core/http/a$b;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/NetworkIOException;
        }
    .end annotation

    .line 4151
    iget-object v0, p0, Lcom/dropbox/core/http/a$b;->b:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    .line 5151
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/dropbox/core/http/a$b;->b:Ljava/io/InputStream;

    .line 304
    invoke-static {p0}, Lcom/dropbox/core/util/IOUtil;->a(Ljava/io/InputStream;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 306
    new-instance v0, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {v0, p0}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method
