.class public final Lscala/concurrent/Future$$anonfun$1;
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
.field private final p$10:Lscala/concurrent/Promise;


# direct methods
.method public constructor <init>(Lscala/concurrent/Promise;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lscala/concurrent/Future$$anonfun$1;->p$10:Lscala/concurrent/Promise;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 507
    check-cast p1, Lscala/util/Try;

    invoke-virtual {p0, p1}, Lscala/concurrent/Future$$anonfun$1;->apply(Lscala/util/Try;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Lscala/util/Try;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/Try<",
            "TT;>;)V"
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lscala/concurrent/Future$$anonfun$1;->p$10:Lscala/concurrent/Promise;

    invoke-interface {v0, p1}, Lscala/concurrent/Promise;->tryComplete(Lscala/util/Try;)Z

    return-void
.end method
