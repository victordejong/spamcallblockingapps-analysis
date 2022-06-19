.class public Lorg/xutils/http/request/HttpRequest;
.super Lorg/xutils/http/request/UriRequest;
.source "HttpRequest.java"


# static fields
.field private static final d:Ljava/net/CookieManager;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/io/InputStream;

.field private h:Ljava/net/HttpURLConnection;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/net/CookieManager;

    sget-object v1, Lorg/xutils/http/cookie/DbCookieStore;->INSTANCE:Lorg/xutils/http/cookie/DbCookieStore;

    sget-object v2, Ljava/net/CookiePolicy;->ACCEPT_ALL:Ljava/net/CookiePolicy;

    invoke-direct {v0, v1, v2}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    sput-object v0, Lorg/xutils/http/request/HttpRequest;->d:Ljava/net/CookieManager;

    return-void
.end method

.method public constructor <init>(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/xutils/http/request/UriRequest;-><init>(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lorg/xutils/http/request/HttpRequest;->e:Ljava/lang/String;

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lorg/xutils/http/request/HttpRequest;->f:Z

    .line 4
    iput-object p1, p0, Lorg/xutils/http/request/HttpRequest;->g:Ljava/io/InputStream;

    .line 5
    iput-object p1, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    .line 6
    iput p2, p0, Lorg/xutils/http/request/HttpRequest;->i:I

    return-void
.end method

.method private static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "EEE, dd MMM y HH:mm:ss \'GMT\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "GMT"

    .line 2
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected buildQueryUrl(Lorg/xutils/http/RequestParams;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?"

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "&"

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/xutils/http/BaseParams;->getQueryStringParams()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xutils/common/util/KeyValue;

    .line 9
    iget-object v3, v2, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    .line 10
    invoke-virtual {v2}, Lorg/xutils/common/util/KeyValue;->getValueStrOrNull()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {p1}, Lorg/xutils/http/BaseParams;->getCharset()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "\\+"

    const-string v6, "%20"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    .line 13
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p1}, Lorg/xutils/http/BaseParams;->getCharset()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    const/16 v0, 0x26

    if-ne p1, v0, :cond_4

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 18
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    const/16 v0, 0x3f

    if-ne p1, v0, :cond_5

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 20
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public clearCacheHeader()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->params:Lorg/xutils/http/RequestParams;

    const-string v1, "If-Modified-Since"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/xutils/http/BaseParams;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->params:Lorg/xutils/http/RequestParams;

    const-string v1, "If-None-Match"

    invoke-virtual {v0, v1, v2}, Lorg/xutils/http/BaseParams;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->g:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/xutils/http/request/HttpRequest;->g:Ljava/io/InputStream;

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-void
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/request/HttpRequest;->e:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/request/HttpRequest;->e:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    :try_start_0
    const-string v3, "content-length"

    .line 2
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const-wide/16 v3, 0x1

    cmp-long v0, v1, v3

    if-gez v0, :cond_1

    .line 5
    :try_start_1
    invoke-virtual {p0}, Lorg/xutils/http/request/HttpRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    int-to-long v1, v0

    :catchall_1
    :cond_1
    return-wide v1
.end method

.method public getETag()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "ETag"

    .line 2
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()J
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    const-string v3, "Cache-Control"

    .line 2
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_2

    .line 4
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v3, v0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v6, "max-age"

    .line 7
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v3, 0x3d

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 9
    :try_start_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-lez v0, :cond_2

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x3e8

    mul-long v6, v6, v2

    add-long/2addr v0, v6

    move-wide v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    cmp-long v0, v1, v4

    if-gtz v0, :cond_3

    .line 13
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getExpiration()J

    move-result-wide v1

    :cond_3
    cmp-long v0, v1, v4

    if-gtz v0, :cond_4

    .line 14
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getCacheMaxAge()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-lez v0, :cond_4

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/xutils/http/request/UriRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v2}, Lorg/xutils/http/RequestParams;->getCacheMaxAge()J

    move-result-wide v2

    add-long v1, v0, v2

    :cond_4
    cmp-long v0, v1, v4

    if-gtz v0, :cond_5

    const-wide v1, 0x7fffffffffffffffL

    :cond_5
    return-wide v1
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    return-wide p2

    .line 2
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->g:Ljava/io/InputStream;

    if-nez v1, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    .line 3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/xutils/http/request/HttpRequest;->g:Ljava/io/InputStream;

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->g:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLastModified()J
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "Last-Modified"

    invoke-virtual {p0, v2, v0, v1}, Lorg/xutils/http/request/HttpRequest;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequestUri()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->queryUrl:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lorg/xutils/http/request/HttpRequest;->i:I

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/xutils/http/request/HttpRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc8

    return v0

    :cond_1
    const/16 v0, 0x194

    return v0
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResponseHeaders()Ljava/util/Map;
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

    .line 1
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/xutils/http/request/UriRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v1}, Lorg/xutils/http/BaseParams;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/xutils/http/request/HttpRequest;->f:Z

    return v0
