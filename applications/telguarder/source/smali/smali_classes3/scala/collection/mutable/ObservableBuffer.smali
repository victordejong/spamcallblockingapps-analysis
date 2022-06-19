.class public interface abstract Lscala/collection/mutable/ObservableBuffer;
.super Ljava/lang/Object;
.source "ObservableBuffer.scala"

# interfaces
.implements Lscala/collection/mutable/Buffer;
.implements Lscala/collection/mutable/Publisher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/Buffer<",
        "TA;>;",
        "Lscala/collection/mutable/Publisher<",
        "Lscala/collection/script/Message<",
        "TA;>;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005maaB\u0001\u0003!\u0003\r\t!\u0003\u0002\u0011\u001f\n\u001cXM\u001d<bE2,\')\u001e4gKJT!a\u0001\u0003\u0002\u000f5,H/\u00192mK*\u0011QAB\u0001\u000bG>dG.Z2uS>t\'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0011!\"F\n\u0005\u0001-ya\u0004\u0005\u0002\r\u001b5\ta!\u0003\u0002\u000f\r\t1\u0011I\\=SK\u001a\u00042\u0001E\t\u0014\u001b\u0005\u0011\u0011B\u0001\n\u0003\u0005\u0019\u0011UO\u001a4feB\u0011A#\u0006\u0007\u0001\t\u00151\u0002A1\u0001\u0018\u0005\u0005\t\u0015C\u0001\r\u001c!\ta\u0011$\u0003\u0002\u001b\r\t9aj\u001c;iS:<\u0007C\u0001\u0007\u001d\u0013\tibAA\u0002B]f\u00042\u0001E\u0010\"\u0013\t\u0001#AA\u0005Qk\nd\u0017n\u001d5feJ\u0019!\u0005\n\u0016\u0007\t\r\u0002\u0001!\t\u0002\ryI,g-\u001b8f[\u0016tGO\u0010\t\u0004K!\u001aR\"\u0001\u0014\u000b\u0005\u001d\"\u0011AB:de&\u0004H/\u0003\u0002*M\t9Q*Z:tC\u001e,\u0007C\u0001\t,\u0013\ta#A\u0001\u0005V]\u0012|\u0017M\u00197f\u0011\u0015q\u0003\u0001\"\u00010\u0003\u0019!\u0013N\\5uIQ\t\u0001\u0007\u0005\u0002\rc%\u0011!G\u0002\u0002\u0005+:LG\u000fB\u00035\u0001\t\u0005QGA\u0002Qk\n\u000c\"\u0001\u0007\u001c\u0011\u0007A\u00011\u0003\u0003\u00049\u0001A%\t!O\u0001\tIAdWo\u001d\u0013fcR\u0011!hO\u0007\u0002\u0001!)Ah\u000ea\u0001\'\u00059Q\r\\3nK:$\u0008B\u0002 \u0001!\u0013\u0005q(A\u0007%a2,8\u000f\n9mkN$S-\u001d\u000b\u0003u\u0001CQ!Q\u001fA\u0002\t\u000b!\u0001_:\u0011\u0007\r#5#D\u0001\u0005\u0013\t)EAA\u0008Ue\u00064XM]:bE2,wJ\\2f\u0011\u00199\u0005\u0001%C\u0001\u0011\u0006qA\u0005\u001d7vg\u0012*\u0017\u000fJ2pY>tGC\u0001\u001eJ\u0011\u0015ad\t1\u0001\u0014\u0011\u0019Y\u0005\u0001%C\u0001\u0019\u00061Q\u000f\u001d3bi\u0016$2\u0001M\'S\u0011\u0015q%\n1\u0001P\u0003\u0005q\u0007C\u0001\u0007Q\u0013\t\tfAA\u0002J]RDQa\u0015&A\u0002M\t!B\\3xK2,W.\u001a8u\u0011\u0019)\u0006\u0001%C\u0001-\u00061!/Z7pm\u0016$\"aE,\t\u000b9#\u0006\u0019A(\t\re\u0003\u0001\u0013\"\u00010\u0003\u0015\u0019G.Z1s\u0011\u0019Y\u0006\u0001%C\u00019\u0006I\u0011N\\:feR\u000cE\u000e\u001c\u000b\u0004aus\u0006\"\u0002([\u0001\u0004y\u0005\"B0[\u0001\u0004\u0001\u0017!B3mK6\u001c\u0008cA\"b\'%\u0011!\r\u0002\u0002\u000c)J\u000cg/\u001a:tC\ndW\rC\u0006e\u0001A\u0005\u0019\u0011!A\u0005\n\u0015D\u0017AD:va\u0016\u0014H\u0005\n9mkN$S-\u001d\u000b\u0003u\u0019DQaZ2A\u0002M\tA!\u001a7f[&\u0011\u0001([\u0005\u0003U\n\u0011!BQ;gM\u0016\u0014H*[6f\u0011-a\u0007\u0001%A\u0002\u0002\u0003%I!\\8\u0002)M,\u0008/\u001a:%IAdWo\u001d\u0013fc\u0012\u001aw\u000e\\8o)\tQd\u000eC\u0003hW\u0002\u00071#\u0003\u0002HS\"Y\u0011\u000f\u0001I\u0001\u0004\u0003\u0005I\u0011\u0002:w\u00031\u0019X\u000f]3sIU\u0004H-\u0019;f)\r\u00014\u000f\u001e\u0005\u0006\u001dB\u0004\ra\u0014\u0005\u0006kB\u0004\raE\u0001\u0008]\u0016<X\r\\3n\u0013\tY\u0015\u000eC\u0006y\u0001A\u0005\u0019\u0011!A\u0005\ne\\\u0018\u0001D:va\u0016\u0014HE]3n_Z,GCA\n{\u0011\u0015qu\u000f1\u0001P\u0013\t)\u0016\u000eC\u0006~\u0001A\u0005\u0019\u0011!A\u0005\n=r\u0018aC:va\u0016\u0014He\u00197fCJL!!W5\t\u001d\u0005\u0005\u0001\u0001%A\u0002\u0002\u0003%I!a\u0001\u0002\n\u0005y1/\u001e9fe\u0012Jgn]3si\u0006cG\u000eF\u00031\u0003\u000b\t9\u0001C\u0003O\u007f\u0002\u0007q\nC\u0003`\u007f\u0002\u0007\u0001-\u0003\u0002\\S\":\u0001!!\u0004\u0002\u0014\u0005]\u0001c\u0001\u0007\u0002\u0010%\u0019\u0011\u0011\u0003\u0004\u0003\u0015\u0011,\u0007O]3dCR,G-\t\u0002\u0002\u0016\u0005YtJY:feZ\u000c\'\r\\3tA\u0005\u0014X\r\t3faJ,7-\u0019;fI\u0002\u0012WmY1vg\u0016\u00043o\u0019:jaRLgn\u001a\u0011jg\u0002\"W\r\u001d:fG\u0006$X\r\u001a\u0018\"\u0005\u0005e\u0011A\u0002\u001a/cEr\u0003\u0007"
