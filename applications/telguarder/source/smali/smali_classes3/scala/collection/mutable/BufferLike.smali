.class public interface abstract Lscala/collection/mutable/BufferLike;
.super Ljava/lang/Object;
.source "BufferLike.scala"

# interfaces
.implements Lscala/collection/generic/Growable;
.implements Lscala/collection/generic/Shrinkable;
.implements Lscala/collection/script/Scriptable;
.implements Lscala/collection/generic/Subtractable;
.implements Lscala/collection/mutable/SeqLike;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "This::",
        "Lscala/collection/mutable/BufferLike<",
        "TA;TThis;>;:",
        "Lscala/collection/mutable/Buffer<",
        "TA;>;>",
        "Ljava/lang/Object;",
        "Lscala/collection/generic/Growable<",
        "TA;>;",
        "Lscala/collection/generic/Shrinkable<",
        "TA;>;",
        "Lscala/collection/script/Scriptable<",
        "TA;>;",
        "Lscala/collection/generic/Subtractable<",
        "TA;TThis;>;",
        "Lscala/collection/mutable/SeqLike<",
        "TA;TThis;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005}g\u0001C\u0001\u0003!\u0003\r\t!\u0003\u0017\u0003\u0015\t+hMZ3s\u0019&\\WM\u0003\u0002\u0004\t\u00059Q.\u001e;bE2,\'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001Qc\u0001\u0006\u0018[MA\u0001aC\u0008!G%B4\u0008\u0005\u0002\r\u001b5\ta!\u0003\u0002\u000f\r\t1\u0011I\\=SK\u001a\u00042\u0001E\n\u0016\u001b\u0005\t\"B\u0001\n\u0005\u0003\u001d9WM\\3sS\u000eL!\u0001F\t\u0003\u0011\u001d\u0013xn^1cY\u0016\u0004\"AF\u000c\r\u0001\u0011)\u0001\u0004\u0001b\u00013\t\t\u0011)\u0005\u0002\u001b;A\u0011AbG\u0005\u00039\u0019\u0011qAT8uQ&tw\r\u0005\u0002\r=%\u0011qD\u0002\u0002\u0004\u0003:L\u0008c\u0001\t\"+%\u0011!%\u0005\u0002\u000b\'\"\u0014\u0018N\\6bE2,\u0007c\u0001\u0013(+5\tQE\u0003\u0002\'\t\u000511o\u0019:jaRL!\u0001K\u0013\u0003\u0015M\u001b\'/\u001b9uC\ndW\r\u0005\u0003\u0011UUa\u0013BA\u0016\u0012\u00051\u0019VO\u0019;sC\u000e$\u0018M\u00197f!\t1R\u0006\u0002\u0004/\u0001\u0011\u0015\ra\u000c\u0002\u0005)\"L7/\u0005\u0002\u001baI\u0019\u0011gM\u001b\u0007\tI\u0002\u0001\u0001\r\u0002\ryI,g-\u001b8f[\u0016tGO\u0010\t\u0005i\u0001)B&D\u0001\u0003!\r!d\'F\u0005\u0003o\t\u0011aAQ;gM\u0016\u0014\u0008\u0003\u0002\u001b:+1J!A\u000f\u0002\u0003\u000fM+\u0017\u000fT5lKB\u0011A\u0002P\u0005\u0003{\u0019\u0011\u0011b\u00117p]\u0016\u000c\'\r\\3\t\u000b}\u0002A\u0011\u0001!\u0002\r\u0011Jg.\u001b;%)\u0005\t\u0005C\u0001\u0007C\u0013\t\u0019eA\u0001\u0003V]&$\u0008\"B#\u0001\r\u00031\u0015!B1qa2LHCA\u000bH\u0011\u0015AE\t1\u0001J\u0003\u0005q\u0007C\u0001\u0007K\u0013\tYeAA\u0002J]RDQ!\u0014\u0001\u0007\u00029\u000ba!\u001e9eCR,GcA!P!\")\u0001\n\u0014a\u0001\u0013\")\u0011\u000b\u0014a\u0001+\u00059a.Z<fY\u0016l\u0007\"B*\u0001\r\u0003!\u0016A\u00027f]\u001e$\u0008.F\u0001J\u0011\u00151\u0006A\"\u0001X\u0003!!\u0003\u000f\\;tI\u0015\u000cHC\u0001-Z\u001b\u0005\u0001\u0001\"\u0002.V\u0001\u0004)\u0012\u0001B3mK6DQ\u0001\u0018\u0001\u0007\u0002\u0001\u000bQa\u00197fCJDQA\u0018\u0001\u0007\u0002}\u000ba\u0002\n9mkN$S-\u001d\u0013d_2|g\u000e\u0006\u0002YA\")!,\u0018a\u0001+!)!\r\u0001D\u0001G\u0006I\u0011N\\:feR\u000cE\u000e\u001c\u000b\u0004\u0003\u0012,\u0007\"\u0002%b\u0001\u0004I\u0005\"\u00024b\u0001\u00049\u0017!B3mK6\u001c\u0008c\u00015j+5\tA!\u0003\u0002k\t\tYAK]1wKJ\u001c\u0018M\u00197f\u0011\u0015a\u0007A\"\u0001n\u0003\u0019\u0011X-\\8wKR\u0011QC\u001c\u0005\u0006\u0011.\u0004\r!\u0013\u0005\u0006Y\u0002!\t\u0001\u001d\u000b\u0004\u0003F\u0014\u0008\"\u0002%p\u0001\u0004I\u0005\"B:p\u0001\u0004I\u0015!B2pk:$\u0008\"B;\u0001\t\u00031\u0018!\u0003\u0013nS:,8\u000fJ3r)\tAv\u000fC\u0003yi\u0002\u0007Q#A\u0001y\u0011\u0015Q\u0008\u0001\"\u0001|\u0003M!\u0003\u000f\\;tIAdWo\u001d\u0013fc\u0012\u001aw\u000e\\8o)\tAF\u0010C\u0003~s\u0002\u0007a0\u0001\u0002ygB\u0019\u0001n`\u000b\n\u0007\u0005\u0005AAA\u0008Ue\u00064XM]:bE2,wJ\\2f\u0011\u001d\t)\u0001\u0001C\u0001\u0003\u000f\ta!\u00199qK:$GcA!\u0002\n!9a-a\u0001A\u0002\u0005-\u0001\u0003\u0002\u0007\u0002\u000eUI1!a\u0004\u0007\u0005)a$/\u001a9fCR,GM\u0010\u0005\u0008\u0003\'\u0001A\u0011AA\u000b\u0003%\t\u0007\u000f]3oI\u0006cG\u000eF\u0002B\u0003/Aa!`A\t\u0001\u0004q\u0008bBA\u000e\u0001\u0011\u0005\u0011QD\u0001\u0008aJ,\u0007/\u001a8e)\r\t\u0015q\u0004\u0005\u0008M\u0006e\u0001\u0019AA\u0006\u0011\u001d\t\u0019\u0003\u0001C\u0001\u0003K\t!\u0002\u001d:fa\u0016tG-\u00117m)\r\t\u0015q\u0005\u0005\u0007{\u0006\u0005\u0002\u0019\u0001@\t\u000f\u0005-\u0002\u0001\"\u0001\u0002.\u00051\u0011N\\:feR$R!QA\u0018\u0003cAa\u0001SA\u0015\u0001\u0004I\u0005b\u00024\u0002*\u0001\u0007\u00111\u0002\u0005\u0008\u0003k\u0001A\u0011AA\u001c\u0003%!(/[7Ti\u0006\u0014H\u000fF\u0002B\u0003sAa\u0001SA\u001a\u0001\u0004I\u0005bBA\u001f\u0001\u0011\u0005\u0011qH\u0001\u0008iJLW.\u00128e)\r\t\u0015\u0011\t\u0005\u0007\u0011\u0006m\u0002\u0019A%\t\u000f\u0005\u0015\u0003\u0001\"\u0001\u0002H\u0005QA\u0005\\3tg\u0012bWm]:\u0015\u0007\u0005\u000bI\u0005\u0003\u0005\u0002L\u0005\r\u0003\u0019AA\'\u0003\r\u0019W\u000e\u001a\t\u0005I\u0005=S#C\u0002\u0002R\u0015\u0012q!T3tg\u0006<W\r\u000b\u0005\u0002D\u0005U\u00131LA0!\ra\u0011qK\u0005\u0004\u000332!A\u00033faJ,7-\u0019;fI\u0006\u0012\u0011QL\u0001\u0019\'\u000e\u0014\u0018\u000e\u001d;j]\u001e\u0004\u0013n\u001d\u0011eKB\u0014XmY1uK\u0012t\u0013EAA1\u0003\u0019\u0011d&M\u0019/a!9\u0011Q\r\u0001\u0005B\u0005\u001d\u0014\u0001D:ue&tw\r\u0015:fM&DXCAA5!\u0011\tY\'!\u001d\u000f\u00071\ti\'C\u0002\u0002p\u0019\ta\u0001\u0015:fI\u00164\u0017\u0002BA:\u0003k\u0012aa\u0015;sS:<\'bAA8\r!9\u0011\u0011\u0010\u0001\u0005\u0002\u0005m\u0014\u0001\u0003:fC\u0012|e\u000e\\=\u0016\u0005\u0005u\u0004\u0003\u00025\u0002\u0000UI1!!!\u0005\u0005\r\u0019V-\u001d\u0015\t\u0003o\n)&!\"\u0002`\u0005\u0012\u0011qQ\u0001c)\",\u0007E]3ukJtW\r\u001a\u0011tKF,XM\\2fA\rD\u0017M\\4fg\u0002\n7\u000f\t;iSN\u0004#-\u001e4gKJ\u0004\u0013n\u001d\u0011nkR\u000cG/\u001a3/A\u0019{\'\u000fI1oA%lW.\u001e;bE2,\u0007eY8qs2\u0002So]3-A\u0015tsM\u000c\u0017!i>d\u0015n\u001d;/\u0011\u001d\tY\t\u0001C\u0001\u0003\u001b\u000b!\u0002\n9mkN$\u0003\u000f\\;t)\ra\u0013q\u0012\u0005\u0008{\u0006%\u0005\u0019AAI!\u0011A\u00171S\u000b\n\u0007\u0005UEA\u0001\nHK:$&/\u0019<feN\u000c\'\r\\3P]\u000e,\u0007\u0006CAE\u00033\u000b)+!+\u0011\t\u0005m\u0015\u0011U\u0007\u0003\u0003;S1!a(\u0007\u0003)\tgN\\8uCRLwN\\\u0005\u0005\u0003G\u000biJA\u0005nS\u001e\u0014\u0018\r^5p]\u0006\u0012\u0011qU\u0001gA.Z\u0003\rI2sK\u0006$Xm\u001d\u0011bA9,w\u000f\t2vM\u001a,\'O\u000c\u0011Vg\u0016\u0004\u0003mK\u0016>A\u0002\"x\u000eI1eI\u0002\ng\u000eI3mK6,g\u000e\u001e\u0011ge>l\u0007\u0005\u001e5jg\u0002\u0012WO\u001a4fe\u0002\ng\u000e\u001a\u0011sKR,(O\u001c\u0011uQ\u0006$\u0008EY;gM\u0016\u0014\u0008%\u001b;tK24g&\t\u0002\u0002,\u0006)!G\u000c\u001d/a!9\u0011q\u0016\u0001\u0005B\u0005E\u0016A\u0002\u0013nS:,8\u000fF\u0002-\u0003gCaAWAW\u0001\u0004)\u0002\u0006CAW\u00033\u000b9,!+\"\u0005\u0005e\u0016a\u001a1.A\u0002\u001a\'/Z1uKN\u0004\u0013\r\t8fo\u0002\u0012WO\u001a4fe:\u0002Sk]3!A6j\u0004\r\t;pAI,Wn\u001c<fA\u0005t\u0007%\u001a7f[\u0016tG\u000f\t4s_6\u0004C\u000f[5tA\t,hMZ3sA\u0005tG\r\t:fiV\u0014h\u000e\t;iCR\u0004#-\u001e4gKJ\u0004\u0013\u000e^:fY\u001at\u0003bBAX\u0001\u0011\u0005\u0013Q\u0018\u000b\u0008Y\u0005}\u00161YAd\u0011\u001d\t\t-a/A\u0002U\tQ!\u001a7f[FBq!!2\u0002<\u0002\u0007Q#A\u0003fY\u0016l\'\u0007C\u0004g\u0003w\u0003\r!a\u0003)\u0011\u0005m\u0016\u0011TA\\\u0003SCq!!4\u0001\t\u0003\ny-\u0001\u0007%[&tWo\u001d\u0013nS:,8\u000fF\u0002-\u0003#Dq!`Af\u0001\u0004\t\t\n\u000b\u0005\u0002L\u0006e\u0015Q[AUC\t\t9.A5a[5\u0002\u0007e\u0019:fCR,7\u000fI1!]\u0016<\u0008EY;gM\u0016\u0014h\u0006I+tK\u0002\u0002W&L\u001faAQ|\u0007E]3n_Z,\u0007%\u00198!K2,W.\u001a8uA\u0019\u0014x.\u001c\u0011uQ&\u001c\u0008EY;gM\u0016\u0014\u0008%\u00198eAI,G/\u001e:oAQD\u0017\r\u001e\u0011ck\u001a4WM\u001d\u0011jiN,GN\u001a\u0018\t\u000f\u0005m\u0007\u0001\"\u0011\u0002^\u0006)1\r\\8oKR\tA\u0006"
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

