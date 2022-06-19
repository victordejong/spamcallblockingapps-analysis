.class public interface abstract Lscala/collection/generic/BitSetFactory;
.super Ljava/lang/Object;
.source "BitSetFactory.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Coll::",
        "Lscala/collection/BitSet;",
        ":",
        "Lscala/collection/BitSetLike<",
        "TColl;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u001d3q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011BA\u0007CSR\u001cV\r\u001e$bGR|\'/\u001f\u0006\u0003\u0007\u0011\tqaZ3oKJL7M\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001!\u0006\u0002\u000b5M\u0011\u0001a\u0003\t\u0003\u00195i\u0011AB\u0005\u0003\u001d\u0019\u0011a!\u00118z%\u00164\u0007\"\u0002\t\u0001\t\u0003\t\u0012A\u0002\u0013j]&$H\u0005F\u0001\u0013!\ta1#\u0003\u0002\u0015\r\t!QK\\5u\u0011\u00151\u0002A\"\u0001\u0018\u0003\u0015)W\u000e\u001d;z+\u0005A\u0002CA\r\u001b\u0019\u0001!Qa\u0007\u0001C\u0002q\u0011AaQ8mYF\u0011Q\u0004\t\t\u0003\u0019yI!a\u0008\u0004\u0003\u000f9{G\u000f[5oOJ\u0019\u0011eI\u0014\u0007\t\t\u0002\u0001\u0001\t\u0002\ryI,g-\u001b8f[\u0016tGO\u0010\t\u0003I\u0015j\u0011\u0001B\u0005\u0003M\u0011\u0011aAQ5u\'\u0016$\u0008c\u0001\u0013)1%\u0011\u0011\u0006\u0002\u0002\u000b\u0005&$8+\u001a;MS.,\u0007\"B\u0016\u0001\r\u0003a\u0013A\u00038fo\n+\u0018\u000e\u001c3feV\tQ\u0006\u0005\u0003/cMBR\"A\u0018\u000b\u0005A\"\u0011aB7vi\u0006\u0014G.Z\u0005\u0003e=\u0012qAQ;jY\u0012,\'\u000f\u0005\u0002\ri%\u0011QG\u0002\u0002\u0004\u0013:$\u0008\"B\u001c\u0001\t\u0003A\u0014!B1qa2LHC\u0001\r:\u0011\u0015Qd\u00071\u0001<\u0003\u0015)G.Z7t!\raAhM\u0005\u0003{\u0019\u0011!\u0002\u0010:fa\u0016\u000cG/\u001a3?\u0011\u0015y\u0004\u0001\"\u0001A\u0003I\u0011\u0017\u000e^:fi\u000e\u000bgNQ;jY\u00124%o\\7\u0016\u0003\u0005\u00132AQ\u0006D\r\u0011\u0011c\u0008A!\u0011\u000b\u0011+\u0005d\r\r\u000e\u0003\tI!A\u0012\u0002\u0003\u0019\r\u000bgNQ;jY\u00124%o\\7"
.end annotation


# virtual methods
.method public abstract apply(Lscala/collection/Seq;)Lscala/collection/BitSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;)TColl;"
        }
    .end annotation
.end method

.method public abstract bitsetCanBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract empty()Lscala/collection/BitSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TColl;"
        }
    .end annotation
.end method

.method public abstract newBuilder()Lscala/collection/mutable/Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder<",
            "Ljava/lang/Object;",
            "TColl;>;"
        }
    .end annotation
.end method
