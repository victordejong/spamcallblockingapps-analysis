.class public Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lokhttp3/Response;Lcom/google/firebase/perf/e/a;JJ)V
    .locals 6

    invoke-virtual {p0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/perf/e/a;->x(Ljava/lang/String;)Lcom/google/firebase/perf/e/a;

    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/perf/e/a;->l(Ljava/lang/String;)Lcom/google/firebase/perf/e/a;

    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/perf/e/a;->o(J)Lcom/google/firebase/perf/e/a;

    :cond_1
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    invoke-virtual {p1, v4, v5}, Lcom/google/firebase/perf/e/a;->s(J)Lcom/google/firebase/perf/e/a;

    :cond_2
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/perf/e/a;->q(Ljava/lang/String;)Lcom/google/firebase/perf/e/a;

    :cond_3
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/firebase/perf/e/a;->m(I)Lcom/google/firebase/perf/e/a;

    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/perf/e/a;->p(J)Lcom/google/firebase/perf/e/a;

    invoke-virtual {p1, p4, p5}, Lcom/google/firebase/perf/e/a;->v(J)Lcom/google/firebase/perf/e/a;

    invoke-virtual {p1}, Lcom/google/firebase/perf/e/a;->b()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    return-void
.end method

.method public static enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V
    .locals 7
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    new-instance v3, Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v3}, Lcom/google/firebase/perf/util/Timer;-><init>()V

    invoke-virtual {v3}, Lcom/google/firebase/perf/util/Timer;->d()J

    move-result-wide v4

    new-instance v6, Lcom/google/firebase/perf/network/g;

    invoke-static {}, Lcom/google/firebase/perf/g/k;->e()Lcom/google/firebase/perf/g/k;

    move-result-object v2

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/perf/network/g;-><init>(Lokhttp3/Callback;Lcom/google/firebase/perf/g/k;Lcom/google/firebase/perf/util/Timer;J)V

    invoke-interface {p0, v6}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public static execute(Lokhttp3/Call;)Lokhttp3/Response;
    .locals 11
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-static {}, Lcom/google/firebase/perf/g/k;->e()Lcom/google/firebase/perf/g/k;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/e/a;->c(Lcom/google/firebase/perf/g/k;)Lcom/google/firebase/perf/e/a;

    move-result-object v0

    new-instance v7, Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v7}, Lcom/google/firebase/perf/util/Timer;-><init>()V

    invoke-virtual {v7}, Lcom/google/firebase/perf/util/Timer;->d()J

    move-result-wide v8

    :try_start_0
    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v10

    invoke-virtual {v7}, Lcom/google/firebase/perf/util/Timer;->b()J

    move-result-wide v5

    move-object v1, v10

    move-object v2, v0

    move-wide v3, v8

    invoke-static/range {v1 .. v6}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->a(Lokhttp3/Response;Lcom/google/firebase/perf/e/a;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    :catch_0
    move-exception v1

    invoke-interface {p0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firebase/perf/e/a;->x(Ljava/lang/String;)Lcom/google/firebase/perf/e/a;

    :cond_0
    invoke-virtual {p0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/firebase/perf/e/a;->l(Ljava/lang/String;)Lcom/google/firebase/perf/e/a;

    :cond_1
    invoke-virtual {v0, v8, v9}, Lcom/google/firebase/perf/e/a;->p(J)Lcom/google/firebase/perf/e/a;

    invoke-virtual {v7}, Lcom/google/firebase/perf/util/Timer;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/perf/e/a;->v(J)Lcom/google/firebase/perf/e/a;

    invoke-static {v0}, Lcom/google/firebase/perf/network/h;->d(Lcom/google/firebase/perf/e/a;)V

    throw v1
.end method
