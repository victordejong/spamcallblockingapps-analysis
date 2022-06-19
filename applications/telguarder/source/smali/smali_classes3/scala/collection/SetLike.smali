.class public interface abstract Lscala/collection/SetLike;
.super Ljava/lang/Object;
.source "SetLike.scala"

# interfaces
.implements Lscala/collection/IterableLike;
.implements Lscala/collection/GenSetLike;
.implements Lscala/collection/generic/Subtractable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/SetLike$SubsetsItr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "This::",
        "Lscala/collection/SetLike<",
        "TA;TThis;>;:",
        "Lscala/collection/Set<",
        "TA;>;>",
        "Ljava/lang/Object;",
        "Lscala/collection/IterableLike<",
        "TA;TThis;>;",
        "Lscala/collection/GenSetLike<",
        "TA;TThis;>;",
        "Lscala/collection/generic/Subtractable<",
        "TA;TThis;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\t5a\u0001C\u0001\u0003!\u0003\r\taB\u0012\u0003\u000fM+G\u000fT5lK*\u00111\u0001B\u0001\u000bG>dG.Z2uS>t\'\"A\u0003\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0019\u0001bE\u000f\u0014\r\u0001IQb\n\u00161!\tQ1\"D\u0001\u0005\u0013\taAA\u0001\u0004B]f\u0014VM\u001a\t\u0005\u001d=\tB$D\u0001\u0003\u0013\t\u0001\"A\u0001\u0007Ji\u0016\u0014\u0018M\u00197f\u0019&\\W\r\u0005\u0002\u0013\'1\u0001A!\u0002\u000b\u0001\u0005\u0004)\"!A!\u0012\u0005YI\u0002C\u0001\u0006\u0018\u0013\tABAA\u0004O_RD\u0017N\\4\u0011\u0005)Q\u0012BA\u000e\u0005\u0005\r\te.\u001f\t\u0003%u!aA\u0008\u0001\u0005\u0006\u0004y\"\u0001\u0002+iSN\u000c\"A\u0006\u0011\u0013\u0007\u0005\u001aCE\u0002\u0003#\u0001\u0001\u0001#\u0001\u0004\u001fsK\u001aLg.Z7f]Rt\u0004\u0003\u0002\u0008\u0001#q\u00012AD\u0013\u0012\u0013\t1#AA\u0002TKR\u0004BA\u0004\u0015\u00129%\u0011\u0011F\u0001\u0002\u000b\u000f\u0016t7+\u001a;MS.,\u0007\u0003B\u0016/#qi\u0011\u0001\u000c\u0006\u0003[\t\tqaZ3oKJL7-\u0003\u00020Y\ta1+\u001e2ue\u0006\u001cG/\u00192mKB!a\"M\t4\u0013\t\u0011$A\u0001\u0008QCJ\u000cG\u000e\\3mSj\u000c\'\r\\3\u0011\u0007Q:\u0014#D\u00016\u0015\t1$!\u0001\u0005qCJ\u000cG\u000e\\3m\u0013\tATG\u0001\u0004QCJ\u001cV\r\u001e\u0005\u0006u\u0001!\taO\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0015\u0003q\u0002\"AC\u001f\n\u0005y\"!\u0001B+oSRDQ\u0001\u0011\u0001\u0007\u0002\u0005\u000bQ!Z7qif,\u0012\u0001\u0008\u0005\u0007\u0007\u0002\u0001K\u0011\u000b#\u0002\u00159,wOQ;jY\u0012,\'/F\u0001F!\u00111\u0015*\u0005\u000f\u000e\u0003\u001dS!\u0001\u0013\u0002\u0002\u000f5,H/\u00192mK&\u0011!j\u0012\u0002\u0008\u0005VLG\u000eZ3s\u0011\u0019a\u0005\u0001)C)\u001b\u0006Y\u0001/\u0019:D_6\u0014\u0017N\\3s+\u0005q\u0005\u0003\u0002\u001bP#MJ!\u0001U\u001b\u0003\u0011\r{WNY5oKJDQA\u0015\u0001\u0005BM\u000bQ\u0001^8TKF,\u0012\u0001\u0016\t\u0004\u001dU\u000b\u0012B\u0001,\u0003\u0005\r\u0019V-\u001d\u0005\u00061\u0002!\t%W\u0001\ti>\u0014UO\u001a4feV\u0011!lX\u000b\u00027B\u0019a\t\u00180\n\u0005u;%A\u0002\"vM\u001a,\'\u000f\u0005\u0002\u0013?\u0012)\u0001m\u0016b\u0001C\n\u0011\u0011)M\t\u0003#eAQa\u0019\u0001\u0005B\u0011\u000c1!\\1q+\r)\u0007\u000f\u001b\u000b\u0003MJ$\"a\u001a6\u0011\u0005IAG!B5c\u0005\u0004)\"\u0001\u0002+iCRDQa\u001b2A\u00041\u000c!A\u00194\u0011\u000b-jGd\\4\n\u00059d#\u0001D\"b]\n+\u0018\u000e\u001c3Ge>l\u0007C\u0001\nq\t\u0015\t(M1\u0001\u0016\u0005\u0005\u0011\u0005\"B:c\u0001\u0004!\u0018!\u00014\u0011\t))\u0018c\\\u0005\u0003m\u0012\u0011\u0011BR;oGRLwN\\\u0019)\u000b\tDh0!\u0001\u0011\u0005edX\"\u0001>\u000b\u0005m$\u0011AC1o]>$\u0018\r^5p]&\u0011QP\u001f\u0002\n[&<\'/\u0019;j_:\u000c\u0013a`\u0001@\'\u0016$h&\\1qA9|w\u000f\t:fiV\u0014hn\u001d\u0011bAM+G\u000f\u000c\u0011t_\u0002JG\u000fI<jY2\u0004C-[:dCJ$\u0007\u0005Z;qY&\u001c\u0017\r^3!m\u0006dW/Z:/C\t\t\u0019!A\u00033]ar\u0003\u0007C\u0004\u0002\u0008\u00011\t!!\u0003\u0002\u0011\r|g\u000e^1j]N$B!a\u0003\u0002\u0012A\u0019!\"!\u0004\n\u0007\u0005=AAA\u0004C_>dW-\u00198\t\u000f\u0005M\u0011Q\u0001a\u0001#\u0005!Q\r\\3n\u0011\u001d\t9\u0002\u0001D\u0001\u00033\tQ\u0001\n9mkN$2\u0001HA\u000e\u0011\u001d\t\u0019\"!\u0006A\u0002EAq!a\u0006\u0001\t\u0003\ty\u0002F\u0004\u001d\u0003C\t)#!\u000b\t\u000f\u0005\r\u0012Q\u0004a\u0001#\u0005)Q\r\\3nc!9\u0011qEA\u000f\u0001\u0004\t\u0012!B3mK6\u0014\u0004\u0002CA\u0016\u0003;\u0001\r!!\u000c\u0002\u000b\u0015dW-\\:\u0011\t)\ty#E\u0005\u0004\u0003c!!A\u0003\u001fsKB,\u0017\r^3e}!9\u0011Q\u0007\u0001\u0005\u0002\u0005]\u0012A\u0003\u0013qYV\u001cH\u0005\u001d7vgR\u0019A$!\u000f\t\u0011\u0005-\u00121\u0007a\u0001\u0003w\u0001BADA\u001f#%\u0019\u0011q\u0008\u0002\u0003%\u001d+g\u000e\u0016:bm\u0016\u00148/\u00192mK>s7-\u001a\u0005\u0008\u0003\u0007\u0002a\u0011AA#\u0003\u0019!S.\u001b8vgR\u0019A$a\u0012\t\u000f\u0005M\u0011\u0011\ta\u0001#!9\u00111\n\u0001\u0005B\u00055\u0013aB5t\u000b6\u0004H/_\u000b\u0003\u0003\u0017Aq!!\u0015\u0001\t\u0003\t\u0019&A\u0003v]&|g\u000eF\u0002\u001d\u0003+B\u0001\"a\u0016\u0002P\u0001\u0007\u0011\u0011L\u0001\u0005i\"\u000cG\u000f\u0005\u0003\u000f\u00037\n\u0012bAA/\u0005\t1q)\u001a8TKRDq!!\u0019\u0001\t\u0003\t\u0019\'\u0001\u0003eS\u001a4Gc\u0001\u000f\u0002f!A\u0011qKA0\u0001\u0004\tI\u0006C\u0004\u0002j\u0001!\t!a\u001b\u0002\u000fM,(m]3ugR!\u0011QNA:!\u0011q\u0011q\u000e\u000f\n\u0007\u0005E$A\u0001\u0005Ji\u0016\u0014\u0018\r^8s\u0011!\t)(a\u001aA\u0002\u0005]\u0014a\u00017f]B\u0019!\"!\u001f\n\u0007\u0005mDAA\u0002J]RDq!!\u001b\u0001\t\u0003\ty\u0008\u0006\u0002\u0002n\u00191\u00111\u0011\u0001\u0005\u0003\u000b\u0013!bU;cg\u0016$8/\u0013;s\'\u0011\t\t)a\"\u0011\t9\tI\tH\u0005\u0004\u0003\u0017\u0013!\u0001E!cgR\u0014\u0018m\u0019;Ji\u0016\u0014\u0018\r^8s\u0011-\ty)!!\u0003\u0002\u0003\u0006I!!%\u0002\t\u0015dWn\u001d\t\u0005\u001d\u0005M\u0015#C\u0002\u0002\u0016\n\u0011!\"\u00138eKb,GmU3r\u0011-\t)(!!\u0003\u0002\u0003\u0006I!a\u001e\t\u0011\u0005m\u0015\u0011\u0011C\u0001\u0003;\u000ba\u0001P5oSRtDCBAP\u0003G\u000b)\u000b\u0005\u0003\u0002\"\u0006\u0005U\"\u0001\u0001\t\u0011\u0005=\u0015\u0011\u0014a\u0001\u0003#C\u0001\"!\u001e\u0002\u001a\u0002\u0007\u0011q\u000f\u0005\u000b\u0003S\u000b\tI1A\u0005\n\u0005-\u0016\u0001B5eqN,\"!!,\u0011\u000b)\ty+a\u001e\n\u0007\u0005EFAA\u0003BeJ\u000c\u0017\u0010C\u0005\u00026\u0006\u0005\u0005\u0015!\u0003\u0002.\u0006)\u0011\u000e\u001a=tA!Q\u0011\u0011XAA\u0001\u0004%I!!\u0014\u0002\u0011}C\u0017m\u001d(fqRD!\"!0\u0002\u0002\u0002\u0007I\u0011BA`\u00031y\u0006.Y:OKb$x\u000cJ3r)\ra\u0014\u0011\u0019\u0005\u000b\u0003\u0007\u000cY,!AA\u0002\u0005-\u0011a\u0001=%c!I\u0011qYAAA\u0003&\u00111B\u0001\n?\"\u000c7OT3yi\u0002B\u0001\"a3\u0002\u0002\u0012\u0005\u0011QJ\u0001\u0008Q\u0006\u001ch*\u001a=u\u0011!\ty-!!\u0005\u0002\u0005E\u0017\u0001\u00028fqR$\u0012\u0001\u0008\u0005\u0008\u0003+\u0004A\u0011IAl\u00031\u0019HO]5oOB\u0013XMZ5y+\t\tI\u000e\u0005\u0003\u0002\\\u0006\u0005hb\u0001\u0006\u0002^&\u0019\u0011q\u001c\u0003\u0002\rA\u0013X\rZ3g\u0013\u0011\t\u0019/!:\u0003\rM#(/\u001b8h\u0015\r\ty\u000e\u0002\u0005\u0008\u0003S\u0004A\u0011IAv\u0003!!xn\u0015;sS:<GCAAm\u00119\ty\u000f\u0001I\u0001\u0004\u0003\u0005I\u0011BAy\u0005\u000f\t\u0011b];qKJ$S.\u00199\u0016\r\u0005M(\u0011AA})\u0011\t)Pa\u0001\u0015\t\u0005]\u00181 \t\u0004%\u0005eHAB5\u0002n\n\u0007Q\u0003C\u0004l\u0003[\u0004\u001d!!@\u0011\u000f-jG$a@\u0002xB\u0019!C!\u0001\u0005\rE\u000ciO1\u0001\u0016\u0011\u001d\u0019\u0018Q\u001ea\u0001\u0005\u000b\u0001RAC;\u0012\u0003\u007fL1a\u0019B\u0005\u0013\r\u0011YA\u0001\u0002\u0010)J\u000cg/\u001a:tC\ndW\rT5lK\u0002"
