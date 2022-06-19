.class Lcom/google/common/collect/d$i;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/d$i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field final c:Lcom/google/common/collect/d$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/d<",
            "TK;TV;>.i;"
        }
    .end annotation
.end field

.field final d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field final synthetic e:Lcom/google/common/collect/d;


# direct methods
.method constructor <init>(Lcom/google/common/collect/d;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/d$i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV;>;",
            "Lcom/google/common/collect/d<",
            "TK;TV;>.i;)V"
        }
    .end annotation

    .line 329
    iput-object p1, p0, Lcom/google/common/collect/d$i;->e:Lcom/google/common/collect/d;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 330
    iput-object p2, p0, Lcom/google/common/collect/d$i;->a:Ljava/lang/Object;

    .line 331
    iput-object p3, p0, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    .line 332
    iput-object p4, p0, Lcom/google/common/collect/d$i;->c:Lcom/google/common/collect/d$i;

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1415
    :cond_0
    iget-object p1, p4, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    .line 333
    :goto_0
    iput-object p1, p0, Lcom/google/common/collect/d$i;->d:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/google/common/collect/d$i;->c:Lcom/google/common/collect/d$i;

    if-eqz v0, :cond_1

    .line 345
    invoke-virtual {v0}, Lcom/google/common/collect/d$i;->a()V

    .line 346
    iget-object v0, p0, Lcom/google/common/collect/d$i;->c:Lcom/google/common/collect/d$i;

    .line 2415
    iget-object v0, v0, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    .line 346
    iget-object v1, p0, Lcom/google/common/collect/d$i;->d:Ljava/util/Collection;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 350
    iget-object v0, p0, Lcom/google/common/collect/d$i;->e:Lcom/google/common/collect/d;

    invoke-static {v0}, Lcom/google/common/collect/d;->a(Lcom/google/common/collect/d;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/d$i;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 352
    iput-object v0, p0, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    :cond_2
    :goto_0
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 474
    invoke-virtual {p0}, Lcom/google/common/collect/d$i;->a()V

    .line 475
    iget-object v0, p0, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 476
    iget-object v1, p0, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/google/common/collect/d$i;->e:Lcom/google/common/collect/d;

    invoke-static {v1}, Lcom/google/common/collect/d;->c(Lcom/google/common/collect/d;)I

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/google/common/collect/d$i;->c()V

    :cond_0
    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 494
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 497
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/d$i;->size()I

    move-result v0

    .line 498
    iget-object v1, p0, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 500
    iget-object v1, p0, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 501
    iget-object v2, p0, Lcom/google/common/collect/d$i;->e:Lcom/google/common/collect/d;

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Lcom/google/common/collect/d;->a(Lcom/google/common/collect/d;I)I

    if-nez v0, :cond_1

    .line 503
    invoke-virtual {p0}, Lcom/google/common/collect/d$i;->c()V

    :cond_1
    return p1
.end method

.method final b()V
    .locals 2

    move-object v0, p0

    .line 362
    :goto_0
    iget-object v1, v0, Lcom/google/common/collect/d$i;->c:Lcom/google/common/collect/d$i;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 364
    :cond_0
    iget-object v1, v0, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    iget-object v1, v0, Lcom/google/common/collect/d$i;->e:Lcom/google/common/collect/d;

    invoke-static {v1}, Lcom/google/common/collect/d;->a(Lcom/google/common/collect/d;)Ljava/util/Map;

    move-result-object v1

    iget-object v0, v0, Lcom/google/common/collect/d$i;->a:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method final c()V
    .locals 3

    move-object v0, p0

    .line 380
    :goto_0
    iget-object v1, v0, Lcom/google/common/collect/d$i;->c:Lcom/google/common/collect/d$i;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 383
    :cond_0
    iget-object v1, v0, Lcom/google/common/collect/d$i;->e:Lcom/google/common/collect/d;

    invoke-static {v1}, Lcom/google/common/collect/d;->a(Lcom/google/common/collect/d;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/google/common/collect/d$i;->a:Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .locals 2

    .line 523
    invoke-virtual {p0}, Lcom/google/common/collect/d$i;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 527
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 528
    iget-object v1, p0, Lcom/google/common/collect/d$i;->e:Lcom/google/common/collect/d;

    invoke-static {v1, v0}, Lcom/google/common/collect/d;->b(Lcom/google/common/collect/d;I)I

    .line 529
    invoke-virtual {p0}, Lcom/google/common/collect/d$i;->b()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 511
    invoke-virtual {p0}, Lcom/google/common/collect/d$i;->a()V

    .line 512
    iget-object v0, p0, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
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

    .line 517
    invoke-virtual {p0}, Lcom/google/common/collect/d$i;->a()V

    .line 518
    iget-object v0, p0, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 398
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/d$i;->a()V

    .line 399
    iget-object v0, p0, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 404
    invoke-virtual {p0}, Lcom/google/common/collect/d$i;->a()V

    .line 405
    iget-object v0, p0, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 420
    invoke-virtual {p0}, Lcom/google/common/collect/d$i;->a()V

    .line 421
    new-instance v0, Lcom/google/common/collect/d$i$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/d$i$a;-><init>(Lcom/google/common/collect/d$i;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 534
    invoke-virtual {p0}, Lcom/google/common/collect/d$i;->a()V

    .line 535
    iget-object v0, p0, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 537
    iget-object v0, p0, Lcom/google/common/collect/d$i;->e:Lcom/google/common/collect/d;

    invoke-static {v0}, Lcom/google/common/collect/d;->b(Lcom/google/common/collect/d;)I

    .line 538
    invoke-virtual {p0}, Lcom/google/common/collect/d$i;->b()V

    :cond_0
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 545
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 548
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/d$i;->size()I

    move-result v0

    .line 549
    iget-object v1, p0, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 551
    iget-object v1, p0, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 552
    iget-object v2, p0, Lcom/google/common/collect/d$i;->e:Lcom/google/common/collect/d;

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Lcom/google/common/collect/d;->a(Lcom/google/common/collect/d;I)I

    .line 553
    invoke-virtual {p0}, Lcom/google/common/collect/d$i;->b()V

    :cond_1
    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 560
    invoke-static {p1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    invoke-virtual {p0}, Lcom/google/common/collect/d$i;->size()I

    move-result v0

    .line 562
    iget-object v1, p0, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 564
    iget-object v1, p0, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 565
    iget-object v2, p0, Lcom/google/common/collect/d$i;->e:Lcom/google/common/collect/d;

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Lcom/google/common/collect/d;->a(Lcom/google/common/collect/d;I)I

    .line 566
    invoke-virtual {p0}, Lcom/google/common/collect/d$i;->b()V

    :cond_0
    return p1
.end method

.method public size()I
    .locals 1

    .line 389
    invoke-virtual {p0}, Lcom/google/common/collect/d$i;->a()V

    .line 390
    iget-object v0, p0, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 410
    invoke-virtual {p0}, Lcom/google/common/collect/d$i;->a()V

    .line 411
    iget-object v0, p0, Lcom/google/common/collect/d$i;->b:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
