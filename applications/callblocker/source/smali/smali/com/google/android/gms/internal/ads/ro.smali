.class public final Lcom/google/android/gms/internal/ads/ro;
.super Lcom/google/android/gms/internal/ads/ga;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/tg;

.field private final b:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ro;-><init>(Lcom/google/android/gms/internal/ads/tg;)V

    .line 2
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/tg;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, v0}, Lcom/google/android/gms/internal/ads/ro;-><init>(Lcom/google/android/gms/internal/ads/tg;Ljavax/net/ssl/SSLSocketFactory;)V

    .line 4
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/tg;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ga;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ro;->a:Lcom/google/android/gms/internal/ads/tg;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ro;->b:Ljavax/net/ssl/SSLSocketFactory;

    .line 8
    return-void
.end method

.method static synthetic a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 107
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ro;->b(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Map;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/dnv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 82
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 84
    new-instance v6, Lcom/google/android/gms/internal/ads/dnv;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v6, v2, v1}, Lcom/google/android/gms/internal/ads/dnv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_1
    return-object v3
.end method

.method private static a(Ljava/net/HttpURLConnection;Lcom/google/android/gms/internal/ads/dts;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/google/android/gms/internal/ads/dts",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dts;->a()[B

    move-result-object v1

    .line 94
    if-eqz v1, :cond_1

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 97
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "Content-Type"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    const-string/jumbo v2, "Content-Type"

    .line 99
    const-string/jumbo v3, "application/x-www-form-urlencoded; charset="

    .line 100
    const-string/jumbo v0, "UTF-8"

    .line 101
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_0
    invoke-virtual {p0, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 104
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 105
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 106
    :cond_1
    return-void

    .line 101
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 88
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    .line 91
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dts;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/pm;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dts",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/pm;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dts;->e()Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 11
    invoke-virtual {v5, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dts;->b()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ro;->a:Lcom/google/android/gms/internal/ads/tg;

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ro;->a:Lcom/google/android/gms/internal/ads/tg;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/tg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "URL blocked by rewriter: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 18
    :cond_2
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 22
    invoke-static {}, Ljava/net/HttpURLConnection;->getFollowRedirects()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dts;->j()I

    move-result v2

    .line 26
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 27
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 28
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 29
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 30
    const-string/jumbo v2, "https"

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 34
    :cond_3
    :try_start_0
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 35
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 77
    :catchall_0
    move-exception v1

    move v2, v3

    :goto_2
    if-nez v2, :cond_4

    .line 78
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 79
    :cond_4
    throw v1

    .line 38
    :cond_5
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dts;->c()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 62
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Unknown method type."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :pswitch_0
    const-string/jumbo v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 63
    :goto_3
    :pswitch_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 64
    const/4 v1, -0x1

    if-ne v2, v1, :cond_6

    .line 65
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :pswitch_2
    const-string/jumbo v1, "DELETE"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_3

    .line 47
    :pswitch_3
    const-string/jumbo v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 48
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ro;->a(Ljava/net/HttpURLConnection;Lcom/google/android/gms/internal/ads/dts;)V

    goto :goto_3

    .line 50
    :pswitch_4
    const-string/jumbo v1, "PUT"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 51
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ro;->a(Ljava/net/HttpURLConnection;Lcom/google/android/gms/internal/ads/dts;)V

    goto :goto_3

    .line 53
    :pswitch_5
    const-string/jumbo v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_3

    .line 55
    :pswitch_6
    const-string/jumbo v1, "OPTIONS"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_3

    .line 57
    :pswitch_7
    const-string/jumbo v1, "TRACE"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_3

    .line 59
    :pswitch_8
    const-string/jumbo v1, "PATCH"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 60
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ro;->a(Ljava/net/HttpURLConnection;Lcom/google/android/gms/internal/ads/dts;)V

    goto :goto_3

    .line 66
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dts;->c()I

    move-result v1

    .line 67
    const/4 v5, 0x4

    if-eq v1, v5, :cond_8

    const/16 v1, 0x64

    if-gt v1, v2, :cond_7

    const/16 v1, 0xc8

    if-lt v2, v1, :cond_8

    :cond_7
    const/16 v1, 0xcc

    if-eq v2, v1, :cond_8

    const/16 v1, 0x130

    if-eq v2, v1, :cond_8

    move v1, v4

    .line 68
    :goto_4
    if-nez v1, :cond_9

    .line 69
    new-instance v1, Lcom/google/android/gms/internal/ads/pm;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ro;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/pm;-><init>(ILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    .line 76
    :goto_5
    return-object v0

    :cond_8
    move v1, v3

    .line 67
    goto :goto_4

    .line 73
    :cond_9
    :try_start_2
    new-instance v1, Lcom/google/android/gms/internal/ads/pm;

    .line 74
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/ro;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    .line 75
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    new-instance v6, Lcom/google/android/gms/internal/ads/uc;

    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/ads/uc;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/google/android/gms/internal/ads/pm;-><init>(ILjava/util/List;ILjava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    .line 76
    goto :goto_5

    .line 77
    :catchall_1
    move-exception v1

    move v2, v4

    goto/16 :goto_2

    .line 38
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
