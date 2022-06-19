.class public final Lscala/concurrent/Future$$anonfun$zip$1$$anonfun$apply$7$$anonfun$apply$8;
.super Lscala/runtime/AbstractFunction1;
.source "Future.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/Future$$anonfun$zip$1$$anonfun$apply$7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TU;",
        "Lscala/Tuple2<",
        "TT;TU;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/concurrent/Future$$anonfun$zip$1$$anonfun$apply$7;


# direct methods
.method public constructor <init>(Lscala/concurrent/Future$$anonfun$zip$1$$anonfun$apply$7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/Future<",
            "TT;>.$anonfun$zip$1$$anonfun$apply$7;)V"
        }
    .end annotation

    .line 363
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/concurrent/Future$$anonfun$zip$1$$anonfun$apply$7$$anonfun$apply$8;->$outer:Lscala/concurrent/Future$$anonfun$zip$1$$anonfun$apply$7;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lscala/concurrent/Future$$anonfun$zip$1$$anonfun$apply$7$$anonfun$apply$8;->apply(Ljava/lang/Object;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/Tuple2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)",
            "Lscala/Tuple2<",
            "TT;TU;>;"
        }
    .end annotation

    .line 363
    new-instance v0, Lscala/Tuple2;

    .line 361
    iget-object v1, p0, Lscala/concurrent/Future$$anonfun$zip$1$$anonfun$apply$7$$anonfun$apply$8;->$outer:Lscala/concurrent/Future$$anonfun$zip$1$$anonfun$apply$7;

    iget-object v1, v1, Lscala/concurrent/Future$$anonfun$zip$1$$anonfun$apply$7;->x2$2:Lscala/util/Success;

    .line 363
    invoke-virtual {v1}, Lscala/util/Success;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
