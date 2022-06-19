.class public final Lscala/concurrent/Future$$anonfun$transform$1$$anonfun$apply$2;
.super Lscala/runtime/AbstractFunction0;
.source "Future.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/concurrent/Future$$anonfun$transform$1;->apply(Lscala/util/Try;)Lscala/concurrent/Promise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/runtime/Nothing$;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/concurrent/Future$$anonfun$transform$1;

.field private final x3$1:Lscala/util/Failure;


# direct methods
.method public constructor <init>(Lscala/concurrent/Future$$anonfun$transform$1;Lscala/util/Failure;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/Future<",
            "TT;>.$anonfun$transform$1;)V"
        }
    .end annotation

    .line 222
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/concurrent/Future$$anonfun$transform$1$$anonfun$apply$2;->$outer:Lscala/concurrent/Future$$anonfun$transform$1;

    iput-object p2, p0, Lscala/concurrent/Future$$anonfun$transform$1$$anonfun$apply$2;->x3$1:Lscala/util/Failure;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 222
    invoke-virtual {p0}, Lscala/concurrent/Future$$anonfun$transform$1$$anonfun$apply$2;->apply()Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public final apply()Lscala/runtime/Nothing$;
    .locals 2

    .line 222
    iget-object v0, p0, Lscala/concurrent/Future$$anonfun$transform$1$$anonfun$apply$2;->$outer:Lscala/concurrent/Future$$anonfun$transform$1;

    iget-object v0, v0, Lscala/concurrent/Future$$anonfun$transform$1;->f$2:Lscala/Function1;

    .line 220
    iget-object v1, p0, Lscala/concurrent/Future$$anonfun$transform$1$$anonfun$apply$2;->x3$1:Lscala/util/Failure;

    .line 222
    invoke-virtual {v1}, Lscala/util/Failure;->exception()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
