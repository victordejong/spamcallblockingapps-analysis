package scala.collection.immutable;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Function3;
import scala.Function4;
import scala.Function5;
import scala.MatchError;
import scala.Option;
import scala.PartialFunction;
import scala.Product;
import scala.Some;
import scala.Tuple2;
import scala.collection.AbstractSeq;
import scala.collection.GenIterable;
import scala.collection.GenSeq;
import scala.collection.GenTraversable;
import scala.collection.GenTraversableOnce;
import scala.collection.IterableLike;
import scala.collection.Iterator;
import scala.collection.LinearSeq;
import scala.collection.LinearSeqLike;
import scala.collection.LinearSeqOptimized;
import scala.collection.SeqLike;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenTraversableFactory;
import scala.collection.generic.GenericCompanion;
import scala.collection.immutable.Iterable;
import scala.collection.immutable.LinearSeq;
import scala.collection.immutable.Seq;
import scala.collection.immutable.Stream;
import scala.collection.immutable.Traversable;
import scala.collection.mutable.Builder;
import scala.collection.mutable.ListBuffer;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.immutable.ParSeq;
import scala.math.Integral;
import scala.math.package$;
import scala.reflect.ScalaSignature;
import scala.runtime.BooleanRef;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
import scala.runtime.ObjectRef;
@ScalaSignature(bytes = "\u0006\u0001\rUc!B\u0001\u0003\u0003CI!\u0001\u0002'jgRT!a\u0001\u0003\u0002\u0013%lW.\u001e;bE2,'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001QC\u0001\u0006\u0012'\u001d\u00011bG\u0010#S5\u00022\u0001D\u0007\u0010\u001b\u0005!\u0011B\u0001\b\u0005\u0005-\t%m\u001d;sC\u000e$8+Z9\u0011\u0005A\tB\u0002\u0001\u0003\u0007%\u0001!)\u0019A\n\u0003\u0003\u0005\u000b\"\u0001\u0006\r\u0011\u0005U1R\"\u0001\u0004\n\u0005]1!a\u0002(pi\"Lgn\u001a\t\u0003+eI!A\u0007\u0004\u0003\u0007\u0005s\u0017\u0010E\u0002\u001d;=i\u0011AA\u0005\u0003=\t\u0011\u0011\u0002T5oK\u0006\u00148+Z9\u0011\u0005U\u0001\u0013BA\u0011\u0007\u0005\u001d\u0001&o\u001c3vGR\u0004Ba\t\u0014\u0010Q5\tAE\u0003\u0002&\t\u00059q-\u001a8fe&\u001c\u0017BA\u0014%\u0005i9UM\\3sS\u000e$&/\u0019<feN\f'\r\\3UK6\u0004H.\u0019;f!\ta\u0002\u0001\u0005\u0003\rU=a\u0013BA\u0016\u0005\u0005Ia\u0015N\\3beN+\u0017o\u00149uS6L'0\u001a3\u0011\u0007q\u0001q\u0002\u0005\u0002/g5\tqF\u0003\u00021c\u0005\u0011\u0011n\u001c\u0006\u0002e\u0005!!.\u0019<b\u0013\t!tF\u0001\u0007TKJL\u0017\r\\5{C\ndW\rC\u00037\u0001\u0011\u0005q'\u0001\u0004=S:LGO\u0010\u000b\u0002Y!)\u0011\b\u0001C!u\u0005I1m\\7qC:LwN\\\u000b\u0002wA\u00191\u0005\u0010\u0015\n\u0005u\"#\u0001E$f]\u0016\u0014\u0018nY\"p[B\fg.[8o\u0011\u0015y\u0004A\"\u0001A\u0003\u001dI7/R7qif,\u0012!\u0011\t\u0003+\tK!a\u0011\u0004\u0003\u000f\t{w\u000e\\3b]\")Q\t\u0001D\u0001\r\u0006!\u0001.Z1e+\u0005y\u0001\"\u0002%\u0001\r\u0003I\u0015\u0001\u0002;bS2,\u0012\u0001\f\u0005\u0006\u0017\u0002!\t\u0001T\u0001\rI\r|Gn\u001c8%G>dwN\\\u000b\u0003\u001bB#\"AT*\u0011\u0007q\u0001q\n\u0005\u0002\u0011!\u0012)\u0011K\u0013b\u0001%\n\t!)\u0005\u0002\u00101!)AK\u0013a\u0001\u001f\u0006\t\u0001\u0010C\u0003W\u0001\u0011\u0005q+\u0001\n%G>dwN\u001c\u0013d_2|g\u000eJ2pY>tWC\u0001-\\)\tIF\fE\u0002\u001d\u0001i\u0003\"\u0001E.\u0005\u000bE+&\u0019\u0001*\t\u000bu+\u0006\u0019A-\u0002\rA\u0014XMZ5y\u0011\u0015y\u0006\u0001\"\u0001a\u0003i\u0011XM^3sg\u0016|FeY8m_:$3m\u001c7p]\u0012\u001aw\u000e\\8o+\t\tG\r\u0006\u0002cKB\u0019A\u0004A2\u0011\u0005A!G!B)_\u0005\u0004\u0011\u0006\"B/_\u0001\u0004\u0011\u0007\"B4\u0001\t\u000bA\u0017aC7ba\u000e{gn]3sm\u0016,\"!\u001b7\u0015\u0005)\f\bc\u0001\u000f\u0001WB\u0011\u0001\u0003\u001c\u0003\u0006#\u001a\u0014\r!\\\t\u0003\u001f9\u0004\"!F8\n\u0005A4!AB!osJ+g\rC\u0003sM\u0002\u00071/A\u0001g!\u0011)BoD6\n\u0005U4!!\u0003$v]\u000e$\u0018n\u001c82Q\t1w\u000f\u0005\u0002\u0016q&\u0011\u0011P\u0002\u0002\u0007S:d\u0017N\\3\t\u000bm\u0004A\u0011\t?\u0002\u0015\u0011\u0002H.^:%a2,8/F\u0003~\u0003#\t\t\u0001F\u0002\u007f\u0003'!2a`A\u0003!\r\u0001\u0012\u0011\u0001\u0003\u0007\u0003\u0007Q(\u0019A\n\u0003\tQC\u0017\r\u001e\u0005\b\u0003\u000fQ\b9AA\u0005\u0003\t\u0011g\rE\u0004$\u0003\u0017a\u0013qB@\n\u0007\u00055AE\u0001\u0007DC:\u0014U/\u001b7e\rJ|W\u000eE\u0002\u0011\u0003#!Q!\u0015>C\u0002ICq!!\u0006{\u0001\u0004\t9\"\u0001\u0003uQ\u0006$\b#\u0002\u0007\u0002\u001a\u0005=\u0011bAA\u000e\t\t\u0011r)\u001a8Ue\u00064XM]:bE2,wJ\\2f\u0011\u001d\ty\u0002\u0001C!\u0003C\t1\u0002\n9mkN$3m\u001c7p]V1\u00111EA\u0019\u0003S!B!!\n\u00024Q!\u0011qEA\u0016!\r\u0001\u0012\u0011\u0006\u0003\b\u0003\u0007\tiB1\u0001\u0014\u0011!\t9!!\bA\u0004\u00055\u0002\u0003C\u0012\u0002\f1\ny#a\n\u0011\u0007A\t\t\u0004\u0002\u0004R\u0003;\u0011\rA\u0015\u0005\t\u0003k\ti\u00021\u0001\u00020\u0005!Q\r\\3n\u0011\u0019\tI\u0004\u0001C!\u0013\u00061Ao\u001c'jgRDq!!\u0010\u0001\t\u0003\ny$\u0001\u0003uC.,Gc\u0001\u0017\u0002B!A\u00111IA\u001e\u0001\u0004\t)%A\u0001o!\r)\u0012qI\u0005\u0004\u0003\u00132!aA%oi\"9\u0011Q\n\u0001\u0005B\u0005=\u0013\u0001\u00023s_B$2\u0001LA)\u0011!\t\u0019%a\u0013A\u0002\u0005\u0015\u0003bBA+\u0001\u0011\u0005\u0013qK\u0001\u0006g2L7-\u001a\u000b\u0006Y\u0005e\u0013Q\f\u0005\t\u00037\n\u0019\u00061\u0001\u0002F\u0005!aM]8n\u0011!\ty&a\u0015A\u0002\u0005\u0015\u0013!B;oi&d\u0007bBA2\u0001\u0011\u0005\u0013QM\u0001\ni\u0006\\WMU5hQR$2\u0001LA4\u0011!\t\u0019%!\u0019A\u0002\u0005\u0015\u0003bBA6\u0001\u0011\u0005\u0013QN\u0001\bgBd\u0017\u000e^!u)\u0011\ty'!\u001e\u0011\u000bU\t\t\b\f\u0017\n\u0007\u0005MdA\u0001\u0004UkBdWM\r\u0005\t\u0003\u0007\nI\u00071\u0001\u0002F!9\u0011\u0011\u0010\u0001\u0005F\u0005m\u0014aA7baV1\u0011QPAF\u0003\u0007#B!a \u0002\u000eR!\u0011\u0011QAC!\r\u0001\u00121\u0011\u0003\b\u0003\u0007\t9H1\u0001\u0014\u0011!\t9!a\u001eA\u0004\u0005\u001d\u0005\u0003C\u0012\u0002\f1\nI)!!\u0011\u0007A\tY\t\u0002\u0004R\u0003o\u0012\ra\u0005\u0005\be\u0006]\u0004\u0019AAH!\u0015)BoDAEQ\u0011\t9(a%\u0011\u0007U\t)*C\u0002\u0002\u0018\u001a\u0011\u0001B\\8j]2Lg.\u001a\u0005\b\u00037\u0003AQIAO\u0003\u001d\u0019w\u000e\u001c7fGR,b!a(\u0002.\u0006\u0015F\u0003BAQ\u0003_#B!a)\u0002(B\u0019\u0001#!*\u0005\u000f\u0005\r\u0011\u0011\u0014b\u0001'!A\u0011qAAM\u0001\b\tI\u000b\u0005\u0005$\u0003\u0017a\u00131VAR!\r\u0001\u0012Q\u0016\u0003\u0007#\u0006e%\u0019A\n\t\u0011\u0005E\u0016\u0011\u0014a\u0001\u0003g\u000b!\u0001\u001d4\u0011\rU\t)lDAV\u0013\r\t9L\u0002\u0002\u0010!\u0006\u0014H/[1m\rVt7\r^5p]\"\"\u0011\u0011TAJ\u0011\u001d\ti\f\u0001C#\u0003\u007f\u000bqA\u001a7bi6\u000b\u0007/\u0006\u0004\u0002B\u0006=\u0017q\u0019\u000b\u0005\u0003\u0007\f\t\u000e\u0006\u0003\u0002F\u0006%\u0007c\u0001\t\u0002H\u00129\u00111AA^\u0005\u0004\u0019\u0002\u0002CA\u0004\u0003w\u0003\u001d!a3\u0011\u0011\r\nY\u0001LAg\u0003\u000b\u00042\u0001EAh\t\u0019\t\u00161\u0018b\u0001'!9!/a/A\u0002\u0005M\u0007#B\u000bu\u001f\u0005U\u0007#\u0002\u0007\u0002\u001a\u00055\u0007\u0006BA^\u0003'Cq!a7\u0001\t\u000b\ni.A\u0005uC.,w\u000b[5mKR\u0019A&a8\t\u0011\u0005\u0005\u0018\u0011\u001ca\u0001\u0003G\f\u0011\u0001\u001d\t\u0005+Q|\u0011\tK\u0002\u0002Z^Dq!!;\u0001\t\u000b\nY/A\u0005ee>\u0004x\u000b[5mKR\u0019A&!<\t\u0011\u0005\u0005\u0018q\u001da\u0001\u0003GD3!a:x\u0011\u001d\t\u0019\u0010\u0001C#\u0003k\fAa\u001d9b]R!\u0011qNA|\u0011!\t\t/!=A\u0002\u0005\r\bfAAyo\"9\u0011Q \u0001\u0005F\u0005}\u0018a\u00024pe\u0016\f7\r[\u000b\u0005\u0005\u0003\u0011y\u0001\u0006\u0003\u0003\u0004\t%\u0001cA\u000b\u0003\u0006%\u0019!q\u0001\u0004\u0003\tUs\u0017\u000e\u001e\u0005\be\u0006m\b\u0019\u0001B\u0006!\u0015)Bo\u0004B\u0007!\r\u0001\"q\u0002\u0003\b\u0005#\tYP1\u0001\u0014\u0005\u0005)\u0006fAA~o\"1!q\u0003\u0001\u0005B%\u000bqA]3wKJ\u001cX\rC\u0004\u0003\u001c\u0001!\tE!\b\u0002\u0013\u0019|G\u000e\u001a*jO\"$X\u0003\u0002B\u0010\u0005K!BA!\t\u00032Q!!1\u0005B\u0014!\r\u0001\"Q\u0005\u0003\u0007#\ne!\u0019A\n\t\u0011\t%\"\u0011\u0004a\u0001\u0005W\t!a\u001c9\u0011\u0011U\u0011ic\u0004B\u0012\u0005GI1Aa\f\u0007\u0005%1UO\\2uS>t'\u0007\u0003\u0005\u00034\te\u0001\u0019\u0001B\u0012\u0003\u0005Q\bb\u0002B\u001c\u0001\u0011\u0005#\u0011H\u0001\rgR\u0014\u0018N\\4Qe\u00164\u0017\u000e_\u000b\u0003\u0005w\u0001BA!\u0010\u0003D5\u0011!q\b\u0006\u0004\u0005\u0003\n\u0014\u0001\u00027b]\u001eLAA!\u0012\u0003@\t11\u000b\u001e:j]\u001eDqA!\u0013\u0001\t\u0003\u0012Y%\u0001\u0005u_N#(/Z1n+\t\u0011i\u0005\u0005\u0003\u001d\u0005\u001fz\u0011b\u0001B)\u0005\t11\u000b\u001e:fC6DqA!\u0016\u0001\t+\u00119&\u0001\u0007xe&$XMU3qY\u0006\u001cW\rF\u0001oS\u0015\u0001!1\fB0\u0013\r\u0011iF\u0001\u0002\rI\r|Gn\u001c8%G>dwN\u001c\u0006\u0004\u0005C\u0012\u0011a\u0001(jY\":\u0001A!\u001a\u0003l\t5\u0004cA\u000b\u0003h%\u0019!\u0011\u000e\u0004\u0003!M+'/[1m-\u0016\u00148/[8o+&#\u0015!\u0002<bYV,g\u0004CV\u0011XTJ/{\u0001.\b\u000f\tE$\u0001#\u0001\u0003t\u0005!A*[:u!\ra\"Q\u000f\u0004\u0007\u0003\tA\tAa\u001e\u0014\r\tU$\u0011\u0010B@!\u0011\u0019#1\u0010\u0015\n\u0007\tuDE\u0001\u0006TKF4\u0015m\u0019;pef\u00042!\u0006BA\u0013\t!d\u0001C\u00047\u0005k\"\tA!\"\u0015\u0005\tM\u0004\u0002\u0003BE\u0005k\"\u0019Aa#\u0002\u0019\r\fgNQ;jY\u00124%o\\7\u0016\t\t5%1T\u000b\u0003\u0005\u001f\u0003\u0012bIA\u0006\u0005#\u0013IJ!(\u0011\t\tM%QS\u0007\u0003\u0005kJ1Aa&=\u0005\u0011\u0019u\u000e\u001c7\u0011\u0007A\u0011Y\n\u0002\u0004\u0013\u0005\u000f\u0013\ra\u0005\t\u00059\u0001\u0011I\n\u0003\u0005\u0003\"\nUD\u0011\u0001BR\u0003)qWm\u001e\"vS2$WM]\u000b\u0005\u0005K\u0013),\u0006\u0002\u0003(BA!\u0011\u0016BX\u0005g\u00139,\u0004\u0002\u0003,*\u0019!Q\u0016\u0003\u0002\u000f5,H/\u00192mK&!!\u0011\u0017BV\u0005\u001d\u0011U/\u001b7eKJ\u00042\u0001\u0005B[\t\u0019\u0011\"q\u0014b\u0001'A!A\u0004\u0001BZ\u0011!\u0011YL!\u001e\u0005B\tu\u0016!B3naRLX\u0003\u0002B`\u0005\u000b,\"A!1\u0011\tq\u0001!1\u0019\t\u0004!\t\u0015GA\u0002\n\u0003:\n\u00071\u0003\u0003\u0005\u0003J\nUD\u0011\tBf\u0003\u0015\t\u0007\u000f\u001d7z+\u0011\u0011iMa5\u0015\t\t='Q\u001b\t\u00059\u0001\u0011\t\u000eE\u0002\u0011\u0005'$aA\u0005Bd\u0005\u0004\u0019\u0002\u0002\u0003Bl\u0005\u000f\u0004\rA!7\u0002\u0005a\u001c\b#B\u000b\u0003\\\nE\u0017b\u0001Bo\r\tQAH]3qK\u0006$X\r\u001a \t\u0017\t\u0005(Q\u000fb\u0001\n\u0003!!1]\u0001\u0012a\u0006\u0014H/[1m\u001d>$\u0018\t\u001d9mS\u0016$WC\u0001Bs%\u0015\u00119O\u001cBx\r\u001d\u0011IOa;\u0001\u0005K\u0014A\u0002\u0010:fM&tW-\\3oizB\u0011B!<\u0003v\u0001\u0006IA!:\u0002%A\f'\u000f^5bY:{G/\u00119qY&,G\r\t\t\u0005+QD\u0002DB\u0004\u0003t\nUDA!>\u0003%M+'/[1mSj\fG/[8o!J|\u00070_\u000b\u0005\u0005o\u001c\u0019a\u0005\u0003\u0003r:l\u0003b\u0003B~\u0005c\u0014\t\u0019!C\u0005\u0005{\fAa\u001c:jOV\u0011!q \t\u00059\u0001\u0019\t\u0001E\u0002\u0011\u0007\u0007!aA\u0005By\u0005\u0004\u0019\u0002bCB\u0004\u0005c\u0014\t\u0019!C\u0005\u0007\u0013\t\u0001b\u001c:jO~#S-\u001d\u000b\u0005\u0005\u0007\u0019Y\u0001\u0003\u0006\u0004\u000e\r\u0015\u0011\u0011!a\u0001\u0005\u007f\f1\u0001\u001f\u00132\u0011-\u0019\tB!=\u0003\u0002\u0003\u0006KAa@\u0002\u000b=\u0014\u0018n\u001a\u0011)\t\r=1Q\u0003\t\u0004+\r]\u0011bAB\r\r\tIAO]1og&,g\u000e\u001e\u0005\bm\tEH\u0011AB\u000f)\u0011\u0019yb!\t\u0011\r\tM%\u0011_B\u0001\u0011!\u0011Ypa\u0007A\u0002\t}\b\u0002CB\u0013\u0005c$Iaa\n\u0002\u0017]\u0014\u0018\u000e^3PE*,7\r\u001e\u000b\u0005\u0005\u0007\u0019I\u0003\u0003\u0005\u0004,\r\r\u0002\u0019AB\u0017\u0003\ryW\u000f\u001e\t\u0004]\r=\u0012bAB\u0019_\t\u0011rJ\u00196fGR|U\u000f\u001e9viN#(/Z1n\u0011!\u0019)D!=\u0005\n\r]\u0012A\u0003:fC\u0012|%M[3diR!!1AB\u001d\u0011!\u0019Yda\rA\u0002\ru\u0012AA5o!\rq3qH\u0005\u0004\u0007\u0003z#!E(cU\u0016\u001cG/\u00138qkR\u001cFO]3b[\"A1Q\tBy\t\u0013\u00119&A\u0006sK\u0006$'+Z:pYZ,\u0007\u0006\u0003By\u0005K\u0012Yg!\u0013\u001f\u0003\u0005A!b!\u0012\u0003v\u0005\u0005I\u0011BB')\t\u0019y\u0005\u0005\u0003\u0003>\rE\u0013\u0002BB*\u0005\u007f\u0011aa\u00142kK\u000e$\b")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/List.class */
public abstract class List<A> extends AbstractSeq<A> implements LinearSeq<A>, Product, LinearSeqOptimized<A, List<A>>, Serializable {
    public static final long serialVersionUID = -6084104484083858598L;

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/List$SerializationProxy.class */
    public static class SerializationProxy<A> implements Serializable {
        public static final long serialVersionUID = 1;
        private transient List<A> orig;

