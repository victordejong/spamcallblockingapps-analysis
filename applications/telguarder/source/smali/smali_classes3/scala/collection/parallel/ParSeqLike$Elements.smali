.class public abstract Lscala/collection/parallel/ParSeqLike$Elements;
.super Ljava/lang/Object;
.source "ParSeqLike.scala"

# interfaces
.implements Lscala/collection/parallel/SeqSplitter;
.implements Lscala/collection/BufferedIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/ParSeqLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Elements"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/SeqSplitter<",
        "TT;>;",
        "Lscala/collection/BufferedIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/ParSeqLike;

.field private final end:I

.field private scala$collection$parallel$ParSeqLike$Elements$$i:I

.field public final scala$collection$parallel$ParSeqLike$Elements$$start:I

.field private signalDelegate:Lscala/collection/generic/Signalling;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParSeqLike;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>;II)V"
        }
    .end annotation

    .line 64
    iput p2, p0, Lscala/collection/parallel/ParSeqLike$Elements;->scala$collection$parallel$ParSeqLike$Elements$$start:I

    iput p3, p0, Lscala/collection/parallel/ParSeqLike$Elements;->end:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$Elements;->$outer:Lscala/collection/parallel/ParSeqLike;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->$init$(Lscala/collection/TraversableOnce;)V

    invoke-static {p0}, Lscala/collection/Iterator$class;->$init$(Lscala/collection/Iterator;)V

    invoke-static {p0}, Lscala/collection/parallel/RemainsIterator$class;->$init$(Lscala/collection/parallel/RemainsIterator;)V

    invoke-static {p0}, Lscala/collection/parallel/AugmentedIterableIterator$class;->$init$(Lscala/collection/parallel/AugmentedIterableIterator;)V

    invoke-static {p0}, Lscala/collection/generic/DelegatedSignalling$class;->$init$(Lscala/collection/generic/DelegatedSignalling;)V

    invoke-static {p0}, Lscala/collection/parallel/IterableSplitter$class;->$init$(Lscala/collection/parallel/IterableSplitter;)V

    invoke-static {p0}, Lscala/collection/parallel/AugmentedSeqIterator$class;->$init$(Lscala/collection/parallel/AugmentedSeqIterator;)V

    invoke-static {p0}, Lscala/collection/parallel/SeqSplitter$class;->$init$(Lscala/collection/parallel/SeqSplitter;)V

    invoke-static {p0}, Lscala/collection/BufferedIterator$class;->$init$(Lscala/collection/BufferedIterator;)V

    .line 65
    iput p2, p0, Lscala/collection/parallel/ParSeqLike$Elements;->scala$collection$parallel$ParSeqLike$Elements$$i:I

    return-void
.end method

