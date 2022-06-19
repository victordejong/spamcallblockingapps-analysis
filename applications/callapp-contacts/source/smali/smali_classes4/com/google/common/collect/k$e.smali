.class final Lcom/google/common/collect/k$e;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/k;


# direct methods
.method constructor <init>(Lcom/google/common/collect/k;)V
    .locals 0

    .line 831
    iput-object p1, p0, Lcom/google/common/collect/k$e;->a:Lcom/google/common/collect/k;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/google/common/collect/k$e;->a:Lcom/google/common/collect/k;

    invoke-virtual {v0}, Lcom/google/common/collect/k;->clear()V

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 844
    iget-object v0, p0, Lcom/google/common/collect/k$e;->a:Lcom/google/common/collect/k;

    .line 1849
    invoke-virtual {v0}, Lcom/google/common/collect/k;->c()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1851
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 1853
    :cond_0
    new-instance v1, Lcom/google/common/collect/k$3;

    invoke-direct {v1, v0}, Lcom/google/common/collect/k$3;-><init>(Lcom/google/common/collect/k;)V

    return-object v1
.end method

.method public final size()I
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/google/common/collect/k$e;->a:Lcom/google/common/collect/k;

    invoke-virtual {v0}, Lcom/google/common/collect/k;->size()I

    move-result v0

    return v0
.end method
