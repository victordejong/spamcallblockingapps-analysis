.class public final Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$$anon$1;
.super Ljava/lang/Object;
.source "UnrolledParArrayCombiner.scala"

# interfaces
.implements Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$;->apply()Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/mutable/UnrolledParArrayCombiner<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private volatile transient _combinerTaskSupport:Lscala/collection/parallel/TaskSupport;

.field private final buff:Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/mutable/DoublingUnrolledBuffer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    invoke-static {p0}, Lscala/collection/parallel/Combiner$class;->$init$(Lscala/collection/parallel/Combiner;)V

    invoke-static {p0}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$class;->$init$(Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 111
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$$anon$1;->$plus$eq(Ljava/lang/Object;)Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Lscala/collection/Seq<",
            "TT;>;)",
            "Lscala/collection/generic/Growable<",
            "TT;>;"
        }
    .end annotation

    .line 111
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/Growable$class;->$plus$eq(Lscala/collection/generic/Growable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 111
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$$anon$1;->$plus$eq(Ljava/lang/Object;)Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;)Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lscala/collection/parallel/mutable/UnrolledParArrayCombiner<",
            "TT;>;"
        }
    .end annotation

    .line 111
    invoke-static {p0, p1}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$class;->$plus$eq(Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;Ljava/lang/Object;)Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TT;>;)",
            "Lscala/collection/generic/Growable<",
            "TT;>;"
        }
    .end annotation

    .line 111
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public _combinerTaskSupport()Lscala/collection/parallel/TaskSupport;
    .locals 1

    .line 111
    iget-object v0, p0, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$$anon$1;->_combinerTaskSupport:Lscala/collection/parallel/TaskSupport;

    return-object v0
.end method

.method public _combinerTaskSupport_$eq(Lscala/collection/parallel/TaskSupport;)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 111
    iput-object p1, p0, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$$anon$1;->_combinerTaskSupport:Lscala/collection/parallel/TaskSupport;

    return-void
.end method

.method public buff()Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/mutable/DoublingUnrolledBuffer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$$anon$1;->buff:Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;

    return-object v0
.end method

.method public canBeShared()Z
    .locals 1

    .line 111
    invoke-static {p0}, Lscala/collection/parallel/Combiner$class;->canBeShared(Lscala/collection/parallel/Combiner;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 0

    .line 111
    invoke-static {p0}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$class;->clear(Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;)V

    return-void
.end method

.method public combine(Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:TT;NewTo:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/Combiner<",
            "TN;TNewTo;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TN;TNewTo;>;"
        }
    .end annotation

    .line 111
    invoke-static {p0, p1}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$class;->combine(Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public combinerTaskSupport()Lscala/collection/parallel/TaskSupport;
    .locals 1

    .line 111
    invoke-static {p0}, Lscala/collection/parallel/Combiner$class;->combinerTaskSupport(Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    return-object v0
.end method

.method public combinerTaskSupport_$eq(Lscala/collection/parallel/TaskSupport;)V
    .locals 0

    .line 111
    invoke-static {p0, p1}, Lscala/collection/parallel/Combiner$class;->combinerTaskSupport_$eq(Lscala/collection/parallel/Combiner;Lscala/collection/parallel/TaskSupport;)V

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
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>;TNewTo;>;)",
            "Lscala/collection/mutable/Builder<",
            "TT;TNewTo;>;"
        }
    .end annotation

    .line 111
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$$anon$1;->result()Lscala/collection/parallel/mutable/ParArray;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/parallel/mutable/ParArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>;"
        }
    .end annotation

    .line 111
    invoke-static {p0}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$class;->result(Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;)Lscala/collection/parallel/mutable/ParArray;

    move-result-object v0

    return-object v0
.end method

.method public resultWithTaskSupport()Ljava/lang/Object;
    .locals 1

    .line 111
    invoke-static {p0}, Lscala/collection/parallel/Combiner$class;->resultWithTaskSupport(Lscala/collection/parallel/Combiner;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public scala$collection$parallel$mutable$UnrolledParArrayCombiner$_setter_$buff_$eq(Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$$anon$1;->buff:Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;

    return-void
.end method

.method public size()I
    .locals 1

    .line 111
    invoke-static {p0}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$class;->size(Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;)I

    move-result v0

    return v0
.end method

.method public sizeHint(I)V
    .locals 0

    .line 111
    invoke-static {p0, p1}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner$class;->sizeHint(Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;I)V

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

    .line 111
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

    .line 111
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

    .line 111
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V

    return-void
.end method
