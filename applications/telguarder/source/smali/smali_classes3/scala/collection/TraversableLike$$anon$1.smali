.class public final Lscala/collection/TraversableLike$$anon$1;
.super Ljava/lang/Object;
.source "TraversableLike.scala"

# interfaces
.implements Lscala/collection/TraversableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableLike;->view()Lscala/collection/TraversableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/TraversableView<",
        "TA;TRepr;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/TraversableLike;

.field private volatile bitmap$0:Z

.field private underlying:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRepr;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/TraversableLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike<",
            "TA;TRepr;>;)V"
        }
    .end annotation

    .line 666
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/TraversableLike$$anon$1;->$outer:Lscala/collection/TraversableLike;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->$init$(Lscala/collection/TraversableOnce;)V

    invoke-static {p0}, Lscala/collection/Parallelizable$class;->$init$(Lscala/collection/Parallelizable;)V

    invoke-static {p0}, Lscala/collection/TraversableLike$class;->$init$(Lscala/collection/TraversableLike;)V

    invoke-static {p0}, Lscala/collection/generic/GenericTraversableTemplate$class;->$init$(Lscala/collection/generic/GenericTraversableTemplate;)V

    invoke-static {p0}, Lscala/collection/GenTraversable$class;->$init$(Lscala/collection/GenTraversable;)V

    invoke-static {p0}, Lscala/collection/Traversable$class;->$init$(Lscala/collection/Traversable;)V

    invoke-static {p0}, Lscala/collection/ViewMkString$class;->$init$(Lscala/collection/ViewMkString;)V

    invoke-static {p0}, Lscala/collection/TraversableViewLike$class;->$init$(Lscala/collection/TraversableViewLike;)V

    return-void
.end method

