.class public abstract Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;
.super Lscala/collection/SeqViewLike$AbstractTransformed;
.source "IndexedSeqView.scala"

# interfaces
.implements Lscala/collection/mutable/IndexedSeqView$Transformed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/IndexedSeqView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AbstractTransformed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/SeqViewLike<",
        "TA;TColl;",
        "Lscala/collection/mutable/IndexedSeqView<",
        "TA;TColl;>;>.AbstractTransformed<TB;>;",
        "Lscala/collection/mutable/IndexedSeqView<",
        "TA;TColl;>.Transformed<TB;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/mutable/IndexedSeqView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TA;TColl;>;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1}, Lscala/collection/SeqViewLike$AbstractTransformed;-><init>(Lscala/collection/SeqViewLike;)V

    invoke-static {p0}, Lscala/collection/mutable/Traversable$class;->$init$(Lscala/collection/mutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/mutable/Iterable$class;->$init$(Lscala/collection/mutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/mutable/Cloneable$class;->$init$(Lscala/collection/mutable/Cloneable;)V

    invoke-static {p0}, Lscala/collection/mutable/SeqLike$class;->$init$(Lscala/collection/mutable/SeqLike;)V

    invoke-static {p0}, Lscala/collection/mutable/Seq$class;->$init$(Lscala/collection/mutable/Seq;)V

    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->$init$(Lscala/collection/IndexedSeqLike;)V

    invoke-static {p0}, Lscala/collection/IndexedSeq$class;->$init$(Lscala/collection/IndexedSeq;)V

    invoke-static {p0}, Lscala/collection/mutable/IndexedSeqLike$class;->$init$(Lscala/collection/mutable/IndexedSeqLike;)V

    invoke-static {p0}, Lscala/collection/mutable/IndexedSeq$class;->$init$(Lscala/collection/mutable/IndexedSeq;)V

    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->$init$(Lscala/collection/IndexedSeqOptimized;)V

    invoke-static {p0}, Lscala/collection/mutable/IndexedSeqView$class;->$init$(Lscala/collection/mutable/IndexedSeqView;)V

    invoke-static {p0}, Lscala/collection/mutable/IndexedSeqView$Transformed$class;->$init$(Lscala/collection/mutable/IndexedSeqView$Transformed;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 47
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
            "Lscala/collection/mutable/IndexedSeq;",
            ">;"
        }
    .end annotation

    .line 47
    invoke-static {p0}, Lscala/collection/mutable/IndexedSeq$class;->companion(Lscala/collection/mutable/IndexedSeq;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public copyToArray(Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2, p3}, Lscala/collection/IndexedSeqOptimized$class;->copyToArray(Lscala/collection/IndexedSeqOptimized;Ljava/lang/Object;II)V

    return-void
.end method

.method public bridge synthetic diff(Lscala/collection/GenSeq;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->diff(Lscala/collection/GenSeq;)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic distinct()Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->distinct()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic drop(I)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->drop(I)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic drop(I)Lscala/collection/IterableView;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->drop(I)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic drop(I)Lscala/collection/TraversableView;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->drop(I)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public drop(I)Lscala/collection/mutable/IndexedSeqView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TB;TColl;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lscala/collection/mutable/IndexedSeqView$class;->drop(Lscala/collection/mutable/IndexedSeqView;I)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public dropRight(I)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->dropRight(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dropRight(I)Lscala/collection/IterableView;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->dropRight(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/IterableView;

    return-object p1
.end method

.method public bridge synthetic dropWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->dropWhile(Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dropWhile(Lscala/Function1;)Lscala/collection/TraversableView;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->dropWhile(Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public dropWhile(Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TB;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TB;TColl;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lscala/collection/mutable/IndexedSeqView$class;->dropWhile(Lscala/collection/mutable/IndexedSeqView;Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public endsWith(Lscala/collection/GenSeq;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;)Z"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->endsWith(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenSeq;)Z

    move-result p1

    return p1
.end method

.method public exists(Lscala/Function1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TB;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->exists(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic filter(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->filter(Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filter(Lscala/Function1;)Lscala/collection/TraversableView;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->filter(Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public filter(Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TB;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TB;TColl;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lscala/collection/mutable/IndexedSeqView$class;->filter(Lscala/collection/mutable/IndexedSeqView;Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->filterNot(Lscala/Function1;)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method

.method public find(Lscala/Function1;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TB;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->find(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic flatten(Lscala/Function1;)Lscala/collection/GenTraversable;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->flatten(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TB;TB;TB;>;)TB;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->foldLeft(Lscala/collection/IndexedSeqOptimized;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public foldRight(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TB;TB;TB;>;)TB;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->foldRight(Lscala/collection/IndexedSeqOptimized;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public forall(Lscala/Function1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TB;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->forall(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public foreach(Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TB;TU;>;)V"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->foreach(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)V

    return-void
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->hashCode(Lscala/collection/IndexedSeqLike;)I

    move-result v0

    return v0
.end method

.method public head()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 47
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->head(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexWhere(Lscala/Function1;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TB;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->indexWhere(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic init()Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->init()Lscala/collection/mutable/IndexedSeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic init()Lscala/collection/TraversableView;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->init()Lscala/collection/mutable/IndexedSeqView;

    move-result-object v0

    return-object v0
.end method

.method public init()Lscala/collection/mutable/IndexedSeqView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TB;TColl;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0}, Lscala/collection/mutable/IndexedSeqView$class;->init(Lscala/collection/mutable/IndexedSeqView;)Lscala/collection/mutable/IndexedSeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic intersect(Lscala/collection/GenSeq;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->intersect(Lscala/collection/GenSeq;)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 0

    .line 47
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->isDefinedAt(I)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->isEmpty(Lscala/collection/IndexedSeqOptimized;)Z

    move-result v0

    return v0
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

    .line 47
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->iterator(Lscala/collection/IndexedSeqLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 47
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->last(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexWhere(Lscala/Function1;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TB;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->lastIndexWhere(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public lengthCompare(I)I
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->lengthCompare(Lscala/collection/IndexedSeqOptimized;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic newAppended(Lscala/collection/GenTraversable;)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->newAppended(Lscala/collection/GenTraversable;)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newAppended(Lscala/collection/GenTraversable;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->newAppended(Lscala/collection/GenTraversable;)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newDropped(I)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->newDropped(I)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newDropped(I)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->newDropped(I)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newDroppedWhile(Lscala/Function1;)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->newDroppedWhile(Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newDroppedWhile(Lscala/Function1;)Lscala/collection/SeqViewLike$Transformed;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->newDroppedWhile(Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newDroppedWhile(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->newDroppedWhile(Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public newDroppedWhile(Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView$Transformed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TB;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TB;TColl;>.Transformed<TB;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lscala/collection/mutable/IndexedSeqView$class;->newDroppedWhile(Lscala/collection/mutable/IndexedSeqView;Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newFiltered(Lscala/Function1;)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->newFiltered(Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newFiltered(Lscala/Function1;)Lscala/collection/SeqViewLike$Transformed;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->newFiltered(Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newFiltered(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->newFiltered(Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public newFiltered(Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView$Transformed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TB;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TB;TColl;>.Transformed<TB;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lscala/collection/mutable/IndexedSeqView$class;->newFiltered(Lscala/collection/mutable/IndexedSeqView;Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newFlatMapped(Lscala/Function1;)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->newFlatMapped(Lscala/Function1;)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newFlatMapped(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->newFlatMapped(Lscala/Function1;)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newForced(Lscala/Function0;)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->newForced(Lscala/Function0;)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newForced(Lscala/Function0;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->newForced(Lscala/Function0;)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newMapped(Lscala/Function1;)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->newMapped(Lscala/Function1;)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newMapped(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->newMapped(Lscala/Function1;)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newReversed()Lscala/collection/SeqViewLike$Transformed;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->newReversed()Lscala/collection/mutable/IndexedSeqView$Transformed;

    move-result-object v0

    return-object v0
.end method

.method public newReversed()Lscala/collection/mutable/IndexedSeqView$Transformed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TB;TColl;>.Transformed<TB;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0}, Lscala/collection/mutable/IndexedSeqView$class;->newReversed(Lscala/collection/mutable/IndexedSeqView;)Lscala/collection/mutable/IndexedSeqView$Transformed;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/mutable/IndexedSeqView$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/SeqViewLike$Transformed;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/mutable/IndexedSeqView$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/mutable/IndexedSeqView$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/mutable/IndexedSeqView$Transformed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/generic/SliceInterval;",
            ")",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TB;TColl;>.Transformed<TB;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lscala/collection/mutable/IndexedSeqView$class;->newSliced(Lscala/collection/mutable/IndexedSeqView;Lscala/collection/generic/SliceInterval;)Lscala/collection/mutable/IndexedSeqView$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newTaken(I)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->newTaken(I)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newTaken(I)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->newTaken(I)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newTakenWhile(Lscala/Function1;)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->newTakenWhile(Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newTakenWhile(Lscala/Function1;)Lscala/collection/SeqViewLike$Transformed;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->newTakenWhile(Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newTakenWhile(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->newTakenWhile(Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public newTakenWhile(Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView$Transformed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TB;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TB;TColl;>.Transformed<TB;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lscala/collection/mutable/IndexedSeqView$class;->newTakenWhile(Lscala/collection/mutable/IndexedSeqView;Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newZipped(Lscala/collection/GenIterable;)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->newZipped(Lscala/collection/GenIterable;)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newZippedAll(Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->newZippedAll(Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public parCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TB;",
            "Lscala/collection/parallel/mutable/ParSeq<",
            "TB;>;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0}, Lscala/collection/mutable/SeqLike$class;->parCombiner(Lscala/collection/mutable/SeqLike;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public reduceLeft(Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TB;TB;TB;>;)TB;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->reduceLeft(Lscala/collection/IndexedSeqOptimized;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduceRight(Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TB;TB;TB;>;)TB;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->reduceRight(Lscala/collection/IndexedSeqOptimized;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverse()Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->reverse()Lscala/collection/mutable/IndexedSeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverse()Lscala/collection/SeqView;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->reverse()Lscala/collection/mutable/IndexedSeqView;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lscala/collection/mutable/IndexedSeqView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TB;TColl;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0}, Lscala/collection/mutable/IndexedSeqView$class;->reverse(Lscala/collection/mutable/IndexedSeqView;)Lscala/collection/mutable/IndexedSeqView;

    move-result-object v0

    return-object v0
.end method

.method public reverseIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->reverseIterator(Lscala/collection/IndexedSeqOptimized;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public sameElements(Lscala/collection/GenIterable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TB;>;)Z"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->sameElements(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenIterable;)Z

    move-result p1

    return p1
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$endsWith(Lscala/collection/GenSeq;)Z
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->endsWith(Lscala/collection/SeqLike;Lscala/collection/GenSeq;)Z

    move-result p1

    return p1
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$head()Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/collection/IterableLike$class;->head(Lscala/collection/IterableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$init()Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/collection/TraversableViewLike$class;->init(Lscala/collection/TraversableViewLike;)Lscala/collection/TraversableView;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$last()Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->last(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$reduceLeft(Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceLeft(Lscala/collection/TraversableOnce;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$reduceRight(Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->reduceRight(Lscala/collection/IterableLike;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$sameElements(Lscala/collection/GenIterable;)Z
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->sameElements(Lscala/collection/IterableLike;Lscala/collection/GenIterable;)Z

    move-result p1

    return p1
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$tail()Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/collection/TraversableViewLike$class;->tail(Lscala/collection/TraversableViewLike;)Lscala/collection/TraversableView;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-static {p0, p1, p2}, Lscala/collection/IterableViewLike$class;->zip(Lscala/collection/IterableViewLike;Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$mutable$Cloneable$$super$clone()Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$mutable$IndexedSeqView$$super$tail()Lscala/collection/mutable/IndexedSeqView;
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->tail(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/IndexedSeqView;

    return-object v0
.end method

.method public synthetic scala$collection$mutable$IndexedSeqView$AbstractTransformed$$$outer()Lscala/collection/mutable/IndexedSeqView;
    .locals 1

    .line 47
    iget-object v0, p0, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->$outer:Lscala/collection/SeqViewLike;

    check-cast v0, Lscala/collection/mutable/IndexedSeqView;

    return-object v0
.end method

.method public synthetic scala$collection$mutable$IndexedSeqView$Transformed$$$outer()Lscala/collection/mutable/IndexedSeqView;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->scala$collection$mutable$IndexedSeqView$AbstractTransformed$$$outer()Lscala/collection/mutable/IndexedSeqView;

    move-result-object v0

    return-object v0
.end method

.method public segmentLength(Lscala/Function1;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TB;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->segmentLength(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic seq()Lscala/collection/IndexedSeq;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/mutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/IndexedSeq<",
            "TB;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0}, Lscala/collection/mutable/IndexedSeq$class;->seq(Lscala/collection/mutable/IndexedSeq;)Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Iterable;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Seq;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Traversable;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic slice(II)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->slice(II)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic slice(II)Lscala/collection/TraversableView;
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->slice(II)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public slice(II)Lscala/collection/mutable/IndexedSeqView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TB;TColl;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/IndexedSeqView$class;->slice(Lscala/collection/mutable/IndexedSeqView;II)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic sortBy(Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->sortBy(Lscala/Function1;Lscala/math/Ordering;)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic sortWith(Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->sortWith(Lscala/Function2;)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic sorted(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->sorted(Lscala/math/Ordering;)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public span(Lscala/Function1;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TB;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TB;TColl;>;",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TB;TColl;>;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lscala/collection/mutable/IndexedSeqView$class;->span(Lscala/collection/mutable/IndexedSeqView;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public splitAt(I)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Tuple2<",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TB;TColl;>;",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TB;TColl;>;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lscala/collection/mutable/IndexedSeqView$class;->splitAt(Lscala/collection/mutable/IndexedSeqView;I)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public startsWith(Lscala/collection/GenSeq;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;I)Z"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->startsWith(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenSeq;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tail()Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->tail()Lscala/collection/mutable/IndexedSeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tail()Lscala/collection/TraversableView;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->tail()Lscala/collection/mutable/IndexedSeqView;

    move-result-object v0

    return-object v0
.end method

.method public tail()Lscala/collection/mutable/IndexedSeqView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TB;TColl;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0}, Lscala/collection/mutable/IndexedSeqView$class;->tail(Lscala/collection/mutable/IndexedSeqView;)Lscala/collection/mutable/IndexedSeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic take(I)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->take(I)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic take(I)Lscala/collection/IterableView;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->take(I)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic take(I)Lscala/collection/TraversableView;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->take(I)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public take(I)Lscala/collection/mutable/IndexedSeqView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TB;TColl;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lscala/collection/mutable/IndexedSeqView$class;->take(Lscala/collection/mutable/IndexedSeqView;I)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public takeRight(I)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->takeRight(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic takeRight(I)Lscala/collection/IterableView;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->takeRight(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/IterableView;

    return-object p1
.end method

.method public bridge synthetic takeWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->takeWhile(Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic takeWhile(Lscala/Function1;)Lscala/collection/TraversableView;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->takeWhile(Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public takeWhile(Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TB;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TB;TColl;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lscala/collection/mutable/IndexedSeqView$class;->takeWhile(Lscala/collection/mutable/IndexedSeqView;Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thisCollection()Lscala/collection/IndexedSeq;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->thisCollection()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->thisCollection()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Seq;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->thisCollection()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->thisCollection()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public thisCollection()Lscala/collection/mutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/IndexedSeq<",
            "TB;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0}, Lscala/collection/mutable/IndexedSeqLike$class;->thisCollection(Lscala/collection/mutable/IndexedSeqLike;)Lscala/collection/mutable/IndexedSeq;

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

    .line 47
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->toBuffer(Lscala/collection/IndexedSeqLike;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->toCollection(Ljava/lang/Object;)Lscala/collection/mutable/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->toCollection(Ljava/lang/Object;)Lscala/collection/mutable/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Seq;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->toCollection(Ljava/lang/Object;)Lscala/collection/mutable/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->toCollection(Ljava/lang/Object;)Lscala/collection/mutable/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public toCollection(Ljava/lang/Object;)Lscala/collection/mutable/IndexedSeq;
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lscala/collection/mutable/IndexedSeqLike$class;->toCollection(Lscala/collection/mutable/IndexedSeqLike;Ljava/lang/Object;)Lscala/collection/mutable/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 47
    invoke-static {p0}, Lscala/collection/mutable/IndexedSeqView$Transformed$class;->toString(Lscala/collection/mutable/IndexedSeqView$Transformed;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lscala/Function1;)Lscala/collection/mutable/SeqLike;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TB;TB;>;)",
            "Lscala/collection/mutable/SeqLike<",
            "TB;",
            "Lscala/collection/mutable/Seq<",
            "TB;>;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lscala/collection/mutable/SeqLike$class;->transform(Lscala/collection/mutable/SeqLike;Lscala/Function1;)Lscala/collection/mutable/SeqLike;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/IterableView;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->view()Lscala/collection/mutable/IndexedSeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/IterableView;
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->view(II)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/SeqView;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->view()Lscala/collection/mutable/IndexedSeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/SeqView;
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->view(II)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->view()Lscala/collection/mutable/IndexedSeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->view(II)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public view()Lscala/collection/mutable/IndexedSeqView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 47
    invoke-static {p0}, Lscala/collection/mutable/IndexedSeqLike$class;->view(Lscala/collection/mutable/IndexedSeqLike;)Lscala/collection/mutable/IndexedSeqView;

    move-result-object v0

    return-object v0
.end method

.method public view(II)Lscala/collection/mutable/IndexedSeqView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TB;",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TB;TColl;>;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/IndexedSeqLike$class;->view(Lscala/collection/mutable/IndexedSeqLike;II)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withFilter(Lscala/Function1;)Lscala/collection/generic/FilterMonadic;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;->withFilter(Lscala/Function1;)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method

.method public zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TB;TColl;>;",
            "Lscala/Tuple2<",
            "TA1;TB;>;TThat;>;)TThat;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->zip(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public zipWithIndex(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TB;TColl;>;",
            "Lscala/Tuple2<",
            "TA1;",
            "Ljava/lang/Object;",
            ">;TThat;>;)TThat;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->zipWithIndex(Lscala/collection/IndexedSeqOptimized;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
