.class public interface abstract Lscala/collection/mutable/SetLike;
.super Ljava/lang/Object;
.source "SetLike.scala"

# interfaces
.implements Lscala/collection/SetLike;
.implements Lscala/collection/script/Scriptable;
.implements Lscala/collection/mutable/Builder;
.implements Lscala/collection/generic/Shrinkable;
.implements Lscala/collection/mutable/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "This::",
        "Lscala/collection/mutable/SetLike<",
        "TA;TThis;>;:",
        "Lscala/collection/mutable/Set<",
        "TA;>;>",
        "Ljava/lang/Object;",
        "Lscala/collection/SetLike<",
        "TA;TThis;>;",
        "Lscala/collection/script/Scriptable<",
        "TA;>;",
        "Lscala/collection/mutable/Builder<",
        "TA;TThis;>;",
        "Lscala/collection/generic/Shrinkable<",
        "TA;>;",
        "Lscala/collection/mutable/Cloneable<",
        "Lscala/collection/mutable/Set<",
        "TA;>;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005ee\u0001C\u0001\u0003!\u0003\r\t!\u0003\u0013\u0003\u000fM+G\u000fT5lK*\u00111\u0001B\u0001\u0008[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\u000cG.Y\u0002\u0001+\rQACH\n\n\u0001-y\u0011f\u000c\u001a9wy\u0002\"\u0001D\u0007\u000e\u0003\u0019I!A\u0004\u0004\u0003\r\u0005s\u0017PU3g!\u0011\u0001\u0012CE\u000f\u000e\u0003\u0011I!!\u0001\u0003\u0011\u0005M!B\u0002\u0001\u0003\u0006+\u0001\u0011\rA\u0006\u0002\u0002\u0003F\u0011qC\u0007\t\u0003\u0019aI!!\u0007\u0004\u0003\u000f9{G\u000f[5oOB\u0011AbG\u0005\u00039\u0019\u00111!\u00118z!\t\u0019b\u0004\u0002\u0004 \u0001\u0011\u0015\r\u0001\t\u0002\u0005)\"L7/\u0005\u0002\u0018CI\u0019!\u0005\n\u0014\u0007\t\r\u0002\u0001!\t\u0002\ryI,g-\u001b8f[\u0016tGO\u0010\t\u0005K\u0001\u0011R$D\u0001\u0003!\r)sEE\u0005\u0003Q\t\u00111aU3u!\rQSFE\u0007\u0002W)\u0011A\u0006B\u0001\u0007g\u000e\u0014\u0018\u000e\u001d;\n\u00059Z#AC*de&\u0004H/\u00192mKB!Q\u0005\r\n\u001e\u0013\t\t$AA\u0004Ck&dG-\u001a:\u0011\u0007M2$#D\u00015\u0015\t)D!A\u0004hK:,\'/[2\n\u0005]\"$\u0001C$s_^\u000c\'\r\\3\u0011\u0007MJ$#\u0003\u0002;i\tQ1\u000b\u001b:j].\u000c\'\r\\3\u0011\u0007\u0015bd%\u0003\u0002>\u0005\tI1\t\\8oK\u0006\u0014G.\u001a\t\u0005!}\u0012\u0012)\u0003\u0002A\t\tq\u0001+\u0019:bY2,G.\u001b>bE2,\u0007c\u0001\"G%5\t1I\u0003\u0002\u0004\t*\u0011Q\tB\u0001\ta\u0006\u0014\u0018\r\u001c7fY&\u0011qi\u0011\u0002\u0007!\u0006\u00148+\u001a;\t\u000b%\u0003A\u0011\u0001&\u0002\r\u0011Jg.\u001b;%)\u0005Y\u0005C\u0001\u0007M\u0013\tieA\u0001\u0003V]&$\u0008BB(\u0001A\u0013E\u0003+\u0001\u0006oK^\u0014U/\u001b7eKJ,\u0012a\u000c\u0005\u0007%\u0002\u0001K\u0011K*\u0002\u0017A\u000c\'oQ8nE&tWM]\u000b\u0002)B!QK\u0016\nB\u001b\u0005!\u0015BA,E\u0005!\u0019u.\u001c2j]\u0016\u0014\u0008\"B-\u0001\t\u0003Q\u0016aA1eIR\u00111L\u0018\t\u0003\u0019qK!!\u0018\u0004\u0003\u000f\t{w\u000e\\3b]\")q\u000c\u0017a\u0001%\u0005!Q\r\\3n\u0011\u0015\t\u0007\u0001\"\u0001c\u0003\u0019\u0011X-\\8wKR\u00111l\u0019\u0005\u0006?\u0002\u0004\rA\u0005\u0005\u0006K\u0002!\tAZ\u0001\u0007kB$\u0017\r^3\u0015\u0007-;\u0007\u000eC\u0003`I\u0002\u0007!\u0003C\u0003jI\u0002\u00071,\u0001\u0005j]\u000edW\u000fZ3e\u0011\u0015Y\u0007A\"\u0001m\u0003!!\u0003\u000f\\;tI\u0015\u000cHCA7o\u001b\u0005\u0001\u0001\"B0k\u0001\u0004\u0011\u0002\"\u00029\u0001\r\u0003\t\u0018!\u0003\u0013nS:,8\u000fJ3r)\ti\'\u000fC\u0003`_\u0002\u0007!\u0003C\u0003u\u0001\u0011\u0005Q/\u0001\u0004sKR\u000c\u0017N\u001c\u000b\u0003\u0017ZDQa^:A\u0002a\u000c\u0011\u0001\u001d\t\u0005\u0019e\u00142,\u0003\u0002{\r\tIa)\u001e8di&|g.\r\u0005\u0006y\u0002!\tAS\u0001\u0006G2,\u0017M\u001d\u0005\u0006}\u0002!\te`\u0001\u0006G2|g.\u001a\u000b\u0002;!1\u00111\u0001\u0001\u0005\u0002}\u000caA]3tk2$\u0008bBA\u0004\u0001\u0011\u0005\u0013\u0011B\u0001\u0006IAdWo\u001d\u000b\u0004;\u0005-\u0001BB0\u0002\u0006\u0001\u0007!\u0003\u000b\u0005\u0002\u0006\u0005=\u00111DA\u0010!\u0011\t\t\"a\u0006\u000e\u0005\u0005M!bAA\u000b\r\u0005Q\u0011M\u001c8pi\u0006$\u0018n\u001c8\n\t\u0005e\u00111\u0003\u0002\n[&<\'/\u0019;j_:\u000c#!!\u0008\u00023\u0002\\\u0003\rI2sK\u0006$Xm\u001d\u0011bA9,w\u000fI:fi:\u0002Sk]3!A.j\u0004\r\t;pA\u0005$G\rI1oA\u0015dW-\\3oi\u0002\"x\u000e\t;iSN\u00043/\u001a;!C:$\u0007E]3ukJt\u0007\u0005\u001e5bi\u0002\u001aX\r\u001e\u0011jiN,GN\u001a\u0018\"\u0005\u0005\u0005\u0012!\u0002\u001a/q9\u0002\u0004bBA\u0004\u0001\u0011\u0005\u0013Q\u0005\u000b\u0008;\u0005\u001d\u00121FA\u0018\u0011\u001d\tI#a\tA\u0002I\tQ!\u001a7f[FBq!!\u000c\u0002$\u0001\u0007!#A\u0003fY\u0016l\'\u0007\u0003\u0005\u00022\u0005\r\u0002\u0019AA\u001a\u0003\u0015)G.Z7t!\u0011a\u0011Q\u0007\n\n\u0007\u0005]bA\u0001\u0006=e\u0016\u0004X-\u0019;fIzB\u0003\"a\t\u0002\u0010\u0005m\u0011q\u0004\u0005\u0008\u0003{\u0001A\u0011IA \u0003)!\u0003\u000f\\;tIAdWo\u001d\u000b\u0004;\u0005\u0005\u0003\u0002CA\"\u0003w\u0001\r!!\u0012\u0002\u0005a\u001c\u0008\u0003\u0002\t\u0002HII1!!\u0013\u0005\u0005I9UM\u001c+sCZ,\'o]1cY\u0016|enY3)\u0011\u0005m\u0012qBA\'\u0003?\t#!a\u0014\u00023\u0002\\3\u0006\u0019\u0011de\u0016\u000cG/Z:!C\u0002rWm\u001e\u0011tKRt\u0003%V:fA\u0001\\3&\u00101!i>\u0004\u0013\r\u001a3!K2,W.\u001a8ug\u0002\"x\u000e\t;iSN\u00043/\u001a;!C:$\u0007E]3ukJt\u0007\u0005\u001e5bi\u0002\u001aX\r\u001e\u0011jiN,GN\u001a\u0018\t\u000f\u0005M\u0003\u0001\"\u0011\u0002V\u00051A%\\5okN$2!HA,\u0011\u0019y\u0016\u0011\u000ba\u0001%!B\u0011\u0011KA\u0008\u00037\ny\"\t\u0002\u0002^\u0005q\u0006-\u000c1!GJ,\u0017\r^3tA\u0005\u0004c.Z<!g\u0016$h\u0006I+tK\u0002\u0002W&\u00101!i>\u0004#/Z7pm\u0016\u0004\u0013M\u001c\u0011fY\u0016lWM\u001c;!MJ|W\u000e\t;iSN\u00043/\u001a;!C:$\u0007E]3ukJt\u0007\u0005\u001e5bi\u0002\u001aX\r\u001e\u0011jiN,GN\u001a\u0018\t\u000f\u0005M\u0003\u0001\"\u0011\u0002bQ9Q$a\u0019\u0002f\u0005\u001d\u0004bBA\u0015\u0003?\u0002\rA\u0005\u0005\u0008\u0003[\ty\u00061\u0001\u0013\u0011!\t\t$a\u0018A\u0002\u0005M\u0002\u0006CA0\u0003\u001f\tY&a\u0008\t\u000f\u00055\u0004\u0001\"\u0011\u0002p\u0005aA%\\5okN$S.\u001b8vgR\u0019Q$!\u001d\t\u0011\u0005\r\u00131\u000ea\u0001\u0003\u000bB\u0003\"a\u001b\u0002\u0010\u0005U\u0014qD\u0011\u0003\u0003o\na\u000cY\u0017.A\u0002\u001a\'/Z1uKN\u0004\u0013\r\t8fo\u0002\u001aX\r\u001e\u0018!+N,\u0007\u0005Y\u0017.{\u0001\u0004Co\u001c\u0011sK6|g/\u001a\u0011fY\u0016lWM\u001c;tA\u0019\u0014x.\u001c\u0011uQ&\u001c\u0008e]3uA\u0005tG\r\t:fiV\u0014h\u000e\t;iCR\u00043/\u001a;!SR\u001cX\r\u001c4/\u0011\u001d\tY\u0008\u0001C\u0001\u0003{\n!\u0002\n7fgN$C.Z:t)\rY\u0015q\u0010\u0005\t\u0003\u0003\u000bI\u00081\u0001\u0002\u0004\u0006\u00191-\u001c3\u0011\t)\n)IE\u0005\u0004\u0003\u000f[#aB\'fgN\u000cw-\u001a\u0015\t\u0003s\nY)!%\u0002\u0016B\u0019A\"!$\n\u0007\u0005=eA\u0001\u0006eKB\u0014XmY1uK\u0012\u000c#!a%\u00021M\u001b\'/\u001b9uS:<\u0007%[:!I\u0016\u0004(/Z2bi\u0016$g&\t\u0002\u0002\u0018\u00061!GL\u00192]A\u0002"
