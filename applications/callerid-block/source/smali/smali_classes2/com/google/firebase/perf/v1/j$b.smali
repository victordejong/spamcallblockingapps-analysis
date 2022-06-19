.class public final Lcom/google/firebase/perf/v1/j$b;
.super Lcom/google/protobuf/GeneratedMessageLite$a;
.source ""

# interfaces
.implements Lcom/google/protobuf/n0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$a<",
        "Lcom/google/firebase/perf/v1/j;",
        "Lcom/google/firebase/perf/v1/j$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/perf/v1/j;->R()Lcom/google/firebase/perf/v1/j;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$a;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/perf/v1/j$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/j$b;-><init>()V

    return-void
.end method


# virtual methods
.method public I(Ljava/lang/Iterable;)Lcom/google/firebase/perf/v1/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/perf/v1/i;",
            ">;)",
            "Lcom/google/firebase/perf/v1/j$b;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$a;->z()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->c:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/j;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/j;->Y(Lcom/google/firebase/perf/v1/j;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public J(Ljava/lang/Iterable;)Lcom/google/firebase/perf/v1/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/perf/v1/j;",
            ">;)",
            "Lcom/google/firebase/perf/v1/j$b;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$a;->z()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->c:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/j;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/j;->V(Lcom/google/firebase/perf/v1/j;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public L(Lcom/google/firebase/perf/v1/i;)Lcom/google/firebase/perf/v1/j$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$a;->z()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->c:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/j;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/j;->X(Lcom/google/firebase/perf/v1/j;Lcom/google/firebase/perf/v1/i;)V

    return-object p0
.end method

.method public M(Lcom/google/firebase/perf/v1/j;)Lcom/google/firebase/perf/v1/j$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$a;->z()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->c:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/j;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/j;->U(Lcom/google/firebase/perf/v1/j;Lcom/google/firebase/perf/v1/j;)V

    return-object p0
.end method

.method public N(Ljava/util/Map;)Lcom/google/firebase/perf/v1/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/firebase/perf/v1/j$b;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$a;->z()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->c:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/j;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/j;->T(Lcom/google/firebase/perf/v1/j;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public P(Ljava/util/Map;)Lcom/google/firebase/perf/v1/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/perf/v1/j$b;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$a;->z()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->c:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/j;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/j;->W(Lcom/google/firebase/perf/v1/j;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public Q(Ljava/lang/String;J)Lcom/google/firebase/perf/v1/j$b;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$a;->z()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->c:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/j;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/j;->T(Lcom/google/firebase/perf/v1/j;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public R(J)Lcom/google/firebase/perf/v1/j$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$a;->z()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->c:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/j;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/j;->Z(Lcom/google/firebase/perf/v1/j;J)V

    return-object p0
.end method

.method public S(J)Lcom/google/firebase/perf/v1/j$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$a;->z()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->c:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/j;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/j;->a0(Lcom/google/firebase/perf/v1/j;J)V

    return-object p0
.end method

.method public T(Ljava/lang/String;)Lcom/google/firebase/perf/v1/j$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$a;->z()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->c:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/j;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/j;->S(Lcom/google/firebase/perf/v1/j;Ljava/lang/String;)V

    return-object p0
.end method