.end annotation


# virtual methods
.method public abstract $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ObservableBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/ObservableBuffer<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract $plus$eq$colon(Ljava/lang/Object;)Lscala/collection/mutable/ObservableBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/ObservableBuffer<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ObservableBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)",
            "Lscala/collection/mutable/ObservableBuffer<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract clear()V
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

.method public abstract remove(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation
.end method

.method public abstract synthetic scala$collection$mutable$ObservableBuffer$$super$$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ObservableBuffer;
.end method

.method public abstract synthetic scala$collection$mutable$ObservableBuffer$$super$$plus$eq$colon(Ljava/lang/Object;)Lscala/collection/mutable/ObservableBuffer;
.end method

.method public abstract synthetic scala$collection$mutable$ObservableBuffer$$super$clear()V
.end method

.method public abstract synthetic scala$collection$mutable$ObservableBuffer$$super$insertAll(ILscala/collection/Traversable;)V
.end method

.method public abstract synthetic scala$collection$mutable$ObservableBuffer$$super$remove(I)Ljava/lang/Object;
.end method

.method public abstract synthetic scala$collection$mutable$ObservableBuffer$$super$update(ILjava/lang/Object;)V
.end method

.method public abstract update(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITA;)V"
        }
    .end annotation
.end method
