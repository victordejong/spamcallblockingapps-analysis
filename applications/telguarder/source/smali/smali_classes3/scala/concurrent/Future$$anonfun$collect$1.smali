.class public final Lscala/concurrent/Future$$anonfun$collect$1;
.super Lscala/runtime/AbstractFunction1;
.source "Future.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/concurrent/Future;->collect(Lscala/PartialFunction;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TT;TS;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final pf$3:Lscala/PartialFunction;


# direct methods
.method public constructor <init>(Lscala/concurrent/Future;Lscala/PartialFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/Future<",
            "TT;>;)V"
        }
    .end annotation

    .line 307
    iput-object p2, p0, Lscala/concurrent/Future$$anonfun$collect$1;->pf$3:Lscala/PartialFunction;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TS;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lscala/concurrent/Future$$anonfun$collect$1;->pf$3:Lscala/PartialFunction;

    new-instance v1, Lscala/concurrent/Future$$anonfun$collect$1$$anonfun$apply$4;

    invoke-direct {v1, p0}, Lscala/concurrent/Future$$anonfun$collect$1$$anonfun$apply$4;-><init>(Lscala/concurrent/Future$$anonfun$collect$1;)V

    invoke-interface {v0, p1, v1}, Lscala/PartialFunction;->applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
