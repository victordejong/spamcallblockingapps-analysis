.class public final Lscala/collection/mutable/LongMap$LongMapBuilder;
.super Ljava/lang/Object;
.source "LongMap.scala"

# interfaces
.implements Lscala/collection/mutable/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/LongMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LongMapBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/Builder<",
        "Lscala/Tuple2<",
        "Ljava/lang/Object;",
        "TV;>;",
        "Lscala/collection/mutable/LongMap<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private elems:Lscala/collection/mutable/LongMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/LongMap<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    .line 505
    new-instance v0, Lscala/collection/mutable/LongMap;

    invoke-direct {v0}, Lscala/collection/mutable/LongMap;-><init>()V

    iput-object v0, p0, Lscala/collection/mutable/LongMap$LongMapBuilder;->elems:Lscala/collection/mutable/LongMap;

    return-void
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 504
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/LongMap$LongMapBuilder;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/LongMap$LongMapBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;
    .locals 0

    .line 504
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/Growable$class;->$plus$eq(Lscala/collection/generic/Growable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 504
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/LongMap$LongMapBuilder;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/LongMap$LongMapBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/LongMap$LongMapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "TV;>;)",
            "Lscala/collection/mutable/LongMap$LongMapBuilder<",
            "TV;>;"
        }
    .end annotation

    .line 507
    invoke-virtual {p0}, Lscala/collection/mutable/LongMap$LongMapBuilder;->elems()Lscala/collection/mutable/LongMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/LongMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/LongMap;

    return-object p0
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "TV;>;>;)",
            "Lscala/collection/generic/Growable<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "TV;>;>;"
        }
    .end annotation

    .line 504
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 510
    new-instance v0, Lscala/collection/mutable/LongMap;

    invoke-direct {v0}, Lscala/collection/mutable/LongMap;-><init>()V

    invoke-virtual {p0, v0}, Lscala/collection/mutable/LongMap$LongMapBuilder;->elems_$eq(Lscala/collection/mutable/LongMap;)V

    return-void
.end method

.method public elems()Lscala/collection/mutable/LongMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/LongMap<",
            "TV;>;"
        }
    .end annotation

    .line 505
    iget-object v0, p0, Lscala/collection/mutable/LongMap$LongMapBuilder;->elems:Lscala/collection/mutable/LongMap;

    return-object v0
.end method

.method public elems_$eq(Lscala/collection/mutable/LongMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/LongMap<",
            "TV;>;)V"
        }
    .end annotation

    .line 505
    iput-object p1, p0, Lscala/collection/mutable/LongMap$LongMapBuilder;->elems:Lscala/collection/mutable/LongMap;

    return-void
.end method

.method public mapResult(Lscala/Function1;)Lscala/collection/mutable/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NewTo:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/collection/mutable/LongMap<",
            "TV;>;TNewTo;>;)",
            "Lscala/collection/mutable/Builder<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "TV;>;TNewTo;>;"
        }
    .end annotation

    .line 504
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 504
    invoke-virtual {p0}, Lscala/collection/mutable/LongMap$LongMapBuilder;->result()Lscala/collection/mutable/LongMap;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/mutable/LongMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/LongMap<",
            "TV;>;"
        }
    .end annotation

    .line 511
    invoke-virtual {p0}, Lscala/collection/mutable/LongMap$LongMapBuilder;->elems()Lscala/collection/mutable/LongMap;

    move-result-object v0

    return-object v0
.end method

.method public sizeHint(I)V
    .locals 0

    .line 504
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->sizeHint(Lscala/collection/mutable/Builder;I)V

    return-void
.end method

.method public sizeHint(Lscala/collection/TraversableLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike<",
            "**>;)V"
        }
    .end annotation

    .line 504
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->sizeHint(Lscala/collection/mutable/Builder;Lscala/collection/TraversableLike;)V

    return-void
.end method

.method public sizeHint(Lscala/collection/TraversableLike;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike<",
            "**>;I)V"
        }
    .end annotation

    .line 504
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHint(Lscala/collection/mutable/Builder;Lscala/collection/TraversableLike;I)V

    return-void
.end method

.method public sizeHintBounded(ILscala/collection/TraversableLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/TraversableLike<",
            "**>;)V"
        }
    .end annotation

    .line 504
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V

    return-void
.end method
