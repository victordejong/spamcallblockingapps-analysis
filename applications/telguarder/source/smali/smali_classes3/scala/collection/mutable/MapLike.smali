.class public interface abstract Lscala/collection/mutable/MapLike;
.super Ljava/lang/Object;
.source "MapLike.scala"

# interfaces
.implements Lscala/collection/MapLike;
.implements Lscala/collection/mutable/Builder;
.implements Lscala/collection/generic/Shrinkable;
.implements Lscala/collection/mutable/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "This::",
        "Lscala/collection/mutable/MapLike<",
        "TA;TB;TThis;>;:",
        "Lscala/collection/mutable/Map<",
        "TA;TB;>;>",
        "Ljava/lang/Object;",
        "Lscala/collection/MapLike<",
        "TA;TB;TThis;>;",
        "Lscala/collection/mutable/Builder<",
        "Lscala/Tuple2<",
        "TA;TB;>;TThis;>;",
        "Lscala/collection/generic/Shrinkable<",
        "TA;>;",
        "Lscala/collection/mutable/Cloneable<",
        "TThis;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005eg\u0001C\u0001\u0003!\u0003\r\t!C\u0014\u0003\u000f5\u000b\u0007\u000fT5lK*\u00111\u0001B\u0001\u0008[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\u000cG.Y\u0002\u0001+\u0011QACH\u0011\u0014\u0011\u0001Yq\u0002\u000c\u001a9wy\u0002\"\u0001D\u0007\u000e\u0003\u0019I!A\u0004\u0004\u0003\r\u0005s\u0017PU3g!\u0015\u0001\u0012CE\u000f!\u001b\u0005!\u0011BA\u0001\u0005!\t\u0019B\u0003\u0004\u0001\u0005\u000bU\u0001!\u0019\u0001\u000c\u0003\u0003\u0005\u000b\"a\u0006\u000e\u0011\u00051A\u0012BA\r\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"\u0001D\u000e\n\u0005q1!aA!osB\u00111C\u0008\u0003\u0006?\u0001\u0011\rA\u0006\u0002\u0002\u0005B\u00111#\t\u0003\u0007E\u0001!)\u0019A\u0012\u0003\tQC\u0017n]\t\u0003/\u0011\u00122!J\u0014*\r\u00111\u0003\u0001\u0001\u0013\u0003\u0019q\u0012XMZ5oK6,g\u000e\u001e \u0011\u000b!\u0002!#\u0008\u0011\u000e\u0003\t\u0001B\u0001\u000b\u0016\u0013;%\u00111F\u0001\u0002\u0004\u001b\u0006\u0004\u0008\u0003\u0002\u0015._\u0001J!A\u000c\u0002\u0003\u000f\t+\u0018\u000e\u001c3feB!A\u0002\r\n\u001e\u0013\t\tdA\u0001\u0004UkBdWM\r\t\u0004gYzS\"\u0001\u001b\u000b\u0005U\"\u0011aB4f]\u0016\u0014\u0018nY\u0005\u0003oQ\u0012\u0001b\u0012:po\u0006\u0014G.\u001a\t\u0004ge\u0012\u0012B\u0001\u001e5\u0005)\u0019\u0006N]5oW\u0006\u0014G.\u001a\t\u0004Qq\u0002\u0013BA\u001f\u0003\u0005%\u0019En\u001c8fC\ndW\r\u0005\u0003\u0011\u007f=\n\u0015B\u0001!\u0005\u00059\u0001\u0016M]1mY\u0016d\u0017N_1cY\u0016\u0004BA\u0011$\u0013;5\t1I\u0003\u0002\u0004\t*\u0011Q\tB\u0001\ta\u0006\u0014\u0018\r\u001c7fY&\u0011qi\u0011\u0002\u0007!\u0006\u0014X*\u00199\t\u000b%\u0003A\u0011\u0001&\u0002\r\u0011Jg.\u001b;%)\u0005Y\u0005C\u0001\u0007M\u0013\tieA\u0001\u0003V]&$\u0008BB(\u0001A\u0013E\u0003+\u0001\u0006oK^\u0014U/\u001b7eKJ,\u0012\u0001\u000c\u0005\u0007%\u0002\u0001K\u0011K*\u0002\u0017A\u000c\'oQ8nE&tWM]\u000b\u0002)B!QKV\u0018B\u001b\u0005!\u0015BA,E\u0005!\u0019u.\u001c2j]\u0016\u0014\u0008\"B-\u0001\t\u0003Q\u0016a\u00019viR\u00191L\u00181\u0011\u00071aV$\u0003\u0002^\r\t1q\n\u001d;j_:DQa\u0018-A\u0002I\t1a[3z\u0011\u0015\t\u0007\u000c1\u0001\u001e\u0003\u00151\u0018\r\\;f\u0011\u0015\u0019\u0007\u0001\"\u0001e\u0003\u0019)\u0008\u000fZ1uKR\u00191*\u001a4\t\u000b}\u0013\u0007\u0019\u0001\n\t\u000b\u0005\u0014\u0007\u0019A\u000f\t\u000b!\u0004a\u0011A5\u0002\u0011\u0011\u0002H.^:%KF$\"A[6\u000e\u0003\u0001AQ\u0001\\4A\u0002=\n!a\u001b<\t\u000b9\u0004A\u0011I8\u0002\u000fU\u0004H-\u0019;fIV\u0011\u0001o\u001d\u000b\u0004cZ<\u0008\u0003\u0002\u0015+%I\u0004\"aE:\u0005\u000bQl\'\u0019A;\u0003\u0005\t\u000b\u0014CA\u000f\u001b\u0011\u0015yV\u000e1\u0001\u0013\u0011\u0015\tW\u000e1\u0001s\u0011\u0015I\u0008\u0001\"\u0001{\u0003\u0015!\u0003\u000f\\;t+\tYh\u0010\u0006\u0002}\u007fB!\u0001F\u000b\n~!\t\u0019b\u0010B\u0003uq\n\u0007Q\u000f\u0003\u0004mq\u0002\u0007\u0011\u0011\u0001\t\u0005\u0019A\u0012R\u0010K\u0004y\u0003\u000b\t\t\"!\u0006\u0011\t\u0005\u001d\u0011QB\u0007\u0003\u0003\u0013Q1!a\u0003\u0007\u0003)\tgN\\8uCRLwN\\\u0005\u0005\u0003\u001f\tIAA\u0005nS\u001e\u0014\u0018\r^5p]\u0006\u0012\u00111C\u0001ZA.\u0002\u0007e\u0019:fCR,7\u000fI1!]\u0016<\u0008%\\1q]\u0001*6/\u001a\u0011aWu\u0002\u0007\u0005^8!C\u0012$\u0007%\u00198!K2,W.\u001a8uAQ|\u0007\u0005\u001e5jg\u0002j\u0017\r\u001d\u0011b]\u0012\u0004#/\u001a;ve:\u0004C\u000f[1uA5\u000c\u0007\u000fI5ug\u0016dgML\u0011\u0003\u0003/\tQA\r\u00189]ABa!\u001f\u0001\u0005B\u0005mQ\u0003BA\u000f\u0003G!\u0002\"a\u0008\u0002&\u0005-\u0012q\u0006\t\u0006Q)\u0012\u0012\u0011\u0005\t\u0004\'\u0005\rBA\u0002;\u0002\u001a\t\u0007Q\u000f\u0003\u0005\u0002(\u0005e\u0001\u0019AA\u0015\u0003\u0015)G.Z72!\u0015a\u0001GEA\u0011\u0011!\ti#!\u0007A\u0002\u0005%\u0012!B3mK6\u0014\u0004\u0002CA\u0019\u00033\u0001\r!a\r\u0002\u000b\u0015dW-\\:\u0011\u000b1\t)$!\u000b\n\u0007\u0005]bA\u0001\u0006=e\u0016\u0004X-\u0019;fIzB\u0003\"!\u0007\u0002\u0006\u0005E\u0011Q\u0003\u0005\u0008\u0003{\u0001A\u0011IA \u0003)!\u0003\u000f\\;tIAdWo]\u000b\u0005\u0003\u0003\n9\u0005\u0006\u0003\u0002D\u0005%\u0003#\u0002\u0015+%\u0005\u0015\u0003cA\n\u0002H\u00111A/a\u000fC\u0002UD\u0001\"a\u0013\u0002<\u0001\u0007\u0011QJ\u0001\u0003qN\u0004R\u0001EA(\u0003\'J1!!\u0015\u0005\u0005I9UM\u001c+sCZ,\'o]1cY\u0016|enY3\u0011\u000b1\u0001$#!\u0012)\u0011\u0005m\u0012QAA,\u0003+\t#!!\u0017\u00027\u0002\\3\u0006\u0019\u0011de\u0016\u000cG/Z:!C\u0002rWm\u001e\u0011nCBt\u0003%V:fA\u0001\\3&\u00101!i>\u0004\u0013\r\u001a3!C:\u0004S\r\\3nK:$\u0008\u0005^8!i\"L7\u000fI7ba\u0002\ng\u000e\u001a\u0011sKR,(O\u001c\u0011uQ\u0006$\u0008%\\1qA%$8/\u001a7g]!9\u0011Q\u000c\u0001\u0005\u0002\u0005}\u0013A\u0002:f[>4X\rF\u0002\\\u0003CBaaXA.\u0001\u0004\u0011\u0002bBA3\u0001\u0019\u0005\u0011qM\u0001\nI5Lg.^:%KF$2A[A5\u0011\u0019y\u00161\ra\u0001%!9\u0011Q\u000e\u0001\u0005B\u0005=\u0014A\u0002\u0013nS:,8\u000fF\u0002!\u0003cBaaXA6\u0001\u0004\u0011\u0002\u0006CA6\u0003\u000b\t)(!\u0006\"\u0005\u0005]\u0014A\u00181.A\u0002\u001a\'/Z1uKN\u0004\u0013\r\t8fo\u0002j\u0017\r\u001d\u0018!+N,\u0007\u0005Y\u0017>A\u0002\"x\u000e\t:f[>4X\rI1oA\u0015dW-\\3oi\u00022\'o\\7!i\"L7\u000fI7ba\u0002\ng\u000e\u001a\u0011sKR,(O\u001c\u0011uQ\u0006$\u0008%\\1qA%$8/\u001a7g]!1\u00111\u0010\u0001\u0005\u0002)\u000bQa\u00197fCJDq!a \u0001\t\u0003\t\t)A\u0008hKR|%/\u00127tKV\u0003H-\u0019;f)\u0015i\u00121QAC\u0011\u0019y\u0016Q\u0010a\u0001%!I\u0011qQA?\t\u0003\u0007\u0011\u0011R\u0001\u0003_B\u0004B\u0001DAF;%\u0019\u0011Q\u0012\u0004\u0003\u0011q\u0012\u0017P\\1nKzBq!!%\u0001\t\u0003\t\u0019*A\u0005ue\u0006t7OZ8s[R\u0019!.!&\t\u0011\u0005]\u0015q\u0012a\u0001\u00033\u000b\u0011A\u001a\t\u0007\u0019\u0005m%#H\u000f\n\u0007\u0005ueAA\u0005Gk:\u001cG/[8oe!9\u0011\u0011\u0015\u0001\u0005\u0002\u0005\r\u0016A\u0002:fi\u0006Lg\u000eF\u0002k\u0003KC\u0001\"a*\u0002 \u0002\u0007\u0011\u0011V\u0001\u0002aB9A\"a\'\u0013;\u0005-\u0006c\u0001\u0007\u0002.&\u0019\u0011q\u0016\u0004\u0003\u000f\t{w\u000e\\3b]\"9\u00111\u0017\u0001\u0005B\u0005U\u0016!B2m_:,G#\u0001\u0011\t\u000f\u0005e\u0006\u0001\"\u0001\u00026\u00061!/Z:vYRDq!!\u001c\u0001\t\u0003\ni\u000cF\u0004!\u0003\u007f\u000b\t-a1\t\u000f\u0005\u001d\u00121\u0018a\u0001%!9\u0011QFA^\u0001\u0004\u0011\u0002\u0002CA\u0019\u0003w\u0003\r!!2\u0011\t1\t)D\u0005\u0015\t\u0003w\u000b)!!\u001e\u0002\u0016!9\u00111\u001a\u0001\u0005B\u00055\u0017\u0001\u0004\u0013nS:,8\u000fJ7j]V\u001cHc\u0001\u0011\u0002P\"A\u00111JAe\u0001\u0004\t\t\u000e\u0005\u0003\u0011\u0003\u001f\u0012\u0002\u0006CAe\u0003\u000b\t).!\u0006\"\u0005\u0005]\u0017\u0001\u00191.[\u0001\u00043M]3bi\u0016\u001c\u0008%\u0019\u0011oK^\u0004S.\u00199/AU\u001bX\r\t1.[u\u0002\u0007\u0005^8!e\u0016lwN^3!C:\u0004S\r\\3nK:$\u0008E\u001a:p[\u0002\"\u0008.[:![\u0006\u0004\u0008%\u00198eAI,G/\u001e:oAQD\u0017\r\u001e\u0011nCB\u0004\u0013\u000e^:fY\u001at\u0003"
