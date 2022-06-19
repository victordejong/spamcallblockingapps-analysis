.class public final Lscala/collection/SeqLike$$anon$5;
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
.field private final Warr:[Ljava/lang/Object;

.field private final delta:I

.field private final done:I

.field private i:I

.field private final length:I

.field private final wit:Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/Seq;IIZ)V
    .locals 2

    .line 714
    invoke-direct {p0}, Lscala/collection/AbstractSeq;-><init>()V

    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->$init$(Lscala/collection/IndexedSeqLike;)V

    invoke-static {p0}, Lscala/collection/IndexedSeq$class;->$init$(Lscala/collection/IndexedSeq;)V

    sub-int/2addr p3, p2

    .line 715
    new-array v0, p3, [Ljava/lang/Object;

    iput-object v0, p0, Lscala/collection/SeqLike$$anon$5;->Warr:[Ljava/lang/Object;

    const/4 v0, -0x1

    if-eqz p4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 716
    :goto_0
    iput v1, p0, Lscala/collection/SeqLike$$anon$5;->delta:I

    if-eqz p4, :cond_1

    move v0, p3

    .line 717
    :cond_1
    iput v0, p0, Lscala/collection/SeqLike$$anon$5;->done:I

    .line 718
    invoke-interface {p1}, Lscala/collection/Seq;->iterator()Lscala/collection/Iterator;

    move-result-object p1

    invoke-interface {p1, p2}, Lscala/collection/Iterator;->drop(I)Lscala/collection/Iterator;

    move-result-object p1

    iput-object p1, p0, Lscala/collection/SeqLike$$anon$5;->wit:Lscala/collection/Iterator;

    if-eqz p4, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p3, -0x1

    .line 719
    :goto_1
    iput p1, p0, Lscala/collection/SeqLike$$anon$5;->i:I

    .line 720
    :goto_2
    invoke-virtual {p0}, Lscala/collection/SeqLike$$anon$5;->i()I

    move-result p1

    iget p2, p0, Lscala/collection/SeqLike$$anon$5;->done:I

    if-eq p1, p2, :cond_3

    .line 721
    iget-object p1, p0, Lscala/collection/SeqLike$$anon$5;->Warr:[Ljava/lang/Object;

    invoke-virtual {p0}, Lscala/collection/SeqLike$$anon$5;->i()I

    move-result p2

    invoke-virtual {p0}, Lscala/collection/SeqLike$$anon$5;->wit()Lscala/collection/Iterator;

    move-result-object p4

    invoke-interface {p4}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    aput-object p4, p1, p2

    .line 722
    invoke-virtual {p0}, Lscala/collection/SeqLike$$anon$5;->i()I

    move-result p1

    iget p2, p0, Lscala/collection/SeqLike$$anon$5;->delta:I

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lscala/collection/SeqLike$$anon$5;->i_$eq(I)V

    goto :goto_2

    .line 725
    :cond_3
    iput p3, p0, Lscala/collection/SeqLike$$anon$5;->length:I

    return-void
.end method


# virtual methods
.method public apply(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 726
    iget-object v0, p0, Lscala/collection/SeqLike$$anon$5;->Warr:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 714
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/SeqLike$$anon$5;->apply(I)Ljava/lang/Object;

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

    .line 714
    invoke-static {p0}, Lscala/collection/IndexedSeq$class;->companion(Lscala/collection/IndexedSeq;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 714
    invoke-virtual {p0, p1}, Lscala/collection/SeqLike$$anon$5;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 714
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->hashCode(Lscala/collection/IndexedSeqLike;)I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    .line 719
    iget v0, p0, Lscala/collection/SeqLike$$anon$5;->i:I

    return v0
.end method

.method public i_$eq(I)V
    .locals 0

    .line 719
    iput p1, p0, Lscala/collection/SeqLike$$anon$5;->i:I

    return-void
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 0

    .line 714
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/SeqLike$$anon$5;->isDefinedAt(I)Z

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

    .line 714
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->iterator(Lscala/collection/IndexedSeqLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 725
    iget v0, p0, Lscala/collection/SeqLike$$anon$5;->length:I

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

    .line 714
    invoke-static {p0}, Lscala/collection/IndexedSeq$class;->seq(Lscala/collection/IndexedSeq;)Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 714
    invoke-virtual {p0}, Lscala/collection/SeqLike$$anon$5;->seq()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .line 714
    invoke-virtual {p0}, Lscala/collection/SeqLike$$anon$5;->seq()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 714
    invoke-virtual {p0}, Lscala/collection/SeqLike$$anon$5;->seq()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 714
    invoke-virtual {p0}, Lscala/collection/SeqLike$$anon$5;->seq()Lscala/collection/IndexedSeq;

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

    .line 714
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->thisCollection(Lscala/collection/IndexedSeqLike;)Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .line 714
    invoke-virtual {p0}, Lscala/collection/SeqLike$$anon$5;->thisCollection()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Seq;
    .locals 1

    .line 714
    invoke-virtual {p0}, Lscala/collection/SeqLike$$anon$5;->thisCollection()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 714
    invoke-virtual {p0}, Lscala/collection/SeqLike$$anon$5;->thisCollection()Lscala/collection/IndexedSeq;

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

    .line 714
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->toBuffer(Lscala/collection/IndexedSeqLike;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;
    .locals 0

    .line 714
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqLike$class;->toCollection(Lscala/collection/IndexedSeqLike;Ljava/lang/Object;)Lscala/collection/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;
    .locals 0

    .line 714
    invoke-virtual {p0, p1}, Lscala/collection/SeqLike$$anon$5;->toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Seq;
    .locals 0

    .line 714
    invoke-virtual {p0, p1}, Lscala/collection/SeqLike$$anon$5;->toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 714
    invoke-virtual {p0, p1}, Lscala/collection/SeqLike$$anon$5;->toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 714
    invoke-virtual {p0}, Lscala/collection/SeqLike$$anon$5;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 714
    invoke-virtual {p0}, Lscala/collection/SeqLike$$anon$5;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 714
    invoke-virtual {p0}, Lscala/collection/SeqLike$$anon$5;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view()Lscala/collection/IterableView;
    .locals 1

    .line 714
    invoke-virtual {p0}, Lscala/collection/SeqLike$$anon$5;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/IterableView;
    .locals 0

    .line 714
    invoke-virtual {p0, p1, p2}, Lscala/collection/SeqLike$$anon$5;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 714
    invoke-virtual {p0}, Lscala/collection/SeqLike$$anon$5;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 714
    invoke-virtual {p0, p1, p2}, Lscala/collection/SeqLike$$anon$5;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public wit()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 718
    iget-object v0, p0, Lscala/collection/SeqLike$$anon$5;->wit:Lscala/collection/Iterator;

    return-object v0
.end method
