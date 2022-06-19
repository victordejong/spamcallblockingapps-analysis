.class public final Lcom/google/protobuf/g;
.super Lcom/google/protobuf/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/f<",
        "Lcom/google/protobuf/i$d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map$Entry;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/i$d;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/Object;)Lcom/google/protobuf/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/protobuf/h<",
            "Lcom/google/protobuf/i$d;",
            ">;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/protobuf/i$c;

    iget-object p1, p1, Lcom/google/protobuf/i$c;->extensions:Lcom/google/protobuf/h;

    return-object p1
.end method

.method public c(Ljava/lang/Object;)Lcom/google/protobuf/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/protobuf/h<",
            "Lcom/google/protobuf/i$d;",
            ">;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/protobuf/i$c;

    .line 2
    iget-object v0, p1, Lcom/google/protobuf/i$c;->extensions:Lcom/google/protobuf/h;

    .line 3
    iget-boolean v1, v0, Lcom/google/protobuf/h;->b:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/h;->a()Lcom/google/protobuf/h;

    move-result-object v0

    iput-object v0, p1, Lcom/google/protobuf/i$c;->extensions:Lcom/google/protobuf/h;

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/google/protobuf/i$c;->extensions:Lcom/google/protobuf/h;

    return-object p1
.end method

.method public d(Lcom/google/protobuf/u;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/google/protobuf/i$c;

    return p1
.end method

.method public e(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/i$c;

    iget-object p1, p1, Lcom/google/protobuf/i$c;->extensions:Lcom/google/protobuf/h;

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/h;->l()V

    return-void
.end method

.method public f(Lcom/google/protobuf/g0;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/g0;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/i$d;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    throw p1
.end method