.end annotation


# virtual methods
.method public abstract $minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TThis;"
        }
    .end annotation
.end method

.method public abstract $minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;",
            "Lscala/collection/Seq<",
            "TA;>;)TThis;"
        }
    .end annotation
.end method

.method public abstract $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/MapLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/MapLike<",
            "TA;TB;TThis;>;"
        }
    .end annotation
.end method

.method public abstract $minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenTraversableOnce<",
            "TA;>;)TThis;"
        }
    .end annotation
.end method

.method public abstract $plus(Lscala/Tuple2;)Lscala/collection/mutable/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "TA;TB1;>;)",
            "Lscala/collection/mutable/Map<",
            "TA;TB1;>;"
        }
    .end annotation
.end method

.method public abstract $plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/mutable/Map;
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
            "Lscala/collection/mutable/Map<",
            "TA;TB1;>;"
        }
    .end annotation
.end method

.method public abstract $plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/MapLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TA;TB;>;)",
            "Lscala/collection/mutable/MapLike<",
            "TA;TB;TThis;>;"
        }
    .end annotation
.end method

.method public abstract $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenTraversableOnce<",
            "Lscala/Tuple2<",
            "TA;TB1;>;>;)",
            "Lscala/collection/mutable/Map<",
            "TA;TB1;>;"
        }
    .end annotation
