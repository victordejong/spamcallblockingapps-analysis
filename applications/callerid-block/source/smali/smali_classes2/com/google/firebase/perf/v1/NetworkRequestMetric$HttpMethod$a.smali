.class Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/protobuf/x$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/x$d<",
        "Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)Lcom/google/protobuf/x$c;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod$a;->b(I)Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;->forNumber(I)Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;

    move-result-object p1

    return-object p1
.end method
