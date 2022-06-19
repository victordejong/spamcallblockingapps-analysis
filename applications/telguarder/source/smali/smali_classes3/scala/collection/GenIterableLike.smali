.class public interface abstract Lscala/collection/GenIterableLike;
.super Ljava/lang/Object;
.source "GenIterableLike.scala"

# interfaces
.implements Lscala/collection/GenTraversableLike;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "Repr:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/GenTraversableLike<",
        "TA;TRepr;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u000194q!\u0001\u0002\u0011\u0002G\u0005qAA\u0008HK:LE/\u001a:bE2,G*[6f\u0015\t\u0019A!\u0001\u0006d_2dWm\u0019;j_:T\u0011!B\u0001\u0006g\u000e\u000cG.Y\u0002\u0001+\rA1CG\n\u0004\u0001%i\u0001C\u0001\u0006\u000c\u001b\u0005!\u0011B\u0001\u0007\u0005\u0005\r\te.\u001f\t\u0005\u001d=\t\u0012$D\u0001\u0003\u0013\t\u0001\"A\u0001\nHK:$&/\u0019<feN\u000c\'\r\\3MS.,\u0007C\u0001\n\u0014\u0019\u0001!a\u0001\u0006\u0001\u0005\u0006\u0004)\"!A!\u0012\u0005YI\u0001C\u0001\u0006\u0018\u0013\tABAA\u0004O_RD\u0017N\\4\u0011\u0005IQBAB\u000e\u0001\t\u000b\u0007QC\u0001\u0003SKB\u0014\u0008\"B\u000f\u0001\r\u0003q\u0012\u0001C5uKJ\u000cGo\u001c:\u0016\u0003}\u00012A\u0004\u0011\u0012\u0013\t\t#A\u0001\u0005Ji\u0016\u0014\u0018\r^8s\u0011\u0015\u0019\u0003A\"\u0001%\u00031\u0019\u0018-\\3FY\u0016lWM\u001c;t+\t)s\u0006\u0006\u0002\'SA\u0011!bJ\u0005\u0003Q\u0011\u0011qAQ8pY\u0016\u000cg\u000eC\u0003+E\u0001\u00071&\u0001\u0003uQ\u0006$\u0008c\u0001\u0008-]%\u0011QF\u0001\u0002\u000c\u000f\u0016t\u0017\n^3sC\ndW\r\u0005\u0002\u0013_\u0011)\u0001G\tb\u0001c\t\u0011\u0011)M\t\u0003#%AQa\r\u0001\u0007\u0002Q\n1A_5q+\u0011)d\t\u0013\u001d\u0015\u0005YRECA\u001c;!\t\u0011\u0002\u0008B\u0003:e\t\u0007QC\u0001\u0003UQ\u0006$\u0008\"B\u001e3\u0001\u0008a\u0014A\u00012g!\u0015i\u0004)\u0007\"8\u001b\u0005q$BA \u0003\u0003\u001d9WM\\3sS\u000eL!!\u0011 \u0003\u0019\r\u000bgNQ;jY\u00124%o\\7\u0011\t)\u0019UiR\u0005\u0003\t\u0012\u0011a\u0001V;qY\u0016\u0014\u0004C\u0001\nG\t\u0015\u0001$G1\u00012!\t\u0011\u0002\nB\u0003Je\t\u0007QCA\u0001C\u0011\u0015Q#\u00071\u0001L!\rqAf\u0012\u0005\u0006\u001b\u00021\tAT\u0001\ru&\u0004x+\u001b;i\u0013:$W\r_\u000b\u0004\u001fZ\u000bFC\u0001)S!\t\u0011\u0012\u000bB\u0003:\u0019\n\u0007Q\u0003C\u0003<\u0019\u0002\u000f1\u000bE\u0003>\u0001f!\u0006\u000b\u0005\u0003\u000b\u0007V;\u0006C\u0001\nW\t\u0015\u0001DJ1\u00012!\tQ\u0001,\u0003\u0002Z\t\t\u0019\u0011J\u001c;\t\u000bm\u0003a\u0011\u0001/\u0002\riL\u0007/\u00117m+\u0011iv-\u001a1\u0015\tyC\'\u000e\u001c\u000b\u0003?\u0006\u0004\"A\u00051\u0005\u000beR&\u0019A\u000b\t\u000bmR\u00069\u00012\u0011\u000bu\u0002\u0015dY0\u0011\t)\u0019EM\u001a\t\u0003%\u0015$Q\u0001\r.C\u0002E\u0002\"AE4\u0005\u000b%S&\u0019A\u000b\t\u000b)R\u0006\u0019A5\u0011\u00079ac\rC\u0003l5\u0002\u0007A-\u0001\u0005uQ&\u001cX\t\\3n\u0011\u0015i\'\u000c1\u0001g\u0003!!\u0008.\u0019;FY\u0016l\u0007"
.end annotation


# virtual methods
.method public abstract iterator()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract sameElements(Lscala/collection/GenIterable;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TA1;>;)Z"
        }
    .end annotation
.end method

.method public abstract zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "TRepr;",
            "Lscala/Tuple2<",
            "TA1;TB;>;TThat;>;)TThat;"
        }
    .end annotation
.end method

.method public abstract zipAll(Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "A1:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TB;>;TA1;TB;",
            "Lscala/collection/generic/CanBuildFrom<",
            "TRepr;",
            "Lscala/Tuple2<",
            "TA1;TB;>;TThat;>;)TThat;"
        }
    .end annotation
.end method

.method public abstract zipWithIndex(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom<",
            "TRepr;",
            "Lscala/Tuple2<",
            "TA1;",
            "Ljava/lang/Object;",
            ">;TThat;>;)TThat;"
        }
    .end annotation
.end method
