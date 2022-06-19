.class public final Lscala/concurrent/Future$$anonfun$failed$1;
.super Lscala/runtime/AbstractFunction1;
.source "Future.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/concurrent/Future;->failed()Lscala/concurrent/Future;
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
        "Ljava/lang/Throwable;",
        ">;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final p$1:Lscala/concurrent/Promise;


# direct methods
.method public constructor <init>(Lscala/concurrent/Future;Lscala/concurrent/Promise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/Future<",
            "TT;>;)V"
        }
    .end annotation

    .line 190
    iput-object p2, p0, Lscala/concurrent/Future$$anonfun$failed$1;->p$1:Lscala/concurrent/Promise;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 190
    check-cast p1, Lscala/util/Try;

    invoke-virtual {p0, p1}, Lscala/concurrent/Future$$anonfun$failed$1;->apply(Lscala/util/Try;)Lscala/concurrent/Promise;

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
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 190
    instance-of v0, p1, Lscala/util/Failure;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/util/Failure;

    iget-object v0, p0, Lscala/concurrent/Future$$anonfun$failed$1;->p$1:Lscala/concurrent/Promise;

    .line 191
    invoke-virtual {p1}, Lscala/util/Failure;->exception()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/concurrent/Promise;->success(Ljava/lang/Object;)Lscala/concurrent/Promise;

    move-result-object p1

    goto :goto_0

    .line 192
    :cond_0
    instance-of v0, p1, Lscala/util/Success;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lscala/concurrent/Future$$anonfun$failed$1;->p$1:Lscala/concurrent/Promise;

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Future.failed not completed with a throwable."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lscala/concurrent/Promise;->failure(Ljava/lang/Throwable;)Lscala/concurrent/Promise;

    move-result-object p1

    :goto_0
    return-object p1

    .line 190
    :cond_1
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
