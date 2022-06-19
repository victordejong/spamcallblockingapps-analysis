.class public interface abstract Lscala/concurrent/TaskRunner;
.super Ljava/lang/Object;
.source "TaskRunner.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001y2\u0001\"\u0001\u0002\u0011\u0002G\u0005AA\u0002\u0002\u000b)\u0006\u001c8NU;o]\u0016\u0014(BA\u0002\u0005\u0003)\u0019wN\\2veJ,g\u000e\u001e\u0006\u0002\u000b\u0005)1oY1mCN\u0011\u0001a\u0002\t\u0003\u0011%i\u0011\u0001B\u0005\u0003\u0015\u0011\u0011a!\u00118z%\u00164G!\u0002\u0007\u0001\u0005\u0003q!\u0001\u0002+bg.\u001c\u0001!\u0006\u0002\u0010-E\u0011\u0001c\u0005\t\u0003\u0011EI!A\u0005\u0003\u0003\u000f9{G\u000f[5oOB\u0011\u0001\u0002F\u0005\u0003+\u0011\u00111!\u00118z\t\u001592B1\u0001\u0010\u0005\u0005!\u0006\"B\r\u0001\r\u0007Q\u0012A\u00044v]\u000e$\u0018n\u001c8BgR\u000b7o[\u000b\u00037\u0001\"\"\u0001\u0008\u0012\u0011\u0007uYa$D\u0001\u0001!\ty\u0002\u0005\u0004\u0001\u0005\u000b\u0005B\"\u0019A\u0008\u0003\u0003MCQa\t\rA\u0002\u0011\n1AZ;o!\rAQEH\u0005\u0003M\u0011\u0011\u0011BR;oGRLwN\u001c\u0019\t\u000b!\u0002a\u0011A\u0015\u0002\u000f\u0015DXmY;uKV\u0011!F\r\u000b\u0003W9\u0002\"\u0001\u0003\u0017\n\u00055\"!\u0001B+oSRDQaL\u0014A\u0002A\nA\u0001^1tWB\u0019QdC\u0019\u0011\u0005}\u0011D!B\u0011(\u0005\u0004y\u0001\"\u0002\u001b\u0001\r\u0003)\u0014\u0001C:ikR$wn\u001e8\u0015\u0003-BC\u0001A\u001c;yA\u0011\u0001\u0002O\u0005\u0003s\u0011\u0011!\u0002Z3qe\u0016\u001c\u0017\r^3eC\u0005Y\u0014aH+tK\u0002\u0002W\t_3dkRLwN\\\"p]R,\u0007\u0010\u001e1!S:\u001cH/Z1e]\u0005\nQ(\u0001\u00043]E\u0002d\u0006\r"
.end annotation


# virtual methods
.method public abstract execute(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public abstract functionAsTask(Lscala/Function0;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TS;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract shutdown()V
.end method