.end method

.method public abstract clear()V
.end method

.method public abstract clone()Lscala/collection/mutable/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TThis;"
        }
    .end annotation
.end method

.method public abstract getOrElseUpdate(Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lscala/Function0<",
            "TB;>;)TB;"
        }
    .end annotation
.end method

.method public abstract newBuilder()Lscala/collection/mutable/Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder<",
            "Lscala/Tuple2<",
            "TA;TB;>;TThis;>;"
        }
    .end annotation
.end method

.method public abstract parCombiner()Lscala/collection/parallel/Combiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "Lscala/Tuple2<",
            "TA;TB;>;",
            "Lscala/collection/parallel/mutable/ParMap<",
            "TA;TB;>;>;"
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/Object;)Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation
.end method

.method public abstract result()Lscala/collection/mutable/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TThis;"
        }
    .end annotation
.end method

.method public abstract retain(Lscala/Function2;)Lscala/collection/mutable/MapLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function2<",
            "TA;TB;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/mutable/MapLike<",
            "TA;TB;TThis;>;"
        }
    .end annotation
.end method

.method public abstract transform(Lscala/Function2;)Lscala/collection/mutable/MapLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function2<",
            "TA;TB;TB;>;)",
            "Lscala/collection/mutable/MapLike<",
            "TA;TB;TThis;>;"
        }
    .end annotation
.end method

.method public abstract update(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation
.end method

.method public abstract updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TA;TB1;)",
            "Lscala/collection/mutable/Map<",
            "TA;TB1;>;"
        }
    .end annotation
.end method
