.class public abstract Lscala/collection/immutable/RedBlackTree$TreeIterator;
.super Ljava/lang/Object;
.source "RedBlackTree.scala"

# interfaces
.implements Lscala/collection/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/RedBlackTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TreeIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/Iterator<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private index:I

.field private lookahead:Lscala/collection/immutable/RedBlackTree$Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation
.end field

.field private final ordering:Lscala/math/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/math/Ordering<",
            "TA;>;"
        }
    .end annotation
.end field

.field public final scala$collection$immutable$RedBlackTree$TreeIterator$$root:Lscala/collection/immutable/RedBlackTree$Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation
.end field

.field private stackOfNexts:[Lscala/collection/immutable/RedBlackTree$Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/immutable/RedBlackTree$Tree;Lscala/Option;Lscala/math/Ordering;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;",
            "Lscala/Option<",
            "TA;>;",
            "Lscala/math/Ordering<",
            "TA;>;)V"
        }
    .end annotation

    .line 468
    iput-object p1, p0, Lscala/collection/immutable/RedBlackTree$TreeIterator;->scala$collection$immutable$RedBlackTree$TreeIterator$$root:Lscala/collection/immutable/RedBlackTree$Tree;

    iput-object p3, p0, Lscala/collection/immutable/RedBlackTree$TreeIterator;->ordering:Lscala/math/Ordering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->$init$(Lscala/collection/TraversableOnce;)V

    invoke-static {p0}, Lscala/collection/Iterator$class;->$init$(Lscala/collection/Iterator;)V

    if-nez p1, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 520
    :cond_0
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->count()I

    move-result p3

    add-int/lit8 p3, p3, 0x2

    add-int/lit8 p3, p3, -0x1

    invoke-static {p3}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p3

    rsub-int/lit8 p3, p3, 0x20

    mul-int/lit8 p3, p3, 0x2

    add-int/lit8 p3, p3, -0x2

    add-int/lit8 p3, p3, -0x1

    .line 521
    new-array p3, p3, [Lscala/collection/immutable/RedBlackTree$Tree;

    .line 511
    :goto_0
    iput-object p3, p0, Lscala/collection/immutable/RedBlackTree$TreeIterator;->stackOfNexts:[Lscala/collection/immutable/RedBlackTree$Tree;

    const/4 p3, 0x0

    .line 523
    iput p3, p0, Lscala/collection/immutable/RedBlackTree$TreeIterator;->index:I

    .line 524
    invoke-virtual {p2}, Lscala/Option;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p2, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_1

    :cond_1
    new-instance p3, Lscala/Some;

    invoke-virtual {p2}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2}, Lscala/collection/immutable/RedBlackTree$TreeIterator;->scala$collection$immutable$RedBlackTree$TreeIterator$$startFrom(Ljava/lang/Object;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p2

    invoke-direct {p3, p2}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p2, p3

    :goto_1
    invoke-virtual {p2}, Lscala/Option;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0, p1}, Lscala/collection/immutable/RedBlackTree$TreeIterator;->scala$collection$immutable$RedBlackTree$TreeIterator$$findLeftMostOrPopOnEmpty(Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object p1

    :goto_2
    check-cast p1, Lscala/collection/immutable/RedBlackTree$Tree;

    iput-object p1, p0, Lscala/collection/immutable/RedBlackTree$TreeIterator;->lookahead:Lscala/collection/immutable/RedBlackTree$Tree;

    return-void
.end method

.method private final find$1(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 2

    :goto_0
    if-nez p1, :cond_0

    .line 534
    invoke-direct {p0}, Lscala/collection/immutable/RedBlackTree$TreeIterator;->popNext()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    return-object p1

    .line 536
    :cond_0
    iget-object v0, p0, Lscala/collection/immutable/RedBlackTree$TreeIterator;->ordering:Lscala/math/Ordering;

    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lscala/math/Ordering;->lteq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lscala/collection/immutable/RedBlackTree$TreeIterator;->goLeft(Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    goto :goto_0

    .line 537
    :cond_1
    invoke-direct {p0, p1}, Lscala/collection/immutable/RedBlackTree$TreeIterator;->goRight(Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    goto :goto_0
.end method

.method private goLeft(Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    .line 543
    invoke-direct {p0, p1}, Lscala/collection/immutable/RedBlackTree$TreeIterator;->pushNext(Lscala/collection/immutable/RedBlackTree$Tree;)V

    .line 544
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    return-object p1
.end method

.method private goRight(Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    .line 547
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->right()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    return-object p1
.end method

.method private popNext()Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    .line 506
    iget v0, p0, Lscala/collection/immutable/RedBlackTree$TreeIterator;->index:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 507
    iput v0, p0, Lscala/collection/immutable/RedBlackTree$TreeIterator;->index:I

    .line 508
    iget-object v1, p0, Lscala/collection/immutable/RedBlackTree$TreeIterator;->stackOfNexts:[Lscala/collection/immutable/RedBlackTree$Tree;

    aget-object v0, v1, v0

    :goto_0
    return-object v0
.end method

.method private pushNext(Lscala/collection/immutable/RedBlackTree$Tree;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 489
    :goto_0
    :try_start_0
    iget-object v0, p0, Lscala/collection/immutable/RedBlackTree$TreeIterator;->stackOfNexts:[Lscala/collection/immutable/RedBlackTree$Tree;

    iget v1, p0, Lscala/collection/immutable/RedBlackTree$TreeIterator;->index:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 490
    iput v1, p0, Lscala/collection/immutable/RedBlackTree$TreeIterator;->index:I

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    .line 501
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    iget v1, p0, Lscala/collection/immutable/RedBlackTree$TreeIterator;->index:I

    iget-object v2, p0, Lscala/collection/immutable/RedBlackTree$TreeIterator;->stackOfNexts:[Lscala/collection/immutable/RedBlackTree$Tree;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lscala/Predef$;->assert(Z)V

    .line 502
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    iget-object v1, p0, Lscala/collection/immutable/RedBlackTree$TreeIterator;->stackOfNexts:[Lscala/collection/immutable/RedBlackTree$Tree;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    const-class v3, Lscala/collection/immutable/RedBlackTree$Tree;

    invoke-virtual {v2, v3}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lscala/collection/mutable/ArrayOps;->$colon$plus(Ljava/lang/Object;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lscala/collection/immutable/RedBlackTree$Tree;

    iput-object v0, p0, Lscala/collection/immutable/RedBlackTree$TreeIterator;->stackOfNexts:[Lscala/collection/immutable/RedBlackTree$Tree;

    goto :goto_0
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
            "TR;TB;TB;>;)TB;"
        }
    .end annotation

    .line 468
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
            "TB;TR;TB;>;)TB;"
        }
    .end annotation

    .line 468
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

    .line 468
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->$plus$plus(Lscala/collection/Iterator;Lscala/Function0;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 468
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 468
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 468
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
            "TB;TR;TB;>;",
            "Lscala/Function2<",
            "TB;TB;TB;>;)TB;"
        }
    .end annotation

    .line 468
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
            "TR;>;"
        }
    .end annotation

    .line 468
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
            "TR;TB;>;)",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 468
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
            "TR;TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 468
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->collectFirst(Lscala/collection/TraversableOnce;Lscala/PartialFunction;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 468
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

    .line 468
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

    .line 468
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

    .line 468
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

    .line 468
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
            "TR;TB;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 468
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
            "TR;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 468
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
            "TR;>;"
        }
    .end annotation

    .line 468
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
            "TR;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Iterator<",
            "TR;>;"
        }
    .end annotation

    .line 468
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
            "TR;>;",
            "Lscala/collection/Iterator<",
            "TR;>;>;"
        }
    .end annotation

    .line 468
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
            "TR;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 468
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
            "TR;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Iterator<",
            "TR;>;"
        }
    .end annotation

    .line 468
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
            "TR;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Iterator<",
            "TR;>;"
        }
    .end annotation

    .line 468
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
            "TR;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "TR;>;"
        }
    .end annotation

    .line 468
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
            "TR;",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;>;)",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 468
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

    .line 468
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
            "TB;TR;TB;>;)TB;"
        }
    .end annotation

    .line 468
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
            "TR;TB;TB;>;)TB;"
        }
    .end annotation

    .line 468
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
            "TR;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 468
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
            "TR;TU;>;)V"
        }
    .end annotation

    .line 468
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
            "TR;>.GroupedIterator<TB;>;"
        }
    .end annotation

    .line 468
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->grouped(Lscala/collection/Iterator;I)Lscala/collection/Iterator$GroupedIterator;

    move-result-object p1

    return-object p1
.end method

.method public hasDefiniteSize()Z
    .locals 1

    .line 468
    invoke-static {p0}, Lscala/collection/Iterator$class;->hasDefiniteSize(Lscala/collection/Iterator;)Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .line 471
    iget-object v0, p0, Lscala/collection/immutable/RedBlackTree$TreeIterator;->lookahead:Lscala/collection/immutable/RedBlackTree$Tree;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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

    .line 468
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
            "TR;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 468
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->indexWhere(Lscala/collection/Iterator;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 468
    invoke-static {p0}, Lscala/collection/Iterator$class;->isEmpty(Lscala/collection/Iterator;)Z

    move-result v0

    return v0
.end method

.method public isTraversableAgain()Z
    .locals 1

    .line 468
    invoke-static {p0}, Lscala/collection/Iterator$class;->isTraversableAgain(Lscala/collection/Iterator;)Z

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .line 468
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
            "TR;TB;>;)",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 468
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
            "TB;>;)TR;"
        }
    .end annotation

    .line 468
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
            "TR;TB;>;",
            "Lscala/math/Ordering<",
            "TB;>;)TR;"
        }
    .end annotation

    .line 468
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
            "TB;>;)TR;"
        }
    .end annotation

    .line 468
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
            "TR;TB;>;",
            "Lscala/math/Ordering<",
            "TB;>;)TR;"
        }
    .end annotation

    .line 468
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->minBy(Lscala/collection/TraversableOnce;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public mkString()Ljava/lang/String;
    .locals 1

    .line 468
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mkString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 468
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 468
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lscala/collection/immutable/RedBlackTree$TreeIterator;->lookahead:Lscala/collection/immutable/RedBlackTree$Tree;

    if-eqz v0, :cond_0

    .line 477
    invoke-direct {p0, v0}, Lscala/collection/immutable/RedBlackTree$TreeIterator;->goRight(Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v1

    invoke-virtual {p0, v1}, Lscala/collection/immutable/RedBlackTree$TreeIterator;->scala$collection$immutable$RedBlackTree$TreeIterator$$findLeftMostOrPopOnEmpty(Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v1

    iput-object v1, p0, Lscala/collection/immutable/RedBlackTree$TreeIterator;->lookahead:Lscala/collection/immutable/RedBlackTree$Tree;

    .line 478
    invoke-virtual {p0, v0}, Lscala/collection/immutable/RedBlackTree$TreeIterator;->nextResult(Lscala/collection/immutable/RedBlackTree$Tree;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 475
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "next on empty iterator"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract nextResult(Lscala/collection/immutable/RedBlackTree$Tree;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;)TR;"
        }
    .end annotation
.end method

.method public nonEmpty()Z
    .locals 1

    .line 468
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

    .line 468
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
            "TR;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/Iterator<",
            "TR;>;",
            "Lscala/collection/Iterator<",
            "TR;>;>;"
        }
    .end annotation

    .line 468
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

    .line 468
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

    .line 468
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

    .line 468
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
            "TB;TR;TB;>;)TB;"
        }
    .end annotation

    .line 468
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
            "TB;TR;TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 468
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

    .line 468
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
            "TR;TB;TB;>;)TB;"
        }
    .end annotation

    .line 468
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
            "TR;TB;TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 468
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
            "TR;>;"
        }
    .end annotation

    .line 468
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

    .line 468
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->sameElements(Lscala/collection/Iterator;Lscala/collection/Iterator;)Z

    move-result p1

    return p1
