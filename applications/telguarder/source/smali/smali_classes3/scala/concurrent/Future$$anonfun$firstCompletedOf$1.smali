.class public final Lscala/concurrent/Future$$anonfun$firstCompletedOf$1;
.super Lscala/runtime/AbstractFunction1;
.source "Future.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/concurrent/Future$;->firstCompletedOf(Lscala/collection/TraversableOnce;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/concurrent/Future<",
        "TT;>;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final completeFirst$1:Lscala/Function1;

.field private final executor$2:Lscala/concurrent/ExecutionContext;


# direct methods
.method public constructor <init>(Lscala/concurrent/ExecutionContext;Lscala/Function1;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lscala/concurrent/Future$$anonfun$firstCompletedOf$1;->executor$2:Lscala/concurrent/ExecutionContext;

    iput-object p2, p0, Lscala/concurrent/Future$$anonfun$firstCompletedOf$1;->completeFirst$1:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 508
    check-cast p1, Lscala/concurrent/Future;

    invoke-virtual {p0, p1}, Lscala/concurrent/Future$$anonfun$firstCompletedOf$1;->apply(Lscala/concurrent/Future;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Lscala/concurrent/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/Future<",
            "TT;>;)V"
        }
    .end annotation

    .line 508
    iget-object v0, p0, Lscala/concurrent/Future$$anonfun$firstCompletedOf$1;->completeFirst$1:Lscala/Function1;

    iget-object v1, p0, Lscala/concurrent/Future$$anonfun$firstCompletedOf$1;->executor$2:Lscala/concurrent/ExecutionContext;

    invoke-interface {p1, v0, v1}, Lscala/concurrent/Future;->onComplete(Lscala/Function1;Lscala/concurrent/ExecutionContext;)V

    return-void
.end method
