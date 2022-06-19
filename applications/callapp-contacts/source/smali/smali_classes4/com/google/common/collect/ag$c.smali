.class Lcom/google/common/collect/ag$c;
.super Lcom/google/common/collect/av$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/av$a<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3515
    invoke-direct {p0}, Lcom/google/common/collect/av$a;-><init>()V

    .line 3516
    invoke-static {p1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/google/common/collect/ag$c;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 9520
    iget-object v0, p0, Lcom/google/common/collect/ag$c;->d:Ljava/util/Map;

    .line 3554
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 7520
    iget-object v0, p0, Lcom/google/common/collect/ag$c;->d:Ljava/util/Map;

    .line 3540
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 6520
    iget-object v0, p0, Lcom/google/common/collect/ag$c;->d:Ljava/util/Map;

    .line 3535
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

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

    .line 3525
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5112
    new-instance v1, Lcom/google/common/collect/ag$1;

    invoke-direct {v1, v0}, Lcom/google/common/collect/ag$1;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 3545
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ag$c;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8520
    iget-object v0, p0, Lcom/google/common/collect/ag$c;->d:Ljava/util/Map;

    .line 3546
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .locals 1

    .line 5520
    iget-object v0, p0, Lcom/google/common/collect/ag$c;->d:Ljava/util/Map;

    .line 3530
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
