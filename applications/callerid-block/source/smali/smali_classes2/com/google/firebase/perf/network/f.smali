.class public Lcom/google/firebase/perf/network/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lorg/apache/http/client/ResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/firebase/perf/util/Timer;

.field private final c:Lcom/google/firebase/perf/e/a;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/ResponseHandler;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/e/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lcom/google/firebase/perf/util/Timer;",
            "Lcom/google/firebase/perf/e/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/network/f;->a:Lorg/apache/http/client/ResponseHandler;

    iput-object p2, p0, Lcom/google/firebase/perf/network/f;->b:Lcom/google/firebase/perf/util/Timer;

    iput-object p3, p0, Lcom/google/firebase/perf/network/f;->c:Lcom/google/firebase/perf/e/a;

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/perf/network/f;->c:Lcom/google/firebase/perf/e/a;

    iget-object v1, p0, Lcom/google/firebase/perf/network/f;->b:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/e/a;->v(J)Lcom/google/firebase/perf/e/a;

    iget-object v0, p0, Lcom/google/firebase/perf/network/f;->c:Lcom/google/firebase/perf/e/a;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/e/a;->m(I)Lcom/google/firebase/perf/e/a;

    invoke-static {p1}, Lcom/google/firebase/perf/network/h;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/perf/network/f;->c:Lcom/google/firebase/perf/e/a;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/e/a;->s(J)Lcom/google/firebase/perf/e/a;

    :cond_0
    invoke-static {p1}, Lcom/google/firebase/perf/network/h;->b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/firebase/perf/network/f;->c:Lcom/google/firebase/perf/e/a;

    invoke-virtual {v1, v0}, Lcom/google/firebase/perf/e/a;->q(Ljava/lang/String;)Lcom/google/firebase/perf/e/a;

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/network/f;->c:Lcom/google/firebase/perf/e/a;

    invoke-virtual {v0}, Lcom/google/firebase/perf/e/a;->b()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    iget-object v0, p0, Lcom/google/firebase/perf/network/f;->a:Lorg/apache/http/client/ResponseHandler;

    invoke-interface {v0, p1}, Lorg/apache/http/client/ResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
