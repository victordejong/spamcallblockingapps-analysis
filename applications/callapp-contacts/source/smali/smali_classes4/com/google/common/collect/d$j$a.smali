.class final Lcom/google/common/collect/d$j$a;
.super Lcom/google/common/collect/d$i$a;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/d$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/d<",
        "TK;TV;>.i.a;",
        "Ljava/util/ListIterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/google/common/collect/d$j;


# direct methods
.method constructor <init>(Lcom/google/common/collect/d$j;)V
    .locals 0

    .line 831
    iput-object p1, p0, Lcom/google/common/collect/d$j$a;->d:Lcom/google/common/collect/d$j;

    invoke-direct {p0, p1}, Lcom/google/common/collect/d$i$a;-><init>(Lcom/google/common/collect/d$i;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/d$j;I)V
    .locals 1

    .line 833
    iput-object p1, p0, Lcom/google/common/collect/d$j$a;->d:Lcom/google/common/collect/d$j;

    .line 2415
    iget-object v0, p1, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    .line 1744
    check-cast v0, Ljava/util/List;

    .line 834
    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/d$i$a;-><init>(Lcom/google/common/collect/d$i;Ljava/util/Iterator;)V

    return-void
.end method

.method private b()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    .line 2467
    invoke-virtual {p0}, Lcom/google/common/collect/d$i$a;->a()V

    .line 2468
    iget-object v0, p0, Lcom/google/common/collect/d$i$a;->a:Ljava/util/Iterator;

    .line 838
    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 868
    iget-object v0, p0, Lcom/google/common/collect/d$j$a;->d:Lcom/google/common/collect/d$j;

    invoke-virtual {v0}, Lcom/google/common/collect/d$j;->isEmpty()Z

    move-result v0

    .line 869
    invoke-direct {p0}, Lcom/google/common/collect/d$j$a;->b()Ljava/util/ListIterator;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 870
    iget-object p1, p0, Lcom/google/common/collect/d$j$a;->d:Lcom/google/common/collect/d$j;

    iget-object p1, p1, Lcom/google/common/collect/d$j;->f:Lcom/google/common/collect/d;

    invoke-static {p1}, Lcom/google/common/collect/d;->c(Lcom/google/common/collect/d;)I

    if-eqz v0, :cond_0

    .line 872
    iget-object p1, p0, Lcom/google/common/collect/d$j$a;->d:Lcom/google/common/collect/d$j;

    invoke-virtual {p1}, Lcom/google/common/collect/d$j;->c()V

    :cond_0
    return-void
.end method

.method public final hasPrevious()Z
    .locals 1

    .line 843
    invoke-direct {p0}, Lcom/google/common/collect/d$j$a;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final nextIndex()I
    .locals 1

    .line 853
    invoke-direct {p0}, Lcom/google/common/collect/d$j$a;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 848
    invoke-direct {p0}, Lcom/google/common/collect/d$j$a;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    .line 858
    invoke-direct {p0}, Lcom/google/common/collect/d$j$a;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 863
    invoke-direct {p0}, Lcom/google/common/collect/d$j$a;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
