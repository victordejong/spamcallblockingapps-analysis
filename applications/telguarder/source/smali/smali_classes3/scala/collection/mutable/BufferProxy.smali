.class public interface abstract Lscala/collection/mutable/BufferProxy;
.super Ljava/lang/Object;
.source "BufferProxy.scala"

# interfaces
.implements Lscala/collection/mutable/Buffer;
.implements Lscala/Proxy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/Buffer<",
        "TA;>;",
        "Lscala/Proxy;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u00055caB\u0001\u0003!\u0003\r\t!\u0003\u0002\u000c\u0005V4g-\u001a:Qe>D\u0018P\u0003\u0002\u0004\t\u00059Q.\u001e;bE2,\'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001QC\u0001\u0006\u0016\'\u0011\u00011b\u0004\u0010\u0011\u00051iQ\"\u0001\u0004\n\u000591!AB!osJ+g\rE\u0002\u0011#Mi\u0011AA\u0005\u0003%\t\u0011aAQ;gM\u0016\u0014\u0008C\u0001\u000b\u0016\u0019\u0001!QA\u0006\u0001C\u0002]\u0011\u0011!Q\t\u00031m\u0001\"\u0001D\r\n\u0005i1!a\u0002(pi\"Lgn\u001a\t\u0003\u0019qI!!\u0008\u0004\u0003\u0007\u0005s\u0017\u0010\u0005\u0002\r?%\u0011\u0001E\u0002\u0002\u0006!J|\u00070\u001f\u0005\u0006E\u0001!\taI\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0015\u0003\u0011\u0002\"\u0001D\u0013\n\u0005\u00192!\u0001B+oSRDQ\u0001\u000b\u0001\u0007\u0002%\nAa]3mMV\tq\u0002C\u0003,\u0001\u0011\u0005A&\u0001\u0004mK:<G\u000f[\u000b\u0002[A\u0011ABL\u0005\u0003_\u0019\u00111!\u00138u\u0011\u0015\t\u0004\u0001\"\u00113\u0003!IG/\u001a:bi>\u0014X#A\u001a\u0011\u0007Q*4#D\u0001\u0005\u0013\t1DA\u0001\u0005Ji\u0016\u0014\u0018\r^8s\u0011\u0015A\u0004\u0001\"\u0001:\u0003\u0015\t\u0007\u000f\u001d7z)\t\u0019\"\u0008C\u0003<o\u0001\u0007Q&A\u0001o\u0011\u0015i\u0004\u0001\"\u0001?\u0003!!\u0003\u000f\\;tI\u0015\u000cHCA A\u001b\u0005\u0001\u0001\"B!=\u0001\u0004\u0019\u0012\u0001B3mK6DQa\u0011\u0001\u0005B\u0011\u000b\u0001B]3bI>sG._\u000b\u0002\u000bB\u0019AGR\n\n\u0005\u001d#!aA*fc\")\u0011\n\u0001C!\u0015\u0006iA\u0005\u001d7vg\u0012\u0002H.^:%KF$\"aP&\t\u000b1C\u0005\u0019A\'\u0002\u0005a\u001c\u0008c\u0001\u001bO\'%\u0011q\n\u0002\u0002\u0010)J\u000cg/\u001a:tC\ndWm\u00148dK\")\u0011\u000b\u0001C!%\u00061\u0011\r\u001d9f]\u0012$\"\u0001J*\t\u000bQ\u0003\u0006\u0019A+\u0002\u000b\u0015dW-\\:\u0011\u0007116#\u0003\u0002X\r\tQAH]3qK\u0006$X\r\u001a \t\u000be\u0003A\u0011\t.\u0002\u0013\u0005\u0004\u0008/\u001a8e\u00032dGC\u0001\u0013\\\u0011\u0015a\u0005\u000c1\u0001N\u0011\u0015i\u0006\u0001\"\u0001_\u00039!\u0003\u000f\\;tI\u0015\u000cHeY8m_:$\"aP0\t\u000b\u0005c\u0006\u0019A\n\t\u000b\u0005\u0004A\u0011\t2\u0002\'\u0011\u0002H.^:%a2,8\u000fJ3rI\r|Gn\u001c8\u0015\u0005}\u001a\u0007\"\u0002\'a\u0001\u0004i\u0005\"B3\u0001\t\u00032\u0017a\u00029sKB,g\u000e\u001a\u000b\u0003I\u001dDQ\u0001\u00163A\u0002UCQ!\u001b\u0001\u0005B)\u000c!\u0002\u001d:fa\u0016tG-\u00117m)\t!3\u000eC\u0003MQ\u0002\u0007Q\nC\u0003n\u0001\u0011\u0005c.\u0001\u0004j]N,\'\u000f\u001e\u000b\u0004I=\u0004\u0008\"B\u001em\u0001\u0004i\u0003\"\u0002+m\u0001\u0004)\u0006\"\u0002:\u0001\t\u0003\u0019\u0018!C5og\u0016\u0014H/\u00117m)\r!C/\u001e\u0005\u0006wE\u0004\r!\u000c\u0005\u0006mF\u0004\ra^\u0001\u0005SR,\'\u000fE\u00025qNI!!\u001f\u0003\u0003\u0011%#XM]1cY\u0016DQA\u001d\u0001\u0005Bm$2\u0001\n?~\u0011\u0015Y$\u00101\u0001.\u0011\u00151(\u00101\u0001\u007f!\r!tpE\u0005\u0004\u0003\u0003!!a\u0003+sCZ,\'o]1cY\u0016Dq!!\u0002\u0001\t\u0003\t9!\u0001\u0004va\u0012\u000cG/\u001a\u000b\u0006I\u0005%\u00111\u0002\u0005\u0007w\u0005\r\u0001\u0019A\u0017\t\u000f\u00055\u00111\u0001a\u0001\'\u00059a.Z<fY\u0016l\u0007bBA\t\u0001\u0011\u0005\u00111C\u0001\u0007e\u0016lwN^3\u0015\u0007M\t)\u0002\u0003\u0004<\u0003\u001f\u0001\r!\u000c\u0005\u0007\u00033\u0001A\u0011A\u0012\u0002\u000b\rdW-\u0019:\t\u000f\u0005u\u0001\u0001\"\u0011\u0002 \u0005QA\u0005\\3tg\u0012bWm]:\u0015\u0007\u0011\n\t\u0003\u0003\u0005\u0002$\u0005m\u0001\u0019AA\u0013\u0003\r\u0019W\u000e\u001a\t\u0006\u0003O\ticE\u0007\u0003\u0003SQ1!a\u000b\u0005\u0003\u0019\u00198M]5qi&!\u0011qFA\u0015\u0005\u001diUm]:bO\u0016D\u0003\"a\u0007\u00024\u0005e\u0012Q\u0008\t\u0004\u0019\u0005U\u0012bAA\u001c\r\tQA-\u001a9sK\u000e\u000cG/\u001a3\"\u0005\u0005m\u0012\u0001G*de&\u0004H/\u001b8hA%\u001c\u0008\u0005Z3qe\u0016\u001c\u0017\r^3e]\u0005\u0012\u0011qH\u0001\u0007e9\n\u0014G\u000c\u0019\t\u000f\u0005\r\u0003\u0001\"\u0011\u0002F\u0005)1\r\\8oKR\tq\u0002K\u0004\u0001\u0003g\tI%!\u0010\"\u0005\u0005-\u0013!\u0012)s_bL\u0018N\\4!SN\u0004C-\u001a9sK\u000e\u000cG/\u001a3!IV,\u0007\u0005^8!Y\u0006\u001c7\u000eI8gAU\u001cX\rI1oI\u0002\u001aw.\u001c9jY\u0016\u0014X\u0006\\3wK2\u00043/\u001e9q_J$h\u0006"
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

