.class public Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;
.super Ljava/lang/Object;
.source "ParArray.scala"

# interfaces
.implements Lscala/collection/parallel/SeqSplitter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/mutable/ParArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParArrayIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/SeqSplitter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/mutable/ParArray;

.field private final arr:[Ljava/lang/Object;

.field private i:I

.field private signalDelegate:Lscala/collection/generic/Signalling;

.field private final until:I


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParArray;II[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>;II[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 86
    iput p2, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i:I

    iput p3, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until:I

    iput-object p4, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->arr:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->$outer:Lscala/collection/parallel/mutable/ParArray;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->$init$(Lscala/collection/TraversableOnce;)V

    invoke-static {p0}, Lscala/collection/Iterator$class;->$init$(Lscala/collection/Iterator;)V

    invoke-static {p0}, Lscala/collection/parallel/RemainsIterator$class;->$init$(Lscala/collection/parallel/RemainsIterator;)V

    invoke-static {p0}, Lscala/collection/parallel/AugmentedIterableIterator$class;->$init$(Lscala/collection/parallel/AugmentedIterableIterator;)V

    invoke-static {p0}, Lscala/collection/generic/DelegatedSignalling$class;->$init$(Lscala/collection/generic/DelegatedSignalling;)V

    invoke-static {p0}, Lscala/collection/parallel/IterableSplitter$class;->$init$(Lscala/collection/parallel/IterableSplitter;)V

    invoke-static {p0}, Lscala/collection/parallel/AugmentedSeqIterator$class;->$init$(Lscala/collection/parallel/AugmentedSeqIterator;)V

    invoke-static {p0}, Lscala/collection/parallel/SeqSplitter$class;->$init$(Lscala/collection/parallel/SeqSplitter;)V

    return-void
.end method

.method private collect2combiner_quick(Lscala/PartialFunction;[Ljava/lang/Object;Lscala/collection/mutable/Builder;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "TT;TS;>;[",
            "Ljava/lang/Object;",
            "Lscala/collection/mutable/Builder<",
            "TS;TThat;>;II)V"
        }
    .end annotation

    .line 406
    new-instance v0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$2;

    invoke-direct {v0, p0, p3}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$2;-><init>(Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;Lscala/collection/mutable/Builder;)V

    invoke-interface {p1, v0}, Lscala/PartialFunction;->runWith(Lscala/Function1;)Lscala/Function1;

    move-result-object p1

    :goto_0
    if-ge p5, p4, :cond_0

    .line 408
    aget-object p3, p2, p5

    .line 409
    invoke-interface {p1, p3}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private count_quick(Lscala/Function1;[Ljava/lang/Object;II)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            "II)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge p4, p3, :cond_1

    .line 158
    aget-object v1, p2, p4

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private exists_quick(Lscala/Function1;[Ljava/lang/Object;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            "II)Z"
        }
    .end annotation

    :goto_0
    if-ge p4, p3, :cond_1

    .line 267
    aget-object v0, p2, p4

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private filter2combiner_quick(Lscala/Function1;Lscala/collection/mutable/Builder;[Ljava/lang/Object;II)V
    .locals 2
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
            "Lscala/collection/mutable/Builder<",
            "TU;TThis;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 432
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result p5

    :goto_0
    if-ge p5, p4, :cond_1

    .line 434
    aget-object v0, p3, p5

    .line 435
    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2, v0}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_1

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_1
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private filterNot2combiner_quick(Lscala/Function1;Lscala/collection/mutable/Builder;[Ljava/lang/Object;II)V
    .locals 2
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
            "Lscala/collection/mutable/Builder<",
            "TU;TThis;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 447
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result p5

    :goto_0
    if-ge p5, p4, :cond_1

    .line 449
    aget-object v0, p3, p5

    .line 450
    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_1

    :cond_0
    invoke-interface {p2, v0}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    :goto_1
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private find_quick(Lscala/Function1;[Ljava/lang/Object;II)Lscala/Option;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            "II)",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    :goto_0
    if-ge p4, p3, :cond_1

    .line 295
    aget-object v0, p2, p4

    .line 296
    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lscala/Some;

    invoke-direct {p1, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 299
    :cond_1
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    return-object p1
.end method

.method private foldLeft_quick([Ljava/lang/Object;ILscala/Function2;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I",
            "Lscala/Function2<",
            "TS;TT;TS;>;TS;)TS;"
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 174
    aget-object v1, p1, v0

    invoke-interface {p3, p4, v1}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p4
.end method

.method private forall_quick(Lscala/Function1;[Ljava/lang/Object;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            "II)Z"
        }
    .end annotation

    :goto_0
    if-ge p4, p3, :cond_1

    .line 239
    aget-object v0, p2, p4

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private foreach_quick(Lscala/Function1;[Ljava/lang/Object;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TU;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    :goto_0
    if-ge p4, p3, :cond_0

    .line 143
    aget-object v0, p2, p4

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private indexWhere_quick(Lscala/Function1;[Ljava/lang/Object;II)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            "II)I"
        }
    .end annotation

    const/4 v0, -0x1

    :goto_0
    if-ge p4, p3, :cond_1

    .line 340
    aget-object v1, p2, p4

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, p4

    move p4, p3

    goto :goto_0

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private lastIndexWhere_quick(Lscala/Function1;[Ljava/lang/Object;II)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            "II)I"
        }
    .end annotation

    add-int/lit8 p4, p4, -0x1

    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_0
    if-lt p4, p3, :cond_1

    .line 359
    aget-object v2, p2, p4

    invoke-interface {p1, v2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, p4

    const/4 p4, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private map2combiner_quick(Lscala/Function1;[Ljava/lang/Object;Lscala/collection/mutable/Builder;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TS;>;[",
            "Ljava/lang/Object;",
            "Lscala/collection/mutable/Builder<",
            "TS;TThat;>;II)V"
        }
    .end annotation

    :goto_0
    if-ge p5, p4, :cond_0

    .line 392
    aget-object v0, p2, p5

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private partition2combiners_quick(Lscala/Function1;Lscala/collection/mutable/Builder;Lscala/collection/mutable/Builder;[Ljava/lang/Object;II)V
    .locals 2
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
            "Lscala/collection/mutable/Builder<",
            "TU;TThis;>;",
            "Lscala/collection/mutable/Builder<",
            "TU;TThis;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    :goto_0
    if-ge p6, p5, :cond_1

    .line 496
    aget-object v0, p4, p6

    .line 497
    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2, v0}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_1

    :cond_0
    invoke-interface {p3, v0}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    :goto_1
    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private prefixLength_quick(Lscala/Function1;[Ljava/lang/Object;II)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            "II)I"
        }
    .end annotation

    move v0, p3

    move p3, p4

    :goto_0
    if-ge p3, v0, :cond_1

    .line 323
    aget-object v1, p2, p3

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    move v0, p3

    goto :goto_0

    :cond_1
    sub-int/2addr v0, p4

    return v0
.end method

.method private product_quick(Lscala/math/Numeric;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Numeric<",
            "TU;>;[",
            "Ljava/lang/Object;",
            "IITU;)TU;"
        }
    .end annotation

    :goto_0
    if-ge p4, p3, :cond_0

    .line 210
    aget-object v0, p2, p4

    invoke-interface {p1, p5, v0}, Lscala/math/Numeric;->times(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-object p5
.end method

.method private sum_quick(Lscala/math/Numeric;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Numeric<",
            "TU;>;[",
            "Ljava/lang/Object;",
            "IITU;)TU;"
        }
    .end annotation

    :goto_0
    if-ge p4, p3, :cond_0

    .line 194
    aget-object v0, p2, p4

    invoke-interface {p1, p5, v0}, Lscala/math/Numeric;->plus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-object p5
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

    .line 86
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

    .line 86
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

    .line 86
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->$plus$plus(Lscala/collection/Iterator;Lscala/Function0;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public abort()V
    .locals 0

    .line 86
    invoke-static {p0}, Lscala/collection/generic/DelegatedSignalling$class;->abort(Lscala/collection/generic/DelegatedSignalling;)V

    return-void
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 86
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 86
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 86
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/TraversableOnce$class;->addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public aggregate(Lscala/Function0;Lscala/Function2;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TS;>;",
            "Lscala/Function2<",
            "TS;TT;TS;>;",
            "Lscala/Function2<",
            "TS;TS;TS;>;)TS;"
        }
    .end annotation

    .line 182
    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

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

    .line 86
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

    .line 86
    invoke-static {p0, p1}, Lscala/collection/parallel/SeqSplitter$class;->appendParSeq(Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Appended;

    move-result-object p1

    return-object p1
.end method

.method public arr()[Ljava/lang/Object;
    .locals 1

    .line 86
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->arr:[Ljava/lang/Object;

    return-object v0
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

    .line 86
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

    .line 86
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

    .line 86
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->collect(Lscala/collection/Iterator;Lscala/PartialFunction;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public collect2combiner(Lscala/PartialFunction;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 6
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

    .line 399
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->arr()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v4

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->collect2combiner_quick(Lscala/PartialFunction;[Ljava/lang/Object;Lscala/collection/mutable/Builder;II)V

    .line 400
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i_$eq(I)V

    return-object p2
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

    .line 86
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->collectFirst(Lscala/collection/TraversableOnce;Lscala/PartialFunction;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 86
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->contains(Lscala/collection/Iterator;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public copy2builder(Lscala/collection/mutable/Builder;)Lscala/collection/mutable/Builder;
    .locals 4
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

    .line 456
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->remaining()I

    move-result v0

    invoke-interface {p1, v0}, Lscala/collection/mutable/Builder;->sizeHint(I)V

    .line 457
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->scala$collection$parallel$mutable$ParArray$ParArrayIterator$$$outer()Lscala/collection/parallel/mutable/ParArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/parallel/mutable/ParArray;->builder2ops(Lscala/collection/mutable/Builder;)Lscala/collection/parallel/ParIterableLike$BuilderOps;

    move-result-object v0

    .line 458
    new-instance v1, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$2;

    invoke-direct {v1, p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$2;-><init>(Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;)V

    .line 457
    invoke-interface {v0, v1}, Lscala/collection/parallel/ParIterableLike$BuilderOps;->ifIs(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$BuilderOps$Otherwise;

    move-result-object v0

    .line 471
    new-instance v1, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;-><init>(Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;Lscala/collection/mutable/Builder;)V

    .line 463
    sget-object v2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    const-class v3, Lscala/collection/parallel/mutable/ResizableParArrayCombiner;

    invoke-virtual {v2, v3}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lscala/collection/parallel/ParIterableLike$BuilderOps$Otherwise;->otherwise(Lscala/Function0;Lscala/reflect/ClassTag;)V

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

    .line 86
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

    .line 86
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->copyToArray(Lscala/collection/TraversableOnce;Ljava/lang/Object;I)V

    return-void
.end method

.method public copyToArray(Ljava/lang/Object;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 308
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->scala$collection$parallel$mutable$ParArray$ParArrayIterator$$$outer()Lscala/collection/parallel/mutable/ParArray;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/parallel/mutable/ParArray;->length()I

    move-result v2

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2, p3}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result p3

    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v1, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {v0, p3, v1}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result p3

    .line 309
    sget-object v2, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->arr()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v4

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result p1

    add-int/2addr p1, p3

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i_$eq(I)V

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

    .line 86
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

    .line 86
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

    .line 86
    invoke-static {p0, p1, p2}, Lscala/collection/Iterator$class;->corresponds(Lscala/collection/Iterator;Lscala/collection/GenTraversableOnce;Lscala/Function2;)Z

    move-result p1

    return p1
.end method

.method public count(Lscala/Function1;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->arr()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v1

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->count_quick(Lscala/Function1;[Ljava/lang/Object;II)I

    move-result p1

    .line 150
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i_$eq(I)V

    return p1
.end method

.method public debugInformation()Ljava/lang/String;
    .locals 1

    .line 86
    invoke-static {p0}, Lscala/collection/parallel/IterableSplitter$class;->debugInformation(Lscala/collection/parallel/IterableSplitter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic drop(I)Lscala/collection/Iterator;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->drop(I)Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    move-result-object p1

    return-object p1
.end method

.method public drop(I)Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>.ParArrayIterator;"
        }
    .end annotation

    .line 303
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i_$eq(I)V

    return-object p0
.end method

.method public drop2combiner(ILscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 1
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

    .line 514
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->drop(I)Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    .line 515
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->remaining()I

    move-result p1

    invoke-interface {p2, p1}, Lscala/collection/parallel/Combiner;->sizeHint(I)V

    .line 516
    :goto_0
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result p1

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 517
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->arr()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v0

    aget-object p1, p1, v0

    invoke-interface {p2, p1}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 518
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i_$eq(I)V

    goto :goto_0

    :cond_0
    return-object p2
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

    .line 86
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->dropWhile(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dup()Lscala/collection/parallel/IterableSplitter;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->dup()Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dup()Lscala/collection/parallel/SeqSplitter;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->dup()Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    move-result-object v0

    return-object v0
.end method

.method public dup()Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>.ParArrayIterator;"
        }
    .end annotation

    .line 98
    new-instance v0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->scala$collection$parallel$mutable$ParArray$ParArrayIterator$$$outer()Lscala/collection/parallel/mutable/ParArray;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v2

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v3

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->arr()[Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;-><init>(Lscala/collection/parallel/mutable/ParArray;II[Ljava/lang/Object;)V

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

    .line 86
    invoke-static {p0}, Lscala/collection/Iterator$class;->duplicate(Lscala/collection/Iterator;)Lscala/Tuple2;

    move-result-object v0

    return-object v0
.end method

.method public exists(Lscala/Function1;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 246
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->isAborted()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 249
    :goto_0
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v2

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 250
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v0

    sget-object v2, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-virtual {v2}, Lscala/collection/parallel/package$;->CHECK_RATE()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v2

    if-le v0, v2, :cond_1

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v0

    sget-object v2, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-virtual {v2}, Lscala/collection/parallel/package$;->CHECK_RATE()I

    move-result v2

    add-int/2addr v0, v2

    .line 252
    :goto_1
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->scala$collection$parallel$mutable$ParArray$ParArrayIterator$$$outer()Lscala/collection/parallel/mutable/ParArray;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/parallel/mutable/ParArray;->scala$collection$parallel$mutable$ParArray$$array()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v3

    invoke-direct {p0, p1, v2, v0, v3}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->exists_quick(Lscala/Function1;[Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 254
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i_$eq(I)V

    .line 255
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->abort()V

    goto :goto_2

    .line 256
    :cond_2
    invoke-virtual {p0, v0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i_$eq(I)V

    .line 258
    :goto_2
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->isAborted()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    return v0
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

    .line 86
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->filter(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public filter2combiner(Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 6
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

    .line 426
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->arr()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v4

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->filter2combiner_quick(Lscala/Function1;Lscala/collection/mutable/Builder;[Ljava/lang/Object;II)V

    .line 427
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i_$eq(I)V

    return-object p2
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

    .line 86
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->filterNot(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public filterNot2combiner(Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 6
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

    .line 441
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->arr()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v4

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->filterNot2combiner_quick(Lscala/Function1;Lscala/collection/mutable/Builder;[Ljava/lang/Object;II)V

    .line 442
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i_$eq(I)V

    return-object p2
.end method

.method public find(Lscala/Function1;)Lscala/Option;
    .locals 3
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

    .line 274
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->isAborted()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    return-object p1

    .line 276
    :cond_0
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    .line 277
    :goto_0
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v1

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 278
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v0

    sget-object v1, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-virtual {v1}, Lscala/collection/parallel/package$;->CHECK_RATE()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v0

    sget-object v1, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-virtual {v1}, Lscala/collection/parallel/package$;->CHECK_RATE()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v0

    .line 280
    :goto_1
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->scala$collection$parallel$mutable$ParArray$ParArrayIterator$$$outer()Lscala/collection/parallel/mutable/ParArray;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ParArray;->scala$collection$parallel$mutable$ParArray$$array()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v2

    invoke-direct {p0, p1, v1, v0, v2}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->find_quick(Lscala/Function1;[Ljava/lang/Object;II)Lscala/Option;

    move-result-object v1

    .line 282
    sget-object v2, Lscala/None$;->MODULE$:Lscala/None$;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 285
    invoke-virtual {p0, v0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i_$eq(I)V

    goto :goto_3

    .line 283
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i_$eq(I)V

    .line 284
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->abort()V

    .line 287
    :goto_3
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->isAborted()Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v1

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    return-object v0
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

    .line 86
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->flatMap(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public flatmap2combiner(Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 2
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

    .line 416
    :goto_0
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 417
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->arr()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/GenTraversableOnce;

    .line 418
    instance-of v1, v0, Lscala/collection/Iterable;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/collection/Iterable;

    invoke-interface {v0}, Lscala/collection/Iterable;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/parallel/Combiner;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    goto :goto_1

    .line 419
    :cond_0
    invoke-interface {v0}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/parallel/Combiner;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    .line 420
    :goto_1
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i_$eq(I)V

    goto :goto_0

    :cond_1
    return-object p2
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

    .line 180
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(TS;",
            "Lscala/Function2<",
            "TS;TT;TS;>;)TS;"
        }
    .end annotation

    .line 165
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->arr()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->foldLeft_quick([Ljava/lang/Object;ILscala/Function2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 166
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result p2

    invoke-virtual {p0, p2}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i_$eq(I)V

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

    .line 86
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->foldRight(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public forall(Lscala/Function1;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 217
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->isAborted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 220
    :goto_0
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v2

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 221
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v0

    sget-object v2, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-virtual {v2}, Lscala/collection/parallel/package$;->CHECK_RATE()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v2

    if-le v0, v2, :cond_1

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v0

    sget-object v2, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-virtual {v2}, Lscala/collection/parallel/package$;->CHECK_RATE()I

    move-result v2

    add-int/2addr v0, v2

    .line 223
    :goto_1
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->scala$collection$parallel$mutable$ParArray$ParArrayIterator$$$outer()Lscala/collection/parallel/mutable/ParArray;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/parallel/mutable/ParArray;->scala$collection$parallel$mutable$ParArray$$array()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v3

    invoke-direct {p0, p1, v2, v0, v3}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->forall_quick(Lscala/Function1;[Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 224
    invoke-virtual {p0, v0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i_$eq(I)V

    goto :goto_2

    .line 226
    :cond_2
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i_$eq(I)V

    .line 227
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->abort()V

    .line 230
    :goto_2
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->isAborted()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    return v0
.end method

.method public foreach(Lscala/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TU;>;)V"
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->arr()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v1

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->foreach_quick(Lscala/Function1;[Ljava/lang/Object;II)V

    .line 137
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i_$eq(I)V

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

    .line 86
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->grouped(Lscala/collection/Iterator;I)Lscala/collection/Iterator$GroupedIterator;

    move-result-object p1

    return-object p1
.end method

.method public hasDefiniteSize()Z
    .locals 1

    .line 86
    invoke-static {p0}, Lscala/collection/Iterator$class;->hasDefiniteSize(Lscala/collection/Iterator;)Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 2

    .line 88
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()I
    .locals 1

    .line 86
    iget v0, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i:I

    return v0
.end method

.method public i_$eq(I)V
    .locals 0

    .line 86
    iput p1, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i:I

    return-void
.end method

.method public indexFlag()I
    .locals 1

    .line 86
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

    .line 86
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->indexOf(Lscala/collection/Iterator;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public indexWhere(Lscala/Function1;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 330
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->arr()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v1

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->indexWhere_quick(Lscala/Function1;[Ljava/lang/Object;II)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v0

    sub-int/2addr p1, v0

    .line 332
    :cond_0
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i_$eq(I)V

    return p1
.end method

.method public isAborted()Z
    .locals 1

    .line 86
    invoke-static {p0}, Lscala/collection/generic/DelegatedSignalling$class;->isAborted(Lscala/collection/generic/DelegatedSignalling;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 86
    invoke-static {p0}, Lscala/collection/Iterator$class;->isEmpty(Lscala/collection/Iterator;)Z

    move-result v0

    return v0
.end method

.method public isRemainingCheap()Z
    .locals 1

    .line 86
    invoke-static {p0}, Lscala/collection/parallel/RemainsIterator$class;->isRemainingCheap(Lscala/collection/parallel/RemainsIterator;)Z

    move-result v0

    return v0
.end method

.method public isTraversableAgain()Z
    .locals 1

    .line 86
    invoke-static {p0}, Lscala/collection/Iterator$class;->isTraversableAgain(Lscala/collection/Iterator;)Z

    move-result v0

    return v0
.end method

.method public lastIndexWhere(Lscala/Function1;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 349
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->arr()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v1

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->lastIndexWhere_quick(Lscala/Function1;[Ljava/lang/Object;II)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v0

    sub-int/2addr p1, v0

    .line 351
    :cond_0
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i_$eq(I)V

    return p1
.end method

.method public length()I
    .locals 1

    .line 86
    invoke-static {p0}, Lscala/collection/Iterator$class;->length(Lscala/collection/Iterator;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic map(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->map(Lscala/Function1;)Lscala/collection/parallel/SeqSplitter$Mapped;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic map(Lscala/Function1;)Lscala/collection/parallel/IterableSplitter$Mapped;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->map(Lscala/Function1;)Lscala/collection/parallel/SeqSplitter$Mapped;

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

    .line 86
    invoke-static {p0, p1}, Lscala/collection/parallel/SeqSplitter$class;->map(Lscala/collection/parallel/SeqSplitter;Lscala/Function1;)Lscala/collection/parallel/SeqSplitter$Mapped;

    move-result-object p1

    return-object p1
.end method

.method public map2combiner(Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 7
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

    .line 383
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->remaining()I

    move-result v0

    invoke-interface {p2, v0}, Lscala/collection/parallel/Combiner;->sizeHint(I)V

    .line 384
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->arr()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v5

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->map2combiner_quick(Lscala/Function1;[Ljava/lang/Object;Lscala/collection/mutable/Builder;II)V

    .line 385
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i_$eq(I)V

    return-object p2
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

    .line 86
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

    .line 86
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

    .line 86
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

    .line 86
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->minBy(Lscala/collection/TraversableOnce;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public mkString()Ljava/lang/String;
    .locals 1

    .line 86
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mkString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 86
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 86
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

    .line 86
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/IterableSplitter$class;->newSliceInternal(Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/IterableSplitter$Taken;I)Lscala/collection/parallel/IterableSplitter$Taken;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newTaken(I)Lscala/collection/parallel/IterableSplitter$Taken;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->newTaken(I)Lscala/collection/parallel/SeqSplitter$Taken;

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

    .line 86
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

    .line 91
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->arr()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v1

    aget-object v0, v0, v1

    .line 92
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i_$eq(I)V

    return-object v0
.end method

.method public nonEmpty()Z
    .locals 1

    .line 86
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

    .line 86
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

    .line 86
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->partition(Lscala/collection/Iterator;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public partition2combiners(Lscala/Function1;Lscala/collection/parallel/Combiner;Lscala/collection/parallel/Combiner;)Lscala/Tuple2;
    .locals 7
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

    .line 488
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->arr()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v5

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->partition2combiners_quick(Lscala/Function1;Lscala/collection/mutable/Builder;Lscala/collection/mutable/Builder;[Ljava/lang/Object;II)V

    .line 489
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i_$eq(I)V

    .line 490
    new-instance p1, Lscala/Tuple2;

    invoke-direct {p1, p2, p3}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

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

    .line 86
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

    .line 86
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/SeqSplitter$class;->patchParSeq(Lscala/collection/parallel/SeqSplitter;ILscala/collection/parallel/SeqSplitter;I)Lscala/collection/parallel/SeqSplitter$Patched;

    move-result-object p1

    return-object p1
.end method

.method public prefixLength(Lscala/Function1;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 314
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->arr()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v1

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->prefixLength_quick(Lscala/Function1;[Ljava/lang/Object;II)I

    move-result p1

    .line 315
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i_$eq(I)V

    return p1
.end method

.method public product(Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Numeric<",
            "TU;>;)TU;"
        }
    .end annotation

    .line 201
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->arr()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v3

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v4

    invoke-interface {p1}, Lscala/math/Numeric;->one()Ljava/lang/Object;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->product_quick(Lscala/math/Numeric;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 202
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i_$eq(I)V

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
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>.ParArrayIterator;>;"
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v0

    invoke-static {v0}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v0

    .line 102
    new-instance v1, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$1;

    invoke-direct {v1, p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$1;-><init>(Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;)V

    invoke-interface {p1, v1}, Lscala/collection/Seq;->reduceLeft(Lscala/Function2;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v1

    .line 103
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->remaining()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v2, v1

    .line 104
    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v2}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lscala/collection/Seq;->$colon$plus(Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/Seq;

    .line 105
    :goto_0
    new-instance v1, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$psplit$1;

    invoke-direct {v1, p0, v0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$psplit$1;-><init>(Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;Lscala/runtime/IntRef;)V

    sget-object v0, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v0}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lscala/collection/Seq;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

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

    .line 86
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

    .line 86
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

    .line 86
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

    .line 86
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

    .line 86
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

    .line 86
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

    .line 86
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

    .line 86
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceRightOption(Lscala/collection/TraversableOnce;Lscala/Function2;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public remaining()I
    .locals 2

    .line 96
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

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

    .line 86
    invoke-static {p0}, Lscala/collection/parallel/SeqSplitter$class;->reverse(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter;

    move-result-object v0

    return-object v0
.end method

.method public reverse2combiner(Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 4
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

    .line 524
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->scala$collection$parallel$mutable$ParArray$ParArrayIterator$$$outer()Lscala/collection/parallel/mutable/ParArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/parallel/mutable/ParArray;->builder2ops(Lscala/collection/mutable/Builder;)Lscala/collection/parallel/ParIterableLike$BuilderOps;

    move-result-object v0

    .line 525
    new-instance v1, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$2;

    invoke-direct {v1, p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$2;-><init>(Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;)V

    .line 524
    invoke-interface {v0, v1}, Lscala/collection/parallel/ParIterableLike$BuilderOps;->ifIs(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$BuilderOps$Otherwise;

    move-result-object v0

    .line 542
    new-instance v1, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1;-><init>(Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;Lscala/collection/parallel/Combiner;)V

    .line 532
    sget-object v2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    const-class v3, Lscala/collection/parallel/mutable/ResizableParArrayCombiner;

    invoke-virtual {v2, v3}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lscala/collection/parallel/ParIterableLike$BuilderOps$Otherwise;->otherwise(Lscala/Function0;Lscala/reflect/ClassTag;)V

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

    .line 86
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

    .line 86
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->reversed(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public sameElements(Lscala/collection/Iterator;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 369
    :goto_0
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v2

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-interface {p1}, Lscala/collection/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 370
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->arr()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v3

    aget-object v2, v2, v3

    invoke-interface {p1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    instance-of v5, v2, Ljava/lang/Number;

    if-eqz v5, :cond_2

    check-cast v2, Ljava/lang/Number;

    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_2
    instance-of v5, v2, Ljava/lang/Character;

    if-eqz v5, :cond_3

    check-cast v2, Ljava/lang/Character;

    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_4

    .line 371
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v1

    invoke-virtual {p0, v1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i_$eq(I)V

    const/4 v1, 0x0

    .line 374
    :cond_4
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i_$eq(I)V

    goto :goto_0

    :cond_5
    return v1
.end method

.method public synthetic scala$collection$parallel$mutable$ParArray$ParArrayIterator$$$outer()Lscala/collection/parallel/mutable/ParArray;
    .locals 1

    .line 86
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->$outer:Lscala/collection/parallel/mutable/ParArray;

    return-object v0
.end method

.method public scala$collection$parallel$mutable$ParArray$ParArrayIterator$$copy2builder_quick(Lscala/collection/mutable/Builder;[Ljava/lang/Object;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "Coll:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/mutable/Builder<",
            "TU;TColl;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    :goto_0
    if-ge p4, p3, :cond_0

    .line 482
    aget-object v0, p2, p4

    invoke-interface {p1, v0}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public scala$collection$parallel$mutable$ParArray$ParArrayIterator$$reverse2combiner_quick([Ljava/lang/Object;[Ljava/lang/Object;III)V
    .locals 1

    add-int/2addr p3, p5

    sub-int/2addr p3, p4

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ge p4, p5, :cond_0

    .line 551
    aget-object v0, p2, p4

    aput-object v0, p1, p3

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic scala$collection$parallel$mutable$ParArray$ParArrayIterator$$super$reverse2combiner(Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0

    .line 542
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedSeqIterator$class;->reverse2combiner(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
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

    .line 86
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

    .line 86
    invoke-static {p0, p1, p2}, Lscala/collection/Iterator$class;->scanRight(Lscala/collection/Iterator;Ljava/lang/Object;Lscala/Function2;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public scanToArray(Ljava/lang/Object;Lscala/Function2;Ljava/lang/Object;I)V
    .locals 9
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

    .line 558
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->scala$collection$parallel$mutable$ParArray$ParArrayIterator$$$outer()Lscala/collection/parallel/mutable/ParArray;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParArray;->scala$collection$parallel$mutable$ParArray$$array()[Ljava/lang/Object;

    move-result-object v2

    move-object v3, p3

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v6

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v7

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    move v8, p4

    invoke-virtual/range {v1 .. v8}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->scanToArray_quick([Ljava/lang/Object;[Ljava/lang/Object;Lscala/Function2;Ljava/lang/Object;III)V

    .line 559
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i_$eq(I)V

    return-void
.end method

.method public scanToArray_quick([Ljava/lang/Object;[Ljava/lang/Object;Lscala/Function2;Ljava/lang/Object;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "Lscala/Function2<",
            "TU;TU;TU;>;TU;III)V"
        }
    .end annotation

    :goto_0
    if-ge p5, p6, :cond_0

    .line 567
    aget-object v0, p1, p5

    invoke-interface {p3, p4, v0}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    .line 568
    aput-object p4, p2, p7

    add-int/lit8 p5, p5, 0x1

    add-int/lit8 p7, p7, 0x1

    goto :goto_0

    :cond_0
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

    .line 86
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

    .line 86
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

    .line 86
    invoke-static {p0}, Lscala/collection/Iterator$class;->seq(Lscala/collection/Iterator;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->seq()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setIndexFlag(I)V
    .locals 0

    .line 86
    invoke-static {p0, p1}, Lscala/collection/generic/DelegatedSignalling$class;->setIndexFlag(Lscala/collection/generic/DelegatedSignalling;I)V

    return-void
.end method

.method public setIndexFlagIfGreater(I)V
    .locals 0

    .line 86
    invoke-static {p0, p1}, Lscala/collection/generic/DelegatedSignalling$class;->setIndexFlagIfGreater(Lscala/collection/generic/DelegatedSignalling;I)V

    return-void
.end method

.method public setIndexFlagIfLesser(I)V
    .locals 0

    .line 86
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

    .line 86
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/IterableSplitter$class;->shouldSplitFurther(Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/ParIterable;I)Z

    move-result p1

    return p1
.end method

.method public signalDelegate()Lscala/collection/generic/Signalling;
    .locals 1

    .line 86
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->signalDelegate:Lscala/collection/generic/Signalling;

    return-object v0
.end method

.method public signalDelegate_$eq(Lscala/collection/generic/Signalling;)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 86
    iput-object p1, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->signalDelegate:Lscala/collection/generic/Signalling;

    return-void
.end method

.method public size()I
    .locals 1

    .line 86
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->size(Lscala/collection/TraversableOnce;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic slice(II)Lscala/collection/Iterator;
    .locals 0

    .line 86
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->slice(II)Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic slice(II)Lscala/collection/parallel/IterableSplitter;
    .locals 0

    .line 86
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->slice(II)Lscala/collection/parallel/SeqSplitter;

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

    .line 86
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

    .line 86
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

    .line 86
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

    .line 86
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

    .line 86
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

    .line 86
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/AugmentedIterableIterator$class;->span2combiners(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;Lscala/collection/parallel/Combiner;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public split()Lscala/collection/Seq;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>.ParArrayIterator;>;"
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->remaining()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    .line 118
    div-int/2addr v0, v3

    .line 119
    sget-object v4, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v3, v3, [Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    .line 120
    new-instance v6, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->scala$collection$parallel$mutable$ParArray$ParArrayIterator$$$outer()Lscala/collection/parallel/mutable/ParArray;

    move-result-object v7

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v8

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v9

    add-int/2addr v9, v0

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->arr()[Ljava/lang/Object;

    move-result-object v10

    invoke-direct {v6, v7, v8, v9, v10}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;-><init>(Lscala/collection/parallel/mutable/ParArray;II[Ljava/lang/Object;)V

    aput-object v6, v3, v1

    .line 121
    new-instance v1, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->scala$collection$parallel$mutable$ParArray$ParArrayIterator$$$outer()Lscala/collection/parallel/mutable/ParArray;

    move-result-object v6

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->arr()[Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v1, v6, v7, v0, v8}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;-><init>(Lscala/collection/parallel/mutable/ParArray;II[Ljava/lang/Object;)V

    aput-object v1, v3, v2

    check-cast v3, [Ljava/lang/Object;

    .line 119
    invoke-virtual {v5, v3}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-virtual {v4, v0}, Lscala/collection/Seq$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/Seq;

    .line 122
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v1

    invoke-virtual {p0, v1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i_$eq(I)V

    goto :goto_0

    .line 125
    :cond_0
    sget-object v0, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v2, v2, [Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    aput-object p0, v2, v1

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v3, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/Seq$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/Seq;

    :goto_0
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

    .line 86
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

    .line 86
    invoke-static {p0}, Lscala/collection/parallel/SeqSplitter$class;->splitWithSignalling(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public sum(Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Numeric<",
            "TU;>;)TU;"
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->arr()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v3

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v4

    invoke-interface {p1}, Lscala/math/Numeric;->zero()Ljava/lang/Object;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->sum_quick(Lscala/math/Numeric;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 186
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i_$eq(I)V

    return-object p1
.end method

.method public tag()I
    .locals 1

    .line 86
    invoke-static {p0}, Lscala/collection/generic/DelegatedSignalling$class;->tag(Lscala/collection/generic/DelegatedSignalling;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic take(I)Lscala/collection/Iterator;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->take(I)Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic take(I)Lscala/collection/parallel/IterableSplitter;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->take(I)Lscala/collection/parallel/SeqSplitter;

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

    .line 86
    invoke-static {p0, p1}, Lscala/collection/parallel/SeqSplitter$class;->take(Lscala/collection/parallel/SeqSplitter;I)Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    return-object p1
.end method

.method public take2combiner(ILscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 2
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

    .line 503
    invoke-interface {p2, p1}, Lscala/collection/parallel/Combiner;->sizeHint(I)V

    .line 504
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v0

    add-int/2addr v0, p1

    .line 505
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->arr()[Ljava/lang/Object;

    move-result-object p1

    .line 506
    :goto_0
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 507
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v1

    aget-object v1, p1, v1

    invoke-interface {p2, v1}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 508
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i_$eq(I)V

    goto :goto_0

    :cond_0
    return-object p2
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

    .line 86
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

    .line 86
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

    .line 86
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

    .line 86
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

    .line 86
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

    .line 86
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toIndexedSeq(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->toIterable()Lscala/collection/Iterable;

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

    .line 86
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

    .line 86
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

    .line 86
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toList(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/GenMap;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

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

    .line 86
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->toMap(Lscala/collection/TraversableOnce;Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->toSeq()Lscala/collection/Seq;

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

    .line 86
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toSeq(Lscala/collection/TraversableOnce;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSet()Lscala/collection/GenSet;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->toSet()Lscala/collection/immutable/Set;

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

    .line 86
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

    .line 86
    invoke-static {p0}, Lscala/collection/Iterator$class;->toStream(Lscala/collection/Iterator;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 129
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "ParArrayIterator("

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

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

    .line 86
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->toTraversable()Lscala/collection/Traversable;

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

    .line 86
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

    .line 86
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toVector(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/Vector;

    move-result-object v0

    return-object v0
.end method

.method public until()I
    .locals 1

    .line 86
    iget v0, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until:I

    return v0
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

    .line 86
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

    .line 86
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

    .line 86
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

    .line 86
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

    .line 86
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

    .line 86
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/parallel/AugmentedIterableIterator$class;->zipAll2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/collection/parallel/RemainsIterator;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic zipAllParSeq(Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/IterableSplitter$ZippedAll;
    .locals 0

    .line 86
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->zipAllParSeq(Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/SeqSplitter$ZippedAll;

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

    .line 86
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/SeqSplitter$class;->zipAllParSeq(Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/SeqSplitter$ZippedAll;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic zipParSeq(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/IterableSplitter$Zipped;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->zipParSeq(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Zipped;

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

    .line 86
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

    .line 86
    invoke-static {p0}, Lscala/collection/Iterator$class;->zipWithIndex(Lscala/collection/Iterator;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method
