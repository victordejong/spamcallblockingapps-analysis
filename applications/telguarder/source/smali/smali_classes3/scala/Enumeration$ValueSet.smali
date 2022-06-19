.class public Lscala/Enumeration$ValueSet;
.super Lscala/collection/AbstractSet;
.source "Enumeration.scala"

# interfaces
.implements Lscala/collection/immutable/SortedSet;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ValueSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractSet<",
        "Lscala/Enumeration$Value;",
        ">;",
        "Lscala/collection/immutable/SortedSet<",
        "Lscala/Enumeration$Value;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/Enumeration;

.field private nnIds:Lscala/collection/immutable/BitSet;


# direct methods
.method public constructor <init>(Lscala/Enumeration;Lscala/collection/immutable/BitSet;)V
    .locals 0

    .line 245
    iput-object p2, p0, Lscala/Enumeration$ValueSet;->nnIds:Lscala/collection/immutable/BitSet;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/Enumeration$ValueSet;->$outer:Lscala/Enumeration;

    .line 246
    invoke-direct {p0}, Lscala/collection/AbstractSet;-><init>()V

    invoke-static {p0}, Lscala/collection/immutable/Traversable$class;->$init$(Lscala/collection/immutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/immutable/Iterable$class;->$init$(Lscala/collection/immutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/immutable/Set$class;->$init$(Lscala/collection/immutable/Set;)V

    invoke-static {p0}, Lscala/collection/generic/Sorted$class;->$init$(Lscala/collection/generic/Sorted;)V

    invoke-static {p0}, Lscala/collection/SortedSetLike$class;->$init$(Lscala/collection/SortedSetLike;)V

    invoke-static {p0}, Lscala/collection/SortedSet$class;->$init$(Lscala/collection/SortedSet;)V

    invoke-static {p0}, Lscala/collection/immutable/SortedSet$class;->$init$(Lscala/collection/immutable/SortedSet;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 245
    check-cast p1, Lscala/Enumeration$Value;

    invoke-virtual {p0, p1}, Lscala/Enumeration$ValueSet;->$minus(Lscala/Enumeration$Value;)Lscala/Enumeration$ValueSet;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Lscala/Enumeration$Value;)Lscala/Enumeration$ValueSet;
    .locals 4

    .line 258
    new-instance v0, Lscala/Enumeration$ValueSet;

    invoke-virtual {p0}, Lscala/Enumeration$ValueSet;->scala$Enumeration$ValueSet$$$outer()Lscala/Enumeration;

    move-result-object v1

    iget-object v2, p0, Lscala/Enumeration$ValueSet;->nnIds:Lscala/collection/immutable/BitSet;

    invoke-virtual {p1}, Lscala/Enumeration$Value;->id()I

    move-result p1

    invoke-virtual {p0}, Lscala/Enumeration$ValueSet;->scala$Enumeration$ValueSet$$$outer()Lscala/Enumeration;

    move-result-object v3

    invoke-virtual {v3}, Lscala/Enumeration;->scala$Enumeration$$bottomId()I

    move-result v3

    sub-int/2addr p1, v3

    invoke-virtual {v2, p1}, Lscala/collection/immutable/BitSet;->$minus(I)Lscala/collection/immutable/BitSet;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lscala/Enumeration$ValueSet;-><init>(Lscala/Enumeration;Lscala/collection/immutable/BitSet;)V

    return-object v0
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 0

    .line 245
    check-cast p1, Lscala/Enumeration$Value;

    invoke-virtual {p0, p1}, Lscala/Enumeration$ValueSet;->$minus(Lscala/Enumeration$Value;)Lscala/Enumeration$ValueSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 245
    check-cast p1, Lscala/Enumeration$Value;

    invoke-virtual {p0, p1}, Lscala/Enumeration$ValueSet;->$minus(Lscala/Enumeration$Value;)Lscala/Enumeration$ValueSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 245
    check-cast p1, Lscala/Enumeration$Value;

    invoke-virtual {p0, p1}, Lscala/Enumeration$ValueSet;->$plus(Lscala/Enumeration$Value;)Lscala/Enumeration$ValueSet;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Lscala/Enumeration$Value;)Lscala/Enumeration$ValueSet;
    .locals 4

    .line 257
    new-instance v0, Lscala/Enumeration$ValueSet;

    invoke-virtual {p0}, Lscala/Enumeration$ValueSet;->scala$Enumeration$ValueSet$$$outer()Lscala/Enumeration;

    move-result-object v1

    iget-object v2, p0, Lscala/Enumeration$ValueSet;->nnIds:Lscala/collection/immutable/BitSet;

    invoke-virtual {p1}, Lscala/Enumeration$Value;->id()I

    move-result p1

    invoke-virtual {p0}, Lscala/Enumeration$ValueSet;->scala$Enumeration$ValueSet$$$outer()Lscala/Enumeration;

    move-result-object v3

    invoke-virtual {v3}, Lscala/Enumeration;->scala$Enumeration$$bottomId()I

    move-result v3

    sub-int/2addr p1, v3

    invoke-virtual {v2, p1}, Lscala/collection/immutable/BitSet;->$plus(I)Lscala/collection/immutable/BitSet;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lscala/Enumeration$ValueSet;-><init>(Lscala/Enumeration;Lscala/collection/immutable/BitSet;)V

    return-object v0
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 0

    .line 245
    check-cast p1, Lscala/Enumeration$Value;

    invoke-virtual {p0, p1}, Lscala/Enumeration$ValueSet;->$plus(Lscala/Enumeration$Value;)Lscala/Enumeration$ValueSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 245
    invoke-virtual {p0, p1}, Lscala/Enumeration$ValueSet;->apply(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/immutable/Set;",
            ">;"
        }
    .end annotation

    .line 245
    invoke-static {p0}, Lscala/collection/immutable/Set$class;->companion(Lscala/collection/immutable/Set;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 245
    invoke-static {p0, p1, p2}, Lscala/collection/generic/Sorted$class;->compare(Lscala/collection/generic/Sorted;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0

    .line 245
    check-cast p1, Lscala/Enumeration$Value;

    invoke-virtual {p0, p1}, Lscala/Enumeration$ValueSet;->contains(Lscala/Enumeration$Value;)Z

    move-result p1

    return p1
.end method

.method public contains(Lscala/Enumeration$Value;)Z
    .locals 2

    .line 256
    iget-object v0, p0, Lscala/Enumeration$ValueSet;->nnIds:Lscala/collection/immutable/BitSet;

    invoke-virtual {p1}, Lscala/Enumeration$Value;->id()I

    move-result p1

    invoke-virtual {p0}, Lscala/Enumeration$ValueSet;->scala$Enumeration$ValueSet$$$outer()Lscala/Enumeration;

    move-result-object v1

    invoke-virtual {v1}, Lscala/Enumeration;->scala$Enumeration$$bottomId()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lscala/collection/immutable/BitSet;->contains(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic diff(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 245
    invoke-virtual {p0, p1}, Lscala/Enumeration$ValueSet;->diff(Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public empty()Lscala/Enumeration$ValueSet;
    .locals 1

    .line 255
    invoke-virtual {p0}, Lscala/Enumeration$ValueSet;->scala$Enumeration$ValueSet$$$outer()Lscala/Enumeration;

    move-result-object v0

    invoke-virtual {v0}, Lscala/Enumeration;->ValueSet()Lscala/Enumeration$ValueSet$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/Enumeration$ValueSet$;->empty()Lscala/Enumeration$ValueSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/GenSet;
    .locals 1

    .line 245
    invoke-virtual {p0}, Lscala/Enumeration$ValueSet;->empty()Lscala/Enumeration$ValueSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Set;
    .locals 1

    .line 245
    invoke-virtual {p0}, Lscala/Enumeration$ValueSet;->empty()Lscala/Enumeration$ValueSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/SortedSet;
    .locals 1

    .line 245
    invoke-virtual {p0}, Lscala/Enumeration$ValueSet;->empty()Lscala/Enumeration$ValueSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/immutable/SortedSet;
    .locals 1

    .line 245
    invoke-virtual {p0}, Lscala/Enumeration$ValueSet;->empty()Lscala/Enumeration$ValueSet;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1

    .line 245
    invoke-static {p0}, Lscala/collection/SortedSetLike$class;->firstKey(Lscala/collection/SortedSetLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public from(Ljava/lang/Object;)Lscala/collection/SortedSet;
    .locals 0

    .line 245
    invoke-static {p0, p1}, Lscala/collection/SortedSetLike$class;->from(Lscala/collection/SortedSetLike;Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic from(Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 245
    invoke-virtual {p0, p1}, Lscala/Enumeration$ValueSet;->from(Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 245
    invoke-virtual {p0, p1}, Lscala/Enumeration$ValueSet;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public hasAll(Lscala/collection/Iterator;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "Lscala/Enumeration$Value;",
            ">;)Z"
        }
    .end annotation

    .line 245
    invoke-static {p0, p1}, Lscala/collection/generic/Sorted$class;->hasAll(Lscala/collection/generic/Sorted;Lscala/collection/Iterator;)Z

    move-result p1

    return p1
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Enumeration$Value;",
            ">;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lscala/Enumeration$ValueSet;->nnIds:Lscala/collection/immutable/BitSet;

    invoke-virtual {v0}, Lscala/collection/immutable/BitSet;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    new-instance v1, Lscala/Enumeration$ValueSet$$anonfun$iterator$1;

    invoke-direct {v1, p0}, Lscala/Enumeration$ValueSet$$anonfun$iterator$1;-><init>(Lscala/Enumeration$ValueSet;)V

    invoke-interface {v0, v1}, Lscala/collection/Iterator;->map(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public iteratorFrom(Ljava/lang/Object;)Lscala/collection/Iterator;
    .locals 0

    .line 245
    invoke-static {p0, p1}, Lscala/collection/SortedSetLike$class;->iteratorFrom(Lscala/collection/SortedSetLike;Ljava/lang/Object;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public keySet()Lscala/collection/SortedSet;
    .locals 1

    .line 245
    invoke-static {p0}, Lscala/collection/SortedSetLike$class;->keySet(Lscala/collection/SortedSetLike;)Lscala/collection/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keysIteratorFrom(Ljava/lang/Object;)Lscala/collection/Iterator;
    .locals 0

    .line 245
    check-cast p1, Lscala/Enumeration$Value;

    invoke-virtual {p0, p1}, Lscala/Enumeration$ValueSet;->keysIteratorFrom(Lscala/Enumeration$Value;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public keysIteratorFrom(Lscala/Enumeration$Value;)Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Enumeration$Value;",
            ")",
            "Lscala/collection/Iterator<",
            "Lscala/Enumeration$Value;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lscala/Enumeration$ValueSet;->nnIds:Lscala/collection/immutable/BitSet;

    invoke-virtual {p1}, Lscala/Enumeration$Value;->id()I

    move-result p1

    invoke-virtual {v0, p1}, Lscala/collection/immutable/BitSet;->keysIteratorFrom(I)Lscala/collection/AbstractIterator;

    move-result-object p1

    new-instance v0, Lscala/Enumeration$ValueSet$$anonfun$keysIteratorFrom$1;

    invoke-direct {v0, p0}, Lscala/Enumeration$ValueSet$$anonfun$keysIteratorFrom$1;-><init>(Lscala/Enumeration$ValueSet;)V

    invoke-virtual {p1, v0}, Lscala/collection/AbstractIterator;->map(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1

    .line 245
    invoke-static {p0}, Lscala/collection/SortedSetLike$class;->lastKey(Lscala/collection/SortedSetLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public ordering()Lscala/math/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/math/Ordering<",
            "Lscala/Enumeration$Value;",
            ">;"
        }
    .end annotation

    .line 251
    invoke-virtual {p0}, Lscala/Enumeration$ValueSet;->scala$Enumeration$ValueSet$$$outer()Lscala/Enumeration;

    move-result-object v0

    invoke-virtual {v0}, Lscala/Enumeration;->ValueOrdering()Lscala/Enumeration$ValueOrdering$;

    move-result-object v0

    return-object v0
.end method

.method public parCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "Lscala/Enumeration$Value;",
            "Lscala/collection/parallel/immutable/ParSet<",
            "Lscala/Enumeration$Value;",
            ">;>;"
        }
    .end annotation

    .line 245
    invoke-static {p0}, Lscala/collection/immutable/Set$class;->parCombiner(Lscala/collection/immutable/Set;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/SortedSet;
    .locals 0

    .line 245
    invoke-static {p0, p1, p2}, Lscala/collection/SortedSetLike$class;->range(Lscala/collection/SortedSetLike;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic range(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 245
    invoke-virtual {p0, p1, p2}, Lscala/Enumeration$ValueSet;->range(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public rangeImpl(Lscala/Option;Lscala/Option;)Lscala/Enumeration$ValueSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "Lscala/Enumeration$Value;",
            ">;",
            "Lscala/Option<",
            "Lscala/Enumeration$Value;",
            ">;)",
            "Lscala/Enumeration$ValueSet;"
        }
    .end annotation

    .line 253
    new-instance v0, Lscala/Enumeration$ValueSet;

    invoke-virtual {p0}, Lscala/Enumeration$ValueSet;->scala$Enumeration$ValueSet$$$outer()Lscala/Enumeration;

    move-result-object v1

    iget-object v2, p0, Lscala/Enumeration$ValueSet;->nnIds:Lscala/collection/immutable/BitSet;

    invoke-virtual {p1}, Lscala/Option;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v3, Lscala/Some;

    invoke-virtual {p1}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/Enumeration$Value;

    invoke-virtual {p1}, Lscala/Enumeration$Value;->id()I

    move-result p1

    invoke-virtual {p0}, Lscala/Enumeration$ValueSet;->scala$Enumeration$ValueSet$$$outer()Lscala/Enumeration;

    move-result-object v4

    invoke-virtual {v4}, Lscala/Enumeration;->scala$Enumeration$$bottomId()I

    move-result v4

    sub-int/2addr p1, v4

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v3, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v3

    :goto_0
    invoke-virtual {p2}, Lscala/Option;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object p2, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_1

    :cond_1
    new-instance v3, Lscala/Some;

    invoke-virtual {p2}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/Enumeration$Value;

    invoke-virtual {p2}, Lscala/Enumeration$Value;->id()I

    move-result p2

    invoke-virtual {p0}, Lscala/Enumeration$ValueSet;->scala$Enumeration$ValueSet$$$outer()Lscala/Enumeration;

    move-result-object v4

    invoke-virtual {v4}, Lscala/Enumeration;->scala$Enumeration$$bottomId()I

    move-result v4

    sub-int/2addr p2, v4

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v3, p2}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p2, v3

    :goto_1
    invoke-virtual {v2, p1, p2}, Lscala/collection/immutable/BitSet;->rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/BitSetLike;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/BitSet;

    invoke-direct {v0, v1, p1}, Lscala/Enumeration$ValueSet;-><init>(Lscala/Enumeration;Lscala/collection/immutable/BitSet;)V

    return-object v0
.end method

.method public bridge synthetic rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/SortedSet;
    .locals 0

    .line 245
    invoke-virtual {p0, p1, p2}, Lscala/Enumeration$ValueSet;->rangeImpl(Lscala/Option;Lscala/Option;)Lscala/Enumeration$ValueSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic rangeImpl(Lscala/Option;Lscala/Option;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 245
    invoke-virtual {p0, p1, p2}, Lscala/Enumeration$ValueSet;->rangeImpl(Lscala/Option;Lscala/Option;)Lscala/Enumeration$ValueSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Sorted;
    .locals 1

    .line 245
    invoke-virtual {p0}, Lscala/Enumeration$ValueSet;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Sorted;

    return-object v0
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 245
    invoke-virtual {p0}, Lscala/Enumeration$ValueSet;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public synthetic scala$Enumeration$ValueSet$$$outer()Lscala/Enumeration;
    .locals 1

    .line 245
    iget-object v0, p0, Lscala/Enumeration$ValueSet;->$outer:Lscala/Enumeration;

    return-object v0
.end method

.method public synthetic scala$collection$SortedSetLike$$super$subsetOf(Lscala/collection/GenSet;)Z
    .locals 0

    .line 245
    invoke-static {p0, p1}, Lscala/collection/GenSetLike$class;->subsetOf(Lscala/collection/GenSetLike;Lscala/collection/GenSet;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 245
    invoke-virtual {p0}, Lscala/Enumeration$ValueSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Set;
    .locals 1

    .line 245
    invoke-virtual {p0}, Lscala/Enumeration$ValueSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 245
    invoke-virtual {p0}, Lscala/Enumeration$ValueSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 245
    invoke-virtual {p0}, Lscala/Enumeration$ValueSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Iterable;
    .locals 1

    .line 245
    invoke-virtual {p0}, Lscala/Enumeration$ValueSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/immutable/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Set<",
            "Lscala/Enumeration$Value;",
            ">;"
        }
    .end annotation

    .line 245
    invoke-static {p0}, Lscala/collection/immutable/Set$class;->seq(Lscala/collection/immutable/Set;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Traversable;
    .locals 1

    .line 245
    invoke-virtual {p0}, Lscala/Enumeration$ValueSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 3

    sget-object v0, Lscala/Predef$any2stringadd$;->MODULE$:Lscala/Predef$any2stringadd$;

    .line 261
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lscala/Enumeration$ValueSet;->scala$Enumeration$ValueSet$$$outer()Lscala/Enumeration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/Predef$;->any2stringadd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, ".ValueSet"

    invoke-virtual {v0, v1, v2}, Lscala/Predef$any2stringadd$;->$plus$extension(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public subsetOf(Lscala/collection/GenSet;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenSet<",
            "Lscala/Enumeration$Value;",
            ">;)Z"
        }
    .end annotation

    .line 245
    invoke-static {p0, p1}, Lscala/collection/SortedSetLike$class;->subsetOf(Lscala/collection/SortedSetLike;Lscala/collection/GenSet;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 245
    invoke-virtual {p0}, Lscala/Enumeration$ValueSet;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public to(Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 245
    invoke-static {p0, p1}, Lscala/collection/generic/Sorted$class;->to(Lscala/collection/generic/Sorted;Ljava/lang/Object;)Lscala/collection/generic/Sorted;

    move-result-object p1

    return-object p1
.end method

.method public toBitMask()[J
    .locals 1

    .line 264
    iget-object v0, p0, Lscala/Enumeration$ValueSet;->nnIds:Lscala/collection/immutable/BitSet;

    invoke-virtual {v0}, Lscala/collection/immutable/BitSet;->toBitMask()[J

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 245
    invoke-virtual {p0, p1}, Lscala/Enumeration$ValueSet;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 245
    invoke-virtual {p0}, Lscala/Enumeration$ValueSet;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 245
    invoke-virtual {p0}, Lscala/Enumeration$ValueSet;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSet()Lscala/collection/GenSet;
    .locals 1

    .line 245
    invoke-virtual {p0}, Lscala/Enumeration$ValueSet;->toSet()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public toSet()Lscala/collection/immutable/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/Set<",
            "TB;>;"
        }
    .end annotation

    .line 245
    invoke-static {p0}, Lscala/collection/immutable/Set$class;->toSet(Lscala/collection/immutable/Set;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 245
    invoke-virtual {p0}, Lscala/Enumeration$ValueSet;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic union(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 245
    invoke-virtual {p0, p1}, Lscala/Enumeration$ValueSet;->union(Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public until(Ljava/lang/Object;)Lscala/collection/SortedSet;
    .locals 0

    .line 245
    invoke-static {p0, p1}, Lscala/collection/SortedSetLike$class;->until(Lscala/collection/SortedSetLike;Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic until(Ljava/lang/Object;)Lscala/collection/generic/Sorted;
    .locals 0

    .line 245
    invoke-virtual {p0, p1}, Lscala/Enumeration$ValueSet;->until(Ljava/lang/Object;)Lscala/collection/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 245
    invoke-virtual {p0}, Lscala/Enumeration$ValueSet;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 245
    invoke-virtual {p0, p1, p2}, Lscala/Enumeration$ValueSet;->view(II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method
