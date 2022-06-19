.class public final Lscala/concurrent/Future$;
.super Ljava/lang/Object;
.source "Future.scala"


# static fields
.field public static final MODULE$:Lscala/concurrent/Future$;


# instance fields
.field private final toBoxed:Lscala/collection/immutable/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/concurrent/Future$;

    invoke-direct {v0}, Lscala/concurrent/Future$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/concurrent/Future$;->MODULE$:Lscala/concurrent/Future$;

    .line 450
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v0}, Lscala/Predef$;->Map()Lscala/collection/immutable/Map$;

    move-result-object v0

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/16 v2, 0x9

    new-array v2, v2, [Lscala/Tuple2;

    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 451
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lscala/Tuple2;

    const-class v5, Ljava/lang/Boolean;

    invoke-direct {v4, v3, v5}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v4, v2, v3

    .line 450
    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 452
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lscala/Tuple2;

    const-class v5, Ljava/lang/Byte;

    invoke-direct {v4, v3, v5}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v4, v2, v3

    .line 450
    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 453
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lscala/Tuple2;

    const-class v5, Ljava/lang/Character;

    invoke-direct {v4, v3, v5}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x2

    aput-object v4, v2, v3

    .line 450
    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 454
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lscala/Tuple2;

    const-class v5, Ljava/lang/Short;

    invoke-direct {v4, v3, v5}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x3

    aput-object v4, v2, v3

    .line 450
    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 455
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lscala/Tuple2;

    const-class v5, Ljava/lang/Integer;

    invoke-direct {v4, v3, v5}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x4

    aput-object v4, v2, v3

    .line 450
    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 456
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lscala/Tuple2;

    const-class v5, Ljava/lang/Long;

    invoke-direct {v4, v3, v5}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x5

    aput-object v4, v2, v3

    .line 450
    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 457
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lscala/Tuple2;

    const-class v5, Ljava/lang/Float;

    invoke-direct {v4, v3, v5}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x6

    aput-object v4, v2, v3

    .line 450
    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 458
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lscala/Tuple2;

    const-class v5, Ljava/lang/Double;

    invoke-direct {v4, v3, v5}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x7

    aput-object v4, v2, v3

    .line 450
    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 459
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v4, Lscala/runtime/BoxedUnit;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lscala/Tuple2;

    const-class v5, Lscala/runtime/BoxedUnit;

    invoke-direct {v4, v3, v5}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0x8

    aput-object v4, v2, v3

    check-cast v2, [Ljava/lang/Object;

    .line 450
    invoke-virtual {v1, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/immutable/Map$;->apply(Lscala/collection/Seq;)Lscala/collection/GenMap;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Map;

    iput-object v0, p0, Lscala/concurrent/Future$;->toBoxed:Lscala/collection/immutable/Map;

    return-void
.end method


# virtual methods
.method public apply(Lscala/Function0;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TT;>;",
            "Lscala/concurrent/ExecutionContext;",
            ")",
            "Lscala/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 492
    sget-object v0, Lscala/concurrent/impl/Future$;->MODULE$:Lscala/concurrent/impl/Future$;

    invoke-virtual {v0, p1, p2}, Lscala/concurrent/impl/Future$;->apply(Lscala/Function0;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public failed(Ljava/lang/Throwable;)Lscala/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lscala/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 467
    sget-object v0, Lscala/concurrent/Promise$;->MODULE$:Lscala/concurrent/Promise$;

    invoke-virtual {v0, p1}, Lscala/concurrent/Promise$;->failed(Ljava/lang/Throwable;)Lscala/concurrent/Promise;

    move-result-object p1

    invoke-interface {p1}, Lscala/concurrent/Promise;->future()Lscala/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public find(Lscala/collection/TraversableOnce;Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/TraversableOnce<",
            "Lscala/concurrent/Future<",
            "TT;>;>;",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/concurrent/ExecutionContext;",
            ")",
            "Lscala/concurrent/Future<",
            "Lscala/Option<",
            "TT;>;>;"
        }
    .end annotation

    .line 515
    invoke-interface {p1}, Lscala/collection/TraversableOnce;->toBuffer()Lscala/collection/mutable/Buffer;

    move-result-object p1

    .line 516
    invoke-interface {p1}, Lscala/collection/mutable/Buffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {p0, p1}, Lscala/concurrent/Future$;->successful(Ljava/lang/Object;)Lscala/concurrent/Future;

    move-result-object p1

    goto :goto_0

    .line 518
    :cond_0
    sget-object v0, Lscala/concurrent/Promise$;->MODULE$:Lscala/concurrent/Promise$;

    invoke-virtual {v0}, Lscala/concurrent/Promise$;->apply()Lscala/concurrent/Promise;

    move-result-object v0

    .line 519
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1}, Lscala/collection/mutable/Buffer;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 520
    new-instance v2, Lscala/concurrent/Future$$anonfun$2;

    invoke-direct {v2, p2, v0, v1}, Lscala/concurrent/Future$$anonfun$2;-><init>(Lscala/Function1;Lscala/concurrent/Promise;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 531
    new-instance p2, Lscala/concurrent/Future$$anonfun$find$1;

    invoke-direct {p2, p3, v2}, Lscala/concurrent/Future$$anonfun$find$1;-><init>(Lscala/concurrent/ExecutionContext;Lscala/Function1;)V

    invoke-interface {p1, p2}, Lscala/collection/mutable/Buffer;->foreach(Lscala/Function1;)V

    .line 533
    invoke-interface {v0}, Lscala/concurrent/Promise;->future()Lscala/concurrent/Future;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public firstCompletedOf(Lscala/collection/TraversableOnce;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/TraversableOnce<",
            "Lscala/concurrent/Future<",
            "TT;>;>;",
            "Lscala/concurrent/ExecutionContext;",
            ")",
            "Lscala/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 506
    sget-object v0, Lscala/concurrent/Promise$;->MODULE$:Lscala/concurrent/Promise$;

    invoke-virtual {v0}, Lscala/concurrent/Promise$;->apply()Lscala/concurrent/Promise;

    move-result-object v0

    .line 507
    new-instance v1, Lscala/concurrent/Future$$anonfun$1;

    invoke-direct {v1, v0}, Lscala/concurrent/Future$$anonfun$1;-><init>(Lscala/concurrent/Promise;)V

    .line 508
    new-instance v2, Lscala/concurrent/Future$$anonfun$firstCompletedOf$1;

    invoke-direct {v2, p2, v1}, Lscala/concurrent/Future$$anonfun$firstCompletedOf$1;-><init>(Lscala/concurrent/ExecutionContext;Lscala/Function1;)V

    invoke-interface {p1, v2}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    .line 509
    invoke-interface {v0}, Lscala/concurrent/Promise;->future()Lscala/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public fold(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/TraversableOnce<",
            "Lscala/concurrent/Future<",
            "TT;>;>;TR;",
            "Lscala/Function2<",
            "TR;TT;TR;>;",
            "Lscala/concurrent/ExecutionContext;",
            ")",
            "Lscala/concurrent/Future<",
            "TR;>;"
        }
    .end annotation

    .line 548
    invoke-interface {p1}, Lscala/collection/TraversableOnce;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lscala/concurrent/Future$;->successful(Ljava/lang/Object;)Lscala/concurrent/Future;

    move-result-object p1

    goto :goto_0

    .line 549
    :cond_0
    sget-object v0, Lscala/collection/TraversableOnce$;->MODULE$:Lscala/collection/TraversableOnce$;

    invoke-virtual {v0}, Lscala/collection/TraversableOnce$;->OnceCanBuildFrom()Lscala/collection/TraversableOnce$OnceCanBuildFrom;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p4}, Lscala/concurrent/Future$;->sequence(Lscala/collection/TraversableOnce;Lscala/collection/generic/CanBuildFrom;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;

    move-result-object p1

    new-instance v0, Lscala/concurrent/Future$$anonfun$fold$1;

    invoke-direct {v0, p2, p3}, Lscala/concurrent/Future$$anonfun$fold$1;-><init>(Ljava/lang/Object;Lscala/Function2;)V

    invoke-interface {p1, v0, p4}, Lscala/concurrent/Future;->map(Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public fromTry(Lscala/util/Try;)Lscala/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/util/Try<",
            "TT;>;)",
            "Lscala/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 481
    sget-object v0, Lscala/concurrent/Promise$;->MODULE$:Lscala/concurrent/Promise$;

    invoke-virtual {v0, p1}, Lscala/concurrent/Promise$;->fromTry(Lscala/util/Try;)Lscala/concurrent/Promise;

    move-result-object p1

    invoke-interface {p1}, Lscala/concurrent/Promise;->future()Lscala/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public reduce(Lscala/collection/TraversableOnce;Lscala/Function2;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/TraversableOnce<",
            "Lscala/concurrent/Future<",
            "TT;>;>;",
            "Lscala/Function2<",
            "TR;TT;TR;>;",
            "Lscala/concurrent/ExecutionContext;",
            ")",
            "Lscala/concurrent/Future<",
            "TR;>;"
        }
    .end annotation

    .line 560
    invoke-interface {p1}, Lscala/collection/TraversableOnce;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/util/NoSuchElementException;

    const-string p2, "reduce attempted on empty collection"

    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lscala/concurrent/Future$;->failed(Ljava/lang/Throwable;)Lscala/concurrent/Future;

    move-result-object p1

    goto :goto_0

    .line 561
    :cond_0
    sget-object v0, Lscala/collection/TraversableOnce$;->MODULE$:Lscala/collection/TraversableOnce$;

    invoke-virtual {v0}, Lscala/collection/TraversableOnce$;->OnceCanBuildFrom()Lscala/collection/TraversableOnce$OnceCanBuildFrom;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lscala/concurrent/Future$;->sequence(Lscala/collection/TraversableOnce;Lscala/collection/generic/CanBuildFrom;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;

    move-result-object p1

    new-instance v0, Lscala/concurrent/Future$$anonfun$reduce$1;

    invoke-direct {v0, p2}, Lscala/concurrent/Future$$anonfun$reduce$1;-><init>(Lscala/Function2;)V

    invoke-interface {p1, v0, p3}, Lscala/concurrent/Future;->map(Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public sequence(Lscala/collection/TraversableOnce;Lscala/collection/generic/CanBuildFrom;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "M::",
            "Lscala/collection/TraversableOnce<",
            "Ljava/lang/Object;",
            ">;>(TM;",
            "Lscala/collection/generic/CanBuildFrom<",
            "TM;TA;TM;>;",
            "Lscala/concurrent/ExecutionContext;",
            ")",
            "Lscala/concurrent/Future<",
            "TM;>;"
        }
    .end annotation

    .line 498
    invoke-interface {p2, p1}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p2

    invoke-virtual {p0, p2}, Lscala/concurrent/Future$;->successful(Ljava/lang/Object;)Lscala/concurrent/Future;

    move-result-object p2

    .line 499
    new-instance v0, Lscala/concurrent/Future$$anonfun$sequence$1;

    invoke-direct {v0, p3}, Lscala/concurrent/Future$$anonfun$sequence$1;-><init>(Lscala/concurrent/ExecutionContext;)V

    .line 498
    invoke-interface {p1, p2, v0}, Lscala/collection/TraversableOnce;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/concurrent/Future;

    .line 500
    new-instance p2, Lscala/concurrent/Future$$anonfun$sequence$2;

    invoke-direct {p2}, Lscala/concurrent/Future$$anonfun$sequence$2;-><init>()V

    invoke-interface {p1, p2, p3}, Lscala/concurrent/Future;->map(Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public successful(Ljava/lang/Object;)Lscala/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lscala/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 474
    sget-object v0, Lscala/concurrent/Promise$;->MODULE$:Lscala/concurrent/Promise$;

    invoke-virtual {v0, p1}, Lscala/concurrent/Promise$;->successful(Ljava/lang/Object;)Lscala/concurrent/Promise;

    move-result-object p1

    invoke-interface {p1}, Lscala/concurrent/Promise;->future()Lscala/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public toBoxed()Lscala/collection/immutable/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lscala/concurrent/Future$;->toBoxed:Lscala/collection/immutable/Map;

    return-object v0
.end method

.method public traverse(Lscala/collection/TraversableOnce;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "M::",
            "Lscala/collection/TraversableOnce<",
            "Ljava/lang/Object;",
            ">;>(TM;",
            "Lscala/Function1<",
            "TA;",
            "Lscala/concurrent/Future<",
            "TB;>;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "TM;TB;TM;>;",
            "Lscala/concurrent/ExecutionContext;",
            ")",
            "Lscala/concurrent/Future<",
            "TM;>;"
        }
    .end annotation

    .line 573
    invoke-interface {p3, p1}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p3

    invoke-virtual {p0, p3}, Lscala/concurrent/Future$;->successful(Ljava/lang/Object;)Lscala/concurrent/Future;

    move-result-object p3

    new-instance v0, Lscala/concurrent/Future$$anonfun$traverse$1;

    invoke-direct {v0, p2, p4}, Lscala/concurrent/Future$$anonfun$traverse$1;-><init>(Lscala/Function1;Lscala/concurrent/ExecutionContext;)V

    invoke-interface {p1, p3, v0}, Lscala/collection/TraversableOnce;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/concurrent/Future;

    .line 576
    new-instance p2, Lscala/concurrent/Future$$anonfun$traverse$2;

    invoke-direct {p2}, Lscala/concurrent/Future$$anonfun$traverse$2;-><init>()V

    invoke-interface {p1, p2, p4}, Lscala/concurrent/Future;->map(Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
