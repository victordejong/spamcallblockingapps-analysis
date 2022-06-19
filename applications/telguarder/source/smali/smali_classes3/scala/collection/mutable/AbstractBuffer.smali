.class public abstract Lscala/collection/mutable/AbstractBuffer;
.super Lscala/collection/mutable/AbstractSeq;
.source "Buffer.scala"

# interfaces
.implements Lscala/collection/mutable/Buffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/AbstractSeq<",
        "TA;>;",
        "Lscala/collection/mutable/Buffer<",
        "TA;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\t2Q!\u0001\u0002\u0002\u0002%\u0011a\"\u00112tiJ\u000c7\r\u001e\"vM\u001a,\'O\u0003\u0002\u0004\t\u00059Q.\u001e;bE2,\'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001QC\u0001\u0006\u0012\'\r\u00011b\u0007\t\u0004\u00195yQ\"\u0001\u0002\n\u00059\u0011!aC!cgR\u0014\u0018m\u0019;TKF\u0004\"\u0001E\t\r\u0001\u0011)!\u0003\u0001b\u0001\'\t\t\u0011)\u0005\u0002\u00151A\u0011QCF\u0007\u0002\r%\u0011qC\u0002\u0002\u0008\u001d>$\u0008.\u001b8h!\t)\u0012$\u0003\u0002\u001b\r\t\u0019\u0011I\\=\u0011\u00071ar\"\u0003\u0002\u001e\u0005\t1!)\u001e4gKJDQa\u0008\u0001\u0005\u0002\u0001\na\u0001P5oSRtD#A\u0011\u0011\u00071\u0001q\u0002"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Lscala/collection/mutable/AbstractSeq;-><init>()V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/generic/Shrinkable$class;->$init$(Lscala/collection/generic/Shrinkable;)V

    invoke-static {p0}, Lscala/collection/generic/Subtractable$class;->$init$(Lscala/collection/generic/Subtractable;)V

    invoke-static {p0}, Lscala/collection/mutable/BufferLike$class;->$init$(Lscala/collection/mutable/Buffer;)V

    invoke-static {p0}, Lscala/collection/mutable/Buffer$class;->$init$(Lscala/collection/mutable/Buffer;)V

    return-void
.end method


