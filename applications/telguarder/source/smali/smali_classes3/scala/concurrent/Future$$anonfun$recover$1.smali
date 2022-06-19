.class public final Lscala/concurrent/Future$$anonfun$recover$1;
.super Lscala/runtime/AbstractFunction1;
.source "Future.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/concurrent/Future;->recover(Lscala/PartialFunction;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
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
        "TU;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final p$5:Lscala/concurrent/Promise;

.field private final pf$4:Lscala/PartialFunction;


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

    .line 324
    iput-object p2, p0, Lscala/concurrent/Future$$anonfun$recover$1;->p$5:Lscala/concurrent/Promise;

    iput-object p3, p0, Lscala/concurrent/Future$$anonfun$recover$1;->pf$4:Lscala/PartialFunction;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 324
    check-cast p1, Lscala/util/Try;

    invoke-virtual {p0, p1}, Lscala/concurrent/Future$$anonfun$recover$1;->apply(Lscala/util/Try;)Lscala/concurrent/Promise;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/util/Try;)Lscala/concurrent/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/Try<",
            "TT;>;)",
            "Lscala/concurrent/Promise<",
            "TU;>;"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lscala/concurrent/Future$$anonfun$recover$1;->p$5:Lscala/concurrent/Promise;

    iget-object v1, p0, Lscala/concurrent/Future$$anonfun$recover$1;->pf$4:Lscala/PartialFunction;

    invoke-virtual {p1, v1}, Lscala/util/Try;->recover(Lscala/PartialFunction;)Lscala/util/Try;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/concurrent/Promise;->complete(Lscala/util/Try;)Lscala/concurrent/Promise;

    move-result-object p1

    return-object p1
.end method