        public SerializationProxy(List<A> list) {
            this.orig = list;
        }

        private List<A> orig() {
            return this.orig;
        }

        private void orig_$eq(List<A> list) {
            this.orig = list;
        }

        private void readObject(ObjectInputStream objectInputStream) {
            objectInputStream.defaultReadObject();
            Builder<A, List<A>> newBuilder = List$.MODULE$.newBuilder();
            while (true) {
                Object readObject = objectInputStream.readObject();
                if (ListSerializeEnd$.MODULE$.equals(readObject)) {
                    orig_$eq(newBuilder.result());
                    return;
                }
                newBuilder.$plus$eq((Builder<A, List<A>>) readObject);
            }
        }

        private Object readResolve() {
            return orig();
        }

        private void writeObject(ObjectOutputStream objectOutputStream) {
            objectOutputStream.defaultWriteObject();
            List<A> orig = orig();
            while (true) {
                List<A> list = orig;
                if (list.isEmpty()) {
                    objectOutputStream.writeObject(ListSerializeEnd$.MODULE$);
                    return;
                } else {
                    objectOutputStream.writeObject(list.head());
                    orig = (List) list.tail();
                }
            }
        }
    }

    public List() {
        Traversable.Cclass.$init$(this);
        Iterable.Cclass.$init$(this);
        Seq.Cclass.$init$(this);
        LinearSeqLike.Cclass.$init$(this);
        LinearSeq.Cclass.$init$(this);
        LinearSeq.Cclass.$init$(this);
        Product.Cclass.$init$(this);
        LinearSeqOptimized.Cclass.$init$(this);
    }

