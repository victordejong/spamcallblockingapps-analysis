.class Lcom/google/common/collect/d$c;
.super Lcom/google/common/collect/ag$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ag$c<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/d;


# direct methods
.method constructor <init>(Lcom/google/common/collect/d;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 906
    iput-object p1, p0, Lcom/google/common/collect/d$c;->a:Lcom/google/common/collect/d;

    .line 907
    invoke-direct {p0, p2}, Lcom/google/common/collect/ag$c;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 955
    invoke-virtual {p0}, Lcom/google/common/collect/d$c;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ab;->d(Ljava/util/Iterator;)V

    return-void
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 6520
    iget-object v0, p0, Lcom/google/common/collect/ag$c;->d:Ljava/util/Map;

    .line 960
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    .line 7520
    iget-object v0, p0, Lcom/google/common/collect/ag$c;->d:Ljava/util/Map;

    .line 965
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 8520
    iget-object v0, p0, Lcom/google/common/collect/ag$c;->d:Ljava/util/Map;

    .line 970
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 4520
    iget-object v0, p0, Lcom/google/common/collect/ag$c;->d:Ljava/util/Map;

    .line 912
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 913
    new-instance v1, Lcom/google/common/collect/d$c$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/d$c$1;-><init>(Lcom/google/common/collect/d$c;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 5520
    iget-object v0, p0, Lcom/google/common/collect/ag$c;->d:Ljava/util/Map;

    .line 944
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 946
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 947
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 948
    iget-object p1, p0, Lcom/google/common/collect/d$c;->a:Lcom/google/common/collect/d;

    invoke-static {p1, v1}, Lcom/google/common/collect/d;->b(Lcom/google/common/collect/d;I)I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method