.end annotation


# virtual methods
.method public abstract $less$less(Lscala/collection/script/Message;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/script/Message<",
            "TA;>;)V"
        }
    .end annotation
.end method

.method public abstract $minus(Ljava/lang/Object;)Lscala/collection/mutable/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TThis;"
        }
    .end annotation
.end method

.method public abstract $minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;",
            "Lscala/collection/Seq<",
            "TA;>;)TThis;"
        }
    .end annotation
.end method

.method public abstract $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/SetLike<",
            "TA;TThis;>;"
        }
    .end annotation
.end method

.method public abstract $minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenTraversableOnce<",
            "TA;>;)TThis;"
        }
    .end annotation
.end method

.method public abstract $plus(Ljava/lang/Object;)Lscala/collection/mutable/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TThis;"
        }
    .end annotation
.end method

.method public abstract $plus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;",
            "Lscala/collection/Seq<",
            "TA;>;)TThis;"
        }
    .end annotation
.end method

.method public abstract $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/SetLike<",
            "TA;TThis;>;"
        }
    .end annotation
.end method

.method public abstract $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenTraversableOnce<",
            "TA;>;)TThis;"
        }
    .end annotation
.end method

.method public abstract add(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation
.end method

.method public abstract clear()V
.end method

.method public abstract clone()Lscala/collection/mutable/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TThis;"
        }
    .end annotation
.end method

.method public abstract newBuilder()Lscala/collection/mutable/Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder<",
            "TA;TThis;>;"
        }
    .end annotation
.end method

.method public abstract parCombiner()Lscala/collection/parallel/Combiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TA;",
            "Lscala/collection/parallel/mutable/ParSet<",
            "TA;>;>;"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation
.end method

.method public abstract result()Lscala/collection/mutable/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TThis;"
        }
    .end annotation
.end method

.method public abstract retain(Lscala/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract update(Ljava/lang/Object;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;Z)V"
        }
    .end annotation
.end method
