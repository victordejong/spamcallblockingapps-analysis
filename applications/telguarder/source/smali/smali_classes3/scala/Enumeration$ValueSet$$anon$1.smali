.class public final Lscala/Enumeration$ValueSet$$anon$1;
.super Ljava/lang/Object;
.source "Enumeration.scala"

# interfaces
.implements Lscala/collection/mutable/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Enumeration$ValueSet$;->newBuilder()Lscala/collection/mutable/Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/Builder<",
        "Lscala/Enumeration$Value;",
        "Lscala/Enumeration$ValueSet;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/Enumeration$ValueSet$;

.field private final b:Lscala/collection/mutable/BitSet;


# direct methods
.method public constructor <init>(Lscala/Enumeration$ValueSet$;)V
    .locals 0

    .line 279
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/Enumeration$ValueSet$$anon$1;->$outer:Lscala/Enumeration$ValueSet$;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    .line 280
    new-instance p1, Lscala/collection/mutable/BitSet;

    invoke-direct {p1}, Lscala/collection/mutable/BitSet;-><init>()V

    iput-object p1, p0, Lscala/Enumeration$ValueSet$$anon$1;->b:Lscala/collection/mutable/BitSet;

    return-void
.end method


# virtual methods
.method public $plus$eq(Lscala/Enumeration$Value;)Lscala/Enumeration$ValueSet$$anon$1;
    .locals 2

    .line 281
    iget-object v0, p0, Lscala/Enumeration$ValueSet$$anon$1;->b:Lscala/collection/mutable/BitSet;

    invoke-virtual {p1}, Lscala/Enumeration$Value;->id()I

    move-result p1

    iget-object v1, p0, Lscala/Enumeration$ValueSet$$anon$1;->$outer:Lscala/Enumeration$ValueSet$;

    invoke-virtual {v1}, Lscala/Enumeration$ValueSet$;->scala$Enumeration$ValueSet$$$outer()Lscala/Enumeration;

    move-result-object v1

    invoke-virtual {v1}, Lscala/Enumeration;->scala$Enumeration$$bottomId()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lscala/collection/mutable/BitSet;->$plus$eq(I)Lscala/collection/mutable/BitSet;

    return-object p0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 279
    check-cast p1, Lscala/Enumeration$Value;

    invoke-virtual {p0, p1}, Lscala/Enumeration$ValueSet$$anon$1;->$plus$eq(Lscala/Enumeration$Value;)Lscala/Enumeration$ValueSet$$anon$1;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;
    .locals 0

    .line 279
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/Growable$class;->$plus$eq(Lscala/collection/generic/Growable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 279
    check-cast p1, Lscala/Enumeration$Value;

    invoke-virtual {p0, p1}, Lscala/Enumeration$ValueSet$$anon$1;->$plus$eq(Lscala/Enumeration$Value;)Lscala/Enumeration$ValueSet$$anon$1;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "Lscala/Enumeration$Value;",
            ">;)",
            "Lscala/collection/generic/Growable<",
            "Lscala/Enumeration$Value;",
            ">;"
        }
    .end annotation

    .line 279
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 282
    iget-object v0, p0, Lscala/Enumeration$ValueSet$$anon$1;->b:Lscala/collection/mutable/BitSet;

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
            "Lscala/Enumeration$ValueSet;",
            "TNewTo;>;)",
            "Lscala/collection/mutable/Builder<",
            "Lscala/Enumeration$Value;",
            "TNewTo;>;"
        }
    .end annotation

    .line 279
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 279
    invoke-virtual {p0}, Lscala/Enumeration$ValueSet$$anon$1;->result()Lscala/Enumeration$ValueSet;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/Enumeration$ValueSet;
    .locals 3

    .line 283
    new-instance v0, Lscala/Enumeration$ValueSet;

    iget-object v1, p0, Lscala/Enumeration$ValueSet$$anon$1;->$outer:Lscala/Enumeration$ValueSet$;

    invoke-virtual {v1}, Lscala/Enumeration$ValueSet$;->scala$Enumeration$ValueSet$$$outer()Lscala/Enumeration;

    move-result-object v1

    iget-object v2, p0, Lscala/Enumeration$ValueSet$$anon$1;->b:Lscala/collection/mutable/BitSet;

    invoke-virtual {v2}, Lscala/collection/mutable/BitSet;->toImmutable()Lscala/collection/immutable/BitSet;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lscala/Enumeration$ValueSet;-><init>(Lscala/Enumeration;Lscala/collection/immutable/BitSet;)V

    return-object v0
.end method

.method public sizeHint(I)V
    .locals 0

    .line 279
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

    .line 279
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

    .line 279
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

    .line 279
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V

    return-void
.end method
