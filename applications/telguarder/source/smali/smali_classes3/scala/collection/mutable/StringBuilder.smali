.class public final Lscala/collection/mutable/StringBuilder;
.super Lscala/collection/mutable/AbstractSeq;
.source "StringBuilder.scala"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Lscala/collection/mutable/IndexedSeq;
.implements Lscala/collection/immutable/StringLike;
.implements Lscala/collection/mutable/Builder;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/mutable/AbstractSeq<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/CharSequence;",
        "Lscala/collection/mutable/IndexedSeq<",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/collection/immutable/StringLike<",
        "Lscala/collection/mutable/StringBuilder;",
        ">;",
        "Lscala/collection/mutable/Builder<",
        "Ljava/lang/Object;",
        "Ljava/lang/String;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\rEa\u0001B\u0001\u0003\u0005%\u0011Qb\u0015;sS:<\')^5mI\u0016\u0014(BA\u0002\u0005\u0003\u001diW\u000f^1cY\u0016T!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\u0008\u0003\u0015\u00198-\u00197b\u0007\u0001\u0019r\u0001\u0001\u0006\u00135u!c\u0006E\u0002\u000c\u00199i\u0011AA\u0005\u0003\u001b\t\u00111\"\u00112tiJ\u000c7\r^*fcB\u0011q\u0002E\u0007\u0002\r%\u0011\u0011C\u0002\u0002\u0005\u0007\"\u000c\'\u000f\u0005\u0002\u001415\tAC\u0003\u0002\u0016-\u0005!A.\u00198h\u0015\u00059\u0012\u0001\u00026bm\u0006L!!\u0007\u000b\u0003\u0019\rC\u0017M]*fcV,gnY3\u0011\u0007-Yb\"\u0003\u0002\u001d\u0005\tQ\u0011J\u001c3fq\u0016$7+Z9\u0011\u0007y\t3%D\u0001 \u0015\t\u0001C!A\u0005j[6,H/\u00192mK&\u0011!e\u0008\u0002\u000b\'R\u0014\u0018N\\4MS.,\u0007CA\u0006\u0001!\u0011YQED\u0014\n\u0005\u0019\u0012!a\u0002\"vS2$WM\u001d\t\u0003Q-r!aD\u0015\n\u0005)2\u0011A\u0002)sK\u0012,g-\u0003\u0002-[\t11\u000b\u001e:j]\u001eT!A\u000b\u0004\u0011\u0005=y\u0013B\u0001\u0019\u0007\u00051\u0019VM]5bY&T\u0018M\u00197f\u0011!\u0011\u0004A!b\u0001\n\u0013\u0019\u0014AC;oI\u0016\u0014H._5oOV\tA\u0007\u0005\u0002\u0014k%\u0011\u0011\u0001\u0006\u0005\to\u0001\u0011\t\u0011)A\u0005i\u0005YQO\u001c3fe2L\u0018N\\4!\u0011\u0015I\u0004\u0001\"\u0001;\u0003\u0019a\u0014N\\5u}Q\u00111e\u000f\u0005\u0006ea\u0002\r\u0001\u000e\u0005\u0007{\u0001\u0001K\u0011\u000b \u0002\u001dQD\u0017n]\"pY2,7\r^5p]V\t1\u0005\u0003\u0004A\u0001\u0001&\t&Q\u0001\ri>\u001cu\u000e\u001c7fGRLwN\u001c\u000b\u0003G\tCQaQ A\u0002\r\nAA]3qe\"1Q\t\u0001Q\u0005R\u0019\u000b!B\\3x\u0005VLG\u000eZ3s+\u00059\u0005\u0003B\u0006I\u001d\rJ!!\u0013\u0002\u0003\u001d\u001d\u0013xn^5oO\n+\u0018\u000e\u001c3fe\")\u0011\u0008\u0001C\u0001\u0017R\u00191\u0005T)\t\u000b5S\u0005\u0019\u0001(\u0002\u0019%t\u0017\u000e^\"ba\u0006\u001c\u0017\u000e^=\u0011\u0005=y\u0015B\u0001)\u0007\u0005\rIe\u000e\u001e\u0005\u0006%*\u0003\raJ\u0001\nS:LGOV1mk\u0016DQ!\u000f\u0001\u0005\u0002Q#\u0012a\t\u0005\u0006s\u0001!\tA\u0016\u000b\u0003G]CQ\u0001W+A\u00029\u000b\u0001bY1qC\u000eLG/\u001f\u0005\u0006s\u0001!\tA\u0017\u000b\u0003GmCQ\u0001X-A\u0002\u001d\n1a\u001d;s\u0011\u0015q\u0006\u0001\"\u0001`\u0003\u001d!x.\u0011:sCf,\u0012\u0001\u0019\t\u0004\u001f\u0005t\u0011B\u00012\u0007\u0005\u0015\t%O]1z\u0011\u0015!\u0007\u0001\"\u0011f\u0003\u0019aWM\\4uQV\ta\nC\u0003h\u0001\u0011\u0005\u0001.\u0001\u0006mK:<G\u000f[0%KF$\"!\u001b7\u0011\u0005=Q\u0017BA6\u0007\u0005\u0011)f.\u001b;\t\u000b54\u0007\u0019\u0001(\u0002\u00039DQa\u001c\u0001\u0005\u0002A\u000cQa\u00197fCJ$\u0012!\u001b\u0005\u0006e\u0002!\ta]\u0001\ng\u0016$H*\u001a8hi\"$\"!\u001b;\t\u000bU\u000c\u0008\u0019\u0001(\u0002\u00071,g\u000eC\u0003Y\u0001\u0011\u0005Q\rC\u0003y\u0001\u0011\u0005\u00110\u0001\u0008f]N,(/Z\"ba\u0006\u001c\u0017\u000e^=\u0015\u0005%T\u0008\"B>x\u0001\u0004q\u0015a\u00038fo\u000e\u000b\u0007/Y2jifDQ! \u0001\u0005\u0002y\u000caa\u00195be\u0006#HC\u0001\u0008\u0000\u0011\u0019\t\t\u0001 a\u0001\u001d\u0006)\u0011N\u001c3fq\"9\u0011Q\u0001\u0001\u0005B\u0005\u001d\u0011!B1qa2LHc\u0001\u0008\u0002\n!9\u0011\u0011AA\u0002\u0001\u0004q\u0005bBA\u0007\u0001\u0011\u0005\u0011qB\u0001\rI\u0016dW\r^3DQ\u0006\u0014\u0018\t\u001e\u000b\u0004G\u0005E\u0001bBA\u0001\u0003\u0017\u0001\rA\u0014\u0005\u0008\u0003+\u0001A\u0011AA\u000c\u0003%\u0019X\r^\"iCJ\u000cE\u000fF\u0003j\u00033\tY\u0002C\u0004\u0002\u0002\u0005M\u0001\u0019\u0001(\t\u000f\u0005u\u00111\u0003a\u0001\u001d\u0005\u00111\r\u001b\u0005\u0008\u0003C\u0001A\u0011AA\u0012\u0003\u0019)\u0008\u000fZ1uKR)\u0011.!\n\u0002*!9\u0011qEA\u0010\u0001\u0004q\u0015!A5\t\u000f\u0005-\u0012q\u0004a\u0001\u001d\u0005\t1\rC\u0004\u00020\u0001!\t!!\r\u0002\u0013M,(m\u001d;sS:<GcA\u0014\u00024!9\u0011QGA\u0017\u0001\u0004q\u0015!B:uCJ$\u0008bBA\u0018\u0001\u0011\u0005\u0011\u0011\u0008\u000b\u0006O\u0005m\u0012Q\u0008\u0005\u0008\u0003k\t9\u00041\u0001O\u0011\u001d\ty$a\u000eA\u00029\u000b1!\u001a8e\u0011\u001d\t\u0019\u0005\u0001C\u0001\u0003\u000b\n1b];c\'\u0016\u000cX/\u001a8dKR)!#a\u0012\u0002J!9\u0011QGA!\u0001\u0004q\u0005bBA \u0003\u0003\u0002\rA\u0014\u0005\u0008\u0003\u001b\u0002A\u0011AA(\u0003!!\u0003\u000f\\;tI\u0015\u000cH\u0003BA)\u0003\'j\u0011\u0001\u0001\u0005\u0008\u0003+\nY\u00051\u0001\u000f\u0003\u0005A\u0008bBA-\u0001\u0011\u0005\u00111L\u0001\u000eIAdWo\u001d\u0013qYV\u001cH%Z9\u0015\t\u0005E\u0013Q\u000c\u0005\u0008\u0003?\n9\u00061\u0001(\u0003\u0005\u0019\u0008bBA2\u0001\u0011\u0005\u0011QM\u0001\nCB\u0004XM\u001c3BY2$2aIA4\u0011\u001d\tI\'!\u0019A\u0002\u001d\n!\u0001_:\t\u000f\u00055\u0004\u0001\"\u0001\u0002p\u0005)A\u0005\u001d7vgR!\u0011\u0011KA9\u0011\u001d\t)&a\u001bA\u00029Aq!!\u001e\u0001\t\u0003\t9(\u0001\u0004baB,g\u000e\u001a\u000b\u0004G\u0005e\u0004\u0002CA+\u0003g\u0002\r!a\u001f\u0011\u0007=\ti(C\u0002\u0002\u0000\u0019\u00111!\u00118z\u0011\u001d\t)\u0008\u0001C\u0001\u0003\u0007#2aIAC\u0011\u001d\ty&!!A\u0002\u001dBq!!\u001e\u0001\t\u0003\tI\tF\u0002$\u0003\u0017Cq!!$\u0002\u0008\u0002\u00071%\u0001\u0002tE\"9\u00111\r\u0001\u0005\u0002\u0005EEcA\u0012\u0002\u0014\"A\u0011\u0011NAH\u0001\u0004\t)\nE\u0003\u0002\u0018\u0006ee\"D\u0001\u0005\u0013\r\tY\n\u0002\u0002\u0010)J\u000cg/\u001a:tC\ndWm\u00148dK\"9\u00111\r\u0001\u0005\u0002\u0005}EcA\u0012\u0002\"\"9\u0011\u0011NAO\u0001\u0004\u0001\u0007bBA2\u0001\u0011\u0005\u0011Q\u0015\u000b\u0008G\u0005\u001d\u0016\u0011VAW\u0011\u001d\tI\'a)A\u0002\u0001Dq!a+\u0002$\u0002\u0007a*\u0001\u0004pM\u001a\u001cX\r\u001e\u0005\u0007k\u0006\r\u0006\u0019\u0001(\t\u000f\u0005U\u0004\u0001\"\u0001\u00022R\u00191%a-\t\u0011\u0005U\u0013q\u0016a\u0001\u0003k\u00032aDA\\\u0013\r\tIL\u0002\u0002\u0008\u0005>|G.Z1o\u0011\u001d\t)\u0008\u0001C\u0001\u0003{#2aIA`\u0011!\t)&a/A\u0002\u0005\u0005\u0007cA\u0008\u0002D&\u0019\u0011Q\u0019\u0004\u0003\t\tKH/\u001a\u0005\u0008\u0003k\u0002A\u0011AAe)\r\u0019\u00131\u001a\u0005\t\u0003+\n9\r1\u0001\u0002NB\u0019q\"a4\n\u0007\u0005EgAA\u0003TQ>\u0014H\u000fC\u0004\u0002v\u0001!\t!!6\u0015\u0007\r\n9\u000eC\u0004\u0002V\u0005M\u0007\u0019\u0001(\t\u000f\u0005U\u0004\u0001\"\u0001\u0002\\R\u00191%!8\t\u0011\u0005U\u0013\u0011\u001ca\u0001\u0003?\u00042aDAq\u0013\r\t\u0019O\u0002\u0002\u0005\u0019>tw\rC\u0004\u0002v\u0001!\t!a:\u0015\u0007\r\nI\u000f\u0003\u0005\u0002V\u0005\u0015\u0008\u0019AAv!\ry\u0011Q^\u0005\u0004\u0003_4!!\u0002$m_\u0006$\u0008bBA;\u0001\u0011\u0005\u00111\u001f\u000b\u0004G\u0005U\u0008\u0002CA+\u0003c\u0004\r!a>\u0011\u0007=\tI0C\u0002\u0002|\u001a\u0011a\u0001R8vE2,\u0007bBA;\u0001\u0011\u0005\u0011q \u000b\u0004G\t\u0005\u0001bBA+\u0003{\u0004\rA\u0004\u0005\u0008\u0005\u000b\u0001A\u0011\u0001B\u0004\u0003\u0019!W\r\\3uKR)1E!\u0003\u0003\u000c!9\u0011Q\u0007B\u0002\u0001\u0004q\u0005bBA \u0005\u0007\u0001\rA\u0014\u0005\u0008\u0005\u001f\u0001A\u0011\u0001B\t\u0003\u001d\u0011X\r\u001d7bG\u0016$ra\tB\n\u0005+\u00119\u0002C\u0004\u00026\t5\u0001\u0019\u0001(\t\u000f\u0005}\"Q\u0002a\u0001\u001d\"1AL!\u0004A\u0002\u001dBqAa\u0007\u0001\t\u0003\u0011i\"A\u0005j]N,\'\u000f^!mYRI1Ea\u0008\u0003\"\t\r\"Q\u0005\u0005\u0008\u0003\u0003\u0011I\u00021\u0001O\u0011\u0019a&\u0011\u0004a\u0001A\"9\u00111\u0016B\r\u0001\u0004q\u0005BB;\u0003\u001a\u0001\u0007a\nC\u0004\u0003*\u0001!\tAa\u000b\u0002\r%t7/\u001a:u)\u0015\u0019#Q\u0006B\u0018\u0011\u001d\t\tAa\nA\u00029C\u0001\"!\u0016\u0003(\u0001\u0007\u00111\u0010\u0005\u0008\u0005S\u0001A\u0011\u0001B\u001a)\u0015\u0019#Q\u0007B\u001c\u0011\u001d\t\tA!\rA\u00029Cq!!\u0016\u00032\u0001\u0007q\u0005C\u0004\u0003\u001c\u0001!\tAa\u000f\u0015\u000b\r\u0012iDa\u0010\t\u000f\u0005\u0005!\u0011\u0008a\u0001\u001d\"A\u0011\u0011\u000eB\u001d\u0001\u0004\t)\nC\u0004\u0003\u001c\u0001!\tAa\u0011\u0015\u000b\r\u0012)Ea\u0012\t\u000f\u0005\u0005!\u0011\ta\u0001\u001d\"9\u0011\u0011\u000eB!\u0001\u0004\u0001\u0007b\u0002B\u0015\u0001\u0011\u0005!1\n\u000b\u0006G\t5#q\n\u0005\u0008\u0003\u0003\u0011I\u00051\u0001O\u0011!\t)F!\u0013A\u0002\u0005U\u0006b\u0002B\u0015\u0001\u0011\u0005!1\u000b\u000b\u0006G\tU#q\u000b\u0005\u0008\u0003\u0003\u0011\t\u00061\u0001O\u0011!\t)F!\u0015A\u0002\u0005\u0005\u0007b\u0002B\u0015\u0001\u0011\u0005!1\u000c\u000b\u0006G\tu#q\u000c\u0005\u0008\u0003\u0003\u0011I\u00061\u0001O\u0011!\t)F!\u0017A\u0002\u00055\u0007b\u0002B\u0015\u0001\u0011\u0005!1\r\u000b\u0006G\t\u0015$q\r\u0005\u0008\u0003\u0003\u0011\t\u00071\u0001O\u0011\u001d\t)F!\u0019A\u00029CqA!\u000b\u0001\t\u0003\u0011Y\u0007F\u0003$\u0005[\u0012y\u0007C\u0004\u0002\u0002\t%\u0004\u0019\u0001(\t\u0011\u0005U#\u0011\u000ea\u0001\u0003?DqA!\u000b\u0001\t\u0003\u0011\u0019\u0008F\u0003$\u0005k\u00129\u0008C\u0004\u0002\u0002\tE\u0004\u0019\u0001(\t\u0011\u0005U#\u0011\u000fa\u0001\u0003WDqA!\u000b\u0001\t\u0003\u0011Y\u0008F\u0003$\u0005{\u0012y\u0008C\u0004\u0002\u0002\te\u0004\u0019\u0001(\t\u0011\u0005U#\u0011\u0010a\u0001\u0003oDqA!\u000b\u0001\t\u0003\u0011\u0019\tF\u0003$\u0005\u000b\u00139\tC\u0004\u0002\u0002\t\u0005\u0005\u0019\u0001(\t\u000f\u0005U#\u0011\u0011a\u0001\u001d!9!1\u0012\u0001\u0005\u0002\t5\u0015aB5oI\u0016DxJ\u001a\u000b\u0004\u001d\n=\u0005B\u0002/\u0003\n\u0002\u0007q\u0005C\u0004\u0003\u000c\u0002!\tAa%\u0015\u000b9\u0013)Ja&\t\rq\u0013\t\n1\u0001(\u0011\u001d\u0011IJ!%A\u00029\u000b\u0011B\u001a:p[&sG-\u001a=\t\u000f\tu\u0005\u0001\"\u0001\u0003 \u0006YA.Y:u\u0013:$W\r_(g)\rq%\u0011\u0015\u0005\u00079\nm\u0005\u0019A\u0014\t\u000f\tu\u0005\u0001\"\u0001\u0003&R)aJa*\u0003*\"1ALa)A\u0002\u001dBqA!\'\u0003$\u0002\u0007a\n\u0003\u0004\u0003.\u0002!\tEP\u0001\u0008e\u00164XM]:fQ!\u0011YK!-\u0003>\n\u0005\u0007\u0003\u0002BZ\u0005sk!A!.\u000b\u0007\t]f!\u0001\u0006b]:|G/\u0019;j_:LAAa/\u00036\nIQ.[4sCRLwN\\\u0011\u0003\u0005\u007f\u000b\u0011\u000f\u0019:fm\u0016\u00148/\u001a1!e\u0016$XO\u001d8tA\u0005\u0004c.Z<!S:\u001cH/\u00198dK:\u0002\u0003%V:fA\u0001\u0014XM^3sg\u0016\u001cuN\u001c;f]R\u001c\u0008\r\t;pAU\u0004H-\u0019;fA%t\u0007\u0005\u001d7bG\u0016\u0004\u0013M\u001c3!e\u0016$XO\u001d8!i\"\u000cG\u000fI*ue&twMQ;jY\u0012,\'\u000fI5ug\u0016dgML\u0011\u0003\u0005\u0007\u000cQA\r\u00189]ABaAa2\u0001\t\u0003\"\u0016!B2m_:,\u0007B\u0002Bf\u0001\u0011\u0005A+A\u0008sKZ,\'o]3D_:$XM\u001c;t\u0011\u001d\u0011y\r\u0001C!\u0005#\u000c\u0001\u0002^8TiJLgn\u001a\u000b\u0003\u0005\'\u00042a\u0005Bk\u0013\taC\u0003C\u0004\u0003Z\u0002!\tEa7\u0002\u00115\\7\u000b\u001e:j]\u001e,\"Aa5\t\u000f\t}\u0007\u0001\"\u0001\u0003b\u00061!/Z:vYR$\u0012a\n\u0015\u0008\u0001\t\u0015(1\u001eBw!\ry!q]\u0005\u0004\u0005S4!\u0001E*fe&\u000cGNV3sg&|g.V%E\u0003\u00151\u0018\r\\;f=!IyVk\u00010.T\u000f\u0000a\u0002By\u0005!\u0005!1_\u0001\u000e\'R\u0014\u0018N\\4Ck&dG-\u001a:\u0011\u0007-\u0011)P\u0002\u0004\u0002\u0005!\u0005!q_\n\u0006\u0005k\u0014IP\u000c\t\u0004\u001f\tm\u0018b\u0001B\u007f\r\t1\u0011I\\=SK\u001aDq!\u000fB{\t\u0003\u0019\t\u0001\u0006\u0002\u0003t\"1QI!>\u0005\u0002yB!ba\u0002\u0003v\u0006\u0005I\u0011BB\u0005\u0003-\u0011X-\u00193SKN|GN^3\u0015\u0005\r-\u0001cA\n\u0004\u000e%\u00191q\u0002\u000b\u0003\r=\u0013\'.Z2u\u0001"