.method public abstract $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/BufferProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/BufferProxy<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract $plus$eq$colon(Ljava/lang/Object;)Lscala/collection/mutable/BufferProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/BufferProxy<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/BufferProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)",
            "Lscala/collection/mutable/BufferProxy<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract $plus$plus$eq$colon(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/BufferProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)",
            "Lscala/collection/mutable/BufferProxy<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract append(Lscala/collection/Seq;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "TA;>;)V"
        }
    .end annotation
.end method

.method public abstract appendAll(Lscala/collection/TraversableOnce;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)V"
        }
    .end annotation
.end method

.method public abstract apply(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation
.end method

.method public abstract clear()V
.end method

.method public abstract clone()Lscala/collection/mutable/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Buffer<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract insert(ILscala/collection/Seq;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/Seq<",
            "TA;>;)V"
        }
    .end annotation
.end method

.method public abstract insertAll(ILscala/collection/Iterable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/Iterable<",
            "TA;>;)V"
        }
    .end annotation
.end method

.method public abstract insertAll(ILscala/collection/Traversable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/Traversable<",
            "TA;>;)V"
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

.method public abstract length()I
.end method

.method public abstract prepend(Lscala/collection/Seq;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "TA;>;)V"
        }
    .end annotation
.end method

.method public abstract prependAll(Lscala/collection/TraversableOnce;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)V"
        }
    .end annotation
.end method

.method public abstract readOnly()Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract remove(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation
.end method

.method public abstract self()Lscala/collection/mutable/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Buffer<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract update(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITA;)V"
        }
    .end annotation
.end method