# virtual methods
.method public $less$less(Lscala/collection/script/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/script/Message<",
            "TA;>;)V"
        }
    .end annotation

    .line 49
    invoke-static {p0, p1}, Lscala/collection/mutable/BufferLike$class;->$less$less(Lscala/collection/mutable/Buffer;Lscala/collection/script/Message;)V

    return-void
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AbstractBuffer;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/mutable/AbstractBuffer;->$minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/mutable/Buffer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/Buffer<",
            "TA;>;"
        }
    .end annotation

    .line 49
    invoke-static {p0, p1}, Lscala/collection/mutable/BufferLike$class;->$minus(Lscala/collection/mutable/Buffer;Ljava/lang/Object;)Lscala/collection/mutable/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Buffer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;",
            "Lscala/collection/Seq<",
            "TA;>;)",
            "Lscala/collection/mutable/Buffer<",
            "TA;>;"
        }
    .end annotation

    .line 49
    invoke-static {p0, p1, p2, p3}, Lscala/collection/mutable/BufferLike$class;->$minus(Lscala/collection/mutable/Buffer;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/generic/Shrinkable;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AbstractBuffer;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public $minus$eq(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Shrinkable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;",
            "Lscala/collection/Seq<",
            "TA;>;)",
            "Lscala/collection/generic/Shrinkable<",
            "TA;>;"
        }
    .end annotation

    .line 49
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/Shrinkable$class;->$minus$eq(Lscala/collection/generic/Shrinkable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Shrinkable;

    move-result-object p1

    return-object p1
.end method

.method public $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Buffer;
    .locals 0

    .line 49
    invoke-static {p0, p1}, Lscala/collection/mutable/BufferLike$class;->$minus$eq(Lscala/collection/mutable/Buffer;Ljava/lang/Object;)Lscala/collection/mutable/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AbstractBuffer;->$minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public $minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Buffer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenTraversableOnce<",
            "TA;>;)",
            "Lscala/collection/mutable/Buffer<",
            "TA;>;"
        }
    .end annotation

    .line 49
    invoke-static {p0, p1}, Lscala/collection/mutable/BufferLike$class;->$minus$minus(Lscala/collection/mutable/Buffer;Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public $minus$minus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Shrinkable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)",
            "Lscala/collection/generic/Shrinkable<",
            "TA;>;"
        }
    .end annotation

    .line 49
    invoke-static {p0, p1}, Lscala/collection/generic/Shrinkable$class;->$minus$minus$eq(Lscala/collection/generic/Shrinkable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Shrinkable;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;",
            "Lscala/collection/Seq<",
            "TA;>;)",
            "Lscala/collection/generic/Growable<",
            "TA;>;"
        }
    .end annotation

    .line 49
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/Growable$class;->$plus$eq(Lscala/collection/generic/Growable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Buffer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenTraversableOnce<",
            "TA;>;)",
            "Lscala/collection/mutable/Buffer<",
            "TA;>;"
        }
    .end annotation

    .line 49
    invoke-static {p0, p1}, Lscala/collection/mutable/BufferLike$class;->$plus$plus(Lscala/collection/mutable/Buffer;Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)",
            "Lscala/collection/generic/Growable<",
            "TA;>;"
        }
    .end annotation

    .line 49
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus$eq$colon(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Buffer;
    .locals 0

    .line 49
    invoke-static {p0, p1}, Lscala/collection/mutable/BufferLike$class;->$plus$plus$eq$colon(Lscala/collection/mutable/Buffer;Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public append(Lscala/collection/Seq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "TA;>;)V"
        }
    .end annotation

    .line 49
    invoke-static {p0, p1}, Lscala/collection/mutable/BufferLike$class;->append(Lscala/collection/mutable/Buffer;Lscala/collection/Seq;)V

    return-void
.end method

.method public appendAll(Lscala/collection/TraversableOnce;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)V"
        }
    .end annotation

    .line 49
    invoke-static {p0, p1}, Lscala/collection/mutable/BufferLike$class;->appendAll(Lscala/collection/mutable/Buffer;Lscala/collection/TraversableOnce;)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractBuffer;->clone()Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscala/collection/mutable/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Buffer<",
            "TA;>;"
        }
    .end annotation

    .line 49
    invoke-static {p0}, Lscala/collection/mutable/BufferLike$class;->clone(Lscala/collection/mutable/Buffer;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/mutable/Buffer;",
            ">;"
        }
    .end annotation

    .line 49
    invoke-static {p0}, Lscala/collection/mutable/Buffer$class;->companion(Lscala/collection/mutable/Buffer;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AbstractBuffer;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public insert(ILscala/collection/Seq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/Seq<",
            "TA;>;)V"
        }
    .end annotation

    .line 49
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/BufferLike$class;->insert(Lscala/collection/mutable/Buffer;ILscala/collection/Seq;)V

    return-void
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 0

    .line 49
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/AbstractBuffer;->isDefinedAt(I)Z

    move-result p1

    return p1
.end method

.method public prepend(Lscala/collection/Seq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "TA;>;)V"
        }
    .end annotation

    .line 49
    invoke-static {p0, p1}, Lscala/collection/mutable/BufferLike$class;->prepend(Lscala/collection/mutable/Buffer;Lscala/collection/Seq;)V

    return-void
.end method

.method public prependAll(Lscala/collection/TraversableOnce;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)V"
        }
    .end annotation

    .line 49
    invoke-static {p0, p1}, Lscala/collection/mutable/BufferLike$class;->prependAll(Lscala/collection/mutable/Buffer;Lscala/collection/TraversableOnce;)V

    return-void
.end method

.method public readOnly()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "TA;>;"
        }
    .end annotation

    .line 49
    invoke-static {p0}, Lscala/collection/mutable/BufferLike$class;->readOnly(Lscala/collection/mutable/Buffer;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public remove(II)V
    .locals 0

    .line 49
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/BufferLike$class;->remove(Lscala/collection/mutable/Buffer;II)V

    return-void
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractBuffer;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractBuffer;->seq()Lscala/collection/mutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    .line 49
    invoke-static {p0}, Lscala/collection/mutable/BufferLike$class;->stringPrefix(Lscala/collection/mutable/Buffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractBuffer;->thisCollection()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractBuffer;->thisCollection()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AbstractBuffer;->toCollection(Ljava/lang/Object;)Lscala/collection/Seq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AbstractBuffer;->toCollection(Ljava/lang/Object;)Lscala/collection/Seq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractBuffer;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractBuffer;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractBuffer;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public trimEnd(I)V
    .locals 0

    .line 49
    invoke-static {p0, p1}, Lscala/collection/mutable/BufferLike$class;->trimEnd(Lscala/collection/mutable/Buffer;I)V

    return-void
.end method

.method public trimStart(I)V
    .locals 0

    .line 49
    invoke-static {p0, p1}, Lscala/collection/mutable/BufferLike$class;->trimStart(Lscala/collection/mutable/Buffer;I)V

    return-void
.end method

.method public bridge synthetic view()Lscala/collection/IterableView;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractBuffer;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/IterableView;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/AbstractBuffer;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractBuffer;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/AbstractBuffer;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method
