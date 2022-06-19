.class public final Lscala/collection/parallel/Splitter$$anon$1;
.super Ljava/lang/Object;
.source "Splitter.scala"

# interfaces
.implements Lscala/collection/parallel/Splitter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/Splitter$;->empty()Lscala/collection/parallel/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/Splitter<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->$init$(Lscala/collection/TraversableOnce;)V

    invoke-static {p0}, Lscala/collection/Iterator$class;->$init$(Lscala/collection/Iterator;)V

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

    .line 54
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

    .line 54
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

    .line 54
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->$plus$plus(Lscala/collection/Iterator;Lscala/Function0;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 54
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 54
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

    .line 54
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableOnce$class;->aggregate(Lscala/collection/TraversableOnce;Lscala/Function0;Lscala/Function2;Lscala/Function2;)Ljava/lang/Object;

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

    .line 54
    invoke-static {p0}, Lscala/collection/Iterator$class;->buffered(Lscala/collection/Iterator;)Lscala/collection/BufferedIterator;

    move-result-object v0

    return-object v0
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

    .line 54
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->collect(Lscala/collection/Iterator;Lscala/PartialFunction;)Lscala/collection/Iterator;

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

    .line 54
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->collectFirst(Lscala/collection/TraversableOnce;Lscala/PartialFunction;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->contains(Lscala/collection/Iterator;Ljava/lang/Object;)Z

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

    .line 54
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

    .line 54
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

    .line 54
    invoke-static {p0, p1, p2, p3}, Lscala/collection/Iterator$class;->copyToArray(Lscala/collection/Iterator;Ljava/lang/Object;II)V

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

    .line 54
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
            "TT;TB;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 54
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

    .line 54
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->count(Lscala/collection/TraversableOnce;Lscala/Function1;)I

    move-result p1

    return p1
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

    .line 54
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->drop(Lscala/collection/Iterator;I)Lscala/collection/Iterator;

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

    .line 54
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->dropWhile(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
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

    .line 54
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
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 54
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

    .line 54
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->filter(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

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

    .line 54
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->filterNot(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

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

    .line 54
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

    .line 54
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->flatMap(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

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

    .line 54
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

    .line 54
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

    .line 54
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

    .line 54
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

    .line 54
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

    .line 54
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->grouped(Lscala/collection/Iterator;I)Lscala/collection/Iterator$GroupedIterator;

    move-result-object p1

    return-object p1
.end method

.method public hasDefiniteSize()Z
    .locals 1

    .line 54
    invoke-static {p0}, Lscala/collection/Iterator$class;->hasDefiniteSize(Lscala/collection/Iterator;)Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    const/4 v0, 0x0

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

    .line 54
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

    .line 54
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->indexWhere(Lscala/collection/Iterator;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 54
    invoke-static {p0}, Lscala/collection/Iterator$class;->isEmpty(Lscala/collection/Iterator;)Z

    move-result v0

    return v0
.end method

.method public isTraversableAgain()Z
    .locals 1

    .line 54
    invoke-static {p0}, Lscala/collection/Iterator$class;->isTraversableAgain(Lscala/collection/Iterator;)Z

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .line 54
    invoke-static {p0}, Lscala/collection/Iterator$class;->length(Lscala/collection/Iterator;)I

    move-result v0

    return v0
.end method

.method public map(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TB;>;)",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 54
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->map(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

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

    .line 54
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

    .line 54
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

    .line 54
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

    .line 54
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->minBy(Lscala/collection/TraversableOnce;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public mkString()Ljava/lang/String;
    .locals 1

    .line 54
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mkString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lscala/collection/parallel/Splitter$$anon$1;->next()Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public next()Lscala/runtime/Nothing$;
    .locals 1

    .line 56
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/runtime/Nothing$;

    return-object v0
.end method

.method public nonEmpty()Z
    .locals 1

    .line 54
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

    .line 54
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

    .line 54
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->partition(Lscala/collection/Iterator;Lscala/Function1;)Lscala/Tuple2;

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

    .line 54
    invoke-static {p0, p1, p2, p3}, Lscala/collection/Iterator$class;->patch(Lscala/collection/Iterator;ILscala/collection/Iterator;I)Lscala/collection/Iterator;

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

    .line 54
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

    .line 54
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

    .line 54
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

    .line 54
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

    .line 54
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

    .line 54
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

    .line 54
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceRightOption(Lscala/collection/TraversableOnce;Lscala/Function2;)Lscala/Option;

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

    .line 54
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

    .line 54
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->sameElements(Lscala/collection/Iterator;Lscala/collection/Iterator;)Z

    move-result p1

    return p1
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

    .line 54
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

    .line 54
    invoke-static {p0, p1, p2}, Lscala/collection/Iterator$class;->scanRight(Lscala/collection/Iterator;Ljava/lang/Object;Lscala/Function2;)Lscala/collection/Iterator;

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

    .line 54
    invoke-static {p0}, Lscala/collection/Iterator$class;->seq(Lscala/collection/Iterator;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lscala/collection/parallel/Splitter$$anon$1;->seq()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 54
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->size(Lscala/collection/TraversableOnce;)I

    move-result v0

    return v0
.end method

.method public slice(II)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 54
    invoke-static {p0, p1, p2}, Lscala/collection/Iterator$class;->slice(Lscala/collection/Iterator;II)Lscala/collection/Iterator;

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

    .line 54
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

    .line 54
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

    .line 54
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->span(Lscala/collection/Iterator;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public split()Lscala/collection/Seq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 57
    sget-object v0, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x1

    new-array v2, v2, [Lscala/collection/parallel/Splitter;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/Seq$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/Seq;

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

    .line 54
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->sum(Lscala/collection/TraversableOnce;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public take(I)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 54
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->take(Lscala/collection/Iterator;I)Lscala/collection/Iterator;

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

    .line 54
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->takeWhile(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

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

    .line 54
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

    .line 54
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

    .line 54
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

    .line 54
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toIndexedSeq(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lscala/collection/parallel/Splitter$$anon$1;->toIterable()Lscala/collection/Iterable;

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

    .line 54
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

    .line 54
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

    .line 54
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toList(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/GenMap;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lscala/collection/parallel/Splitter$$anon$1;->toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

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

    .line 54
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->toMap(Lscala/collection/TraversableOnce;Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lscala/collection/parallel/Splitter$$anon$1;->toSeq()Lscala/collection/Seq;

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

    .line 54
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toSeq(Lscala/collection/TraversableOnce;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSet()Lscala/collection/GenSet;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lscala/collection/parallel/Splitter$$anon$1;->toSet()Lscala/collection/immutable/Set;

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

    .line 54
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

    .line 54
    invoke-static {p0}, Lscala/collection/Iterator$class;->toStream(Lscala/collection/Iterator;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 54
    invoke-static {p0}, Lscala/collection/Iterator$class;->toString(Lscala/collection/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lscala/collection/parallel/Splitter$$anon$1;->toTraversable()Lscala/collection/Traversable;

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

    .line 54
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

    .line 54
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
            "TT;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 54
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

    .line 54
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->zip(Lscala/collection/Iterator;Lscala/collection/Iterator;)Lscala/collection/Iterator;

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

    .line 54
    invoke-static {p0, p1, p2, p3}, Lscala/collection/Iterator$class;->zipAll(Lscala/collection/Iterator;Lscala/collection/Iterator;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Iterator;

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

    .line 54
    invoke-static {p0}, Lscala/collection/Iterator$class;->zipWithIndex(Lscala/collection/Iterator;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method
