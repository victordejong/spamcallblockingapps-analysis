.class public abstract Lscala/collection/immutable/StreamViewLike$AbstractTransformed;
.super Lscala/collection/SeqViewLike$AbstractTransformed;
.source "StreamViewLike.scala"

# interfaces
.implements Lscala/collection/immutable/StreamViewLike$Transformed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/StreamViewLike;
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
        "TA;TColl;TThis;>.AbstractTransformed<TB;>;",
        "Lscala/collection/immutable/StreamViewLike<",
        "TA;TColl;TThis;>.Transformed<TB;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/immutable/StreamViewLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/StreamViewLike<",
            "TA;TColl;TThis;>;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Lscala/collection/SeqViewLike$AbstractTransformed;-><init>(Lscala/collection/SeqViewLike;)V

    invoke-static {p0}, Lscala/collection/immutable/StreamViewLike$class;->$init$(Lscala/collection/immutable/StreamViewLike;)V

    invoke-static {p0}, Lscala/collection/immutable/StreamViewLike$Transformed$class;->$init$(Lscala/collection/immutable/StreamViewLike$Transformed;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic diff(Lscala/collection/GenSeq;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->diff(Lscala/collection/GenSeq;)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic distinct()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->distinct()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic drop(I)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->drop(I)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic drop(I)Lscala/collection/TraversableView;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->drop(I)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dropRight(I)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->dropRight(I)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dropWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->dropWhile(Lscala/Function1;)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filter(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->filter(Lscala/Function1;)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->filterNot(Lscala/Function1;)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic flatten(Lscala/Function1;)Lscala/collection/GenTraversable;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->flatten(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public force(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom<",
            "TColl;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 23
    invoke-static {p0, p1}, Lscala/collection/immutable/StreamViewLike$class;->force(Lscala/collection/immutable/StreamViewLike;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic init()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->init()Lscala/collection/TraversableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic intersect(Lscala/collection/GenSeq;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->intersect(Lscala/collection/GenSeq;)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 0

    .line 23
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->isDefinedAt(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic newAppended(Lscala/collection/GenTraversable;)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newAppended(Lscala/collection/GenTraversable;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newAppended(Lscala/collection/GenTraversable;)Lscala/collection/SeqViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newAppended(Lscala/collection/GenTraversable;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newAppended(Lscala/collection/GenTraversable;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newAppended(Lscala/collection/GenTraversable;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public newAppended(Lscala/collection/GenTraversable;)Lscala/collection/immutable/StreamViewLike$Transformed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenTraversable<",
            "TB;>;)",
            "Lscala/collection/immutable/StreamViewLike<",
            "TB;TColl;",
            "Lscala/collection/immutable/StreamView<",
            "TB;TColl;>;>.Transformed<TB;>;"
        }
    .end annotation

    .line 23
    invoke-static {p0, p1}, Lscala/collection/immutable/StreamViewLike$class;->newAppended(Lscala/collection/immutable/StreamViewLike;Lscala/collection/GenTraversable;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newDropped(I)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newDropped(I)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newDropped(I)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newDropped(I)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newDroppedWhile(Lscala/Function1;)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newDroppedWhile(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newDroppedWhile(Lscala/Function1;)Lscala/collection/SeqViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newDroppedWhile(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newDroppedWhile(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newDroppedWhile(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public newDroppedWhile(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TB;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/immutable/StreamViewLike<",
            "TB;TColl;",
            "Lscala/collection/immutable/StreamView<",
            "TB;TColl;>;>.Transformed<TB;>;"
        }
    .end annotation

    .line 23
    invoke-static {p0, p1}, Lscala/collection/immutable/StreamViewLike$class;->newDroppedWhile(Lscala/collection/immutable/StreamViewLike;Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newFiltered(Lscala/Function1;)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newFiltered(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newFiltered(Lscala/Function1;)Lscala/collection/SeqViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newFiltered(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newFiltered(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newFiltered(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public newFiltered(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TB;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/immutable/StreamViewLike<",
            "TB;TColl;",
            "Lscala/collection/immutable/StreamView<",
            "TB;TColl;>;>.Transformed<TB;>;"
        }
    .end annotation

    .line 23
    invoke-static {p0, p1}, Lscala/collection/immutable/StreamViewLike$class;->newFiltered(Lscala/collection/immutable/StreamViewLike;Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newFlatMapped(Lscala/Function1;)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newFlatMapped(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newFlatMapped(Lscala/Function1;)Lscala/collection/SeqViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newFlatMapped(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newFlatMapped(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newFlatMapped(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public newFlatMapped(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TB;",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;>;)",
            "Lscala/collection/immutable/StreamViewLike<",
            "TB;TColl;",
            "Lscala/collection/immutable/StreamView<",
            "TB;TColl;>;>.Transformed<TB;>;"
        }
    .end annotation

    .line 23
    invoke-static {p0, p1}, Lscala/collection/immutable/StreamViewLike$class;->newFlatMapped(Lscala/collection/immutable/StreamViewLike;Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newForced(Lscala/Function0;)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newForced(Lscala/Function0;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newForced(Lscala/Function0;)Lscala/collection/SeqViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newForced(Lscala/Function0;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newForced(Lscala/Function0;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newForced(Lscala/Function0;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public newForced(Lscala/Function0;)Lscala/collection/immutable/StreamViewLike$Transformed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "Lscala/collection/GenSeq<",
            "TB;>;>;)",
            "Lscala/collection/immutable/StreamViewLike<",
            "TB;TColl;",
            "Lscala/collection/immutable/StreamView<",
            "TB;TColl;>;>.Transformed<TB;>;"
        }
    .end annotation

    .line 23
    invoke-static {p0, p1}, Lscala/collection/immutable/StreamViewLike$class;->newForced(Lscala/collection/immutable/StreamViewLike;Lscala/Function0;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newMapped(Lscala/Function1;)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newMapped(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newMapped(Lscala/Function1;)Lscala/collection/SeqViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newMapped(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newMapped(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newMapped(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public newMapped(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TB;TB;>;)",
            "Lscala/collection/immutable/StreamViewLike<",
            "TB;TColl;",
            "Lscala/collection/immutable/StreamView<",
            "TB;TColl;>;>.Transformed<TB;>;"
        }
    .end annotation

    .line 23
    invoke-static {p0, p1}, Lscala/collection/immutable/StreamViewLike$class;->newMapped(Lscala/collection/immutable/StreamViewLike;Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newPatched(ILscala/collection/GenSeq;I)Lscala/collection/SeqViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newPatched(ILscala/collection/GenSeq;I)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public newPatched(ILscala/collection/GenSeq;I)Lscala/collection/immutable/StreamViewLike$Transformed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/collection/GenSeq<",
            "TB;>;I)",
            "Lscala/collection/immutable/StreamViewLike<",
            "TB;TColl;",
            "Lscala/collection/immutable/StreamView<",
            "TB;TColl;>;>.Transformed<TB;>;"
        }
    .end annotation

    .line 23
    invoke-static {p0, p1, p2, p3}, Lscala/collection/immutable/StreamViewLike$class;->newPatched(Lscala/collection/immutable/StreamViewLike;ILscala/collection/GenSeq;I)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newPrepended(Ljava/lang/Object;)Lscala/collection/SeqViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newPrepended(Ljava/lang/Object;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public newPrepended(Ljava/lang/Object;)Lscala/collection/immutable/StreamViewLike$Transformed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;)",
            "Lscala/collection/immutable/StreamViewLike<",
            "TB;TColl;",
            "Lscala/collection/immutable/StreamView<",
            "TB;TColl;>;>.Transformed<TB;>;"
        }
    .end annotation

    .line 23
    invoke-static {p0, p1}, Lscala/collection/immutable/StreamViewLike$class;->newPrepended(Lscala/collection/immutable/StreamViewLike;Ljava/lang/Object;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newReversed()Lscala/collection/SeqViewLike$Transformed;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newReversed()Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object v0

    return-object v0
.end method

.method public newReversed()Lscala/collection/immutable/StreamViewLike$Transformed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/StreamViewLike<",
            "TB;TColl;",
            "Lscala/collection/immutable/StreamView<",
            "TB;TColl;>;>.Transformed<TB;>;"
        }
    .end annotation

    .line 23
    invoke-static {p0}, Lscala/collection/immutable/StreamViewLike$class;->newReversed(Lscala/collection/immutable/StreamViewLike;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/SeqViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/immutable/StreamViewLike$Transformed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/generic/SliceInterval;",
            ")",
            "Lscala/collection/immutable/StreamViewLike<",
            "TB;TColl;",
            "Lscala/collection/immutable/StreamView<",
            "TB;TColl;>;>.Transformed<TB;>;"
        }
    .end annotation

    .line 23
    invoke-static {p0, p1}, Lscala/collection/immutable/StreamViewLike$class;->newSliced(Lscala/collection/immutable/StreamViewLike;Lscala/collection/generic/SliceInterval;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newTaken(I)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newTaken(I)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newTaken(I)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newTaken(I)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newTakenWhile(Lscala/Function1;)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newTakenWhile(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newTakenWhile(Lscala/Function1;)Lscala/collection/SeqViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newTakenWhile(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newTakenWhile(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newTakenWhile(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public newTakenWhile(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TB;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/immutable/StreamViewLike<",
            "TB;TColl;",
            "Lscala/collection/immutable/StreamView<",
            "TB;TColl;>;>.Transformed<TB;>;"
        }
    .end annotation

    .line 23
    invoke-static {p0, p1}, Lscala/collection/immutable/StreamViewLike$class;->newTakenWhile(Lscala/collection/immutable/StreamViewLike;Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newZipped(Lscala/collection/GenIterable;)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newZipped(Lscala/collection/GenIterable;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newZipped(Lscala/collection/GenIterable;)Lscala/collection/SeqViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newZipped(Lscala/collection/GenIterable;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public newZipped(Lscala/collection/GenIterable;)Lscala/collection/immutable/StreamViewLike$Transformed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TB;>;)",
            "Lscala/collection/immutable/StreamViewLike<",
            "TB;TColl;",
            "Lscala/collection/immutable/StreamView<",
            "TB;TColl;>;>.Transformed<",
            "Lscala/Tuple2<",
            "TB;TB;>;>;"
        }
    .end annotation

    .line 23
    invoke-static {p0, p1}, Lscala/collection/immutable/StreamViewLike$class;->newZipped(Lscala/collection/immutable/StreamViewLike;Lscala/collection/GenIterable;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newZippedAll(Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newZippedAll(Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newZippedAll(Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/SeqViewLike$Transformed;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->newZippedAll(Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public newZippedAll(Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/StreamViewLike$Transformed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TB;>;TA1;TB;)",
            "Lscala/collection/immutable/StreamViewLike<",
            "TB;TColl;",
            "Lscala/collection/immutable/StreamView<",
            "TB;TColl;>;>.Transformed<",
            "Lscala/Tuple2<",
            "TA1;TB;>;>;"
        }
    .end annotation

    .line 23
    invoke-static {p0, p1, p2, p3}, Lscala/collection/immutable/StreamViewLike$class;->newZippedAll(Lscala/collection/immutable/StreamViewLike;Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverse()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->reverse()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$immutable$StreamViewLike$AbstractTransformed$$$outer()Lscala/collection/immutable/StreamViewLike;
    .locals 1

    .line 23
    iget-object v0, p0, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->$outer:Lscala/collection/SeqViewLike;

    check-cast v0, Lscala/collection/immutable/StreamViewLike;

    return-object v0
.end method

.method public synthetic scala$collection$immutable$StreamViewLike$Transformed$$$outer()Lscala/collection/immutable/StreamViewLike;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->scala$collection$immutable$StreamViewLike$AbstractTransformed$$$outer()Lscala/collection/immutable/StreamViewLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic slice(II)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->slice(II)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic sortBy(Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->sortBy(Lscala/Function1;Lscala/math/Ordering;)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic sortWith(Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->sortWith(Lscala/Function2;)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic sorted(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->sorted(Lscala/math/Ordering;)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    .line 23
    invoke-static {p0}, Lscala/collection/immutable/StreamViewLike$class;->stringPrefix(Lscala/collection/immutable/StreamViewLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tail()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->tail()Lscala/collection/TraversableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic take(I)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->take(I)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic take(I)Lscala/collection/TraversableView;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->take(I)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic takeRight(I)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->takeRight(I)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic takeWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->takeWhile(Lscala/Function1;)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->thisCollection()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->thisCollection()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->toCollection(Ljava/lang/Object;)Lscala/collection/Seq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->toCollection(Ljava/lang/Object;)Lscala/collection/Seq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 23
    invoke-static {p0}, Lscala/collection/immutable/StreamViewLike$Transformed$class;->toString(Lscala/collection/immutable/StreamViewLike$Transformed;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view()Lscala/collection/IterableView;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/IterableView;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withFilter(Lscala/Function1;)Lscala/collection/generic/FilterMonadic;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;->withFilter(Lscala/Function1;)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method