.method private scala$collection$parallel$ParSeqLike$Elements$$i_$eq(I)V
    .locals 0

    .line 65
    iput p1, p0, Lscala/collection/parallel/ParSeqLike$Elements;->scala$collection$parallel$ParSeqLike$Elements$$i:I

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

    .line 64
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
            "TB;TT;TB;>;)TB;"
        }
    .end annotation

    .line 64
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

    .line 64
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->$plus$plus(Lscala/collection/Iterator;Lscala/Function0;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public abort()V
    .locals 0

    .line 64
    invoke-static {p0}, Lscala/collection/generic/DelegatedSignalling$class;->abort(Lscala/collection/generic/DelegatedSignalling;)V

    return-void
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 64
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 64
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 64
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

    .line 64
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
            "TT;>.Appended<TU;TPI;>;"
        }
    .end annotation

    .line 64
    invoke-static {p0, p1}, Lscala/collection/parallel/IterableSplitter$class;->appendParIterable(Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/IterableSplitter$Appended;

    move-result-object p1

    return-object p1
.end method

.method public appendParSeq(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Appended;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "PI::",
            "Lscala/collection/parallel/SeqSplitter<",
            "TU;>;>(TPI;)",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>.Appended<TU;TPI;>;"
        }
    .end annotation

    .line 64
    invoke-static {p0, p1}, Lscala/collection/parallel/SeqSplitter$class;->appendParSeq(Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Appended;

    move-result-object p1

    return-object p1
.end method

.method public buffered()Lscala/collection/BufferedIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/BufferedIterator<",
            "TT;>;"
        }
    .end annotation

    .line 64
    invoke-static {p0}, Lscala/collection/BufferedIterator$class;->buffered(Lscala/collection/BufferedIterator;)Lscala/collection/BufferedIterator;

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

    .line 64
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
            "TT;TB;>;)",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 64
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
            "TT;TS;>;",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;"
        }
    .end annotation

    .line 64
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
            "TT;TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 64
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->collectFirst(Lscala/collection/TraversableOnce;Lscala/PartialFunction;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 64
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

    .line 64
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

    .line 64
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

    .line 64
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

    .line 64
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

    .line 64
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->copyToBuffer(Lscala/collection/TraversableOnce;Lscala/collection/mutable/Buffer;)V

    return-void
.end method

.method public corresponds(Lscala/Function2;Lscala/collection/Iterator;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TT;TS;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/Iterator<",
            "TS;>;)Z"
        }
    .end annotation

    .line 64
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedSeqIterator$class;->corresponds(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/Function2;Lscala/collection/Iterator;)Z

    move-result p1

    return p1
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
            "TT;TB;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 64
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
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 64
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedIterableIterator$class;->count(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public debugInformation()Ljava/lang/String;
    .locals 1

    .line 64
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
            "TT;>;"
        }
    .end annotation

    .line 64
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

    .line 64
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
            "TT;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 64
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->dropWhile(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dup()Lscala/collection/parallel/IterableSplitter;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Elements;->dup()Lscala/collection/parallel/ParSeqLike$Elements;

    move-result-object v0

    return-object v0
.end method

.method public dup()Lscala/collection/parallel/ParSeqLike$Elements;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>.Elements;"
        }
    .end annotation

    .line 79
    new-instance v0, Lscala/collection/parallel/ParSeqLike$Elements$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParSeqLike$Elements$$anon$1;-><init>(Lscala/collection/parallel/ParSeqLike$Elements;)V

    return-object v0
.end method

.method public bridge synthetic dup()Lscala/collection/parallel/SeqSplitter;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Elements;->dup()Lscala/collection/parallel/ParSeqLike$Elements;

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
            "TT;>;",
            "Lscala/collection/Iterator<",
            "TT;>;>;"
        }
    .end annotation

    .line 64
    invoke-static {p0}, Lscala/collection/Iterator$class;->duplicate(Lscala/collection/Iterator;)Lscala/Tuple2;

    move-result-object v0

    return-object v0
.end method

.method public end()I
    .locals 1

    .line 64
    iget v0, p0, Lscala/collection/parallel/ParSeqLike$Elements;->end:I

    return v0
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

    .line 64
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
            "TT;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 64
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
            "TT;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;"
        }
    .end annotation

    .line 64
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
            "TT;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 64
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
            "TT;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;"
        }
    .end annotation

    .line 64
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
            "TT;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    .line 64
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
            "TT;",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;>;)",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 64
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
            "TT;",
            "Lscala/collection/GenTraversableOnce<",
            "TS;>;>;",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;"
        }
    .end annotation

    .line 64
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

    .line 64
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
            "TB;TT;TB;>;)TB;"
        }
    .end annotation

    .line 64
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
            "TT;TB;TB;>;)TB;"
        }
    .end annotation

    .line 64
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
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 64
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
            "TT;TU;>;)V"
        }
    .end annotation

    .line 64
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
            "TT;>.GroupedIterator<TB;>;"
        }
    .end annotation

    .line 64
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->grouped(Lscala/collection/Iterator;I)Lscala/collection/Iterator$GroupedIterator;

    move-result-object p1

    return-object p1
.end method

