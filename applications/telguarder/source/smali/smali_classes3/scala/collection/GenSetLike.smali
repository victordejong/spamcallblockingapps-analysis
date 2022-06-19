.class public interface abstract Lscala/collection/GenSetLike;
.super Ljava/lang/Object;
.source "GenSetLike.scala"

# interfaces
.implements Lscala/collection/GenIterableLike;
.implements Lscala/Function1;
.implements Lscala/Equals;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "Repr:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/GenIterableLike<",
        "TA;TRepr;>;",
        "Lscala/Function1<",
        "TA;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Equals;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001y4q!\u0001\u0002\u0011\u0002\u0007\u0005qA\u0001\u0006HK:\u001cV\r\u001e\'jW\u0016T!a\u0001\u0003\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\u0006\u0003\u0015\u00198-\u00197b\u0007\u0001)2\u0001C\n\u001e\'\u0019\u0001\u0011\"D\u0010&QA\u0011!bC\u0007\u0002\t%\u0011A\u0002\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\t9y\u0011\u0003H\u0007\u0002\u0005%\u0011\u0001C\u0001\u0002\u0010\u000f\u0016t\u0017\n^3sC\ndW\rT5lKB\u0011!c\u0005\u0007\u0001\t\u0015!\u0002A1\u0001\u0016\u0005\u0005\t\u0015C\u0001\u000c\u001a!\tQq#\u0003\u0002\u0019\t\t9aj\u001c;iS:<\u0007C\u0001\u0006\u001b\u0013\tYBAA\u0002B]f\u0004\"AE\u000f\u0005\ry\u0001AQ1\u0001\u0016\u0005\u0011\u0011V\r\u001d:\u0011\t)\u0001\u0013CI\u0005\u0003C\u0011\u0011\u0011BR;oGRLwN\\\u0019\u0011\u0005)\u0019\u0013B\u0001\u0013\u0005\u0005\u001d\u0011un\u001c7fC:\u0004\"A\u0003\u0014\n\u0005\u001d\"!AB#rk\u0006d7\u000f\u0005\u0003\u000fSEY\u0013B\u0001\u0016\u0003\u00059\u0001\u0016M]1mY\u0016d\u0017N_1cY\u0016\u00042\u0001L\u0018\u0012\u001b\u0005i#B\u0001\u0018\u0003\u0003!\u0001\u0018M]1mY\u0016d\u0017B\u0001\u0019.\u0005\u0019\u0001\u0016M]*fi\")!\u0007\u0001C\u0001g\u00051A%\u001b8ji\u0012\"\u0012\u0001\u000e\t\u0003\u0015UJ!A\u000e\u0003\u0003\tUs\u0017\u000e\u001e\u0005\u0006q\u00011\t!O\u0001\tSR,\'/\u0019;peV\t!\u0008E\u0002\u000fwEI!\u0001\u0010\u0002\u0003\u0011%#XM]1u_JDQA\u0010\u0001\u0007\u0002}\n\u0001bY8oi\u0006Lgn\u001d\u000b\u0003E\u0001CQ!Q\u001fA\u0002E\tA!\u001a7f[\")1\t\u0001D\u0001\t\u0006)A\u0005\u001d7vgR\u0011A$\u0012\u0005\u0006\u0003\n\u0003\r!\u0005\u0005\u0006\u000f\u00021\t\u0001S\u0001\u0007I5Lg.^:\u0015\u0005qI\u0005\"B!G\u0001\u0004\t\u0002\"B&\u0001\r\u0003a\u0015aA:fcV\tQ\nE\u0002\u000f\u001dFI!a\u0014\u0002\u0003\u0007M+G\u000fC\u0003R\u0001\u0011\u0005!+A\u0003baBd\u0017\u0010\u0006\u0002#\'\")\u0011\t\u0015a\u0001#!)Q\u000b\u0001C\u0001-\u0006I\u0011N\u001c;feN,7\r\u001e\u000b\u00039]CQ\u0001\u0017+A\u0002e\u000bA\u0001\u001e5biB\u0019aBW\t\n\u0005m\u0013!AB$f]N+G\u000fC\u0003^\u0001\u0011\u0005a,\u0001\u0003%C6\u0004HC\u0001\u000f`\u0011\u0015AF\u000c1\u0001Z\u0011\u0015\t\u0007A\"\u0001c\u0003\u0015)h.[8o)\ta2\rC\u0003YA\u0002\u0007\u0011\u000cC\u0003f\u0001\u0011\u0005a-\u0001\u0003%E\u0006\u0014HC\u0001\u000fh\u0011\u0015AF\r1\u0001Z\u0011\u0015I\u0007A\"\u0001k\u0003\u0011!\u0017N\u001a4\u0015\u0005qY\u0007\"\u0002-i\u0001\u0004I\u0006\"B7\u0001\t\u0003q\u0017A\u0003\u0013b[B$C/\u001b7eKR\u0011Ad\u001c\u0005\u000612\u0004\r!\u0017\u0005\u0006c\u0002!\tA]\u0001\tgV\u00147/\u001a;PMR\u0011!e\u001d\u0005\u00061B\u0004\r!\u0017\u0005\u0006k\u0002!\tE^\u0001\u0007KF,\u0018\r\\:\u0015\u0005\t:\u0008\"\u0002-u\u0001\u0004I\u0002\"B=\u0001\t\u0003R\u0018\u0001\u00035bg\"\u001cu\u000eZ3\u0015\u0003m\u0004\"A\u0003?\n\u0005u$!aA%oi\u0002"
.end annotation


# virtual methods
.method public abstract $amp(Lscala/collection/GenSet;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenSet<",
            "TA;>;)TRepr;"
        }
    .end annotation
.end method

.method public abstract $amp$tilde(Lscala/collection/GenSet;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenSet<",
            "TA;>;)TRepr;"
        }
    .end annotation
.end method

.method public abstract $bar(Lscala/collection/GenSet;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenSet<",
            "TA;>;)TRepr;"
        }
    .end annotation
.end method

.method public abstract $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TRepr;"
        }
    .end annotation
.end method

.method public abstract $plus(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TRepr;"
        }
    .end annotation
.end method

.method public abstract apply(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation
.end method

.method public abstract contains(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation
.end method

.method public abstract diff(Lscala/collection/GenSet;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenSet<",
            "TA;>;)TRepr;"
        }
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract hashCode()I
.end method

.method public abstract intersect(Lscala/collection/GenSet;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenSet<",
            "TA;>;)TRepr;"
        }
    .end annotation
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

.method public abstract seq()Lscala/collection/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Set<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract subsetOf(Lscala/collection/GenSet;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenSet<",
            "TA;>;)Z"
        }
    .end annotation
.end method

.method public abstract union(Lscala/collection/GenSet;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenSet<",
            "TA;>;)TRepr;"
        }
    .end annotation
.end method
