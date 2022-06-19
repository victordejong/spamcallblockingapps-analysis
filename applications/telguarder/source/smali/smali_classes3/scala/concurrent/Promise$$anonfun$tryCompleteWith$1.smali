.class public final Lscala/concurrent/Promise$$anonfun$tryCompleteWith$1;
.super Lscala/runtime/AbstractFunction1;
.source "Promise.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/concurrent/Promise;->tryCompleteWith(Lscala/concurrent/Future;)Lscala/concurrent/Promise;
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
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/concurrent/Promise;


# direct methods
.method public constructor <init>(Lscala/concurrent/Promise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/Promise<",
            "TT;>;)V"
        }
    .end annotation

    .line 76
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/concurrent/Promise$$anonfun$tryCompleteWith$1;->$outer:Lscala/concurrent/Promise;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 76
    check-cast p1, Lscala/util/Try;

    invoke-virtual {p0, p1}, Lscala/concurrent/Promise$$anonfun$tryCompleteWith$1;->apply(Lscala/util/Try;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/util/Try;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/Try<",
            "TT;>;)Z"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lscala/concurrent/Promise$$anonfun$tryCompleteWith$1;->$outer:Lscala/concurrent/Promise;

    invoke-interface {v0, p1}, Lscala/concurrent/Promise;->tryComplete(Lscala/util/Try;)Z

    move-result p1

    return p1
.end method
