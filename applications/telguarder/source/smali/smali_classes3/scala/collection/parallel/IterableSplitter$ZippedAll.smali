.class public Lscala/collection/parallel/IterableSplitter$ZippedAll;
.super Ljava/lang/Object;
.source "RemainsIterator.scala"

# interfaces
.implements Lscala/collection/parallel/IterableSplitter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/IterableSplitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ZippedAll"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/IterableSplitter<",
        "Lscala/Tuple2<",
        "TU;TS;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/IterableSplitter;

.field private signalDelegate:Lscala/collection/generic/Signalling;

.field private final that:Lscala/collection/parallel/SeqSplitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/SeqSplitter<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final thatelem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private final thiselem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;",
            "Lscala/collection/parallel/SeqSplitter<",
            "TS;>;TU;TS;)V"
        }
    .end annotation

    .line 508
    iput-object p2, p0, Lscala/collection/parallel/IterableSplitter$ZippedAll;->that:Lscala/collection/parallel/SeqSplitter;

    iput-object p3, p0, Lscala/collection/parallel/IterableSplitter$ZippedAll;->thiselem:Ljava/lang/Object;

    iput-object p4, p0, Lscala/collection/parallel/IterableSplitter$ZippedAll;->thatelem:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/IterableSplitter$ZippedAll;->$outer:Lscala/collection/parallel/IterableSplitter;

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->$init$(Lscala/collection/TraversableOnce;)V

    invoke-static {p0}, Lscala/collection/Iterator$class;->$init$(Lscala/collection/Iterator;)V

    invoke-static {p0}, Lscala/collection/parallel/RemainsIterator$class;->$init$(Lscala/collection/parallel/RemainsIterator;)V

    invoke-static {p0}, Lscala/collection/parallel/AugmentedIterableIterator$class;->$init$(Lscala/collection/parallel/AugmentedIterableIterator;)V

    invoke-static {p0}, Lscala/collection/generic/DelegatedSignalling$class;->$init$(Lscala/collection/generic/DelegatedSignalling;)V

    invoke-static {p0}, Lscala/collection/parallel/IterableSplitter$class;->$init$(Lscala/collection/parallel/IterableSplitter;)V

    .line 510
    invoke-interface {p1}, Lscala/collection/parallel/IterableSplitter;->signalDelegate()Lscala/collection/generic/Signalling;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->signalDelegate_$eq(Lscala/collection/generic/Signalling;)V

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
            "Lscala/Tuple2<",
            "TU;TS;>;TB;TB;>;)TB;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->$colon$bslash(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

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
            "TB;",
            "Lscala/Tuple2<",
            "TU;TS;>;TB;>;)TB;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->$div$colon(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus(Lscala/Function0;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;>;)",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->$plus$plus(Lscala/collection/Iterator;Lscala/Function0;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public abort()V
    .locals 0

    .line 508
    invoke-static {p0}, Lscala/collection/generic/DelegatedSignalling$class;->abort(Lscala/collection/generic/DelegatedSignalling;)V

    return-void
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 508
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 508
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 508
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
            "TB;",
            "Lscala/Tuple2<",
            "TU;TS;>;TB;>;",
            "Lscala/Function2<",
            "TB;TB;TB;>;)TB;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableOnce$class;->aggregate(Lscala/collection/TraversableOnce;Lscala/Function0;Lscala/Function2;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public appendParIterable(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/IterableSplitter$Appended;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "PI::",
            "Lscala/collection/parallel/IterableSplitter<",
            "TU;>;>(TPI;)",
            "Lscala/collection/parallel/IterableSplitter<",
            "Lscala/Tuple2<",
            "TU;TS;>;>.Appended<TU;TPI;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/parallel/IterableSplitter$class;->appendParIterable(Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/IterableSplitter$Appended;

    move-result-object p1

    return-object p1
.end method

.method public buffered()Lscala/collection/BufferedIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/BufferedIterator<",
            "Lscala/Tuple2<",
            "TU;TS;>;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0}, Lscala/collection/Iterator$class;->buffered(Lscala/collection/Iterator;)Lscala/collection/BufferedIterator;

    move-result-object v0

    return-object v0
.end method

.method public buildString(Lscala/Function1;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Function1<",
            "Ljava/lang/String;",
            "Lscala/runtime/BoxedUnit;",
            ">;",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/parallel/IterableSplitter$class;->buildString(Lscala/collection/parallel/IterableSplitter;Lscala/Function1;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public collect(Lscala/PartialFunction;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "Lscala/Tuple2<",
            "TU;TS;>;TB;>;)",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->collect(Lscala/collection/Iterator;Lscala/PartialFunction;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public collect2combiner(Lscala/PartialFunction;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "Lscala/Tuple2<",
            "TU;TS;>;TS;>;",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->collect2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/PartialFunction;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

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
            "Lscala/Tuple2<",
            "TU;TS;>;TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->collectFirst(Lscala/collection/TraversableOnce;Lscala/PartialFunction;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 508
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->contains(Lscala/collection/Iterator;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public copy2builder(Lscala/collection/mutable/Builder;)Lscala/collection/mutable/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "Coll:",
            "Ljava/lang/Object;",
            "Bld::",
            "Lscala/collection/mutable/Builder<",
            "TU;TColl;>;>(TBld;)TBld;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedIterableIterator$class;->copy2builder(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/collection/mutable/Builder;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
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

    .line 508
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

    .line 508
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

    .line 508
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/AugmentedIterableIterator$class;->copyToArray(Lscala/collection/parallel/AugmentedIterableIterator;Ljava/lang/Object;II)V

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

    .line 508
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->copyToBuffer(Lscala/collection/TraversableOnce;Lscala/collection/mutable/Buffer;)V

    return-void
.end method

.method public corresponds(Lscala/collection/GenTraversableOnce;Lscala/Function2;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;",
            "Lscala/Function2<",
            "Lscala/Tuple2<",
            "TU;TS;>;TB;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2}, Lscala/collection/Iterator$class;->corresponds(Lscala/collection/Iterator;Lscala/collection/GenTraversableOnce;Lscala/Function2;)Z

    move-result p1

    return p1
.end method

.method public count(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TU;TS;>;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedIterableIterator$class;->count(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public debugInformation()Ljava/lang/String;
    .locals 1

    .line 508
    invoke-static {p0}, Lscala/collection/parallel/IterableSplitter$class;->debugInformation(Lscala/collection/parallel/IterableSplitter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public drop(I)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TU;TS;>;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->drop(Lscala/collection/Iterator;I)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public drop2combiner(ILscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "This:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->drop2combiner(Lscala/collection/parallel/AugmentedIterableIterator;ILscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public dropWhile(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TU;TS;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TU;TS;>;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->dropWhile(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public dup()Lscala/collection/parallel/IterableSplitter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/IterableSplitter<",
            "Lscala/Tuple2<",
            "TU;TS;>;>;"
        }
    .end annotation

    .line 518
    invoke-virtual {p0}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->scala$collection$parallel$IterableSplitter$ZippedAll$$$outer()Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/IterableSplitter;->dup()Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->that()Lscala/collection/parallel/SeqSplitter;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->thiselem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->thatelem()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lscala/collection/parallel/IterableSplitter;->zipAllParSeq(Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/IterableSplitter$ZippedAll;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Tuple2<",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TU;TS;>;>;",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TU;TS;>;>;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0}, Lscala/collection/Iterator$class;->duplicate(Lscala/collection/Iterator;)Lscala/Tuple2;

    move-result-object v0

    return-object v0
.end method

.method public exists(Lscala/Function1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TU;TS;>;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->exists(Lscala/collection/Iterator;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public filter(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TU;TS;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TU;TS;>;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->filter(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public filter2combiner(Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "This:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TU;TS;>;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->filter2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public filterNot(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TU;TS;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TU;TS;>;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->filterNot(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public filterNot2combiner(Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "This:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TU;TS;>;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->filterNot2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public find(Lscala/Function1;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TU;TS;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "TU;TS;>;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->find(Lscala/collection/Iterator;Lscala/Function1;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public flatMap(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TU;TS;>;",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;>;)",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->flatMap(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public flatmap2combiner(Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TU;TS;>;",
            "Lscala/collection/GenTraversableOnce<",
            "TS;>;>;",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->flatmap2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public fold(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;",
            "Lscala/Function2<",
            "TU;TU;TU;>;)TU;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->fold(Lscala/collection/parallel/AugmentedIterableIterator;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

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
            "TB;",
            "Lscala/Tuple2<",
            "TU;TS;>;TB;>;)TB;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->foldLeft(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

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
            "Lscala/Tuple2<",
            "TU;TS;>;TB;TB;>;)TB;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->foldRight(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public forall(Lscala/Function1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TU;TS;>;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->forall(Lscala/collection/Iterator;Lscala/Function1;)Z

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
            "Lscala/Tuple2<",
            "TU;TS;>;TU;>;)V"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->foreach(Lscala/collection/Iterator;Lscala/Function1;)V

    return-void
.end method

.method public grouped(I)Lscala/collection/Iterator$GroupedIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TU;TS;>;>.GroupedIterator<TB;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->grouped(Lscala/collection/Iterator;I)Lscala/collection/Iterator$GroupedIterator;

    move-result-object p1

    return-object p1
.end method

.method public hasDefiniteSize()Z
    .locals 1

    .line 508
    invoke-static {p0}, Lscala/collection/Iterator$class;->hasDefiniteSize(Lscala/collection/Iterator;)Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .line 511
    invoke-virtual {p0}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->scala$collection$parallel$IterableSplitter$ZippedAll$$$outer()Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/IterableSplitter;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->that()Lscala/collection/parallel/SeqSplitter;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/SeqSplitter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public indexFlag()I
    .locals 1

    .line 508
    invoke-static {p0}, Lscala/collection/generic/DelegatedSignalling$class;->indexFlag(Lscala/collection/generic/DelegatedSignalling;)I

    move-result v0

    return v0
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

    .line 508
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->indexOf(Lscala/collection/Iterator;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public indexWhere(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TU;TS;>;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->indexWhere(Lscala/collection/Iterator;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public isAborted()Z
    .locals 1

    .line 508
    invoke-static {p0}, Lscala/collection/generic/DelegatedSignalling$class;->isAborted(Lscala/collection/generic/DelegatedSignalling;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 508
    invoke-static {p0}, Lscala/collection/Iterator$class;->isEmpty(Lscala/collection/Iterator;)Z

    move-result v0

    return v0
.end method

.method public isRemainingCheap()Z
    .locals 1

    .line 508
    invoke-static {p0}, Lscala/collection/parallel/RemainsIterator$class;->isRemainingCheap(Lscala/collection/parallel/RemainsIterator;)Z

    move-result v0

    return v0
.end method

.method public isTraversableAgain()Z
    .locals 1

    .line 508
    invoke-static {p0}, Lscala/collection/Iterator$class;->isTraversableAgain(Lscala/collection/Iterator;)Z

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .line 508
    invoke-static {p0}, Lscala/collection/Iterator$class;->length(Lscala/collection/Iterator;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic map(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 0

    .line 508
    invoke-virtual {p0, p1}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->map(Lscala/Function1;)Lscala/collection/parallel/IterableSplitter$Mapped;

    move-result-object p1

    return-object p1
.end method

.method public map(Lscala/Function1;)Lscala/collection/parallel/IterableSplitter$Mapped;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TU;TS;>;TS;>;)",
            "Lscala/collection/parallel/IterableSplitter<",
            "Lscala/Tuple2<",
            "TU;TS;>;>.Mapped<TS;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/parallel/IterableSplitter$class;->map(Lscala/collection/parallel/IterableSplitter;Lscala/Function1;)Lscala/collection/parallel/IterableSplitter$Mapped;

    move-result-object p1

    return-object p1
.end method

.method public map2combiner(Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TU;TS;>;TS;>;",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->map2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public max(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 508
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedIterableIterator$class;->max(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public maxBy(Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 508
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->maxBy(Lscala/collection/TraversableOnce;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public min(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 508
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedIterableIterator$class;->min(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public minBy(Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 508
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->minBy(Lscala/collection/TraversableOnce;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public mkString()Ljava/lang/String;
    .locals 1

    .line 508
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mkString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 508
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 508
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public newSliceInternal(Lscala/collection/parallel/IterableSplitter$Taken;I)Lscala/collection/parallel/IterableSplitter$Taken;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Lscala/collection/parallel/IterableSplitter<",
            "Lscala/Tuple2<",
            "TU;TS;>;>.Taken;>(TU;I)TU;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/IterableSplitter$class;->newSliceInternal(Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/IterableSplitter$Taken;I)Lscala/collection/parallel/IterableSplitter$Taken;

    move-result-object p1

    return-object p1
.end method

.method public newTaken(I)Lscala/collection/parallel/IterableSplitter$Taken;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/parallel/IterableSplitter<",
            "Lscala/Tuple2<",
            "TU;TS;>;>.Taken;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/parallel/IterableSplitter$class;->newTaken(Lscala/collection/parallel/IterableSplitter;I)Lscala/collection/parallel/IterableSplitter$Taken;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 508
    invoke-virtual {p0}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->next()Lscala/Tuple2;

    move-result-object v0

    return-object v0
.end method

.method public next()Lscala/Tuple2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Tuple2<",
            "TU;TS;>;"
        }
    .end annotation

    .line 512
    invoke-virtual {p0}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->scala$collection$parallel$IterableSplitter$ZippedAll$$$outer()Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/IterableSplitter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    invoke-virtual {p0}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->that()Lscala/collection/parallel/SeqSplitter;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/SeqSplitter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lscala/Tuple2;

    invoke-virtual {p0}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->scala$collection$parallel$IterableSplitter$ZippedAll$$$outer()Lscala/collection/parallel/IterableSplitter;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/parallel/IterableSplitter;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->that()Lscala/collection/parallel/SeqSplitter;

    move-result-object v2

    invoke-interface {v2}, Lscala/collection/parallel/SeqSplitter;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 514
    :cond_0
    new-instance v0, Lscala/Tuple2;

    invoke-virtual {p0}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->scala$collection$parallel$IterableSplitter$ZippedAll$$$outer()Lscala/collection/parallel/IterableSplitter;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/parallel/IterableSplitter;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->thatelem()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 515
    :cond_1
    new-instance v0, Lscala/Tuple2;

    invoke-virtual {p0}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->thiselem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->that()Lscala/collection/parallel/SeqSplitter;

    move-result-object v2

    invoke-interface {v2}, Lscala/collection/parallel/SeqSplitter;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public nonEmpty()Z
    .locals 1

    .line 508
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->nonEmpty(Lscala/collection/TraversableOnce;)Z

    move-result v0

    return v0
.end method

.method public padTo(ILjava/lang/Object;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(ITA1;)",
            "Lscala/collection/Iterator<",
            "TA1;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2}, Lscala/collection/Iterator$class;->padTo(Lscala/collection/Iterator;ILjava/lang/Object;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public partition(Lscala/Function1;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TU;TS;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TU;TS;>;>;",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TU;TS;>;>;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->partition(Lscala/collection/Iterator;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public partition2combiners(Lscala/Function1;Lscala/collection/parallel/Combiner;Lscala/collection/parallel/Combiner;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "This:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TU;TS;>;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/AugmentedIterableIterator$class;->partition2combiners(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;Lscala/collection/parallel/Combiner;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public patch(ILscala/collection/Iterator;I)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/collection/Iterator<",
            "TB;>;I)",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2, p3}, Lscala/collection/Iterator$class;->patch(Lscala/collection/Iterator;ILscala/collection/Iterator;I)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public product(Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Numeric<",
            "TU;>;)TU;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedIterableIterator$class;->product(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduce(Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TU;TU;TU;>;)TU;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedIterableIterator$class;->reduce(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduceLeft(ILscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/Function2<",
            "TU;TU;TU;>;)TU;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->reduceLeft(Lscala/collection/parallel/AugmentedIterableIterator;ILscala/Function2;)Ljava/lang/Object;

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
            "TB;",
            "Lscala/Tuple2<",
            "TU;TS;>;TB;>;)TB;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceLeft(Lscala/collection/TraversableOnce;Lscala/Function2;)Ljava/lang/Object;

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
            "TB;",
            "Lscala/Tuple2<",
            "TU;TS;>;TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 508
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

    .line 508
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
            "Lscala/Tuple2<",
            "TU;TS;>;TB;TB;>;)TB;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceRight(Lscala/collection/TraversableOnce;Lscala/Function2;)Ljava/lang/Object;

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
            "Lscala/Tuple2<",
            "TU;TS;>;TB;TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceRightOption(Lscala/collection/TraversableOnce;Lscala/Function2;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public remaining()I
    .locals 3

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 517
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->scala$collection$parallel$IterableSplitter$ZippedAll$$$outer()Lscala/collection/parallel/IterableSplitter;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/parallel/IterableSplitter;->remaining()I

    move-result v1

    invoke-virtual {p0}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->that()Lscala/collection/parallel/SeqSplitter;

    move-result-object v2

    invoke-interface {v2}, Lscala/collection/parallel/SeqSplitter;->remaining()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lscala/runtime/RichInt$;->max$extension(II)I

    move-result v0

    return v0
.end method

.method public reversed()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "Lscala/Tuple2<",
            "TU;TS;>;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->reversed(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public sameElements(Lscala/collection/Iterator;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "*>;)Z"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->sameElements(Lscala/collection/Iterator;Lscala/collection/Iterator;)Z

    move-result p1

    return p1
.end method

.method public synthetic scala$collection$parallel$IterableSplitter$ZippedAll$$$outer()Lscala/collection/parallel/IterableSplitter;
    .locals 1

    .line 508
    iget-object v0, p0, Lscala/collection/parallel/IterableSplitter$ZippedAll;->$outer:Lscala/collection/parallel/IterableSplitter;

    return-object v0
.end method

.method public scanLeft(Ljava/lang/Object;Lscala/Function2;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TB;",
            "Lscala/Tuple2<",
            "TU;TS;>;TB;>;)",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2}, Lscala/collection/Iterator$class;->scanLeft(Lscala/collection/Iterator;Ljava/lang/Object;Lscala/Function2;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public scanRight(Ljava/lang/Object;Lscala/Function2;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "Lscala/Tuple2<",
            "TU;TS;>;TB;TB;>;)",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2}, Lscala/collection/Iterator$class;->scanRight(Lscala/collection/Iterator;Ljava/lang/Object;Lscala/Function2;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public scanToArray(Ljava/lang/Object;Lscala/Function2;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(TU;",
            "Lscala/Function2<",
            "TU;TU;TU;>;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/parallel/AugmentedIterableIterator$class;->scanToArray(Lscala/collection/parallel/AugmentedIterableIterator;Ljava/lang/Object;Lscala/Function2;Ljava/lang/Object;I)V

    return-void
.end method

.method public scanToCombiner(ILjava/lang/Object;Lscala/Function2;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(ITU;",
            "Lscala/Function2<",
            "TU;TU;TU;>;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThat;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/parallel/AugmentedIterableIterator$class;->scanToCombiner(Lscala/collection/parallel/AugmentedIterableIterator;ILjava/lang/Object;Lscala/Function2;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public scanToCombiner(Ljava/lang/Object;Lscala/Function2;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TU;",
            "Lscala/Function2<",
            "TU;TU;TU;>;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThat;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/AugmentedIterableIterator$class;->scanToCombiner(Lscala/collection/parallel/AugmentedIterableIterator;Ljava/lang/Object;Lscala/Function2;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public seq()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TU;TS;>;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0}, Lscala/collection/Iterator$class;->seq(Lscala/collection/Iterator;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 508
    invoke-virtual {p0}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->seq()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setIndexFlag(I)V
    .locals 0

    .line 508
    invoke-static {p0, p1}, Lscala/collection/generic/DelegatedSignalling$class;->setIndexFlag(Lscala/collection/generic/DelegatedSignalling;I)V

    return-void
.end method

.method public setIndexFlagIfGreater(I)V
    .locals 0

    .line 508
    invoke-static {p0, p1}, Lscala/collection/generic/DelegatedSignalling$class;->setIndexFlagIfGreater(Lscala/collection/generic/DelegatedSignalling;I)V

    return-void
.end method

.method public setIndexFlagIfLesser(I)V
    .locals 0

    .line 508
    invoke-static {p0, p1}, Lscala/collection/generic/DelegatedSignalling$class;->setIndexFlagIfLesser(Lscala/collection/generic/DelegatedSignalling;I)V

    return-void
.end method

.method public shouldSplitFurther(Lscala/collection/parallel/ParIterable;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/ParIterable<",
            "TS;>;I)Z"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/IterableSplitter$class;->shouldSplitFurther(Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/ParIterable;I)Z

    move-result p1

    return p1
.end method

.method public signalDelegate()Lscala/collection/generic/Signalling;
    .locals 1

    .line 508
    iget-object v0, p0, Lscala/collection/parallel/IterableSplitter$ZippedAll;->signalDelegate:Lscala/collection/generic/Signalling;

    return-object v0
.end method

.method public signalDelegate_$eq(Lscala/collection/generic/Signalling;)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 508
    iput-object p1, p0, Lscala/collection/parallel/IterableSplitter$ZippedAll;->signalDelegate:Lscala/collection/generic/Signalling;

    return-void
.end method

.method public size()I
    .locals 1

    .line 508
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->size(Lscala/collection/TraversableOnce;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic slice(II)Lscala/collection/Iterator;
    .locals 0

    .line 508
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->slice(II)Lscala/collection/parallel/IterableSplitter;

    move-result-object p1

    return-object p1
.end method

.method public slice(II)Lscala/collection/parallel/IterableSplitter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/parallel/IterableSplitter<",
            "Lscala/Tuple2<",
            "TU;TS;>;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/IterableSplitter$class;->slice(Lscala/collection/parallel/IterableSplitter;II)Lscala/collection/parallel/IterableSplitter;

    move-result-object p1

    return-object p1
.end method

.method public slice2combiner(IILscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "This:",
            "Ljava/lang/Object;",
            ">(II",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/AugmentedIterableIterator$class;->slice2combiner(Lscala/collection/parallel/AugmentedIterableIterator;IILscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public sliding(II)Lscala/collection/Iterator$GroupedIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TU;TS;>;>.GroupedIterator<TB;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2}, Lscala/collection/Iterator$class;->sliding(Lscala/collection/Iterator;II)Lscala/collection/Iterator$GroupedIterator;

    move-result-object p1

    return-object p1
.end method

.method public sliding$default$2()I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()I"
        }
    .end annotation

    .line 508
    invoke-static {p0}, Lscala/collection/Iterator$class;->sliding$default$2(Lscala/collection/Iterator;)I

    move-result v0

    return v0
.end method

.method public span(Lscala/Function1;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TU;TS;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TU;TS;>;>;",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TU;TS;>;>;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->span(Lscala/collection/Iterator;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public span2combiners(Lscala/Function1;Lscala/collection/parallel/Combiner;Lscala/collection/parallel/Combiner;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "This:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TU;TS;>;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/AugmentedIterableIterator$class;->span2combiners(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;Lscala/collection/parallel/Combiner;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public split()Lscala/collection/Seq;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/IterableSplitter<",
            "Lscala/Tuple2<",
            "TU;TS;>;>;>;"
        }
    .end annotation

    .line 520
    invoke-virtual {p0}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->scala$collection$parallel$IterableSplitter$ZippedAll$$$outer()Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/IterableSplitter;->remaining()I

    move-result v0

    .line 521
    invoke-virtual {p0}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->that()Lscala/collection/parallel/SeqSplitter;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/parallel/SeqSplitter;->remaining()I

    move-result v1

    .line 522
    invoke-virtual {p0}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->scala$collection$parallel$IterableSplitter$ZippedAll$$$outer()Lscala/collection/parallel/IterableSplitter;

    move-result-object v2

    if-ge v0, v1, :cond_0

    sget-object v3, Lscala/collection/parallel/immutable/package$;->MODULE$:Lscala/collection/parallel/immutable/package$;

    invoke-virtual {p0}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->thiselem()Ljava/lang/Object;

    move-result-object v4

    sub-int v5, v1, v0

    invoke-virtual {v3, v4, v5}, Lscala/collection/parallel/immutable/package$;->repetition(Ljava/lang/Object;I)Lscala/collection/parallel/immutable/Repetition;

    move-result-object v3

    invoke-virtual {v3}, Lscala/collection/parallel/immutable/Repetition;->splitter()Lscala/collection/parallel/immutable/Repetition$ParIterator;

    move-result-object v3

    invoke-interface {v2, v3}, Lscala/collection/parallel/IterableSplitter;->appendParIterable(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/IterableSplitter$Appended;

    move-result-object v2

    :cond_0
    if-le v0, v1, :cond_1

    .line 523
    invoke-virtual {p0}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->that()Lscala/collection/parallel/SeqSplitter;

    move-result-object v3

    sget-object v4, Lscala/collection/parallel/immutable/package$;->MODULE$:Lscala/collection/parallel/immutable/package$;

    invoke-virtual {p0}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->thatelem()Ljava/lang/Object;

    move-result-object v5

    sub-int/2addr v0, v1

    invoke-virtual {v4, v5, v0}, Lscala/collection/parallel/immutable/package$;->repetition(Ljava/lang/Object;I)Lscala/collection/parallel/immutable/Repetition;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/parallel/immutable/Repetition;->splitter()Lscala/collection/parallel/immutable/Repetition$ParIterator;

    move-result-object v0

    invoke-interface {v3, v0}, Lscala/collection/parallel/SeqSplitter;->appendParSeq(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Appended;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->that()Lscala/collection/parallel/SeqSplitter;

    move-result-object v0

    .line 524
    :goto_0
    invoke-interface {v2, v0}, Lscala/collection/parallel/IterableSplitter;->zipParSeq(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/IterableSplitter$Zipped;

    move-result-object v0

    .line 525
    invoke-virtual {v0}, Lscala/collection/parallel/IterableSplitter$Zipped;->split()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public splitAt2combiners(ILscala/collection/parallel/Combiner;Lscala/collection/parallel/Combiner;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "This:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/AugmentedIterableIterator$class;->splitAt2combiners(Lscala/collection/parallel/AugmentedIterableIterator;ILscala/collection/parallel/Combiner;Lscala/collection/parallel/Combiner;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public splitWithSignalling()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/IterableSplitter<",
            "Lscala/Tuple2<",
            "TU;TS;>;>;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0}, Lscala/collection/parallel/IterableSplitter$class;->splitWithSignalling(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public sum(Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Numeric<",
            "TU;>;)TU;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedIterableIterator$class;->sum(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public tag()I
    .locals 1

    .line 508
    invoke-static {p0}, Lscala/collection/generic/DelegatedSignalling$class;->tag(Lscala/collection/generic/DelegatedSignalling;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic take(I)Lscala/collection/Iterator;
    .locals 0

    .line 508
    invoke-virtual {p0, p1}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->take(I)Lscala/collection/parallel/IterableSplitter;

    move-result-object p1

    return-object p1
.end method

.method public take(I)Lscala/collection/parallel/IterableSplitter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/parallel/IterableSplitter<",
            "Lscala/Tuple2<",
            "TU;TS;>;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/parallel/IterableSplitter$class;->take(Lscala/collection/parallel/IterableSplitter;I)Lscala/collection/parallel/IterableSplitter;

    move-result-object p1

    return-object p1
.end method

.method public take2combiner(ILscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "This:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->take2combiner(Lscala/collection/parallel/AugmentedIterableIterator;ILscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public takeWhile(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TU;TS;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TU;TS;>;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->takeWhile(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public takeWhile2combiner(Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "This:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TU;TS;>;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->takeWhile2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public that()Lscala/collection/parallel/SeqSplitter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/SeqSplitter<",
            "TS;>;"
        }
    .end annotation

    .line 508
    iget-object v0, p0, Lscala/collection/parallel/IterableSplitter$ZippedAll;->that:Lscala/collection/parallel/SeqSplitter;

    return-object v0
.end method

.method public thatelem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 508
    iget-object v0, p0, Lscala/collection/parallel/IterableSplitter$ZippedAll;->thatelem:Ljava/lang/Object;

    return-object v0
.end method

.method public thiselem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 508
    iget-object v0, p0, Lscala/collection/parallel/IterableSplitter$ZippedAll;->thiselem:Ljava/lang/Object;

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
            "Lscala/Tuple2<",
            "TU;TS;>;TCol;>;)TCol;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->to(Lscala/collection/TraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag<",
            "TB;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->toArray(Lscala/collection/TraversableOnce;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toBuffer()Lscala/collection/mutable/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Buffer<",
            "TB;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toBuffer(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public toIndexedSeq()Lscala/collection/immutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/IndexedSeq<",
            "Lscala/Tuple2<",
            "TU;TS;>;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toIndexedSeq(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 508
    invoke-virtual {p0}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toIterable()Lscala/collection/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterable<",
            "Lscala/Tuple2<",
            "TU;TS;>;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toIterable(Lscala/collection/TraversableOnce;)Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TU;TS;>;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0}, Lscala/collection/Iterator$class;->toIterator(Lscala/collection/Iterator;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toList()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "Lscala/Tuple2<",
            "TU;TS;>;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toList(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/GenMap;
    .locals 0

    .line 508
    invoke-virtual {p0, p1}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

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
            "Lscala/Tuple2<",
            "TU;TS;>;",
            "Lscala/Tuple2<",
            "TT;TU;>;>;)",
            "Lscala/collection/immutable/Map<",
            "TT;TU;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->toMap(Lscala/collection/TraversableOnce;Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 508
    invoke-virtual {p0}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/Tuple2<",
            "TU;TS;>;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toSeq(Lscala/collection/TraversableOnce;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSet()Lscala/collection/GenSet;
    .locals 1

    .line 508
    invoke-virtual {p0}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->toSet()Lscala/collection/immutable/Set;

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

    .line 508
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
            "Lscala/Tuple2<",
            "TU;TS;>;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0}, Lscala/collection/Iterator$class;->toStream(Lscala/collection/Iterator;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 508
    invoke-static {p0}, Lscala/collection/Iterator$class;->toString(Lscala/collection/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 508
    invoke-virtual {p0}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public toTraversable()Lscala/collection/Traversable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Traversable<",
            "Lscala/Tuple2<",
            "TU;TS;>;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0}, Lscala/collection/Iterator$class;->toTraversable(Lscala/collection/Iterator;)Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public toVector()Lscala/collection/immutable/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Vector<",
            "Lscala/Tuple2<",
            "TU;TS;>;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toVector(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/Vector;

    move-result-object v0

    return-object v0
.end method

.method public withFilter(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TU;TS;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TU;TS;>;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->withFilter(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public zip(Lscala/collection/Iterator;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Iterator<",
            "TB;>;)",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "Lscala/Tuple2<",
            "TU;TS;>;TB;>;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->zip(Lscala/collection/Iterator;Lscala/collection/Iterator;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public zip2combiner(Lscala/collection/parallel/RemainsIterator;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/RemainsIterator<",
            "TS;>;",
            "Lscala/collection/parallel/Combiner<",
            "Lscala/Tuple2<",
            "TU;TS;>;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "Lscala/Tuple2<",
            "TU;TS;>;TThat;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->zip2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/collection/parallel/RemainsIterator;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public zipAll(Lscala/collection/Iterator;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "A1:",
            "Ljava/lang/Object;",
            "B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Iterator<",
            "TB;>;TA1;TB1;)",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TA1;TB1;>;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2, p3}, Lscala/collection/Iterator$class;->zipAll(Lscala/collection/Iterator;Lscala/collection/Iterator;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public zipAll2combiner(Lscala/collection/parallel/RemainsIterator;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/RemainsIterator<",
            "TS;>;TU;TS;",
            "Lscala/collection/parallel/Combiner<",
            "Lscala/Tuple2<",
            "TU;TS;>;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "Lscala/Tuple2<",
            "TU;TS;>;TThat;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/parallel/AugmentedIterableIterator$class;->zipAll2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/collection/parallel/RemainsIterator;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public zipAllParSeq(Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/IterableSplitter$ZippedAll;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/SeqSplitter<",
            "TS;>;TU;TR;)",
            "Lscala/collection/parallel/IterableSplitter<",
            "Lscala/Tuple2<",
            "TU;TS;>;>.ZippedAll<TU;TR;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/IterableSplitter$class;->zipAllParSeq(Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/IterableSplitter$ZippedAll;

    move-result-object p1

    return-object p1
.end method

.method public zipParSeq(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/IterableSplitter$Zipped;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/SeqSplitter<",
            "TS;>;)",
            "Lscala/collection/parallel/IterableSplitter<",
            "Lscala/Tuple2<",
            "TU;TS;>;>.Zipped<TS;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0, p1}, Lscala/collection/parallel/IterableSplitter$class;->zipParSeq(Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/IterableSplitter$Zipped;

    move-result-object p1

    return-object p1
.end method

.method public zipWithIndex()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "Lscala/Tuple2<",
            "TU;TS;>;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 508
    invoke-static {p0}, Lscala/collection/Iterator$class;->zipWithIndex(Lscala/collection/Iterator;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method
