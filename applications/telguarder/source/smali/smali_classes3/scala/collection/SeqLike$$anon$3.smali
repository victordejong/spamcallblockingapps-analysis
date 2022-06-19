.class public final Lscala/collection/SeqLike$$anon$3;
.super Lscala/collection/AbstractSeq;
.source "SeqLike.scala"

# interfaces
.implements Lscala/collection/IndexedSeq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/SeqLike$;->kmpOptimizeWord(Lscala/collection/Seq;IIZ)Lscala/collection/IndexedSeq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractSeq<",
        "TB;>;",
        "Lscala/collection/IndexedSeq<",
        "TB;>;"
    }
.end annotation


# instance fields
.field private final length:I

.field private final n0$1:I

.field private final x2$1:Lscala/collection/IndexedSeq;


# direct methods
.method public constructor <init>(IILscala/collection/IndexedSeq;)V
    .locals 0

    .line 703
    iput p1, p0, Lscala/collection/SeqLike$$anon$3;->n0$1:I

    iput-object p3, p0, Lscala/collection/SeqLike$$anon$3;->x2$1:Lscala/collection/IndexedSeq;

    invoke-direct {p0}, Lscala/collection/AbstractSeq;-><init>()V

    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->$init$(Lscala/collection/IndexedSeqLike;)V

    invoke-static {p0}, Lscala/collection/IndexedSeq$class;->$init$(Lscala/collection/IndexedSeq;)V

    sub-int/2addr p2, p1

    .line 704
    iput p2, p0, Lscala/collection/SeqLike$$anon$3;->length:I

    return-void
.end method


# virtual methods
.method public apply(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 705
    iget-object v0, p0, Lscala/collection/SeqLike$$anon$3;->x2$1:Lscala/collection/IndexedSeq;

    iget v1, p0, Lscala/collection/SeqLike$$anon$3;->n0$1:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lscala/collection/IndexedSeq;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 703
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/SeqLike$$anon$3;->apply(I)Ljava/lang/Object;

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

    .line 703
    invoke-static {p0}, Lscala/collection/IndexedSeq$class;->companion(Lscala/collection/IndexedSeq;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 703
    invoke-virtual {p0, p1}, Lscala/collection/SeqLike$$anon$3;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 703
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->hashCode(Lscala/collection/IndexedSeqLike;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 0

    .line 703
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/SeqLike$$anon$3;->isDefinedAt(I)Z

    move-result p1

    return p1
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 703
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->iterator(Lscala/collection/IndexedSeqLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 704
    iget v0, p0, Lscala/collection/SeqLike$$anon$3;->length:I

    return v0
.end method

.method public seq()Lscala/collection/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/IndexedSeq<",
            "TB;>;"
        }
    .end annotation

    .line 703
    invoke-static {p0}, Lscala/collection/IndexedSeq$class;->seq(Lscala/collection/IndexedSeq;)Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 703
    invoke-virtual {p0}, Lscala/collection/SeqLike$$anon$3;->seq()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .line 703
    invoke-virtual {p0}, Lscala/collection/SeqLike$$anon$3;->seq()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 703
    invoke-virtual {p0}, Lscala/collection/SeqLike$$anon$3;->seq()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 703
    invoke-virtual {p0}, Lscala/collection/SeqLike$$anon$3;->seq()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public thisCollection()Lscala/collection/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/IndexedSeq<",
            "TB;>;"
        }
    .end annotation

    .line 703
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->thisCollection(Lscala/collection/IndexedSeqLike;)Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .line 703
    invoke-virtual {p0}, Lscala/collection/SeqLike$$anon$3;->thisCollection()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Seq;
    .locals 1

    .line 703
    invoke-virtual {p0}, Lscala/collection/SeqLike$$anon$3;->thisCollection()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 703
    invoke-virtual {p0}, Lscala/collection/SeqLike$$anon$3;->thisCollection()Lscala/collection/IndexedSeq;

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

    .line 703
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->toBuffer(Lscala/collection/IndexedSeqLike;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;
    .locals 0

    .line 703
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqLike$class;->toCollection(Lscala/collection/IndexedSeqLike;Ljava/lang/Object;)Lscala/collection/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;
    .locals 0

    .line 703
    invoke-virtual {p0, p1}, Lscala/collection/SeqLike$$anon$3;->toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Seq;
    .locals 0

    .line 703
    invoke-virtual {p0, p1}, Lscala/collection/SeqLike$$anon$3;->toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 703
    invoke-virtual {p0, p1}, Lscala/collection/SeqLike$$anon$3;->toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 703
    invoke-virtual {p0}, Lscala/collection/SeqLike$$anon$3;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 703
    invoke-virtual {p0}, Lscala/collection/SeqLike$$anon$3;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 703
    invoke-virtual {p0}, Lscala/collection/SeqLike$$anon$3;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view()Lscala/collection/IterableView;
    .locals 1

    .line 703
    invoke-virtual {p0}, Lscala/collection/SeqLike$$anon$3;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/IterableView;
    .locals 0

    .line 703
    invoke-virtual {p0, p1, p2}, Lscala/collection/SeqLike$$anon$3;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 703
    invoke-virtual {p0}, Lscala/collection/SeqLike$$anon$3;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 703
    invoke-virtual {p0, p1, p2}, Lscala/collection/SeqLike$$anon$3;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method
