.class final Lcom/google/common/collect/k$a;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/k;


# direct methods
.method constructor <init>(Lcom/google/common/collect/k;)V
    .locals 0

    .line 667
    iput-object p1, p0, Lcom/google/common/collect/k$a;->a:Lcom/google/common/collect/k;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/google/common/collect/k$a;->a:Lcom/google/common/collect/k;

    invoke-virtual {v0}, Lcom/google/common/collect/k;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    .line 686
    iget-object v0, p0, Lcom/google/common/collect/k$a;->a:Lcom/google/common/collect/k;

    invoke-virtual {v0}, Lcom/google/common/collect/k;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 688
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 689
    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 690
    check-cast p1, Ljava/util/Map$Entry;

    .line 691
    iget-object v0, p0, Lcom/google/common/collect/k$a;->a:Lcom/google/common/collect/k;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/collect/k;->b(Lcom/google/common/collect/k;Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 692
    iget-object v2, p0, Lcom/google/common/collect/k$a;->a:Lcom/google/common/collect/k;

    iget-object v2, v2, Lcom/google/common/collect/k;->c:[Ljava/lang/Object;

    aget-object v0, v2, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 681
    iget-object v0, p0, Lcom/google/common/collect/k$a;->a:Lcom/google/common/collect/k;

    invoke-virtual {v0}, Lcom/google/common/collect/k;->f()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 9

    .line 699
    iget-object v0, p0, Lcom/google/common/collect/k$a;->a:Lcom/google/common/collect/k;

    invoke-virtual {v0}, Lcom/google/common/collect/k;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 701
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 702
    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 703
    check-cast p1, Ljava/util/Map$Entry;

    .line 704
    iget-object v0, p0, Lcom/google/common/collect/k$a;->a:Lcom/google/common/collect/k;

    invoke-virtual {v0}, Lcom/google/common/collect/k;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 707
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/k$a;->a:Lcom/google/common/collect/k;

    invoke-static {v0}, Lcom/google/common/collect/k;->b(Lcom/google/common/collect/k;)I

    move-result v0

    .line 710
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    iget-object p1, p0, Lcom/google/common/collect/k$a;->a:Lcom/google/common/collect/k;

    invoke-static {p1}, Lcom/google/common/collect/k;->c(Lcom/google/common/collect/k;)Ljava/lang/Object;

    move-result-object v5

    iget-object p1, p0, Lcom/google/common/collect/k$a;->a:Lcom/google/common/collect/k;

    iget-object v6, p1, Lcom/google/common/collect/k;->a:[I

    iget-object p1, p0, Lcom/google/common/collect/k$a;->a:Lcom/google/common/collect/k;

    iget-object v7, p1, Lcom/google/common/collect/k;->b:[Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/common/collect/k$a;->a:Lcom/google/common/collect/k;

    iget-object v8, p1, Lcom/google/common/collect/k;->c:[Ljava/lang/Object;

    move v4, v0

    .line 709
    invoke-static/range {v2 .. v8}, Lcom/google/common/collect/l;->a(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    return v1

    .line 715
    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/k$a;->a:Lcom/google/common/collect/k;

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/k;->a(II)V

    .line 716
    iget-object p1, p0, Lcom/google/common/collect/k$a;->a:Lcom/google/common/collect/k;

    invoke-static {p1}, Lcom/google/common/collect/k;->d(Lcom/google/common/collect/k;)I

    .line 717
    iget-object p1, p0, Lcom/google/common/collect/k$a;->a:Lcom/google/common/collect/k;

    invoke-virtual {p1}, Lcom/google/common/collect/k;->d()V

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public final size()I
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/google/common/collect/k$a;->a:Lcom/google/common/collect/k;

    invoke-virtual {v0}, Lcom/google/common/collect/k;->size()I

    move-result v0

    return v0
.end method
