.class public final Lscala/collection/mutable/AnyRefMap$AnyRefMapBuilder;
.super Ljava/lang/Object;
.source "AnyRefMap.scala"

# interfaces
.implements Lscala/collection/mutable/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/AnyRefMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnyRefMapBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/Builder<",
        "Lscala/Tuple2<",
        "TK;TV;>;",
        "Lscala/collection/mutable/AnyRefMap<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private elems:Lscala/collection/mutable/AnyRefMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/AnyRefMap<",
            "TK;TV;>;"
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

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    .line 411
    new-instance v0, Lscala/collection/mutable/AnyRefMap;

    invoke-direct {v0}, Lscala/collection/mutable/AnyRefMap;-><init>()V

    iput-object v0, p0, Lscala/collection/mutable/AnyRefMap$AnyRefMapBuilder;->elems:Lscala/collection/mutable/AnyRefMap;

    return-void
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 410
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/AnyRefMap$AnyRefMapBuilder;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/AnyRefMap$AnyRefMapBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;
    .locals 0

    .line 410
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/Growable$class;->$plus$eq(Lscala/collection/generic/Growable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/AnyRefMap$AnyRefMapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TK;TV;>;)",
            "Lscala/collection/mutable/AnyRefMap$AnyRefMapBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 413
    invoke-virtual {p0}, Lscala/collection/mutable/AnyRefMap$AnyRefMapBuilder;->elems()Lscala/collection/mutable/AnyRefMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/AnyRefMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/AnyRefMap;

    return-object p0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 410
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/AnyRefMap$AnyRefMapBuilder;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/AnyRefMap$AnyRefMapBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;)",
            "Lscala/collection/generic/Growable<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 410
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 416
    new-instance v0, Lscala/collection/mutable/AnyRefMap;

    invoke-direct {v0}, Lscala/collection/mutable/AnyRefMap;-><init>()V

    invoke-virtual {p0, v0}, Lscala/collection/mutable/AnyRefMap$AnyRefMapBuilder;->elems_$eq(Lscala/collection/mutable/AnyRefMap;)V

    return-void
.end method

.method public elems()Lscala/collection/mutable/AnyRefMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/AnyRefMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lscala/collection/mutable/AnyRefMap$AnyRefMapBuilder;->elems:Lscala/collection/mutable/AnyRefMap;

    return-object v0
.end method

.method public elems_$eq(Lscala/collection/mutable/AnyRefMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/AnyRefMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 411
    iput-object p1, p0, Lscala/collection/mutable/AnyRefMap$AnyRefMapBuilder;->elems:Lscala/collection/mutable/AnyRefMap;

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
            "Lscala/collection/mutable/AnyRefMap<",
            "TK;TV;>;TNewTo;>;)",
            "Lscala/collection/mutable/Builder<",
            "Lscala/Tuple2<",
            "TK;TV;>;TNewTo;>;"
        }
    .end annotation

    .line 410
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 410
    invoke-virtual {p0}, Lscala/collection/mutable/AnyRefMap$AnyRefMapBuilder;->result()Lscala/collection/mutable/AnyRefMap;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/mutable/AnyRefMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/AnyRefMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 417
    invoke-virtual {p0}, Lscala/collection/mutable/AnyRefMap$AnyRefMapBuilder;->elems()Lscala/collection/mutable/AnyRefMap;

    move-result-object v0

    return-object v0
.end method

.method public sizeHint(I)V
    .locals 0

    .line 410
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

    .line 410
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

    .line 410
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

    .line 410
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V

    return-void
.end method
