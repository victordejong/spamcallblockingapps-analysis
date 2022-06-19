.class public interface abstract Lscala/collection/Parallelizable;
.super Ljava/lang/Object;
.source "Parallelizable.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "ParRepr::",
        "Lscala/collection/Parallel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001U2q!\u0001\u0002\u0011\u0002\u0007\u0005qA\u0001\u0008QCJ\u000cG\u000e\\3mSj\u000c\'\r\\3\u000b\u0005\r!\u0011AC2pY2,7\r^5p]*\tQ!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0007!abe\u0005\u0002\u0001\u0013A\u0011!bC\u0007\u0002\t%\u0011A\u0002\u0002\u0002\u0004\u0003:L\u0008\"\u0002\u0008\u0001\t\u0003y\u0011A\u0002\u0013j]&$H\u0005F\u0001\u0011!\tQ\u0011#\u0003\u0002\u0013\t\t!QK\\5u\u0011\u0015!\u0002A\"\u0001\u0016\u0003\r\u0019X-]\u000b\u0002-A\u0019q\u0003\u0007\u000e\u000e\u0003\tI!!\u0007\u0002\u0003\u001fQ\u0013\u0018M^3sg\u0006\u0014G.Z(oG\u0016\u0004\"a\u0007\u000f\r\u0001\u00111Q\u0004\u0001CC\u0002y\u0011\u0011!Q\t\u0003?%\u0001\"A\u0003\u0011\n\u0005\u0005\"!a\u0002(pi\"Lgn\u001a\u0005\u0006G\u0001!\t\u0001J\u0001\u0004a\u0006\u0014X#A\u0013\u0011\u0005m1CAB\u0014\u0001\t\u000b\u0007\u0001FA\u0004QCJ\u0014V\r\u001d:\u0012\u0005}I\u0003CA\u000c+\u0013\tY#A\u0001\u0005QCJ\u000cG\u000e\\3m\u0011\u0019i\u0003\u0001)D\t]\u0005Y\u0001/\u0019:D_6\u0014\u0017N\\3s+\u0005y\u0003\u0003\u0002\u001945\u0015j\u0011!\r\u0006\u0003e\t\t\u0001\u0002]1sC2dW\r\\\u0005\u0003iE\u0012\u0001bQ8nE&tWM\u001d"
.end annotation


# virtual methods
.method public abstract par()Lscala/collection/Parallel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TParRepr;"
        }
    .end annotation
.end method

.method public abstract parCombiner()Lscala/collection/parallel/Combiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TA;TParRepr;>;"
        }
    .end annotation
.end method

.method public abstract seq()Lscala/collection/TraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/TraversableOnce<",
            "TA;>;"
        }
    .end annotation
.end method
