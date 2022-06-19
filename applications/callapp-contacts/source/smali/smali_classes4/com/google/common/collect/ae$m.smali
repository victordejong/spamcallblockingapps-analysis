.class final Lcom/google/common/collect/ae$m;
.super Lcom/google/common/collect/ae$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ae$a<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/ae$n;Lcom/google/common/collect/ae$n;Lcom/google/common/base/e;Lcom/google/common/base/e;ILjava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ae$n;",
            "Lcom/google/common/collect/ae$n;",
            "Lcom/google/common/base/e<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/common/base/e<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2927
    invoke-direct/range {p0 .. p6}, Lcom/google/common/collect/ae$a;-><init>(Lcom/google/common/collect/ae$n;Lcom/google/common/collect/ae$n;Lcom/google/common/base/e;Lcom/google/common/base/e;ILjava/util/concurrent/ConcurrentMap;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2937
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 3891
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 3892
    new-instance v1, Lcom/google/common/collect/ad;

    invoke-direct {v1}, Lcom/google/common/collect/ad;-><init>()V

    .line 4144
    iget v2, v1, Lcom/google/common/collect/ad;->b:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget v6, v1, Lcom/google/common/collect/ad;->b:I

    const-string v7, "initial capacity was already set to %s"

    invoke-static {v2, v7, v6}, Lcom/google/common/base/m;->b(ZLjava/lang/String;I)V

    if-ltz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 4148
    :goto_1
    invoke-static {v2}, Lcom/google/common/base/m;->a(Z)V

    .line 4149
    iput v0, v1, Lcom/google/common/collect/ad;->b:I

    .line 3893
    iget-object v0, p0, Lcom/google/common/collect/ae$a;->a:Lcom/google/common/collect/ae$n;

    .line 3894
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ad;->a(Lcom/google/common/collect/ae$n;)Lcom/google/common/collect/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ae$a;->b:Lcom/google/common/collect/ae$n;

    .line 4255
    iget-object v2, v0, Lcom/google/common/collect/ad;->e:Lcom/google/common/collect/ae$n;

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iget-object v6, v0, Lcom/google/common/collect/ad;->e:Lcom/google/common/collect/ae$n;

    const-string v7, "Value strength was already set to %s"

    invoke-static {v2, v7, v6}, Lcom/google/common/base/m;->b(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 4256
    invoke-static {v1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/ae$n;

    iput-object v2, v0, Lcom/google/common/collect/ad;->e:Lcom/google/common/collect/ae$n;

    .line 4257
    sget-object v2, Lcom/google/common/collect/ae$n;->STRONG:Lcom/google/common/collect/ae$n;

    if-eq v1, v2, :cond_3

    .line 4259
    iput-boolean v5, v0, Lcom/google/common/collect/ad;->a:Z

    .line 3895
    :cond_3
    iget-object v1, p0, Lcom/google/common/collect/ae$a;->c:Lcom/google/common/base/e;

    .line 5122
    iget-object v2, v0, Lcom/google/common/collect/ad;->f:Lcom/google/common/base/e;

    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    iget-object v6, v0, Lcom/google/common/collect/ad;->f:Lcom/google/common/base/e;

    const-string v7, "key equivalence was already set to %s"

    invoke-static {v2, v7, v6}, Lcom/google/common/base/m;->b(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 5123
    invoke-static {v1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/e;

    iput-object v1, v0, Lcom/google/common/collect/ad;->f:Lcom/google/common/base/e;

    .line 5124
    iput-boolean v5, v0, Lcom/google/common/collect/ad;->a:Z

    .line 3896
    iget v1, p0, Lcom/google/common/collect/ae$a;->e:I

    .line 5178
    iget v2, v0, Lcom/google/common/collect/ad;->c:I

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    iget v3, v0, Lcom/google/common/collect/ad;->c:I

    const-string v6, "concurrency level was already set to %s"

    invoke-static {v2, v6, v3}, Lcom/google/common/base/m;->b(ZLjava/lang/String;I)V

    if-lez v1, :cond_6

    const/4 v4, 0x1

    .line 5182
    :cond_6
    invoke-static {v4}, Lcom/google/common/base/m;->a(Z)V

    .line 5183
    iput v1, v0, Lcom/google/common/collect/ad;->c:I

    .line 2939
    invoke-virtual {v0}, Lcom/google/common/collect/ad;->e()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ae$m;->f:Ljava/util/concurrent/ConcurrentMap;

    .line 5903
    :goto_5
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 5907
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 5908
    iget-object v2, p0, Lcom/google/common/collect/ae$a;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 2944
    iget-object v0, p0, Lcom/google/common/collect/ae$m;->f:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2932
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 3881
    iget-object v0, p0, Lcom/google/common/collect/ae$a;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 3882
    iget-object v0, p0, Lcom/google/common/collect/ae$a;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3883
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3884
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3886
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
