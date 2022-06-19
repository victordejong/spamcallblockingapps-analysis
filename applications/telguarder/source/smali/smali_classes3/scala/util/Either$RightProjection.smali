.class public final Lscala/util/Either$RightProjection;
.super Ljava/lang/Object;
.source "Either.scala"

# interfaces
.implements Lscala/Product;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/util/Either;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RightProjection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/Product;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final e:Lscala/util/Either;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/util/Either<",
            "TA;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/util/Either;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/Either<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 439
    iput-object p1, p0, Lscala/util/Either$RightProjection;->e:Lscala/util/Either;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    return-void
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 439
    instance-of p1, p1, Lscala/util/Either$RightProjection;

    return p1
.end method

.method public copy(Lscala/util/Either;)Lscala/util/Either$RightProjection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/util/Either<",
            "TA;TB;>;)",
            "Lscala/util/Either$RightProjection<",
            "TA;TB;>;"
        }
    .end annotation

    .line 439
    new-instance v0, Lscala/util/Either$RightProjection;

    invoke-direct {v0, p1}, Lscala/util/Either$RightProjection;-><init>(Lscala/util/Either;)V

    return-object v0
.end method

.method public copy$default$1()Lscala/util/Either;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/util/Either<",
            "TA;TB;>;"
        }
    .end annotation

    .line 439
    invoke-virtual {p0}, Lscala/util/Either$RightProjection;->e()Lscala/util/Either;

    move-result-object v0

    return-object v0
.end method

