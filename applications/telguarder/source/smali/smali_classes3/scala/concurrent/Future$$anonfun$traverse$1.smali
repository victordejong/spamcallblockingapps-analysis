.class public final Lscala/concurrent/Future$$anonfun$traverse$1;
.super Lscala/runtime/AbstractFunction2;
.source "Future.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/concurrent/Future$;->traverse(Lscala/collection/TraversableOnce;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "Lscala/concurrent/Future<",
        "Lscala/collection/mutable/Builder<",
        "TB;TM;>;>;TA;",
        "Lscala/concurrent/Future<",
        "Lscala/collection/mutable/Builder<",
        "TB;TM;>;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final executor$4:Lscala/concurrent/ExecutionContext;

.field private final fn$1:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/Function1;Lscala/concurrent/ExecutionContext;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lscala/concurrent/Future$$anonfun$traverse$1;->fn$1:Lscala/Function1;

    iput-object p2, p0, Lscala/concurrent/Future$$anonfun$traverse$1;->executor$4:Lscala/concurrent/ExecutionContext;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 573
    check-cast p1, Lscala/concurrent/Future;

    invoke-virtual {p0, p1, p2}, Lscala/concurrent/Future$$anonfun$traverse$1;->apply(Lscala/concurrent/Future;Ljava/lang/Object;)Lscala/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/concurrent/Future;Ljava/lang/Object;)Lscala/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/Future<",
            "Lscala/collection/mutable/Builder<",
            "TB;TM;>;>;TA;)",
            "Lscala/concurrent/Future<",
            "Lscala/collection/mutable/Builder<",
            "TB;TM;>;>;"
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lscala/concurrent/Future$$anonfun$traverse$1;->fn$1:Lscala/Function1;

    invoke-interface {v0, p2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/concurrent/Future;

    .line 575
    new-instance v0, Lscala/concurrent/Future$$anonfun$traverse$1$$anonfun$apply$12;

    invoke-direct {v0, p0, p2}, Lscala/concurrent/Future$$anonfun$traverse$1$$anonfun$apply$12;-><init>(Lscala/concurrent/Future$$anonfun$traverse$1;Lscala/concurrent/Future;)V

    iget-object p2, p0, Lscala/concurrent/Future$$anonfun$traverse$1;->executor$4:Lscala/concurrent/ExecutionContext;

    invoke-interface {p1, v0, p2}, Lscala/concurrent/Future;->flatMap(Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