.method private underlying$lzycompute()Ljava/lang/Object;
    .locals 1

    .line 667
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lscala/collection/TraversableLike$$anon$1;->bitmap$0:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lscala/collection/TraversableLike$$anon$1;->$outer:Lscala/collection/TraversableLike;

    invoke-interface {v0}, Lscala/collection/TraversableLike;->repr()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lscala/collection/TraversableLike$$anon$1;->underlying:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lscala/collection/TraversableLike$$anon$1;->bitmap$0:Z

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/TraversableLike$$anon$1;->underlying:Ljava/lang/Object;

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

    .line 666
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
            "TB;TA;TB;>;)TB;"
        }
    .end annotation

    .line 666
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->$div$colon(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

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
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 666
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
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 666
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
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 666
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->$plus$plus$colon(Lscala/collection/TraversableLike;Lscala/collection/TraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 666
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 666
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 666
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

    .line 666
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableOnce$class;->aggregate(Lscala/collection/TraversableOnce;Lscala/Function0;Lscala/Function2;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 666
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

    .line 666
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->collectFirst(Lscala/collection/TraversableOnce;Lscala/PartialFunction;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/Traversable;",
            ">;"
        }
    .end annotation

    .line 666
    invoke-static {p0}, Lscala/collection/Traversable$class;->companion(Lscala/collection/Traversable;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
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

    .line 666
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

    .line 666
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

    .line 666
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableLike$class;->copyToArray(Lscala/collection/TraversableLike;Ljava/lang/Object;II)V

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

    .line 666
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->copyToBuffer(Lscala/collection/TraversableOnce;Lscala/collection/mutable/Buffer;)V

    return-void
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

    .line 666
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->count(Lscala/collection/TraversableOnce;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drop(I)Ljava/lang/Object;
    .locals 0

    .line 666
    invoke-virtual {p0, p1}, Lscala/collection/TraversableLike$$anon$1;->drop(I)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method

.method public drop(I)Lscala/collection/TraversableView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;"
        }
    .end annotation

    .line 666
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->drop(Lscala/collection/TraversableViewLike;I)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dropWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 666
    invoke-virtual {p0, p1}, Lscala/collection/TraversableLike$$anon$1;->dropWhile(Lscala/Function1;)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method

.method public dropWhile(Lscala/Function1;)Lscala/collection/TraversableView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;"
        }
    .end annotation

    .line 666
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->dropWhile(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
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

    .line 666
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->exists(Lscala/collection/TraversableLike;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic filter(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 666
    invoke-virtual {p0, p1}, Lscala/collection/TraversableLike$$anon$1;->filter(Lscala/Function1;)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method

.method public filter(Lscala/Function1;)Lscala/collection/TraversableView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;"
        }
    .end annotation

    .line 666
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->filter(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 666
    invoke-virtual {p0, p1}, Lscala/collection/TraversableLike$$anon$1;->filterNot(Lscala/Function1;)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method

.method public filterNot(Lscala/Function1;)Lscala/collection/TraversableView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;"
        }
    .end annotation

    .line 666
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

    .line 666
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->find(Lscala/collection/TraversableLike;Lscala/Function1;)Lscala/Option;

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
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 666
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableViewLike$class;->flatMap(Lscala/collection/TraversableViewLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic flatten(Lscala/Function1;)Lscala/collection/GenTraversable;
    .locals 0

    .line 666
    invoke-virtual {p0, p1}, Lscala/collection/TraversableLike$$anon$1;->flatten(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;

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
            "TA;TRepr;",
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;>.Transformed<TB;>;"
        }
    .end annotation

    .line 666
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

    .line 666
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

    .line 666
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

    .line 666
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
            "TA;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 666
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->forall(Lscala/collection/TraversableLike;Lscala/Function1;)Z

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
            "TRepr;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 666
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->force(Lscala/collection/TraversableViewLike;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public foreach(Lscala/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TU;>;)V"
        }
    .end annotation

    .line 668
    iget-object v0, p0, Lscala/collection/TraversableLike$$anon$1;->$outer:Lscala/collection/TraversableLike;

    invoke-interface {v0, p1}, Lscala/collection/TraversableLike;->foreach(Lscala/Function1;)V

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
            "Lscala/collection/Traversable<",
            "TB;>;>;"
        }
    .end annotation

    .line 666
    invoke-static {p0}, Lscala/collection/generic/GenericTraversableTemplate$class;->genericBuilder(Lscala/collection/generic/GenericTraversableTemplate;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 666
    invoke-virtual {p0, p1}, Lscala/collection/TraversableLike$$anon$1;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

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
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;>;"
        }
    .end annotation

    .line 666
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->groupBy(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public hasDefiniteSize()Z
    .locals 1

    .line 666
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->hasDefiniteSize(Lscala/collection/TraversableLike;)Z

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

    .line 666
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->head(Lscala/collection/TraversableLike;)Ljava/lang/Object;

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

    .line 666
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->headOption(Lscala/collection/TraversableLike;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic init()Ljava/lang/Object;
    .locals 1

    .line 666
    invoke-virtual {p0}, Lscala/collection/TraversableLike$$anon$1;->init()Lscala/collection/TraversableView;

    move-result-object v0

    return-object v0
.end method

.method public init()Lscala/collection/TraversableView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;"
        }
    .end annotation

    .line 666
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
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;>;"
        }
    .end annotation

    .line 666
    invoke-static {p0}, Lscala/collection/TraversableViewLike$class;->inits(Lscala/collection/TraversableViewLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 666
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->isEmpty(Lscala/collection/TraversableLike;)Z

    move-result v0

    return v0
.end method

.method public final isTraversableAgain()Z
    .locals 1

    .line 666
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->isTraversableAgain(Lscala/collection/TraversableLike;)Z

    move-result v0

    return v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 666
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->last(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    .line 666
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->lastOption(Lscala/collection/TraversableLike;)Lscala/Option;

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
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 666
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

    .line 666
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

    .line 666
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

    .line 666
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

    .line 666
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->minBy(Lscala/collection/TraversableOnce;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public mkString()Ljava/lang/String;
    .locals 1

    .line 666
    invoke-static {p0}, Lscala/collection/ViewMkString$class;->mkString(Lscala/collection/ViewMkString;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mkString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 666
    invoke-static {p0, p1}, Lscala/collection/ViewMkString$class;->mkString(Lscala/collection/ViewMkString;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 666
    invoke-static {p0, p1, p2, p3}, Lscala/collection/ViewMkString$class;->mkString(Lscala/collection/ViewMkString;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public newAppended(Lscala/collection/GenTraversable;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenTraversable<",
            "TB;>;)",
            "Lscala/collection/TraversableViewLike<",
            "TA;TRepr;",
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;>.Transformed<TB;>;"
        }
    .end annotation

    .line 666
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->newAppended(Lscala/collection/TraversableViewLike;Lscala/collection/GenTraversable;)Lscala/collection/TraversableViewLike$Transformed;

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
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;>;"
        }
    .end annotation

    .line 666
    invoke-static {p0}, Lscala/collection/TraversableViewLike$class;->newBuilder(Lscala/collection/TraversableViewLike;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public newDropped(I)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/TraversableViewLike<",
            "TA;TRepr;",
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;>.Transformed<TA;>;"
        }
    .end annotation

    .line 666
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->newDropped(Lscala/collection/TraversableViewLike;I)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public newDroppedWhile(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/TraversableViewLike<",
            "TA;TRepr;",
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;>.Transformed<TA;>;"
        }
    .end annotation

    .line 666
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->newDroppedWhile(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public newFiltered(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/TraversableViewLike<",
            "TA;TRepr;",
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;>.Transformed<TA;>;"
        }
    .end annotation

    .line 666
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->newFiltered(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public newFlatMapped(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;
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
            "TA;TRepr;",
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;>.Transformed<TB;>;"
        }
    .end annotation

    .line 666
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->newFlatMapped(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public newForced(Lscala/Function0;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "Lscala/collection/GenSeq<",
            "TB;>;>;)",
            "Lscala/collection/TraversableViewLike<",
            "TA;TRepr;",
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;>.Transformed<TB;>;"
        }
    .end annotation

    .line 666
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->newForced(Lscala/collection/TraversableViewLike;Lscala/Function0;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public newMapped(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TB;>;)",
            "Lscala/collection/TraversableViewLike<",
            "TA;TRepr;",
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;>.Transformed<TB;>;"
        }
    .end annotation

    .line 666
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->newMapped(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public newSliced(Lscala/collection/generic/SliceInterval;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/generic/SliceInterval;",
            ")",
            "Lscala/collection/TraversableViewLike<",
            "TA;TRepr;",
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;>.Transformed<TA;>;"
        }
    .end annotation

    .line 666
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->newSliced(Lscala/collection/TraversableViewLike;Lscala/collection/generic/SliceInterval;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public newTaken(I)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/TraversableViewLike<",
            "TA;TRepr;",
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;>.Transformed<TA;>;"
        }
    .end annotation

    .line 666
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->newTaken(Lscala/collection/TraversableViewLike;I)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public newTakenWhile(Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/TraversableViewLike<",
            "TA;TRepr;",
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;>.Transformed<TA;>;"
        }
    .end annotation

    .line 666
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->newTakenWhile(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/collection/TraversableViewLike$Transformed;

    move-result-object p1

    return-object p1
.end method

.method public nonEmpty()Z
    .locals 1

    .line 666
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->nonEmpty(Lscala/collection/TraversableOnce;)Z

    move-result v0

    return v0
.end method

.method public par()Lscala/collection/Parallel;
    .locals 1

    .line 666
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
            "Lscala/collection/parallel/ParIterable<",
            "TA;>;>;"
        }
    .end annotation

    .line 666
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->parCombiner(Lscala/collection/TraversableLike;)Lscala/collection/parallel/Combiner;

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
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;",
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;>;"
        }
    .end annotation

    .line 666
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->partition(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
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

    .line 666
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

    .line 666
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

    .line 666
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

    .line 666
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

    .line 666
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

    .line 666
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
            "TA;TB;TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 666
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceRightOption(Lscala/collection/TraversableOnce;Lscala/Function2;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public repr()Ljava/lang/Object;
    .locals 1

    .line 666
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->repr(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    .line 666
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->reversed(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$TraversableViewLike$$super$tail()Lscala/collection/TraversableView;
    .locals 1

    .line 666
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
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 666
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
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 666
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
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 666
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableViewLike$class;->scanRight(Lscala/collection/TraversableViewLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public seq()Lscala/collection/Traversable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Traversable<",
            "TA;>;"
        }
    .end annotation

    .line 666
    invoke-static {p0}, Lscala/collection/Traversable$class;->seq(Lscala/collection/Traversable;)Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 666
    invoke-virtual {p0}, Lscala/collection/TraversableLike$$anon$1;->seq()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 666
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->size(Lscala/collection/TraversableOnce;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic slice(II)Ljava/lang/Object;
    .locals 0

    .line 666
    invoke-virtual {p0, p1, p2}, Lscala/collection/TraversableLike$$anon$1;->slice(II)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method

.method public slice(II)Lscala/collection/TraversableView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;"
        }
    .end annotation

    .line 666
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableViewLike$class;->slice(Lscala/collection/TraversableViewLike;II)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method

.method public sliceWithKnownBound(II)Ljava/lang/Object;
    .locals 0

    .line 666
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->sliceWithKnownBound(Lscala/collection/TraversableLike;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public sliceWithKnownDelta(III)Ljava/lang/Object;
    .locals 0

    .line 666
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableLike$class;->sliceWithKnownDelta(Lscala/collection/TraversableLike;III)Ljava/lang/Object;

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
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;",
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;>;"
        }
    .end annotation

    .line 666
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
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;",
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;>;"
        }
    .end annotation

    .line 666
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->splitAt(Lscala/collection/TraversableViewLike;I)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    .line 666
    invoke-static {p0}, Lscala/collection/TraversableViewLike$class;->stringPrefix(Lscala/collection/TraversableViewLike;)Ljava/lang/String;

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

    .line 666
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->sum(Lscala/collection/TraversableOnce;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tail()Ljava/lang/Object;
    .locals 1

    .line 666
    invoke-virtual {p0}, Lscala/collection/TraversableLike$$anon$1;->tail()Lscala/collection/TraversableView;

    move-result-object v0

    return-object v0
.end method

.method public tail()Lscala/collection/TraversableView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;"
        }
    .end annotation

    .line 666
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
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;>;"
        }
    .end annotation

    .line 666
    invoke-static {p0}, Lscala/collection/TraversableViewLike$class;->tails(Lscala/collection/TraversableViewLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic take(I)Ljava/lang/Object;
    .locals 0

    .line 666
    invoke-virtual {p0, p1}, Lscala/collection/TraversableLike$$anon$1;->take(I)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method

.method public take(I)Lscala/collection/TraversableView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;"
        }
    .end annotation

    .line 666
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->take(Lscala/collection/TraversableViewLike;I)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic takeWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 666
    invoke-virtual {p0, p1}, Lscala/collection/TraversableLike$$anon$1;->takeWhile(Lscala/Function1;)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method

.method public takeWhile(Lscala/Function1;)Lscala/collection/TraversableView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;"
        }
    .end annotation

    .line 666
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->takeWhile(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method

.method public thisCollection()Lscala/collection/Traversable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Traversable<",
            "TA;>;"
        }
    .end annotation

    .line 666
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->thisCollection(Lscala/collection/TraversableLike;)Lscala/collection/Traversable;

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

    .line 666
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

    .line 666
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

    .line 666
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

    .line 666
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toBuffer(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 666
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->toCollection(Lscala/collection/TraversableLike;Ljava/lang/Object;)Lscala/collection/Traversable;

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

    .line 666
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toIndexedSeq(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 666
    invoke-virtual {p0}, Lscala/collection/TraversableLike$$anon$1;->toIterable()Lscala/collection/Iterable;

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

    .line 666
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
            "TA;>;"
        }
    .end annotation

    .line 666
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->toIterator(Lscala/collection/TraversableLike;)Lscala/collection/Iterator;

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

    .line 666
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toList(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/GenMap;
    .locals 0

    .line 666
    invoke-virtual {p0, p1}, Lscala/collection/TraversableLike$$anon$1;->toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

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

    .line 666
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->toMap(Lscala/collection/TraversableOnce;Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 666
    invoke-virtual {p0}, Lscala/collection/TraversableLike$$anon$1;->toSeq()Lscala/collection/Seq;

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

    .line 666
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toSeq(Lscala/collection/TraversableOnce;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSet()Lscala/collection/GenSet;
    .locals 1

    .line 666
    invoke-virtual {p0}, Lscala/collection/TraversableLike$$anon$1;->toSet()Lscala/collection/immutable/Set;

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

    .line 666
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

    .line 666
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->toStream(Lscala/collection/TraversableLike;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 666
    invoke-static {p0}, Lscala/collection/TraversableViewLike$class;->toString(Lscala/collection/TraversableViewLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 666
    invoke-virtual {p0}, Lscala/collection/TraversableLike$$anon$1;->toTraversable()Lscala/collection/Traversable;

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

    .line 666
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

    .line 666
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toVector(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/Vector;

    move-result-object v0

    return-object v0
.end method

.method public transpose(Lscala/Function1;)Lscala/collection/GenTraversable;
    .locals 0

    .line 666
    invoke-static {p0, p1}, Lscala/collection/generic/GenericTraversableTemplate$class;->transpose(Lscala/collection/generic/GenericTraversableTemplate;Lscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p1

    return-object p1
.end method

.method public underlying()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRepr;"
        }
    .end annotation

    .line 667
    iget-boolean v0, p0, Lscala/collection/TraversableLike$$anon$1;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/collection/TraversableLike$$anon$1;->underlying:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lscala/collection/TraversableLike$$anon$1;->underlying$lzycompute()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
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
            "TA;TRepr;",
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;>.Transformed<TA1;>;",
            "Lscala/collection/TraversableViewLike<",
            "TA;TRepr;",
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;>.Transformed<TA2;>;>;"
        }
    .end annotation

    .line 666
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
            "TA;TRepr;",
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;>.Transformed<TA1;>;",
            "Lscala/collection/TraversableViewLike<",
            "TA;TRepr;",
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;>.Transformed<TA2;>;",
            "Lscala/collection/TraversableViewLike<",
            "TA;TRepr;",
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;>.Transformed<TA3;>;>;"
        }
    .end annotation

    .line 666
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->unzip3(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/Tuple3;

    move-result-object p1

    return-object p1
.end method

.method public view()Lscala/collection/TraversableView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 666
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->view(Lscala/collection/TraversableLike;)Lscala/collection/TraversableView;

    move-result-object v0

    return-object v0
.end method

.method public view(II)Lscala/collection/TraversableView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/TraversableView<",
            "TA;",
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;>;"
        }
    .end annotation

    .line 666
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->view(Lscala/collection/TraversableLike;II)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method

.method public viewIdString()Ljava/lang/String;
    .locals 1

    .line 666
    invoke-static {p0}, Lscala/collection/TraversableViewLike$class;->viewIdString(Lscala/collection/TraversableViewLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public viewIdentifier()Ljava/lang/String;
    .locals 1

    .line 666
    invoke-static {p0}, Lscala/collection/TraversableViewLike$class;->viewIdentifier(Lscala/collection/TraversableViewLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public viewToString()Ljava/lang/String;
    .locals 1

    .line 666
    invoke-static {p0}, Lscala/collection/TraversableViewLike$class;->viewToString(Lscala/collection/TraversableViewLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withFilter(Lscala/Function1;)Lscala/collection/TraversableView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/TraversableView<",
            "TA;TRepr;>;"
        }
    .end annotation

    .line 666
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$class;->withFilter(Lscala/collection/TraversableViewLike;Lscala/Function1;)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withFilter(Lscala/Function1;)Lscala/collection/generic/FilterMonadic;
    .locals 0

    .line 666
    invoke-virtual {p0, p1}, Lscala/collection/TraversableLike$$anon$1;->withFilter(Lscala/Function1;)Lscala/collection/TraversableView;

    move-result-object p1

    return-object p1
.end method