.method public e()Lscala/util/Either;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/util/Either<",
            "TA;TB;>;"
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lscala/util/Either$RightProjection;->e:Lscala/util/Either;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, p1, :cond_3

    .line 439
    instance-of v2, p1, Lscala/util/Either$RightProjection;

    if-eqz v2, :cond_4

    check-cast p1, Lscala/util/Either$RightProjection;

    invoke-virtual {p0}, Lscala/util/Either$RightProjection;->e()Lscala/util/Either;

    move-result-object v2

    invoke-virtual {p1}, Lscala/util/Either$RightProjection;->e()Lscala/util/Either;

    move-result-object p1

    if-nez v2, :cond_0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public exists(Lscala/Function1;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TB;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 510
    invoke-virtual {p0}, Lscala/util/Either$RightProjection;->e()Lscala/util/Either;

    move-result-object v0

    .line 511
    instance-of v1, v0, Lscala/util/Left;

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 512
    :cond_0
    instance-of v1, v0, Lscala/util/Right;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/util/Right;

    invoke-virtual {v0}, Lscala/util/Right;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1

    .line 510
    :cond_1
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public filter(Lscala/Function1;)Lscala/Option;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TB;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/util/Either<",
            "TX;TB;>;>;"
        }
    .end annotation

    .line 548
    invoke-virtual {p0}, Lscala/util/Either$RightProjection;->e()Lscala/util/Either;

    move-result-object v0

    .line 549
    instance-of v1, v0, Lscala/util/Left;

    if-eqz v1, :cond_0

    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    .line 550
    :cond_0
    instance-of v1, v0, Lscala/util/Right;

    if-eqz v1, :cond_2

    check-cast v0, Lscala/util/Right;

    invoke-virtual {v0}, Lscala/util/Right;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lscala/Some;

    new-instance v1, Lscala/util/Right;

    invoke-virtual {v0}, Lscala/util/Right;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v0}, Lscala/util/Right;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_0
    return-object p1

    .line 548
    :cond_2
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public flatMap(Lscala/Function1;)Lscala/util/Either;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AA:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TB;",
            "Lscala/util/Either<",
            "TAA;TY;>;>;)",
            "Lscala/util/Either<",
            "TAA;TY;>;"
        }
    .end annotation

    .line 520
    invoke-virtual {p0}, Lscala/util/Either$RightProjection;->e()Lscala/util/Either;

    move-result-object v0

    .line 521
    instance-of v1, v0, Lscala/util/Left;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/util/Left;

    new-instance p1, Lscala/util/Left;

    invoke-virtual {v0}, Lscala/util/Left;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v0}, Lscala/util/Left;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 522
    :cond_0
    instance-of v1, v0, Lscala/util/Right;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/util/Right;

    invoke-virtual {v0}, Lscala/util/Right;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/util/Either;

    :goto_0
    return-object p1

    .line 520
    :cond_1
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public forall(Lscala/Function1;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TB;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 495
    invoke-virtual {p0}, Lscala/util/Either$RightProjection;->e()Lscala/util/Either;

    move-result-object v0

    .line 496
    instance-of v1, v0, Lscala/util/Left;

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 497
    :cond_0
    instance-of v1, v0, Lscala/util/Right;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/util/Right;

    invoke-virtual {v0}, Lscala/util/Right;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1

    .line 495
    :cond_1
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public foreach(Lscala/Function1;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TB;TU;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 466
    invoke-virtual {p0}, Lscala/util/Either$RightProjection;->e()Lscala/util/Either;

    move-result-object v0

    .line 467
    instance-of v1, v0, Lscala/util/Left;

    if-eqz v1, :cond_0

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 468
    :cond_0
    instance-of v1, v0, Lscala/util/Right;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/util/Right;

    invoke-virtual {v0}, Lscala/util/Right;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    .line 466
    :cond_1
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 452
    invoke-virtual {p0}, Lscala/util/Either$RightProjection;->e()Lscala/util/Either;

    move-result-object v0

    .line 453
    instance-of v1, v0, Lscala/util/Left;

    if-nez v1, :cond_1

    .line 454
    instance-of v1, v0, Lscala/util/Right;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/util/Right;

    invoke-virtual {v0}, Lscala/util/Right;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 452
    :cond_0
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 453
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Either.right.value on Left"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOrElse(Lscala/Function0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<BB:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TBB;>;)TBB;"
        }
    .end annotation

    .line 480
    invoke-virtual {p0}, Lscala/util/Either$RightProjection;->e()Lscala/util/Either;

    move-result-object v0

    .line 481
    instance-of v1, v0, Lscala/util/Left;

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 482
    :cond_0
    instance-of p1, v0, Lscala/util/Right;

    if-eqz p1, :cond_1

    check-cast v0, Lscala/util/Right;

    invoke-virtual {v0}, Lscala/util/Right;->b()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    .line 480
    :cond_1
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    .line 439
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_hashCode(Lscala/Product;)I

    move-result v0

    return v0
.end method

.method public map(Lscala/Function1;)Lscala/util/Either;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TB;TY;>;)",
            "Lscala/Product;"
        }
    .end annotation

    .line 533
    invoke-virtual {p0}, Lscala/util/Either$RightProjection;->e()Lscala/util/Either;

    move-result-object v0

    .line 534
    instance-of v1, v0, Lscala/util/Left;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/util/Left;

    new-instance p1, Lscala/util/Left;

    invoke-virtual {v0}, Lscala/util/Left;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v0}, Lscala/util/Left;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 535
    :cond_0
    instance-of v1, v0, Lscala/util/Right;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/util/Right;

    new-instance v1, Lscala/util/Right;

    invoke-virtual {v0}, Lscala/util/Right;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, p1}, Lscala/util/Right;-><init>(Ljava/lang/Object;)V

    move-object p1, v1

    :goto_0
    return-object p1

    .line 533
    :cond_1
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public productArity()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public productElement(I)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    .line 439
    invoke-virtual {p0}, Lscala/util/Either$RightProjection;->e()Lscala/util/Either;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public productIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 439
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "RightProjection"

    return-object v0
.end method

.method public toOption()Lscala/Option;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 574
    invoke-virtual {p0}, Lscala/util/Either$RightProjection;->e()Lscala/util/Either;

    move-result-object v0

    .line 575
    instance-of v1, v0, Lscala/util/Left;

    if-eqz v1, :cond_0

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    .line 576
    :cond_0
    instance-of v1, v0, Lscala/util/Right;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/util/Right;

    new-instance v1, Lscala/Some;

    invoke-virtual {v0}, Lscala/util/Right;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    return-object v0

    .line 574
    :cond_1
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public toSeq()Lscala/collection/Seq;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "TB;>;"
        }
    .end annotation

    .line 561
    invoke-virtual {p0}, Lscala/util/Either$RightProjection;->e()Lscala/util/Either;

    move-result-object v0

    .line 562
    instance-of v1, v0, Lscala/util/Left;

    if-eqz v1, :cond_0

    sget-object v0, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v0}, Lscala/collection/Seq$;->empty()Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/Seq;

    goto :goto_0

    .line 563
    :cond_0
    instance-of v1, v0, Lscala/util/Right;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/util/Right;

    sget-object v1, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lscala/util/Right;->b()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Lscala/collection/Seq$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/Seq;

    :goto_0
    return-object v0

    .line 561
    :cond_1
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 439
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_toString(Lscala/Product;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
