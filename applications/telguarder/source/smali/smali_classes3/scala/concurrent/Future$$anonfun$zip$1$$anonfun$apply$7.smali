.class public final Lscala/concurrent/Future$$anonfun$zip$1$$anonfun$apply$7;
.super Lscala/runtime/AbstractFunction1;
.source "Future.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/Future$$anonfun$zip$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/util/Try<",
        "TU;>;",
        "Lscala/concurrent/Promise<",
        "Lscala/Tuple2<",
        "TT;TU;>;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/concurrent/Future$$anonfun$zip$1;

.field public final x2$2:Lscala/util/Success;


# direct methods
.method public constructor <init>(Lscala/concurrent/Future$$anonfun$zip$1;Lscala/util/Success;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/Future<",
            "TT;>.$anonfun$zip$1;)V"
        }
    .end annotation

    .line 363
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/concurrent/Future$$anonfun$zip$1$$anonfun$apply$7;->$outer:Lscala/concurrent/Future$$anonfun$zip$1;

    iput-object p2, p0, Lscala/concurrent/Future$$anonfun$zip$1$$anonfun$apply$7;->x2$2:Lscala/util/Success;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 363
    check-cast p1, Lscala/util/Try;

    invoke-virtual {p0, p1}, Lscala/concurrent/Future$$anonfun$zip$1$$anonfun$apply$7;->apply(Lscala/util/Try;)Lscala/concurrent/Promise;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/util/Try;)Lscala/concurrent/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/Try<",
            "TU;>;)",
            "Lscala/concurrent/Promise<",
            "Lscala/Tuple2<",
            "TT;TU;>;>;"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lscala/concurrent/Future$$anonfun$zip$1$$anonfun$apply$7;->$outer:Lscala/concurrent/Future$$anonfun$zip$1;

    iget-object v0, v0, Lscala/concurrent/Future$$anonfun$zip$1;->p$7:Lscala/concurrent/Promise;

    new-instance v1, Lscala/concurrent/Future$$anonfun$zip$1$$anonfun$apply$7$$anonfun$apply$8;

    invoke-direct {v1, p0}, Lscala/concurrent/Future$$anonfun$zip$1$$anonfun$apply$7$$anonfun$apply$8;-><init>(Lscala/concurrent/Future$$anonfun$zip$1$$anonfun$apply$7;)V

    invoke-virtual {p1, v1}, Lscala/util/Try;->map(Lscala/Function1;)Lscala/util/Try;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/concurrent/Promise;->complete(Lscala/util/Try;)Lscala/concurrent/Promise;

    move-result-object p1

    return-object p1
.end method
