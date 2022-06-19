.class public Lcom/amazonaws/http/UrlHttpClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazonaws/http/HttpClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;
    }
.end annotation


# static fields
.field private static final a:Lcom/amazonaws/logging/Log;


# instance fields
.field private final b:Lcom/amazonaws/ClientConfiguration;

.field private c:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/UrlHttpClient;->a:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 286
    iput-object v0, p0, Lcom/amazonaws/http/UrlHttpClient;->c:Ljavax/net/ssl/SSLContext;

    .line 63
    iput-object p1, p0, Lcom/amazonaws/http/UrlHttpClient;->b:Lcom/amazonaws/ClientConfiguration;

    return-void
.end method

.method private static a(Lcom/amazonaws/http/HttpRequest;Ljava/net/HttpURLConnection;)Lcom/amazonaws/http/HttpResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 94
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_0

    .line 13072
    iget-object p0, p0, Lcom/amazonaws/http/HttpRequest;->a:Ljava/lang/String;

    const-string v3, "HEAD"

    .line 97
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 99
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :catch_0
    :cond_0
    invoke-static {}, Lcom/amazonaws/http/HttpResponse;->b()Lcom/amazonaws/http/HttpResponse$Builder;

    move-result-object p0

    .line 13144
    iput v1, p0, Lcom/amazonaws/http/HttpResponse$Builder;->b:I

    .line 14132
    iput-object v0, p0, Lcom/amazonaws/http/HttpResponse$Builder;->a:Ljava/lang/String;

    .line 14156
    iput-object v2, p0, Lcom/amazonaws/http/HttpResponse$Builder;->c:Ljava/io/InputStream;

    .line 111
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 113
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 118
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 14168
    iget-object v2, p0, Lcom/amazonaws/http/HttpResponse$Builder;->d:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14178
    :cond_2
    new-instance p1, Lcom/amazonaws/http/HttpResponse;

    iget-object v4, p0, Lcom/amazonaws/http/HttpResponse$Builder;->a:Ljava/lang/String;

    iget v5, p0, Lcom/amazonaws/http/HttpResponse$Builder;->b:I

    iget-object v0, p0, Lcom/amazonaws/http/HttpResponse$Builder;->d:Ljava/util/Map;

    .line 14179
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, p0, Lcom/amazonaws/http/HttpResponse$Builder;->c:Ljava/io/InputStream;

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/amazonaws/http/HttpResponse;-><init>(Ljava/lang/String;ILjava/util/Map;Ljava/io/InputStream;Lcom/amazonaws/http/HttpResponse$1;)V

    return-object p1
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 244
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 247
    :try_start_0
    invoke-virtual {p3, v0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v3, 0x1

    .line 14440
    iput-boolean v3, p2, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->d:Z

    .line 252
    :cond_0
    :goto_1
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 1

    .line 233
    sget-object v0, Lcom/amazonaws/http/UrlHttpClient;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {v0, p0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/amazonaws/http/HttpRequest;)Lcom/amazonaws/http/HttpResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1081
    iget-object v0, p1, Lcom/amazonaws/http/HttpRequest;->b:Ljava/net/URI;

    .line 68
    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 70
    iget-object v1, p0, Lcom/amazonaws/http/UrlHttpClient;->b:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v1}, Lcom/amazonaws/ClientConfiguration;->isCurlLogging()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;

    .line 2081
    iget-object v3, p1, Lcom/amazonaws/http/HttpRequest;->b:Ljava/net/URI;

    .line 71
    invoke-virtual {v3}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;-><init>(Lcom/amazonaws/http/UrlHttpClient;Ljava/net/URL;)V

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 2258
    :goto_0
    iget-object v3, p0, Lcom/amazonaws/http/UrlHttpClient;->b:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v3}, Lcom/amazonaws/ClientConfiguration;->getConnectionTimeout()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 2259
    iget-object v3, p0, Lcom/amazonaws/http/UrlHttpClient;->b:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v3}, Lcom/amazonaws/ClientConfiguration;->getSocketTimeout()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v3, 0x0

    .line 2261
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 2262
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 3130
    iget-boolean v4, p1, Lcom/amazonaws/http/HttpRequest;->e:Z

    if-eqz v4, :cond_1

    .line 2265
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 2269
    :cond_1
    instance-of v4, v0, Ljavax/net/ssl/HttpsURLConnection;

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 2270
    move-object v4, v0

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    .line 2280
    iget-object v6, p0, Lcom/amazonaws/http/UrlHttpClient;->b:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v6}, Lcom/amazonaws/ClientConfiguration;->getTrustManager()Ljavax/net/ssl/TrustManager;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 3289
    iget-object v6, p0, Lcom/amazonaws/http/UrlHttpClient;->c:Ljavax/net/ssl/SSLContext;

    if-nez v6, :cond_2

    new-array v6, v5, [Ljavax/net/ssl/TrustManager;

    .line 3290
    iget-object v7, p0, Lcom/amazonaws/http/UrlHttpClient;->b:Lcom/amazonaws/ClientConfiguration;

    .line 3291
    invoke-virtual {v7}, Lcom/amazonaws/ClientConfiguration;->getTrustManager()Ljavax/net/ssl/TrustManager;

    move-result-object v7

    aput-object v7, v6, v3

    :try_start_0
    const-string v3, "TLS"

    .line 3294
    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    iput-object v3, p0, Lcom/amazonaws/http/UrlHttpClient;->c:Ljavax/net/ssl/SSLContext;

    .line 3295
    invoke-virtual {v3, v2, v6, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3297
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 3301
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/amazonaws/http/UrlHttpClient;->c:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 5100
    :cond_3
    iget-object v3, p1, Lcom/amazonaws/http/HttpRequest;->c:Ljava/util/Map;

    if-eqz v3, :cond_6

    .line 6100
    iget-object v3, p1, Lcom/amazonaws/http/HttpRequest;->c:Ljava/util/Map;

    .line 4196
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz v1, :cond_4

    .line 7100
    iget-object v3, p1, Lcom/amazonaws/http/HttpRequest;->c:Ljava/util/Map;

    .line 7410
    iget-object v4, v1, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 7411
    iget-object v4, v1, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 8100
    :cond_4
    iget-object v3, p1, Lcom/amazonaws/http/HttpRequest;->c:Ljava/util/Map;

    .line 4200
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 4201
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "Content-Length"

    .line 4203
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "Host"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "Expect"

    .line 4217
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4220
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v6, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 9072
    :cond_6
    iget-object v3, p1, Lcom/amazonaws/http/HttpRequest;->a:Ljava/lang/String;

    .line 4225
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz v1, :cond_7

    .line 9397
    iput-object v3, v1, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->a:Ljava/lang/String;

    .line 11109
    :cond_7
    iget-object v3, p1, Lcom/amazonaws/http/HttpRequest;->d:Ljava/io/InputStream;

    if-eqz v3, :cond_c

    .line 10155
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->a()J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-ltz v8, :cond_c

    .line 10156
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 11130
    iget-boolean v3, p1, Lcom/amazonaws/http/HttpRequest;->e:Z

    if-nez v3, :cond_8

    .line 10160
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->a()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 10162
    :cond_8
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    if-eqz v1, :cond_a

    .line 10165
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->a()J

    move-result-wide v6

    const-wide/32 v8, 0x7fffffff

    cmp-long v4, v6, v8

    if-gez v4, :cond_9

    .line 10166
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpRequest;->a()J

    move-result-wide v4

    long-to-int v2, v4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    goto :goto_3

    .line 11440
    :cond_9
    iput-boolean v5, v1, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->d:Z

    .line 12109
    :cond_a
    :goto_3
    iget-object v4, p1, Lcom/amazonaws/http/HttpRequest;->d:Ljava/io/InputStream;

    .line 10171
    invoke-static {v4, v3, v1, v2}, Lcom/amazonaws/http/UrlHttpClient;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;Ljava/nio/ByteBuffer;)V

    if-eqz v1, :cond_b

    if-eqz v2, :cond_b

    .line 10172
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-eqz v4, :cond_b

    .line 10174
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 12424
    iput-object v4, v1, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->c:Ljava/lang/String;

    .line 10176
    :cond_b
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 10177
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_c
    if-eqz v1, :cond_e

    .line 78
    invoke-virtual {v1}, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->a()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 79
    invoke-virtual {v1}, Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/http/UrlHttpClient;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    const-string v1, "Failed to create curl, content too long"

    .line 81
    invoke-static {v1}, Lcom/amazonaws/http/UrlHttpClient;->a(Ljava/lang/String;)V

    .line 85
    :cond_e
    :goto_4
    invoke-static {p1, v0}, Lcom/amazonaws/http/UrlHttpClient;->a(Lcom/amazonaws/http/HttpRequest;Ljava/net/HttpURLConnection;)Lcom/amazonaws/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method
