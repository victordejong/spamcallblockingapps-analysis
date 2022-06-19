.class public final Lscala/collection/immutable/BitSet$$anon$1;
.super Ljava/lang/Object;
.source "BitSet.scala"

# interfaces
.implements Lscala/collection/mutable/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/BitSet$;->newBuilder()Lscala/collection/mutable/Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/Builder<",
        "Ljava/lang/Object;",
        "Lscala/collection/immutable/BitSet;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lscala/collection/mutable/BitSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    .line 73
    new-instance v0, Lscala/collection/mutable/BitSet;

    invoke-direct {v0}, Lscala/collection/mutable/BitSet;-><init>()V

    iput-object v0, p0, Lscala/collection/immutable/BitSet$$anon$1;->b:Lscala/collection/mutable/BitSet;

    return-void
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 72
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/BitSet$$anon$1;->$plus$eq(I)Lscala/collection/immutable/BitSet$$anon$1;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;
    .locals 0

    .line 72
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/Growable$class;->$plus$eq(Lscala/collection/generic/Growable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(I)Lscala/collection/immutable/BitSet$$anon$1;
    .locals 1

    .line 74
    iget-object v0, p0, Lscala/collection/immutable/BitSet$$anon$1;->b:Lscala/collection/mutable/BitSet;

    invoke-virtual {v0, p1}, Lscala/collection/mutable/BitSet;->$plus$eq(I)Lscala/collection/mutable/BitSet;

    return-object p0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 72
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/BitSet$$anon$1;->$plus$eq(I)Lscala/collection/immutable/BitSet$$anon$1;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/generic/Growable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 72
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 75
    iget-object v0, p0, Lscala/collection/immutable/BitSet$$anon$1;->b:Lscala/collection/mutable/BitSet;

    invoke-virtual {v0}, Lscala/collection/mutable/BitSet;->clear()V

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
            "Lscala/collection/immutable/BitSet;",
            "TNewTo;>;)",
            "Lscala/collection/mutable/Builder<",
            "Ljava/lang/Object;",
            "TNewTo;>;"
        }
    .end annotation

    .line 72
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lscala/collection/immutable/BitSet$$anon$1;->result()Lscala/collection/immutable/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/immutable/BitSet;
    .locals 1

    .line 76
    iget-object v0, p0, Lscala/collection/immutable/BitSet$$anon$1;->b:Lscala/collection/mutable/BitSet;

    invoke-virtual {v0}, Lscala/collection/mutable/BitSet;->toImmutable()Lscala/collection/immutable/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public sizeHint(I)V
    .locals 0

    .line 72
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

    .line 72
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

    .line 72
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

    .line 72
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V

    return-void
.end method
