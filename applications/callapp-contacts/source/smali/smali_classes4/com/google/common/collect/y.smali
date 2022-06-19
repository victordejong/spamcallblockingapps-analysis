.class public abstract Lcom/google/common/collect/y;
.super Lcom/google/common/collect/g;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/y$d;,
        Lcom/google/common/collect/y$b;,
        Lcom/google/common/collect/y$c;,
        Lcom/google/common/collect/y$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/g<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final transient b:Lcom/google/common/collect/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/x<",
            "TK;+",
            "Lcom/google/common/collect/t<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final transient c:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/x;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/x<",
            "TK;+",
            "Lcom/google/common/collect/t<",
            "TV;>;>;I)V"
        }
    .end annotation

    .line 343
    invoke-direct {p0}, Lcom/google/common/collect/g;-><init>()V

    .line 344
    iput-object p1, p0, Lcom/google/common/collect/y;->b:Lcom/google/common/collect/x;

    .line 345
    iput p2, p0, Lcom/google/common/collect/y;->c:I

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/common/collect/y;->d(Ljava/lang/Object;)Lcom/google/common/collect/t;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 414
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic b()Ljava/util/Map;
    .locals 1

    .line 1506
    iget-object v0, p0, Lcom/google/common/collect/y;->b:Lcom/google/common/collect/x;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 475
    invoke-super {p0, p1}, Lcom/google/common/collect/g;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 66
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final c()Lcom/google/common/collect/ay;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ay<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 561
    new-instance v0, Lcom/google/common/collect/y$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/y$1;-><init>(Lcom/google/common/collect/y;)V

    return-object v0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 453
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method final d()Lcom/google/common/collect/ay;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ay<",
            "TV;>;"
        }
    .end annotation

    .line 670
    new-instance v0, Lcom/google/common/collect/y$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/y$2;-><init>(Lcom/google/common/collect/y;)V

    return-object v0
.end method

.method public abstract d(Ljava/lang/Object;)Lcom/google/common/collect/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/common/collect/t<",
            "TV;>;"
        }
    .end annotation
.end method

.method public final e()I
    .locals 1

    .line 480
    iget v0, p0, Lcom/google/common/collect/y;->c:I

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 66
    invoke-super {p0, p1}, Lcom/google/common/collect/g;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 385
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method final g()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 496
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 66
    invoke-super {p0}, Lcom/google/common/collect/g;->hashCode()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic i()Ljava/util/Collection;
    .locals 1

    .line 2660
    invoke-super {p0}, Lcom/google/common/collect/g;->i()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/t;

    return-object v0
.end method

.method final synthetic j()Ljava/util/Collection;
    .locals 1

    .line 1665
    new-instance v0, Lcom/google/common/collect/y$d;

    invoke-direct {v0, p0}, Lcom/google/common/collect/y$d;-><init>(Lcom/google/common/collect/y;)V

    return-object v0
.end method

.method final synthetic k()Ljava/util/Iterator;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/google/common/collect/y;->d()Lcom/google/common/collect/ay;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic l()Ljava/util/Collection;
    .locals 1

    .line 4517
    invoke-super {p0}, Lcom/google/common/collect/g;->l()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/t;

    return-object v0
.end method

.method final synthetic m()Ljava/util/Collection;
    .locals 1

    .line 3522
    new-instance v0, Lcom/google/common/collect/y$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/y$b;-><init>(Lcom/google/common/collect/y;)V

    return-object v0
.end method

.method final synthetic n()Ljava/util/Iterator;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/google/common/collect/y;->c()Lcom/google/common/collect/ay;

    move-result-object v0

    return-object v0
.end method

.method final o()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 511
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final synthetic q()Ljava/util/Set;
    .locals 1

    .line 3491
    iget-object v0, p0, Lcom/google/common/collect/y;->b:Lcom/google/common/collect/x;

    invoke-virtual {v0}, Lcom/google/common/collect/x;->e()Lcom/google/common/collect/z;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 66
    invoke-super {p0}, Lcom/google/common/collect/g;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
