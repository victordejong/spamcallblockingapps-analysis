.class public final Lscala/collection/parallel/ParallelCollectionImplicits;
.super Ljava/lang/Object;
.source "package.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001m;a!\u0001\u0002\t\u0002\u0011A\u0011a\u0007)be\u0006dG.\u001a7D_2dWm\u0019;j_:LU\u000e\u001d7jG&$8O\u0003\u0002\u0004\t\u0005A\u0001/\u0019:bY2,GN\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u0004\"!\u0003\u0006\u000e\u0003\t1aa\u0003\u0002\t\u0002\u0011a!a\u0007)be\u0006dG.\u001a7D_2dWm\u0019;j_:LU\u000e\u001d7jG&$8o\u0005\u0002\u000b\u001bA\u0011abD\u0007\u0002\r%\u0011\u0001C\u0002\u0002\u0007\u0003:L(+\u001a4\t\u000bIQA\u0011\u0001\u000b\u0002\rqJg.\u001b;?\u0007\u0001!\u0012\u0001\u0003\u0005\u0006-)!\u0019aF\u0001\u000cM\u0006\u001cGo\u001c:ze=\u00048/\u0006\u0003\u0019C-rCCA\r1%\rQR\u0002\u0008\u0004\u00057U\u0001\u0011D\u0001\u0007=e\u00164\u0017N\\3nK:$h\u0008E\u0003\n;}QS&\u0003\u0002\u001f\u0005\tQa)Y2u_JLx\n]:\u0011\u0005\u0001\nC\u0002\u0001\u0003\u0006EU\u0011\ra\t\u0002\u0005\rJ|W.\u0005\u0002%OA\u0011a\"J\u0005\u0003M\u0019\u0011qAT8uQ&tw\r\u0005\u0002\u000fQ%\u0011\u0011F\u0002\u0002\u0004\u0003:L\u0008C\u0001\u0011,\t\u0015aSC1\u0001$\u0005\u0011)E.Z7\u0011\u0005\u0001rC!B\u0018\u0016\u0005\u0004\u0019#A\u0001+p\u0011\u0015\tT\u00031\u00013\u0003\t\u0011g\rE\u00034m}QS&D\u00015\u0015\t)D!A\u0004hK:,\'/[2\n\u0005]\"$\u0001D\"b]\n+\u0018\u000e\u001c3Ge>l\u0007\"B\u001d\u000b\t\u0007Q\u0014a\u0004;sCZ,\'o]1cY\u0016\u0014t\u000e]:\u0016\u0005m\u0012EC\u0001\u001fE%\riTB\u0010\u0004\u00057a\u0002A\u0008E\u0002\n\u007f\u0005K!\u0001\u0011\u0002\u0003\u001dQ\u0013\u0018M^3sg\u0006\u0014G.Z(qgB\u0011\u0001E\u0011\u0003\u0006\u0007b\u0012\ra\t\u0002\u0002)\")Q\t\u000fa\u0001\r\u0006\tA\u000fE\u0002H\u0011\u0006k\u0011\u0001B\u0005\u0003\u0013\u0012\u0011!cR3o)J\u000cg/\u001a:tC\ndWm\u00148dK\")1J\u0003C\u0002\u0019\u0006iA\u000f\u001b:po\u0006\u0014G.\u001a\u001apaN$\"!\u0014*\u0013\u00079kqJ\u0002\u0003\u001c\u0015\u0002i\u0005CA\u0005Q\u0013\t\t&A\u0001\u0007UQJ|w/\u00192mK>\u00038\u000fC\u0003T\u0015\u0002\u0007A+\u0001\u0003tK24\u0007CA+Y\u001d\tqa+\u0003\u0002X\r\u00059\u0001/Y2lC\u001e,\u0017BA-[\u0005%!\u0006N]8xC\ndWM\u0003\u0002X\r\u0001"
.end annotation


# direct methods
.method public static factory2ops(Lscala/collection/generic/CanBuildFrom;)Lscala/collection/parallel/FactoryOps;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<From:",
            "Ljava/lang/Object;",
            "Elem:",
            "Ljava/lang/Object;",
            "To:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom<",
            "TFrom;TElem;TTo;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lscala/collection/parallel/ParallelCollectionImplicits$;->MODULE$:Lscala/collection/parallel/ParallelCollectionImplicits$;

    invoke-virtual {v0, p0}, Lscala/collection/parallel/ParallelCollectionImplicits$;->factory2ops(Lscala/collection/generic/CanBuildFrom;)Lscala/collection/parallel/FactoryOps;

    move-result-object p0

    return-object p0
.end method

.method public static throwable2ops(Ljava/lang/Throwable;)Lscala/collection/parallel/ThrowableOps;
    .locals 1

    sget-object v0, Lscala/collection/parallel/ParallelCollectionImplicits$;->MODULE$:Lscala/collection/parallel/ParallelCollectionImplicits$;

    invoke-virtual {v0, p0}, Lscala/collection/parallel/ParallelCollectionImplicits$;->throwable2ops(Ljava/lang/Throwable;)Lscala/collection/parallel/ThrowableOps;

    move-result-object p0

    return-object p0
.end method

.method public static traversable2ops(Lscala/collection/GenTraversableOnce;)Lscala/collection/parallel/TraversableOps;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenTraversableOnce<",
            "TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lscala/collection/parallel/ParallelCollectionImplicits$;->MODULE$:Lscala/collection/parallel/ParallelCollectionImplicits$;

    invoke-virtual {v0, p0}, Lscala/collection/parallel/ParallelCollectionImplicits$;->traversable2ops(Lscala/collection/GenTraversableOnce;)Lscala/collection/parallel/TraversableOps;

    move-result-object p0

    return-object p0
.end method
