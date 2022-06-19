.class public interface abstract Lscala/collection/generic/CanCombineFrom;
.super Ljava/lang/Object;
.source "CanCombineFrom.scala"

# interfaces
.implements Lscala/collection/generic/CanBuildFrom;
.implements Lscala/collection/Parallel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<From:",
        "Ljava/lang/Object;",
        "Elem:",
        "Ljava/lang/Object;",
        "To:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/generic/CanBuildFrom<",
        "TFrom;TElem;TTo;>;",
        "Lscala/collection/Parallel;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001U2q!\u0001\u0002\u0011\u0002G\u0005\u0011B\u0001\u0008DC:\u001cu.\u001c2j]\u00164%o\\7\u000b\u0005\r!\u0011aB4f]\u0016\u0014\u0018n\u0019\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\u000c7\u0001A\u000b\u0005\u0015Uy\"e\u0005\u0003\u0001\u0017=!\u0003C\u0001\u0007\u000e\u001b\u00051\u0011B\u0001\u0008\u0007\u0005\u0019\te.\u001f*fMB)\u0001#E\n\u001fC5\t!!\u0003\u0002\u0013\u0005\ta1)\u00198Ck&dGM\u0012:p[B\u0011A#\u0006\u0007\u0001\t\u00191\u0002\u0001#b\u0001/\t!aI]8n#\tA2\u0004\u0005\u0002\r3%\u0011!D\u0002\u0002\u0008\u001d>$\u0008.\u001b8h!\taA$\u0003\u0002\u001e\r\t\u0019\u0011I\\=\u0011\u0005QyBA\u0002\u0011\u0001\u0011\u000b\u0007qC\u0001\u0003FY\u0016l\u0007C\u0001\u000b#\t\u0019\u0019\u0003\u0001\"b\u0001/\t\u0011Ak\u001c\t\u0003K\u0019j\u0011\u0001B\u0005\u0003O\u0011\u0011\u0001\u0002U1sC2dW\r\u001c\u0005\u0006S\u00011\tAK\u0001\u0006CB\u0004H.\u001f\u000b\u0003WE\u0002B\u0001L\u0018\u001fC5\tQF\u0003\u0002/\t\u0005A\u0001/\u0019:bY2,G.\u0003\u00021[\tA1i\\7cS:,\'\u000fC\u00033Q\u0001\u00071#\u0001\u0003ge>l\u0007\"B\u0015\u0001\r\u0003!D#A\u0016"
.end annotation


# virtual methods
.method public abstract apply()Lscala/collection/parallel/Combiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TElem;TTo;>;"
        }
    .end annotation
.end method

.method public abstract apply(Ljava/lang/Object;)Lscala/collection/parallel/Combiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFrom;)",
            "Lscala/collection/parallel/Combiner<",
            "TElem;TTo;>;"
        }
    .end annotation
.end method
