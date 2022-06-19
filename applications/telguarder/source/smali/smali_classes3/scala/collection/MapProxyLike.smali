.class public interface abstract Lscala/collection/MapProxyLike;
.super Ljava/lang/Object;
.source "MapProxyLike.scala"

# interfaces
.implements Lscala/collection/MapLike;
.implements Lscala/collection/IterableProxyLike;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "This::",
        "Lscala/collection/MapLike<",
        "TA;TB;TThis;>;:",
        "Lscala/collection/Map<",
        "TA;TB;>;>",
        "Ljava/lang/Object;",
        "Lscala/collection/MapLike<",
        "TA;TB;TThis;>;",
        "Lscala/collection/IterableProxyLike<",
        "Lscala/Tuple2<",
        "TA;TB;>;TThis;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005egaB\u0001\u0003!\u0003\r\ta\u0002\u0002\r\u001b\u0006\u0004\u0008K]8ys2K7.\u001a\u0006\u0003\u0007\u0011\t!bY8mY\u0016\u001cG/[8o\u0015\u0005)\u0011!B:dC2\u000c7\u0001A\u000b\u0005\u0011Mi\u0002e\u0005\u0003\u0001\u00135I\u0003C\u0001\u0006\u000c\u001b\u0005!\u0011B\u0001\u0007\u0005\u0005\u0019\te.\u001f*fMB)abD\t\u001d?5\t!!\u0003\u0002\u0011\u0005\t9Q*\u00199MS.,\u0007C\u0001\n\u0014\u0019\u0001!Q\u0001\u0006\u0001C\u0002U\u0011\u0011!Q\t\u0003-e\u0001\"AC\u000c\n\u0005a!!a\u0002(pi\"Lgn\u001a\t\u0003\u0015iI!a\u0007\u0003\u0003\u0007\u0005s\u0017\u0010\u0005\u0002\u0013;\u00111a\u0004\u0001CC\u0002U\u0011\u0011A\u0011\t\u0003%\u0001\"a!\t\u0001\u0005\u0006\u0004\u0011#\u0001\u0002+iSN\u000c\"AF\u0012\u0013\u0007\u0011jaE\u0002\u0003&\u0001\u0001\u0019#\u0001\u0004\u001fsK\u001aLg.Z7f]Rt\u0004\u0003\u0002\u0008(#qI!\u0001\u000b\u0002\u0003\u00075\u000b\u0007\u000f\u0005\u0003\u000fU1z\u0012BA\u0016\u0003\u0005EIE/\u001a:bE2,\u0007K]8ys2K7.\u001a\t\u0005\u00155\nB$\u0003\u0002/\t\t1A+\u001e9mKJBQ\u0001\r\u0001\u0005\u0002E\na\u0001J5oSR$C#\u0001\u001a\u0011\u0005)\u0019\u0014B\u0001\u001b\u0005\u0005\u0011)f.\u001b;\t\u000bY\u0002A\u0011I\u001c\u0002\u0007\u001d,G\u000f\u0006\u00029wA\u0019!\"\u000f\u000f\n\u0005i\"!AB(qi&|g\u000eC\u0003=k\u0001\u0007\u0011#A\u0002lKfDQA\u0010\u0001\u0005B}\n\u0001\"\u001b;fe\u0006$xN]\u000b\u0002\u0001B\u0019a\"\u0011\u0017\n\u0005\t\u0013!\u0001C%uKJ\u000cGo\u001c:\t\u000b\u0011\u0003A\u0011I#\u0002\u000b\u0011\u0002H.^:\u0016\u0005\u0019KECA$M!\u0011qq%\u0005%\u0011\u0005IIE!\u0002&D\u0005\u0004Y%A\u0001\"2#\ta\u0012\u0004C\u0003N\u0007\u0002\u0007a*\u0001\u0002lmB!!\"L\tI\u0011\u0015\u0001\u0006\u0001\"\u0011R\u0003\u0019!S.\u001b8vgR\u0011qD\u0015\u0005\u0006y=\u0003\r!\u0005\u0005\u0006)\u0002!\t%V\u0001\u0008SN,U\u000e\u001d;z+\u00051\u0006C\u0001\u0006X\u0013\tAFAA\u0004C_>dW-\u00198\t\u000bi\u0003A\u0011I.\u0002\u0013\u001d,Go\u0014:FYN,WC\u0001/_)\riv\u000c\u0019\t\u0003%y#QAS-C\u0002-CQ\u0001P-A\u0002EAa!Y-\u0005\u0002\u0004\u0011\u0017a\u00023fM\u0006,H\u000e\u001e\t\u0004\u0015\rl\u0016B\u00013\u0005\u0005!a$-\u001f8b[\u0016t\u0004\"\u00024\u0001\t\u0003:\u0017!B1qa2LHC\u0001\u000fi\u0011\u0015aT\r1\u0001\u0012\u0011\u0015Q\u0007\u0001\"\u0011l\u0003!\u0019wN\u001c;bS:\u001cHC\u0001,m\u0011\u0015a\u0014\u000e1\u0001\u0012\u0011\u0015q\u0007\u0001\"\u0011p\u0003-I7\u000fR3gS:,G-\u0011;\u0015\u0005Y\u0003\u0008\"\u0002\u001fn\u0001\u0004\t\u0002\"\u0002:\u0001\t\u0003\u001a\u0018AB6fsN+G/F\u0001u!\rqQ/E\u0005\u0003m\n\u00111aU3u\u0011\u0015A\u0008\u0001\"\u0011z\u00031YW-_:Ji\u0016\u0014\u0018\r^8s+\u0005Q\u0008c\u0001\u0008B#!)A\u0010\u0001C!{\u0006!1.Z=t+\u0005q\u0008c\u0001\u0008\u0000#%\u0019\u0011\u0011\u0001\u0002\u0003\u0011%#XM]1cY\u0016Dq!!\u0002\u0001\t\u0003\n9!\u0001\u0004wC2,Xm]\u000b\u0003\u0003\u0013\u00012AD@\u001d\u0011\u001d\ti\u0001\u0001C!\u0003\u001f\taB^1mk\u0016\u001c\u0018\n^3sCR|\'/\u0006\u0002\u0002\u0012A\u0019a\"\u0011\u000f\t\r\u0005\u0004A\u0011IA\u000b)\ra\u0012q\u0003\u0005\u0007y\u0005M\u0001\u0019A\t\t\u000f\u0005m\u0001\u0001\"\u0011\u0002\u001e\u0005Qa-\u001b7uKJ\\U-_:\u0015\u0007\u0019\ny\u0002\u0003\u0005\u0002\"\u0005e\u0001\u0019AA\u0012\u0003\u0005\u0001\u0008#\u0002\u0006\u0002&E1\u0016bAA\u0014\t\tIa)\u001e8di&|g.\r\u0005\u0008\u0003W\u0001A\u0011IA\u0017\u0003%i\u0017\r\u001d,bYV,7/\u0006\u0003\u00020\u0005UB\u0003BA\u0019\u0003s\u0001RAD\u0014\u0012\u0003g\u00012AEA\u001b\t\u001d\t9$!\u000bC\u0002U\u0011\u0011a\u0011\u0005\t\u0003w\tI\u00031\u0001\u0002>\u0005\ta\r\u0005\u0004\u000b\u0003Ka\u00121\u0007\u0005\u0008\u0003\u0003\u0002A\u0011IA\"\u0003\u001d)\u0008\u000fZ1uK\u0012,B!!\u0012\u0002LQ1\u0011qIA\'\u0003\u001f\u0002RAD\u0014\u0012\u0003\u0013\u00022AEA&\t\u0019Q\u0015q\u0008b\u0001\u0017\"1A(a\u0010A\u0002EA\u0001\"!\u0015\u0002@\u0001\u0007\u0011\u0011J\u0001\u0006m\u0006dW/\u001a\u0005\u0007\t\u0002!\t%!\u0016\u0016\t\u0005]\u0013Q\u000c\u000b\t\u00033\ny&!\u001a\u0002jA)abJ\t\u0002\\A\u0019!#!\u0018\u0005\r)\u000b\u0019F1\u0001L\u0011!\t\t\'a\u0015A\u0002\u0005\r\u0014aA6wcA)!\"L\t\u0002\\!A\u0011qMA*\u0001\u0004\t\u0019\'A\u0002lmJB\u0001\"a\u001b\u0002T\u0001\u0007\u0011QN\u0001\u0004WZ\u001c\u0008#\u0002\u0006\u0002p\u0005\r\u0014bAA9\t\tQAH]3qK\u0006$X\r\u001a \t\u000f\u0005U\u0004\u0001\"\u0011\u0002x\u0005QA\u0005\u001d7vg\u0012\u0002H.^:\u0016\t\u0005e\u0014q\u0010\u000b\u0005\u0003w\n\t\tE\u0003\u000fOE\ti\u0008E\u0002\u0013\u0003\u007f\"aASA:\u0005\u0004Y\u0005\u0002CAB\u0003g\u0002\r!!\"\u0002\u0005a\u001c\u0008#\u0002\u0008\u0002\u0008\u0006-\u0015bAAE\u0005\t\u0011r)\u001a8Ue\u00064XM]:bE2,wJ\\2f!\u0015QQ&EA?\u0011\u001d\ty\t\u0001C!\u0003#\u000b\u0011BZ5mi\u0016\u0014hj\u001c;\u0015\u0007}\t\u0019\n\u0003\u0005\u0002\"\u00055\u0005\u0019AAK!\u0015Q\u0011Q\u0005\u0017W\u0011\u001d\tI\n\u0001C!\u00037\u000b\u0011\"\u00193e\'R\u0014\u0018N\\4\u0015\u0015\u0005u\u00151VAX\u0003\u0003\u000c)\r\u0005\u0003\u0002 \u0006\u0015fb\u0001\u0006\u0002\"&\u0019\u00111\u0015\u0003\u0002\u000fA\u000c7m[1hK&!\u0011qUAU\u00055\u0019FO]5oO\n+\u0018\u000e\u001c3fe*\u0019\u00111\u0015\u0003\t\u0011\u00055\u0016q\u0013a\u0001\u0003;\u000b\u0011A\u0019\u0005\t\u0003c\u000b9\n1\u0001\u00024\u0006)1\u000f^1siB!\u0011QWA^\u001d\rQ\u0011qW\u0005\u0004\u0003s#\u0011A\u0002)sK\u0012,g-\u0003\u0003\u0002>\u0006}&AB*ue&twMC\u0002\u0002:\u0012A\u0001\"a1\u0002\u0018\u0002\u0007\u00111W\u0001\u0004g\u0016\u0004\u0008\u0002CAd\u0003/\u0003\r!a-\u0002\u0007\u0015tG\rK\u0004\u0001\u0003\u0017\u000c\t.!6\u0011\u0007)\ti-C\u0002\u0002P\u0012\u0011!\u0002Z3qe\u0016\u001c\u0017\r^3eC\t\t\u0019.A#Qe>D\u00180\u001b8hA%\u001c\u0008\u0005Z3qe\u0016\u001c\u0017\r^3eA\u0011,X\r\t;pA1\u000c7m\u001b\u0011pM\u0002*8/\u001a\u0011b]\u0012\u00043m\\7qS2,\'/\u000c7fm\u0016d\u0007e];qa>\u0014HOL\u0011\u0003\u0003/\u000caA\r\u00182c9\u0002\u0004"
