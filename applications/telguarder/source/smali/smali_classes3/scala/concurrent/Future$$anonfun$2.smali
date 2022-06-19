.class public final Lscala/concurrent/Future$$anonfun$2;
.super Lscala/runtime/AbstractFunction1;
.source "Future.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/concurrent/Future$;->find(Lscala/collection/TraversableOnce;Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/util/Try<",
        "TT;>;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final p$11:Lscala/Function1;

.field private final ref$1:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final result$1:Lscala/concurrent/Promise;


# direct methods
.method public constructor <init>(Lscala/Function1;Lscala/concurrent/Promise;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lscala/concurrent/Future$$anonfun$2;->p$11:Lscala/Function1;

    iput-object p2, p0, Lscala/concurrent/Future$$anonfun$2;->result$1:Lscala/concurrent/Promise;

    iput-object p3, p0, Lscala/concurrent/Future$$anonfun$2;->ref$1:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 520
    check-cast p1, Lscala/util/Try;

    invoke-virtual {p0, p1}, Lscala/concurrent/Future$$anonfun$2;->apply(Lscala/util/Try;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Lscala/util/Try;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/Try<",
            "TT;>;)V"
        }
    .end annotation

    .line 522
    :try_start_0
    instance-of v0, p1, Lscala/util/Success;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/util/Success;

    iget-object v0, p0, Lscala/concurrent/Future$$anonfun$2;->p$11:Lscala/Function1;

    invoke-virtual {p1}, Lscala/util/Success;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/concurrent/Future$$anonfun$2;->result$1:Lscala/concurrent/Promise;

    new-instance v1, Lscala/util/Success;

    new-instance v2, Lscala/Some;

    invoke-virtual {p1}, Lscala/util/Success;->value()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v2, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Lscala/util/Success;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lscala/concurrent/Promise;->tryComplete(Lscala/util/Try;)Z

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 523
    :cond_0
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    :goto_0
    iget-object p1, p0, Lscala/concurrent/Future$$anonfun$2;->ref$1:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_1

    .line 527
    iget-object p1, p0, Lscala/concurrent/Future$$anonfun$2;->result$1:Lscala/concurrent/Promise;

    new-instance v0, Lscala/util/Success;

    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-direct {v0, v1}, Lscala/util/Success;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lscala/concurrent/Promise;->tryComplete(Lscala/util/Try;)Z

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 526
    iget-object v0, p0, Lscala/concurrent/Future$$anonfun$2;->ref$1:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_2

    .line 527
    iget-object v0, p0, Lscala/concurrent/Future$$anonfun$2;->result$1:Lscala/concurrent/Promise;

    new-instance v1, Lscala/util/Success;

    sget-object v2, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-direct {v1, v2}, Lscala/util/Success;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lscala/concurrent/Promise;->tryComplete(Lscala/util/Try;)Z

    :cond_2
    throw p1
.end method
