.class public final Lscala/concurrent/Future$$anonfun$fallbackTo$1;
.super Lscala/runtime/AbstractFunction1;
.source "Future.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/concurrent/Future;->fallbackTo(Lscala/concurrent/Future;)Lscala/concurrent/Future;
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
.field private final ec$2:Lscala/concurrent/Future$InternalCallbackExecutor$;

.field public final p$8:Lscala/concurrent/Promise;

.field private final that$2:Lscala/concurrent/Future;


# direct methods
.method public constructor <init>(Lscala/concurrent/Future;Lscala/concurrent/Future$InternalCallbackExecutor$;Lscala/concurrent/Promise;Lscala/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/Future<",
            "TT;>;)V"
        }
    .end annotation

    .line 385
    iput-object p2, p0, Lscala/concurrent/Future$$anonfun$fallbackTo$1;->ec$2:Lscala/concurrent/Future$InternalCallbackExecutor$;

    iput-object p3, p0, Lscala/concurrent/Future$$anonfun$fallbackTo$1;->p$8:Lscala/concurrent/Promise;

    iput-object p4, p0, Lscala/concurrent/Future$$anonfun$fallbackTo$1;->that$2:Lscala/concurrent/Future;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 385
    check-cast p1, Lscala/util/Try;

    invoke-virtual {p0, p1}, Lscala/concurrent/Future$$anonfun$fallbackTo$1;->apply(Lscala/util/Try;)Ljava/lang/Object;

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

    .line 385
    instance-of v0, p1, Lscala/util/Success;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/util/Success;

    iget-object v0, p0, Lscala/concurrent/Future$$anonfun$fallbackTo$1;->p$8:Lscala/concurrent/Promise;

    invoke-interface {v0, p1}, Lscala/concurrent/Promise;->complete(Lscala/util/Try;)Lscala/concurrent/Promise;

    move-result-object p1

    goto :goto_0

    .line 387
    :cond_0
    instance-of v0, p1, Lscala/util/Failure;

    if-eqz v0, :cond_1

    check-cast p1, Lscala/util/Failure;

    iget-object v0, p0, Lscala/concurrent/Future$$anonfun$fallbackTo$1;->that$2:Lscala/concurrent/Future;

    new-instance v1, Lscala/concurrent/Future$$anonfun$fallbackTo$1$$anonfun$apply$9;

    invoke-direct {v1, p0, p1}, Lscala/concurrent/Future$$anonfun$fallbackTo$1$$anonfun$apply$9;-><init>(Lscala/concurrent/Future$$anonfun$fallbackTo$1;Lscala/util/Failure;)V

    iget-object p1, p0, Lscala/concurrent/Future$$anonfun$fallbackTo$1;->ec$2:Lscala/concurrent/Future$InternalCallbackExecutor$;

    invoke-interface {v0, v1, p1}, Lscala/concurrent/Future;->onComplete(Lscala/Function1;Lscala/concurrent/ExecutionContext;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_0
    return-object p1

    .line 385
    :cond_1
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