.end method

.method public loadResult()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/xutils/http/request/HttpRequest;->f:Z

    .line 2
    invoke-super {p0}, Lorg/xutils/http/request/UriRequest;->loadResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadResultFromCache()Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/xutils/http/request/HttpRequest;->f:Z

    .line 2
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getCacheDirName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/cache/LruDiskCache;->getDiskCache(Ljava/lang/String;)Lorg/xutils/cache/LruDiskCache;

    move-result-object v0

    iget-object v1, p0, Lorg/xutils/http/request/UriRequest;->params:Lorg/xutils/http/RequestParams;

    .line 3
    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->getCacheSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/xutils/cache/LruDiskCache;->setMaxSize(J)Lorg/xutils/cache/LruDiskCache;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lorg/xutils/http/request/HttpRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xutils/cache/LruDiskCache;->get(Ljava/lang/String;)Lorg/xutils/cache/DiskCacheEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v1, p0, Lorg/xutils/http/request/UriRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v1}, Lorg/xutils/http/BaseParams;->getMethod()Lorg/xutils/http/HttpMethod;

    move-result-object v1

    invoke-static {v1}, Lorg/xutils/http/HttpMethod;->permitsCache(Lorg/xutils/http/HttpMethod;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0}, Lorg/xutils/cache/DiskCacheEntity;->getLastModify()Ljava/util/Date;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 8
    iget-object v2, p0, Lorg/xutils/http/request/UriRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-static {v1}, Lorg/xutils/http/request/HttpRequest;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "If-Modified-Since"

    invoke-virtual {v2, v3, v1}, Lorg/xutils/http/BaseParams;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-virtual {v0}, Lorg/xutils/cache/DiskCacheEntity;->getEtag()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    iget-object v2, p0, Lorg/xutils/http/request/UriRequest;->params:Lorg/xutils/http/RequestParams;

    const-string v3, "If-None-Match"

    invoke-virtual {v2, v3, v1}, Lorg/xutils/http/BaseParams;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_1
    iget-object v1, p0, Lorg/xutils/http/request/UriRequest;->loader:Lorg/xutils/http/loader/Loader;

    invoke-virtual {v1, v0}, Lorg/xutils/http/loader/Loader;->loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public sendRequest()V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    const-string v0, "Cookie"

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, p0, Lorg/xutils/http/request/HttpRequest;->f:Z

    .line 2
    iput v1, p0, Lorg/xutils/http/request/HttpRequest;->i:I

    .line 3
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lorg/xutils/http/request/UriRequest;->queryUrl:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v3, p0, Lorg/xutils/http/request/UriRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v3}, Lorg/xutils/http/RequestParams;->getProxy()Ljava/net/Proxy;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2, v3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    iput-object v3, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    iput-object v3, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    .line 7
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_1

    .line 8
    iget-object v3, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    const-string v5, "Connection"

    const-string v6, "close"

    invoke-virtual {v3, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_1
    iget-object v3, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    iget-object v5, p0, Lorg/xutils/http/request/UriRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v5}, Lorg/xutils/http/RequestParams;->getReadTimeout()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 10
    iget-object v3, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    iget-object v5, p0, Lorg/xutils/http/request/UriRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v5}, Lorg/xutils/http/RequestParams;->getConnectTimeout()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 11
    iget-object v3, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    iget-object v5, p0, Lorg/xutils/http/request/UriRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v5}, Lorg/xutils/http/RequestParams;->getRedirectHandler()Lorg/xutils/http/app/RedirectHandler;

    move-result-object v5

    const/4 v6, 0x1

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 12
    iget-object v3, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    instance-of v3, v3, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v3, :cond_4

    .line 13
    iget-object v3, p0, Lorg/xutils/http/request/UriRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v3}, Lorg/xutils/http/RequestParams;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 14
    iget-object v5, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v5, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 15
    :cond_3
    iget-object v3, p0, Lorg/xutils/http/request/UriRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v3}, Lorg/xutils/http/RequestParams;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 16
    iget-object v5, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v5, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 17
    :cond_4
    iget-object v3, p0, Lorg/xutils/http/request/UriRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v3}, Lorg/xutils/http/RequestParams;->isUseCookie()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 18
    :try_start_0
    sget-object v3, Lorg/xutils/http/request/HttpRequest;->d:Ljava/net/CookieManager;

    .line 19
    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v5

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v3, v5, v7}, Ljava/net/CookieManager;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 20
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_5

    .line 21
    iget-object v5, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    const-string v7, ";"

    invoke-static {v7, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/BaseParams;->getHeaders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xutils/http/BaseParams$Header;

    .line 25
    iget-object v5, v3, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    .line 26
    invoke-virtual {v3}, Lorg/xutils/common/util/KeyValue;->getValueStrOrNull()Ljava/lang/String;

    move-result-object v7

    .line 27
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 28
    iget-boolean v3, v3, Lorg/xutils/http/BaseParams$Header;->setHeader:Z

    if-eqz v3, :cond_7

    .line 29
    iget-object v3, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v3, v5, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 30
    :cond_7
    iget-object v3, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v3, v5, v7}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 31
    :cond_8
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->responseParser:Lorg/xutils/http/app/ResponseParser;

    if-eqz v0, :cond_9

    .line 32
    invoke-interface {v0, p0}, Lorg/xutils/http/app/RequestInterceptListener;->beforeRequest(Lorg/xutils/http/request/UriRequest;)V

    .line 33
    :cond_9
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->requestInterceptListener:Lorg/xutils/http/app/RequestInterceptListener;

    if-eqz v0, :cond_a

    .line 34
    invoke-interface {v0, p0}, Lorg/xutils/http/app/RequestInterceptListener;->beforeRequest(Lorg/xutils/http/request/UriRequest;)V

    .line 35
    :cond_a
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/BaseParams;->getMethod()Lorg/xutils/http/HttpMethod;

    move-result-object v0

    .line 36
    :try_start_1
    iget-object v3, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Lorg/xutils/http/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v3

    .line 37
    :try_start_2
    const-class v5, Ljava/net/HttpURLConnection;

    const-string v7, "method"

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 38
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 39
    iget-object v7, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Lorg/xutils/http/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 40
    :goto_4
    invoke-static {v0}, Lorg/xutils/http/HttpMethod;->permitsRequestBody(Lorg/xutils/http/HttpMethod;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 41
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/BaseParams;->getRequestBody()Lorg/xutils/http/body/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 42
    instance-of v3, v0, Lorg/xutils/http/body/ProgressBody;

    if-eqz v3, :cond_b

    .line 43
    move-object v3, v0

    check-cast v3, Lorg/xutils/http/body/ProgressBody;

    iget-object v5, p0, Lorg/xutils/http/request/UriRequest;->progressHandler:Lorg/xutils/http/ProgressHandler;

    invoke-interface {v3, v5}, Lorg/xutils/http/body/ProgressBody;->setProgressHandler(Lorg/xutils/http/ProgressHandler;)V

    .line 44
    :cond_b
    invoke-interface {v0}, Lorg/xutils/http/body/RequestBody;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 46
    iget-object v5, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    const-string v7, "Content-Type"

    invoke-virtual {v5, v7, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_c
    invoke-interface {v0}, Lorg/xutils/http/body/RequestBody;->getContentLength()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/high16 v3, 0x40000

    cmp-long v5, v7, v9

    if-gez v5, :cond_d

    .line 48
    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    :goto_5
    const/4 v1, 0x1

    goto :goto_6

    :cond_d
    const-wide/32 v9, 0x7fffffff

    cmp-long v5, v7, v9

    if-gez v5, :cond_e

    .line 49
    iget-object v3, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    long-to-int v4, v7

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto :goto_6

    .line 50
    :cond_e
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v4, :cond_f

    .line 51
    iget-object v3, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v3, v7, v8}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    goto :goto_6

    .line 52
    :cond_f
    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    goto :goto_5

    :goto_6
    if-eqz v1, :cond_10

    .line 53
    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    const-string v3, "Transfer-Encoding"

    const-string v4, "chunked"

    invoke-virtual {v1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 54
    :cond_10
    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Content-Length"

    invoke-virtual {v1, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_7
    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 56
    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xutils/http/body/RequestBody;->writeTo(Ljava/io/OutputStream;)V

    .line 57
    :cond_11
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->isUseCookie()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 58
    :try_start_3
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 59
    sget-object v1, Lorg/xutils/http/request/HttpRequest;->d:Ljava/net/CookieManager;

    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    :cond_12
    :goto_8
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lorg/xutils/http/request/HttpRequest;->i:I

    .line 62
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->responseParser:Lorg/xutils/http/app/ResponseParser;

    if-eqz v0, :cond_13

    .line 63
    invoke-interface {v0, p0}, Lorg/xutils/http/app/RequestInterceptListener;->afterRequest(Lorg/xutils/http/request/UriRequest;)V

    .line 64
    :cond_13
    iget-object v0, p0, Lorg/xutils/http/request/UriRequest;->requestInterceptListener:Lorg/xutils/http/app/RequestInterceptListener;

    if-eqz v0, :cond_14

    .line 65
    invoke-interface {v0, p0}, Lorg/xutils/http/app/RequestInterceptListener;->afterRequest(Lorg/xutils/http/request/UriRequest;)V

    .line 66
    :cond_14
    iget v0, p0, Lorg/xutils/http/request/HttpRequest;->i:I

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_16

    const/16 v1, 0xcd

    if-eq v0, v1, :cond_16

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_15

    .line 67
    iput-boolean v6, p0, Lorg/xutils/http/request/HttpRequest;->f:Z

    return-void

    .line 68
    :cond_15
    new-instance v0, Lorg/xutils/ex/HttpException;

    iget v1, p0, Lorg/xutils/http/request/HttpRequest;->i:I

    invoke-virtual {p0}, Lorg/xutils/http/request/HttpRequest;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xutils/ex/HttpException;-><init>(ILjava/lang/String;)V

    .line 69
    :try_start_4
    invoke-virtual {p0}, Lorg/xutils/http/request/HttpRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/xutils/http/request/UriRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v2}, Lorg/xutils/http/BaseParams;->getCharset()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xutils/common/util/IOUtil;->readStr(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xutils/ex/HttpException;->setResult(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v1

    .line 70
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/xutils/ex/HttpException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/xutils/http/request/UriRequest;->queryUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 72
    throw v0

    .line 73
    :cond_16
    new-instance v0, Lorg/xutils/ex/HttpException;

    iget v1, p0, Lorg/xutils/http/request/HttpRequest;->i:I

    invoke-virtual {p0}, Lorg/xutils/http/request/HttpRequest;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xutils/ex/HttpException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 74
    :catchall_3
    throw v3
.end method
