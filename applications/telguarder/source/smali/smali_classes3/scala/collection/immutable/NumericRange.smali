.class public abstract Lscala/collection/immutable/NumericRange;
.super Lscala/collection/AbstractSeq;
.source "NumericRange.scala"

# interfaces
.implements Lscala/collection/immutable/IndexedSeq;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/immutable/NumericRange$Exclusive;,
        Lscala/collection/immutable/NumericRange$Inclusive;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractSeq<",
        "TT;>;",
        "Lscala/collection/immutable/IndexedSeq<",
        "TT;>;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\tmg!B\u0001\u0003\u0003\u0003I!\u0001\u0004(v[\u0016\u0014\u0018n\u0019*b]\u001e,\'BA\u0002\u0005\u0003%IW.\\;uC\ndWM\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001!\u0006\u0002\u000b#M!\u0001aC\u000e !\raQbD\u0007\u0002\t%\u0011a\u0002\u0002\u0002\u000c\u0003\n\u001cHO]1diN+\u0017\u000f\u0005\u0002\u0011#1\u0001A!\u0002\n\u0001\u0005\u0004\u0019\"!\u0001+\u0012\u0005QA\u0002CA\u000b\u0017\u001b\u00051\u0011BA\u000c\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"!F\r\n\u0005i1!aA!osB\u0019A$H\u0008\u000e\u0003\tI!A\u0008\u0002\u0003\u0015%sG-\u001a=fIN+\u0017\u000f\u0005\u0002\u0016A%\u0011\u0011E\u0002\u0002\r\'\u0016\u0014\u0018.\u00197ju\u0006\u0014G.\u001a\u0005\tG\u0001\u0011)\u0019!C\u0001I\u0005)1\u000f^1siV\tq\u0002\u0003\u0005\'\u0001\t\u0005\t\u0015!\u0003\u0010\u0003\u0019\u0019H/\u0019:uA!A\u0001\u0006\u0001BC\u0002\u0013\u0005A%A\u0002f]\u0012D\u0001B\u000b\u0001\u0003\u0002\u0003\u0006IaD\u0001\u0005K:$\u0007\u0005\u0003\u0005-\u0001\t\u0015\r\u0011\"\u0001%\u0003\u0011\u0019H/\u001a9\t\u00119\u0002!\u0011!Q\u0001\n=\tQa\u001d;fa\u0002B\u0001\u0002\r\u0001\u0003\u0006\u0004%\t!M\u0001\u000cSNLen\u00197vg&4X-F\u00013!\t)2\'\u0003\u00025\r\t9!i\\8mK\u0006t\u0007\u0002\u0003\u001c\u0001\u0005\u0003\u0005\u000b\u0011\u0002\u001a\u0002\u0019%\u001c\u0018J\\2mkNLg/\u001a\u0011\t\u0011a\u0002!\u0011!Q\u0001\u000ce\n1A\\;n!\rQTh\u0004\u0008\u0003+mJ!\u0001\u0010\u0004\u0002\u000fA\u000c7m[1hK&\u0011ah\u0010\u0002\t\u0013:$Xm\u001a:bY*\u0011AH\u0002\u0005\u0006\u0003\u0002!\tAQ\u0001\u0007y%t\u0017\u000e\u001e \u0015\u000b\r3u\tS%\u0015\u0005\u0011+\u0005c\u0001\u000f\u0001\u001f!)\u0001\u0008\u0011a\u0002s!)1\u0005\u0011a\u0001\u001f!)\u0001\u0006\u0011a\u0001\u001f!)A\u0006\u0011a\u0001\u001f!)\u0001\u0007\u0011a\u0001e!A1\n\u0001EC\u0002\u0013%A*\u0001\tok6\u0014\u0016M\\4f\u000b2,W.\u001a8ugV\tQ\n\u0005\u0002\u0016\u001d&\u0011qJ\u0002\u0002\u0004\u0013:$\u0008\u0002C)\u0001\u0011\u0003\u0005\u000b\u0015B\'\u0002#9,XNU1oO\u0016,E.Z7f]R\u001c\u0008\u0005C\u0003T\u0001\u0011\u0005C*\u0001\u0004mK:<G\u000f\u001b\u0005\u0006+\u0002!\t%M\u0001\u0008SN,U\u000e\u001d;z\u0011!9\u0006\u0001#b\u0001\n\u0003\"\u0013\u0001\u00027bgRD\u0001\"\u0017\u0001\t\u0002\u0003\u0006KaD\u0001\u0006Y\u0006\u001cH\u000f\t\u0005\u00067\u0002!\t\u0001X\u0001\u0003Ef$\"\u0001R/\t\u000byS\u0006\u0019A\u0008\u0002\u000f9,wo\u0015;fa\")\u0001\r\u0001D\u0001C\u0006!1m\u001c9z)\u0011!%m\u00193\t\u000b\rz\u0006\u0019A\u0008\t\u000b!z\u0006\u0019A\u0008\t\u000b1z\u0006\u0019A\u0008\t\u000b\u0019\u0004A\u0011I4\u0002\u000f\u0019|\'/Z1dQV\u0011\u0001N\u001d\u000b\u0003S2\u0004\"!\u00066\n\u0005-4!\u0001B+oSRDQ!\\3A\u00029\u000c\u0011A\u001a\t\u0005+=|\u0011/\u0003\u0002q\r\tIa)\u001e8di&|g.\r\t\u0003!I$Qa]3C\u0002M\u0011\u0011!\u0016\u0005\u0006k\u0002!IA^\u0001\u0013SN<\u0016\u000e\u001e5j]\n{WO\u001c3be&,7\u000f\u0006\u00023o\")\u0001\u0010\u001ea\u0001\u001f\u0005!Q\r\\3n\u0011\u0015Q\u0008\u0001\"\u0003|\u00039awnY1uS>t\u0017I\u001a;fe:#\"a\u0004?\t\u000buL\u0008\u0019A\'\u0002\u00039Daa \u0001\u0005\n\u0005\u0005\u0011!\u00048fo\u0016k\u0007\u000f^=SC:<W\r\u0006\u0003\u0002\u0004\t\u0015\u0002#BA\u0003\u0003czab\u0001\u000f\u0002\u0008\u001d9\u0011\u0011\u0002\u0002\t\u0002\u0005-\u0011\u0001\u0004(v[\u0016\u0014\u0018n\u0019*b]\u001e,\u0007c\u0001\u000f\u0002\u000e\u00191\u0011A\u0001E\u0001\u0003\u001f\u0019R!!\u0004\u0002\u0012}\u00012!FA\n\u0013\r\t)B\u0002\u0002\u0007\u0003:L(+\u001a4\t\u000f\u0005\u000bi\u0001\"\u0001\u0002\u001aQ\u0011\u00111\u0002\u0005\t\u0003;\ti\u0001\"\u0001\u0002 \u0005)1m\\;oiV!\u0011\u0011EA\u0016))\t\u0019#!\u000c\u00020\u0005E\u00121\u0007\u000b\u0004\u001b\u0006\u0015\u0002b\u0002\u001d\u0002\u001c\u0001\u000f\u0011q\u0005\t\u0005uu\nI\u0003E\u0002\u0011\u0003W!aAEA\u000e\u0005\u0004\u0019\u0002bB\u0012\u0002\u001c\u0001\u0007\u0011\u0011\u0006\u0005\u0008Q\u0005m\u0001\u0019AA\u0015\u0011\u001da\u00131\u0004a\u0001\u0003SAa\u0001MA\u000e\u0001\u0004\u0011daBA\u001c\u0003\u001b\u0001\u0011\u0011\u0008\u0002\n\u0013:\u001cG.^:jm\u0016,B!a\u000f\u0002BM!\u0011QGA\u001f!\u0011a\u0002!a\u0010\u0011\u0007A\t\t\u0005\u0002\u0004\u0013\u0003k\u0011\ra\u0005\u0005\u000cG\u0005U\"\u0011!Q\u0001\n\u0005}\"\u0005C\u0006)\u0003k\u0011\t\u0011)A\u0005\u0003\u007f9\u0003b\u0003\u0017\u00026\t\u0005\t\u0015!\u0003\u0002@-B!\u0002OA\u001b\u0005\u0003\u0005\u000b1BA&!\u0011QT(a\u0010\t\u000f\u0005\u000b)\u0004\"\u0001\u0002PQA\u0011\u0011KA-\u00037\ni\u0006\u0006\u0003\u0002T\u0005]\u0003CBA+\u0003k\ty$\u0004\u0002\u0002\u000e!9\u0001(!\u0014A\u0004\u0005-\u0003bB\u0012\u0002N\u0001\u0007\u0011q\u0008\u0005\u0008Q\u00055\u0003\u0019AA \u0011\u001da\u0013Q\na\u0001\u0003\u007fAq\u0001YA\u001b\t\u0003\t\t\u0007\u0006\u0005\u0002T\u0005\r\u0014QMA4\u0011\u001d\u0019\u0013q\u000ca\u0001\u0003\u007fAq\u0001KA0\u0001\u0004\ty\u0004C\u0004-\u0003?\u0002\r!a\u0010\t\u0011\u0005-\u0014Q\u0007C\u0001\u0003[\n\u0011\"\u001a=dYV\u001c\u0018N^3\u0016\u0005\u0005=\u0004CBA+\u0003c\nyDB\u0004\u0002t\u00055\u0001!!\u001e\u0003\u0013\u0015C8\r\\;tSZ,W\u0003BA<\u0003{\u001aB!!\u001d\u0002zA!A\u0004AA>!\r\u0001\u0012Q\u0010\u0003\u0007%\u0005E$\u0019A\n\t\u0017\r\n\tH!A!\u0002\u0013\tYH\t\u0005\u000cQ\u0005E$\u0011!Q\u0001\n\u0005mt\u0005C\u0006-\u0003c\u0012\t\u0011)A\u0005\u0003wZ\u0003B\u0003\u001d\u0002r\t\u0005\t\u0015a\u0003\u0002\u0008B!!(PA>\u0011\u001d\t\u0015\u0011\u000fC\u0001\u0003\u0017#\u0002\"!$\u0002\u0014\u0006U\u0015q\u0013\u000b\u0005\u0003\u001f\u000b\t\n\u0005\u0004\u0002V\u0005E\u00141\u0010\u0005\u0008q\u0005%\u00059AAD\u0011\u001d\u0019\u0013\u0011\u0012a\u0001\u0003wBq\u0001KAE\u0001\u0004\tY\u0008C\u0004-\u0003\u0013\u0003\r!a\u001f\t\u000f\u0001\u000c\t\u0008\"\u0001\u0002\u001cRA\u0011qRAO\u0003?\u000b\t\u000bC\u0004$\u00033\u0003\r!a\u001f\t\u000f!\nI\n1\u0001\u0002|!9A&!\'A\u0002\u0005m\u0004\u0002CAS\u0003c\"\t!a*\u0002\u0013%t7\r\\;tSZ,WCAAU!\u0019\t)&!\u000e\u0002|!A\u0011QVA\u0007\t\u0003\ty+A\u0003baBd\u00170\u0006\u0003\u00022\u0006eF\u0003CAZ\u0003\u007f\u000b\t-a1\u0015\t\u0005U\u00161\u0018\t\u0007\u0003+\n\t(a.\u0011\u0007A\tI\u000c\u0002\u0004\u0013\u0003W\u0013\ra\u0005\u0005\u0008q\u0005-\u00069AA_!\u0011QT(a.\t\u000f\r\nY\u000b1\u0001\u00028\"9\u0001&a+A\u0002\u0005]\u0006b\u0002\u0017\u0002,\u0002\u0007\u0011q\u0017\u0005\t\u0003K\u000bi\u0001\"\u0001\u0002HV!\u0011\u0011ZAi)!\tY-a6\u0002Z\u0006mG\u0003BAg\u0003\'\u0004b!!\u0016\u00026\u0005=\u0007c\u0001\t\u0002R\u00121!#!2C\u0002MAq\u0001OAc\u0001\u0008\t)\u000e\u0005\u0003;{\u0005=\u0007bB\u0012\u0002F\u0002\u0007\u0011q\u001a\u0005\u0008Q\u0005\u0015\u0007\u0019AAh\u0011\u001da\u0013Q\u0019a\u0001\u0003\u001fD1\"a8\u0002\u000e\t\u0007I\u0011\u0001\u0003\u0002b\u0006yA-\u001a4bk2$xJ\u001d3fe&tw-\u0006\u0002\u0002dB9A$!:\u0002j\n\u0005\u0011bAAt\u0005\t\u0019Q*\u001991\t\u0005-\u0018\u0011 \t\u0007\u0003[\u000c\u00190a>\u000e\u0005\u0005=(bAAy\r\u0005!Q.\u0019;i\u0013\u0011\t)0a<\u0003\u000f9+X.\u001a:jGB\u0019\u0001#!?\u0005\u0017\u0005m\u0018Q`A\u0001\u0002\u0003\u0015\ta\u0005\u0002\u0004?\u0012\n\u0004\"CA\u0000\u0003\u001b\u0001\u000b\u0011BAr\u0003A!WMZ1vYR|%\u000fZ3sS:<\u0007\u0005\r\u0003\u0003\u0004\t-\u0001CBAw\u0005\u000b\u0011I!\u0003\u0003\u0003\u0008\u0005=(\u0001C(sI\u0016\u0014\u0018N\\4\u0011\u0007A\u0011Y\u0001B\u0006\u0003\u000e\u0005u\u0018\u0011!A\u0001\u0006\u0003\u0019\"aA0%e!Q!\u0011CA\u0007\u0003\u0003%IAa\u0005\u0002\u0017I,\u0017\r\u001a*fg>dg/\u001a\u000b\u0003\u0005+\u0001BAa\u0006\u0003\"5\u0011!\u0011\u0004\u0006\u0005\u00057\u0011i\"\u0001\u0003mC:<\'B\u0001B\u0010\u0003\u0011Q\u0017M^1\n\t\t\r\"\u0011\u0004\u0002\u0007\u001f\nTWm\u0019;\t\r\t\u001db\u00101\u0001\u0010\u0003\u00151\u0018\r\\;f\u0011\u001d\u0011Y\u0003\u0001C#\u0005[\tA\u0001^1lKR\u0019AIa\u000c\t\ru\u0014I\u00031\u0001N\u0011\u001d\u0011\u0019\u0004\u0001C#\u0005k\tA\u0001\u001a:paR\u0019AIa\u000e\t\ru\u0014\t\u00041\u0001N\u0011\u001d\ti\u000b\u0001C\u0001\u0005w!2a\u0004B\u001f\u0011\u001d\u0011yD!\u000fA\u00025\u000b1!\u001b3y\u0011\u001d\u0011\u0019\u0005\u0001C!\u0005\u000b\n1!\\5o+\u0011\u00119Ea\u0015\u0015\u0007=\u0011I\u0005\u0003\u0005\u0003L\t\u0005\u00039\u0001B\'\u0003\ry\'\u000f\u001a\t\u0006u\t=#\u0011K\u0005\u0004\u0005\u000fy\u0004c\u0001\t\u0003T\u0011A!Q\u000bB!\u0005\u0004\u00119F\u0001\u0002UcE\u0011q\u0002\u0007\u0005\u0008\u00057\u0002A\u0011\tB/\u0003\ri\u0017\r_\u000b\u0005\u0005?\u00129\u0007F\u0002\u0010\u0005CB\u0001Ba\u0013\u0003Z\u0001\u000f!1\r\t\u0006u\t=#Q\r\t\u0004!\t\u001dD\u0001\u0003B+\u00053\u0012\rAa\u0016\t\u0011\t-\u0004\u0001\"\u0001\u0003\u0005[\n\u0001\"\\1q%\u0006tw-Z\u000b\u0005\u0005_\u00129\u0008\u0006\u0003\u0003r\t\u0005E\u0003\u0002B:\u0005w\u0002B\u0001\u0008\u0001\u0003vA\u0019\u0001Ca\u001e\u0005\u000f\te$\u0011\u000eb\u0001\'\t\t\u0011\t\u0003\u0005\u0003~\t%\u00049\u0001B@\u0003\u0011)h.^7\u0011\tij$Q\u000f\u0005\t\u0005\u0007\u0013I\u00071\u0001\u0003\u0006\u0006\u0011a-\u001c\t\u0006+=|!Q\u000f\u0005\u0008\u0005\u0013\u0003A\u0011\u0001BF\u00035\u0019wN\u001c;bS:\u001cH+\u001f9fIR\u0019!G!$\t\u000f\t=%q\u0011a\u0001\u001f\u0005\t\u0001\u0010C\u0004\u0003\u0014\u0002!\tE!&\u0002\u0011\r|g\u000e^1j]N,BAa&\u0003\u001eR\u0019!G!\'\t\u0011\t=%\u0011\u0013a\u0001\u00057\u00032\u0001\u0005BO\t!\u0011yJ!%C\u0002\t]#AA!2\u0011\u001d\u0011\u0019\u000b\u0001C#\u0005K\u000b1a];n+\u0011\u00119Ka+\u0015\t\t%&q\u0016\t\u0004!\t-F\u0001\u0003BW\u0005C\u0013\rAa\u0016\u0003\u0003\tCq\u0001\u000fBQ\u0001\u0008\u0011\t\u000cE\u0003;\u0005g\u0013I+C\u0002\u0002v~B\u0011Ba.\u0001\u0011\u000b\u0007I\u0011\t\'\u0002\u0011!\u000c7\u000f[\"pI\u0016D\u0011Ba/\u0001\u0011\u0003\u0005\u000b\u0015B\'\u0002\u0013!\u000c7\u000f[\"pI\u0016\u0004\u0003b\u0002B`\u0001\u0011\u0005#\u0011Y\u0001\u0007KF,\u0018\r\\:\u0015\u0007I\u0012\u0019\rC\u0004\u0003F\nu\u0006\u0019\u0001\r\u0002\u000b=$\u0008.\u001a:\t\u000f\t%\u0007\u0001\"\u0011\u0003L\u0006AAo\\*ue&tw\r\u0006\u0002\u0003NB!!q\u001aBk\u001d\r)\"\u0011[\u0005\u0004\u0005\'4\u0011A\u0002)sK\u0012,g-\u0003\u0003\u0003X\ne\'AB*ue&twMC\u0002\u0003T\u001a\u0001"
