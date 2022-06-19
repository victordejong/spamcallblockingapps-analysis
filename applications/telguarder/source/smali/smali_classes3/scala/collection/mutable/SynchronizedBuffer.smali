.class public interface abstract Lscala/collection/mutable/SynchronizedBuffer;
.super Ljava/lang/Object;
.source "SynchronizedBuffer.scala"

# interfaces
.implements Lscala/collection/mutable/Buffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/Buffer<",
        "TA;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005MhaB\u0001\u0003!\u0003\r\t!\u0003\u0002\u0013\'ft7\r\u001b:p]&TX\r\u001a\"vM\u001a,\'O\u0003\u0002\u0004\t\u00059Q.\u001e;bE2,\'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001QC\u0001\u0006\u0016\'\r\u00011b\u0004\t\u0003\u00195i\u0011AB\u0005\u0003\u001d\u0019\u0011a!\u00118z%\u00164\u0007c\u0001\t\u0012\'5\t!!\u0003\u0002\u0013\u0005\t1!)\u001e4gKJ\u0004\"\u0001F\u000b\r\u0001\u0011)a\u0003\u0001b\u0001/\t\t\u0011)\u0005\u0002\u00197A\u0011A\"G\u0005\u00035\u0019\u0011qAT8uQ&tw\r\u0005\u0002\r9%\u0011QD\u0002\u0002\u0004\u0003:L\u0008\"B\u0010\u0001\t\u0003\u0001\u0013A\u0002\u0013j]&$H\u0005F\u0001\"!\ta!%\u0003\u0002$\r\t!QK\\5u\u0011\u0019)\u0003\u0001%C\u0001M\u00051A.\u001a8hi\",\u0012a\n\t\u0003\u0019!J!!\u000b\u0004\u0003\u0007%sG\u000f\u0003\u0004,\u0001A%\t\u0001L\u0001\tSR,\'/\u0019;peV\tQ\u0006E\u0002/_Mi\u0011\u0001B\u0005\u0003a\u0011\u0011\u0001\"\u0013;fe\u0006$xN\u001d\u0005\u0007e\u0001\u0001J\u0011A\u001a\u0002\u000b\u0005\u0004\u0008\u000f\\=\u0015\u0005M!\u0004\"B\u001b2\u0001\u00049\u0013!\u00018\t\r]\u0002\u0001\u0013\"\u00019\u0003!!\u0003\u000f\\;tI\u0015\u000cHCA\u001d;\u001b\u0005\u0001\u0001\"B\u001e7\u0001\u0004\u0019\u0012\u0001B3mK6DQ!\u0010\u0001\u0005By\n!\u0002\n9mkN$\u0003\u000f\\;t)\tyD\t\u0005\u0002:\u0001&\u0011\u0011I\u0011\u0002\u0005\'\u0016dg-\u0003\u0002D\t\tyAK]1wKJ\u001c\u0018M\u00197f\u0019&\\W\rC\u0003Fy\u0001\u0007a)\u0001\u0002ygB\u0019afR\n\n\u0005!#!AE$f]R\u0013\u0018M^3sg\u0006\u0014G.Z(oG\u0016DQA\u0013\u0001\u0005B-\u000bQ\u0002\n9mkN$\u0003\u000f\\;tI\u0015\u000cHCA\u001dM\u0011\u0015)\u0015\n1\u0001N!\rqcjE\u0005\u0003\u001f\u0012\u0011q\u0002\u0016:bm\u0016\u00148/\u00192mK>s7-\u001a\u0005\u0006#\u0002!\tEU\u0001\u0007CB\u0004XM\u001c3\u0015\u0005\u0005\u001a\u0006\"\u0002+Q\u0001\u0004)\u0016!B3mK6\u001c\u0008c\u0001\u0007W\'%\u0011qK\u0002\u0002\u000byI,\u0007/Z1uK\u0012t\u0004\"B-\u0001\t\u0003R\u0016!C1qa\u0016tG-\u00117m)\t\t3\u000cC\u0003F1\u0002\u0007Q\n\u0003\u0004^\u0001A%\tAX\u0001\u000fIAdWo\u001d\u0013fc\u0012\u001aw\u000e\\8o)\tIt\u000cC\u0003<9\u0002\u00071\u0003C\u0003b\u0001\u0011\u0005#-A\n%a2,8\u000f\n9mkN$S-\u001d\u0013d_2|g\u000e\u0006\u0002:G\")Q\t\u0019a\u0001\u001b\")Q\r\u0001C!M\u00069\u0001O]3qK:$GCA\u0011h\u0011\u0015!F\r1\u0001V\u0011\u0015I\u0007\u0001\"\u0011k\u0003)\u0001(/\u001a9f]\u0012\u000cE\u000e\u001c\u000b\u0003C-DQ!\u00125A\u00025CQ!\u001c\u0001\u0005B9\u000ca!\u001b8tKJ$HcA\u0011pa\")Q\u0007\u001ca\u0001O!)A\u000b\u001ca\u0001+\"1!\u000f\u0001I\u0005\u0002M\u000c\u0011\"\u001b8tKJ$\u0018\t\u001c7\u0015\u0007\u0005\"X\u000fC\u00036c\u0002\u0007q\u0005C\u0003Fc\u0002\u0007a\u000fE\u0002/oNI!\u0001\u001f\u0003\u0003\u0017Q\u0013\u0018M^3sg\u0006\u0014G.\u001a\u0005\u0007u\u0002\u0001J\u0011A>\u0002\rU\u0004H-\u0019;f)\r\tC0 \u0005\u0006ke\u0004\ra\n\u0005\u0006}f\u0004\raE\u0001\u0008]\u0016<X\r\\3n\u0011!\t\t\u0001\u0001I\u0005\u0002\u0005\r\u0011A\u0002:f[>4X\rF\u0002\u0014\u0003\u000bAQ!N@A\u0002\u001dBq!!\u0003\u0001!\u0013\u0005\u0001%A\u0003dY\u0016\u000c\'\u000fC\u0004\u0002\u000e\u0001!\t%a\u0004\u0002\u0015\u0011bWm]:%Y\u0016\u001c8\u000fF\u0002\"\u0003#A\u0001\"a\u0005\u0002\u000c\u0001\u0007\u0011QC\u0001\u0004G6$\u0007#BA\u000c\u0003;\u0019RBAA\r\u0015\r\tY\u0002B\u0001\u0007g\u000e\u0014\u0018\u000e\u001d;\n\t\u0005}\u0011\u0011\u0004\u0002\u0008\u001b\u0016\u001c8/Y4fQ!\tY!a\t\u0002*\u00055\u0002c\u0001\u0007\u0002&%\u0019\u0011q\u0005\u0004\u0003\u0015\u0011,\u0007O]3dCR,G-\t\u0002\u0002,\u0005A2k\u0019:jaRLgn\u001a\u0011jg\u0002\"W\r\u001d:fG\u0006$X\r\u001a\u0018\"\u0005\u0005=\u0012A\u0002\u001a/cEr\u0003\u0007C\u0004\u00024\u0001!\t%!\u000e\u0002\u000b\rdwN\\3\u0015\u0003}Bq!!\u000f\u0001\t\u0003\nY$\u0001\u0005iCND7i\u001c3f)\u00059\u0003\"DA \u0001A\u0005\u0019\u0011!A\u0005\n\u0019\n\t%\u0001\u0007tkB,\'\u000f\n7f]\u001e$\u0008.C\u0002&\u0003\u0007J1!!\u0012\u0003\u0005)\u0011UO\u001a4fe2K7.\u001a\u0005\u000e\u0003\u0013\u0002\u0001\u0013aA\u0001\u0002\u0013%A&a\u0013\u0002\u001dM,\u0008/\u001a:%SR,\'/\u0019;pe&\u00191&!\u0014\n\u0007\u0005=CA\u0001\u0007Ji\u0016\u0014\u0018M\u00197f\u0019&\\W\r\u0003\u0008\u0002T\u0001\u0001\n1!A\u0001\n\u0013\t)&!\u0017\u0002\u0017M,\u0008/\u001a:%CB\u0004H.\u001f\u000b\u0004\'\u0005]\u0003BB\u001b\u0002R\u0001\u0007q%C\u00023\u0003\u0007Ba\"!\u0018\u0001!\u0003\r\t\u0011!C\u0005\u0003?\n\u0019\'\u0001\u0008tkB,\'\u000f\n\u0013qYV\u001cH%Z9\u0015\u0007e\n\t\u0007\u0003\u0004<\u00037\u0002\raE\u0005\u0004o\u0005\r\u0003BDA4\u0001A\u0005\u0019\u0011!A\u0005\n\u0005%\u0014QN\u0001\u0011gV\u0004XM\u001d\u0013%a2,8\u000f\n9mkN$2aDA6\u0011\u0019)\u0015Q\ra\u0001\r&\u0019Q(a\u0011\t\u001d\u0005E\u0004\u0001%A\u0002\u0002\u0003%I!a\u001d\u0002x\u0005\u00192/\u001e9fe\u0012\"\u0003\u000f\\;tIAdWo\u001d\u0013fcR\u0019\u0011(!\u001e\t\r\u0015\u000by\u00071\u0001N\u0013\rQ\u0015\u0011P\u0005\u0005\u0003w\niH\u0001\u0005He><\u0018M\u00197f\u0015\r\ty\u0008B\u0001\u0008O\u0016tWM]5d\u00119\t\u0019\t\u0001I\u0001\u0004\u0003\u0005I\u0011BAC\u0003\u0013\u000bqb];qKJ$\u0013\r\u001d9f]\u0012\u000cE\u000e\u001c\u000b\u0004C\u0005\u001d\u0005BB#\u0002\u0002\u0002\u0007Q*C\u0002Z\u0003\u0007Ba\"!$\u0001!\u0003\r\t\u0011!C\u0005\u0003\u001f\u000b\u0019*\u0001\u000btkB,\'\u000f\n\u0013qYV\u001cH%Z9%G>dwN\u001c\u000b\u0004s\u0005E\u0005BB\u001e\u0002\u000c\u0002\u00071#C\u0002^\u0003\u0007Ba\"a&\u0001!\u0003\r\t\u0011!C\u0005\u00033\u000bi*A\rtkB,\'\u000f\n\u0013qYV\u001cH\u0005\u001d7vg\u0012*\u0017\u000fJ2pY>tGcA\u001d\u0002\u001c\"1Q)!&A\u00025K1!YA\"\u00119\t\t\u000b\u0001I\u0001\u0004\u0003\u0005I\u0011BAR\u0003O\u000b\u0001c];qKJ$\u0003O]3qK:$\u0017\t\u001c7\u0015\u0007\u0005\n)\u000b\u0003\u0004F\u0003?\u0003\r!T\u0005\u0004S\u0006\r\u0003BDAV\u0001A\u0005\u0019\u0011!A\u0005\n\u00055\u00161W\u0001\u0010gV\u0004XM\u001d\u0013j]N,\'\u000f^!mYR)\u0011%a,\u00022\"1Q\'!+A\u0002\u001dBa\u0001VAU\u0001\u00041\u0018b\u0001:\u0002D!q\u0011q\u0017\u0001\u0011\u0002\u0007\u0005\t\u0011\"\u0003\u0002:\u0006}\u0016\u0001D:va\u0016\u0014H%\u001e9eCR,G#B\u0011\u0002<\u0006u\u0006BB\u001b\u00026\u0002\u0007q\u0005\u0003\u0004\u007f\u0003k\u0003\raE\u0005\u0004u\u0006\r\u0003BDAb\u0001A\u0005\u0019\u0011!A\u0005\n\u0005\u0015\u0017\u0011Z\u0001\rgV\u0004XM\u001d\u0013sK6|g/\u001a\u000b\u0004\'\u0005\u001d\u0007BB\u001b\u0002B\u0002\u0007q%\u0003\u0003\u0002\u0002\u0005\r\u0003\"DAg\u0001A\u0005\u0019\u0011!A\u0005\n\u0001\ny-A\u0006tkB,\'\u000fJ2mK\u0006\u0014\u0018\u0002BA\u0005\u0003\u0007Ba\"a5\u0001!\u0003\r\t\u0011!C\u0005\u0003+\u000cI.\u0001\ttkB,\'\u000f\n\u0013mKN\u001cH\u0005\\3tgR\u0019\u0011%a6\t\u0011\u0005M\u0011\u0011\u001ba\u0001\u0003+IA!!\u0004\u0002D!q\u0011Q\u001c\u0001\u0011\u0002\u0007\u0005\t\u0011\"\u0003\u0002`\u0006\u0005\u0018aC:va\u0016\u0014He\u00197p]\u0016$\u0012aD\u0005\u0005\u0003g\t\u0019\u0005\u0003\u0008\u0002f\u0002\u0001\n1!A\u0001\n\u0013\tY$a:\u0002\u001dM,\u0008/\u001a:%Q\u0006\u001c\u0008nQ8eK&!\u0011\u0011HAu\u0013\r\tY\u000f\u0002\u0002\u000b\u000f\u0016t7+Z9MS.,\u0007f\u0002\u0001\u0002$\u0005=\u0018QF\u0011\u0003\u0003c\u000c\u0011\u0011E*z]\u000eD\'o\u001c8ju\u0006$\u0018n\u001c8!m&\u000c\u0007\u0005\u001e:bSR\u001c\u0008%[:!I\u0016\u0004(/Z2bi\u0016$\u0007%Y:!SR\u0004\u0013n\u001d\u0011j]\",\'/\u001a8uYf\u0004SO\u001c:fY&\u000c\'\r\\3/A\u0001\u001auN\\:jI\u0016\u0014\u0008E[1wC:*H/\u001b7/G>t7-\u001e:sK:$hfQ8oGV\u0014(/\u001a8u\u0019&t7.\u001a3Rk\u0016,X\rI1tA\u0005t\u0007%\u00197uKJt\u0017\r^5wK:\u0002"
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

