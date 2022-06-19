.class public abstract Lscala/collection/generic/GenericOrderedCompanion;
.super Ljava/lang/Object;
.source "GenericOrderedCompanion.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CC::",
        "Lscala/collection/Traversable<",
        "Ljava/lang/Object;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001}3Q!\u0001\u0002\u0002\u0002%\u0011qcR3oKJL7m\u0014:eKJ,GmQ8na\u0006t\u0017n\u001c8\u000b\u0005\r!\u0011aB4f]\u0016\u0014\u0018n\u0019\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\u000c7\u0001A\u000b\u0003\u0015Y\u0019\"\u0001A\u0006\u0011\u00051iQ\"\u0001\u0004\n\u000591!AB!osJ+g\rC\u0003\u0011\u0001\u0011\u0005\u0011#\u0001\u0004=S:LGO\u0010\u000b\u0002%A\u00191\u0003\u0001\u000b\u000e\u0003\t\u0001\"!\u0006\u000c\r\u0001\u00111q\u0003\u0001CC\u0002a\u0011!aQ\"\u0016\u0005e\u0011\u0013C\u0001\u000e\u001e!\ta1$\u0003\u0002\u001d\r\t9aj\u001c;iS:<\u0007c\u0001\u0010 C5\tA!\u0003\u0002!\t\tYAK]1wKJ\u001c\u0018M\u00197f!\t)\"\u0005B\u0003$-\t\u0007AEA\u0001Y#\tQR\u0005\u0005\u0002\rM%\u0011qE\u0002\u0002\u0004\u0003:LXAB\u0015\u0001A\u0003E!F\u0001\u0003D_2d\u0007GA\u0016.!\r)b\u0003\u000c\t\u0003+5\"\u0011B\u000c\u0015\u0002\u0002\u0003\u0005)\u0011\u0001\u0013\u0003\u0007}#\u0013\u0007C\u00031\u0001\u0019\u0005\u0011\'\u0001\u0006oK^\u0014U/\u001b7eKJ,\"A\r\u001e\u0015\u0005Mj\u0004\u0003\u0002\u001b8sqj\u0011!\u000e\u0006\u0003m\u0011\tq!\\;uC\ndW-\u0003\u00029k\t9!)^5mI\u0016\u0014\u0008CA\u000b;\t\u0015YtF1\u0001%\u0005\u0005\t\u0005cA\u000b\u0017s!)ah\u000ca\u0002\u007f\u0005\u0019qN\u001d3\u0011\u0007\u0001\u001b\u0015H\u0004\u0002\r\u0003&\u0011!IB\u0001\u0008a\u0006\u001c7.Y4f\u0013\t!UI\u0001\u0005Pe\u0012,\'/\u001b8h\u0015\t\u0011e\u0001C\u0003H\u0001\u0011\u0005\u0001*A\u0003f[B$\u00180\u0006\u0002J\u0019R\u0011!*\u0014\t\u0004+YY\u0005CA\u000bM\t\u0015YdI1\u0001%\u0011\u001dqe)!AA\u0004=\u000b!\"\u001a<jI\u0016t7-\u001a\u00132!\r\u00015i\u0013\u0005\u0006#\u0002!\tAU\u0001\u0006CB\u0004H._\u000b\u0003\'^#\"\u0001\u0016.\u0015\u0005UC\u0006cA\u000b\u0017-B\u0011Qc\u0016\u0003\u0006wA\u0013\r\u0001\n\u0005\u0006}A\u0003\u001d!\u0017\t\u0004\u0001\u000e3\u0006\"B.Q\u0001\u0004a\u0016!B3mK6\u001c\u0008c\u0001\u0007^-&\u0011aL\u0002\u0002\u000byI,\u0007/Z1uK\u0012t\u0004"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lscala/collection/Seq;Lscala/math/Ordering;)Lscala/collection/Traversable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "TA;>;",
            "Lscala/math/Ordering<",
            "TA;>;)TCC;"
        }
    .end annotation

    .line 30
    invoke-virtual {p0, p2}, Lscala/collection/generic/GenericOrderedCompanion;->newBuilder(Lscala/math/Ordering;)Lscala/collection/mutable/Builder;

    move-result-object p2

    .line 31
    invoke-interface {p2, p1}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    .line 32
    invoke-interface {p2}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/Traversable;

    return-object p1
.end method

.method public empty(Lscala/math/Ordering;)Lscala/collection/Traversable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TA;>;)TCC;"
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lscala/collection/generic/GenericOrderedCompanion;->newBuilder(Lscala/math/Ordering;)Lscala/collection/mutable/Builder;

    move-result-object p1

    invoke-interface {p1}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/Traversable;

    return-object p1
.end method

.method public abstract newBuilder(Lscala/math/Ordering;)Lscala/collection/mutable/Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TA;>;)",
            "Lscala/collection/mutable/Builder<",
            "TA;TCC;>;"
        }
    .end annotation
.end method
