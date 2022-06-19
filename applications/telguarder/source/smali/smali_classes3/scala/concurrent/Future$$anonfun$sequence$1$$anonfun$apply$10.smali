.class public final Lscala/concurrent/Future$$anonfun$sequence$1$$anonfun$apply$10;
.super Lscala/runtime/AbstractFunction1;
.source "Future.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/Future$$anonfun$sequence$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/mutable/Builder<",
        "TA;TM;>;",
        "Lscala/concurrent/Future<",
        "Lscala/collection/mutable/Builder<",
        "TA;TM;>;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/concurrent/Future$$anonfun$sequence$1;

.field private final fa$1:Lscala/concurrent/Future;


# direct methods
.method public constructor <init>(Lscala/concurrent/Future$$anonfun$sequence$1;Lscala/concurrent/Future;)V
    .locals 0

    .line 499
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/concurrent/Future$$anonfun$sequence$1$$anonfun$apply$10;->$outer:Lscala/concurrent/Future$$anonfun$sequence$1;

    iput-object p2, p0, Lscala/concurrent/Future$$anonfun$sequence$1$$anonfun$apply$10;->fa$1:Lscala/concurrent/Future;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 499
    check-cast p1, Lscala/collection/mutable/Builder;

    invoke-virtual {p0, p1}, Lscala/concurrent/Future$$anonfun$sequence$1$$anonfun$apply$10;->apply(Lscala/collection/mutable/Builder;)Lscala/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/mutable/Builder;)Lscala/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/Builder<",
            "TA;TM;>;)",
            "Lscala/concurrent/Future<",
            "Lscala/collection/mutable/Builder<",
            "TA;TM;>;>;"
        }
    .end annotation

    .line 499
    iget-object v0, p0, Lscala/concurrent/Future$$anonfun$sequence$1$$anonfun$apply$10;->fa$1:Lscala/concurrent/Future;

    new-instance v1, Lscala/concurrent/Future$$anonfun$sequence$1$$anonfun$apply$10$$anonfun$apply$11;

    invoke-direct {v1, p0, p1}, Lscala/concurrent/Future$$anonfun$sequence$1$$anonfun$apply$10$$anonfun$apply$11;-><init>(Lscala/concurrent/Future$$anonfun$sequence$1$$anonfun$apply$10;Lscala/collection/mutable/Builder;)V

    iget-object p1, p0, Lscala/concurrent/Future$$anonfun$sequence$1$$anonfun$apply$10;->$outer:Lscala/concurrent/Future$$anonfun$sequence$1;

    iget-object p1, p1, Lscala/concurrent/Future$$anonfun$sequence$1;->executor$1:Lscala/concurrent/ExecutionContext;

    invoke-interface {v0, v1, p1}, Lscala/concurrent/Future;->map(Lscala/Function1;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
