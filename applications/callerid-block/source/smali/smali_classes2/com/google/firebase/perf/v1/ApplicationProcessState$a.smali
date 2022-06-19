.class Lcom/google/firebase/perf/v1/ApplicationProcessState$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/protobuf/x$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/ApplicationProcessState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/x$d<",
        "Lcom/google/firebase/perf/v1/ApplicationProcessState;",
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

    invoke-virtual {p0, p1}, Lcom/google/firebase/perf/v1/ApplicationProcessState$a;->b(I)Lcom/google/firebase/perf/v1/ApplicationProcessState;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lcom/google/firebase/perf/v1/ApplicationProcessState;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/perf/v1/ApplicationProcessState;->forNumber(I)Lcom/google/firebase/perf/v1/ApplicationProcessState;

    move-result-object p1

    return-object p1
.end method
