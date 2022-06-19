.class public abstract Lscala/collection/immutable/List;
.super Lscala/collection/AbstractSeq;
.source "List.scala"

# interfaces
.implements Lscala/collection/immutable/LinearSeq;
.implements Lscala/Product;
.implements Lscala/collection/LinearSeqOptimized;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/immutable/List$SerializationProxy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractSeq<",
        "TA;>;",
        "Lscala/collection/immutable/LinearSeq<",
        "TA;>;",
        "Lscala/Product;",
        "Lscala/collection/LinearSeqOptimized<",
        "TA;",
        "Lscala/collection/immutable/List<",
        "TA;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\rUc!B\u0001\u0003\u0003CI!\u0001\u0002\'jgRT!a\u0001\u0003\u0002\u0013%lW.\u001e;bE2,\'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001QC\u0001\u0006\u0012\'\u001d\u00011bG\u0010#S5\u00022\u0001D\u0007\u0010\u001b\u0005!\u0011B\u0001\u0008\u0005\u0005-\t%m\u001d;sC\u000e$8+Z9\u0011\u0005A\tB\u0002\u0001\u0003\u0007%\u0001!)\u0019A\n\u0003\u0003\u0005\u000b\"\u0001\u0006\r\u0011\u0005U1R\"\u0001\u0004\n\u0005]1!a\u0002(pi\"Lgn\u001a\t\u0003+eI!A\u0007\u0004\u0003\u0007\u0005s\u0017\u0010E\u0002\u001d;=i\u0011AA\u0005\u0003=\t\u0011\u0011\u0002T5oK\u0006\u00148+Z9\u0011\u0005U\u0001\u0013BA\u0011\u0007\u0005\u001d\u0001&o\u001c3vGR\u0004Ba\t\u0014\u0010Q5\tAE\u0003\u0002&\t\u00059q-\u001a8fe&\u001c\u0017BA\u0014%\u0005i9UM\\3sS\u000e$&/\u0019<feN\u000c\'\r\\3UK6\u0004H.\u0019;f!\ta\u0002\u0001\u0005\u0003\rU=a\u0013BA\u0016\u0005\u0005Ia\u0015N\\3beN+\u0017o\u00149uS6L\'0\u001a3\u0011\u0007q\u0001q\u0002\u0005\u0002/g5\tqF\u0003\u00021c\u0005\u0011\u0011n\u001c\u0006\u0002e\u0005!!.\u0019<b\u0013\t!tF\u0001\u0007TKJL\u0017\r\\5{C\ndW\rC\u00037\u0001\u0011\u0005q\'\u0001\u0004=S:LGO\u0010\u000b\u0002Y!)\u0011\u0008\u0001C!u\u0005I1m\\7qC:LwN\\\u000b\u0002wA\u00191\u0005\u0010\u0015\n\u0005u\"#\u0001E$f]\u0016\u0014\u0018nY\"p[B\u000cg.[8o\u0011\u0015y\u0004A\"\u0001A\u0003\u001dI7/R7qif,\u0012!\u0011\t\u0003+\tK!a\u0011\u0004\u0003\u000f\t{w\u000e\\3b]\")Q\t\u0001D\u0001\r\u0006!\u0001.Z1e+\u0005y\u0001\"\u0002%\u0001\r\u0003I\u0015\u0001\u0002;bS2,\u0012\u0001\u000c\u0005\u0006\u0017\u0002!\t\u0001T\u0001\rI\r|Gn\u001c8%G>dwN\\\u000b\u0003\u001bB#\"AT*\u0011\u0007q\u0001q\n\u0005\u0002\u0011!\u0012)\u0011K\u0013b\u0001%\n\t!)\u0005\u0002\u00101!)AK\u0013a\u0001\u001f\u0006\t\u0001\u0010C\u0003W\u0001\u0011\u0005q+\u0001\n%G>dwN\u001c\u0013d_2|g\u000eJ2pY>tWC\u0001-\\)\tIF\u000cE\u0002\u001d\u0001i\u0003\"\u0001E.\u0005\u000bE+&\u0019\u0001*\t\u000bu+\u0006\u0019A-\u0002\rA\u0014XMZ5y\u0011\u0015y\u0006\u0001\"\u0001a\u0003i\u0011XM^3sg\u0016|FeY8m_:$3m\u001c7p]\u0012\u001aw\u000e\\8o+\t\tG\r\u0006\u0002cKB\u0019A\u0004A2\u0011\u0005A!G!B)_\u0005\u0004\u0011\u0006\"B/_\u0001\u0004\u0011\u0007\"B4\u0001\t\u000bA\u0017aC7ba\u000e{gn]3sm\u0016,\"!\u001b7\u0015\u0005)\u000c\u0008c\u0001\u000f\u0001WB\u0011\u0001\u0003\u001c\u0003\u0006#\u001a\u0014\r!\\\t\u0003\u001f9\u0004\"!F8\n\u0005A4!AB!osJ+g\rC\u0003sM\u0002\u00071/A\u0001g!\u0011)BoD6\n\u0005U4!!\u0003$v]\u000e$\u0018n\u001c82Q\t1w\u000f\u0005\u0002\u0016q&\u0011\u0011P\u0002\u0002\u0007S:d\u0017N\\3\t\u000bm\u0004A\u0011\t?\u0002\u0015\u0011\u0002H.^:%a2,8/F\u0003~\u0003#\t\t\u0001F\u0002\u007f\u0003\'!2a`A\u0003!\r\u0001\u0012\u0011\u0001\u0003\u0007\u0003\u0007Q(\u0019A\n\u0003\tQC\u0017\r\u001e\u0005\u0008\u0003\u000fQ\u00089AA\u0005\u0003\t\u0011g\rE\u0004$\u0003\u0017a\u0013qB@\n\u0007\u00055AE\u0001\u0007DC:\u0014U/\u001b7e\rJ|W\u000eE\u0002\u0011\u0003#!Q!\u0015>C\u0002ICq!!\u0006{\u0001\u0004\t9\"\u0001\u0003uQ\u0006$\u0008#\u0002\u0007\u0002\u001a\u0005=\u0011bAA\u000e\t\t\u0011r)\u001a8Ue\u00064XM]:bE2,wJ\\2f\u0011\u001d\ty\u0002\u0001C!\u0003C\t1\u0002\n9mkN$3m\u001c7p]V1\u00111EA\u0019\u0003S!B!!\n\u00024Q!\u0011qEA\u0016!\r\u0001\u0012\u0011\u0006\u0003\u0008\u0003\u0007\tiB1\u0001\u0014\u0011!\t9!!\u0008A\u0004\u00055\u0002\u0003C\u0012\u0002\u000c1\ny#a\n\u0011\u0007A\t\t\u0004\u0002\u0004R\u0003;\u0011\rA\u0015\u0005\t\u0003k\ti\u00021\u0001\u00020\u0005!Q\r\\3n\u0011\u0019\tI\u0004\u0001C!\u0013\u00061Ao\u001c\'jgRDq!!\u0010\u0001\t\u0003\ny$\u0001\u0003uC.,Gc\u0001\u0017\u0002B!A\u00111IA\u001e\u0001\u0004\t)%A\u0001o!\r)\u0012qI\u0005\u0004\u0003\u00132!aA%oi\"9\u0011Q\n\u0001\u0005B\u0005=\u0013\u0001\u00023s_B$2\u0001LA)\u0011!\t\u0019%a\u0013A\u0002\u0005\u0015\u0003bBA+\u0001\u0011\u0005\u0013qK\u0001\u0006g2L7-\u001a\u000b\u0006Y\u0005e\u0013Q\u000c\u0005\t\u00037\n\u0019\u00061\u0001\u0002F\u0005!aM]8n\u0011!\ty&a\u0015A\u0002\u0005\u0015\u0013!B;oi&d\u0007bBA2\u0001\u0011\u0005\u0013QM\u0001\ni\u0006\\WMU5hQR$2\u0001LA4\u0011!\t\u0019%!\u0019A\u0002\u0005\u0015\u0003bBA6\u0001\u0011\u0005\u0013QN\u0001\u0008gBd\u0017\u000e^!u)\u0011\ty\'!\u001e\u0011\u000bU\t\t\u0008\u000c\u0017\n\u0007\u0005MdA\u0001\u0004UkBdWM\r\u0005\t\u0003\u0007\nI\u00071\u0001\u0002F!9\u0011\u0011\u0010\u0001\u0005F\u0005m\u0014aA7baV1\u0011QPAF\u0003\u0007#B!a \u0002\u000eR!\u0011\u0011QAC!\r\u0001\u00121\u0011\u0003\u0008\u0003\u0007\t9H1\u0001\u0014\u0011!\t9!a\u001eA\u0004\u0005\u001d\u0005\u0003C\u0012\u0002\u000c1\nI)!!\u0011\u0007A\tY\t\u0002\u0004R\u0003o\u0012\ra\u0005\u0005\u0008e\u0006]\u0004\u0019AAH!\u0015)BoDAEQ\u0011\t9(a%\u0011\u0007U\t)*C\u0002\u0002\u0018\u001a\u0011\u0001B\\8j]2Lg.\u001a\u0005\u0008\u00037\u0003AQIAO\u0003\u001d\u0019w\u000e\u001c7fGR,b!a(\u0002.\u0006\u0015F\u0003BAQ\u0003_#B!a)\u0002(B\u0019\u0001#!*\u0005\u000f\u0005\r\u0011\u0011\u0014b\u0001\'!A\u0011qAAM\u0001\u0008\tI\u000b\u0005\u0005$\u0003\u0017a\u00131VAR!\r\u0001\u0012Q\u0016\u0003\u0007#\u0006e%\u0019A\n\t\u0011\u0005E\u0016\u0011\u0014a\u0001\u0003g\u000b!\u0001\u001d4\u0011\rU\t)lDAV\u0013\r\t9L\u0002\u0002\u0010!\u0006\u0014H/[1m\rVt7\r^5p]\"\"\u0011\u0011TAJ\u0011\u001d\ti\u000c\u0001C#\u0003\u007f\u000bqA\u001a7bi6\u000b\u0007/\u0006\u0004\u0002B\u0006=\u0017q\u0019\u000b\u0005\u0003\u0007\u000c\t\u000e\u0006\u0003\u0002F\u0006%\u0007c\u0001\t\u0002H\u00129\u00111AA^\u0005\u0004\u0019\u0002\u0002CA\u0004\u0003w\u0003\u001d!a3\u0011\u0011\r\nY\u0001LAg\u0003\u000b\u00042\u0001EAh\t\u0019\t\u00161\u0018b\u0001\'!9!/a/A\u0002\u0005M\u0007#B\u000bu\u001f\u0005U\u0007#\u0002\u0007\u0002\u001a\u00055\u0007\u0006BA^\u0003\'Cq!a7\u0001\t\u000b\ni.A\u0005uC.,w\u000b[5mKR\u0019A&a8\t\u0011\u0005\u0005\u0018\u0011\u001ca\u0001\u0003G\u000c\u0011\u0001\u001d\t\u0005+Q|\u0011\tK\u0002\u0002Z^Dq!!;\u0001\t\u000b\nY/A\u0005ee>\u0004x\u000b[5mKR\u0019A&!<\t\u0011\u0005\u0005\u0018q\u001da\u0001\u0003GD3!a:x\u0011\u001d\t\u0019\u0010\u0001C#\u0003k\u000cAa\u001d9b]R!\u0011qNA|\u0011!\t\t/!=A\u0002\u0005\r\u0008fAAyo\"9\u0011Q \u0001\u0005F\u0005}\u0018a\u00024pe\u0016\u000c7\r[\u000b\u0005\u0005\u0003\u0011y\u0001\u0006\u0003\u0003\u0004\t%\u0001cA\u000b\u0003\u0006%\u0019!q\u0001\u0004\u0003\tUs\u0017\u000e\u001e\u0005\u0008e\u0006m\u0008\u0019\u0001B\u0006!\u0015)Bo\u0004B\u0007!\r\u0001\"q\u0002\u0003\u0008\u0005#\tYP1\u0001\u0014\u0005\u0005)\u0006fAA~o\"1!q\u0003\u0001\u0005B%\u000bqA]3wKJ\u001cX\rC\u0004\u0003\u001c\u0001!\tE!\u0008\u0002\u0013\u0019|G\u000e\u001a*jO\"$X\u0003\u0002B\u0010\u0005K!BA!\t\u00032Q!!1\u0005B\u0014!\r\u0001\"Q\u0005\u0003\u0007#\ne!\u0019A\n\t\u0011\t%\"\u0011\u0004a\u0001\u0005W\t!a\u001c9\u0011\u0011U\u0011ic\u0004B\u0012\u0005GI1Aa\u000c\u0007\u0005%1UO\\2uS>t\'\u0007\u0003\u0005\u00034\te\u0001\u0019\u0001B\u0012\u0003\u0005Q\u0008b\u0002B\u001c\u0001\u0011\u0005#\u0011H\u0001\rgR\u0014\u0018N\\4Qe\u00164\u0017\u000e_\u000b\u0003\u0005w\u0001BA!\u0010\u0003D5\u0011!q\u0008\u0006\u0004\u0005\u0003\n\u0014\u0001\u00027b]\u001eLAA!\u0012\u0003@\t11\u000b\u001e:j]\u001eDqA!\u0013\u0001\t\u0003\u0012Y%\u0001\u0005u_N#(/Z1n+\t\u0011i\u0005\u0005\u0003\u001d\u0005\u001fz\u0011b\u0001B)\u0005\t11\u000b\u001e:fC6DqA!\u0016\u0001\t+\u00119&\u0001\u0007xe&$XMU3qY\u0006\u001cW\rF\u0001oS\u0015\u0001!1\u000cB0\u0013\r\u0011iF\u0001\u0002\rI\r|Gn\u001c8%G>dwN\u001c\u0006\u0004\u0005C\u0012\u0011a\u0001(jY\":\u0001A!\u001a\u0003l\t5\u0004cA\u000b\u0003h%\u0019!\u0011\u000e\u0004\u0003!M+\'/[1m-\u0016\u00148/[8o+&#\u0015!\u0002<bYV,g\u0004CV\u0011XTJ/{\u0001.\u0008\u000f\tE$\u0001#\u0001\u0003t\u0005!A*[:u!\ra\"Q\u000f\u0004\u0007\u0003\tA\tAa\u001e\u0014\r\tU$\u0011\u0010B@!\u0011\u0019#1\u0010\u0015\n\u0007\tuDE\u0001\u0006TKF4\u0015m\u0019;pef\u00042!\u0006BA\u0013\t!d\u0001C\u00047\u0005k\"\tA!\"\u0015\u0005\tM\u0004\u0002\u0003BE\u0005k\"\u0019Aa#\u0002\u0019\r\u000cgNQ;jY\u00124%o\\7\u0016\t\t5%1T\u000b\u0003\u0005\u001f\u0003\u0012bIA\u0006\u0005#\u0013IJ!(\u0011\t\tM%QS\u0007\u0003\u0005kJ1Aa&=\u0005\u0011\u0019u\u000e\u001c7\u0011\u0007A\u0011Y\n\u0002\u0004\u0013\u0005\u000f\u0013\ra\u0005\t\u00059\u0001\u0011I\n\u0003\u0005\u0003\"\nUD\u0011\u0001BR\u0003)qWm\u001e\"vS2$WM]\u000b\u0005\u0005K\u0013),\u0006\u0002\u0003(BA!\u0011\u0016BX\u0005g\u00139,\u0004\u0002\u0003,*\u0019!Q\u0016\u0003\u0002\u000f5,H/\u00192mK&!!\u0011\u0017BV\u0005\u001d\u0011U/\u001b7eKJ\u00042\u0001\u0005B[\t\u0019\u0011\"q\u0014b\u0001\'A!A\u0004\u0001BZ\u0011!\u0011YL!\u001e\u0005B\tu\u0016!B3naRLX\u0003\u0002B`\u0005\u000b,\"A!1\u0011\tq\u0001!1\u0019\t\u0004!\t\u0015GA\u0002\n\u0003:\n\u00071\u0003\u0003\u0005\u0003J\nUD\u0011\tBf\u0003\u0015\t\u0007\u000f\u001d7z+\u0011\u0011iMa5\u0015\t\t=\'Q\u001b\t\u00059\u0001\u0011\t\u000eE\u0002\u0011\u0005\'$aA\u0005Bd\u0005\u0004\u0019\u0002\u0002\u0003Bl\u0005\u000f\u0004\rA!7\u0002\u0005a\u001c\u0008#B\u000b\u0003\\\nE\u0017b\u0001Bo\r\tQAH]3qK\u0006$X\r\u001a \t\u0017\t\u0005(Q\u000fb\u0001\n\u0003!!1]\u0001\u0012a\u0006\u0014H/[1m\u001d>$\u0018\t\u001d9mS\u0016$WC\u0001Bs%\u0015\u00119O\u001cBx\r\u001d\u0011IOa;\u0001\u0005K\u0014A\u0002\u0010:fM&tW-\\3oizB\u0011B!<\u0003v\u0001\u0006IA!:\u0002%A\u000c\'\u000f^5bY:{G/\u00119qY&,G\r\t\t\u0005+QD\u0002DB\u0004\u0003t\nUDA!>\u0003%M+\'/[1mSj\u000cG/[8o!J|\u00070_\u000b\u0005\u0005o\u001c\u0019a\u0005\u0003\u0003r:l\u0003b\u0003B~\u0005c\u0014\t\u0019!C\u0005\u0005{\u000cAa\u001c:jOV\u0011!q \t\u00059\u0001\u0019\t\u0001E\u0002\u0011\u0007\u0007!aA\u0005By\u0005\u0004\u0019\u0002bCB\u0004\u0005c\u0014\t\u0019!C\u0005\u0007\u0013\t\u0001b\u001c:jO~#S-\u001d\u000b\u0005\u0005\u0007\u0019Y\u0001\u0003\u0006\u0004\u000e\r\u0015\u0011\u0011!a\u0001\u0005\u007f\u000c1\u0001\u001f\u00132\u0011-\u0019\tB!=\u0003\u0002\u0003\u0006KAa@\u0002\u000b=\u0014\u0018n\u001a\u0011)\t\r=1Q\u0003\t\u0004+\r]\u0011bAB\r\r\tIAO]1og&,g\u000e\u001e\u0005\u0008m\tEH\u0011AB\u000f)\u0011\u0019yb!\t\u0011\r\tM%\u0011_B\u0001\u0011!\u0011Ypa\u0007A\u0002\t}\u0008\u0002CB\u0013\u0005c$Iaa\n\u0002\u0017]\u0014\u0018\u000e^3PE*,7\r\u001e\u000b\u0005\u0005\u0007\u0019I\u0003\u0003\u0005\u0004,\r\r\u0002\u0019AB\u0017\u0003\ryW\u000f\u001e\t\u0004]\r=\u0012bAB\u0019_\t\u0011rJ\u00196fGR|U\u000f\u001e9viN#(/Z1n\u0011!\u0019)D!=\u0005\n\r]\u0012A\u0003:fC\u0012|%M[3diR!!1AB\u001d\u0011!\u0019Yda\rA\u0002\ru\u0012AA5o!\rq3qH\u0005\u0004\u0007\u0003z#!E(cU\u0016\u001cG/\u00138qkR\u001cFO]3b[\"A1Q\tBy\t\u0013\u00119&A\u0006sK\u0006$\'+Z:pYZ,\u0007\u0006\u0003By\u0005K\u0012Yg!\u0013\u001f\u0003\u0005A!b!\u0012\u0003v\u0005\u0005I\u0011BB\')\t\u0019y\u0005\u0005\u0003\u0003>\rE\u0013\u0002BB*\u0005\u007f\u0011aa\u00142kK\u000e$\u0008"
