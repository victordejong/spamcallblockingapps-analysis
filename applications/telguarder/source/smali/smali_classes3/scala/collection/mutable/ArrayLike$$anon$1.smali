.class public final Lscala/collection/mutable/ArrayLike$$anon$1;
.super Lscala/collection/AbstractSeq;
.source "ArrayLike.scala"

# interfaces
.implements Lscala/collection/IndexedSeq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/ArrayLike;->deep()Lscala/collection/IndexedSeq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractSeq<",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/collection/IndexedSeq<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/mutable/ArrayLike;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/ArrayLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/ArrayLike<",
            "TA;TRepr;>;)V"
        }
    .end annotation

    .line 40
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/ArrayLike$$anon$1;->$outer:Lscala/collection/mutable/ArrayLike;

    invoke-direct {p0}, Lscala/collection/AbstractSeq;-><init>()V

    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->$init$(Lscala/collection/IndexedSeqLike;)V

    invoke-static {p0}, Lscala/collection/IndexedSeq$class;->$init$(Lscala/collection/IndexedSeq;)V

    return-void
.end method


# virtual methods
.method public apply(I)Ljava/lang/Object;
    .locals 1

    .line 42
    iget-object v0, p0, Lscala/collection/mutable/ArrayLike$$anon$1;->$outer:Lscala/collection/mutable/ArrayLike;

    invoke-interface {v0, p1}, Lscala/collection/mutable/ArrayLike;->apply(I)Ljava/lang/Object;

    move-result-object p1

    .line 43
    instance-of v0, p1, Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/collection/mutable/WrappedArray$;->MODULE$:Lscala/collection/mutable/WrappedArray$;

    invoke-virtual {v0, p1}, Lscala/collection/mutable/WrappedArray$;->make(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray;->deep()Lscala/collection/IndexedSeq;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayLike$$anon$1;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/IndexedSeq;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-static {p0}, Lscala/collection/IndexedSeq$class;->companion(Lscala/collection/IndexedSeq;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayLike$$anon$1;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 40
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->hashCode(Lscala/collection/IndexedSeqLike;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 0

    .line 40
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayLike$$anon$1;->isDefinedAt(I)Z

    move-result p1

    return p1
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->iterator(Lscala/collection/IndexedSeqLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 41
    iget-object v0, p0, Lscala/collection/mutable/ArrayLike$$anon$1;->$outer:Lscala/collection/mutable/ArrayLike;

    invoke-interface {v0}, Lscala/collection/mutable/ArrayLike;->length()I

    move-result v0

    return v0
.end method

.method public seq()Lscala/collection/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/IndexedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-static {p0}, Lscala/collection/IndexedSeq$class;->seq(Lscala/collection/IndexedSeq;)Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayLike$$anon$1;->seq()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayLike$$anon$1;->seq()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayLike$$anon$1;->seq()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayLike$$anon$1;->seq()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "Array"

    return-object v0
.end method

.method public thisCollection()Lscala/collection/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/IndexedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->thisCollection(Lscala/collection/IndexedSeqLike;)Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayLike$$anon$1;->thisCollection()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Seq;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayLike$$anon$1;->thisCollection()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayLike$$anon$1;->thisCollection()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public toBuffer()Lscala/collection/mutable/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Buffer<",
            "TA1;>;"
        }
    .end annotation

    .line 40
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->toBuffer(Lscala/collection/IndexedSeqLike;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqLike$class;->toCollection(Lscala/collection/IndexedSeqLike;Ljava/lang/Object;)Lscala/collection/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayLike$$anon$1;->toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Seq;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayLike$$anon$1;->toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayLike$$anon$1;->toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayLike$$anon$1;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayLike$$anon$1;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayLike$$anon$1;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view()Lscala/collection/IterableView;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayLike$$anon$1;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/IterableView;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/ArrayLike$$anon$1;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayLike$$anon$1;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/ArrayLike$$anon$1;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method
