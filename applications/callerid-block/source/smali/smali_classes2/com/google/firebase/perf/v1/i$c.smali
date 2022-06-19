.class public final Lcom/google/firebase/perf/v1/i$c;
.super Lcom/google/protobuf/GeneratedMessageLite$a;
.source ""

# interfaces
.implements Lcom/google/protobuf/n0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$a<",
        "Lcom/google/firebase/perf/v1/i;",
        "Lcom/google/firebase/perf/v1/i$c;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/perf/v1/i;->R()Lcom/google/firebase/perf/v1/i;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$a;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/perf/v1/i$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/i$c;-><init>()V

    return-void
.end method


# virtual methods
.method public I(Lcom/google/firebase/perf/v1/SessionVerbosity;)Lcom/google/firebase/perf/v1/i$c;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$a;->z()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->c:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/i;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/i;->T(Lcom/google/firebase/perf/v1/i;Lcom/google/firebase/perf/v1/SessionVerbosity;)V

    return-object p0
.end method

.method public J(Ljava/lang/String;)Lcom/google/firebase/perf/v1/i$c;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$a;->z()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->c:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/i;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/i;->S(Lcom/google/firebase/perf/v1/i;Ljava/lang/String;)V

    return-object p0
.end method
