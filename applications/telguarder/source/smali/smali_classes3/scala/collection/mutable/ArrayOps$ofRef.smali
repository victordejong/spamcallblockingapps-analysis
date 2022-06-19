.class public final Lscala/collection/mutable/ArrayOps$ofRef;
.super Ljava/lang/Object;
.source "ArrayOps.scala"

# interfaces
.implements Lscala/collection/mutable/ArrayOps;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/ArrayOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ofRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/ArrayOps<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final repr:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lscala/collection/mutable/ArrayOps$ofRef;->repr:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->$init$(Lscala/collection/TraversableOnce;)V

    invoke-static {p0}, Lscala/collection/Parallelizable$class;->$init$(Lscala/collection/Parallelizable;)V

    invoke-static {p0}, Lscala/collection/TraversableLike$class;->$init$(Lscala/collection/TraversableLike;)V

    invoke-static {p0}, Lscala/collection/IterableLike$class;->$init$(Lscala/collection/IterableLike;)V

    invoke-static {p0}, Lscala/collection/GenSeqLike$class;->$init$(Lscala/collection/GenSeqLike;)V

    invoke-static {p0}, Lscala/collection/SeqLike$class;->$init$(Lscala/collection/SeqLike;)V

    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->$init$(Lscala/collection/IndexedSeqLike;)V

    invoke-static {p0}, Lscala/collection/mutable/IndexedSeqLike$class;->$init$(Lscala/collection/mutable/IndexedSeqLike;)V

    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->$init$(Lscala/collection/IndexedSeqOptimized;)V

    invoke-static {p0}, Lscala/collection/mutable/ArrayLike$class;->$init$(Lscala/collection/mutable/ArrayLike;)V

    invoke-static {p0}, Lscala/collection/CustomParallelizable$class;->$init$(Lscala/collection/CustomParallelizable;)V

    invoke-static {p0}, Lscala/collection/mutable/ArrayOps$class;->$init$(Lscala/collection/mutable/ArrayOps;)V

    return-void
.end method


