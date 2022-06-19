.class public final Lscala/util/Either$LeftProjection;
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
    name = "LeftProjection"
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

    .line 275
    iput-object p1, p0, Lscala/util/Either$LeftProjection;->e:Lscala/util/Either;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    return-void
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 275
    instance-of p1, p1, Lscala/util/Either$LeftProjection;

    return p1
.end method

.method public copy(Lscala/util/Either;)Lscala/util/Either$LeftProjection;
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
            "Lscala/util/Either$LeftProjection<",
            "TA;TB;>;"
        }
    .end annotation

    .line 275
    new-instance v0, Lscala/util/Either$LeftProjection;

    invoke-direct {v0, p1}, Lscala/util/Either$LeftProjection;-><init>(Lscala/util/Either;)V

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

    .line 275
    invoke-virtual {p0}, Lscala/util/Either$LeftProjection;->e()Lscala/util/Either;

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

    .line 275
    iget-object v0, p0, Lscala/util/Either$LeftProjection;->e:Lscala/util/Either;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, p1, :cond_3

    .line 275
    instance-of v2, p1, Lscala/util/Either$LeftProjection;

    if-eqz v2, :cond_4

    check-cast p1, Lscala/util/Either$LeftProjection;

    invoke-virtual {p0}, Lscala/util/Either$LeftProjection;->e()Lscala/util/Either;

    move-result-object v2

    invoke-virtual {p1}, Lscala/util/Either$LeftProjection;->e()Lscala/util/Either;

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
            "TA;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 348
    invoke-virtual {p0}, Lscala/util/Either$LeftProjection;->e()Lscala/util/Either;

    move-result-object v0

    .line 349
    instance-of v1, v0, Lscala/util/Left;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/util/Left;

    invoke-virtual {v0}, Lscala/util/Left;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 350
    :cond_0
    instance-of p1, v0, Lscala/util/Right;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    return p1

    .line 348
    :cond_1
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public filter(Lscala/Function1;)Lscala/Option;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/util/Either<",
            "TA;TY;>;>;"
        }
    .end annotation

    .line 390
    invoke-virtual {p0}, Lscala/util/Either$LeftProjection;->e()Lscala/util/Either;

    move-result-object v0

    .line 391
    instance-of v1, v0, Lscala/util/Left;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/util/Left;

    invoke-virtual {v0}, Lscala/util/Left;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lscala/Some;

    new-instance v1, Lscala/util/Left;

    invoke-virtual {v0}, Lscala/util/Left;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v0}, Lscala/util/Left;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    .line 392
    :cond_1
    instance-of p1, v0, Lscala/util/Right;

    if-eqz p1, :cond_2

    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_0
    return-object p1

    .line 390
    :cond_2
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public flatMap(Lscala/Function1;)Lscala/util/Either;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<BB:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;",
            "Lscala/util/Either<",
            "TX;TBB;>;>;)",
            "Lscala/util/Either<",
            "TX;TBB;>;"
        }
    .end annotation

    .line 362
    invoke-virtual {p0}, Lscala/util/Either$LeftProjection;->e()Lscala/util/Either;

    move-result-object v0

    .line 363
    instance-of v1, v0, Lscala/util/Left;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/util/Left;

    invoke-virtual {v0}, Lscala/util/Left;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/util/Either;

    goto :goto_0

    .line 364
    :cond_0
    instance-of p1, v0, Lscala/util/Right;

    if-eqz p1, :cond_1

    check-cast v0, Lscala/util/Right;

    new-instance p1, Lscala/util/Right;

    invoke-virtual {v0}, Lscala/util/Right;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v0}, Lscala/util/Right;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object p1

    .line 362
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
            "TA;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 332
    invoke-virtual {p0}, Lscala/util/Either$LeftProjection;->e()Lscala/util/Either;

    move-result-object v0

    .line 333
    instance-of v1, v0, Lscala/util/Left;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/util/Left;

    invoke-virtual {v0}, Lscala/util/Left;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 334
    :cond_0
    instance-of p1, v0, Lscala/util/Right;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    :goto_0
    return p1

    .line 332
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
            "TA;TU;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 301
    invoke-virtual {p0}, Lscala/util/Either$LeftProjection;->e()Lscala/util/Either;

    move-result-object v0

    .line 302
    instance-of v1, v0, Lscala/util/Left;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/util/Left;

    invoke-virtual {v0}, Lscala/util/Left;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 303
    :cond_0
    instance-of p1, v0, Lscala/util/Right;

    if-eqz p1, :cond_1

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_0
    return-object p1

    .line 301
    :cond_1
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 287
    invoke-virtual {p0}, Lscala/util/Either$LeftProjection;->e()Lscala/util/Either;

    move-result-object v0

    .line 288
    instance-of v1, v0, Lscala/util/Left;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/util/Left;

    invoke-virtual {v0}, Lscala/util/Left;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 289
    :cond_0
    instance-of v1, v0, Lscala/util/Right;

    if-eqz v1, :cond_1

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Either.left.value on Right"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_1
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getOrElse(Lscala/Function0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AA:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TAA;>;)TAA;"
        }
    .end annotation

    .line 316
    invoke-virtual {p0}, Lscala/util/Either$LeftProjection;->e()Lscala/util/Either;

    move-result-object v0

    .line 317
    instance-of v1, v0, Lscala/util/Left;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/util/Left;

    invoke-virtual {v0}, Lscala/util/Left;->a()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 318
    :cond_0
    instance-of v1, v0, Lscala/util/Right;

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    .line 316
    :cond_1
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    .line 275
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_hashCode(Lscala/Product;)I

    move-result v0

    return v0
