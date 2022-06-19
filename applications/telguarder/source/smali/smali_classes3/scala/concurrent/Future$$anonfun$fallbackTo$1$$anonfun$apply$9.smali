.class public final Lscala/concurrent/Future$$anonfun$fallbackTo$1$$anonfun$apply$9;
.super Lscala/runtime/AbstractFunction1;
.source "Future.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/Future$$anonfun$fallbackTo$1;
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
        "TU;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/concurrent/Future$$anonfun$fallbackTo$1;

.field private final x4$1:Lscala/util/Failure;


# direct methods
.method public constructor <init>(Lscala/concurrent/Future$$anonfun$fallbackTo$1;Lscala/util/Failure;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/Future<",
            "TT;>.$anonfun$fallbackTo$1;)V"
        }
    .end annotation

    .line 387
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/concurrent/Future$$anonfun$fallbackTo$1$$anonfun$apply$9;->$outer:Lscala/concurrent/Future$$anonfun$fallbackTo$1;

    iput-object p2, p0, Lscala/concurrent/Future$$anonfun$fallbackTo$1$$anonfun$apply$9;->x4$1:Lscala/util/Failure;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 387
    check-cast p1, Lscala/util/Try;

    invoke-virtual {p0, p1}, Lscala/concurrent/Future$$anonfun$fallbackTo$1$$anonfun$apply$9;->apply(Lscala/util/Try;)Lscala/concurrent/Promise;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/util/Try;)Lscala/concurrent/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/Try<",
            "TU;>;)",
            "Lscala/concurrent/Promise<",
            "TU;>;"
        }
    .end annotation

    .line 387
    instance-of v0, p1, Lscala/util/Success;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/util/Success;

    iget-object v0, p0, Lscala/concurrent/Future$$anonfun$fallbackTo$1$$anonfun$apply$9;->$outer:Lscala/concurrent/Future$$anonfun$fallbackTo$1;

    iget-object v0, v0, Lscala/concurrent/Future$$anonfun$fallbackTo$1;->p$8:Lscala/concurrent/Promise;

    invoke-interface {v0, p1}, Lscala/concurrent/Promise;->complete(Lscala/util/Try;)Lscala/concurrent/Promise;

    move-result-object p1

    goto :goto_0

    .line 389
    :cond_0
    iget-object p1, p0, Lscala/concurrent/Future$$anonfun$fallbackTo$1$$anonfun$apply$9;->$outer:Lscala/concurrent/Future$$anonfun$fallbackTo$1;

    iget-object p1, p1, Lscala/concurrent/Future$$anonfun$fallbackTo$1;->p$8:Lscala/concurrent/Promise;

    iget-object v0, p0, Lscala/concurrent/Future$$anonfun$fallbackTo$1$$anonfun$apply$9;->x4$1:Lscala/util/Failure;

    invoke-interface {p1, v0}, Lscala/concurrent/Promise;->complete(Lscala/util/Try;)Lscala/concurrent/Promise;

    move-result-object p1

    :goto_0
    return-object p1
.end method