.method public hasDefiniteSize()Z
    .locals 1

    .line 64
    invoke-static {p0}, Lscala/collection/Iterator$class;->hasDefiniteSize(Lscala/collection/Iterator;)Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 2

    .line 67
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Elements;->scala$collection$parallel$ParSeqLike$Elements$$i()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Elements;->end()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public head()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Elements;->scala$collection$parallel$ParSeqLike$Elements$$$outer()Lscala/collection/parallel/ParSeqLike;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Elements;->scala$collection$parallel$ParSeqLike$Elements$$i()I

    move-result v1

    invoke-interface {v0, v1}, Lscala/collection/parallel/ParSeqLike;->apply(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexFlag()I
    .locals 1

    .line 64
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

    .line 64
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
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 64
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedSeqIterator$class;->indexWhere(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public isAborted()Z
    .locals 1

    .line 64
    invoke-static {p0}, Lscala/collection/generic/DelegatedSignalling$class;->isAborted(Lscala/collection/generic/DelegatedSignalling;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 64
    invoke-static {p0}, Lscala/collection/Iterator$class;->isEmpty(Lscala/collection/Iterator;)Z

    move-result v0

    return v0
.end method

.method public isRemainingCheap()Z
    .locals 1

    .line 64
    invoke-static {p0}, Lscala/collection/parallel/RemainsIterator$class;->isRemainingCheap(Lscala/collection/parallel/RemainsIterator;)Z

    move-result v0

    return v0
.end method

.method public isTraversableAgain()Z
    .locals 1

    .line 64
    invoke-static {p0}, Lscala/collection/Iterator$class;->isTraversableAgain(Lscala/collection/Iterator;)Z

    move-result v0

    return v0
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

    .line 64
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedSeqIterator$class;->lastIndexWhere(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public length()I
    .locals 1

    .line 64
    invoke-static {p0}, Lscala/collection/Iterator$class;->length(Lscala/collection/Iterator;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic map(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$Elements;->map(Lscala/Function1;)Lscala/collection/parallel/SeqSplitter$Mapped;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic map(Lscala/Function1;)Lscala/collection/parallel/IterableSplitter$Mapped;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$Elements;->map(Lscala/Function1;)Lscala/collection/parallel/SeqSplitter$Mapped;

    move-result-object p1

    return-object p1
.end method

.method public map(Lscala/Function1;)Lscala/collection/parallel/SeqSplitter$Mapped;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TS;>;)",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>.Mapped<TS;>;"
        }
    .end annotation

    .line 64
    invoke-static {p0, p1}, Lscala/collection/parallel/SeqSplitter$class;->map(Lscala/collection/parallel/SeqSplitter;Lscala/Function1;)Lscala/collection/parallel/SeqSplitter$Mapped;

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
            "TT;TS;>;",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;"
        }
    .end annotation

    .line 64
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->map2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public max(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TU;>;)TT;"
        }
    .end annotation

    .line 64
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedIterableIterator$class;->max(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/math/Ordering;)Ljava/lang/Object;

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

    .line 64
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->maxBy(Lscala/collection/TraversableOnce;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public min(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TU;>;)TT;"
        }
    .end annotation

    .line 64
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedIterableIterator$class;->min(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/math/Ordering;)Ljava/lang/Object;

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

    .line 64
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->minBy(Lscala/collection/TraversableOnce;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public mkString()Ljava/lang/String;
    .locals 1

    .line 64
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mkString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 64
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 64
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
            "TT;>.Taken;>(TU;I)TU;"
        }
    .end annotation

    .line 64
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/IterableSplitter$class;->newSliceInternal(Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/IterableSplitter$Taken;I)Lscala/collection/parallel/IterableSplitter$Taken;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newTaken(I)Lscala/collection/parallel/IterableSplitter$Taken;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$Elements;->newTaken(I)Lscala/collection/parallel/SeqSplitter$Taken;

    move-result-object p1

    return-object p1
.end method

.method public newTaken(I)Lscala/collection/parallel/SeqSplitter$Taken;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>.Taken;"
        }
    .end annotation

    .line 64
    invoke-static {p0, p1}, Lscala/collection/parallel/SeqSplitter$class;->newTaken(Lscala/collection/parallel/SeqSplitter;I)Lscala/collection/parallel/SeqSplitter$Taken;

    move-result-object p1

    return-object p1
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Elements;->scala$collection$parallel$ParSeqLike$Elements$$i()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Elements;->end()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Elements;->scala$collection$parallel$ParSeqLike$Elements$$$outer()Lscala/collection/parallel/ParSeqLike;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Elements;->scala$collection$parallel$ParSeqLike$Elements$$i()I

    move-result v1

    invoke-interface {v0, v1}, Lscala/collection/parallel/ParSeqLike;->apply(I)Ljava/lang/Object;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Elements;->scala$collection$parallel$ParSeqLike$Elements$$i()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lscala/collection/parallel/ParSeqLike$Elements;->scala$collection$parallel$ParSeqLike$Elements$$i_$eq(I)V

    goto :goto_0

    .line 73
    :cond_0
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public nonEmpty()Z
    .locals 1

    .line 64
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

    .line 64
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
            "TT;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/Iterator<",
            "TT;>;",
            "Lscala/collection/Iterator<",
            "TT;>;>;"
        }
    .end annotation

    .line 64
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
            "TT;",
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

    .line 64
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

    .line 64
    invoke-static {p0, p1, p2, p3}, Lscala/collection/Iterator$class;->patch(Lscala/collection/Iterator;ILscala/collection/Iterator;I)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public patchParSeq(ILscala/collection/parallel/SeqSplitter;I)Lscala/collection/parallel/SeqSplitter$Patched;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/collection/parallel/SeqSplitter<",
            "TU;>;I)",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>.Patched<TU;>;"
        }
    .end annotation

    .line 64
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/SeqSplitter$class;->patchParSeq(Lscala/collection/parallel/SeqSplitter;ILscala/collection/parallel/SeqSplitter;I)Lscala/collection/parallel/SeqSplitter$Patched;

    move-result-object p1

    return-object p1
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

    .line 64
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedSeqIterator$class;->prefixLength(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/Function1;)I

    move-result p1

    return p1
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

    .line 64
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedIterableIterator$class;->product(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public psplit(Lscala/collection/Seq;)Lscala/collection/Seq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 84
    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParSeqLike$Elements$$anonfun$1;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParSeqLike$Elements$$anonfun$1;-><init>(Lscala/collection/parallel/ParSeqLike$Elements;)V

    sget-object v2, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v2}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lscala/collection/Seq;->scanLeft(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/Seq;

    .line 85
    invoke-interface {p1}, Lscala/collection/Seq;->init()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/IterableLike;

    invoke-interface {p1}, Lscala/collection/Seq;->tail()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/GenIterable;

    sget-object v1, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v1}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lscala/collection/IterableLike;->zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/TraversableLike;

    new-instance v0, Lscala/collection/parallel/ParSeqLike$Elements$$anonfun$psplit$1;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParSeqLike$Elements$$anonfun$psplit$1;-><init>(Lscala/collection/parallel/ParSeqLike$Elements;)V

    invoke-interface {p1, v0}, Lscala/collection/TraversableLike;->withFilter(Lscala/Function1;)Lscala/collection/generic/FilterMonadic;

    move-result-object p1

    new-instance v0, Lscala/collection/parallel/ParSeqLike$Elements$$anonfun$psplit$2;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParSeqLike$Elements$$anonfun$psplit$2;-><init>(Lscala/collection/parallel/ParSeqLike$Elements;)V

    sget-object v1, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v1}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lscala/collection/generic/FilterMonadic;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/Seq;

    return-object p1
