.class public abstract Lscala/collection/mutable/AbstractSeq;
.super Lscala/collection/AbstractSeq;
.source "Seq.scala"

# interfaces
.implements Lscala/collection/mutable/Seq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractSeq<",
        "TA;>;",
        "Lscala/collection/mutable/Seq<",
        "TA;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\t2Q!\u0001\u0002\u0002\u0002%\u00111\"\u00112tiJ\u000c7\r^*fc*\u00111\u0001B\u0001\u0008[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\u000cG.Y\u0002\u0001+\tQ\u0001cE\u0002\u0001\u0017i\u00012\u0001D\u0007\u000f\u001b\u0005!\u0011BA\u0001\u0005!\ty\u0001\u0003\u0004\u0001\u0005\u000bE\u0001!\u0019\u0001\n\u0003\u0003\u0005\u000b\"aE\u000c\u0011\u0005Q)R\"\u0001\u0004\n\u0005Y1!a\u0002(pi\"Lgn\u001a\t\u0003)aI!!\u0007\u0004\u0003\u0007\u0005s\u0017\u0010E\u0002\u001c99i\u0011AA\u0005\u0003;\t\u00111aU3r\u0011\u0015y\u0002\u0001\"\u0001!\u0003\u0019a\u0014N\\5u}Q\t\u0011\u0005E\u0002\u001c\u00019\u0001"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lscala/collection/AbstractSeq;-><init>()V

    invoke-static {p0}, Lscala/collection/mutable/Traversable$class;->$init$(Lscala/collection/mutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/mutable/Iterable$class;->$init$(Lscala/collection/mutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/mutable/Cloneable$class;->$init$(Lscala/collection/mutable/Cloneable;)V

    invoke-static {p0}, Lscala/collection/mutable/SeqLike$class;->$init$(Lscala/collection/mutable/SeqLike;)V

    invoke-static {p0}, Lscala/collection/mutable/Seq$class;->$init$(Lscala/collection/mutable/Seq;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 48
    invoke-static {p0}, Lscala/collection/mutable/Cloneable$class;->clone(Lscala/collection/mutable/Cloneable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/mutable/Seq;",
            ">;"
        }
    .end annotation

    .line 48
    invoke-static {p0}, Lscala/collection/mutable/Seq$class;->companion(Lscala/collection/mutable/Seq;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AbstractSeq;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 0

    .line 48
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/AbstractSeq;->isDefinedAt(I)Z

    move-result p1

    return p1
.end method

.method public parCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TA;",
            "Lscala/collection/parallel/mutable/ParSeq<",
            "TA;>;>;"
        }
    .end annotation

    .line 48
    invoke-static {p0}, Lscala/collection/mutable/SeqLike$class;->parCombiner(Lscala/collection/mutable/SeqLike;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$mutable$Cloneable$$super$clone()Ljava/lang/Object;
    .locals 1

    .line 48
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractSeq;->seq()Lscala/collection/mutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractSeq;->seq()Lscala/collection/mutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractSeq;->seq()Lscala/collection/mutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractSeq;->seq()Lscala/collection/mutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Iterable;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractSeq;->seq()Lscala/collection/mutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/mutable/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Seq<",
            "TA;>;"
        }
    .end annotation

    .line 48
    invoke-static {p0}, Lscala/collection/mutable/Seq$class;->seq(Lscala/collection/mutable/Seq;)Lscala/collection/mutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Traversable;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractSeq;->seq()Lscala/collection/mutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractSeq;->thisCollection()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractSeq;->thisCollection()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AbstractSeq;->toCollection(Ljava/lang/Object;)Lscala/collection/Seq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AbstractSeq;->toCollection(Ljava/lang/Object;)Lscala/collection/Seq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractSeq;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractSeq;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractSeq;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lscala/Function1;)Lscala/collection/mutable/SeqLike;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;TA;>;)",
            "Lscala/collection/mutable/SeqLike<",
            "TA;",
            "Lscala/collection/mutable/Seq<",
            "TA;>;>;"
        }
    .end annotation

    .line 48
    invoke-static {p0, p1}, Lscala/collection/mutable/SeqLike$class;->transform(Lscala/collection/mutable/SeqLike;Lscala/Function1;)Lscala/collection/mutable/SeqLike;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/IterableView;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractSeq;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/IterableView;
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/AbstractSeq;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractSeq;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/AbstractSeq;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method
