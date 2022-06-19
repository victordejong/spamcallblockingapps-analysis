.class abstract Lcom/google/common/collect/aj$b;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1668
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/google/common/collect/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ah<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public clear()V
    .locals 1

    .line 1696
    invoke-virtual {p0}, Lcom/google/common/collect/aj$b;->a()Lcom/google/common/collect/ah;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/ah;->f()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .line 1678
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 1679
    check-cast p1, Ljava/util/Map$Entry;

    .line 1680
    invoke-virtual {p0}, Lcom/google/common/collect/aj$b;->a()Lcom/google/common/collect/ah;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/google/common/collect/ah;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 1687
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 1688
    check-cast p1, Ljava/util/Map$Entry;

    .line 1689
    invoke-virtual {p0}, Lcom/google/common/collect/aj$b;->a()Lcom/google/common/collect/ah;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/google/common/collect/ah;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .locals 1

    .line 1673
    invoke-virtual {p0}, Lcom/google/common/collect/aj$b;->a()Lcom/google/common/collect/ah;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/ah;->e()I

    move-result v0

    return v0
.end method