.end annotation


# instance fields
.field private volatile bitmap$0:B

.field private final end:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private hashCode:I

.field private final isInclusive:Z

.field private last:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final num:Lscala/math/Integral;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/math/Integral<",
            "TT;>;"
        }
    .end annotation
.end field

.field private numRangeElements:I

.field private final start:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final step:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZLscala/math/Integral;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;Z",
            "Lscala/math/Integral<",
            "TT;>;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lscala/collection/immutable/NumericRange;->start:Ljava/lang/Object;

    iput-object p2, p0, Lscala/collection/immutable/NumericRange;->end:Ljava/lang/Object;

    iput-object p3, p0, Lscala/collection/immutable/NumericRange;->step:Ljava/lang/Object;

    iput-boolean p4, p0, Lscala/collection/immutable/NumericRange;->isInclusive:Z

    .line 43
    iput-object p5, p0, Lscala/collection/immutable/NumericRange;->num:Lscala/math/Integral;

    .line 44
    invoke-direct {p0}, Lscala/collection/AbstractSeq;-><init>()V

    invoke-static {p0}, Lscala/collection/immutable/Traversable$class;->$init$(Lscala/collection/immutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/immutable/Iterable$class;->$init$(Lscala/collection/immutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/immutable/Seq$class;->$init$(Lscala/collection/immutable/Seq;)V

    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->$init$(Lscala/collection/IndexedSeqLike;)V

    invoke-static {p0}, Lscala/collection/IndexedSeq$class;->$init$(Lscala/collection/IndexedSeq;)V

    invoke-static {p0}, Lscala/collection/immutable/IndexedSeq$class;->$init$(Lscala/collection/immutable/IndexedSeq;)V

    return-void
.end method

.method private hashCode$lzycompute()I
    .locals 1

    .line 210
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lscala/collection/immutable/NumericRange;->bitmap$0:B

    and-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->hashCode(Lscala/collection/IndexedSeqLike;)I

    move-result v0

    iput v0, p0, Lscala/collection/immutable/NumericRange;->hashCode:I

    iget-byte v0, p0, Lscala/collection/immutable/NumericRange;->bitmap$0:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lscala/collection/immutable/NumericRange;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lscala/collection/immutable/NumericRange;->hashCode:I

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static inclusive(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/immutable/NumericRange$Inclusive;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;",
            "Lscala/math/Integral<",
            "TT;>;)",
            "Lscala/collection/immutable/NumericRange$Inclusive<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/NumericRange$;->MODULE$:Lscala/collection/immutable/NumericRange$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/immutable/NumericRange$;->inclusive(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/immutable/NumericRange$Inclusive;

    move-result-object p0

    return-object p0
.end method

.method private isWithinBoundaries(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    iget-object v0, p0, Lscala/collection/immutable/NumericRange;->num:Lscala/math/Integral;

    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->step()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/math/Integral;->mkOrderingOps(Ljava/lang/Object;)Lscala/math/Ordering$Ops;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/immutable/NumericRange;->num:Lscala/math/Integral;

    invoke-interface {v1}, Lscala/math/Integral;->zero()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/math/Ordering$Ops;->$greater(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/collection/immutable/NumericRange;->num:Lscala/math/Integral;

    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->start()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/math/Integral;->mkOrderingOps(Ljava/lang/Object;)Lscala/math/Ordering$Ops;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/math/Ordering$Ops;->$less$eq(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/collection/immutable/NumericRange;->num:Lscala/math/Integral;

    invoke-interface {v0, p1}, Lscala/math/Integral;->mkOrderingOps(Ljava/lang/Object;)Lscala/math/Ordering$Ops;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->last()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/math/Ordering$Ops;->$less$eq(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    :cond_0
    iget-object v0, p0, Lscala/collection/immutable/NumericRange;->num:Lscala/math/Integral;

    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->step()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/math/Integral;->mkOrderingOps(Ljava/lang/Object;)Lscala/math/Ordering$Ops;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/immutable/NumericRange;->num:Lscala/math/Integral;

    invoke-interface {v1}, Lscala/math/Integral;->zero()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/math/Ordering$Ops;->$less(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lscala/collection/immutable/NumericRange;->num:Lscala/math/Integral;

    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->last()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/math/Integral;->mkOrderingOps(Ljava/lang/Object;)Lscala/math/Ordering$Ops;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/math/Ordering$Ops;->$less$eq(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lscala/collection/immutable/NumericRange;->num:Lscala/math/Integral;

    invoke-interface {v0, p1}, Lscala/math/Integral;->mkOrderingOps(Ljava/lang/Object;)Lscala/math/Ordering$Ops;

    move-result-object p1

    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->start()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lscala/math/Ordering$Ops;->$less$eq(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private last$lzycompute()Ljava/lang/Object;
    .locals 1

    .line 56
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lscala/collection/immutable/NumericRange;->bitmap$0:B

    and-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    if-nez v0, :cond_1

    .line 57
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->length()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {v0}, Lscala/collection/immutable/Nil$;->last()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lscala/collection/immutable/NumericRange;->locationAfterN(I)Ljava/lang/Object;

    move-result-object v0

    .line 56
    :goto_0
    iput-object v0, p0, Lscala/collection/immutable/NumericRange;->last:Ljava/lang/Object;

    iget-byte v0, p0, Lscala/collection/immutable/NumericRange;->bitmap$0:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lscala/collection/immutable/NumericRange;->bitmap$0:B

    :cond_1
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/immutable/NumericRange;->last:Ljava/lang/Object;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private locationAfterN(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lscala/collection/immutable/NumericRange;->num:Lscala/math/Integral;

    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->start()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/math/Integral;->mkNumericOps(Ljava/lang/Object;)Lscala/math/Integral$IntegralOps;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/immutable/NumericRange;->num:Lscala/math/Integral;

    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->step()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lscala/math/Integral;->mkNumericOps(Ljava/lang/Object;)Lscala/math/Integral$IntegralOps;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/immutable/NumericRange;->num:Lscala/math/Integral;

    invoke-interface {v2, p1}, Lscala/math/Integral;->fromInt(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lscala/math/Integral$IntegralOps;->$times(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/math/Integral$IntegralOps;->$plus(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private newEmptyRange(Ljava/lang/Object;)Lscala/collection/immutable/NumericRange$Exclusive;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lscala/collection/immutable/NumericRange$Exclusive<",
            "TT;>;"
        }
    .end annotation

    .line 97
    sget-object v0, Lscala/collection/immutable/NumericRange$;->MODULE$:Lscala/collection/immutable/NumericRange$;

    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->step()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/immutable/NumericRange;->num:Lscala/math/Integral;

    invoke-virtual {v0, p1, p1, v1, v2}, Lscala/collection/immutable/NumericRange$;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/immutable/NumericRange$Exclusive;

    move-result-object p1

    return-object p1
.end method

.method private numRangeElements()I
    .locals 1

    .line 51
    iget-byte v0, p0, Lscala/collection/immutable/NumericRange;->bitmap$0:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/immutable/NumericRange;->numRangeElements$lzycompute()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lscala/collection/immutable/NumericRange;->numRangeElements:I

    :goto_0
    return v0
.end method

.method private numRangeElements$lzycompute()I
    .locals 7

    .line 51
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lscala/collection/immutable/NumericRange;->bitmap$0:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    .line 52
    sget-object v1, Lscala/collection/immutable/NumericRange$;->MODULE$:Lscala/collection/immutable/NumericRange$;

    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->start()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->end()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->step()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->isInclusive()Z

    move-result v5

    iget-object v6, p0, Lscala/collection/immutable/NumericRange;->num:Lscala/math/Integral;

    invoke-virtual/range {v1 .. v6}, Lscala/collection/immutable/NumericRange$;->count(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZLscala/math/Integral;)I

    move-result v0

    .line 51
    iput v0, p0, Lscala/collection/immutable/NumericRange;->numRangeElements:I

    iget-byte v0, p0, Lscala/collection/immutable/NumericRange;->bitmap$0:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lscala/collection/immutable/NumericRange;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lscala/collection/immutable/NumericRange;->numRangeElements:I

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public apply(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 112
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 113
    invoke-direct {p0, p1}, Lscala/collection/immutable/NumericRange;->locationAfterN(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/NumericRange;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public by(Ljava/lang/Object;)Lscala/collection/immutable/NumericRange;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lscala/collection/immutable/NumericRange<",
            "TT;>;"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->start()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->end()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lscala/collection/immutable/NumericRange;->copy(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/NumericRange;

    move-result-object p1

    return-object p1
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/immutable/IndexedSeq;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/immutable/IndexedSeq$class;->companion(Lscala/collection/immutable/IndexedSeq;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(TA1;)Z"
        }
    .end annotation

    .line 174
    :try_start_0
    invoke-virtual {p0, p1}, Lscala/collection/immutable/NumericRange;->containsTyped(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsTyped(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 171
    invoke-direct {p0, p1}, Lscala/collection/immutable/NumericRange;->isWithinBoundaries(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lscala/collection/immutable/NumericRange;->num:Lscala/math/Integral;

    invoke-interface {v0, p1}, Lscala/math/Integral;->mkNumericOps(Ljava/lang/Object;)Lscala/math/Integral$IntegralOps;

    move-result-object p1

    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->start()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Lscala/math/Integral$IntegralOps;->$minus(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/math/Integral;->mkNumericOps(Ljava/lang/Object;)Lscala/math/Integral$IntegralOps;

    move-result-object p1

    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->step()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lscala/math/Integral$IntegralOps;->$percent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lscala/collection/immutable/NumericRange;->num:Lscala/math/Integral;

    invoke-interface {v0}, Lscala/math/Integral;->zero()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    instance-of v3, p1, Ljava/lang/Number;

    if-eqz v3, :cond_2

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_2
    instance-of v3, p1, Ljava/lang/Character;

    if-eqz v3, :cond_3

    check-cast p1, Ljava/lang/Character;

    invoke-static {p1, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public abstract copy(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/NumericRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;)",
            "Lscala/collection/immutable/NumericRange<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final bridge synthetic drop(I)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/immutable/NumericRange;->drop(I)Lscala/collection/immutable/NumericRange;

    move-result-object p1

    return-object p1
.end method

.method public final drop(I)Lscala/collection/immutable/NumericRange;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/NumericRange<",
            "TT;>;"
        }
    .end annotation

    if-lez p1, :cond_2

    .line 106
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->end()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lscala/collection/immutable/NumericRange;->newEmptyRange(Ljava/lang/Object;)Lscala/collection/immutable/NumericRange$Exclusive;

    move-result-object p1

    goto :goto_1

    .line 108
    :cond_1
    invoke-direct {p0, p1}, Lscala/collection/immutable/NumericRange;->locationAfterN(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->end()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->step()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lscala/collection/immutable/NumericRange;->copy(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/NumericRange;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    move-object p1, p0

    :goto_1
    return-object p1
.end method

.method public end()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lscala/collection/immutable/NumericRange;->end:Ljava/lang/Object;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 211
    instance-of v0, p1, Lscala/collection/immutable/NumericRange;

    if-eqz v0, :cond_9

    check-cast p1, Lscala/collection/immutable/NumericRange;

    .line 213
    invoke-virtual {p1, p0}, Lscala/collection/immutable/NumericRange;->canEqual(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->length()I

    move-result v0

    invoke-virtual {p1}, Lscala/collection/immutable/NumericRange;->length()I

    move-result v3

    if-ne v0, v3, :cond_8

    .line 214
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->length()I

    move-result v0

    if-eqz v0, :cond_a

    .line 215
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->start()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lscala/collection/immutable/NumericRange;->start()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    instance-of v4, v0, Ljava/lang/Character;

    if-eqz v4, :cond_3

    check-cast v0, Ljava/lang/Character;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->last()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lscala/collection/immutable/NumericRange;->last()Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    instance-of v3, v0, Ljava/lang/Number;

    if-eqz v3, :cond_6

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, p1}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :cond_6
    instance-of v3, v0, Ljava/lang/Character;

    if-eqz v3, :cond_7

    check-cast v0, Ljava/lang/Character;

    invoke-static {v0, p1}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :cond_7
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    .line 218
    :cond_9
    invoke-static {p0, p1}, Lscala/collection/GenSeqLike$class;->equals(Lscala/collection/GenSeqLike;Ljava/lang/Object;)Z

    move-result v1

    :cond_a
    :goto_2
    return v1
.end method

.method public foreach(Lscala/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TU;>;)V"
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->start()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 72
    :goto_0
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 73
    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v2, p0, Lscala/collection/immutable/NumericRange;->num:Lscala/math/Integral;

    invoke-interface {v2, v0}, Lscala/math/Integral;->mkNumericOps(Ljava/lang/Object;)Lscala/math/Integral$IntegralOps;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->step()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lscala/math/Integral$IntegralOps;->$plus(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/immutable/NumericRange;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 210
    iget-byte v0, p0, Lscala/collection/immutable/NumericRange;->bitmap$0:B

    and-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/immutable/NumericRange;->hashCode$lzycompute()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lscala/collection/immutable/NumericRange;->hashCode:I

    :goto_0
    return v0
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/NumericRange;->isDefinedAt(I)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 55
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInclusive()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lscala/collection/immutable/NumericRange;->isInclusive:Z

    return v0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->iterator(Lscala/collection/IndexedSeqLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 56
    iget-byte v0, p0, Lscala/collection/immutable/NumericRange;->bitmap$0:B

    and-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/immutable/NumericRange;->last$lzycompute()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/collection/immutable/NumericRange;->last:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public length()I
    .locals 1

    .line 54
    invoke-direct {p0}, Lscala/collection/immutable/NumericRange;->numRangeElements()I

    move-result v0

    return v0
.end method

.method public mapRange(Lscala/Function1;Lscala/math/Integral;)Lscala/collection/immutable/NumericRange;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TA;>;",
            "Lscala/math/Integral<",
            "TA;>;)",
            "Lscala/collection/immutable/NumericRange<",
            "TA;>;"
        }
    .end annotation

    .line 153
    new-instance v0, Lscala/collection/immutable/NumericRange$$anon$1;

    invoke-direct {v0, p0, p1, p2, p0}, Lscala/collection/immutable/NumericRange$$anon$1;-><init>(Lscala/collection/immutable/NumericRange;Lscala/Function1;Lscala/math/Integral;Lscala/collection/immutable/NumericRange;)V

    return-object v0
.end method

.method public max(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TT1;>;)TT;"
        }
    .end annotation

    .line 125
    sget-object v0, Lscala/collection/immutable/NumericRange$;->MODULE$:Lscala/collection/immutable/NumericRange$;

    invoke-virtual {v0}, Lscala/collection/immutable/NumericRange$;->defaultOrdering()Lscala/collection/immutable/Map;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/immutable/NumericRange;->num:Lscala/math/Integral;

    invoke-interface {v0, v1}, Lscala/collection/immutable/Map;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 126
    iget-object p1, p0, Lscala/collection/immutable/NumericRange;->num:Lscala/math/Integral;

    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->step()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/math/Integral;->signum(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->last()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->start()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 128
    :cond_1
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->max(Lscala/collection/TraversableOnce;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public min(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TT1;>;)TT;"
        }
    .end annotation

    .line 119
    sget-object v0, Lscala/collection/immutable/NumericRange$;->MODULE$:Lscala/collection/immutable/NumericRange$;

    invoke-virtual {v0}, Lscala/collection/immutable/NumericRange$;->defaultOrdering()Lscala/collection/immutable/Map;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/immutable/NumericRange;->num:Lscala/math/Integral;

    invoke-interface {v0, v1}, Lscala/collection/immutable/Map;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 120
    iget-object p1, p0, Lscala/collection/immutable/NumericRange;->num:Lscala/math/Integral;

    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->step()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/math/Integral;->signum(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->start()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->last()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 122
    :cond_1
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->min(Lscala/collection/TraversableOnce;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public parCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TT;",
            "Lscala/collection/parallel/immutable/ParSeq<",
            "TT;>;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/immutable/Seq$class;->parCombiner(Lscala/collection/immutable/Seq;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/IndexedSeq;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/immutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/IndexedSeq<",
            "TT;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/immutable/IndexedSeq$class;->seq(Lscala/collection/immutable/IndexedSeq;)Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Iterable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Seq;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Traversable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public start()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lscala/collection/immutable/NumericRange;->start:Ljava/lang/Object;

    return-object v0
.end method

.method public step()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lscala/collection/immutable/NumericRange;->step:Ljava/lang/Object;

    return-object v0
.end method

.method public final sum(Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Numeric<",
            "TB;>;)TB;"
        }
    .end annotation

    .line 179
    sget-object v0, Lscala/math/Numeric$IntIsIntegral$;->MODULE$:Lscala/math/Numeric$IntIsIntegral$;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    .line 180
    sget-object v0, Lscala/math/Numeric$BigIntIsIntegral$;->MODULE$:Lscala/math/Numeric$BigIntIsIntegral$;

    if-eq p1, v0, :cond_3

    .line 181
    sget-object v0, Lscala/math/Numeric$ShortIsIntegral$;->MODULE$:Lscala/math/Numeric$ShortIsIntegral$;

    if-eq p1, v0, :cond_3

    .line 182
    sget-object v0, Lscala/math/Numeric$ByteIsIntegral$;->MODULE$:Lscala/math/Numeric$ByteIsIntegral$;

    if-eq p1, v0, :cond_3

    .line 183
    sget-object v0, Lscala/math/Numeric$CharIsIntegral$;->MODULE$:Lscala/math/Numeric$CharIsIntegral$;

    if-eq p1, v0, :cond_3

    .line 184
    sget-object v0, Lscala/math/Numeric$LongIsIntegral$;->MODULE$:Lscala/math/Numeric$LongIsIntegral$;

    if-eq p1, v0, :cond_3

    .line 185
    sget-object v0, Lscala/math/Numeric$FloatAsIfIntegral$;->MODULE$:Lscala/math/Numeric$FloatAsIfIntegral$;

    if-eq p1, v0, :cond_3

    .line 186
    sget-object v0, Lscala/math/Numeric$BigDecimalIsFractional$;->MODULE$:Lscala/math/Numeric$BigDecimalIsFractional$;

    if-eq p1, v0, :cond_3

    .line 187
    sget-object v0, Lscala/math/Numeric$DoubleAsIfIntegral$;->MODULE$:Lscala/math/Numeric$DoubleAsIfIntegral$;

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 195
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lscala/math/Numeric;->zero()Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    .line 197
    :cond_1
    invoke-interface {p1}, Lscala/math/Numeric;->zero()Ljava/lang/Object;

    move-result-object v0

    .line 198
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->head()Ljava/lang/Object;

    move-result-object v2

    .line 200
    :goto_0
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 201
    invoke-interface {p1, v0, v2}, Lscala/math/Numeric;->plus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 202
    iget-object v3, p0, Lscala/collection/immutable/NumericRange;->num:Lscala/math/Integral;

    invoke-interface {v3, v2}, Lscala/math/Integral;->mkNumericOps(Ljava/lang/Object;)Lscala/math/Integral$IntegralOps;

    move-result-object v2

    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->step()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/math/Integral$IntegralOps;->$plus(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object p1, v0

    goto :goto_2

    .line 188
    :cond_3
    :goto_1
    move-object v0, p1

    check-cast v0, Lscala/math/Integral;

    .line 190
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1, v1}, Lscala/math/Numeric;->fromInt(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    .line 191
    :cond_4
    invoke-direct {p0}, Lscala/collection/immutable/NumericRange;->numRangeElements()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->head()Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    .line 192
    :cond_5
    invoke-direct {p0}, Lscala/collection/immutable/NumericRange;->numRangeElements()I

    move-result v1

    invoke-interface {p1, v1}, Lscala/math/Numeric;->fromInt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/math/Integral;->mkNumericOps(Ljava/lang/Object;)Lscala/math/Integral$IntegralOps;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->head()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lscala/math/Integral;->mkNumericOps(Ljava/lang/Object;)Lscala/math/Integral$IntegralOps;

    move-result-object v2

    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->last()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/math/Integral$IntegralOps;->$plus(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/math/Integral$IntegralOps;->$times(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/math/Integral;->mkNumericOps(Ljava/lang/Object;)Lscala/math/Integral$IntegralOps;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Lscala/math/Numeric;->fromInt(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/math/Integral$IntegralOps;->$div(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public final bridge synthetic take(I)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/immutable/NumericRange;->take(I)Lscala/collection/immutable/NumericRange;

    move-result-object p1

    return-object p1
.end method

.method public final take(I)Lscala/collection/immutable/NumericRange;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/NumericRange<",
            "TT;>;"
        }
    .end annotation

    if-lez p1, :cond_2

    .line 100
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    move-object v0, p0

    goto :goto_1

    .line 102
    :cond_1
    new-instance v0, Lscala/collection/immutable/NumericRange$Inclusive;

    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->start()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Lscala/collection/immutable/NumericRange;->locationAfterN(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->step()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lscala/collection/immutable/NumericRange;->num:Lscala/math/Integral;

    invoke-direct {v0, v1, p1, v2, v3}, Lscala/collection/immutable/NumericRange$Inclusive;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)V

    goto :goto_1

    .line 100
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->start()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lscala/collection/immutable/NumericRange;->newEmptyRange(Ljava/lang/Object;)Lscala/collection/immutable/NumericRange$Exclusive;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public thisCollection()Lscala/collection/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/IndexedSeq<",
            "TT;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->thisCollection(Lscala/collection/IndexedSeqLike;)Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->thisCollection()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Seq;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->thisCollection()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->thisCollection()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public toBuffer()Lscala/collection/mutable/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Buffer<",
            "TA1;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->toBuffer(Lscala/collection/IndexedSeqLike;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqLike$class;->toCollection(Lscala/collection/IndexedSeqLike;Ljava/lang/Object;)Lscala/collection/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/immutable/NumericRange;->toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Seq;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/immutable/NumericRange;->toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/collection/immutable/NumericRange;->toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public toIndexedSeq()Lscala/collection/immutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/IndexedSeq<",
            "TT;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/immutable/IndexedSeq$class;->toIndexedSeq(Lscala/collection/immutable/IndexedSeq;)Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->toSeq()Lscala/collection/immutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/Seq;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->toSeq()Lscala/collection/immutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/immutable/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Seq<",
            "TT;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/immutable/Seq$class;->toSeq(Lscala/collection/immutable/Seq;)Lscala/collection/immutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 222
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->length()I

    move-result v0

    sget-object v1, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    invoke-virtual {v1}, Lscala/collection/immutable/Range$;->MAX_PRINT()I

    move-result v1

    if-le v0, v1, :cond_0

    const-string v0, ", ... )"

    goto :goto_0

    :cond_0
    const-string v0, ")"

    .line 223
    :goto_0
    sget-object v1, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    invoke-virtual {v1}, Lscala/collection/immutable/Range$;->MAX_PRINT()I

    move-result v1

    invoke-virtual {p0, v1}, Lscala/collection/immutable/NumericRange;->take(I)Lscala/collection/immutable/NumericRange;

    move-result-object v1

    const-string v2, "NumericRange("

    const-string v3, ", "

    invoke-virtual {v1, v2, v3, v0}, Lscala/collection/immutable/NumericRange;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view()Lscala/collection/IterableView;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/IterableView;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/NumericRange;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/NumericRange;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method
