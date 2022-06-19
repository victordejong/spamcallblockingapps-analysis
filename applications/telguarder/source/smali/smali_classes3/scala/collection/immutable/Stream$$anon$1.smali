.class public final Lscala/collection/immutable/Stream$$anon$1;
.super Ljava/lang/Object;
.source "Stream.scala"

# interfaces
.implements Lscala/collection/immutable/StreamView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/Stream;->view()Lscala/collection/immutable/StreamView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/immutable/StreamView<",
        "TA;",
        "Lscala/collection/immutable/Stream<",
        "TA;>;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/immutable/Stream;

.field private volatile bitmap$0:Z

.field private underlying:Lscala/collection/immutable/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/immutable/Stream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Stream<",
            "TA;>;)V"
        }
    .end annotation

    .line 1085
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/immutable/Stream$$anon$1;->$outer:Lscala/collection/immutable/Stream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/Function1$class;->$init$(Lscala/Function1;)V

    invoke-static {p0}, Lscala/PartialFunction$class;->$init$(Lscala/PartialFunction;)V

    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->$init$(Lscala/collection/TraversableOnce;)V

    invoke-static {p0}, Lscala/collection/Parallelizable$class;->$init$(Lscala/collection/Parallelizable;)V

    invoke-static {p0}, Lscala/collection/TraversableLike$class;->$init$(Lscala/collection/TraversableLike;)V

    invoke-static {p0}, Lscala/collection/generic/GenericTraversableTemplate$class;->$init$(Lscala/collection/generic/GenericTraversableTemplate;)V

    invoke-static {p0}, Lscala/collection/GenTraversable$class;->$init$(Lscala/collection/GenTraversable;)V

    invoke-static {p0}, Lscala/collection/Traversable$class;->$init$(Lscala/collection/Traversable;)V

    invoke-static {p0}, Lscala/collection/GenIterable$class;->$init$(Lscala/collection/GenIterable;)V

    invoke-static {p0}, Lscala/collection/IterableLike$class;->$init$(Lscala/collection/IterableLike;)V

    invoke-static {p0}, Lscala/collection/Iterable$class;->$init$(Lscala/collection/Iterable;)V

    invoke-static {p0}, Lscala/collection/GenSeqLike$class;->$init$(Lscala/collection/GenSeqLike;)V

    invoke-static {p0}, Lscala/collection/GenSeq$class;->$init$(Lscala/collection/GenSeq;)V

    invoke-static {p0}, Lscala/collection/SeqLike$class;->$init$(Lscala/collection/SeqLike;)V

    invoke-static {p0}, Lscala/collection/Seq$class;->$init$(Lscala/collection/Seq;)V

    invoke-static {p0}, Lscala/collection/ViewMkString$class;->$init$(Lscala/collection/ViewMkString;)V

    invoke-static {p0}, Lscala/collection/TraversableViewLike$class;->$init$(Lscala/collection/TraversableViewLike;)V

    invoke-static {p0}, Lscala/collection/IterableViewLike$class;->$init$(Lscala/collection/IterableViewLike;)V

    invoke-static {p0}, Lscala/collection/SeqViewLike$class;->$init$(Lscala/collection/SeqViewLike;)V

    invoke-static {p0}, Lscala/collection/immutable/StreamViewLike$class;->$init$(Lscala/collection/immutable/StreamViewLike;)V

    return-void
.end method

