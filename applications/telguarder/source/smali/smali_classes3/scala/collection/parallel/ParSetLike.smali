.class public interface abstract Lscala/collection/parallel/ParSetLike;
.super Ljava/lang/Object;
.source "ParSetLike.scala"

# interfaces
.implements Lscala/collection/GenSetLike;
.implements Lscala/collection/parallel/ParIterableLike;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Repr::",
        "Lscala/collection/parallel/ParSetLike<",
        "TT;TRepr;TSequential;>;:",
        "Lscala/collection/parallel/ParSet<",
        "TT;>;Sequential::",
        "Lscala/collection/Set<",
        "TT;>;:",
        "Lscala/collection/SetLike<",
        "TT;TSequential;>;>",
        "Ljava/lang/Object;",
        "Lscala/collection/GenSetLike<",
        "TT;TRepr;>;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u000193\u0001\"\u0001\u0002\u0011\u0002\u0007\u0005\u0011\"\n\u0002\u000b!\u0006\u00148+\u001a;MS.,\'BA\u0002\u0005\u0003!\u0001\u0018M]1mY\u0016d\'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001Q\u0003\u0002\u0006\u0016?!\u001aB\u0001A\u0006\u0010mA\u0011A\"D\u0007\u0002\r%\u0011aB\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\tA\t2CH\u0007\u0002\t%\u0011!\u0003\u0002\u0002\u000b\u000f\u0016t7+\u001a;MS.,\u0007C\u0001\u000b\u0016\u0019\u0001!QA\u0006\u0001C\u0002]\u0011\u0011\u0001V\t\u00031m\u0001\"\u0001D\r\n\u0005i1!a\u0002(pi\"Lgn\u001a\t\u0003\u0019qI!!\u0008\u0004\u0003\u0007\u0005s\u0017\u0010\u0005\u0002\u0015?\u00111\u0001\u0005\u0001CC\u0002\u0005\u0012AAU3qeF\u0011\u0001D\t\n\u0004G\u0015\u001ad\u0001\u0002\u0013\u0001\u0001\t\u0012A\u0002\u0010:fM&tW-\\3oiz\u0002RA\n\u0001\u0014=\u001dj\u0011A\u0001\t\u0003)!\"a!\u000b\u0001\u0005\u0006\u0004Q#AC*fcV,g\u000e^5bYF\u0011\u0001d\u000b\n\u0004Y5\u0002d\u0001\u0002\u0013\u0001\u0001-\u00022\u0001\u0005\u0018\u0014\u0013\tyCAA\u0002TKR\u0004B\u0001E\u0019\u0014O%\u0011!\u0007\u0002\u0002\u0008\'\u0016$H*[6f!\r1CgE\u0005\u0003k\t\u0011a\u0001U1s\'\u0016$\u0008#\u0002\u00148\'y9\u0013B\u0001\u001d\u0003\u0005=\u0001\u0016M]%uKJ\u000c\'\r\\3MS.,\u0007\"\u0002\u001e\u0001\t\u0003Y\u0014A\u0002\u0013j]&$H\u0005F\u0001=!\taQ(\u0003\u0002?\r\t!QK\\5u\u0011\u0015\u0001\u0005A\"\u0001B\u0003\u0015)W\u000e\u001d;z+\u0005q\u0002\"B\"\u0001\t\u0003!\u0015!B;oS>tGC\u0001\u0010F\u0011\u00151%\t1\u0001H\u0003\u0011!\u0008.\u0019;\u0011\u0007AA5#\u0003\u0002J\t\t1q)\u001a8TKRDQa\u0013\u0001\u0005\u00021\u000bA\u0001Z5gMR\u0011a$\u0014\u0005\u0006\r*\u0003\ra\u0012"
.end annotation


# virtual methods
.method public abstract diff(Lscala/collection/GenSet;)Lscala/collection/parallel/ParSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenSet<",
            "TT;>;)TRepr;"
        }
    .end annotation
.end method

.method public abstract empty()Lscala/collection/parallel/ParSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRepr;"
        }
    .end annotation
.end method

.method public abstract union(Lscala/collection/GenSet;)Lscala/collection/parallel/ParSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenSet<",
            "TT;>;)TRepr;"
        }
    .end annotation
.end method
