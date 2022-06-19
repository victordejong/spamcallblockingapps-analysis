.class public Lscala/collection/parallel/immutable/LazyParVectorCombiner;
.super Ljava/lang/Object;
.source "ParVector.scala"

# interfaces
.implements Lscala/collection/parallel/Combiner;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/Combiner<",
        "TT;",
        "Lscala/collection/parallel/immutable/ParVector<",
        "TT;>;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u00154Q!\u0001\u0002\u0001\u0005)\u0011Q\u0003T1{sB\u000b\'OV3di>\u00148i\\7cS:,\'O\u0003\u0002\u0004\t\u0005I\u0011.\\7vi\u0006\u0014G.\u001a\u0006\u0003\u000b\u0019\t\u0001\u0002]1sC2dW\r\u001c\u0006\u0003\u000f!\t!bY8mY\u0016\u001cG/[8o\u0015\u0005I\u0011!B:dC2\u000cWCA\u0006\u0017\'\r\u0001A\u0002\u0005\t\u0003\u001b9i\u0011\u0001C\u0005\u0003\u001f!\u0011a!\u00118z%\u00164\u0007\u0003B\t\u0013)\u0001j\u0011\u0001B\u0005\u0003\'\u0011\u0011\u0001bQ8nE&tWM\u001d\t\u0003+Ya\u0001\u0001B\u0003\u0018\u0001\t\u0007\u0011DA\u0001U\u0007\u0001\t\"AG\u000f\u0011\u00055Y\u0012B\u0001\u000f\t\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"!\u0004\u0010\n\u0005}A!aA!osB\u0019\u0011E\t\u000b\u000e\u0003\tI!a\t\u0002\u0003\u0013A\u000b\'OV3di>\u0014\u0008\"B\u0013\u0001\t\u00031\u0013A\u0002\u001fj]&$h\u0008F\u0001(!\r\t\u0003\u0001\u0006\u0005\u0008S\u0001\u0001\r\u0011\"\u0001+\u0003\t\u0019(0F\u0001,!\tiA&\u0003\u0002.\u0011\t\u0019\u0011J\u001c;\t\u000f=\u0002\u0001\u0019!C\u0001a\u000511O_0%KF$\"!\r\u001b\u0011\u00055\u0011\u0014BA\u001a\t\u0005\u0011)f.\u001b;\t\u000fUr\u0013\u0011!a\u0001W\u0005\u0019\u0001\u0010J\u0019\t\r]\u0002\u0001\u0015)\u0003,\u0003\r\u0019(\u0010\t\u0005\u0008s\u0001\u0011\r\u0011\"\u0001;\u0003\u001d1Xm\u0019;peN,\u0012a\u000f\t\u0004y}\nU\"A\u001f\u000b\u0005y2\u0011aB7vi\u0006\u0014G.Z\u0005\u0003\u0001v\u00121\"\u0011:sCf\u0014UO\u001a4feB\u0019!\t\u0012\u000b\u000e\u0003\rS!a\u0001\u0004\n\u0005\u0015\u001b%!\u0004,fGR|\'OQ;jY\u0012,\'\u000f\u0003\u0004H\u0001\u0001\u0006IaO\u0001\tm\u0016\u001cGo\u001c:tA!)\u0011\n\u0001C\u0001U\u0005!1/\u001b>f\u0011\u0015Y\u0005\u0001\"\u0001M\u0003!!\u0003\u000f\\;tI\u0015\u000cHCA\'O\u001b\u0005\u0001\u0001\"B(K\u0001\u0004!\u0012\u0001B3mK6DQ!\u0015\u0001\u0005\u0002I\u000bQa\u00197fCJ$\u0012!\r\u0005\u0006)\u0002!\t!V\u0001\u0007e\u0016\u001cX\u000f\u001c;\u0015\u0003\u0001BQa\u0016\u0001\u0005\u0002a\u000bqaY8nE&tW-F\u0002Z9\u0002$\"AW2\u0011\tE\u00112l\u0018\t\u0003+q#Q!\u0018,C\u0002y\u0013\u0011!V\t\u00035Q\u0001\"!\u00061\u0005\u000b\u00054&\u0019\u00012\u0003\u000b9+w\u000fV8\u0012\u0005\u0001j\u0002\"\u00023W\u0001\u0004Q\u0016!B8uQ\u0016\u0014\u0008"
.end annotation


# instance fields
.field private volatile transient _combinerTaskSupport:Lscala/collection/parallel/TaskSupport;

.field private sz:I

.field private final vectors:Lscala/collection/mutable/ArrayBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/ArrayBuffer<",
            "Lscala/collection/immutable/VectorBuilder<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    invoke-static {p0}, Lscala/collection/parallel/Combiner$class;->$init$(Lscala/collection/parallel/Combiner;)V

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lscala/collection/parallel/immutable/LazyParVectorCombiner;->sz:I

    .line 98
    new-instance v0, Lscala/collection/mutable/ArrayBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayBuffer;-><init>()V

    new-instance v1, Lscala/collection/immutable/VectorBuilder;

    invoke-direct {v1}, Lscala/collection/immutable/VectorBuilder;-><init>()V

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    iput-object v0, p0, Lscala/collection/parallel/immutable/LazyParVectorCombiner;->vectors:Lscala/collection/mutable/ArrayBuffer;

    return-void
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/LazyParVectorCombiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/parallel/immutable/LazyParVectorCombiner;

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

    .line 95
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/Growable$class;->$plus$eq(Lscala/collection/generic/Growable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/LazyParVectorCombiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/parallel/immutable/LazyParVectorCombiner;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;)Lscala/collection/parallel/immutable/LazyParVectorCombiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lscala/collection/parallel/immutable/LazyParVectorCombiner<",
            "TT;>;"
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/LazyParVectorCombiner;->vectors()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/ArrayBuffer;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/VectorBuilder;

    invoke-virtual {v0, p1}, Lscala/collection/immutable/VectorBuilder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/immutable/VectorBuilder;

    .line 104
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/LazyParVectorCombiner;->sz()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/LazyParVectorCombiner;->sz_$eq(I)V

    return-object p0
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

    .line 95
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public _combinerTaskSupport()Lscala/collection/parallel/TaskSupport;
    .locals 1

    .line 95
    iget-object v0, p0, Lscala/collection/parallel/immutable/LazyParVectorCombiner;->_combinerTaskSupport:Lscala/collection/parallel/TaskSupport;

    return-object v0