.end annotation


# virtual methods
.method public abstract $minus(Ljava/lang/Object;)Lscala/collection/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TThis;"
        }
    .end annotation
.end method

.method public abstract $plus(Ljava/lang/Object;)Lscala/collection/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TThis;"
        }
    .end annotation
.end method

.method public abstract $plus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;",
            "Lscala/collection/Seq<",
            "TA;>;)TThis;"
        }
    .end annotation
.end method

.method public abstract $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenTraversableOnce<",
            "TA;>;)TThis;"
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

.method public abstract diff(Lscala/collection/GenSet;)Lscala/collection/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenSet<",
            "TA;>;)TThis;"
        }
    .end annotation
.end method

.method public abstract empty()Lscala/collection/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TThis;"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "TThis;TB;TThat;>;)TThat;"
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
            "Lscala/collection/parallel/ParSet<",
            "TA;>;>;"
        }
    .end annotation
.end method

.method public abstract synthetic scala$collection$SetLike$$super$map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
.end method

.method public abstract stringPrefix()Ljava/lang/String;
.end method

.method public abstract subsets()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TThis;>;"
        }
    .end annotation
.end method

.method public abstract subsets(I)Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/Iterator<",
            "TThis;>;"
        }
    .end annotation
.end method

.method public abstract toBuffer()Lscala/collection/mutable/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Buffer<",
            "TA1;>;"
        }
    .end annotation
.end method

.method public abstract toSeq()Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract union(Lscala/collection/GenSet;)Lscala/collection/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenSet<",
            "TA;>;)TThis;"
        }
    .end annotation
.end method
