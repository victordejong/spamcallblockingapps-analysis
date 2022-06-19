.class final Lcom/google/common/collect/y$b;
.super Lcom/google/common/collect/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/t<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/collect/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/y<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/y<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 528
    invoke-direct {p0}, Lcom/google/common/collect/t;-><init>()V

    .line 529
    iput-object p1, p0, Lcom/google/common/collect/y$b;->a:Lcom/google/common/collect/y;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/ay;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ay<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lcom/google/common/collect/y$b;->a:Lcom/google/common/collect/y;

    invoke-virtual {v0}, Lcom/google/common/collect/y;->c()Lcom/google/common/collect/ay;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    .line 549
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 550
    check-cast p1, Ljava/util/Map$Entry;

    .line 551
    iget-object v0, p0, Lcom/google/common/collect/y$b;->a:Lcom/google/common/collect/y;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1534
    iget-object v0, p0, Lcom/google/common/collect/y$b;->a:Lcom/google/common/collect/y;

    invoke-virtual {v0}, Lcom/google/common/collect/y;->c()Lcom/google/common/collect/ay;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/google/common/collect/y$b;->a:Lcom/google/common/collect/y;

    .line 1480
    iget v0, v0, Lcom/google/common/collect/y;->c:I

    return v0
.end method