    public static GenTraversableFactory<List>.GenericCanBuildFrom<Nothing$> ReusableCBF() {
        return (GenTraversableFactory<CC>.GenericCanBuildFrom<Nothing$>) List$.MODULE$.ReusableCBF();
    }

    public static <A> CanBuildFrom<List<?>, A, List<A>> canBuildFrom() {
        return List$.MODULE$.canBuildFrom();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable concat(scala.collection.Seq seq) {
        return List$.MODULE$.concat(seq);
    }

    public static GenTraversable empty() {
        return List$.MODULE$.empty();
    }

    /* renamed from: empty */
    public static <A> List<A> m6111empty() {
        return List$.MODULE$.empty();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, int i4, int i5, Function0 function0) {
        return List$.MODULE$.fill(i, i2, i3, i4, i5, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, int i4, Function0 function0) {
        return List$.MODULE$.fill(i, i2, i3, i4, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, Function0 function0) {
        return List$.MODULE$.fill(i, i2, i3, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, Function0 function0) {
        return List$.MODULE$.fill(i, i2, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, Function0 function0) {
        return List$.MODULE$.fill(i, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable iterate(Object obj, int i, Function1 function1) {
        return List$.MODULE$.iterate(obj, i, function1);
    }

    private final List loop$1(ListBuffer listBuffer, List list, List list2, Function1 function1) {
        while (!list2.isEmpty()) {
            Object head = list2.head();
            Object apply = function1.apply(head);
            if (apply == head) {
                list2 = (List) list2.tail();
            } else {
                ListBuffer listBuffer2 = listBuffer;
                List list3 = list;
                if (listBuffer == null) {
                    listBuffer2 = new ListBuffer();
                    list3 = list;
                }
                while (list3 != list2) {
                    listBuffer2.$plus$eq((ListBuffer) list3.head());
                    list3 = (List) list3.tail();
                }
                listBuffer2.$plus$eq((ListBuffer) apply);
                list2 = (List) list2.tail();
                list = list2;
                listBuffer = listBuffer2;
            }
        }
        List list4 = list;
        if (listBuffer != null) {
            list4 = listBuffer.prependToList(list);
        }
        return list4;
    }

    private final List loop$2(List list, List list2) {
        while (!Nil$.MODULE$.equals(list)) {
            if (!(list instanceof C$colon$colon)) {
                throw new MatchError(list);
            }
            list = ((C$colon$colon) list).tl$1();
            list2 = (List) list2.tail();
        }
        return list2;
    }

    private final List loop$3(List list, Function1 function1) {
        while (!list.isEmpty() && BoxesRunTime.unboxToBoolean(function1.apply(list.head()))) {
            list = (List) list.tail();
        }
        return list;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable range(Object obj, Object obj2, Object obj3, Integral integral) {
        return List$.MODULE$.range(obj, obj2, obj3, integral);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable range(Object obj, Object obj2, Integral integral) {
        return List$.MODULE$.range(obj, obj2, integral);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, int i4, int i5, Function5 function5) {
        return List$.MODULE$.tabulate(i, i2, i3, i4, i5, function5);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, int i4, Function4 function4) {
        return List$.MODULE$.tabulate(i, i2, i3, i4, function4);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, Function3 function3) {
        return List$.MODULE$.tabulate(i, i2, i3, function3);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, Function2 function2) {
        return List$.MODULE$.tabulate(i, i2, function2);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, Function1 function1) {
        return List$.MODULE$.tabulate(i, function1);
    }

    public static Some unapplySeq(scala.collection.Seq seq) {
        return List$.MODULE$.unapplySeq(seq);
    }

    public <B> List<B> $colon$colon(B b) {
        return new C$colon$colon(b, this);
    }

    public <B> List<B> $colon$colon$colon(List<B> list) {
        if (!isEmpty()) {
            list = list.isEmpty() ? (List<B>) this : new ListBuffer().$plus$plus$eq((TraversableOnce) list).prependToList(this);
        }
        return list;
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public <B, That> That $plus$colon(B b, CanBuildFrom<List<A>, B, That> canBuildFrom) {
        return (That) (canBuildFrom instanceof GenTraversableFactory.GenericCanBuildFrom ? $colon$colon(b) : SeqLike.Cclass.$plus$colon(this, b, canBuildFrom));
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That $plus$plus(GenTraversableOnce<B> genTraversableOnce, CanBuildFrom<List<A>, B, That> canBuildFrom) {
        return (That) (canBuildFrom == List$.MODULE$.ReusableCBF() ? genTraversableOnce.seq().toList().$colon$colon$colon(this) : TraversableLike.Cclass.$plus$plus(this, genTraversableOnce, canBuildFrom));
    }

    @Override // scala.collection.GenSeqLike
    public A apply(int i) {
        return (A) LinearSeqOptimized.Cclass.apply(this, i);
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [scala.collection.immutable.Nil$] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v35, types: [scala.collection.immutable.$colon$colon] */
    /* JADX WARN: Type inference failed for: r0v36, types: [scala.collection.immutable.$colon$colon] */
    /* JADX WARN: Type inference failed for: r0v37, types: [scala.collection.immutable.$colon$colon] */
    /* JADX WARN: Type inference failed for: r0v38, types: [scala.collection.immutable.Nil$] */
    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public final <B, That> That collect(PartialFunction<A, B> partialFunction, CanBuildFrom<List<A>, B, That> canBuildFrom) {
        That that;
        That that2;
        List<A> list;
        List<A> list2;
        if (canBuildFrom != List$.MODULE$.ReusableCBF()) {
            that = TraversableLike.Cclass.collect(this, partialFunction, canBuildFrom);
        } else if (this == Nil$.MODULE$) {
            that = Nil$.MODULE$;
        } else {
            That that3 = null;
            List<A> list3 = this;
            do {
                Object applyOrElse = partialFunction.applyOrElse(list3.head(), List$.MODULE$.partialNotApplied());
                that2 = that3;
                if (applyOrElse != List$.MODULE$.partialNotApplied()) {
                    that2 = new C$colon$colon(applyOrElse, Nil$.MODULE$);
                }
                list = (List) list3.tail();
                if (list == Nil$.MODULE$) {
                    That that4 = that2;
                    if (that2 == null) {
                        that4 = Nil$.MODULE$;
                    }
                    return that4;
                }
                list3 = list;
                that3 = that2;
            } while (that2 == null);
            That that5 = that2;
            List<A> list4 = list;
            do {
                Object applyOrElse2 = partialFunction.applyOrElse(list4.head(), List$.MODULE$.partialNotApplied());
                That that6 = that5;
                if (applyOrElse2 != List$.MODULE$.partialNotApplied()) {
                    that6 = new C$colon$colon(applyOrElse2, Nil$.MODULE$);
                    that5.tl_$eq(that6);
                }
                list2 = (List) list4.tail();
                list4 = list2;
                that5 = that6;
            } while (list2 != Nil$.MODULE$);
            that = that2;
        }
        return that;
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<List> companion() {
        return List$.MODULE$;
    }

    @Override // scala.collection.AbstractSeq, scala.collection.SeqLike
    public <A1> boolean contains(A1 a1) {
        return LinearSeqOptimized.Cclass.contains(this, a1);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public final <B> boolean corresponds(GenSeq<B> genSeq, Function2<A, B, Object> function2) {
        return LinearSeqLike.Cclass.corresponds(this, genSeq, function2);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public List<A> drop(int i) {
        List<A> list = this;
        while (!list.isEmpty() && i > 0) {
            list = (List) list.tail();
            i--;
        }
        return list;
    }

    @Override // scala.collection.AbstractIterable, scala.collection.IterableLike
    public LinearSeqOptimized dropRight(int i) {
        return LinearSeqOptimized.Cclass.dropRight(this, i);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public final List<A> dropWhile(Function1<A, Object> function1) {
        return loop$3(this, function1);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean exists(Function1<A, Object> function1) {
        return LinearSeqOptimized.Cclass.exists(this, function1);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Option<A> find(Function1<A, Object> function1) {
        return LinearSeqOptimized.Cclass.find(this, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [scala.collection.immutable.Nil$] */
    /* JADX WARN: Type inference failed for: r0v19, types: [scala.collection.immutable.$colon$colon] */
    /* JADX WARN: Type inference failed for: r0v27, types: [scala.collection.immutable.Nil$] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object] */
    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike
    public final <B, That> That flatMap(Function1<A, GenTraversableOnce<B>> function1, CanBuildFrom<List<A>, B, That> canBuildFrom) {
        That that;
        if (canBuildFrom != List$.MODULE$.ReusableCBF()) {
            that = TraversableLike.Cclass.flatMap(this, function1, canBuildFrom);
        } else if (this == Nil$.MODULE$) {
            that = Nil$.MODULE$;
        } else {
            BooleanRef create = BooleanRef.create(false);
            ObjectRef create2 = ObjectRef.create(null);
            ObjectRef create3 = ObjectRef.create(null);
            List<A> list = this;
            while (true) {
                List<A> list2 = list;
                if (list2 == Nil$.MODULE$) {
                    break;
                }
                function1.apply(list2.head()).seq().foreach(new List$$anonfun$flatMap$1(this, create, create2, create3));
                list = (List) list2.tail();
            }
            that = create.elem ? (C$colon$colon) create2.elem : Nil$.MODULE$;
        }
        return that;
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B foldLeft(B b, Function2<B, A, B> function2) {
        return (B) LinearSeqOptimized.Cclass.foldLeft(this, b, function2);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> B foldRight(B b, Function2<A, B, B> function2) {
        return (B) reverse().foldLeft(b, new List$$anonfun$foldRight$1(this, function2));
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean forall(Function1<A, Object> function1) {
        return LinearSeqOptimized.Cclass.forall(this, function1);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public final <U> void foreach(Function1<A, U> function1) {
        List<A> list = this;
        while (true) {
            List<A> list2 = list;
            if (list2.isEmpty()) {
                return;
            }
            function1.apply(list2.head());
            list = (List) list2.tail();
        }
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike
    public int hashCode() {
        return LinearSeqLike.Cclass.hashCode(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public abstract A head();

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public int indexWhere(Function1<A, Object> function1, int i) {
        return LinearSeqOptimized.Cclass.indexWhere(this, function1, i);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike
    public boolean isDefinedAt(int i) {
        return LinearSeqOptimized.Cclass.isDefinedAt(this, i);
    }

    @Override // scala.collection.AbstractSeq, scala.PartialFunction
    public /* bridge */ /* synthetic */ boolean isDefinedAt(Object obj) {
        return isDefinedAt(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public abstract boolean isEmpty();

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<A> iterator() {
        return LinearSeqLike.Cclass.iterator(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public A last() {
        return (A) LinearSeqOptimized.Cclass.last(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public int lastIndexWhere(Function1<A, Object> function1, int i) {
        return LinearSeqOptimized.Cclass.lastIndexWhere(this, function1, i);
    }

    @Override // scala.collection.GenSeqLike
    public int length() {
        return LinearSeqOptimized.Cclass.length(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.SeqLike
    public int lengthCompare(int i) {
        return LinearSeqOptimized.Cclass.lengthCompare(this, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [scala.collection.immutable.Nil$] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v0, types: [scala.Function1<A, B>, scala.Function1] */
    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike, scala.collection.SetLike
    public final <B, That> That map(Function1<A, B> function1, CanBuildFrom<List<A>, B, That> canBuildFrom) {
        C$colon$colon c$colon$colon;
        if (canBuildFrom != List$.MODULE$.ReusableCBF()) {
            c$colon$colon = TraversableLike.Cclass.map(this, function1, canBuildFrom);
        } else if (this == Nil$.MODULE$) {
            c$colon$colon = Nil$.MODULE$;
        } else {
            C$colon$colon c$colon$colon2 = new C$colon$colon(function1.apply(head()), Nil$.MODULE$);
            List list = (List) tail();
            C$colon$colon c$colon$colon3 = c$colon$colon2;
            while (true) {
                C$colon$colon c$colon$colon4 = c$colon$colon3;
                if (list == Nil$.MODULE$) {
                    break;
                }
                C$colon$colon c$colon$colon5 = new C$colon$colon(function1.apply(list.head()), Nil$.MODULE$);
                c$colon$colon4.tl_$eq(c$colon$colon5);
                list = (List) list.tail();
                c$colon$colon3 = c$colon$colon5;
            }
            c$colon$colon = c$colon$colon2;
        }
        return c$colon$colon;
    }

    public final <B> List<B> mapConserve(Function1<A, B> function1) {
        return loop$1(null, this, this, function1);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<A, ParSeq<A>> parCombiner() {
        return Seq.Cclass.parCombiner(this);
    }

    public Iterator<Object> productIterator() {
        return Product.Cclass.productIterator(this);
    }

    public String productPrefix() {
        return Product.Cclass.productPrefix(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce
    public <B> B reduceLeft(Function2<B, A, B> function2) {
        return (B) LinearSeqOptimized.Cclass.reduceLeft(this, function2);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> B reduceRight(Function2<A, B, B> function2) {
        return (B) LinearSeqOptimized.Cclass.reduceRight(this, function2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public List<A> reverse() {
        List list = Nil$.MODULE$;
        List<A> list2 = this;
        while (true) {
            List<A> list3 = list2;
            if (list3.isEmpty()) {
                return list;
            }
            list = list.$colon$colon(list3.head());
            list2 = (List) list3.tail();
        }
    }

    public <B> List<B> reverse_$colon$colon$colon(List<B> list) {
        List<A> list2 = this;
        while (!list.isEmpty()) {
            list2 = list2.$colon$colon(list.head());
            list = (List) list.tail();
        }
        return (List<B>) list2;
    }

    @Override // scala.collection.AbstractIterable, scala.collection.GenIterableLike, scala.collection.IterableLike
    public <B> boolean sameElements(GenIterable<B> genIterable) {
        return LinearSeqOptimized.Cclass.sameElements(this, genIterable);
    }

    @Override // scala.collection.LinearSeqOptimized
    public /* synthetic */ boolean scala$collection$LinearSeqOptimized$$super$sameElements(GenIterable genIterable) {
        return IterableLike.Cclass.sameElements(this, genIterable);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public int segmentLength(Function1<A, Object> function1, int i) {
        return LinearSeqOptimized.Cclass.segmentLength(this, function1, i);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public LinearSeq<A> seq() {
        return LinearSeq.Cclass.seq(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public List<A> slice(int i, int i2) {
        int max = package$.MODULE$.max(i, 0);
        return (i2 <= max || isEmpty()) ? Nil$.MODULE$ : drop(max).take(i2 - max);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public final Tuple2<List<A>, List<A>> span(Function1<A, Object> function1) {
        List<A> list;
        ListBuffer listBuffer = new ListBuffer();
        List<A> list2 = this;
        while (true) {
            list = list2;
            if (list.isEmpty() || !BoxesRunTime.unboxToBoolean(function1.apply(list.head()))) {
                break;
            }
            listBuffer.$plus$eq((ListBuffer) list.head());
            list2 = (List) list.tail();
        }
        return new Tuple2<>(listBuffer.toList(), list);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<List<A>, List<A>> splitAt(int i) {
        List<A> list;
        ListBuffer listBuffer = new ListBuffer();
        int i2 = 0;
        List<A> list2 = this;
        while (true) {
            list = list2;
            if (list.isEmpty() || i2 >= i) {
                break;
            }
            i2++;
            listBuffer.$plus$eq((ListBuffer) list.head());
            list2 = (List) list.tail();
        }
        return new Tuple2<>(listBuffer.toList(), list);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
    public String stringPrefix() {
        return "List";
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public List<A> take(int i) {
        C$colon$colon c$colon$colon;
        if (!isEmpty() && i > 0) {
            C$colon$colon c$colon$colon2 = new C$colon$colon(head(), Nil$.MODULE$);
            List list = (List) tail();
            C$colon$colon c$colon$colon3 = c$colon$colon2;
            int i2 = 1;
            while (!list.isEmpty()) {
                c$colon$colon = c$colon$colon2;
                if (i2 < i) {
                    i2++;
                    C$colon$colon c$colon$colon4 = new C$colon$colon(list.head(), Nil$.MODULE$);
                    c$colon$colon3.tl_$eq(c$colon$colon4);
                    list = (List) list.tail();
                    c$colon$colon3 = c$colon$colon4;
                }
            }
            return this;
        }
        c$colon$colon = Nil$.MODULE$;
        return c$colon$colon;
    }

    @Override // scala.collection.AbstractIterable, scala.collection.IterableLike
    public List<A> takeRight(int i) {
        return loop$2(drop(i), this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public final List<A> takeWhile(Function1<A, Object> function1) {
        ListBuffer listBuffer = new ListBuffer();
        List<A> list = this;
        while (true) {
            List<A> list2 = list;
            if (list2.isEmpty() || !BoxesRunTime.unboxToBoolean(function1.apply(list2.head()))) {
                break;
            }
            listBuffer.$plus$eq((ListBuffer) list2.head());
            list = (List) list2.tail();
        }
        return listBuffer.toList();
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public scala.collection.LinearSeq<A> thisCollection() {
        return LinearSeqLike.Cclass.thisCollection(this);
    }

    @Override // scala.collection.LinearSeqLike
    public scala.collection.LinearSeq toCollection(LinearSeqLike linearSeqLike) {
        return LinearSeqLike.Cclass.toCollection(this, linearSeqLike);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public List<A> toList() {
        return this;
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
    public Seq<A> toSeq() {
        return Seq.Cclass.toSeq(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Stream<A> toStream() {
        return isEmpty() ? Stream$Empty$.MODULE$ : new Stream.Cons(head(), new List$$anonfun$toStream$1(this));
    }

    public final Object writeReplace() {
        return new SerializationProxy(this);
    }
}
