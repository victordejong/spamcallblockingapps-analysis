.class Lcom/google/common/collect/d$j;
.super Lcom/google/common/collect/d$i;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/d$j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/d<",
        "TK;TV;>.i;",
        "Ljava/util/List<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/google/common/collect/d;


# direct methods
.method constructor <init>(Lcom/google/common/collect/d;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/d$i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List<",
            "TV;>;",
            "Lcom/google/common/collect/d<",
            "TK;TV;>.i;)V"
        }
    .end annotation

    .line 739
    iput-object p1, p0, Lcom/google/common/collect/d$j;->f:Lcom/google/common/collect/d;

    .line 740
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/d$i;-><init>(Lcom/google/common/collect/d;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/d$i;)V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 778
    invoke-virtual {p0}, Lcom/google/common/collect/d$j;->a()V

    .line 6415
    iget-object v0, p0, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    .line 779
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 7415
    iget-object v1, p0, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    .line 6744
    check-cast v1, Ljava/util/List;

    .line 780
    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 781
    iget-object p1, p0, Lcom/google/common/collect/d$j;->f:Lcom/google/common/collect/d;

    invoke-static {p1}, Lcom/google/common/collect/d;->c(Lcom/google/common/collect/d;)I

    if-eqz v0, :cond_0

    .line 783
    invoke-virtual {p0}, Lcom/google/common/collect/d$j;->c()V

    :cond_0
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 749
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 752
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/d$j;->size()I

    move-result v0

    .line 2415
    iget-object v1, p0, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    .line 1744
    check-cast v1, Ljava/util/List;

    .line 753
    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3415
    iget-object p2, p0, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    .line 755
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    .line 756
    iget-object v1, p0, Lcom/google/common/collect/d$j;->f:Lcom/google/common/collect/d;

    sub-int/2addr p2, v0

    invoke-static {v1, p2}, Lcom/google/common/collect/d;->a(Lcom/google/common/collect/d;I)I

    if-nez v0, :cond_1

    .line 758
    invoke-virtual {p0}, Lcom/google/common/collect/d$j;->c()V

    :cond_1
    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 766
    invoke-virtual {p0}, Lcom/google/common/collect/d$j;->a()V

    .line 4415
    iget-object v0, p0, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    .line 3744
    check-cast v0, Ljava/util/List;

    .line 767
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 798
    invoke-virtual {p0}, Lcom/google/common/collect/d$j;->a()V

    .line 9415
    iget-object v0, p0, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    .line 8744
    check-cast v0, Ljava/util/List;

    .line 799
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 804
    invoke-virtual {p0}, Lcom/google/common/collect/d$j;->a()V

    .line 10415
    iget-object v0, p0, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    .line 9744
    check-cast v0, Ljava/util/List;

    .line 805
    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    .line 810
    invoke-virtual {p0}, Lcom/google/common/collect/d$j;->a()V

    .line 811
    new-instance v0, Lcom/google/common/collect/d$j$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/d$j$a;-><init>(Lcom/google/common/collect/d$j;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    .line 816
    invoke-virtual {p0}, Lcom/google/common/collect/d$j;->a()V

    .line 817
    new-instance v0, Lcom/google/common/collect/d$j$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/d$j$a;-><init>(Lcom/google/common/collect/d$j;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 789
    invoke-virtual {p0}, Lcom/google/common/collect/d$j;->a()V

    .line 8415
    iget-object v0, p0, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    .line 7744
    check-cast v0, Ljava/util/List;

    .line 790
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 791
    iget-object v0, p0, Lcom/google/common/collect/d$j;->f:Lcom/google/common/collect/d;

    invoke-static {v0}, Lcom/google/common/collect/d;->b(Lcom/google/common/collect/d;)I

    .line 792
    invoke-virtual {p0}, Lcom/google/common/collect/d$j;->b()V

    return-object p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 772
    invoke-virtual {p0}, Lcom/google/common/collect/d$j;->a()V

    .line 5415
    iget-object v0, p0, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    .line 4744
    check-cast v0, Ljava/util/List;

    .line 773
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public subList(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 822
    invoke-virtual {p0}, Lcom/google/common/collect/d$j;->a()V

    .line 823
    iget-object v0, p0, Lcom/google/common/collect/d$j;->f:Lcom/google/common/collect/d;

    .line 11370
    iget-object v1, p0, Lcom/google/common/collect/d$i;->a:Ljava/lang/Object;

    .line 12415
    iget-object v2, p0, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    .line 11744
    check-cast v2, Ljava/util/List;

    .line 825
    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 12487
    iget-object p2, p0, Lcom/google/common/collect/d$i;->c:Lcom/google/common/collect/d$i;

    if-nez p2, :cond_0

    move-object p2, p0

    goto :goto_0

    .line 13487
    :cond_0
    iget-object p2, p0, Lcom/google/common/collect/d$i;->c:Lcom/google/common/collect/d$i;

    .line 823
    :goto_0
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/common/collect/d;->a(Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/d$i;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