.end method

.method public _combinerTaskSupport_$eq(Lscala/collection/parallel/TaskSupport;)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 95
    iput-object p1, p0, Lscala/collection/parallel/immutable/LazyParVectorCombiner;->_combinerTaskSupport:Lscala/collection/parallel/TaskSupport;

    return-void
.end method

.method public canBeShared()Z
    .locals 1

    .line 95
    invoke-static {p0}, Lscala/collection/parallel/Combiner$class;->canBeShared(Lscala/collection/parallel/Combiner;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 2

    .line 109
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/LazyParVectorCombiner;->vectors()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/ArrayBuffer;->clear()V

    .line 110
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/LazyParVectorCombiner;->vectors()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/VectorBuilder;

    invoke-direct {v1}, Lscala/collection/immutable/VectorBuilder;-><init>()V

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, v0}, Lscala/collection/parallel/immutable/LazyParVectorCombiner;->sz_$eq(I)V

    return-void
.end method

.method public combine(Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:TT;NewTo:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/Combiner<",
            "TU;TNewTo;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TU;TNewTo;>;"
        }
    .end annotation

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    check-cast p1, Lscala/collection/parallel/immutable/LazyParVectorCombiner;

    .line 124
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/LazyParVectorCombiner;->sz()I

    move-result v0

    invoke-virtual {p1}, Lscala/collection/parallel/immutable/LazyParVectorCombiner;->sz()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lscala/collection/parallel/immutable/LazyParVectorCombiner;->sz_$eq(I)V

    .line 125
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/LazyParVectorCombiner;->vectors()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lscala/collection/parallel/immutable/LazyParVectorCombiner;->vectors()Lscala/collection/mutable/ArrayBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/mutable/ArrayBuffer;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuffer;

    :goto_0
    return-object p0
.end method

.method public combinerTaskSupport()Lscala/collection/parallel/TaskSupport;
    .locals 1

    .line 95
    invoke-static {p0}, Lscala/collection/parallel/Combiner$class;->combinerTaskSupport(Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    return-object v0
.end method

.method public combinerTaskSupport_$eq(Lscala/collection/parallel/TaskSupport;)V
    .locals 0

    .line 95
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
            "Lscala/collection/parallel/immutable/ParVector<",
            "TT;>;TNewTo;>;)",
            "Lscala/collection/mutable/Builder<",
            "TT;TNewTo;>;"
        }
    .end annotation

    .line 95
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/LazyParVectorCombiner;->result()Lscala/collection/parallel/immutable/ParVector;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/parallel/immutable/ParVector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/immutable/ParVector<",
            "TT;>;"
        }
    .end annotation

    .line 115
    new-instance v0, Lscala/collection/immutable/VectorBuilder;

    invoke-direct {v0}, Lscala/collection/immutable/VectorBuilder;-><init>()V

    .line 116
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/LazyParVectorCombiner;->vectors()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v1

    new-instance v2, Lscala/collection/parallel/immutable/LazyParVectorCombiner$$anonfun$result$1;

    invoke-direct {v2, p0, v0}, Lscala/collection/parallel/immutable/LazyParVectorCombiner$$anonfun$result$1;-><init>(Lscala/collection/parallel/immutable/LazyParVectorCombiner;Lscala/collection/immutable/VectorBuilder;)V

    invoke-virtual {v1, v2}, Lscala/collection/mutable/ArrayBuffer;->foreach(Lscala/Function1;)V

    .line 119
    new-instance v1, Lscala/collection/parallel/immutable/ParVector;

    invoke-virtual {v0}, Lscala/collection/immutable/VectorBuilder;->result()Lscala/collection/immutable/Vector;

    move-result-object v0

    invoke-direct {v1, v0}, Lscala/collection/parallel/immutable/ParVector;-><init>(Lscala/collection/immutable/Vector;)V

    return-object v1
.end method

.method public resultWithTaskSupport()Ljava/lang/Object;
    .locals 1

    .line 95
    invoke-static {p0}, Lscala/collection/parallel/Combiner$class;->resultWithTaskSupport(Lscala/collection/parallel/Combiner;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 100
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/LazyParVectorCombiner;->sz()I

    move-result v0

    return v0
.end method

.method public sizeHint(I)V
    .locals 0

    .line 95
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

    .line 95
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

    .line 95
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

    .line 95
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V

    return-void
.end method

.method public sz()I
    .locals 1

    .line 97
    iget v0, p0, Lscala/collection/parallel/immutable/LazyParVectorCombiner;->sz:I

    return v0
.end method

.method public sz_$eq(I)V
    .locals 0

    .line 97
    iput p1, p0, Lscala/collection/parallel/immutable/LazyParVectorCombiner;->sz:I

    return-void
.end method

.method public vectors()Lscala/collection/mutable/ArrayBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/ArrayBuffer<",
            "Lscala/collection/immutable/VectorBuilder<",
            "TT;>;>;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lscala/collection/parallel/immutable/LazyParVectorCombiner;->vectors:Lscala/collection/mutable/ArrayBuffer;

    return-object v0
.end method
