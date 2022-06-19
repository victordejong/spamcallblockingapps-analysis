.class public final Lscala/concurrent/Future$$anonfun$andThen$1;
.super Lscala/runtime/AbstractFunction1;
.source "Future.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/concurrent/Future;->andThen(Lscala/PartialFunction;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
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
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final p$9:Lscala/concurrent/Promise;

.field private final pf$6:Lscala/PartialFunction;


# direct methods
.method public constructor <init>(Lscala/concurrent/Future;Lscala/concurrent/Promise;Lscala/PartialFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/Future<",
            "TT;>;)V"
        }
    .end annotation

    .line 433
    iput-object p2, p0, Lscala/concurrent/Future$$anonfun$andThen$1;->p$9:Lscala/concurrent/Promise;

    iput-object p3, p0, Lscala/concurrent/Future$$anonfun$andThen$1;->pf$6:Lscala/PartialFunction;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 433
    check-cast p1, Lscala/util/Try;

    invoke-virtual {p0, p1}, Lscala/concurrent/Future$$anonfun$andThen$1;->apply(Lscala/util/Try;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/util/Try;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/Try<",
            "TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 434
    :try_start_0
    iget-object v0, p0, Lscala/concurrent/Future$$anonfun$andThen$1;->pf$6:Lscala/PartialFunction;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v1}, Lscala/Predef$;->conforms()Lscala/Predef$$less$colon$less;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lscala/PartialFunction;->applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lscala/concurrent/Future$$anonfun$andThen$1;->p$9:Lscala/concurrent/Promise;

    invoke-interface {v1, p1}, Lscala/concurrent/Promise;->complete(Lscala/util/Try;)Lscala/concurrent/Promise;

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lscala/concurrent/Future$$anonfun$andThen$1;->p$9:Lscala/concurrent/Promise;

    invoke-interface {v1, p1}, Lscala/concurrent/Promise;->complete(Lscala/util/Try;)Lscala/concurrent/Promise;

    throw v0
.end method
