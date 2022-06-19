.class public interface abstract Lscala/collection/LinearSeqLike;
.super Ljava/lang/Object;
.source "LinearSeqLike.scala"

# interfaces
.implements Lscala/collection/SeqLike;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "Repr::",
        "Lscala/collection/LinearSeqLike<",
        "TA;TRepr;>;>",
        "Ljava/lang/Object;",
        "Lscala/collection/SeqLike<",
        "TA;TRepr;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001q3\u0001\"\u0001\u0002\u0011\u0002\u0007\u0005q\u0001\u0008\u0002\u000e\u0019&tW-\u0019:TKFd\u0015n[3\u000b\u0005\r!\u0011AC2pY2,7\r^5p]*\tQ!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0007!\u0019RdE\u0002\u0001\u00135\u0001\"AC\u0006\u000e\u0003\u0011I!\u0001\u0004\u0003\u0003\r\u0005s\u0017PU3g!\u0011qq\"\u0005\u000f\u000e\u0003\tI!\u0001\u0005\u0002\u0003\u000fM+\u0017\u000fT5lKB\u0011!c\u0005\u0007\u0001\t\u0019!\u0002\u0001\"b\u0001+\t\t\u0011)\u0005\u0002\u00173A\u0011!bF\u0005\u00031\u0011\u0011qAT8uQ&tw\r\u0005\u0002\u000b5%\u00111\u0004\u0002\u0002\u0004\u0003:L\u0008C\u0001\n\u001e\t\u0019q\u0002\u0001\"b\u0001?\t!!+\u001a9s#\t1\u0002\u0005\u0005\u0003\u000f\u0001Ea\u0002\"\u0002\u0012\u0001\t\u0003\u0019\u0013A\u0002\u0013j]&$H\u0005F\u0001%!\tQQ%\u0003\u0002\'\t\t!QK\\5u\u0011\u0019A\u0003\u0001)C)S\u0005qA\u000f[5t\u0007>dG.Z2uS>tW#\u0001\u0016\u0011\u00079Y\u0013#\u0003\u0002-\u0005\tIA*\u001b8fCJ\u001cV-\u001d\u0005\u0007]\u0001\u0001K\u0011K\u0018\u0002\u0019Q|7i\u001c7mK\u000e$\u0018n\u001c8\u0015\u0005)\u0002\u0004\"B\u0019.\u0001\u0004a\u0012\u0001\u0002:faJDQa\r\u0001\u0007\u0002%\n1a]3r\u0011\u0015)\u0004\u0001\"\u00117\u0003!A\u0017m\u001d5D_\u0012,G#A\u001c\u0011\u0005)A\u0014BA\u001d\u0005\u0005\rIe\u000e\u001e\u0005\u0006w\u0001!\t\u0005P\u0001\tSR,\'/\u0019;peV\tQ\u0008E\u0002\u000f}EI!a\u0010\u0002\u0003\u0011%#XM]1u_JDQ!\u0011\u0001\u0005F\t\u000b1bY8se\u0016\u001c\u0008o\u001c8egV\u00111I\u0014\u000b\u0003\tB#\"!\u0012%\u0011\u0005)1\u0015BA$\u0005\u0005\u001d\u0011un\u001c7fC:DQ!\u0013!A\u0002)\u000b\u0011\u0001\u001d\t\u0006\u0015-\u000bR*R\u0005\u0003\u0019\u0012\u0011\u0011BR;oGRLwN\u001c\u001a\u0011\u0005IqE!B(A\u0005\u0004)\"!\u0001\"\t\u000bE\u0003\u0005\u0019\u0001*\u0002\tQD\u0017\r\u001e\t\u0004\u001dMk\u0015B\u0001+\u0003\u0005\u00199UM\\*fc\"\u0012\u0001I\u0016\t\u0003/jk\u0011\u0001\u0017\u0006\u00033\u0012\t!\"\u00198o_R\u000cG/[8o\u0013\tY\u0006LA\u0004uC&d\'/Z2"
.end annotation


# virtual methods
.method public abstract corresponds(Lscala/collection/GenSeq;Lscala/Function2;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;",
            "Lscala/Function2<",
            "TA;TB;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract hashCode()I
.end method

.method public abstract iterator()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract seq()Lscala/collection/LinearSeq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/LinearSeq<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract thisCollection()Lscala/collection/LinearSeq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/LinearSeq<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract toCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRepr;)",
            "Lscala/collection/LinearSeq<",
            "TA;>;"
        }
    .end annotation
.end method