.method private underlying$lzycompute()Lscala/collection/immutable/Stream;
    .locals 1

    .line 1086
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lscala/collection/immutable/Stream$$anon$1;->bitmap$0:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lscala/collection/immutable/Stream$$anon$1;->$outer:Lscala/collection/immutable/Stream;

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Stream;

    iput-object v0, p0, Lscala/collection/immutable/Stream$$anon$1;->underlying:Lscala/collection/immutable/Stream;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lscala/collection/immutable/Stream$$anon$1;->bitmap$0:Z

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/immutable/Stream$$anon$1;->underlying:Lscala/collection/immutable/Stream;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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
            "TA;TB;TB;>;)TB;"
        }
    .end annotation

    .line 1085
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
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/collection/SeqViewLike$class;->$colon$plus(Lscala/collection/SeqViewLike;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

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
            "TB;TA;TB;>;)TB;"
        }
    .end annotation

    .line 1085
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
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/collection/SeqViewLike$class;->$plus$colon(Lscala/collection/SeqViewLike;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

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
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableViewLike$class;->$plus$plus(Lscala/collection/TraversableViewLike;Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

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
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 1085
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
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->$plus$plus$colon(Lscala/collection/TraversableLike;Lscala/collection/TraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 1085
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/ViewMkString$class;->addString(Lscala/collection/ViewMkString;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

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
            "TB;TA;TB;>;",
            "Lscala/Function2<",
            "TB;TB;TB;>;)TB;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableOnce$class;->aggregate(Lscala/collection/TraversableOnce;Lscala/Function0;Lscala/Function2;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic andThen(Lscala/Function1;)Lscala/Function1;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->andThen(Lscala/Function1;)Lscala/PartialFunction;

    move-result-object p1

    return-object p1
.end method

.method public andThen(Lscala/Function1;)Lscala/PartialFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TC;>;)",
            "Lscala/PartialFunction<",
            "Ljava/lang/Object;",
            "TC;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/PartialFunction$class;->andThen(Lscala/PartialFunction;Lscala/Function1;)Lscala/PartialFunction;

    move-result-object p1

    return-object p1
.end method

.method public apply(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation

    .line 1089
    iget-object v0, p0, Lscala/collection/immutable/Stream$$anon$1;->$outer:Lscala/collection/immutable/Stream;

    invoke-virtual {v0, p1}, Lscala/collection/immutable/Stream;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1085
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply$mcDD$sp(D)D
    .locals 0

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcDD$sp(Lscala/Function1;D)D

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcDF$sp(F)D
    .locals 2

    .line 1085
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcDF$sp(Lscala/Function1;F)D

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcDI$sp(I)D
    .locals 2

    .line 1085
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcDI$sp(Lscala/Function1;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcDJ$sp(J)D
    .locals 0

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcDJ$sp(Lscala/Function1;J)D

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcFD$sp(D)F
    .locals 0

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcFD$sp(Lscala/Function1;D)F

    move-result p1

    return p1
.end method

.method public apply$mcFF$sp(F)F
    .locals 0

    .line 1085
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcFF$sp(Lscala/Function1;F)F

    move-result p1

    return p1
.end method

.method public apply$mcFI$sp(I)F
    .locals 0

    .line 1085
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcFI$sp(Lscala/Function1;I)F

    move-result p1

    return p1
.end method

.method public apply$mcFJ$sp(J)F
    .locals 0

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcFJ$sp(Lscala/Function1;J)F

    move-result p1

    return p1
.end method

.method public apply$mcID$sp(D)I
    .locals 0

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcID$sp(Lscala/Function1;D)I

    move-result p1

    return p1
.end method

.method public apply$mcIF$sp(F)I
    .locals 0

    .line 1085
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcIF$sp(Lscala/Function1;F)I

    move-result p1

    return p1
.end method

.method public apply$mcII$sp(I)I
    .locals 0

    .line 1085
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcII$sp(Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public apply$mcIJ$sp(J)I
    .locals 0

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcIJ$sp(Lscala/Function1;J)I

    move-result p1

    return p1
.end method

.method public apply$mcJD$sp(D)J
    .locals 0

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcJD$sp(Lscala/Function1;D)J

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcJF$sp(F)J
    .locals 2

    .line 1085
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcJF$sp(Lscala/Function1;F)J

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcJI$sp(I)J
    .locals 2

    .line 1085
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcJI$sp(Lscala/Function1;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcJJ$sp(J)J
    .locals 0

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcJJ$sp(Lscala/Function1;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcVD$sp(D)V
    .locals 0

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcVD$sp(Lscala/Function1;D)V

    return-void
.end method

.method public apply$mcVF$sp(F)V
    .locals 0

    .line 1085
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcVF$sp(Lscala/Function1;F)V

    return-void
.end method

.method public apply$mcVI$sp(I)V
    .locals 0

    .line 1085
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcVI$sp(Lscala/Function1;I)V

    return-void
.end method

.method public apply$mcVJ$sp(J)V
    .locals 0

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcVJ$sp(Lscala/Function1;J)V

    return-void
.end method

.method public apply$mcZD$sp(D)Z
    .locals 0

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcZD$sp(Lscala/Function1;D)Z

    move-result p1

    return p1
.end method

.method public apply$mcZF$sp(F)Z
    .locals 0

    .line 1085
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcZF$sp(Lscala/Function1;F)Z

    move-result p1

    return p1
.end method

.method public apply$mcZI$sp(I)Z
    .locals 0

    .line 1085
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcZI$sp(Lscala/Function1;I)Z

    move-result p1

    return p1
.end method

.method public apply$mcZJ$sp(J)Z
    .locals 0

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcZJ$sp(Lscala/Function1;J)Z

    move-result p1

    return p1
.end method

.method public applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/PartialFunction$class;->applyOrElse(Lscala/PartialFunction;Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 1085
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
            "TA;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableViewLike$class;->collect(Lscala/collection/TraversableViewLike;Lscala/PartialFunction;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

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
            "TA;TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 1085
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
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/SeqViewLike$class;->combinations(Lscala/collection/SeqViewLike;I)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/Seq;",
            ">;"
        }
    .end annotation

    .line 1085
    invoke-static {p0}, Lscala/collection/Seq$class;->companion(Lscala/collection/Seq;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public compose(Lscala/Function1;)Lscala/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Function1<",
            "TA;TA;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/Function1$class;->compose(Lscala/Function1;Lscala/Function1;)Lscala/Function1;

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

    .line 1085
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

    .line 1085
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

    .line 1085
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

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->copyToArray(Lscala/collection/TraversableOnce;Ljava/lang/Object;I)V

    return-void
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

    .line 1085
    invoke-static {p0, p1, p2, p3}, Lscala/collection/IterableLike$class;->copyToArray(Lscala/collection/IterableLike;Ljava/lang/Object;II)V

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

    .line 1085
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
            "TA;TB;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1085
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
            "TA;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->count(Lscala/collection/TraversableOnce;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic diff(Lscala/collection/GenSeq;)Ljava/lang/Object;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->diff(Lscala/collection/GenSeq;)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public diff(Lscala/collection/GenSeq;)Lscala/collection/SeqView;
    .locals 0

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/SeqViewLike$class;->diff(Lscala/collection/SeqViewLike;Lscala/collection/GenSeq;)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic distinct()Ljava/lang/Object;
    .locals 1

    .line 1085
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$$anon$1;->distinct()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public distinct()Lscala/collection/SeqView;
    .locals 1

    .line 1085
    invoke-static {p0}, Lscala/collection/SeqViewLike$class;->distinct(Lscala/collection/SeqViewLike;)Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic drop(I)Ljava/lang/Object;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->drop(I)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method

.method public drop(I)Lscala/collection/IterableView;
    .locals 0

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/IterableViewLike$class;->drop(Lscala/collection/IterableViewLike;I)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic drop(I)Lscala/collection/TraversableView;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->drop(I)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dropRight(I)Ljava/lang/Object;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->dropRight(I)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method

.method public dropRight(I)Lscala/collection/IterableView;
    .locals 0

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/IterableViewLike$class;->dropRight(Lscala/collection/IterableViewLike;I)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dropWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->dropWhile(Lscala/Function1;)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method

.method public dropWhile(Lscala/Function1;)Lscala/collection/TraversableView;
    .locals 0

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->dropWhile(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/collection/TraversableView;

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

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->endsWith(Lscala/collection/SeqLike;Lscala/collection/GenSeq;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/GenSeqLike$class;->equals(Lscala/collection/GenSeqLike;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public exists(Lscala/Function1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->exists(Lscala/collection/IterableLike;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic filter(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->filter(Lscala/Function1;)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method

.method public filter(Lscala/Function1;)Lscala/collection/TraversableView;
    .locals 0

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->filter(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->filterNot(Lscala/Function1;)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method

.method public filterNot(Lscala/Function1;)Lscala/collection/TraversableView;
    .locals 0

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->filterNot(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method

.method public find(Lscala/Function1;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "TA;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->find(Lscala/collection/IterableLike;Lscala/Function1;)Lscala/Option;

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
            "TA;",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableViewLike$class;->flatMap(Lscala/collection/TraversableViewLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic flatten(Lscala/Function1;)Lscala/collection/GenTraversable;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->flatten(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public flatten(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;>;)",
            "Lscala/collection/TraversableViewLike<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>.Transformed<TB;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->flatten(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;

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

    .line 1085
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
            "TB;TA;TB;>;)TB;"
        }
    .end annotation

    .line 1085
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
            "TA;TB;TB;>;)TB;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/collection/IterableLike$class;->foldRight(Lscala/collection/IterableLike;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public forall(Lscala/Function1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->forall(Lscala/collection/IterableLike;Lscala/Function1;)Z

    move-result p1

    return p1
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
            "Lscala/collection/immutable/Stream<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/immutable/StreamViewLike$class;->force(Lscala/collection/immutable/StreamViewLike;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public foreach(Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TU;>;)V"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->foreach(Lscala/collection/IterableLike;Lscala/Function1;)V

    return-void
.end method

.method public genericBuilder()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Builder<",
            "TB;",
            "Lscala/collection/Seq<",
            "TB;>;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0}, Lscala/collection/generic/GenericTraversableTemplate$class;->genericBuilder(Lscala/collection/generic/GenericTraversableTemplate;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

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
            "TA;TK;>;)",
            "Lscala/collection/immutable/Map<",
            "TK;",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->groupBy(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public grouped(I)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/Iterator<",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/IterableViewLike$class;->grouped(Lscala/collection/IterableViewLike;I)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public hasDefiniteSize()Z
    .locals 1

    .line 1085
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->hasDefiniteSize(Lscala/collection/TraversableLike;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1085
    invoke-static {p0}, Lscala/collection/GenSeqLike$class;->hashCode(Lscala/collection/GenSeqLike;)I

    move-result v0

    return v0
.end method

.method public head()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 1085
    invoke-static {p0}, Lscala/collection/IterableLike$class;->head(Lscala/collection/IterableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headOption()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "TA;>;"
        }
    .end annotation

    .line 1085
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

    .line 1085
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

    .line 1085
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

    .line 1085
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

    .line 1085
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
            "TA;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 1085
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
            "TA;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->indexWhere(Lscala/collection/SeqLike;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public indices()Lscala/collection/immutable/Range;
    .locals 1

    .line 1085
    invoke-static {p0}, Lscala/collection/SeqLike$class;->indices(Lscala/collection/SeqLike;)Lscala/collection/immutable/Range;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic init()Ljava/lang/Object;
    .locals 1

    .line 1085
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$$anon$1;->init()Lscala/collection/TraversableView;

    move-result-object v0

    return-object v0
.end method

.method public init()Lscala/collection/TraversableView;
    .locals 1

    .line 1085
    invoke-static {p0}, Lscala/collection/TraversableViewLike$class;->init(Lscala/collection/TraversableViewLike;)Lscala/collection/TraversableView;

    move-result-object v0

    return-object v0
.end method

.method public inits()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0}, Lscala/collection/TraversableViewLike$class;->inits(Lscala/collection/TraversableViewLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic intersect(Lscala/collection/GenSeq;)Ljava/lang/Object;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->intersect(Lscala/collection/GenSeq;)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public intersect(Lscala/collection/GenSeq;)Lscala/collection/SeqView;
    .locals 0

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/SeqViewLike$class;->intersect(Lscala/collection/SeqViewLike;Lscala/collection/GenSeq;)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public isDefinedAt(I)Z
    .locals 0

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/GenSeqLike$class;->isDefinedAt(Lscala/collection/GenSeqLike;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 0

    .line 1085
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->isDefinedAt(I)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1085
    invoke-static {p0}, Lscala/collection/SeqLike$class;->isEmpty(Lscala/collection/SeqLike;)Z

    move-result v0

    return v0
.end method

.method public final isTraversableAgain()Z
    .locals 1

    .line 1085
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
            "TA;>;"
        }
    .end annotation

    .line 1087
    iget-object v0, p0, Lscala/collection/immutable/Stream$$anon$1;->$outer:Lscala/collection/immutable/Stream;

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 1085
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->last(Lscala/collection/TraversableLike;)Ljava/lang/Object;

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

    .line 1085
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

    .line 1085
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

    .line 1085
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

    .line 1085
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
            "TA;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 1085
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
            "TA;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->lastIndexWhere(Lscala/collection/SeqLike;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public lastOption()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "TA;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->lastOption(Lscala/collection/TraversableLike;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 1088
    iget-object v0, p0, Lscala/collection/immutable/Stream$$anon$1;->$outer:Lscala/collection/immutable/Stream;

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->length()I

    move-result v0

    return v0
.end method

.method public lengthCompare(I)I
    .locals 0

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->lengthCompare(Lscala/collection/SeqLike;I)I

    move-result p1

    return p1
.end method

.method public lift()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Lscala/Option<",
            "TA;>;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0}, Lscala/PartialFunction$class;->lift(Lscala/PartialFunction;)Lscala/Function1;

    move-result-object v0

    return-object v0
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
            "TA;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableViewLike$class;->map(Lscala/collection/TraversableViewLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

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
            "TB;>;)TA;"
        }
    .end annotation

    .line 1085
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
            "TA;TB;>;",
            "Lscala/math/Ordering<",
            "TB;>;)TA;"
        }
    .end annotation

    .line 1085
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
            "TB;>;)TA;"
        }
    .end annotation

    .line 1085
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
            "TA;TB;>;",
            "Lscala/math/Ordering<",
            "TB;>;)TA;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->minBy(Lscala/collection/TraversableOnce;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public mkString()Ljava/lang/String;
    .locals 1

    .line 1085
    invoke-static {p0}, Lscala/collection/ViewMkString$class;->mkString(Lscala/collection/ViewMkString;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mkString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/ViewMkString$class;->mkString(Lscala/collection/ViewMkString;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1085
    invoke-static {p0, p1, p2, p3}, Lscala/collection/ViewMkString$class;->mkString(Lscala/collection/ViewMkString;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newAppended(Lscala/collection/GenTraversable;)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->newAppended(Lscala/collection/GenTraversable;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newAppended(Lscala/collection/GenTraversable;)Lscala/collection/SeqViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->newAppended(Lscala/collection/GenTraversable;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newAppended(Lscala/collection/GenTraversable;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->newAppended(Lscala/collection/GenTraversable;)Lscala/collection/immutable/StreamViewLike$Transformed;

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
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>.Transformed<TB;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/immutable/StreamViewLike$class;->newAppended(Lscala/collection/immutable/StreamViewLike;Lscala/collection/GenTraversable;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public newBuilder()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder<",
            "TA;",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0}, Lscala/collection/TraversableViewLike$class;->newBuilder(Lscala/collection/TraversableViewLike;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newDropped(I)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->newDropped(I)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public newDropped(I)Lscala/collection/SeqViewLike$Transformed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/SeqViewLike<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>.Transformed<TA;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/SeqViewLike$class;->newDropped(Lscala/collection/SeqViewLike;I)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newDropped(I)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->newDropped(I)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newDroppedWhile(Lscala/Function1;)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->newDroppedWhile(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newDroppedWhile(Lscala/Function1;)Lscala/collection/SeqViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->newDroppedWhile(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newDroppedWhile(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->newDroppedWhile(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public newDroppedWhile(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/immutable/StreamViewLike<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>.Transformed<TA;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/immutable/StreamViewLike$class;->newDroppedWhile(Lscala/collection/immutable/StreamViewLike;Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newFiltered(Lscala/Function1;)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->newFiltered(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newFiltered(Lscala/Function1;)Lscala/collection/SeqViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->newFiltered(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newFiltered(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->newFiltered(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public newFiltered(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/immutable/StreamViewLike<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>.Transformed<TA;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/immutable/StreamViewLike$class;->newFiltered(Lscala/collection/immutable/StreamViewLike;Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newFlatMapped(Lscala/Function1;)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->newFlatMapped(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newFlatMapped(Lscala/Function1;)Lscala/collection/SeqViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->newFlatMapped(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newFlatMapped(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->newFlatMapped(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

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
            "TA;",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;>;)",
            "Lscala/collection/immutable/StreamViewLike<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>.Transformed<TB;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/immutable/StreamViewLike$class;->newFlatMapped(Lscala/collection/immutable/StreamViewLike;Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newForced(Lscala/Function0;)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->newForced(Lscala/Function0;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newForced(Lscala/Function0;)Lscala/collection/SeqViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->newForced(Lscala/Function0;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newForced(Lscala/Function0;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->newForced(Lscala/Function0;)Lscala/collection/immutable/StreamViewLike$Transformed;

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
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>.Transformed<TB;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/immutable/StreamViewLike$class;->newForced(Lscala/collection/immutable/StreamViewLike;Lscala/Function0;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newMapped(Lscala/Function1;)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->newMapped(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newMapped(Lscala/Function1;)Lscala/collection/SeqViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->newMapped(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newMapped(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->newMapped(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

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
            "TA;TB;>;)",
            "Lscala/collection/immutable/StreamViewLike<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>.Transformed<TB;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/immutable/StreamViewLike$class;->newMapped(Lscala/collection/immutable/StreamViewLike;Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newPatched(ILscala/collection/GenSeq;I)Lscala/collection/SeqViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/immutable/Stream$$anon$1;->newPatched(ILscala/collection/GenSeq;I)Lscala/collection/immutable/StreamViewLike$Transformed;

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
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>.Transformed<TB;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1, p2, p3}, Lscala/collection/immutable/StreamViewLike$class;->newPatched(Lscala/collection/immutable/StreamViewLike;ILscala/collection/GenSeq;I)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newPrepended(Ljava/lang/Object;)Lscala/collection/SeqViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->newPrepended(Ljava/lang/Object;)Lscala/collection/immutable/StreamViewLike$Transformed;

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
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>.Transformed<TB;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/immutable/StreamViewLike$class;->newPrepended(Lscala/collection/immutable/StreamViewLike;Ljava/lang/Object;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newReversed()Lscala/collection/SeqViewLike$Transformed;
    .locals 1

    .line 1085
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$$anon$1;->newReversed()Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object v0

    return-object v0
.end method

.method public newReversed()Lscala/collection/immutable/StreamViewLike$Transformed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/StreamViewLike<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>.Transformed<TA;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0}, Lscala/collection/immutable/StreamViewLike$class;->newReversed(Lscala/collection/immutable/StreamViewLike;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/SeqViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/immutable/StreamViewLike$Transformed;

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
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>.Transformed<TA;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/immutable/StreamViewLike$class;->newSliced(Lscala/collection/immutable/StreamViewLike;Lscala/collection/generic/SliceInterval;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newTaken(I)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->newTaken(I)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public newTaken(I)Lscala/collection/SeqViewLike$Transformed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/SeqViewLike<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>.Transformed<TA;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/SeqViewLike$class;->newTaken(Lscala/collection/SeqViewLike;I)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newTaken(I)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->newTaken(I)Lscala/collection/SeqViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newTakenWhile(Lscala/Function1;)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->newTakenWhile(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newTakenWhile(Lscala/Function1;)Lscala/collection/SeqViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->newTakenWhile(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newTakenWhile(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->newTakenWhile(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public newTakenWhile(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/immutable/StreamViewLike<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>.Transformed<TA;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/immutable/StreamViewLike$class;->newTakenWhile(Lscala/collection/immutable/StreamViewLike;Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newZipped(Lscala/collection/GenIterable;)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->newZipped(Lscala/collection/GenIterable;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newZipped(Lscala/collection/GenIterable;)Lscala/collection/SeqViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->newZipped(Lscala/collection/GenIterable;)Lscala/collection/immutable/StreamViewLike$Transformed;

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
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>.Transformed<",
            "Lscala/Tuple2<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/immutable/StreamViewLike$class;->newZipped(Lscala/collection/immutable/StreamViewLike;Lscala/collection/GenIterable;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newZippedAll(Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/IterableViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/immutable/Stream$$anon$1;->newZippedAll(Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newZippedAll(Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/SeqViewLike$Transformed;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/immutable/Stream$$anon$1;->newZippedAll(Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/StreamViewLike$Transformed;

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
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>.Transformed<",
            "Lscala/Tuple2<",
            "TA1;TB;>;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1, p2, p3}, Lscala/collection/immutable/StreamViewLike$class;->newZippedAll(Lscala/collection/immutable/StreamViewLike;Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/StreamViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public nonEmpty()Z
    .locals 1

    .line 1085
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->nonEmpty(Lscala/collection/TraversableOnce;)Z

    move-result v0

    return v0
.end method

.method public orElse(Lscala/PartialFunction;)Lscala/PartialFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "TA1;TB1;>;)",
            "Lscala/PartialFunction<",
            "TA1;TB1;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/PartialFunction$class;->orElse(Lscala/PartialFunction;Lscala/PartialFunction;)Lscala/PartialFunction;

    move-result-object p1

    return-object p1
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
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1, p2, p3}, Lscala/collection/SeqViewLike$class;->padTo(Lscala/collection/SeqViewLike;ILjava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public par()Lscala/collection/Parallel;
    .locals 1

    .line 1085
    invoke-static {p0}, Lscala/collection/Parallelizable$class;->par(Lscala/collection/Parallelizable;)Lscala/collection/Parallel;

    move-result-object v0

    return-object v0
.end method

.method public parCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TA;",
            "Lscala/collection/parallel/ParSeq<",
            "TA;>;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0}, Lscala/collection/SeqLike$class;->parCombiner(Lscala/collection/SeqLike;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public partition(Lscala/Function1;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->partition(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/Tuple2;

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
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/SeqViewLike$class;->patch(Lscala/collection/SeqViewLike;ILscala/collection/GenSeq;ILscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public permutations()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0}, Lscala/collection/SeqViewLike$class;->permutations(Lscala/collection/SeqViewLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixLength(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 1085
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

    .line 1085
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

    .line 1085
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
            "TB;TA;TB;>;)TB;"
        }
    .end annotation

    .line 1085
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
            "TB;TA;TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 1085
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

    .line 1085
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
            "TA;TB;TB;>;)TB;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->reduceRight(Lscala/collection/IterableLike;Lscala/Function2;)Ljava/lang/Object;

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
            "TA;TB;TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceRightOption(Lscala/collection/TraversableOnce;Lscala/Function2;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public repr()Ljava/lang/Object;
    .locals 1

    .line 1085
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->repr(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverse()Ljava/lang/Object;
    .locals 1

    .line 1085
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$$anon$1;->reverse()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lscala/collection/SeqView;
    .locals 1

    .line 1085
    invoke-static {p0}, Lscala/collection/SeqViewLike$class;->reverse(Lscala/collection/SeqViewLike;)Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public reverseIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0}, Lscala/collection/SeqLike$class;->reverseIterator(Lscala/collection/SeqLike;)Lscala/collection/Iterator;

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
            "TA;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/collection/SeqViewLike$class;->reverseMap(Lscala/collection/SeqViewLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reversed()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "TA;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->reversed(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public runWith(Lscala/Function1;)Lscala/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TU;>;)",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/PartialFunction$class;->runWith(Lscala/PartialFunction;Lscala/Function1;)Lscala/Function1;

    move-result-object p1

    return-object p1
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

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->sameElements(Lscala/collection/IterableLike;Lscala/collection/GenIterable;)Z

    move-result p1

    return p1
.end method

.method public synthetic scala$collection$TraversableViewLike$$super$tail()Lscala/collection/TraversableView;
    .locals 1

    .line 1085
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->tail(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/TraversableView;

    return-object v0
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
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 1085
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
            "TB;TA;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableViewLike$class;->scanLeft(Lscala/collection/TraversableViewLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

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
            "TA;TB;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableViewLike$class;->scanRight(Lscala/collection/TraversableViewLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public segmentLength(Lscala/Function1;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->segmentLength(Lscala/collection/SeqLike;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 1085
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$$anon$1;->seq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "TA;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0}, Lscala/collection/Seq$class;->seq(Lscala/collection/Seq;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 1085
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$$anon$1;->seq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 1085
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$$anon$1;->seq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1085
    invoke-static {p0}, Lscala/collection/SeqLike$class;->size(Lscala/collection/SeqLike;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic slice(II)Ljava/lang/Object;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Stream$$anon$1;->slice(II)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method

.method public slice(II)Lscala/collection/TraversableView;
    .locals 0

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableViewLike$class;->slice(Lscala/collection/TraversableViewLike;II)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method

.method public sliceWithKnownBound(II)Ljava/lang/Object;
    .locals 0

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->sliceWithKnownBound(Lscala/collection/TraversableLike;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public sliceWithKnownDelta(III)Ljava/lang/Object;
    .locals 0

    .line 1085
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
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/IterableViewLike$class;->sliding(Lscala/collection/IterableViewLike;I)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public sliding(II)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/Iterator<",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/collection/IterableViewLike$class;->sliding(Lscala/collection/IterableViewLike;II)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic sortBy(Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Stream$$anon$1;->sortBy(Lscala/Function1;Lscala/math/Ordering;)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public sortBy(Lscala/Function1;Lscala/math/Ordering;)Lscala/collection/SeqView;
    .locals 0

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/collection/SeqViewLike$class;->sortBy(Lscala/collection/SeqViewLike;Lscala/Function1;Lscala/math/Ordering;)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic sortWith(Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->sortWith(Lscala/Function2;)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public sortWith(Lscala/Function2;)Lscala/collection/SeqView;
    .locals 0

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/SeqViewLike$class;->sortWith(Lscala/collection/SeqViewLike;Lscala/Function2;)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic sorted(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->sorted(Lscala/math/Ordering;)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public sorted(Lscala/math/Ordering;)Lscala/collection/SeqView;
    .locals 0

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/SeqViewLike$class;->sorted(Lscala/collection/SeqViewLike;Lscala/math/Ordering;)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public span(Lscala/Function1;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->span(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public splitAt(I)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Tuple2<",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->splitAt(Lscala/collection/TraversableViewLike;I)Lscala/Tuple2;

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

    .line 1085
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

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->startsWith(Lscala/collection/SeqLike;Lscala/collection/GenSeq;I)Z

    move-result p1

    return p1
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    .line 1085
    invoke-static {p0}, Lscala/collection/immutable/StreamViewLike$class;->stringPrefix(Lscala/collection/immutable/StreamViewLike;)Ljava/lang/String;

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

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->sum(Lscala/collection/TraversableOnce;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tail()Ljava/lang/Object;
    .locals 1

    .line 1085
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$$anon$1;->tail()Lscala/collection/TraversableView;

    move-result-object v0

    return-object v0
.end method

.method public tail()Lscala/collection/TraversableView;
    .locals 1

    .line 1085
    invoke-static {p0}, Lscala/collection/TraversableViewLike$class;->tail(Lscala/collection/TraversableViewLike;)Lscala/collection/TraversableView;

    move-result-object v0

    return-object v0
.end method

.method public tails()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0}, Lscala/collection/TraversableViewLike$class;->tails(Lscala/collection/TraversableViewLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic take(I)Ljava/lang/Object;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->take(I)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method

.method public take(I)Lscala/collection/IterableView;
    .locals 0

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/IterableViewLike$class;->take(Lscala/collection/IterableViewLike;I)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic take(I)Lscala/collection/TraversableView;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->take(I)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic takeRight(I)Ljava/lang/Object;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->takeRight(I)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method

.method public takeRight(I)Lscala/collection/IterableView;
    .locals 0

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/IterableViewLike$class;->takeRight(Lscala/collection/IterableViewLike;I)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic takeWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->takeWhile(Lscala/Function1;)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method

.method public takeWhile(Lscala/Function1;)Lscala/collection/TraversableView;
    .locals 0

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->takeWhile(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .line 1085
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$$anon$1;->thisCollection()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public thisCollection()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "TA;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0}, Lscala/collection/SeqLike$class;->thisCollection(Lscala/collection/SeqLike;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 1085
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$$anon$1;->thisCollection()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public thisSeq()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "TA;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0}, Lscala/collection/ViewMkString$class;->thisSeq(Lscala/collection/ViewMkString;)Lscala/collection/Seq;

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
            "TA;TCol;>;)TCol;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->to(Lscala/collection/TraversableLike;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

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

    .line 1085
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

    .line 1085
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toBuffer(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->toCollection(Ljava/lang/Object;)Lscala/collection/Seq;

    move-result-object p1

    return-object p1
.end method

.method public toCollection(Ljava/lang/Object;)Lscala/collection/Seq;
    .locals 0

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->toCollection(Lscala/collection/SeqLike;Ljava/lang/Object;)Lscala/collection/Seq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->toCollection(Ljava/lang/Object;)Lscala/collection/Seq;

    move-result-object p1

    return-object p1
.end method

.method public toIndexedSeq()Lscala/collection/immutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/IndexedSeq<",
            "TA;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toIndexedSeq(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 1085
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$$anon$1;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toIterable()Lscala/collection/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterable<",
            "TA;>;"
        }
    .end annotation

    .line 1085
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
            "TA;>;"
        }
    .end annotation

    .line 1085
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
            "TA;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toList(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/GenMap;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

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
            "TA;",
            "Lscala/Tuple2<",
            "TT;TU;>;>;)",
            "Lscala/collection/immutable/Map<",
            "TT;TU;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->toMap(Lscala/collection/TraversableOnce;Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 1085
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$$anon$1;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "TA;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0}, Lscala/collection/SeqLike$class;->toSeq(Lscala/collection/SeqLike;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSet()Lscala/collection/GenSet;
    .locals 1

    .line 1085
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$$anon$1;->toSet()Lscala/collection/immutable/Set;

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

    .line 1085
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
            "TA;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0}, Lscala/collection/IterableLike$class;->toStream(Lscala/collection/IterableLike;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1085
    invoke-static {p0}, Lscala/collection/TraversableViewLike$class;->toString(Lscala/collection/TraversableViewLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 1085
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$$anon$1;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public toTraversable()Lscala/collection/Traversable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Traversable<",
            "TA;>;"
        }
    .end annotation

    .line 1085
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
            "TA;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toVector(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/Vector;

    move-result-object v0

    return-object v0
.end method

.method public transpose(Lscala/Function1;)Lscala/collection/GenTraversable;
    .locals 0

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/generic/GenericTraversableTemplate$class;->transpose(Lscala/collection/generic/GenericTraversableTemplate;Lscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic underlying()Ljava/lang/Object;
    .locals 1

    .line 1085
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$$anon$1;->underlying()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public underlying()Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    .line 1086
    iget-boolean v0, p0, Lscala/collection/immutable/Stream$$anon$1;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/collection/immutable/Stream$$anon$1;->underlying:Lscala/collection/immutable/Stream;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lscala/collection/immutable/Stream$$anon$1;->underlying$lzycompute()Lscala/collection/immutable/Stream;

    move-result-object v0

    :goto_0
    return-object v0
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
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/collection/SeqViewLike$class;->union(Lscala/collection/SeqViewLike;Lscala/collection/GenSeq;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public unzip(Lscala/Function1;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "A2:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;",
            "Lscala/Tuple2<",
            "TA1;TA2;>;>;)",
            "Lscala/Tuple2<",
            "Lscala/collection/TraversableViewLike<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>.Transformed<TA1;>;",
            "Lscala/collection/TraversableViewLike<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>.Transformed<TA2;>;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->unzip(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public unzip3(Lscala/Function1;)Lscala/Tuple3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "A2:",
            "Ljava/lang/Object;",
            "A3:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;",
            "Lscala/Tuple3<",
            "TA1;TA2;TA3;>;>;)",
            "Lscala/Tuple3<",
            "Lscala/collection/TraversableViewLike<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>.Transformed<TA1;>;",
            "Lscala/collection/TraversableViewLike<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>.Transformed<TA2;>;",
            "Lscala/collection/TraversableViewLike<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>.Transformed<TA3;>;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->unzip3(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/Tuple3;

    move-result-object p1

    return-object p1
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
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1, p2, p3}, Lscala/collection/SeqViewLike$class;->updated(Lscala/collection/SeqViewLike;ILjava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/IterableView;
    .locals 1

    .line 1085
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$$anon$1;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/IterableView;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Stream$$anon$1;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public view()Lscala/collection/SeqView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1085
    invoke-static {p0}, Lscala/collection/SeqLike$class;->view(Lscala/collection/SeqLike;)Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public view(II)Lscala/collection/SeqView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/SeqView<",
            "TA;",
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;>;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->view(Lscala/collection/SeqLike;II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 1085
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$$anon$1;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Stream$$anon$1;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public viewIdString()Ljava/lang/String;
    .locals 1

    .line 1085
    invoke-static {p0}, Lscala/collection/TraversableViewLike$class;->viewIdString(Lscala/collection/TraversableViewLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public viewIdentifier()Ljava/lang/String;
    .locals 1

    .line 1085
    invoke-static {p0}, Lscala/collection/TraversableViewLike$class;->viewIdentifier(Lscala/collection/TraversableViewLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public viewToString()Ljava/lang/String;
    .locals 1

    .line 1085
    invoke-static {p0}, Lscala/collection/TraversableViewLike$class;->viewToString(Lscala/collection/TraversableViewLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withFilter(Lscala/Function1;)Lscala/collection/TraversableView;
    .locals 0

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->withFilter(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withFilter(Lscala/Function1;)Lscala/collection/generic/FilterMonadic;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$$anon$1;->withFilter(Lscala/Function1;)Lscala/collection/TraversableView;

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
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;",
            "Lscala/Tuple2<",
            "TA1;TB;>;TThat;>;)TThat;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1, p2}, Lscala/collection/IterableViewLike$class;->zip(Lscala/collection/IterableViewLike;Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

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
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;",
            "Lscala/Tuple2<",
            "TA1;TB;>;TThat;>;)TThat;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/IterableViewLike$class;->zipAll(Lscala/collection/IterableViewLike;Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

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
            "Lscala/collection/immutable/StreamView<",
            "TA;",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;",
            "Lscala/Tuple2<",
            "TA1;",
            "Ljava/lang/Object;",
            ">;TThat;>;)TThat;"
        }
    .end annotation

    .line 1085
    invoke-static {p0, p1}, Lscala/collection/IterableViewLike$class;->zipWithIndex(Lscala/collection/IterableViewLike;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
