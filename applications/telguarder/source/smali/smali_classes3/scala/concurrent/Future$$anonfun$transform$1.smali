.class public final Lscala/concurrent/Future$$anonfun$transform$1;
.super Lscala/runtime/AbstractFunction1;
.source "Future.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/concurrent/Future;->transform(Lscala/Function1;Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
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
        "Lscala/concurrent/Promise<",
        "TS;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final f$2:Lscala/Function1;

.field private final p$2:Lscala/concurrent/Promise;

.field public final s$1:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/concurrent/Future;Lscala/concurrent/Promise;Lscala/Function1;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/Future<",
            "TT;>;)V"
        }
    .end annotation

    .line 220
    iput-object p2, p0, Lscala/concurrent/Future$$anonfun$transform$1;->p$2:Lscala/concurrent/Promise;

    iput-object p3, p0, Lscala/concurrent/Future$$anonfun$transform$1;->s$1:Lscala/Function1;

    iput-object p4, p0, Lscala/concurrent/Future$$anonfun$transform$1;->f$2:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 220
    check-cast p1, Lscala/util/Try;

    invoke-virtual {p0, p1}, Lscala/concurrent/Future$$anonfun$transform$1;->apply(Lscala/util/Try;)Lscala/concurrent/Promise;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/util/Try;)Lscala/concurrent/Promise;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/Try<",
            "TT;>;)",
            "Lscala/concurrent/Promise<",
            "TS;>;"
        }
    .end annotation

    .line 220
    instance-of v0, p1, Lscala/util/Success;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/util/Success;

    iget-object v0, p0, Lscala/concurrent/Future$$anonfun$transform$1;->p$2:Lscala/concurrent/Promise;

    sget-object v1, Lscala/util/Try$;->MODULE$:Lscala/util/Try$;

    new-instance v2, Lscala/concurrent/Future$$anonfun$transform$1$$anonfun$apply$1;

    invoke-direct {v2, p0, p1}, Lscala/concurrent/Future$$anonfun$transform$1$$anonfun$apply$1;-><init>(Lscala/concurrent/Future$$anonfun$transform$1;Lscala/util/Success;)V

    invoke-virtual {v1, v2}, Lscala/util/Try$;->apply(Lscala/Function0;)Lscala/util/Try;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/concurrent/Promise;->complete(Lscala/util/Try;)Lscala/concurrent/Promise;

    move-result-object p1

    goto :goto_0

    .line 222
    :cond_0
    instance-of v0, p1, Lscala/util/Failure;

    if-eqz v0, :cond_1

    check-cast p1, Lscala/util/Failure;

    iget-object v0, p0, Lscala/concurrent/Future$$anonfun$transform$1;->p$2:Lscala/concurrent/Promise;

    sget-object v1, Lscala/util/Try$;->MODULE$:Lscala/util/Try$;

    new-instance v2, Lscala/concurrent/Future$$anonfun$transform$1$$anonfun$apply$2;

    invoke-direct {v2, p0, p1}, Lscala/concurrent/Future$$anonfun$transform$1$$anonfun$apply$2;-><init>(Lscala/concurrent/Future$$anonfun$transform$1;Lscala/util/Failure;)V

    invoke-virtual {v1, v2}, Lscala/util/Try$;->apply(Lscala/Function0;)Lscala/util/Try;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/concurrent/Promise;->complete(Lscala/util/Try;)Lscala/concurrent/Promise;

    move-result-object p1

    :goto_0
    return-object p1

    .line 220
    :cond_1
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