.end annotation


# virtual methods
.method public abstract $minus(Ljava/lang/Object;)Lscala/collection/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TThis;"
        }
    .end annotation
.end method

.method public abstract $plus(Lscala/Tuple2;)Lscala/collection/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "TA;TB1;>;)",
            "Lscala/collection/Map<",
            "TA;TB1;>;"
        }
    .end annotation
.end method

.method public abstract $plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "TA;TB1;>;",
            "Lscala/Tuple2<",
            "TA;TB1;>;",
            "Lscala/collection/Seq<",
            "Lscala/Tuple2<",
            "TA;TB1;>;>;)",
            "Lscala/collection/Map<",
            "TA;TB1;>;"
        }
    .end annotation
.end method

.method public abstract $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenTraversableOnce<",
            "Lscala/Tuple2<",
            "TA;TB1;>;>;)",
            "Lscala/collection/Map<",
            "TA;TB1;>;"
        }
    .end annotation
.end method

.method public abstract addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
.end method

.method public abstract apply(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
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

.method public abstract default(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation
.end method

.method public abstract filterKeys(Lscala/Function1;)Lscala/collection/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Map<",
            "TA;TB;>;"
        }
    .end annotation
.end method

.method public abstract filterNot(Lscala/Function1;)Lscala/collection/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TA;TB;>;",
            "Ljava/lang/Object;",
            ">;)TThis;"
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/Object;)Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation
.end method

.method public abstract getOrElse(Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TA;",
            "Lscala/Function0<",
            "TB1;>;)TB1;"
        }
    .end annotation
.end method

.method public abstract isDefinedAt(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract iterator()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TA;TB;>;>;"
        }
    .end annotation
.end method

.method public abstract keySet()Lscala/collection/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Set<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract keys()Lscala/collection/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterable<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract keysIterator()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract mapValues(Lscala/Function1;)Lscala/collection/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TB;TC;>;)",
            "Lscala/collection/Map<",
            "TA;TC;>;"
        }
    .end annotation
.end method

.method public abstract updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TA;TB1;)",
            "Lscala/collection/Map<",
            "TA;TB1;>;"
        }
    .end annotation
.end method

.method public abstract values()Lscala/collection/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterable<",
            "TB;>;"
        }
    .end annotation
.end method

.method public abstract valuesIterator()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation
.end method