.end annotation


# static fields
.field public static final serialVersionUID:J = -0x765055fe50292b0fL


# instance fields
.field private final underlying:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x10

    const-string v1, ""

    .line 54
    invoke-direct {p0, v0, v1}, Lscala/collection/mutable/StringBuilder;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const-string v0, ""

    .line 62
    invoke-direct {p0, p1, v0}, Lscala/collection/mutable/StringBuilder;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lscala/collection/mutable/StringBuilder;-><init>(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x10

    .line 67
    invoke-direct {p0, v0, p1}, Lscala/collection/mutable/StringBuilder;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lscala/collection/mutable/StringBuilder;->underlying:Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {p0}, Lscala/collection/mutable/AbstractSeq;-><init>()V

    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->$init$(Lscala/collection/IndexedSeqLike;)V

    invoke-static {p0}, Lscala/collection/IndexedSeq$class;->$init$(Lscala/collection/IndexedSeq;)V

    invoke-static {p0}, Lscala/collection/mutable/IndexedSeqLike$class;->$init$(Lscala/collection/mutable/IndexedSeqLike;)V

    invoke-static {p0}, Lscala/collection/mutable/IndexedSeq$class;->$init$(Lscala/collection/mutable/IndexedSeq;)V

    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->$init$(Lscala/collection/IndexedSeqOptimized;)V

    invoke-static {p0}, Lscala/math/Ordered$class;->$init$(Lscala/math/Ordered;)V

    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->$init$(Lscala/collection/immutable/StringLike;)V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    return-void
.end method

.method private underlying()Ljava/lang/StringBuilder;
    .locals 1

    .line 31
    iget-object v0, p0, Lscala/collection/mutable/StringBuilder;->underlying:Ljava/lang/StringBuilder;

    return-object v0
.end method


# virtual methods
.method public $greater(Ljava/lang/Object;)Z
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lscala/math/Ordered$class;->$greater(Lscala/math/Ordered;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public $greater$eq(Ljava/lang/Object;)Z
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lscala/math/Ordered$class;->$greater$eq(Lscala/math/Ordered;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public $less(Ljava/lang/Object;)Z
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lscala/math/Ordered$class;->$less(Lscala/math/Ordered;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public $less$eq(Ljava/lang/Object;)Z
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lscala/math/Ordered$class;->$less$eq(Lscala/math/Ordered;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public $plus(C)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Lscala/collection/mutable/StringBuilder;->$plus$eq(C)Lscala/collection/mutable/StringBuilder;

    return-object p0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 31
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/StringBuilder;->$plus$eq(C)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;
    .locals 0

    .line 31
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/Growable$class;->$plus$eq(Lscala/collection/generic/Growable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 31
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/StringBuilder;->$plus$eq(C)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(C)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 175
    invoke-virtual {p0, p1}, Lscala/collection/mutable/StringBuilder;->append(C)Lscala/collection/mutable/StringBuilder;

    return-object p0
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/generic/Growable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus$eq(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 1

    .line 180
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public $times(I)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lscala/collection/immutable/StringLike$class;->$times(Lscala/collection/immutable/StringLike;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public append(B)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 261
    invoke-virtual {p0, p1}, Lscala/collection/mutable/StringBuilder;->append(I)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(C)Lscala/collection/mutable/StringBuilder;
    .locals 1

    .line 267
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public append(D)Lscala/collection/mutable/StringBuilder;
    .locals 1

    .line 266
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public append(F)Lscala/collection/mutable/StringBuilder;
    .locals 1

    .line 265
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public append(I)Lscala/collection/mutable/StringBuilder;
    .locals 1

    .line 263
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public append(J)Lscala/collection/mutable/StringBuilder;
    .locals 1

    .line 264
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;
    .locals 1

    .line 200
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 1

    .line 210
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public append(Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;
    .locals 1

    .line 220
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public append(S)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 262
    invoke-virtual {p0, p1}, Lscala/collection/mutable/StringBuilder;->append(I)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(Z)Lscala/collection/mutable/StringBuilder;
    .locals 1

    .line 260
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public appendAll(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 1

    .line 185
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public appendAll(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/StringBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/mutable/StringBuilder;"
        }
    .end annotation

    .line 229
    sget-object v0, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {v0}, Lscala/reflect/ClassTag$;->Char()Lscala/reflect/ClassTag;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/collection/TraversableOnce;->toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    invoke-virtual {p0, p1}, Lscala/collection/mutable/StringBuilder;->appendAll([C)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendAll([C)Lscala/collection/mutable/StringBuilder;
    .locals 1

    .line 237
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public appendAll([CII)Lscala/collection/mutable/StringBuilder;
    .locals 1

    .line 249
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public apply(I)C
    .locals 1

    .line 117
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    return p1
.end method

.method public bridge synthetic apply(I)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lscala/collection/mutable/StringBuilder;->apply(I)C

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/StringBuilder;->apply(I)C

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public capacity()I
    .locals 1

    .line 96
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->capacity()I

    move-result v0

    return v0
.end method

.method public capitalize()Ljava/lang/String;
    .locals 1

    .line 31
    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->capitalize(Lscala/collection/immutable/StringLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public charAt(I)C
    .locals 1

    .line 113
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, Lscala/collection/mutable/StringBuilder;->setLength(I)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->clone()Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscala/collection/mutable/StringBuilder;
    .locals 3

    .line 412
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v0, v1}, Lscala/collection/mutable/StringBuilder;-><init>(Ljava/lang/StringBuilder;)V

    return-object v0
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/mutable/IndexedSeq;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-static {p0}, Lscala/collection/mutable/IndexedSeq$class;->companion(Lscala/collection/mutable/IndexedSeq;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;)I
    .locals 0

    .line 31
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/StringBuilder;->compare(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;)I
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lscala/collection/immutable/StringLike$class;->compare(Lscala/collection/immutable/StringLike;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lscala/math/Ordered$class;->compareTo(Lscala/math/Ordered;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public copyToArray(Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1, p2, p3}, Lscala/collection/IndexedSeqOptimized$class;->copyToArray(Lscala/collection/IndexedSeqOptimized;Ljava/lang/Object;II)V

    return-void
.end method

.method public delete(II)Lscala/collection/mutable/StringBuilder;
    .locals 1

    .line 279
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public deleteCharAt(I)Lscala/collection/mutable/StringBuilder;
    .locals 1

    .line 127
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public drop(I)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->drop(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public dropRight(I)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->dropRight(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public dropWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->dropWhile(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public endsWith(Lscala/collection/GenSeq;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;)Z"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->endsWith(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenSeq;)Z

    move-result p1

    return p1
.end method

.method public ensureCapacity(I)V
    .locals 1

    .line 105
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    return-void
.end method

.method public exists(Lscala/Function1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->exists(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public find(Lscala/Function1;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->find(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TB;",
            "Ljava/lang/Object;",
            "TB;>;)TB;"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->foldLeft(Lscala/collection/IndexedSeqOptimized;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public foldRight(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "Ljava/lang/Object;",
            "TB;TB;>;)TB;"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->foldRight(Lscala/collection/IndexedSeqOptimized;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public forall(Lscala/Function1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->forall(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public foreach(Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "TU;>;)V"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->foreach(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)V

    return-void
.end method

.method public format(Lscala/collection/Seq;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1}, Lscala/collection/immutable/StringLike$class;->format(Lscala/collection/immutable/StringLike;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/StringLike$class;->formatLocal(Lscala/collection/immutable/StringLike;Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lscala/collection/mutable/StringBuilder;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 31
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->hashCode(Lscala/collection/IndexedSeqLike;)I

    move-result v0

    return v0
.end method

.method public head()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->head(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1

    .line 378
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 1

    .line 386
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public indexWhere(Lscala/Function1;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->indexWhere(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public init()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->init(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public insert(IB)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 365
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/StringBuilder;->insert(II)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public insert(IC)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 371
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/StringBuilder;->insert(ILjava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public insert(ID)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 370
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/StringBuilder;->insert(ILjava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public insert(IF)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 369
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/StringBuilder;->insert(ILjava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public insert(II)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 367
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/StringBuilder;->insert(ILjava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public insert(IJ)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 368
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/StringBuilder;->insert(ILjava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public insert(ILjava/lang/Object;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 322
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/StringBuilder;->insert(ILjava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public insert(ILjava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 1

    .line 332
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public insert(IS)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 366
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/StringBuilder;->insert(II)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public insert(IZ)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 364
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/StringBuilder;->insert(ILjava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public insertAll(ILscala/collection/TraversableOnce;)Lscala/collection/mutable/StringBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/TraversableOnce<",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/mutable/StringBuilder;"
        }
    .end annotation

    .line 343
    sget-object v0, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {v0}, Lscala/reflect/ClassTag$;->Char()Lscala/reflect/ClassTag;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/TraversableOnce;->toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/StringBuilder;->insertAll(I[C)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public insertAll(I[C)Lscala/collection/mutable/StringBuilder;
    .locals 1

    .line 353
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public insertAll(I[CII)Lscala/collection/mutable/StringBuilder;
    .locals 1

    .line 310
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->insert(I[CII)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 0

    .line 31
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/StringBuilder;->isDefinedAt(I)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 31
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->isEmpty(Lscala/collection/IndexedSeqOptimized;)Z

    move-result v0

    return v0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->iterator(Lscala/collection/IndexedSeqLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->last(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1

    .line 393
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 1

    .line 401
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public lastIndexWhere(Lscala/Function1;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->lastIndexWhere(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public length()I
    .locals 1

    .line 75
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public lengthCompare(I)I
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->lengthCompare(Lscala/collection/IndexedSeqOptimized;I)I

    move-result p1

    return p1
.end method

.method public length_$eq(I)V
    .locals 1

    .line 76
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method public lines()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->lines(Lscala/collection/immutable/StringLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public linesIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->linesIterator(Lscala/collection/immutable/StringLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public linesWithSeparators()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->linesWithSeparators(Lscala/collection/immutable/StringLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public mapResult(Lscala/Function1;)Lscala/collection/mutable/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NewTo:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Ljava/lang/String;",
            "TNewTo;>;)",
            "Lscala/collection/mutable/Builder<",
            "Ljava/lang/Object;",
            "TNewTo;>;"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public mkString()Ljava/lang/String;
    .locals 1

    .line 436
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lscala/collection/mutable/Builder;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->newBuilder()Lscala/collection/mutable/GrowingBuilder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lscala/collection/mutable/GrowingBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/GrowingBuilder<",
            "Ljava/lang/Object;",
            "Lscala/collection/mutable/StringBuilder;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Lscala/collection/mutable/GrowingBuilder;

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-direct {v0, v1}, Lscala/collection/mutable/GrowingBuilder;-><init>(Lscala/collection/generic/Growable;)V

    return-object v0
.end method

.method public r()Lscala/util/matching/Regex;
    .locals 1

    .line 31
    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->r(Lscala/collection/immutable/StringLike;)Lscala/util/matching/Regex;

    move-result-object v0

    return-object v0
.end method

.method public r(Lscala/collection/Seq;)Lscala/util/matching/Regex;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "Ljava/lang/String;",
            ">;)",
            "Lscala/util/matching/Regex;"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1}, Lscala/collection/immutable/StringLike$class;->r(Lscala/collection/immutable/StringLike;Lscala/collection/Seq;)Lscala/util/matching/Regex;

    move-result-object p1

    return-object p1
.end method

.method public reduceLeft(Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TB;",
            "Ljava/lang/Object;",
            "TB;>;)TB;"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->reduceLeft(Lscala/collection/IndexedSeqOptimized;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduceRight(Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "Ljava/lang/Object;",
            "TB;TB;>;)TB;"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->reduceRight(Lscala/collection/IndexedSeqOptimized;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public replace(IILjava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 1

    .line 293
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public replaceAllLiterally(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/StringLike$class;->replaceAllLiterally(Lscala/collection/immutable/StringLike;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->result()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public result()Ljava/lang/String;
    .locals 1

    .line 442
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverse()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->reverse()Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lscala/collection/mutable/StringBuilder;
    .locals 3

    .line 410
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/mutable/StringBuilder;-><init>(Ljava/lang/StringBuilder;)V

    return-object v0
.end method

.method public reverseContents()Lscala/collection/mutable/StringBuilder;
    .locals 1

    .line 419
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public reverseIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->reverseIterator(Lscala/collection/IndexedSeqOptimized;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public sameElements(Lscala/collection/GenIterable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TB;>;)Z"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->sameElements(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenIterable;)Z

    move-result p1

    return p1
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$endsWith(Lscala/collection/GenSeq;)Z
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->endsWith(Lscala/collection/SeqLike;Lscala/collection/GenSeq;)Z

    move-result p1

    return p1
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$head()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-static {p0}, Lscala/collection/IterableLike$class;->head(Lscala/collection/IterableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$init()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->init(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$last()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->last(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$reduceLeft(Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceLeft(Lscala/collection/TraversableOnce;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$reduceRight(Lscala/Function2;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->reduceRight(Lscala/collection/IterableLike;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$sameElements(Lscala/collection/GenIterable;)Z
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->sameElements(Lscala/collection/IterableLike;Lscala/collection/GenIterable;)Z

    move-result p1

    return p1
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$tail()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->tail(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-static {p0, p1, p2}, Lscala/collection/IterableLike$class;->zip(Lscala/collection/IterableLike;Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public segmentLength(Lscala/Function1;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->segmentLength(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic seq()Lscala/collection/IndexedSeq;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/mutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/IndexedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-static {p0}, Lscala/collection/mutable/IndexedSeq$class;->seq(Lscala/collection/mutable/IndexedSeq;)Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Iterable;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Seq;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Traversable;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public setCharAt(IC)V
    .locals 1

    .line 137
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    return-void
.end method

.method public setLength(I)V
    .locals 1

    .line 89
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method public sizeHint(I)V
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->sizeHint(Lscala/collection/mutable/Builder;I)V

    return-void
.end method

.method public sizeHint(Lscala/collection/TraversableLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike<",
            "**>;)V"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->sizeHint(Lscala/collection/mutable/Builder;Lscala/collection/TraversableLike;)V

    return-void
.end method

.method public sizeHint(Lscala/collection/TraversableLike;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike<",
            "**>;I)V"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHint(Lscala/collection/mutable/Builder;Lscala/collection/TraversableLike;I)V

    return-void
.end method

.method public sizeHintBounded(ILscala/collection/TraversableLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/TraversableLike<",
            "**>;)V"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V

    return-void
.end method

.method public slice(II)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/StringLike$class;->slice(Lscala/collection/immutable/StringLike;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public span(Lscala/Function1;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/mutable/StringBuilder;",
            "Lscala/collection/mutable/StringBuilder;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->span(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public split(C)[Ljava/lang/String;
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lscala/collection/immutable/StringLike$class;->split(Lscala/collection/immutable/StringLike;C)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public split([C)[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    .line 31
    invoke-static {p0, p1}, Lscala/collection/immutable/StringLike$class;->split(Lscala/collection/immutable/StringLike;[C)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public splitAt(I)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Tuple2<",
            "Lscala/collection/mutable/StringBuilder;",
            "Lscala/collection/mutable/StringBuilder;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->splitAt(Lscala/collection/IndexedSeqOptimized;I)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public startsWith(Lscala/collection/GenSeq;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;I)Z"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->startsWith(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenSeq;I)Z

    move-result p1

    return p1
.end method

.method public stripLineEnd()Ljava/lang/String;
    .locals 1

    .line 31
    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->stripLineEnd(Lscala/collection/immutable/StringLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stripMargin()Ljava/lang/String;
    .locals 1

    .line 31
    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->stripMargin(Lscala/collection/immutable/StringLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stripMargin(C)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lscala/collection/immutable/StringLike$class;->stripMargin(Lscala/collection/immutable/StringLike;C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public stripPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lscala/collection/immutable/StringLike$class;->stripPrefix(Lscala/collection/immutable/StringLike;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public stripSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lscala/collection/immutable/StringLike$class;->stripSuffix(Lscala/collection/immutable/StringLike;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    .line 171
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public substring(I)Ljava/lang/String;
    .locals 1

    .line 152
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lscala/collection/mutable/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public substring(II)Ljava/lang/String;
    .locals 1

    .line 166
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public tail()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->tail(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public take(I)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->take(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public takeRight(I)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->takeRight(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public takeWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->takeWhile(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thisCollection()Lscala/collection/IndexedSeq;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->thisCollection()Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->thisCollection()Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Seq;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->thisCollection()Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->thisCollection()Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/mutable/IndexedSeq;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->thisCollection()Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public thisCollection()Lscala/collection/mutable/StringBuilder;
    .locals 0

    return-object p0
.end method

.method public toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag<",
            "TB;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1}, Lscala/collection/immutable/StringLike$class;->toArray(Lscala/collection/immutable/StringLike;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[C
    .locals 4

    .line 70
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->length()I

    move-result v0

    new-array v0, v0, [C

    .line 71
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v0, v3}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    return-object v0
.end method

.method public toBoolean()Z
    .locals 1

    .line 31
    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->toBoolean(Lscala/collection/immutable/StringLike;)Z

    move-result v0

    return v0
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

    .line 31
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->toBuffer(Lscala/collection/IndexedSeqLike;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public toByte()B
    .locals 1

    .line 31
    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->toByte(Lscala/collection/immutable/StringLike;)B

    move-result v0

    return v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;
    .locals 0

    .line 31
    check-cast p1, Lscala/collection/mutable/StringBuilder;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/StringBuilder;->toCollection(Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;
    .locals 0

    .line 31
    check-cast p1, Lscala/collection/mutable/StringBuilder;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/StringBuilder;->toCollection(Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Seq;
    .locals 0

    .line 31
    check-cast p1, Lscala/collection/mutable/StringBuilder;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/StringBuilder;->toCollection(Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 31
    check-cast p1, Lscala/collection/mutable/StringBuilder;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/StringBuilder;->toCollection(Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toCollection(Ljava/lang/Object;)Lscala/collection/mutable/IndexedSeq;
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lscala/collection/mutable/IndexedSeqLike$class;->toCollection(Lscala/collection/mutable/IndexedSeqLike;Ljava/lang/Object;)Lscala/collection/mutable/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public toCollection(Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    return-object p1
.end method

.method public toDouble()D
    .locals 2

    .line 31
    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->toDouble(Lscala/collection/immutable/StringLike;)D

    move-result-wide v0

    return-wide v0
.end method

.method public toFloat()F
    .locals 1

    .line 31
    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->toFloat(Lscala/collection/immutable/StringLike;)F

    move-result v0

    return v0
.end method

.method public toInt()I
    .locals 1

    .line 31
    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->toInt(Lscala/collection/immutable/StringLike;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toLong()J
    .locals 2

    .line 31
    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->toLong(Lscala/collection/immutable/StringLike;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toShort()S
    .locals 1

    .line 31
    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->toShort(Lscala/collection/immutable/StringLike;)S

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 430
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public update(IC)V
    .locals 0

    .line 141
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/StringBuilder;->setCharAt(IC)V

    return-void
.end method

.method public bridge synthetic update(ILjava/lang/Object;)V
    .locals 0

    .line 31
    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/StringBuilder;->update(IC)V

    return-void
.end method

.method public bridge synthetic view()Lscala/collection/IterableView;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->view()Lscala/collection/mutable/IndexedSeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/IterableView;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/StringBuilder;->view(II)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/SeqView;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->view()Lscala/collection/mutable/IndexedSeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/SeqView;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/StringBuilder;->view(II)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->view()Lscala/collection/mutable/IndexedSeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/StringBuilder;->view(II)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public view()Lscala/collection/mutable/IndexedSeqView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 31
    invoke-static {p0}, Lscala/collection/mutable/IndexedSeqLike$class;->view(Lscala/collection/mutable/IndexedSeqLike;)Lscala/collection/mutable/IndexedSeqView;

    move-result-object v0

    return-object v0
.end method

.method public view(II)Lscala/collection/mutable/IndexedSeqView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/mutable/IndexedSeqView<",
            "Ljava/lang/Object;",
            "Lscala/collection/mutable/IndexedSeq<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/IndexedSeqLike$class;->view(Lscala/collection/mutable/IndexedSeqLike;II)Lscala/collection/mutable/IndexedSeqView;

    move-result-object p1

    return-object p1
.end method

.method public zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/StringBuilder;",
            "Lscala/Tuple2<",
            "TA1;TB;>;TThat;>;)TThat;"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->zip(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public zipWithIndex(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/StringBuilder;",
            "Lscala/Tuple2<",
            "TA1;",
            "Ljava/lang/Object;",
            ">;TThat;>;)TThat;"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->zipWithIndex(Lscala/collection/IndexedSeqOptimized;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