.end method

.method public scala$collection$immutable$RedBlackTree$TreeIterator$$findLeftMostOrPopOnEmpty(Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    :goto_0
    if-nez p1, :cond_0

    .line 483
    invoke-direct {p0}, Lscala/collection/immutable/RedBlackTree$TreeIterator;->popNext()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    goto :goto_1

    .line 484
    :cond_0
    invoke-virtual {p1}, Lscala/collection/immutable/RedBlackTree$Tree;->left()Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    return-object p1

    .line 485
    :cond_1
    invoke-direct {p0, p1}, Lscala/collection/immutable/RedBlackTree$TreeIterator;->goLeft(Lscala/collection/immutable/RedBlackTree$Tree;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    goto :goto_0
.end method

.method public scala$collection$immutable$RedBlackTree$TreeIterator$$startFrom(Ljava/lang/Object;)Lscala/collection/immutable/RedBlackTree$Tree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/RedBlackTree$Tree<",
            "TA;TB;>;"
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lscala/collection/immutable/RedBlackTree$TreeIterator;->scala$collection$immutable$RedBlackTree$TreeIterator$$root:Lscala/collection/immutable/RedBlackTree$Tree;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 539
    :cond_0
    invoke-direct {p0, v0, p1}, Lscala/collection/immutable/RedBlackTree$TreeIterator;->find$1(Lscala/collection/immutable/RedBlackTree$Tree;Ljava/lang/Object;)Lscala/collection/immutable/RedBlackTree$Tree;

    move-result-object p1

    :goto_0
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
            "TB;TR;TB;>;)",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 468
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
            "TR;TB;TB;>;)",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 468
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
            "TR;>;"
        }
    .end annotation

    .line 468
    invoke-static {p0}, Lscala/collection/Iterator$class;->seq(Lscala/collection/Iterator;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 468
    invoke-virtual {p0}, Lscala/collection/immutable/RedBlackTree$TreeIterator;->seq()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 468
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
            "TR;>;"
        }
    .end annotation

    .line 468
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
            "TR;>.GroupedIterator<TB;>;"
        }
    .end annotation

    .line 468
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

    .line 468
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
            "TR;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/Iterator<",
            "TR;>;",
            "Lscala/collection/Iterator<",
            "TR;>;>;"
        }
    .end annotation

    .line 468
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->span(Lscala/collection/Iterator;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
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

    .line 468
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
            "TR;>;"
        }
    .end annotation

    .line 468
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
            "TR;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Iterator<",
            "TR;>;"
        }
    .end annotation

    .line 468
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
            "TR;TCol;>;)TCol;"
        }
    .end annotation

    .line 468
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

    .line 468
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

    .line 468
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
            "TR;>;"
        }
    .end annotation

    .line 468
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toIndexedSeq(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 468
    invoke-virtual {p0}, Lscala/collection/immutable/RedBlackTree$TreeIterator;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toIterable()Lscala/collection/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterable<",
            "TR;>;"
        }
    .end annotation

    .line 468
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
            "TR;>;"
        }
    .end annotation

    .line 468
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
            "TR;>;"
        }
    .end annotation

    .line 468
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toList(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/GenMap;
    .locals 0

    .line 468
    invoke-virtual {p0, p1}, Lscala/collection/immutable/RedBlackTree$TreeIterator;->toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

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
            "TR;",
            "Lscala/Tuple2<",
            "TT;TU;>;>;)",
            "Lscala/collection/immutable/Map<",
            "TT;TU;>;"
        }
    .end annotation

    .line 468
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->toMap(Lscala/collection/TraversableOnce;Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 468
    invoke-virtual {p0}, Lscala/collection/immutable/RedBlackTree$TreeIterator;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "TR;>;"
        }
    .end annotation

    .line 468
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toSeq(Lscala/collection/TraversableOnce;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSet()Lscala/collection/GenSet;
    .locals 1

    .line 468
    invoke-virtual {p0}, Lscala/collection/immutable/RedBlackTree$TreeIterator;->toSet()Lscala/collection/immutable/Set;

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

    .line 468
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
            "TR;>;"
        }
    .end annotation

    .line 468
    invoke-static {p0}, Lscala/collection/Iterator$class;->toStream(Lscala/collection/Iterator;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 468
    invoke-static {p0}, Lscala/collection/Iterator$class;->toString(Lscala/collection/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 468
    invoke-virtual {p0}, Lscala/collection/immutable/RedBlackTree$TreeIterator;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public toTraversable()Lscala/collection/Traversable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Traversable<",
            "TR;>;"
        }
    .end annotation

    .line 468
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
            "TR;>;"
        }
    .end annotation

    .line 468
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
            "TR;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Iterator<",
            "TR;>;"
        }
    .end annotation

    .line 468
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
            "TR;TB;>;>;"
        }
    .end annotation

    .line 468
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

    .line 468
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
            "TR;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 468
    invoke-static {p0}, Lscala/collection/Iterator$class;->zipWithIndex(Lscala/collection/Iterator;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method
