.class final Lcom/google/common/collect/ae$e;
.super Lcom/google/common/collect/ae$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ae$k<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/ae;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ae;)V
    .locals 0

    .line 2760
    iput-object p1, p0, Lcom/google/common/collect/ae$e;->a:Lcom/google/common/collect/ae;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/common/collect/ae$k;-><init>(Lcom/google/common/collect/ae$1;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 2804
    iget-object v0, p0, Lcom/google/common/collect/ae$e;->a:Lcom/google/common/collect/ae;

    invoke-virtual {v0}, Lcom/google/common/collect/ae;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    .line 2769
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2772
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 2773
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 2777
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/ae$e;->a:Lcom/google/common/collect/ae;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ae;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2779
    iget-object v2, p0, Lcom/google/common/collect/ae$e;->a:Lcom/google/common/collect/ae;

    invoke-virtual {v2}, Lcom/google/common/collect/ae;->b()Lcom/google/common/base/e;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1, v0}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 2799
    iget-object v0, p0, Lcom/google/common/collect/ae$e;->a:Lcom/google/common/collect/ae;

    invoke-virtual {v0}, Lcom/google/common/collect/ae;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2764
    new-instance v0, Lcom/google/common/collect/ae$d;

    iget-object v1, p0, Lcom/google/common/collect/ae$e;->a:Lcom/google/common/collect/ae;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ae$d;-><init>(Lcom/google/common/collect/ae;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 3

    .line 2784
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2787
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 2788
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2789
    iget-object v2, p0, Lcom/google/common/collect/ae$e;->a:Lcom/google/common/collect/ae;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/google/common/collect/ae;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final size()I
    .locals 1

    .line 2794
    iget-object v0, p0, Lcom/google/common/collect/ae$e;->a:Lcom/google/common/collect/ae;

    invoke-virtual {v0}, Lcom/google/common/collect/ae;->size()I

    move-result v0

    return v0
.end method
