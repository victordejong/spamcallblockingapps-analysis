.class public Lscala/util/control/Exception$Catch;
.super Ljava/lang/Object;
.source "Exception.scala"

# interfaces
.implements Lscala/util/control/Exception$Described;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/util/control/Exception;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Catch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/util/control/Exception$Described;"
    }
.end annotation


# instance fields
.field private final fin:Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Option<",
            "Lscala/util/control/Exception$Finally;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final pf:Lscala/PartialFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/PartialFunction<",
            "Ljava/lang/Throwable;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final rethrow:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private scala$util$control$Exception$Described$$_desc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lscala/PartialFunction;Lscala/Option;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/PartialFunction<",
            "Ljava/lang/Throwable;",
            "TT;>;",
            "Lscala/Option<",
            "Lscala/util/control/Exception$Finally;",
            ">;",
            "Lscala/Function1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lscala/util/control/Exception$Catch;->pf:Lscala/PartialFunction;

    .line 91
    iput-object p2, p0, Lscala/util/control/Exception$Catch;->fin:Lscala/Option;

    .line 92
    iput-object p3, p0, Lscala/util/control/Exception$Catch;->rethrow:Lscala/Function1;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/util/control/Exception$Described$class;->$init$(Lscala/util/control/Exception$Described;)V

    const-string p1, "Catch"

    .line 95
    iput-object p1, p0, Lscala/util/control/Exception$Catch;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public andFinally(Lscala/Function0;)Lscala/util/control/Exception$Catch;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0<",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Lscala/util/control/Exception$Catch<",
            "TT;>;"
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Lscala/util/control/Exception$Catch;->fin()Lscala/Option;

    move-result-object v0

    .line 112
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lscala/util/control/Exception$Catch;

    invoke-virtual {p0}, Lscala/util/control/Exception$Catch;->pf()Lscala/PartialFunction;

    move-result-object v1

    new-instance v2, Lscala/Some;

    new-instance v3, Lscala/util/control/Exception$Finally;

    invoke-direct {v3, p1}, Lscala/util/control/Exception$Finally;-><init>(Lscala/Function0;)V

    invoke-direct {v2, v3}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lscala/util/control/Exception$Catch;->rethrow()Lscala/Function1;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lscala/util/control/Exception$Catch;-><init>(Lscala/PartialFunction;Lscala/Option;Lscala/Function1;)V

    goto :goto_0

    .line 113
    :cond_0
    instance-of v1, v0, Lscala/Some;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/Some;

    new-instance v1, Lscala/util/control/Exception$Catch;

    invoke-virtual {p0}, Lscala/util/control/Exception$Catch;->pf()Lscala/PartialFunction;

    move-result-object v2

    new-instance v3, Lscala/Some;

    invoke-virtual {v0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/util/control/Exception$Finally;

    invoke-virtual {v0, p1}, Lscala/util/control/Exception$Finally;->and(Lscala/Function0;)Lscala/util/control/Exception$Finally;

    move-result-object p1

    invoke-direct {v3, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lscala/util/control/Exception$Catch;->rethrow()Lscala/Function1;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lscala/util/control/Exception$Catch;-><init>(Lscala/PartialFunction;Lscala/Option;Lscala/Function1;)V

    move-object v0, v1

    :goto_0
    return-object v0

    .line 111
    :cond_1
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public apply(Lscala/Function0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TU;>;)TU;"
        }
    .end annotation

    .line 103
    :try_start_0
    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 105
    :try_start_1
    invoke-virtual {p0}, Lscala/util/control/Exception$Catch;->rethrow()Lscala/Function1;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 106
    :cond_0
    invoke-virtual {p0}, Lscala/util/control/Exception$Catch;->pf()Lscala/PartialFunction;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/PartialFunction;->isDefinedAt(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lscala/util/control/Exception$Catch;->pf()Lscala/PartialFunction;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/PartialFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    :goto_0
    invoke-virtual {p0}, Lscala/util/control/Exception$Catch;->fin()Lscala/Option;

    move-result-object v0

    invoke-virtual {v0}, Lscala/Option;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_1

    :cond_1
    new-instance v1, Lscala/Some;

    invoke-virtual {v0}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/util/control/Exception$Finally;

    invoke-virtual {v0}, Lscala/util/control/Exception$Finally;->invoke()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    invoke-direct {v1, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    :goto_1
    return-object p1

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lscala/util/control/Exception$Catch;->fin()Lscala/Option;

    move-result-object v0

    invoke-virtual {v0}, Lscala/Option;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lscala/util/control/Exception$Catch;->fin()Lscala/Option;

    move-result-object v0

    invoke-virtual {v0}, Lscala/Option;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    new-instance v1, Lscala/Some;

    invoke-virtual {v0}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/util/control/Exception$Finally;

    invoke-virtual {v0}, Lscala/util/control/Exception$Finally;->invoke()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    invoke-direct {v1, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    :goto_3
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_4
    throw p1
.end method

.method public desc()Ljava/lang/String;
    .locals 1

    .line 89
    invoke-static {p0}, Lscala/util/control/Exception$Described$class;->desc(Lscala/util/control/Exception$Described;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public either(Lscala/Function0;)Lscala/util/Either;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TU;>;)",
            "Lscala/util/Either<",
            "Ljava/lang/Throwable;",
            "TU;>;"
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lscala/util/control/Exception$Catch;->toEither()Lscala/util/control/Exception$Catch;

    move-result-object v0

    new-instance v1, Lscala/util/control/Exception$Catch$$anonfun$either$1;

    invoke-direct {v1, p0, p1}, Lscala/util/control/Exception$Catch$$anonfun$either$1;-><init>(Lscala/util/control/Exception$Catch;Lscala/Function0;)V

    invoke-virtual {v0, v1}, Lscala/util/control/Exception$Catch;->apply(Lscala/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/util/Either;

    return-object p1
.end method

.method public fin()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "Lscala/util/control/Exception$Finally;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lscala/util/control/Exception$Catch;->fin:Lscala/Option;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lscala/util/control/Exception$Catch;->name:Ljava/lang/String;

    return-object v0
.end method

.method public opt(Lscala/Function0;)Lscala/Option;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TU;>;)",
            "Lscala/Option<",
            "TU;>;"
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lscala/util/control/Exception$Catch;->toOption()Lscala/util/control/Exception$Catch;

    move-result-object v0

    new-instance v1, Lscala/util/control/Exception$Catch$$anonfun$opt$1;

    invoke-direct {v1, p0, p1}, Lscala/util/control/Exception$Catch$$anonfun$opt$1;-><init>(Lscala/util/control/Exception$Catch;Lscala/Function0;)V

    invoke-virtual {v0, v1}, Lscala/util/control/Exception$Catch;->apply(Lscala/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/Option;

    return-object p1
.end method

.method public or(Lscala/PartialFunction;)Lscala/util/control/Exception$Catch;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "Ljava/lang/Throwable;",
            "TU;>;)",
            "Lscala/util/control/Exception$Catch<",
            "TU;>;"
        }
    .end annotation

    .line 98
    new-instance v0, Lscala/util/control/Exception$Catch;

    invoke-virtual {p0}, Lscala/util/control/Exception$Catch;->pf()Lscala/PartialFunction;

    move-result-object v1

    invoke-interface {v1, p1}, Lscala/PartialFunction;->orElse(Lscala/PartialFunction;)Lscala/PartialFunction;

    move-result-object p1

    invoke-virtual {p0}, Lscala/util/control/Exception$Catch;->fin()Lscala/Option;

    move-result-object v1

    invoke-virtual {p0}, Lscala/util/control/Exception$Catch;->rethrow()Lscala/Function1;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lscala/util/control/Exception$Catch;-><init>(Lscala/PartialFunction;Lscala/Option;Lscala/Function1;)V

    return-object v0
.end method

.method public or(Lscala/util/control/Exception$Catch;)Lscala/util/control/Exception$Catch;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/util/control/Exception$Catch<",
            "TU;>;)",
            "Lscala/util/control/Exception$Catch<",
            "TU;>;"
        }
    .end annotation

    .line 99
    invoke-virtual {p1}, Lscala/util/control/Exception$Catch;->pf()Lscala/PartialFunction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/util/control/Exception$Catch;->or(Lscala/PartialFunction;)Lscala/util/control/Exception$Catch;

    move-result-object p1

    return-object p1
.end method

.method public pf()Lscala/PartialFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/PartialFunction<",
            "Ljava/lang/Throwable;",
            "TT;>;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lscala/util/control/Exception$Catch;->pf:Lscala/PartialFunction;

    return-object v0
.end method

.method public rethrow()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lscala/util/control/Exception$Catch;->rethrow:Lscala/Function1;

    return-object v0
.end method

.method public scala$util$control$Exception$Described$$_desc()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lscala/util/control/Exception$Catch;->scala$util$control$Exception$Described$$_desc:Ljava/lang/String;

    return-object v0
.end method

.method public scala$util$control$Exception$Described$$_desc_$eq(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 89
    iput-object p1, p0, Lscala/util/control/Exception$Catch;->scala$util$control$Exception$Described$$_desc:Ljava/lang/String;

    return-void
.end method

.method public toEither()Lscala/util/control/Exception$Catch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/util/control/Exception$Catch<",
            "Lscala/util/Either<",
            "Ljava/lang/Throwable;",
            "TT;>;>;"
        }
    .end annotation

    .line 144
    new-instance v0, Lscala/util/control/Exception$Catch$$anonfun$toEither$1;

    invoke-direct {v0, p0}, Lscala/util/control/Exception$Catch$$anonfun$toEither$1;-><init>(Lscala/util/control/Exception$Catch;)V

    invoke-virtual {p0, v0}, Lscala/util/control/Exception$Catch;->withApply(Lscala/Function1;)Lscala/util/control/Exception$Catch;

    move-result-object v0

    return-object v0
.end method

.method public toOption()Lscala/util/control/Exception$Catch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/util/control/Exception$Catch<",
            "Lscala/Option<",
            "TT;>;>;"
        }
    .end annotation

    .line 143
    new-instance v0, Lscala/util/control/Exception$Catch$$anonfun$toOption$1;

    invoke-direct {v0, p0}, Lscala/util/control/Exception$Catch$$anonfun$toOption$1;-><init>(Lscala/util/control/Exception$Catch;)V

    invoke-virtual {p0, v0}, Lscala/util/control/Exception$Catch;->withApply(Lscala/Function1;)Lscala/util/control/Exception$Catch;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 89
    invoke-static {p0}, Lscala/util/control/Exception$Described$class;->toString(Lscala/util/control/Exception$Described;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTry()Lscala/util/control/Exception$Catch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/util/control/Exception$Catch<",
            "Lscala/util/Try<",
            "TT;>;>;"
        }
    .end annotation

    .line 145
    new-instance v0, Lscala/util/control/Exception$Catch$$anonfun$toTry$1;

    invoke-direct {v0, p0}, Lscala/util/control/Exception$Catch$$anonfun$toTry$1;-><init>(Lscala/util/control/Exception$Catch;)V

    invoke-virtual {p0, v0}, Lscala/util/control/Exception$Catch;->withApply(Lscala/Function1;)Lscala/util/control/Exception$Catch;

    move-result-object v0

    return-object v0
.end method

.method public withApply(Lscala/Function1;)Lscala/util/control/Exception$Catch;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Ljava/lang/Throwable;",
            "TU;>;)",
            "Lscala/util/control/Exception$Catch<",
            "TU;>;"
        }
    .end annotation

    .line 135
    new-instance v0, Lscala/util/control/Exception$Catch$$anon$2;

    invoke-direct {v0, p0, p1}, Lscala/util/control/Exception$Catch$$anon$2;-><init>(Lscala/util/control/Exception$Catch;Lscala/Function1;)V

    .line 139
    new-instance p1, Lscala/util/control/Exception$Catch;

    invoke-virtual {p0}, Lscala/util/control/Exception$Catch;->fin()Lscala/Option;

    move-result-object v1

    invoke-virtual {p0}, Lscala/util/control/Exception$Catch;->rethrow()Lscala/Function1;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lscala/util/control/Exception$Catch;-><init>(Lscala/PartialFunction;Lscala/Option;Lscala/Function1;)V

    return-object p1
.end method

.method public withDesc(Ljava/lang/String;)Lscala/util/control/Exception$Described;
    .locals 0

    .line 89
    invoke-static {p0, p1}, Lscala/util/control/Exception$Described$class;->withDesc(Lscala/util/control/Exception$Described;Ljava/lang/String;)Lscala/util/control/Exception$Described;

    move-result-object p1

    return-object p1
.end method

.method public withTry(Lscala/Function0;)Lscala/util/Try;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TU;>;)",
            "Lscala/util/Try<",
            "TU;>;"
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lscala/util/control/Exception$Catch;->toTry()Lscala/util/control/Exception$Catch;

    move-result-object v0

    new-instance v1, Lscala/util/control/Exception$Catch$$anonfun$withTry$1;

    invoke-direct {v1, p0, p1}, Lscala/util/control/Exception$Catch$$anonfun$withTry$1;-><init>(Lscala/util/control/Exception$Catch;Lscala/Function0;)V

    invoke-virtual {v0, v1}, Lscala/util/control/Exception$Catch;->apply(Lscala/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/util/Try;

    return-object p1
.end method