.method public abstract $minus(Ljava/lang/Object;)Lscala/collection/mutable/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TThis;"
        }
    .end annotation
.end method

.method public abstract $minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;",
            "Lscala/collection/Seq<",
            "TA;>;)TThis;"
        }
    .end annotation
.end method

.method public abstract $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TThis;"
        }
    .end annotation
.end method

.method public abstract $minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenTraversableOnce<",
            "TA;>;)TThis;"
        }
    .end annotation
.end method

.method public abstract $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TThis;"
        }
    .end annotation
.end method

.method public abstract $plus$eq$colon(Ljava/lang/Object;)Lscala/collection/mutable/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TThis;"
        }
    .end annotation
.end method

.method public abstract $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenTraversableOnce<",
            "TA;>;)TThis;"
        }
    .end annotation
.end method

.method public abstract $plus$plus$eq$colon(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)TThis;"
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
            "()TThis;"
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

.method public abstract insertAll(ILscala/collection/Traversable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/Traversable<",
            "TA;>;)V"
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

.method public abstract remove(II)V
.end method

.method public abstract stringPrefix()Ljava/lang/String;
.end method

.method public abstract trimEnd(I)V
.end method

.method public abstract trimStart(I)V
.end method

.method public abstract update(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITA;)V"
        }
    .end annotation
.end method
