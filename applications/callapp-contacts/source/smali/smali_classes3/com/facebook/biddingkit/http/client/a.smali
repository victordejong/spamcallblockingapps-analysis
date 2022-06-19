.class public final Lcom/facebook/biddingkit/http/client/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:I

.field protected b:I

.field protected c:Ljava/lang/String;

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Z

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7d0

    .line 44
    iput v0, p0, Lcom/facebook/biddingkit/http/client/a;->a:I

    const/16 v0, 0x1f40

    .line 48
    iput v0, p0, Lcom/facebook/biddingkit/http/client/a;->b:I

    const-string v0, "UTF-8"

    .line 50
    iput-object v0, p0, Lcom/facebook/biddingkit/http/client/a;->c:Ljava/lang/String;

    const/4 v0, 0x3

    .line 55
    iput v0, p0, Lcom/facebook/biddingkit/http/client/a;->f:I

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/facebook/biddingkit/http/client/a;->g:Z

    .line 58
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/biddingkit/http/client/a;->h:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;[B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 418
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 420
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 422
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 427
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 432
    :catch_1
    :cond_2
    throw p0
.end method

.method private a(Ljava/lang/String;Lcom/facebook/biddingkit/http/client/c;Ljava/lang/String;[B)Lcom/facebook/biddingkit/http/client/f;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/biddingkit/http/client/HttpRequestException;
        }
    .end annotation

    const-string v0, "SHA-1"

    const-string v1, "AndroidHttpClient"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 196
    :try_start_0
    iput-boolean v3, p0, Lcom/facebook/biddingkit/http/client/a;->g:Z

    .line 197
    invoke-static {p1}, Lcom/facebook/biddingkit/http/client/a;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1380
    :try_start_1
    iget v4, p0, Lcom/facebook/biddingkit/http/client/a;->a:I

    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1381
    iget v4, p0, Lcom/facebook/biddingkit/http/client/a;->b:I

    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1383
    invoke-virtual {p2}, Lcom/facebook/biddingkit/http/client/c;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1384
    invoke-virtual {p2}, Lcom/facebook/biddingkit/http/client/c;->getDoOutput()Z

    move-result v4

    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1385
    invoke-virtual {p2}, Lcom/facebook/biddingkit/http/client/c;->getDoInput()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    if-eqz p3, :cond_0

    const-string p2, "Content-Type"

    .line 1387
    invoke-virtual {p1, p2, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    :cond_0
    iget-object p2, p0, Lcom/facebook/biddingkit/http/client/a;->h:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 1399
    iget-object v4, p0, Lcom/facebook/biddingkit/http/client/a;->h:Ljava/util/Map;

    invoke-interface {v4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1400
    invoke-virtual {p1, p3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "Accept-Charset"

    .line 1402
    iget-object p3, p0, Lcom/facebook/biddingkit/http/client/a;->c:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    const/4 p2, 0x1

    .line 204
    iput-boolean p2, p0, Lcom/facebook/biddingkit/http/client/a;->g:Z

    .line 205
    iget-object p3, p0, Lcom/facebook/biddingkit/http/client/a;->e:Ljava/util/Set;

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    const/4 p3, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    .line 206
    :goto_1
    iget-object v4, p0, Lcom/facebook/biddingkit/http/client/a;->d:Ljava/util/Set;

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    .line 207
    :goto_2
    instance-of v4, p1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_9

    if-nez p3, :cond_4

    if-eqz p2, :cond_9

    .line 210
    :cond_4
    :try_start_2
    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/HttpsURLConnection;

    iget-object p3, p0, Lcom/facebook/biddingkit/http/client/a;->e:Ljava/util/Set;

    iget-object v4, p0, Lcom/facebook/biddingkit/http/client/a;->d:Ljava/util/Set;

    .line 2048
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xf

    if-ne v5, v6, :cond_5

    const-string v5, "4.0.3"

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 2049
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_9

    .line 2058
    :cond_5
    :try_start_3
    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object p2

    .line 2059
    array-length v5, p2

    :goto_3
    if-ge v3, v5, :cond_8

    aget-object v6, p2, v3

    .line 2060
    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 2061
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v7

    invoke-static {v7, v0}, Lcom/facebook/biddingkit/http/client/g;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz p3, :cond_6

    .line 2062
    invoke-interface {p3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_4

    .line 2067
    :cond_6
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v6

    invoke-static {v6, v0}, Lcom/facebook/biddingkit/http/client/g;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v4, :cond_7

    .line 2068
    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2073
    :cond_8
    new-instance p2, Ljava/security/cert/CertificateException;

    const-string p3, "Unable to find valid certificate or public key."

    invoke-direct {p2, p3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception p2

    .line 2075
    :try_start_4
    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    move-exception p2

    :try_start_5
    const-string p3, "Unable to validate SSL certificates: "

    .line 215
    invoke-static {v1, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    :cond_9
    :goto_4
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result p2

    if-eqz p2, :cond_a

    if-eqz p4, :cond_a

    .line 220
    invoke-static {p1, p4}, Lcom/facebook/biddingkit/http/client/a;->a(Ljava/net/HttpURLConnection;[B)I

    .line 222
    :cond_a
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 223
    invoke-static {p1}, Lcom/facebook/biddingkit/http/client/a;->a(Ljava/net/HttpURLConnection;)Lcom/facebook/biddingkit/http/client/f;

    move-result-object p2

    goto :goto_5

    .line 225
    :cond_b
    new-instance p2, Lcom/facebook/biddingkit/http/client/f;

    invoke-direct {p2, p1, v2}, Lcom/facebook/biddingkit/http/client/f;-><init>(Ljava/net/HttpURLConnection;[B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_5
    if-eqz p1, :cond_c

    .line 243
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    return-object p2

    :catchall_0
    move-exception p2

    move-object v2, p1

    goto :goto_7

    :catch_2
    move-exception p2

    goto :goto_6

    :catchall_1
    move-exception p2

    goto :goto_7

    :catch_3
    move-exception p2

    move-object p1, v2

    .line 230
    :goto_6
    :try_start_6
    invoke-static {p1}, Lcom/facebook/biddingkit/http/client/a;->b(Ljava/net/HttpURLConnection;)Lcom/facebook/biddingkit/http/client/f;

    move-result-object p3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 3052
    :try_start_7
    iget p4, p3, Lcom/facebook/biddingkit/http/client/f;->a:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-lez p4, :cond_e

    if-eqz p1, :cond_d

    .line 243
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    return-object p3

    .line 239
    :cond_e
    :try_start_8
    new-instance p4, Lcom/facebook/biddingkit/http/client/HttpRequestException;

    invoke-direct {p4, p2, p3}, Lcom/facebook/biddingkit/http/client/HttpRequestException;-><init>(Ljava/lang/Exception;Lcom/facebook/biddingkit/http/client/f;)V

    throw p4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_4
    :try_start_9
    const-string p3, "Failed http method: "

    .line 233
    invoke-static {v1, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 239
    :try_start_a
    new-instance p3, Lcom/facebook/biddingkit/http/client/HttpRequestException;

    invoke-direct {p3, p2, v2}, Lcom/facebook/biddingkit/http/client/HttpRequestException;-><init>(Ljava/lang/Exception;Lcom/facebook/biddingkit/http/client/f;)V

    throw p3

    :catchall_2
    new-instance p3, Lcom/facebook/biddingkit/http/client/HttpRequestException;

    invoke-direct {p3, p2, v2}, Lcom/facebook/biddingkit/http/client/HttpRequestException;-><init>(Ljava/lang/Exception;Lcom/facebook/biddingkit/http/client/f;)V

    throw p3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_7
    if-eqz v2, :cond_f

    .line 243
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 245
    :cond_f
    throw p2
.end method

.method private static a(Ljava/net/HttpURLConnection;)Lcom/facebook/biddingkit/http/client/f;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 447
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 449
    :try_start_1
    invoke-static {v1}, Lcom/facebook/biddingkit/http/client/a;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 451
    :cond_0
    new-instance v2, Lcom/facebook/biddingkit/http/client/f;

    invoke-direct {v2, p0, v0}, Lcom/facebook/biddingkit/http/client/f;-><init>(Ljava/net/HttpURLConnection;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 455
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return-object v2

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 460
    :catch_1
    :cond_2
    throw p0
.end method

.method private static a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 374
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid URL"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 493
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 495
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 496
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 498
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 499
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private b(I)I
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    const/16 v0, 0x14

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    .line 331
    invoke-direct {p0, v0}, Lcom/facebook/biddingkit/http/client/a;->b(I)I

    move-result v0

    add-int/lit8 p1, p1, -0x2

    invoke-direct {p0, p1}, Lcom/facebook/biddingkit/http/client/a;->b(I)I

    move-result p1

    add-int/2addr v0, p1

    return v0

    :cond_1
    :goto_0
    return p1
.end method

.method private b(Lcom/facebook/biddingkit/http/client/e;)Lcom/facebook/biddingkit/http/client/f;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/biddingkit/http/client/HttpRequestException;
        }
    .end annotation

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 263
    :goto_0
    iget v5, p0, Lcom/facebook/biddingkit/http/client/a;->f:I

    if-ge v4, v5, :cond_6

    add-int/lit8 v5, v4, 0x2

    .line 5344
    :try_start_0
    invoke-direct {p0, v5}, Lcom/facebook/biddingkit/http/client/a;->b(I)I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    .line 6068
    iput v5, p0, Lcom/facebook/biddingkit/http/client/a;->a:I

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 267
    invoke-virtual {p1}, Lcom/facebook/biddingkit/http/client/e;->a()Ljava/lang/String;

    move-result-object v5

    .line 268
    invoke-virtual {p1}, Lcom/facebook/biddingkit/http/client/e;->b()Lcom/facebook/biddingkit/http/client/c;

    move-result-object v6

    invoke-virtual {p1}, Lcom/facebook/biddingkit/http/client/e;->c()Ljava/lang/String;

    move-result-object v7

    .line 269
    invoke-virtual {p1}, Lcom/facebook/biddingkit/http/client/e;->d()[B

    move-result-object v8

    .line 267
    invoke-direct {p0, v5, v6, v7, v8}, Lcom/facebook/biddingkit/http/client/a;->a(Ljava/lang/String;Lcom/facebook/biddingkit/http/client/c;Ljava/lang/String;[B)Lcom/facebook/biddingkit/http/client/f;

    move-result-object v3
    :try_end_0
    .catch Lcom/facebook/biddingkit/http/client/HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_4

    return-object v3

    :catch_0
    move-exception v5

    .line 6320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    const-wide/16 v8, 0xa

    add-long/2addr v6, v8

    .line 6321
    iget-boolean v8, p0, Lcom/facebook/biddingkit/http/client/a;->g:Z

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    .line 6322
    iget v8, p0, Lcom/facebook/biddingkit/http/client/a;->b:I

    int-to-long v10, v8

    cmp-long v8, v6, v10

    if-ltz v8, :cond_1

    goto :goto_1

    .line 6324
    :cond_0
    iget v8, p0, Lcom/facebook/biddingkit/http/client/a;->a:I

    int-to-long v10, v8

    cmp-long v8, v6, v10

    if-ltz v8, :cond_1

    :goto_1
    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_2

    .line 274
    iget v6, p0, Lcom/facebook/biddingkit/http/client/a;->f:I

    sub-int/2addr v6, v9

    if-lt v4, v6, :cond_4

    .line 8052
    :cond_2
    iget-object v6, v5, Lcom/facebook/biddingkit/http/client/HttpRequestException;->a:Lcom/facebook/biddingkit/http/client/f;

    if-eqz v6, :cond_3

    .line 9052
    iget v6, v6, Lcom/facebook/biddingkit/http/client/f;->a:I

    if-lez v6, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    const-string v7, "AndroidHttpClient"

    if-eqz v6, :cond_5

    .line 278
    iget v6, p0, Lcom/facebook/biddingkit/http/client/a;->f:I

    sub-int/2addr v6, v9

    if-ge v4, v6, :cond_5

    .line 281
    :try_start_1
    iget v5, p0, Lcom/facebook/biddingkit/http/client/a;->a:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "App is stopping: "

    .line 284
    invoke-static {v7, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_5
    const-string p1, "Unable to send request: "

    .line 289
    invoke-static {v7, p1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_4
    return-object v3
.end method

.method private static b(Ljava/net/HttpURLConnection;)Lcom/facebook/biddingkit/http/client/f;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 474
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 476
    :try_start_1
    invoke-static {v1}, Lcom/facebook/biddingkit/http/client/a;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 478
    :cond_0
    new-instance v2, Lcom/facebook/biddingkit/http/client/f;

    invoke-direct {v2, p0, v0}, Lcom/facebook/biddingkit/http/client/f;-><init>(Ljava/net/HttpURLConnection;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 482
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return-object v2

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 487
    :catch_1
    :cond_2
    throw p0
.end method


# virtual methods
.method public final a(Lcom/facebook/biddingkit/http/client/e;)Lcom/facebook/biddingkit/http/client/f;
    .locals 3

    const-string v0, "AndroidHttpClient"

    const/4 v1, 0x0

    .line 164
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/biddingkit/http/client/a;->b(Lcom/facebook/biddingkit/http/client/e;)Lcom/facebook/biddingkit/http/client/f;

    move-result-object v1
    :try_end_0
    .catch Lcom/facebook/biddingkit/http/client/HttpRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 169
    new-instance v2, Lcom/facebook/biddingkit/http/client/HttpRequestException;

    invoke-direct {v2, p1, v1}, Lcom/facebook/biddingkit/http/client/HttpRequestException;-><init>(Ljava/lang/Exception;Lcom/facebook/biddingkit/http/client/f;)V

    const-string p1, "Unable to send request and got a RuntimeException: "

    invoke-static {v0, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v2, "Unable to send request and got a HttpRequestException: "

    .line 166
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;[B)Lcom/facebook/biddingkit/http/client/f;
    .locals 2

    .line 151
    new-instance v0, Lcom/facebook/biddingkit/http/client/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/facebook/biddingkit/http/client/d;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[B)V

    invoke-virtual {p0, v0}, Lcom/facebook/biddingkit/http/client/a;->a(Lcom/facebook/biddingkit/http/client/e;)Lcom/facebook/biddingkit/http/client/f;

    move-result-object p1

    return-object p1
.end method

.method public final a(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/facebook/biddingkit/http/client/a;->a:I

    return-void
.end method
