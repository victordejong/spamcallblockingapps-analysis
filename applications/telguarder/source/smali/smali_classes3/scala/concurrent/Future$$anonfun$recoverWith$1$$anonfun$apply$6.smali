.class public final Lscala/concurrent/Future$$anonfun$recoverWith$1$$anonfun$apply$6;
.super Lscala/runtime/AbstractFunction1;
.source "Future.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/Future$$anonfun$recoverWith$1;
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
.field private final synthetic $outer:Lscala/concurrent/Future$$anonfun$recoverWith$1;


# direct methods
.method public constructor <init>(Lscala/concurrent/Future$$anonfun$recoverWith$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/Future<",
            "TT;>.$anonfun$recoverWith$1;)V"
        }
    .end annotation

    .line 344
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/concurrent/Future$$anonfun$recoverWith$1$$anonfun$apply$6;->$outer:Lscala/concurrent/Future$$anonfun$recoverWith$1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 344
    check-cast p1, Lscala/util/Try;

    invoke-virtual {p0, p1}, Lscala/concurrent/Future$$anonfun$recoverWith$1$$anonfun$apply$6;->apply(Lscala/util/Try;)Lscala/concurrent/Promise;

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

    .line 344
    iget-object v0, p0, Lscala/concurrent/Future$$anonfun$recoverWith$1$$anonfun$apply$6;->$outer:Lscala/concurrent/Future$$anonfun$recoverWith$1;

    iget-object v0, v0, Lscala/concurrent/Future$$anonfun$recoverWith$1;->p$6:Lscala/concurrent/Promise;

    invoke-interface {v0, p1}, Lscala/concurrent/Promise;->complete(Lscala/util/Try;)Lscala/concurrent/Promise;

    move-result-object p1

    return-object p1
.end method