.end method

.method public map(Lscala/Function1;)Lscala/util/Either;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TX;>;)",
            "Lscala/Product;"
        }
    .end annotation

    .line 375
    invoke-virtual {p0}, Lscala/util/Either$LeftProjection;->e()Lscala/util/Either;

    move-result-object v0

    .line 376
    instance-of v1, v0, Lscala/util/Left;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/util/Left;

    new-instance v1, Lscala/util/Left;

    invoke-virtual {v0}, Lscala/util/Left;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, p1}, Lscala/util/Left;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 377
    :cond_0
    instance-of p1, v0, Lscala/util/Right;

    if-eqz p1, :cond_1

    check-cast v0, Lscala/util/Right;

    new-instance v1, Lscala/util/Right;

    invoke-virtual {v0}, Lscala/util/Right;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, p1}, Lscala/util/Right;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v1

    .line 375
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

    .line 275
    invoke-virtual {p0}, Lscala/util/Either$LeftProjection;->e()Lscala/util/Either;

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

    .line 275
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "LeftProjection"

    return-object v0
.end method

.method public toOption()Lscala/Option;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "TA;>;"
        }
    .end annotation

    .line 418
    invoke-virtual {p0}, Lscala/util/Either$LeftProjection;->e()Lscala/util/Either;

    move-result-object v0

    .line 419
    instance-of v1, v0, Lscala/util/Left;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/util/Left;

    new-instance v1, Lscala/Some;

    invoke-virtual {v0}, Lscala/util/Left;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 420
    :cond_0
    instance-of v1, v0, Lscala/util/Right;

    if-eqz v1, :cond_1

    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_0
    return-object v1

    .line 418
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
            "TA;>;"
        }
    .end annotation

    .line 404
    invoke-virtual {p0}, Lscala/util/Either$LeftProjection;->e()Lscala/util/Either;

    move-result-object v0

    .line 405
    instance-of v1, v0, Lscala/util/Left;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/util/Left;

    sget-object v1, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lscala/util/Left;->a()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Lscala/collection/Seq$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/Seq;

    goto :goto_0

    .line 406
    :cond_0
    instance-of v1, v0, Lscala/util/Right;

    if-eqz v1, :cond_1

    sget-object v0, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v0}, Lscala/collection/Seq$;->empty()Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/Seq;

    :goto_0
    return-object v0

    .line 404
    :cond_1
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 275
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_toString(Lscala/Product;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
