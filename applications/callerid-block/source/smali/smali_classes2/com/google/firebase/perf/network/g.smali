.class public Lcom/google/firebase/perf/network/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field private final a:Lokhttp3/Callback;

.field private final b:Lcom/google/firebase/perf/e/a;

.field private final c:J

.field private final d:Lcom/google/firebase/perf/util/Timer;


# direct methods
.method public constructor <init>(Lokhttp3/Callback;Lcom/google/firebase/perf/g/k;Lcom/google/firebase/perf/util/Timer;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/network/g;->a:Lokhttp3/Callback;

    invoke-static {p2}, Lcom/google/firebase/perf/e/a;->c(Lcom/google/firebase/perf/g/k;)Lcom/google/firebase/perf/e/a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/network/g;->b:Lcom/google/firebase/perf/e/a;

    iput-wide p4, p0, Lcom/google/firebase/perf/network/g;->c:J

    iput-object p3, p0, Lcom/google/firebase/perf/network/g;->d:Lcom/google/firebase/perf/util/Timer;

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/firebase/perf/network/g;->b:Lcom/google/firebase/perf/e/a;

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/firebase/perf/e/a;->x(Ljava/lang/String;)Lcom/google/firebase/perf/e/a;

    :cond_0
    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/firebase/perf/network/g;->b:Lcom/google/firebase/perf/e/a;

    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/perf/e/a;->l(Ljava/lang/String;)Lcom/google/firebase/perf/e/a;

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/network/g;->b:Lcom/google/firebase/perf/e/a;

    iget-wide v1, p0, Lcom/google/firebase/perf/network/g;->c:J

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/e/a;->p(J)Lcom/google/firebase/perf/e/a;

    iget-object v0, p0, Lcom/google/firebase/perf/network/g;->b:Lcom/google/firebase/perf/e/a;

    iget-object v1, p0, Lcom/google/firebase/perf/network/g;->d:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/e/a;->v(J)Lcom/google/firebase/perf/e/a;

    iget-object v0, p0, Lcom/google/firebase/perf/network/g;->b:Lcom/google/firebase/perf/e/a;

    invoke-static {v0}, Lcom/google/firebase/perf/network/h;->d(Lcom/google/firebase/perf/e/a;)V

    iget-object v0, p0, Lcom/google/firebase/perf/network/g;->a:Lokhttp3/Callback;

    invoke-interface {v0, p1, p2}, Lokhttp3/Callback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 7

    iget-object v0, p0, Lcom/google/firebase/perf/network/g;->d:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->b()J

    move-result-wide v5

    iget-object v2, p0, Lcom/google/firebase/perf/network/g;->b:Lcom/google/firebase/perf/e/a;

    iget-wide v3, p0, Lcom/google/firebase/perf/network/g;->c:J

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->a(Lokhttp3/Response;Lcom/google/firebase/perf/e/a;JJ)V

    iget-object v0, p0, Lcom/google/firebase/perf/network/g;->a:Lokhttp3/Callback;

    invoke-interface {v0, p1, p2}, Lokhttp3/Callback;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V

    return-void
.end method