.method public abstract $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SynchronizedBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/SynchronizedBuffer<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract $plus$eq$colon(Ljava/lang/Object;)Lscala/collection/mutable/SynchronizedBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/SynchronizedBuffer<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenTraversableOnce<",
            "TA;>;)",
            "Lscala/collection/mutable/Buffer<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/SynchronizedBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)",
            "Lscala/collection/mutable/SynchronizedBuffer<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract $plus$plus$eq$colon(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/SynchronizedBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)",
            "Lscala/collection/mutable/SynchronizedBuffer<",
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

.method public abstract hashCode()I
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

.method public abstract remove(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation
.end method

.method public abstract synthetic scala$collection$mutable$SynchronizedBuffer$$super$$less$less(Lscala/collection/script/Message;)V
.end method

.method public abstract synthetic scala$collection$mutable$SynchronizedBuffer$$super$$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SynchronizedBuffer;
.end method

.method public abstract synthetic scala$collection$mutable$SynchronizedBuffer$$super$$plus$eq$colon(Ljava/lang/Object;)Lscala/collection/mutable/SynchronizedBuffer;
.end method

.method public abstract synthetic scala$collection$mutable$SynchronizedBuffer$$super$$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Buffer;
.end method

.method public abstract synthetic scala$collection$mutable$SynchronizedBuffer$$super$$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/SynchronizedBuffer;
.end method

.method public abstract synthetic scala$collection$mutable$SynchronizedBuffer$$super$$plus$plus$eq$colon(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/SynchronizedBuffer;
.end method

.method public abstract synthetic scala$collection$mutable$SynchronizedBuffer$$super$appendAll(Lscala/collection/TraversableOnce;)V
.end method

.method public abstract synthetic scala$collection$mutable$SynchronizedBuffer$$super$apply(I)Ljava/lang/Object;
.end method

.method public abstract synthetic scala$collection$mutable$SynchronizedBuffer$$super$clear()V
.end method

.method public abstract synthetic scala$collection$mutable$SynchronizedBuffer$$super$clone()Lscala/collection/mutable/Buffer;
.end method

.method public abstract synthetic scala$collection$mutable$SynchronizedBuffer$$super$hashCode()I
.end method

.method public abstract synthetic scala$collection$mutable$SynchronizedBuffer$$super$insertAll(ILscala/collection/Traversable;)V
.end method

.method public abstract synthetic scala$collection$mutable$SynchronizedBuffer$$super$iterator()Lscala/collection/Iterator;
.end method

.method public abstract synthetic scala$collection$mutable$SynchronizedBuffer$$super$length()I
.end method

.method public abstract synthetic scala$collection$mutable$SynchronizedBuffer$$super$prependAll(Lscala/collection/TraversableOnce;)V
.end method

.method public abstract synthetic scala$collection$mutable$SynchronizedBuffer$$super$remove(I)Ljava/lang/Object;
.end method

.method public abstract synthetic scala$collection$mutable$SynchronizedBuffer$$super$update(ILjava/lang/Object;)V
.end method

.method public abstract update(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITA;)V"
        }
    .end annotation
.end method