.end method

.method public psplitWithSignalling(Lscala/collection/Seq;)Lscala/collection/Seq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;>;"
        }
    .end annotation

    .line 64
    invoke-static {p0, p1}, Lscala/collection/parallel/SeqSplitter$class;->psplitWithSignalling(Lscala/collection/parallel/SeqSplitter;Lscala/collection/Seq;)Lscala/collection/Seq;

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

    .line 64
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

    .line 64
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
            "TB;TT;TB;>;)TB;"
        }
    .end annotation

    .line 64
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
            "TB;TT;TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 64
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

    .line 64
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

    .line 64
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
            "TT;TB;TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 64
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceRightOption(Lscala/collection/TraversableOnce;Lscala/Function2;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public final remaining()I
    .locals 2

    .line 77
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Elements;->end()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Elements;->scala$collection$parallel$ParSeqLike$Elements$$i()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public reverse()Lscala/collection/parallel/SeqSplitter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;"
        }
    .end annotation

    .line 64
    invoke-static {p0}, Lscala/collection/parallel/SeqSplitter$class;->reverse(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter;

    move-result-object v0

    return-object v0
.end method

.method public reverse2combiner(Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "This:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;"
        }
    .end annotation

    .line 64
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedSeqIterator$class;->reverse2combiner(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public reverseMap2combiner(Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TS;>;",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;"
        }
    .end annotation

    .line 64
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedSeqIterator$class;->reverseMap2combiner(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

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

    .line 64
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

    .line 64
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->sameElements(Lscala/collection/Iterator;Lscala/collection/Iterator;)Z

    move-result p1

    return p1
.end method

.method public synthetic scala$collection$parallel$ParSeqLike$Elements$$$outer()Lscala/collection/parallel/ParSeqLike;
    .locals 1

    .line 64
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$Elements;->$outer:Lscala/collection/parallel/ParSeqLike;

    return-object v0
.end method

.method public scala$collection$parallel$ParSeqLike$Elements$$i()I
    .locals 1

    .line 65
    iget v0, p0, Lscala/collection/parallel/ParSeqLike$Elements;->scala$collection$parallel$ParSeqLike$Elements$$i:I

    return v0
.end method

.method public scanLeft(Ljava/lang/Object;Lscala/Function2;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TB;TT;TB;>;)",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 64
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
            "TT;TB;TB;>;)",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 64
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

    .line 64
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

    .line 64
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

    .line 64
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
            "TT;>;"
        }
    .end annotation

    .line 64
    invoke-static {p0}, Lscala/collection/Iterator$class;->seq(Lscala/collection/Iterator;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Elements;->seq()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setIndexFlag(I)V
    .locals 0

    .line 64
    invoke-static {p0, p1}, Lscala/collection/generic/DelegatedSignalling$class;->setIndexFlag(Lscala/collection/generic/DelegatedSignalling;I)V

    return-void
.end method

.method public setIndexFlagIfGreater(I)V
    .locals 0

    .line 64
    invoke-static {p0, p1}, Lscala/collection/generic/DelegatedSignalling$class;->setIndexFlagIfGreater(Lscala/collection/generic/DelegatedSignalling;I)V

    return-void
.end method

.method public setIndexFlagIfLesser(I)V
    .locals 0

    .line 64
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

    .line 64
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/IterableSplitter$class;->shouldSplitFurther(Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/ParIterable;I)Z

    move-result p1

    return p1
.end method

.method public signalDelegate()Lscala/collection/generic/Signalling;
    .locals 1

    .line 64
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$Elements;->signalDelegate:Lscala/collection/generic/Signalling;

    return-object v0
.end method

.method public signalDelegate_$eq(Lscala/collection/generic/Signalling;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$Elements;->signalDelegate:Lscala/collection/generic/Signalling;

    return-void
.end method

.method public size()I
    .locals 1

    .line 64
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->size(Lscala/collection/TraversableOnce;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic slice(II)Lscala/collection/Iterator;
    .locals 0

    .line 64
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/ParSeqLike$Elements;->slice(II)Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic slice(II)Lscala/collection/parallel/IterableSplitter;
    .locals 0

    .line 64
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/ParSeqLike$Elements;->slice(II)Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    return-object p1
.end method

.method public slice(II)Lscala/collection/parallel/SeqSplitter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;"
        }
    .end annotation

    .line 64
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/SeqSplitter$class;->slice(Lscala/collection/parallel/SeqSplitter;II)Lscala/collection/parallel/SeqSplitter;

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

    .line 64
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
            "TT;>.GroupedIterator<TB;>;"
        }
    .end annotation

    .line 64
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

    .line 64
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
            "TT;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/Iterator<",
            "TT;>;",
            "Lscala/collection/Iterator<",
            "TT;>;>;"
        }
    .end annotation

    .line 64
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
            "TT;",
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

    .line 64
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/AugmentedIterableIterator$class;->span2combiners(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;Lscala/collection/parallel/Combiner;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public split()Lscala/collection/Seq;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;>;"
        }
    .end annotation

    .line 81
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v1, 0x2

    new-array v2, v1, [I

    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Elements;->remaining()I

    move-result v3

    div-int/2addr v3, v1

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Elements;->remaining()I

    move-result v3

    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Elements;->remaining()I

    move-result v4

    div-int/2addr v4, v1

    sub-int/2addr v3, v4

    const/4 v1, 0x1

    aput v3, v2, v1

    invoke-virtual {v0, v2}, Lscala/Predef$;->wrapIntArray([I)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/parallel/ParSeqLike$Elements;->psplit(Lscala/collection/Seq;)Lscala/collection/Seq;

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

    .line 64
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
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;>;"
        }
    .end annotation

    .line 64
    invoke-static {p0}, Lscala/collection/parallel/SeqSplitter$class;->splitWithSignalling(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/Seq;

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

    .line 64
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedIterableIterator$class;->sum(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public tag()I
    .locals 1

    .line 64
    invoke-static {p0}, Lscala/collection/generic/DelegatedSignalling$class;->tag(Lscala/collection/generic/DelegatedSignalling;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic take(I)Lscala/collection/Iterator;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$Elements;->take(I)Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic take(I)Lscala/collection/parallel/IterableSplitter;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$Elements;->take(I)Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    return-object p1
.end method

.method public take(I)Lscala/collection/parallel/SeqSplitter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;"
        }
    .end annotation

    .line 64
    invoke-static {p0, p1}, Lscala/collection/parallel/SeqSplitter$class;->take(Lscala/collection/parallel/SeqSplitter;I)Lscala/collection/parallel/SeqSplitter;

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

    .line 64
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
            "TT;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 64
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
            "TT;",
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

    .line 64
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->takeWhile2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
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

    .line 64
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

    .line 64
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

    .line 64
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
            "TT;>;"
        }
    .end annotation

    .line 64
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toIndexedSeq(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Elements;->toIterable()Lscala/collection/Iterable;

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

    .line 64
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
            "TT;>;"
        }
    .end annotation

    .line 64
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
            "TT;>;"
        }
    .end annotation

    .line 64
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toList(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/GenMap;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$Elements;->toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

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

    .line 64
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->toMap(Lscala/collection/TraversableOnce;Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Elements;->toSeq()Lscala/collection/Seq;

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

    .line 64
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toSeq(Lscala/collection/TraversableOnce;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSet()Lscala/collection/GenSet;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Elements;->toSet()Lscala/collection/immutable/Set;

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

    .line 64
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

    .line 64
    invoke-static {p0}, Lscala/collection/Iterator$class;->toStream(Lscala/collection/Iterator;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "Elements("

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    iget v1, p0, Lscala/collection/parallel/ParSeqLike$Elements;->scala$collection$parallel$ParSeqLike$Elements$$start:I

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Elements;->end()I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Elements;->toTraversable()Lscala/collection/Traversable;

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

    .line 64
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
            "TT;>;"
        }
    .end annotation

    .line 64
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toVector(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/Vector;

    move-result-object v0

    return-object v0
.end method

.method public updated2combiner(ILjava/lang/Object;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(ITU;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThat;>;"
        }
    .end annotation

    .line 64
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/AugmentedSeqIterator$class;->updated2combiner(Lscala/collection/parallel/AugmentedSeqIterator;ILjava/lang/Object;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public withFilter(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 64
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
            "TT;TB;>;>;"
        }
    .end annotation

    .line 64
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

    .line 64
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

    .line 64
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

    .line 64
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/parallel/AugmentedIterableIterator$class;->zipAll2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/collection/parallel/RemainsIterator;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic zipAllParSeq(Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/IterableSplitter$ZippedAll;
    .locals 0

    .line 64
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/parallel/ParSeqLike$Elements;->zipAllParSeq(Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/SeqSplitter$ZippedAll;

    move-result-object p1

    return-object p1
.end method

.method public zipAllParSeq(Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/SeqSplitter$ZippedAll;
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
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>.ZippedAll<TU;TR;>;"
        }
    .end annotation

    .line 64
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/SeqSplitter$class;->zipAllParSeq(Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/SeqSplitter$ZippedAll;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic zipParSeq(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/IterableSplitter$Zipped;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$Elements;->zipParSeq(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Zipped;

    move-result-object p1

    return-object p1
.end method

.method public zipParSeq(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Zipped;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/SeqSplitter<",
            "TS;>;)",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>.Zipped<TS;>;"
        }
    .end annotation

    .line 64
    invoke-static {p0, p1}, Lscala/collection/parallel/SeqSplitter$class;->zipParSeq(Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Zipped;

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
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 64
    invoke-static {p0}, Lscala/collection/Iterator$class;->zipWithIndex(Lscala/collection/Iterator;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method