# virtual methods
.method public $colon$bslash(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TT;TB;TB;>;)TB;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->$colon$bslash(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $colon$plus(Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/collection/generic/CanBuildFrom<",
            "[TT;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->$colon$plus(Lscala/collection/SeqLike;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $colon$plus(Ljava/lang/Object;Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/reflect/ClassTag<",
            "TB;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/ArrayOps$class;->$colon$plus(Lscala/collection/mutable/ArrayOps;Ljava/lang/Object;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $div$colon(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TB;TT;TB;>;)TB;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->$div$colon(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $plus$colon(Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/collection/generic/CanBuildFrom<",
            "[TT;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->$plus$colon(Lscala/collection/SeqLike;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $plus$colon(Ljava/lang/Object;Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/reflect/ClassTag<",
            "TB;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/ArrayOps$class;->$plus$colon(Lscala/collection/mutable/ArrayOps;Ljava/lang/Object;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus(Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "[TT;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->$plus$plus(Lscala/collection/TraversableLike;Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus$colon(Lscala/collection/Traversable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Traversable<",
            "TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "[TT;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->$plus$plus$colon(Lscala/collection/TraversableLike;Lscala/collection/Traversable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus$colon(Lscala/collection/TraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/TraversableOnce<",
            "TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "[TT;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->$plus$plus$colon(Lscala/collection/TraversableLike;Lscala/collection/TraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 186
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 186
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/TraversableOnce$class;->addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public aggregate(Lscala/Function0;Lscala/Function2;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TB;>;",
            "Lscala/Function2<",
            "TB;TT;TB;>;",
            "Lscala/Function2<",
            "TB;TB;TB;>;)TB;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableOnce$class;->aggregate(Lscala/collection/TraversableOnce;Lscala/Function0;Lscala/Function2;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 193
    sget-object v0, Lscala/collection/mutable/ArrayOps$ofRef$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofRef$;

    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->repr()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lscala/collection/mutable/ArrayOps$ofRef$;->apply$extension([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 186
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->canEqual(Lscala/collection/IterableLike;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public collect(Lscala/PartialFunction;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "TT;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "[TT;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->collect(Lscala/collection/TraversableLike;Lscala/PartialFunction;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public collectFirst(Lscala/PartialFunction;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "TT;TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->collectFirst(Lscala/collection/TraversableOnce;Lscala/PartialFunction;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public combinations(I)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/Iterator<",
            "[TT;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->combinations(Lscala/collection/SeqLike;I)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(TA1;)Z"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->contains(Lscala/collection/SeqLike;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsSlice(Lscala/collection/GenSeq;)Z
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

    .line 186
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->containsSlice(Lscala/collection/SeqLike;Lscala/collection/GenSeq;)Z

    move-result p1

    return p1
.end method

.method public copyToArray(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->copyToArray(Lscala/collection/TraversableOnce;Ljava/lang/Object;)V

    return-void
.end method

.method public copyToArray(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->copyToArray(Lscala/collection/TraversableOnce;Ljava/lang/Object;I)V

    return-void
.end method

.method public copyToArray(Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2, p3}, Lscala/collection/mutable/ArrayOps$class;->copyToArray(Lscala/collection/mutable/ArrayOps;Ljava/lang/Object;II)V

    return-void
.end method

.method public copyToBuffer(Lscala/collection/mutable/Buffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/mutable/Buffer<",
            "TB;>;)V"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->copyToBuffer(Lscala/collection/TraversableOnce;Lscala/collection/mutable/Buffer;)V

    return-void
.end method

.method public corresponds(Lscala/collection/GenSeq;Lscala/Function2;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;",
            "Lscala/Function2<",
            "TT;TB;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->corresponds(Lscala/collection/SeqLike;Lscala/collection/GenSeq;Lscala/Function2;)Z

    move-result p1

    return p1
.end method

.method public count(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->count(Lscala/collection/TraversableOnce;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public deep()Lscala/collection/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/IndexedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 186
    invoke-static {p0}, Lscala/collection/mutable/ArrayLike$class;->deep(Lscala/collection/mutable/ArrayLike;)Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public diff(Lscala/collection/GenSeq;)Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->diff(Lscala/collection/SeqLike;Lscala/collection/GenSeq;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public distinct()Ljava/lang/Object;
    .locals 1

    .line 186
    invoke-static {p0}, Lscala/collection/SeqLike$class;->distinct(Lscala/collection/SeqLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public drop(I)Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->drop(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public dropRight(I)Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->dropRight(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public dropWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->dropWhile(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Ljava/lang/Object;

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

    .line 186
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->endsWith(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenSeq;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 186
    sget-object v0, Lscala/collection/mutable/ArrayOps$ofRef$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofRef$;

    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->repr()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lscala/collection/mutable/ArrayOps$ofRef$;->equals$extension([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public exists(Lscala/Function1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->exists(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public filter(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->filter(Lscala/collection/TraversableLike;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->filterNot(Lscala/collection/TraversableLike;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public find(Lscala/Function1;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->find(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public flatMap(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "[TT;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->flatMap(Lscala/collection/TraversableLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public flatten(Lscala/Function1;Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;",
            "Lscala/collection/Traversable<",
            "TU;>;>;",
            "Lscala/reflect/ClassTag<",
            "TU;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/ArrayOps$class;->flatten(Lscala/collection/mutable/ArrayOps;Lscala/Function1;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fold(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(TA1;",
            "Lscala/Function2<",
            "TA1;TA1;TA1;>;)TA1;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->fold(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

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
            "TB;TT;TB;>;)TB;"
        }
    .end annotation

    .line 186
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
            "TT;TB;TB;>;)TB;"
        }
    .end annotation

    .line 186
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
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 186
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
            "TT;TU;>;)V"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->foreach(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)V

    return-void
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 186
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayOps$ofRef;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TK;>;)",
            "Lscala/collection/immutable/Map<",
            "TK;[TT;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->groupBy(Lscala/collection/TraversableLike;Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public grouped(I)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/Iterator<",
            "[TT;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->grouped(Lscala/collection/IterableLike;I)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public hasDefiniteSize()Z
    .locals 1

    .line 186
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->hasDefiniteSize(Lscala/collection/TraversableLike;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 186
    sget-object v0, Lscala/collection/mutable/ArrayOps$ofRef$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofRef$;

    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->repr()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ArrayOps$ofRef$;->hashCode$extension([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public head()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 186
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->head(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headOption()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->headOption(Lscala/collection/TraversableLike;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;)I"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/GenSeqLike$class;->indexOf(Lscala/collection/GenSeqLike;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public indexOf(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;I)I"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/GenSeqLike$class;->indexOf(Lscala/collection/GenSeqLike;Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public indexOfSlice(Lscala/collection/GenSeq;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;)I"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->indexOfSlice(Lscala/collection/SeqLike;Lscala/collection/GenSeq;)I

    move-result p1

    return p1
.end method

.method public indexOfSlice(Lscala/collection/GenSeq;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;I)I"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->indexOfSlice(Lscala/collection/SeqLike;Lscala/collection/GenSeq;I)I

    move-result p1

    return p1
.end method

.method public indexWhere(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/GenSeqLike$class;->indexWhere(Lscala/collection/GenSeqLike;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public indexWhere(Lscala/Function1;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->indexWhere(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public indices()Lscala/collection/immutable/Range;
    .locals 1

    .line 186
    invoke-static {p0}, Lscala/collection/SeqLike$class;->indices(Lscala/collection/SeqLike;)Lscala/collection/immutable/Range;

    move-result-object v0

    return-object v0
.end method

.method public init()Ljava/lang/Object;
    .locals 1

    .line 186
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->init(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public inits()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "[TT;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->inits(Lscala/collection/TraversableLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public intersect(Lscala/collection/GenSeq;)Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->intersect(Lscala/collection/SeqLike;Lscala/collection/GenSeq;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isDefinedAt(I)Z
    .locals 0

    .line 186
    invoke-static {p0, p1}, Lscala/collection/GenSeqLike$class;->isDefinedAt(Lscala/collection/GenSeqLike;I)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 186
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->isEmpty(Lscala/collection/IndexedSeqOptimized;)Z

    move-result v0

    return v0
.end method

.method public final isTraversableAgain()Z
    .locals 1

    .line 186
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->isTraversableAgain(Lscala/collection/TraversableLike;)Z

    move-result v0

    return v0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->iterator(Lscala/collection/IndexedSeqLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 186
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->last(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;)I"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/GenSeqLike$class;->lastIndexOf(Lscala/collection/GenSeqLike;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;I)I"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/GenSeqLike$class;->lastIndexOf(Lscala/collection/GenSeqLike;Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public lastIndexOfSlice(Lscala/collection/GenSeq;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;)I"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->lastIndexOfSlice(Lscala/collection/SeqLike;Lscala/collection/GenSeq;)I

    move-result p1

    return p1
.end method

.method public lastIndexOfSlice(Lscala/collection/GenSeq;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;I)I"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->lastIndexOfSlice(Lscala/collection/SeqLike;Lscala/collection/GenSeq;I)I

    move-result p1

    return p1
.end method

.method public lastIndexWhere(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/GenSeqLike$class;->lastIndexWhere(Lscala/collection/GenSeqLike;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public lastIndexWhere(Lscala/Function1;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->lastIndexWhere(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public lastOption()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->lastOption(Lscala/collection/TraversableLike;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 2

    .line 192
    sget-object v0, Lscala/collection/mutable/ArrayOps$ofRef$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofRef$;

    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->repr()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ArrayOps$ofRef$;->length$extension([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lengthCompare(I)I
    .locals 0

    .line 186
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->lengthCompare(Lscala/collection/IndexedSeqOptimized;I)I

    move-result p1

    return p1
.end method

.method public map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "[TT;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->map(Lscala/collection/TraversableLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public max(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TB;>;)TT;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->max(Lscala/collection/TraversableOnce;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public maxBy(Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TB;>;",
            "Lscala/math/Ordering<",
            "TB;>;)TT;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->maxBy(Lscala/collection/TraversableOnce;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public min(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TB;>;)TT;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->min(Lscala/collection/TraversableOnce;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public minBy(Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TB;>;",
            "Lscala/math/Ordering<",
            "TB;>;)TT;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->minBy(Lscala/collection/TraversableOnce;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public mkString()Ljava/lang/String;
    .locals 1

    .line 186
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mkString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 186
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 186
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public newBuilder()Lscala/collection/mutable/ArrayBuilder$ofRef;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/ArrayBuilder$ofRef<",
            "TT;>;"
        }
    .end annotation

    .line 190
    sget-object v0, Lscala/collection/mutable/ArrayOps$ofRef$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofRef$;

    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->repr()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ArrayOps$ofRef$;->newBuilder$extension([Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuilder$ofRef;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lscala/collection/mutable/Builder;
    .locals 2

    sget-object v0, Lscala/collection/mutable/ArrayOps$ofRef$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofRef$;

    .line 186
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->repr()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ArrayOps$ofRef$;->newBuilder$extension([Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuilder$ofRef;

    move-result-object v0

    return-object v0
.end method

.method public nonEmpty()Z
    .locals 1

    .line 186
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->nonEmpty(Lscala/collection/TraversableOnce;)Z

    move-result v0

    return v0
.end method

.method public padTo(ILjava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(ITB;",
            "Lscala/collection/generic/CanBuildFrom<",
            "[TT;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2, p3}, Lscala/collection/SeqLike$class;->padTo(Lscala/collection/SeqLike;ILjava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic par()Lscala/collection/Parallel;
    .locals 1

    .line 186
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->par()Lscala/collection/parallel/mutable/ParArray;

    move-result-object v0

    return-object v0
.end method

.method public par()Lscala/collection/parallel/mutable/ParArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0}, Lscala/collection/mutable/ArrayOps$class;->par(Lscala/collection/mutable/ArrayOps;)Lscala/collection/parallel/mutable/ParArray;

    move-result-object v0

    return-object v0
.end method

.method public parCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TT;",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0}, Lscala/collection/CustomParallelizable$class;->parCombiner(Lscala/collection/CustomParallelizable;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public partition(Lscala/Function1;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "[TT;[TT;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->partition(Lscala/collection/TraversableLike;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public patch(ILscala/collection/GenSeq;ILscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/collection/GenSeq<",
            "TB;>;I",
            "Lscala/collection/generic/CanBuildFrom<",
            "[TT;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/SeqLike$class;->patch(Lscala/collection/SeqLike;ILscala/collection/GenSeq;ILscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public permutations()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "[TT;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0}, Lscala/collection/SeqLike$class;->permutations(Lscala/collection/SeqLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixLength(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/GenSeqLike$class;->prefixLength(Lscala/collection/GenSeqLike;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public product(Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Numeric<",
            "TB;>;)TB;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->product(Lscala/collection/TraversableOnce;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduce(Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TA1;TA1;TA1;>;)TA1;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduce(Lscala/collection/TraversableOnce;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduceLeft(Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TB;TT;TB;>;)TB;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->reduceLeft(Lscala/collection/IndexedSeqOptimized;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduceLeftOption(Lscala/Function2;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TB;TT;TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceLeftOption(Lscala/collection/TraversableOnce;Lscala/Function2;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public reduceOption(Lscala/Function2;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TA1;TA1;TA1;>;)",
            "Lscala/Option<",
            "TA1;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceOption(Lscala/collection/TraversableOnce;Lscala/Function2;)Lscala/Option;

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
            "TT;TB;TB;>;)TB;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->reduceRight(Lscala/collection/IndexedSeqOptimized;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduceRightOption(Lscala/Function2;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TT;TB;TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceRightOption(Lscala/collection/TraversableOnce;Lscala/Function2;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic repr()Ljava/lang/Object;
    .locals 1

    .line 186
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->repr()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public repr()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lscala/collection/mutable/ArrayOps$ofRef;->repr:[Ljava/lang/Object;

    return-object v0
.end method

.method public reverse()Ljava/lang/Object;
    .locals 1

    .line 186
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->reverse(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reverseIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->reverseIterator(Lscala/collection/IndexedSeqOptimized;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public reverseMap(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "[TT;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->reverseMap(Lscala/collection/SeqLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reversed()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "TT;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->reversed(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/List;

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

    .line 186
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->sameElements(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenIterable;)Z

    move-result p1

    return p1
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$endsWith(Lscala/collection/GenSeq;)Z
    .locals 0

    .line 186
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->endsWith(Lscala/collection/SeqLike;Lscala/collection/GenSeq;)Z

    move-result p1

    return p1
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$head()Ljava/lang/Object;
    .locals 1

    .line 186
    invoke-static {p0}, Lscala/collection/IterableLike$class;->head(Lscala/collection/IterableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$init()Ljava/lang/Object;
    .locals 1

    .line 186
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->init(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$last()Ljava/lang/Object;
    .locals 1

    .line 186
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->last(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$reduceLeft(Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceLeft(Lscala/collection/TraversableOnce;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$reduceRight(Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->reduceRight(Lscala/collection/IterableLike;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$sameElements(Lscala/collection/GenIterable;)Z
    .locals 0

    .line 186
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->sameElements(Lscala/collection/IterableLike;Lscala/collection/GenIterable;)Z

    move-result p1

    return p1
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$tail()Ljava/lang/Object;
    .locals 1

    .line 186
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->tail(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/IterableLike$class;->zip(Lscala/collection/IterableLike;Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$mutable$ArrayOps$$super$toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->toArray(Lscala/collection/TraversableOnce;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public scan(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TB;TB;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "[TT;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableLike$class;->scan(Lscala/collection/TraversableLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public scanLeft(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TB;TT;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "[TT;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableLike$class;->scanLeft(Lscala/collection/TraversableLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public scanRight(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TT;TB;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "[TT;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableLike$class;->scanRight(Lscala/collection/TraversableLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public segmentLength(Lscala/Function1;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->segmentLength(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic seq()Lscala/collection/IndexedSeq;
    .locals 1

    .line 186
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .line 186
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 186
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/mutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/IndexedSeq<",
            "TT;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0}, Lscala/collection/mutable/ArrayOps$class;->seq(Lscala/collection/mutable/ArrayOps;)Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 186
    invoke-static {p0}, Lscala/collection/SeqLike$class;->size(Lscala/collection/SeqLike;)I

    move-result v0

    return v0
.end method

.method public slice(II)Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->slice(Lscala/collection/IndexedSeqOptimized;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public sliceWithKnownBound(II)Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->sliceWithKnownBound(Lscala/collection/TraversableLike;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public sliceWithKnownDelta(III)Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableLike$class;->sliceWithKnownDelta(Lscala/collection/TraversableLike;III)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public sliding(I)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/Iterator<",
            "[TT;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->sliding(Lscala/collection/IterableLike;I)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public sliding(II)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/Iterator<",
            "[TT;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/IterableLike$class;->sliding(Lscala/collection/IterableLike;II)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public sortBy(Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->sortBy(Lscala/collection/SeqLike;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public sortWith(Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->sortWith(Lscala/collection/SeqLike;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public sorted(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->sorted(Lscala/collection/SeqLike;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public span(Lscala/Function1;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "[TT;[TT;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->span(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public splitAt(I)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Tuple2<",
            "[TT;[TT;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->splitAt(Lscala/collection/IndexedSeqOptimized;I)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public startsWith(Lscala/collection/GenSeq;)Z
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

    .line 186
    invoke-static {p0, p1}, Lscala/collection/GenSeqLike$class;->startsWith(Lscala/collection/GenSeqLike;Lscala/collection/GenSeq;)Z

    move-result p1

    return p1
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

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->startsWith(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenSeq;I)Z

    move-result p1

    return p1
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    .line 186
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->stringPrefix(Lscala/collection/TraversableLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sum(Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Numeric<",
            "TB;>;)TB;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->sum(Lscala/collection/TraversableOnce;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public tail()Ljava/lang/Object;
    .locals 1

    .line 186
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->tail(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public tails()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "[TT;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->tails(Lscala/collection/TraversableLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public take(I)Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->take(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public takeRight(I)Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->takeRight(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public takeWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->takeWhile(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thisCollection()Lscala/collection/IndexedSeq;
    .locals 2

    sget-object v0, Lscala/collection/mutable/ArrayOps$ofRef$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofRef$;

    .line 186
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->repr()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ArrayOps$ofRef$;->thisCollection$extension([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 2

    sget-object v0, Lscala/collection/mutable/ArrayOps$ofRef$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofRef$;

    .line 186
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->repr()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ArrayOps$ofRef$;->thisCollection$extension([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Seq;
    .locals 2

    sget-object v0, Lscala/collection/mutable/ArrayOps$ofRef$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofRef$;

    .line 186
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->repr()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ArrayOps$ofRef$;->thisCollection$extension([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 2

    sget-object v0, Lscala/collection/mutable/ArrayOps$ofRef$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofRef$;

    .line 186
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->repr()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ArrayOps$ofRef$;->thisCollection$extension([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/mutable/IndexedSeq;
    .locals 2

    sget-object v0, Lscala/collection/mutable/ArrayOps$ofRef$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofRef$;

    .line 186
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->repr()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ArrayOps$ofRef$;->thisCollection$extension([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    return-object v0
.end method

.method public thisCollection()Lscala/collection/mutable/WrappedArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/WrappedArray<",
            "TT;>;"
        }
    .end annotation

    .line 188
    sget-object v0, Lscala/collection/mutable/ArrayOps$ofRef$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofRef$;

    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->repr()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ArrayOps$ofRef$;->thisCollection$extension([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    return-object v0
.end method

.method public to(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Col:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/runtime/Nothing$;",
            "TT;TCol;>;)TCol;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->to(Lscala/collection/TraversableLike;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag<",
            "TU;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/mutable/ArrayOps$class;->toArray(Lscala/collection/mutable/ArrayOps;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    .line 186
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->toBuffer(Lscala/collection/IndexedSeqLike;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;
    .locals 2

    sget-object v0, Lscala/collection/mutable/ArrayOps$ofRef$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofRef$;

    .line 186
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->repr()[Ljava/lang/Object;

    move-result-object v1

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lscala/collection/mutable/ArrayOps$ofRef$;->toCollection$extension([Ljava/lang/Object;[Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;
    .locals 2

    sget-object v0, Lscala/collection/mutable/ArrayOps$ofRef$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofRef$;

    .line 186
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->repr()[Ljava/lang/Object;

    move-result-object v1

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lscala/collection/mutable/ArrayOps$ofRef$;->toCollection$extension([Ljava/lang/Object;[Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Seq;
    .locals 2

    sget-object v0, Lscala/collection/mutable/ArrayOps$ofRef$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofRef$;

    .line 186
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->repr()[Ljava/lang/Object;

    move-result-object v1

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lscala/collection/mutable/ArrayOps$ofRef$;->toCollection$extension([Ljava/lang/Object;[Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 2

    sget-object v0, Lscala/collection/mutable/ArrayOps$ofRef$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofRef$;

    .line 186
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->repr()[Ljava/lang/Object;

    move-result-object v1

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lscala/collection/mutable/ArrayOps$ofRef$;->toCollection$extension([Ljava/lang/Object;[Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/mutable/IndexedSeq;
    .locals 2

    sget-object v0, Lscala/collection/mutable/ArrayOps$ofRef$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofRef$;

    .line 186
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->repr()[Ljava/lang/Object;

    move-result-object v1

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lscala/collection/mutable/ArrayOps$ofRef$;->toCollection$extension([Ljava/lang/Object;[Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    return-object p1
.end method

.method public toCollection([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Lscala/collection/mutable/WrappedArray<",
            "TT;>;"
        }
    .end annotation

    .line 189
    sget-object v0, Lscala/collection/mutable/ArrayOps$ofRef$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofRef$;

    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->repr()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lscala/collection/mutable/ArrayOps$ofRef$;->toCollection$extension([Ljava/lang/Object;[Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    return-object p1
.end method

.method public toIndexedSeq()Lscala/collection/immutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/IndexedSeq<",
            "TT;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toIndexedSeq(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 186
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toIterable()Lscala/collection/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0}, Lscala/collection/IterableLike$class;->toIterable(Lscala/collection/IterableLike;)Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0}, Lscala/collection/IterableLike$class;->toIterator(Lscala/collection/IterableLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toList()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "TT;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toList(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/GenMap;
    .locals 0

    .line 186
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayOps$ofRef;->toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Predef$$less$colon$less<",
            "TT;",
            "Lscala/Tuple2<",
            "TT;TU;>;>;)",
            "Lscala/collection/immutable/Map<",
            "TT;TU;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->toMap(Lscala/collection/TraversableOnce;Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 186
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "TT;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0}, Lscala/collection/SeqLike$class;->toSeq(Lscala/collection/SeqLike;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSet()Lscala/collection/GenSet;
    .locals 1

    .line 186
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->toSet()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public toSet()Lscala/collection/immutable/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/Set<",
            "TB;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toSet(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public toStream()Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0}, Lscala/collection/IterableLike$class;->toStream(Lscala/collection/IterableLike;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 186
    invoke-static {p0}, Lscala/collection/SeqLike$class;->toString(Lscala/collection/SeqLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 186
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public toTraversable()Lscala/collection/Traversable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Traversable<",
            "TT;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->toTraversable(Lscala/collection/TraversableLike;)Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public toVector()Lscala/collection/immutable/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Vector<",
            "TT;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toVector(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/Vector;

    move-result-object v0

    return-object v0
.end method

.method public transpose(Lscala/Function1;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/mutable/ArrayOps$class;->transpose(Lscala/collection/mutable/ArrayOps;Lscala/Function1;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public union(Lscala/collection/GenSeq;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "[TT;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->union(Lscala/collection/SeqLike;Lscala/collection/GenSeq;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public unzip(Lscala/Function1;Lscala/reflect/ClassTag;Lscala/reflect/ClassTag;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;",
            "Lscala/Tuple2<",
            "TT1;TT2;>;>;",
            "Lscala/reflect/ClassTag<",
            "TT1;>;",
            "Lscala/reflect/ClassTag<",
            "TT2;>;)",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2, p3}, Lscala/collection/mutable/ArrayOps$class;->unzip(Lscala/collection/mutable/ArrayOps;Lscala/Function1;Lscala/reflect/ClassTag;Lscala/reflect/ClassTag;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public unzip3(Lscala/Function1;Lscala/reflect/ClassTag;Lscala/reflect/ClassTag;Lscala/reflect/ClassTag;)Lscala/Tuple3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;",
            "Lscala/Tuple3<",
            "TT1;TT2;TT3;>;>;",
            "Lscala/reflect/ClassTag<",
            "TT1;>;",
            "Lscala/reflect/ClassTag<",
            "TT2;>;",
            "Lscala/reflect/ClassTag<",
            "TT3;>;)",
            "Lscala/Tuple3<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/mutable/ArrayOps$class;->unzip3(Lscala/collection/mutable/ArrayOps;Lscala/Function1;Lscala/reflect/ClassTag;Lscala/reflect/ClassTag;Lscala/reflect/ClassTag;)Lscala/Tuple3;

    move-result-object p1

    return-object p1
.end method

.method public update(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 194
    sget-object v0, Lscala/collection/mutable/ArrayOps$ofRef$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofRef$;

    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->repr()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lscala/collection/mutable/ArrayOps$ofRef$;->update$extension([Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public updated(ILjava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(ITB;",
            "Lscala/collection/generic/CanBuildFrom<",
            "[TT;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2, p3}, Lscala/collection/SeqLike$class;->updated(Lscala/collection/SeqLike;ILjava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/IterableView;
    .locals 1

    .line 186
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->view()Lscala/collection/mutable/IndexedSeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/IterableView;
    .locals 0

    .line 186
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/ArrayOps$ofRef;->view(II)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/SeqView;
    .locals 1

    .line 186
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->view()Lscala/collection/mutable/IndexedSeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/SeqView;
    .locals 0

    .line 186
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/ArrayOps$ofRef;->view(II)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 186
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->view()Lscala/collection/mutable/IndexedSeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 186
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/ArrayOps$ofRef;->view(II)Lscala/collection/mutable/IndexedSeqView;

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

    .line 186
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
            "TT;[TT;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/IndexedSeqLike$class;->view(Lscala/collection/mutable/IndexedSeqLike;II)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public withFilter(Lscala/Function1;)Lscala/collection/generic/FilterMonadic;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/generic/FilterMonadic<",
            "TT;[TT;>;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->withFilter(Lscala/collection/TraversableLike;Lscala/Function1;)Lscala/collection/generic/FilterMonadic;

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
            "[TT;",
            "Lscala/Tuple2<",
            "TA1;TB;>;TThat;>;)TThat;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->zip(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public zipAll(Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "A1:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TB;>;TA1;TB;",
            "Lscala/collection/generic/CanBuildFrom<",
            "[TT;",
            "Lscala/Tuple2<",
            "TA1;TB;>;TThat;>;)TThat;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/IterableLike$class;->zipAll(Lscala/collection/IterableLike;Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

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
            "[TT;",
            "Lscala/Tuple2<",
            "TA1;",
            "Ljava/lang/Object;",
            ">;TThat;>;)TThat;"
        }
    .end annotation

    .line 186
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->zipWithIndex(Lscala/collection/IndexedSeqOptimized;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
