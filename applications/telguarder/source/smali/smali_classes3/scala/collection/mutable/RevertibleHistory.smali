.class public Lscala/collection/mutable/RevertibleHistory;
.super Lscala/collection/mutable/History;
.source "RevertibleHistory.scala"

# interfaces
.implements Lscala/collection/mutable/Undoable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Evt::",
        "Lscala/collection/mutable/Undoable;",
        "Pub:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/History<",
        "TEvt;TPub;>;",
        "Lscala/collection/mutable/Undoable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001=2A!\u0001\u0002\u0001\u0013\t\t\"+\u001a<feRL\'\r\\3ISN$xN]=\u000b\u0005\r!\u0011aB7vi\u0006\u0014G.\u001a\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\u000c7\u0001A\u000b\u0004\u0015Ea2\u0003\u0002\u0001\u000c1\t\u0002B\u0001D\u0007\u001075\t!!\u0003\u0002\u000f\u0005\t9\u0001*[:u_JL\u0008C\u0001\t\u0012\u0019\u0001!QA\u0005\u0001C\u0002M\u00111!\u0012<u#\t!\u0002\u0004\u0005\u0002\u0016-5\ta!\u0003\u0002\u0018\r\t9aj\u001c;iS:<\u0007C\u0001\u0007\u001a\u0013\tQ\"A\u0001\u0005V]\u0012|\u0017M\u00197f!\t\u0001B\u0004B\u0003\u001e\u0001\t\u0007aDA\u0002Qk\n\u000c\"\u0001F\u0010\u0011\u0005U\u0001\u0013BA\u0011\u0007\u0005\r\te.\u001f\t\u0003+\rJ!\u0001\n\u0004\u0003\u0019M+\'/[1mSj\u000c\'\r\\3\t\u000b\u0019\u0002A\u0011A\u0014\u0002\rqJg.\u001b;?)\u0005A\u0003\u0003\u0002\u0007\u0001\u001fmAQA\u000b\u0001\u0005\u0002-\nA!\u001e8e_R\tA\u0006\u0005\u0002\u0016[%\u0011aF\u0002\u0002\u0005+:LG\u000f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lscala/collection/mutable/History;-><init>()V

    return-void
.end method


# virtual methods
.method public undo()V
    .locals 2

    .line 33
    invoke-virtual {p0}, Lscala/collection/mutable/RevertibleHistory;->log()Lscala/collection/mutable/Queue;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/Queue;->toList()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->reverse()Lscala/collection/immutable/List;

    move-result-object v0

    .line 34
    invoke-virtual {p0}, Lscala/collection/mutable/RevertibleHistory;->clear()V

    .line 35
    :goto_0
    invoke-virtual {v0}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/Tuple2;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/mutable/Undoable;

    invoke-interface {v1}, Lscala/collection/mutable/Undoable;->undo()V

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    goto :goto_0

    :cond_1
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, v1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
