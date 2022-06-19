.class public Lcom/google/protobuf/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/google/protobuf/r;

    .line 2
    check-cast p2, Lcom/google/protobuf/r;

    .line 3
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-boolean v0, p1, Lcom/google/protobuf/r;->a:Z

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/google/protobuf/r;->c()Lcom/google/protobuf/r;

    move-result-object p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/r;->b()V

    .line 7
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/protobuf/r;->putAll(Ljava/util/Map;)V

    :cond_1
    return-object p1
.end method

.method public b(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .line 1
    check-cast p2, Lcom/google/protobuf/r;

    .line 2
    check-cast p3, Lcom/google/protobuf/q;

    .line 3
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/r;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result v3

    iget-object v4, p3, Lcom/google/protobuf/q;->a:Lcom/google/protobuf/q$a;

    .line 7
    invoke-static {v4, v2, v0}, Lcom/google/protobuf/q;->a(Lcom/google/protobuf/q$a;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 8
    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result v0

    add-int/2addr v0, v3

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/r;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/google/protobuf/r;->a:Z

    return-object p1
.end method

.method public d(Ljava/lang/Object;)Lcom/google/protobuf/q$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/protobuf/q$a<",
            "**>;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/protobuf/q;

    .line 2
    iget-object p1, p1, Lcom/google/protobuf/q;->a:Lcom/google/protobuf/q$a;

    return-object p1
.end method

.method public e(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/protobuf/r;

    return-object p1
.end method