.end annotation


# static fields
.field public static final serialVersionUID:J = -0x546f14cb162dfca6L


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Lscala/collection/AbstractSeq;-><init>()V

    invoke-static {p0}, Lscala/collection/immutable/Traversable$class;->$init$(Lscala/collection/immutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/immutable/Iterable$class;->$init$(Lscala/collection/immutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/immutable/Seq$class;->$init$(Lscala/collection/immutable/Seq;)V

    invoke-static {p0}, Lscala/collection/LinearSeqLike$class;->$init$(Lscala/collection/LinearSeqLike;)V

    invoke-static {p0}, Lscala/collection/LinearSeq$class;->$init$(Lscala/collection/LinearSeq;)V

    invoke-static {p0}, Lscala/collection/immutable/LinearSeq$class;->$init$(Lscala/collection/immutable/LinearSeq;)V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    invoke-static {p0}, Lscala/collection/LinearSeqOptimized$class;->$init$(Lscala/collection/LinearSeqOptimized;)V

    return-void
.end method

.method public static ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenTraversableFactory<",
            "Lscala/collection/immutable/List;",
            ">.GenericCanBuildFrom<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v0}, Lscala/collection/immutable/List$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public static canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/List<",
            "*>;TA;",
            "Lscala/collection/immutable/List<",
            "TA;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v0}, Lscala/collection/immutable/List$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lscala/collection/Seq;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v0, p0}, Lscala/collection/immutable/List$;->concat(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static empty()Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v0}, Lscala/collection/immutable/List$;->empty()Lscala/collection/GenTraversable;

    move-result-object v0

    return-object v0
.end method

.method public static empty()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/List<",
            "TA;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v0}, Lscala/collection/immutable/List$;->empty()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public static fill(IIIIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 7

    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lscala/collection/immutable/List$;->fill(IIIIILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(IIIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 6

    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lscala/collection/immutable/List$;->fill(IIIILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(IIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/immutable/List$;->fill(IIILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(IILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/immutable/List$;->fill(IILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(ILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/immutable/List$;->fill(ILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(Ljava/lang/Object;ILscala/Function1;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/immutable/List$;->iterate(Ljava/lang/Object;ILscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method private final loop$1(Lscala/collection/mutable/ListBuffer;Lscala/collection/immutable/List;Lscala/collection/immutable/List;Lscala/Function1;)Lscala/collection/immutable/List;
    .locals 2

    .line 167
    :goto_0
    invoke-virtual {p3}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    .line 169
    :cond_0
    invoke-virtual {p1, p2}, Lscala/collection/mutable/ListBuffer;->prependToList(Lscala/collection/immutable/List;)Lscala/collection/immutable/List;

    move-result-object p2

    :goto_1
    return-object p2

    .line 172
    :cond_1
    invoke-virtual {p3}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v0

    .line 173
    invoke-interface {p4, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    .line 176
    invoke-virtual {p3}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lscala/collection/immutable/List;

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 178
    new-instance p1, Lscala/collection/mutable/ListBuffer;

    invoke-direct {p1}, Lscala/collection/mutable/ListBuffer;-><init>()V

    :cond_3
    :goto_2
    if-eq p2, p3, :cond_4

    .line 181
    invoke-virtual {p2}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lscala/collection/mutable/ListBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ListBuffer;

    .line 182
    invoke-virtual {p2}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/collection/immutable/List;

    goto :goto_2

    .line 184
    :cond_4
    invoke-virtual {p1, v1}, Lscala/collection/mutable/ListBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ListBuffer;

    .line 185
    invoke-virtual {p3}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Lscala/collection/immutable/List;

    move-object p2, p3

    goto :goto_0
.end method

.method private final loop$2(Lscala/collection/immutable/List;Lscala/collection/immutable/List;)Lscala/collection/immutable/List;
    .locals 1

    .line 248
    :goto_0
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 250
    :cond_0
    instance-of v0, p1, Lscala/collection/immutable/$colon$colon;

    if-eqz v0, :cond_1

    check-cast p1, Lscala/collection/immutable/$colon$colon;

    invoke-virtual {p1}, Lscala/collection/immutable/$colon$colon;->tl$1()Lscala/collection/immutable/List;

    move-result-object p1

    invoke-virtual {p2}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/collection/immutable/List;

    goto :goto_0

    .line 248
    :cond_1
    new-instance p2, Lscala/MatchError;

    invoke-direct {p2, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method private final loop$3(Lscala/collection/immutable/List;Lscala/Function1;)Lscala/collection/immutable/List;
    .locals 1

    .line 360
    :goto_0
    invoke-virtual {p1}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p1}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/List;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static range(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/immutable/List$;->range(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static range(Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/immutable/List$;->range(Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IIIIILscala/Function5;)Lscala/collection/GenTraversable;
    .locals 7

    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lscala/collection/immutable/List$;->tabulate(IIIIILscala/Function5;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IIIILscala/Function4;)Lscala/collection/GenTraversable;
    .locals 6

    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lscala/collection/immutable/List$;->tabulate(IIIILscala/Function4;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IIILscala/Function3;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/immutable/List$;->tabulate(IIILscala/Function3;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IILscala/Function2;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/immutable/List$;->tabulate(IILscala/Function2;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(ILscala/Function1;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/immutable/List$;->tabulate(ILscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static unapplySeq(Lscala/collection/Seq;)Lscala/Some;
    .locals 1

    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v0, p0}, Lscala/collection/immutable/List$;->unapplySeq(Lscala/collection/Seq;)Lscala/Some;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public $colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;)",
            "Lscala/collection/immutable/List<",
            "TB;>;"
        }
    .end annotation

    .line 112
    new-instance v0, Lscala/collection/immutable/$colon$colon;

    invoke-direct {v0, p1, p0}, Lscala/collection/immutable/$colon$colon;-><init>(Ljava/lang/Object;Lscala/collection/immutable/List;)V

    return-object v0
.end method

.method public $colon$colon$colon(Lscala/collection/immutable/List;)Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/List<",
            "TB;>;)",
            "Lscala/collection/immutable/List<",
            "TB;>;"
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p1}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, p0

    goto :goto_0

    .line 128
    :cond_1
    new-instance v0, Lscala/collection/mutable/ListBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ListBuffer;-><init>()V

    invoke-virtual {v0, p1}, Lscala/collection/mutable/ListBuffer;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ListBuffer;

    move-result-object p1

    invoke-virtual {p1, p0}, Lscala/collection/mutable/ListBuffer;->prependToList(Lscala/collection/immutable/List;)Lscala/collection/immutable/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public $plus$colon(Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/List<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 198
    instance-of v0, p2, Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object p1

    goto :goto_0

    .line 200
    :cond_0
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->$plus$colon(Lscala/collection/SeqLike;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public $plus$plus(Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/List<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 195
    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v0}, Lscala/collection/immutable/List$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    if-ne p2, v0, :cond_0

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object p1

    invoke-interface {p1}, Lscala/collection/TraversableOnce;->toList()Lscala/collection/immutable/List;

    move-result-object p1

    invoke-virtual {p1, p0}, Lscala/collection/immutable/List;->$colon$colon$colon(Lscala/collection/immutable/List;)Lscala/collection/immutable/List;

    move-result-object p1

    goto :goto_0

    .line 196
    :cond_0
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->$plus$plus(Lscala/collection/TraversableLike;Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public apply(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation

    .line 84
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->apply(Lscala/collection/LinearSeqOptimized;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 84
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/List;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final collect(Lscala/PartialFunction;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "TA;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/List<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 290
    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v0}, Lscala/collection/immutable/List$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    if-ne p2, v0, :cond_7

    .line 291
    sget-object p2, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    if-ne p0, p2, :cond_0

    sget-object p1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    move-object v0, p0

    .line 295
    :cond_1
    invoke-virtual {v0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v2}, Lscala/collection/immutable/List$;->partialNotApplied()Lscala/Function1;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lscala/PartialFunction;->applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;

    move-result-object v1

    .line 297
    sget-object v2, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v2}, Lscala/collection/immutable/List$;->partialNotApplied()Lscala/Function1;

    move-result-object v2

    if-eq v1, v2, :cond_2

    new-instance p2, Lscala/collection/immutable/$colon$colon;

    sget-object v2, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-direct {p2, v1, v2}, Lscala/collection/immutable/$colon$colon;-><init>(Ljava/lang/Object;Lscala/collection/immutable/List;)V

    .line 298
    :cond_2
    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    .line 299
    sget-object v1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    if-ne v0, v1, :cond_4

    if-nez p2, :cond_3

    sget-object p2, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    :cond_3
    return-object p2

    :cond_4
    if-eqz p2, :cond_1

    move-object v1, p2

    .line 303
    :cond_5
    invoke-virtual {v0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v3}, Lscala/collection/immutable/List$;->partialNotApplied()Lscala/Function1;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lscala/PartialFunction;->applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;

    move-result-object v2

    .line 305
    sget-object v3, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v3}, Lscala/collection/immutable/List$;->partialNotApplied()Lscala/Function1;

    move-result-object v3

    if-eq v2, v3, :cond_6

    .line 306
    new-instance v3, Lscala/collection/immutable/$colon$colon;

    sget-object v4, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-direct {v3, v2, v4}, Lscala/collection/immutable/$colon$colon;-><init>(Ljava/lang/Object;Lscala/collection/immutable/List;)V

    .line 307
    invoke-virtual {v1, v3}, Lscala/collection/immutable/$colon$colon;->tl_$eq(Lscala/collection/immutable/List;)V

    move-object v1, v3

    .line 310
    :cond_6
    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    .line 311
    sget-object v2, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    if-ne v0, v2, :cond_5

    move-object p1, p2

    goto :goto_0

    .line 315
    :cond_7
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->collect(Lscala/collection/TraversableLike;Lscala/PartialFunction;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/immutable/List;",
            ">;"
        }
    .end annotation

    .line 90
    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

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

    .line 84
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->contains(Lscala/collection/LinearSeqOptimized;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final corresponds(Lscala/collection/GenSeq;Lscala/Function2;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;",
            "Lscala/Function2<",
            "TA;TB;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 84
    invoke-static {p0, p1, p2}, Lscala/collection/LinearSeqLike$class;->corresponds(Lscala/collection/LinearSeqLike;Lscala/collection/GenSeq;Lscala/Function2;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic drop(I)Ljava/lang/Object;
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lscala/collection/immutable/List;->drop(I)Lscala/collection/immutable/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic drop(I)Lscala/collection/LinearSeqOptimized;
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lscala/collection/immutable/List;->drop(I)Lscala/collection/immutable/List;

    move-result-object p1

    return-object p1
.end method

.method public drop(I)Lscala/collection/immutable/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/List<",
            "TA;>;"
        }
    .end annotation

    move-object v0, p0

    .line 223
    :goto_0
    invoke-virtual {v0}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    .line 224
    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic dropRight(I)Ljava/lang/Object;
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lscala/collection/immutable/List;->dropRight(I)Lscala/collection/LinearSeqOptimized;

    move-result-object p1

    return-object p1
.end method

.method public dropRight(I)Lscala/collection/LinearSeqOptimized;
    .locals 0

    .line 84
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->dropRight(Lscala/collection/LinearSeqOptimized;I)Lscala/collection/LinearSeqOptimized;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic dropWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lscala/collection/immutable/List;->dropWhile(Lscala/Function1;)Lscala/collection/immutable/List;

    move-result-object p1

    return-object p1
.end method

.method public final dropWhile(Lscala/Function1;)Lscala/collection/immutable/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/immutable/List<",
            "TA;>;"
        }
    .end annotation

    .line 363
    invoke-direct {p0, p0, p1}, Lscala/collection/immutable/List;->loop$3(Lscala/collection/immutable/List;Lscala/Function1;)Lscala/collection/immutable/List;

    move-result-object p1

    return-object p1
.end method

.method public exists(Lscala/Function1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 84
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->exists(Lscala/collection/LinearSeqOptimized;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public find(Lscala/Function1;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "TA;>;"
        }
    .end annotation

    .line 84
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->find(Lscala/collection/LinearSeqOptimized;Lscala/Function1;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public final flatMap(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/List<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 320
    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v0}, Lscala/collection/immutable/List$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    if-ne p2, v0, :cond_3

    .line 321
    sget-object p2, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    if-ne p0, p2, :cond_0

    sget-object p1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    .line 323
    invoke-static {p2}, Lscala/runtime/BooleanRef;->create(Z)Lscala/runtime/BooleanRef;

    move-result-object p2

    const/4 v0, 0x0

    .line 324
    invoke-static {v0}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v1

    .line 325
    invoke-static {v0}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v0

    move-object v2, p0

    .line 326
    :goto_0
    sget-object v3, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    if-eq v2, v3, :cond_1

    .line 327
    invoke-virtual {v2}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/collection/GenTraversableOnce;

    invoke-interface {v3}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object v3

    new-instance v4, Lscala/collection/immutable/List$$anonfun$flatMap$1;

    invoke-direct {v4, p0, p2, v1, v0}, Lscala/collection/immutable/List$$anonfun$flatMap$1;-><init>(Lscala/collection/immutable/List;Lscala/runtime/BooleanRef;Lscala/runtime/ObjectRef;Lscala/runtime/ObjectRef;)V

    invoke-interface {v3, v4}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    .line 339
    invoke-virtual {v2}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/immutable/List;

    goto :goto_0

    .line 341
    :cond_1
    iget-boolean p1, p2, Lscala/runtime/BooleanRef;->elem:Z

    if-eqz p1, :cond_2

    iget-object p1, v1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast p1, Lscala/collection/immutable/$colon$colon;

    goto :goto_1

    :cond_2
    sget-object p1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    goto :goto_1

    .line 344
    :cond_3
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->flatMap(Lscala/collection/TraversableLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
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
            "TB;TA;TB;>;)TB;"
        }
    .end annotation

    .line 84
    invoke-static {p0, p1, p2}, Lscala/collection/LinearSeqOptimized$class;->foldLeft(Lscala/collection/LinearSeqOptimized;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public foldRight(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TA;TB;TB;>;)TB;"
        }
    .end annotation

    .line 397
    invoke-virtual {p0}, Lscala/collection/immutable/List;->reverse()Lscala/collection/immutable/List;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/List$$anonfun$foldRight$1;

    invoke-direct {v1, p0, p2}, Lscala/collection/immutable/List$$anonfun$foldRight$1;-><init>(Lscala/collection/immutable/List;Lscala/Function2;)V

    invoke-virtual {v0, p1, v1}, Lscala/collection/immutable/List;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public forall(Lscala/Function1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 84
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->forall(Lscala/collection/LinearSeqOptimized;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public final foreach(Lscala/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TU;>;)V"
        }
    .end annotation

    move-object v0, p0

    .line 380
    :goto_0
    invoke-virtual {v0}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 381
    :cond_0
    invoke-virtual {v0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    goto :goto_0
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lscala/collection/immutable/List;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 84
    invoke-static {p0}, Lscala/collection/LinearSeqLike$class;->hashCode(Lscala/collection/LinearSeqLike;)I

    move-result v0

    return v0
.end method

.method public abstract head()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation
.end method

.method public indexWhere(Lscala/Function1;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 84
    invoke-static {p0, p1, p2}, Lscala/collection/LinearSeqOptimized$class;->indexWhere(Lscala/collection/LinearSeqOptimized;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public isDefinedAt(I)Z
    .locals 0

    .line 84
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->isDefinedAt(Lscala/collection/LinearSeqOptimized;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 0

    .line 84
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/List;->isDefinedAt(I)Z

    move-result p1

    return p1
.end method

.method public abstract isEmpty()Z
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 84
    invoke-static {p0}, Lscala/collection/LinearSeqLike$class;->iterator(Lscala/collection/LinearSeqLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 84
    invoke-static {p0}, Lscala/collection/LinearSeqOptimized$class;->last(Lscala/collection/LinearSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexWhere(Lscala/Function1;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 84
    invoke-static {p0, p1, p2}, Lscala/collection/LinearSeqOptimized$class;->lastIndexWhere(Lscala/collection/LinearSeqOptimized;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public length()I
    .locals 1

    .line 84
    invoke-static {p0}, Lscala/collection/LinearSeqOptimized$class;->length(Lscala/collection/LinearSeqOptimized;)I

    move-result v0

    return v0
.end method

.method public lengthCompare(I)I
    .locals 0

    .line 84
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->lengthCompare(Lscala/collection/LinearSeqOptimized;I)I

    move-result p1

    return p1
.end method

.method public final map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 5
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
            "Lscala/collection/immutable/List<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 271
    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v0}, Lscala/collection/immutable/List$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    if-ne p2, v0, :cond_2

    .line 272
    sget-object p2, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    if-ne p0, p2, :cond_0

    sget-object p1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    goto :goto_1

    .line 273
    :cond_0
    new-instance p2, Lscala/collection/immutable/$colon$colon;

    invoke-virtual {p0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-direct {p2, v0, v1}, Lscala/collection/immutable/$colon$colon;-><init>(Ljava/lang/Object;Lscala/collection/immutable/List;)V

    .line 275
    invoke-virtual {p0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    move-object v1, p2

    .line 276
    :goto_0
    sget-object v2, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    if-eq v0, v2, :cond_1

    .line 277
    new-instance v2, Lscala/collection/immutable/$colon$colon;

    invoke-virtual {v0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-direct {v2, v3, v4}, Lscala/collection/immutable/$colon$colon;-><init>(Ljava/lang/Object;Lscala/collection/immutable/List;)V

    .line 278
    invoke-virtual {v1, v2}, Lscala/collection/immutable/$colon$colon;->tl_$eq(Lscala/collection/immutable/List;)V

    .line 280
    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    move-object v1, v2

    goto :goto_0

    :cond_1
    move-object p1, p2

    goto :goto_1

    .line 285
    :cond_2
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->map(Lscala/collection/TraversableLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final mapConserve(Lscala/Function1;)Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TB;>;)",
            "Lscala/collection/immutable/List<",
            "TB;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 189
    invoke-direct {p0, v0, p0, p0, p1}, Lscala/collection/immutable/List;->loop$1(Lscala/collection/mutable/ListBuffer;Lscala/collection/immutable/List;Lscala/collection/immutable/List;Lscala/Function1;)Lscala/collection/immutable/List;

    move-result-object p1

    return-object p1
.end method

.method public parCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TA;",
            "Lscala/collection/parallel/immutable/ParSeq<",
            "TA;>;>;"
        }
    .end annotation

    .line 84
    invoke-static {p0}, Lscala/collection/immutable/Seq$class;->parCombiner(Lscala/collection/immutable/Seq;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public productIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 84
    invoke-static {p0}, Lscala/Product$class;->productIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    .line 84
    invoke-static {p0}, Lscala/Product$class;->productPrefix(Lscala/Product;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reduceLeft(Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TB;TA;TB;>;)TB;"
        }
    .end annotation

    .line 84
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->reduceLeft(Lscala/collection/LinearSeqOptimized;Lscala/Function2;)Ljava/lang/Object;

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
            "TA;TB;TB;>;)TB;"
        }
    .end annotation

    .line 84
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->reduceRight(Lscala/collection/LinearSeqOptimized;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverse()Ljava/lang/Object;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lscala/collection/immutable/List;->reverse()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lscala/collection/immutable/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "TA;>;"
        }
    .end annotation

    .line 387
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    move-object v1, p0

    .line 389
    :goto_0
    invoke-virtual {v1}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 390
    :cond_0
    invoke-virtual {v1}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object v0

    .line 391
    invoke-virtual {v1}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/List;

    goto :goto_0
.end method

.method public reverse_$colon$colon$colon(Lscala/collection/immutable/List;)Lscala/collection/immutable/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/List<",
            "TB;>;)",
            "Lscala/collection/immutable/List<",
            "TB;>;"
        }
    .end annotation

    move-object v0, p0

    .line 143
    :goto_0
    invoke-virtual {p1}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 144
    :cond_0
    invoke-virtual {p1}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object v0

    .line 145
    invoke-virtual {p1}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/List;

    goto :goto_0
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

    .line 84
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->sameElements(Lscala/collection/LinearSeqOptimized;Lscala/collection/GenIterable;)Z

    move-result p1

    return p1
.end method

.method public synthetic scala$collection$LinearSeqOptimized$$super$sameElements(Lscala/collection/GenIterable;)Z
    .locals 0

    .line 84
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->sameElements(Lscala/collection/IterableLike;Lscala/collection/GenIterable;)Z

    move-result p1

    return p1
.end method

.method public segmentLength(Lscala/Function1;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 84
    invoke-static {p0, p1, p2}, Lscala/collection/LinearSeqOptimized$class;->segmentLength(Lscala/collection/LinearSeqOptimized;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lscala/collection/immutable/List;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/LinearSeq;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lscala/collection/immutable/List;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lscala/collection/immutable/List;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lscala/collection/immutable/List;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lscala/collection/immutable/List;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Iterable;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lscala/collection/immutable/List;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/immutable/LinearSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/LinearSeq<",
            "TA;>;"
        }
    .end annotation

    .line 84
    invoke-static {p0}, Lscala/collection/immutable/LinearSeq$class;->seq(Lscala/collection/immutable/LinearSeq;)Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Seq;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lscala/collection/immutable/List;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Traversable;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lscala/collection/immutable/List;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic slice(II)Ljava/lang/Object;
    .locals 0

    .line 84
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/List;->slice(II)Lscala/collection/immutable/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic slice(II)Lscala/collection/LinearSeqOptimized;
    .locals 0

    .line 84
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/List;->slice(II)Lscala/collection/immutable/List;

    move-result-object p1

    return-object p1
.end method

.method public slice(II)Lscala/collection/immutable/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/immutable/List<",
            "TA;>;"
        }
    .end annotation

    .line 241
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lscala/math/package$;->max(II)I

    move-result p1

    if-le p2, p1, :cond_1

    .line 242
    invoke-virtual {p0}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual {p0, p1}, Lscala/collection/immutable/List;->drop(I)Lscala/collection/immutable/List;

    move-result-object v0

    sub-int/2addr p2, p1

    invoke-virtual {v0, p2}, Lscala/collection/immutable/List;->take(I)Lscala/collection/immutable/List;

    move-result-object p1

    goto :goto_1

    .line 242
    :cond_1
    :goto_0
    sget-object p1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    :goto_1
    return-object p1
.end method

.method public final span(Lscala/Function1;)Lscala/Tuple2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/immutable/List<",
            "TA;>;",
            "Lscala/collection/immutable/List<",
            "TA;>;>;"
        }
    .end annotation

    .line 367
    new-instance v0, Lscala/collection/mutable/ListBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ListBuffer;-><init>()V

    move-object v1, p0

    .line 369
    :goto_0
    invoke-virtual {v1}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 370
    invoke-virtual {v1}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lscala/collection/mutable/ListBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ListBuffer;

    .line 371
    invoke-virtual {v1}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/List;

    goto :goto_0

    .line 373
    :cond_0
    new-instance p1, Lscala/Tuple2;

    invoke-virtual {v0}, Lscala/collection/mutable/ListBuffer;->toList()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public splitAt(I)Lscala/Tuple2;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Tuple2<",
            "Lscala/collection/immutable/List<",
            "TA;>;",
            "Lscala/collection/immutable/List<",
            "TA;>;>;"
        }
    .end annotation

    .line 258
    new-instance v0, Lscala/collection/mutable/ListBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ListBuffer;-><init>()V

    const/4 v1, 0x0

    move-object v2, p0

    .line 261
    :goto_0
    invoke-virtual {v2}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-ge v1, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 263
    invoke-virtual {v2}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lscala/collection/mutable/ListBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ListBuffer;

    .line 264
    invoke-virtual {v2}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/immutable/List;

    goto :goto_0

    .line 266
    :cond_0
    new-instance p1, Lscala/Tuple2;

    invoke-virtual {v0}, Lscala/collection/mutable/ListBuffer;->toList()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-direct {p1, v0, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "List"

    return-object v0
.end method

.method public bridge synthetic tail()Lscala/collection/LinearSeqOptimized;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/LinearSeqOptimized;

    return-object v0
.end method

.method public bridge synthetic tail()Lscala/collection/immutable/List;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    return-object v0
.end method

.method public bridge synthetic take(I)Ljava/lang/Object;
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lscala/collection/immutable/List;->take(I)Lscala/collection/immutable/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic take(I)Lscala/collection/LinearSeqOptimized;
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lscala/collection/immutable/List;->take(I)Lscala/collection/immutable/List;

    move-result-object p1

    return-object p1
.end method

.method public take(I)Lscala/collection/immutable/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/List<",
            "TA;>;"
        }
    .end annotation

    .line 205
    invoke-virtual {p0}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-gtz p1, :cond_0

    goto :goto_2

    .line 206
    :cond_0
    new-instance v0, Lscala/collection/immutable/$colon$colon;

    invoke-virtual {p0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-direct {v0, v1, v2}, Lscala/collection/immutable/$colon$colon;-><init>(Ljava/lang/Object;Lscala/collection/immutable/List;)V

    .line 208
    invoke-virtual {p0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/List;

    const/4 v2, 0x1

    move-object v4, v0

    const/4 v3, 0x1

    .line 210
    :goto_0
    invoke-virtual {v1}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    return-object p0

    :cond_1
    if-ge v3, p1, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_4

    add-int/lit8 v3, v3, 0x1

    .line 212
    new-instance v5, Lscala/collection/immutable/$colon$colon;

    invoke-virtual {v1}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-direct {v5, v6, v7}, Lscala/collection/immutable/$colon$colon;-><init>(Ljava/lang/Object;Lscala/collection/immutable/List;)V

    .line 213
    invoke-virtual {v4, v5}, Lscala/collection/immutable/$colon$colon;->tl_$eq(Lscala/collection/immutable/List;)V

    .line 215
    invoke-virtual {v1}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/List;

    move-object v4, v5

    goto :goto_0

    .line 205
    :cond_3
    :goto_2
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    :cond_4
    return-object v0
.end method

.method public bridge synthetic takeRight(I)Ljava/lang/Object;
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lscala/collection/immutable/List;->takeRight(I)Lscala/collection/immutable/List;

    move-result-object p1

    return-object p1
.end method

.method public takeRight(I)Lscala/collection/immutable/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/List<",
            "TA;>;"
        }
    .end annotation

    .line 252
    invoke-virtual {p0, p1}, Lscala/collection/immutable/List;->drop(I)Lscala/collection/immutable/List;

    move-result-object p1

    invoke-direct {p0, p1, p0}, Lscala/collection/immutable/List;->loop$2(Lscala/collection/immutable/List;Lscala/collection/immutable/List;)Lscala/collection/immutable/List;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic takeWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lscala/collection/immutable/List;->takeWhile(Lscala/Function1;)Lscala/collection/immutable/List;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic takeWhile(Lscala/Function1;)Lscala/collection/LinearSeqOptimized;
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lscala/collection/immutable/List;->takeWhile(Lscala/Function1;)Lscala/collection/immutable/List;

    move-result-object p1

    return-object p1
.end method

.method public final takeWhile(Lscala/Function1;)Lscala/collection/immutable/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/immutable/List<",
            "TA;>;"
        }
    .end annotation

    .line 348
    new-instance v0, Lscala/collection/mutable/ListBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ListBuffer;-><init>()V

    move-object v1, p0

    .line 350
    :goto_0
    invoke-virtual {v1}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    invoke-virtual {v1}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lscala/collection/mutable/ListBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ListBuffer;

    .line 352
    invoke-virtual {v1}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/List;

    goto :goto_0

    .line 354
    :cond_0
    invoke-virtual {v0}, Lscala/collection/mutable/ListBuffer;->toList()Lscala/collection/immutable/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lscala/collection/immutable/List;->thisCollection()Lscala/collection/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public thisCollection()Lscala/collection/LinearSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/LinearSeq<",
            "TA;>;"
        }
    .end annotation

    .line 84
    invoke-static {p0}, Lscala/collection/LinearSeqLike$class;->thisCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Seq;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lscala/collection/immutable/List;->thisCollection()Lscala/collection/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lscala/collection/immutable/List;->thisCollection()Lscala/collection/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;
    .locals 0

    .line 84
    check-cast p1, Lscala/collection/LinearSeqLike;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/List;->toCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;

    move-result-object p1

    return-object p1
.end method

.method public toCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;
    .locals 0

    .line 84
    invoke-static {p0, p1}, Lscala/collection/LinearSeqLike$class;->toCollection(Lscala/collection/LinearSeqLike;Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Seq;
    .locals 0

    .line 84
    check-cast p1, Lscala/collection/LinearSeqLike;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/List;->toCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 84
    check-cast p1, Lscala/collection/LinearSeqLike;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/List;->toCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lscala/collection/immutable/List;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toList()Lscala/collection/immutable/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "TA;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lscala/collection/immutable/List;->toSeq()Lscala/collection/immutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/Seq;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lscala/collection/immutable/List;->toSeq()Lscala/collection/immutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/immutable/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Seq<",
            "TA;>;"
        }
    .end annotation

    .line 84
    invoke-static {p0}, Lscala/collection/immutable/Seq$class;->toSeq(Lscala/collection/immutable/Seq;)Lscala/collection/immutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toStream()Lscala/collection/immutable/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    .line 402
    invoke-virtual {p0}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    goto :goto_0

    .line 403
    :cond_0
    new-instance v0, Lscala/collection/immutable/Stream$Cons;

    invoke-virtual {p0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lscala/collection/immutable/List$$anonfun$toStream$1;

    invoke-direct {v2, p0}, Lscala/collection/immutable/List$$anonfun$toStream$1;-><init>(Lscala/collection/immutable/List;)V

    invoke-direct {v0, v1, v2}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lscala/collection/immutable/List;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view()Lscala/collection/IterableView;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lscala/collection/immutable/List;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/IterableView;
    .locals 0

    .line 84
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/List;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lscala/collection/immutable/List;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 84
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/List;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public final writeReplace()Ljava/lang/Object;
    .locals 1

    .line 407
    new-instance v0, Lscala/collection/immutable/List$SerializationProxy;

    invoke-direct {v0, p0}, Lscala/collection/immutable/List$SerializationProxy;-><init>(Lscala/collection/immutable/List;)V

    return-object v0
.end method
