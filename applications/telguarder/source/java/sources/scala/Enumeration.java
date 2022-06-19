package scala;

import com.j256.ormlite.stmt.query.SimpleComparison;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.NoSuchElementException;
import java.util.Objects;
import scala.Enumeration;
import scala.collection.AbstractSet;
import scala.collection.GenSet;
import scala.collection.GenSetLike;
import scala.collection.Iterator;
import scala.collection.SortedSet;
import scala.collection.SortedSetLike;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.Sorted;
import scala.collection.immutable.BitSet;
import scala.collection.immutable.Iterable;
import scala.collection.immutable.Set;
import scala.collection.immutable.SortedSet;
import scala.collection.immutable.StringOps;
import scala.collection.immutable.Traversable;
import scala.collection.mutable.Builder;
import scala.collection.mutable.HashMap;
import scala.collection.mutable.Map;
import scala.collection.mutable.StringBuilder;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.immutable.ParSet;
import scala.math.Ordered;
import scala.math.Ordering;
import scala.math.PartialOrdering;
import scala.reflect.NameTransformer$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.util.matching.Regex$;
@ScalaSignature(bytes = "\u0006\u0001\tMh!B\u0001\u0003\u0003\u0003)!aC#ok6,'/\u0019;j_:T\u0011aA\u0001\u0006g\u000e\fG.Y\u0002\u0001'\r\u0001aA\u0003\t\u0003\u000f!i\u0011AA\u0005\u0003\u0013\t\u0011a!\u00118z%\u00164\u0007CA\u0004\f\u0013\ta!A\u0001\u0007TKJL\u0017\r\\5{C\ndW\r\u0003\u0005\u000f\u0001\t\u0005\t\u0015!\u0003\u0010\u0003\u001dIg.\u001b;jC2\u0004\"a\u0002\t\n\u0005E\u0011!aA%oi\")1\u0003\u0001C\u0001)\u00051A(\u001b8jiz\"\"!\u0006\f\u0011\u0005\u001d\u0001\u0001\"\u0002\b\u0013\u0001\u0004y\u0001\"B\n\u0001\t\u0003AB#A\u000b\t\u000bi\u0001A\u0011C\u000e\u0002\u0017I,\u0017\r\u001a*fg>dg/\u001a\u000b\u0002\r!)Q\u0004\u0001C!=\u0005AAo\\*ue&tw\rF\u0001 !\t\u0001S%D\u0001\"\u0015\t\u00113%\u0001\u0003mC:<'\"\u0001\u0013\u0002\t)\fg/Y\u0005\u0003M\u0005\u0012aa\u0015;sS:<\u0007b\u0002\u0015\u0001\u0005\u0004%I!K\u0001\u0005m6\f\u0007/F\u0001+!\u0011Y\u0003g\u0004\u001a\u000e\u00031R!!\f\u0018\u0002\u000f5,H/\u00192mK*\u0011qFA\u0001\u000bG>dG.Z2uS>t\u0017BA\u0019-\u0005\ri\u0015\r\u001d\t\u0003gQj\u0011\u0001\u0001\u0004\u0006k\u0001\t\tA\u000e\u0002\u0006-\u0006dW/Z\n\u0005i\u00199$\u0002E\u00029wIr!aB\u001d\n\u0005i\u0012\u0011a\u00029bG.\fw-Z\u0005\u0003yu\u0012qa\u0014:eKJ,GM\u0003\u0002;\u0005!)1\u0003\u000eC\u0001\u007fQ\t!\u0007C\u0003Bi\u0019\u0005!)\u0001\u0002jIV\tq\u0002C\u0005Ei\t\u0005\t\u0011)A\u0005+\u0005i2oY1mC\u0012*e.^7fe\u0006$\u0018n\u001c8%I=,H/\u001a:F]Vl\u0007\u0005C\u0003Gi\u0011\u0005s)A\u0004d_6\u0004\u0018M]3\u0015\u0005=A\u0005\"B%F\u0001\u0004\u0011\u0014\u0001\u0002;iCRDQa\u0013\u001b\u0005B1\u000ba!Z9vC2\u001cHCA'Q!\t9a*\u0003\u0002P\u0005\t9!i\\8mK\u0006t\u0007\"B)K\u0001\u0004\u0011\u0016!B8uQ\u0016\u0014\bCA\u0004T\u0013\t!&AA\u0002B]fDQA\u0016\u001b\u0005B]\u000b\u0001\u0002[1tQ\u000e{G-\u001a\u000b\u0002\u001f!)\u0011\f\u000eC\u00015\u0006)A\u0005\u001d7vgR\u00191,a\u0019\u0011\u0005Mbf\u0001B/\u0001\u0001y\u0013\u0001BV1mk\u0016\u001cV\r^\n\u00069~\u001b\u0017N\u0003\t\u0004A\u0006\u0014T\"\u0001\u0018\n\u0005\tt#aC!cgR\u0014\u0018m\u0019;TKR\u00042\u0001Z43\u001b\u0005)'B\u00014/\u0003%IW.\\;uC\ndW-\u0003\u0002iK\nI1k\u001c:uK\u0012\u001cV\r\u001e\t\u0005A*\u00144,\u0003\u0002l]\ti1k\u001c:uK\u0012\u001cV\r\u001e'jW\u0016D\u0001\"\u001c/\u0003\u0002\u0003\u0006KA\\\u0001\u0006]:LEm\u001d\t\u0003I>L!\u0001]3\u0003\r\tKGoU3u\u0011\u0019\u0019B\f\"\u0001]eR\u00111l\u001d\u0005\u0006[F\u0004\rA\u001c\u0005\u0006kr#\u0019A^\u0001\t_J$WM]5oOV\tq\u000fE\u00029qJJ!!_\u001f\u0003\u0011=\u0013H-\u001a:j]\u001eDQa\u001f/\u0005\u0002q\f\u0011B]1oO\u0016LU\u000e\u001d7\u0015\tmk\u0018Q\u0001\u0005\u0006}j\u0004\ra`\u0001\u0005MJ|W\u000e\u0005\u0003\b\u0003\u0003\u0011\u0014bAA\u0002\u0005\t1q\n\u001d;j_:Da!a\u0002{\u0001\u0004y\u0018!B;oi&d\u0007bBA\u00069\u0012\u0005\u0013QB\u0001\u0006K6\u0004H/_\u000b\u00027\"9\u0011\u0011\u0003/\u0005\u0002\u0005M\u0011\u0001C2p]R\f\u0017N\\:\u0015\u00075\u000b)\u0002C\u0004\u0002\u0018\u0005=\u0001\u0019\u0001\u001a\u0002\u0003YDa!\u0017/\u0005\u0002\u0005mAcA.\u0002\u001e!9\u0011qDA\r\u0001\u0004\u0011\u0014!\u0002<bYV,\u0007bBA\u00129\u0012\u0005\u0011QE\u0001\u0007I5Lg.^:\u0015\u0007m\u000b9\u0003C\u0004\u0002 \u0005\u0005\u0002\u0019\u0001\u001a\t\u000f\u0005-B\f\"\u0001\u0002.\u0005A\u0011\u000e^3sCR|'/\u0006\u0002\u00020A!\u0001-!\r3\u0013\r\t\u0019D\f\u0002\t\u0013R,'/\u0019;pe\"9\u0011q\u0007/\u0005B\u0005e\u0012\u0001E6fsNLE/\u001a:bi>\u0014hI]8n)\u0011\ty#a\u000f\t\u000f\u0005u\u0012Q\u0007a\u0001e\u0005)1\u000f^1si\"9\u0011\u0011\t/\u0005B\u0005\r\u0013\u0001D:ue&tw\r\u0015:fM&DXCAA#!\u0011\t9%!\u0014\u000f\u0007\u001d\tI%C\u0002\u0002L\t\ta\u0001\u0015:fI\u00164\u0017b\u0001\u0014\u0002P)\u0019\u00111\n\u0002\t\u000f\u0005MC\f\"\u0001\u0002V\u0005IAo\u001c\"ji6\u000b7o[\u000b\u0003\u0003/\u0002RaBA-\u0003;J1!a\u0017\u0003\u0005\u0015\t%O]1z!\r9\u0011qL\u0005\u0004\u0003C\u0012!\u0001\u0002'p]\u001eDa!a\u0006Y\u0001\u0004\u0011\u0004\u0002DA4i\t\u0005)\u0019!C\u0001\u0001\u0005%\u0014\u0001H:dC2\fG%\u00128v[\u0016\u0014\u0018\r^5p]\u0012\"s.\u001e;fe\u0016sW/\\\u000b\u0002+!:A'!\u001c\u0002 \u0005M\u0004cA\u0004\u0002p%\u0019\u0011\u0011\u000f\u0002\u0003!M+'/[1m-\u0016\u00148/[8o+&#e\u0004\u00032jy>j\u001f%H)\t\u000f\u0005]\u0004\u0001)A\u0005U\u0005)a/\\1qA!I\u00111\u0010\u0001A\u0002\u0013%\u0011QB\u0001\u0005mN,G\u000fC\u0005\u0002��\u0001\u0001\r\u0011\"\u0003\u0002\u0002\u0006Aao]3u?\u0012*\u0017\u000f\u0006\u0003\u0002\u0004\u0006%\u0005cA\u0004\u0002\u0006&\u0019\u0011q\u0011\u0002\u0003\tUs\u0017\u000e\u001e\u0005\n\u0003\u0017\u000bi(!AA\u0002m\u000b1\u0001\u001f\u00132\u0011\u001d\ty\t\u0001Q!\nm\u000bQA^:fi\u0002BC!!$\u0002\u0014B\u0019q!!&\n\u0007\u0005]%AA\u0005ue\u0006t7/[3oi\"I\u00111\u0014\u0001A\u0002\u0013%\u0011QT\u0001\fmN,G\u000fR3gS:,G-F\u0001N\u0011%\t\t\u000b\u0001a\u0001\n\u0013\t\u0019+A\bwg\u0016$H)\u001a4j]\u0016$w\fJ3r)\u0011\t\u0019)!*\t\u0013\u0005-\u0015qTA\u0001\u0002\u0004i\u0005bBAU\u0001\u0001\u0006K!T\u0001\rmN,G\u000fR3gS:,G\r\t\u0015\u0005\u0003O\u000bi\u000bE\u0002\b\u0003_K1!!-\u0003\u0005!1x\u000e\\1uS2,\u0007\u0006BAT\u0003'C\u0011\"a.\u0001\u0005\u0004%I!!/\u0002\t9l\u0017\r]\u000b\u0003\u0003w\u0003Ra\u000b\u0019\u0010\u0003\u000bB\u0001\"a0\u0001A\u0003%\u00111X\u0001\u0006]6\f\u0007\u000f\t\u0005\b\u0003\u0007\u0004A\u0011AA\u0007\u0003\u00191\u0018\r\\;fg\"A\u0011q\u0019\u0001A\u0002\u0013E!)\u0001\u0004oKb$\u0018\n\u001a\u0005\n\u0003\u0017\u0004\u0001\u0019!C\t\u0003\u001b\f!B\\3yi&#w\fJ3r)\u0011\t\u0019)a4\t\u0013\u0005-\u0015\u0011ZA\u0001\u0002\u0004y\u0001bBAj\u0001\u0001\u0006KaD\u0001\b]\u0016DH/\u00133!\u0011-\t9\u000e\u0001a\u0001\u0002\u0004%\t\"!7\u0002\u00119,\u0007\u0010\u001e(b[\u0016,\"!a7\u0011\u000ba\ni.!\u0012\n\u0007\u0005MR\bC\u0006\u0002b\u0002\u0001\r\u00111A\u0005\u0012\u0005\r\u0018\u0001\u00048fqRt\u0015-\\3`I\u0015\fH\u0003BAB\u0003KD!\"a#\u0002`\u0006\u0005\t\u0019AAn\u0011!\tI\u000f\u0001Q!\n\u0005m\u0017!\u00038fqRt\u0015-\\3!\u0011\u001d\ti\u000f\u0001C\u0005\u0003\u0007\naB\\3yi:\u000bW.Z(s\u001dVdG\u000e\u0003\u0005\u0002r\u0002\u0001\r\u0011\"\u0003C\u0003\u0015!x\u000e]%e\u0011%\t)\u0010\u0001a\u0001\n\u0013\t90A\u0005u_BLEm\u0018\u0013fcR!\u00111QA}\u0011%\tY)a=\u0002\u0002\u0003\u0007q\u0002C\u0004\u0002~\u0002\u0001\u000b\u0015B\b\u0002\rQ|\u0007/\u00133!\u0011!\u0011\t\u0001\u0001a\u0001\n\u0013\u0011\u0015\u0001\u00032piR|W.\u00133\t\u0013\t\u0015\u0001\u00011A\u0005\n\t\u001d\u0011\u0001\u00042piR|W.\u00133`I\u0015\fH\u0003BAB\u0005\u0013A\u0011\"a#\u0003\u0004\u0005\u0005\t\u0019A\b\t\u000f\t5\u0001\u0001)Q\u0005\u001f\u0005I!m\u001c;u_6LE\r\t\u0005\u0007\u0005#\u0001AQ\u0001\"\u0002\u000b5\f\u00070\u00133\t\u000f\tU\u0001\u0001\"\u0002\u0003\u0018\u0005)\u0011\r\u001d9msR\u0019!G!\u0007\t\u000f\tm!1\u0003a\u0001\u001f\u0005\t\u0001\u0010C\u0004\u0003 \u0001!)A!\t\u0002\u0011]LG\u000f\u001b(b[\u0016$2A\rB\u0012\u0011!\u0011)C!\bA\u0002\u0005\u0015\u0013!A:\t\u000f\t%\u0002\u0001\"\u0006\u0003,\u0005)a+\u00197vKV\t!\u0007C\u0004\u0003*\u0001!)Ba\f\u0015\u0007I\u0012\t\u0004C\u0004\u00034\t5\u0002\u0019A\b\u0002\u0003%DqA!\u000b\u0001\t+\u00119\u0004F\u00023\u0005sA\u0001Ba\u000f\u00036\u0001\u0007\u0011QI\u0001\u0005]\u0006lW\rC\u0004\u0003*\u0001!)Ba\u0010\u0015\u000bI\u0012\tEa\u0011\t\u000f\tM\"Q\ba\u0001\u001f!A!1\bB\u001f\u0001\u0004\t)\u0005C\u0004\u0003H\u0001!IA!\u0013\u0002\u001fA|\u0007/\u001e7bi\u0016t\u0015-\\3NCB$\"!a!\t\u000f\t5\u0003\u0001\"\u0003\u0003P\u00051a.Y7f\u001f\u001a$B!!\u0012\u0003R!9!1\u0007B&\u0001\u0004yaA\u0002B+\u0001!\u00119FA\u0002WC2\u001cBAa\u00153\u0015!Q!1\u0007B*\u0005\u0003\u0005\u000b\u0011B\b\t\u0017\tm\"1\u000bB\u0001B\u0003%\u0011Q\t\u0005\b'\tMC\u0011\u0001B0)\u0019\u0011\tGa\u0019\u0003fA\u00191Ga\u0015\t\u000f\tM\"Q\fa\u0001\u001f!A!1\bB/\u0001\u0004\t)\u0005C\u0004\u0014\u0005'\"\tA!\u001b\u0015\t\t\u0005$1\u000e\u0005\b\u0005g\u00119\u00071\u0001\u0010\u0011\u001d\u0019\"1\u000bC\u0001\u0005_\"BA!\u0019\u0003r!A!1\bB7\u0001\u0004\t)\u0005C\u0004\u0014\u0005'\"\tA!\u001e\u0015\u0005\t\u0005\u0004BB!\u0003T\u0011\u0005!\t\u0003\u0004\u001e\u0005'\"\tE\b\u0005\u00075\tMC\u0011C\u000e)\u0011\tM\u0013QNA\u0010\u0005\u007fr\u0002bt5h_'g`~T\u0004\b\u0005\u0007\u0003\u0001\u0012\u0001BC\u000351\u0016\r\\;f\u001fJ$WM]5oOB\u00191Ga\"\u0007\u000f\t%\u0005\u0001#\u0001\u0003\f\nia+\u00197vK>\u0013H-\u001a:j]\u001e\u001cRAa\"\u0003\u000e^\u00042\u0001\tBH\u0013\r\u0011\t*\t\u0002\u0007\u001f\nTWm\u0019;\t\u000fM\u00119\t\"\u0001\u0003\u0016R\u0011!Q\u0011\u0005\b\r\n\u001dE\u0011\u0001BM)\u0015y!1\u0014BO\u0011\u001d\u0011YBa&A\u0002IBqAa(\u0003\u0018\u0002\u0007!'A\u0001z\u0011%Q\"qQA\u0001\n\u0013\u0011\u0019\u000b\u0006\u0002\u0003\u000e\u001e9!q\u0015\u0001\t\u0002\t%\u0016\u0001\u0003,bYV,7+\u001a;\u0011\u0007M\u0012YK\u0002\u0004^\u0001!\u0005!QV\n\u0005\u0005W3!\u0002C\u0004\u0014\u0005W#\tA!-\u0015\u0005\t%\u0006BCA\u0006\u0005W\u0013\r\u0011\"\u0001\u0002\u000e!A!q\u0017BVA\u0003%1,\u0001\u0004f[B$\u0018\u0010\t\u0005\t\u0005+\u0011Y\u000b\"\u0001\u0003<R\u00191L!0\t\u0011\t}&\u0011\u0018a\u0001\u0005\u0003\fQ!\u001a7f[N\u0004Ba\u0002Bbe%\u0019!Q\u0019\u0002\u0003\u0015q\u0012X\r]3bi\u0016$g\b\u0003\u0005\u0003J\n-F\u0011\u0001Bf\u0003-1'o\\7CSRl\u0015m]6\u0015\u0007m\u0013i\r\u0003\u0005\u0003@\n\u001d\u0007\u0019AA,\u0011!\u0011\tNa+\u0005\u0002\tM\u0017A\u00038fo\n+\u0018\u000e\u001c3feV\u0011!Q\u001b\t\u0006W\t]'gW\u0005\u0004\u00053d#a\u0002\"vS2$WM\u001d\u0005\t\u0005;\u0014Y\u000bb\u0001\u0003`\u0006a1-\u00198Ck&dGM\u0012:p[V\u0011!\u0011\u001d\t\b\u0005G\u0014Io\u0017\u001a\\\u001b\t\u0011)OC\u0002\u0003h:\nqaZ3oKJL7-\u0003\u0003\u0003l\n\u0015(\u0001D\"b]\n+\u0018\u000e\u001c3Ge>l\u0007\"\u0003\u000e\u0003,\u0006\u0005I\u0011\u0002BRQ\u001d\u0001\u0011QNA\u0010\u0005ct\u0002\"\u001eQN<du\u0011L$")
/* loaded from: classes3-dex2jar.jar:scala/Enumeration.class */
public abstract class Enumeration implements Serializable {
    public static final long serialVersionUID = 8476000850333817230L;
    private volatile Enumeration$ValueOrdering$ ValueOrdering$module;
    private volatile Enumeration$ValueSet$ ValueSet$module;
    private int nextId;
    private Iterator<String> nextName;
    private int scala$Enumeration$$bottomId;
    private final Map<Object, String> scala$Enumeration$$nmap;
    private int scala$Enumeration$$topId;
    private final Map<Object, Value> scala$Enumeration$$vmap;
    private volatile transient boolean scala$Enumeration$$vsetDefined;
    private transient ValueSet vset;

    /* loaded from: classes3-dex2jar.jar:scala/Enumeration$Val.class */
    public class Val extends Value {
        public static final long serialVersionUID = -3501153230598116017L;
        private final String name;
        public final int scala$Enumeration$Val$$i;

        public Val(Enumeration enumeration) {
            this(enumeration, enumeration.nextId());
        }

        public Val(Enumeration enumeration, int i) {
            this(enumeration, i, enumeration.scala$Enumeration$$nextNameOrNull());
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Val(Enumeration enumeration, int i, String str) {
            super(enumeration);
            this.scala$Enumeration$Val$$i = i;
            this.name = str;
            Predef$ predef$ = Predef$.MODULE$;
            if (!enumeration.scala$Enumeration$$vmap().isDefinedAt(BoxesRunTime.boxToInteger(i))) {
                enumeration.scala$Enumeration$$vmap().update(BoxesRunTime.boxToInteger(i), this);
                enumeration.scala$Enumeration$$vsetDefined_$eq(false);
                enumeration.nextId_$eq(i + 1);
                if (enumeration.nextId() > enumeration.scala$Enumeration$$topId()) {
                    enumeration.scala$Enumeration$$topId_$eq(enumeration.nextId());
                }
                if (i >= enumeration.scala$Enumeration$$bottomId()) {
                    return;
                }
                enumeration.scala$Enumeration$$bottomId_$eq(i);
                return;
            }
            throw new AssertionError(new StringBuilder().append((Object) "assertion failed: ").append((Object) new StringBuilder().append((Object) "Duplicate id: ").append(BoxesRunTime.boxToInteger(i)).toString()).toString());
        }

        public Val(Enumeration enumeration, String str) {
            this(enumeration, enumeration.nextId(), str);
        }

        @Override // scala.Enumeration.Value
        /* renamed from: id */
        public int mo365id() {
            return this.scala$Enumeration$Val$$i;
        }

        public Object readResolve() {
            Enumeration enumeration = (Enumeration) scala$Enumeration$Val$$$outer().readResolve();
            return enumeration.scala$Enumeration$$vmap() == null ? this : enumeration.scala$Enumeration$$vmap().apply(BoxesRunTime.boxToInteger(this.scala$Enumeration$Val$$i));
        }

        public /* synthetic */ Enumeration scala$Enumeration$Val$$$outer() {
            return this.$outer;
        }

        public String toString() {
            String str = this.name;
            String str2 = str;
            if (str == null) {
                try {
                    str2 = scala$Enumeration$Val$$$outer().scala$Enumeration$$nameOf(this.scala$Enumeration$Val$$i);
                } catch (NoSuchElementException e) {
                    str2 = new StringBuilder().append((Object) "<Invalid enum: no field for #").append(BoxesRunTime.boxToInteger(this.scala$Enumeration$Val$$i)).append((Object) SimpleComparison.GREATER_THAN_OPERATION).toString();
                }
            }
            return str2;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/Enumeration$Value.class */
    public abstract class Value implements Ordered<Value>, Serializable {
        public static final long serialVersionUID = 7091335633555234129L;
        public final /* synthetic */ Enumeration $outer;
        private final Enumeration scala$Enumeration$$outerEnum;

        public Value(Enumeration enumeration) {
            Objects.requireNonNull(enumeration);
            this.$outer = enumeration;
            Ordered.Cclass.$init$(this);
            this.scala$Enumeration$$outerEnum = enumeration;
        }

        @Override // scala.math.Ordered
        public boolean $greater(Value value) {
            return Ordered.Cclass.$greater(this, value);
        }

        @Override // scala.math.Ordered
        public boolean $greater$eq(Value value) {
            return Ordered.Cclass.$greater$eq(this, value);
        }

        @Override // scala.math.Ordered
        public boolean $less(Value value) {
            return Ordered.Cclass.$less(this, value);
        }

        @Override // scala.math.Ordered
        public boolean $less$eq(Value value) {
            return Ordered.Cclass.$less$eq(this, value);
        }

        public ValueSet $plus(Value value) {
            return scala$Enumeration$Value$$$outer().ValueSet().apply(Predef$.MODULE$.wrapRefArray(new Value[]{this, value}));
        }

        public int compare(Value value) {
            return mo365id() < value.mo365id() ? -1 : mo365id() == value.mo365id() ? 0 : 1;
        }

        @Override // scala.math.Ordered, java.lang.Comparable
        public int compareTo(Object obj) {
            return Ordered.Cclass.compareTo(this, obj);
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof Value) {
                Value value = (Value) obj;
                z = false;
                if (scala$Enumeration$$outerEnum() == value.scala$Enumeration$$outerEnum()) {
                    z = false;
                    if (mo365id() == value.mo365id()) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return mo365id();
        }

        /* renamed from: id */
        public abstract int mo365id();

        public Enumeration scala$Enumeration$$outerEnum() {
            return this.scala$Enumeration$$outerEnum;
        }

        public /* synthetic */ Enumeration scala$Enumeration$Value$$$outer() {
            return this.$outer;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/Enumeration$ValueSet.class */
    public class ValueSet extends AbstractSet<Value> implements SortedSet<Value>, Serializable {
        public final /* synthetic */ Enumeration $outer;
        private BitSet nnIds;

        public ValueSet(Enumeration enumeration, BitSet bitSet) {
            this.nnIds = bitSet;
            Objects.requireNonNull(enumeration);
            this.$outer = enumeration;
            Traversable.Cclass.$init$(this);
            Iterable.Cclass.$init$(this);
            Set.Cclass.$init$(this);
            Sorted.Cclass.$init$(this);
            SortedSetLike.Cclass.$init$(this);
            SortedSet.Cclass.$init$(this);
            SortedSet.Cclass.$init$(this);
        }

        public ValueSet $minus(Value value) {
            return new ValueSet(scala$Enumeration$ValueSet$$$outer(), this.nnIds.$minus(value.mo365id() - scala$Enumeration$ValueSet$$$outer().scala$Enumeration$$bottomId()));
        }

        public ValueSet $plus(Value value) {
            return new ValueSet(scala$Enumeration$ValueSet$$$outer(), this.nnIds.$plus(value.mo365id() - scala$Enumeration$ValueSet$$$outer().scala$Enumeration$$bottomId()));
        }

        @Override // scala.collection.AbstractSet, scala.collection.GenSetLike, scala.Function1
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return BoxesRunTime.boxToBoolean(apply(obj));
        }

        @Override // scala.collection.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public GenericCompanion<Set> companion() {
            return Set.Cclass.companion(this);
        }

        @Override // scala.collection.generic.Sorted
        public int compare(Object obj, Object obj2) {
            return Sorted.Cclass.compare(this, obj, obj2);
        }

        public boolean contains(Value value) {
            return this.nnIds.contains(value.mo365id() - scala$Enumeration$ValueSet$$$outer().scala$Enumeration$$bottomId());
        }

        @Override // scala.collection.AbstractSet, scala.collection.generic.GenericSetTemplate, scala.collection.SetLike, scala.collection.immutable.SortedSet, scala.collection.SortedSet
        public ValueSet empty() {
            return scala$Enumeration$ValueSet$$$outer().ValueSet().empty();
        }

        @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
        public Object firstKey() {
            return SortedSetLike.Cclass.firstKey(this);
        }

        @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
        public scala.collection.SortedSet from(Object obj) {
            return SortedSetLike.Cclass.from(this, obj);
        }

        @Override // scala.collection.generic.Sorted
        public boolean hasAll(Iterator<Value> iterator) {
            return Sorted.Cclass.hasAll(this, iterator);
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        public Iterator<Value> iterator() {
            return this.nnIds.iterator().map(new Enumeration$ValueSet$$anonfun$iterator$1(this));
        }

        @Override // scala.collection.SortedSetLike
        public Iterator iteratorFrom(Object obj) {
            return SortedSetLike.Cclass.iteratorFrom(this, obj);
        }

        @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
        public scala.collection.SortedSet keySet() {
            return SortedSetLike.Cclass.keySet(this);
        }

        public Iterator<Value> keysIteratorFrom(Value value) {
            return this.nnIds.keysIteratorFrom(value.mo365id()).map(new Enumeration$ValueSet$$anonfun$keysIteratorFrom$1(this));
        }

        @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
        public Object lastKey() {
            return SortedSetLike.Cclass.lastKey(this);
        }

        @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
        public Ordering<Value> ordering() {
            return scala$Enumeration$ValueSet$$$outer().ValueOrdering();
        }

        @Override // scala.collection.AbstractSet, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
        public Combiner<Value, ParSet<Value>> parCombiner() {
            return Set.Cclass.parCombiner(this);
        }

        @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
        public scala.collection.SortedSet range(Object obj, Object obj2) {
            return SortedSetLike.Cclass.range(this, obj, obj2);
        }

        @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
        public ValueSet rangeImpl(Option<Value> option, Option<Value> option2) {
            return new ValueSet(scala$Enumeration$ValueSet$$$outer(), (BitSet) this.nnIds.rangeImpl(option.isEmpty() ? None$.MODULE$ : new Some(BoxesRunTime.boxToInteger(option.get().mo365id() - scala$Enumeration$ValueSet$$$outer().scala$Enumeration$$bottomId())), option2.isEmpty() ? None$.MODULE$ : new Some(BoxesRunTime.boxToInteger(option2.get().mo365id() - scala$Enumeration$ValueSet$$$outer().scala$Enumeration$$bottomId()))));
        }

        public /* synthetic */ Enumeration scala$Enumeration$ValueSet$$$outer() {
            return this.$outer;
        }

        @Override // scala.collection.SortedSetLike
        public /* synthetic */ boolean scala$collection$SortedSetLike$$super$subsetOf(GenSet genSet) {
            return GenSetLike.Cclass.subsetOf(this, genSet);
        }

        @Override // scala.collection.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public Set<Value> seq() {
            return Set.Cclass.seq(this);
        }

        @Override // scala.collection.AbstractSet, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
        public String stringPrefix() {
            return Predef$any2stringadd$.MODULE$.$plus$extension(Predef$.MODULE$.any2stringadd(scala$Enumeration$ValueSet$$$outer()), ".ValueSet");
        }

        @Override // scala.collection.AbstractSet, scala.collection.GenSetLike, scala.collection.SortedSetLike
        public boolean subsetOf(GenSet<Value> genSet) {
            return SortedSetLike.Cclass.subsetOf(this, genSet);
        }

        @Override // scala.collection.generic.Sorted
        /* renamed from: to */
        public Sorted mo124to(Object obj) {
            return Sorted.Cclass.m163to(this, obj);
        }

        public long[] toBitMask() {
            return this.nnIds.toBitMask();
        }

        @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
        public <B> Set<B> toSet() {
            return Set.Cclass.toSet(this);
        }

        @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
        public scala.collection.SortedSet until(Object obj) {
            return SortedSetLike.Cclass.until(this, obj);
        }
    }

    public Enumeration() {
        this(0);
    }

    public Enumeration(int i) {
        this.scala$Enumeration$$vmap = new HashMap();
        this.vset = null;
        this.scala$Enumeration$$vsetDefined = false;
        this.scala$Enumeration$$nmap = new HashMap();
        this.nextId = i;
        this.scala$Enumeration$$topId = i;
        this.scala$Enumeration$$bottomId = i >= 0 ? 0 : i;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [scala.Enumeration$ValueOrdering$] */
    private Enumeration$ValueOrdering$ ValueOrdering$lzycompute() {
        synchronized (this) {
            if (this.ValueOrdering$module == null) {
                this.ValueOrdering$module = new Ordering<Value>(this) { // from class: scala.Enumeration$ValueOrdering$
                    private final /* synthetic */ Enumeration $outer;

                    {
                        Objects.requireNonNull(this);
                        this.$outer = this;
                        PartialOrdering.Cclass.$init$(this);
                        Ordering.Cclass.$init$(this);
                    }

                    private Object readResolve() {
                        return this.$outer.ValueOrdering();
                    }

                    public int compare(Enumeration.Value value, Enumeration.Value value2) {
                        return value.compare(value2);
                    }

                    @Override // scala.math.Ordering, scala.math.PartialOrdering, scala.math.Equiv
                    public boolean equiv(Object obj, Object obj2) {
                        return Ordering.Cclass.equiv(this, obj, obj2);
                    }

                    @Override // scala.math.Ordering, scala.math.PartialOrdering
                    /* renamed from: gt */
                    public boolean mo37gt(Object obj, Object obj2) {
                        return Ordering.Cclass.m40gt(this, obj, obj2);
                    }

                    @Override // scala.math.Ordering, scala.math.PartialOrdering
                    public boolean gteq(Object obj, Object obj2) {
                        return Ordering.Cclass.gteq(this, obj, obj2);
                    }

                    @Override // scala.math.Ordering, scala.math.PartialOrdering
                    /* renamed from: lt */
                    public boolean mo36lt(Object obj, Object obj2) {
                        return Ordering.Cclass.m39lt(this, obj, obj2);
                    }

                    @Override // scala.math.Ordering, scala.math.PartialOrdering
                    public boolean lteq(Object obj, Object obj2) {
                        return Ordering.Cclass.lteq(this, obj, obj2);
                    }

                    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, scala.Enumeration$Value] */
                    @Override // scala.math.Ordering
                    public Enumeration.Value max(Enumeration.Value value, Enumeration.Value value2) {
                        return Ordering.Cclass.max(this, value, value2);
                    }

                    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, scala.Enumeration$Value] */
                    @Override // scala.math.Ordering
                    public Enumeration.Value min(Enumeration.Value value, Enumeration.Value value2) {
                        return Ordering.Cclass.min(this, value, value2);
                    }

                    @Override // scala.math.Ordering
                    public Ordering<Enumeration.Value>.Ops mkOrderingOps(Enumeration.Value value) {
                        return Ordering.Cclass.mkOrderingOps(this, value);
                    }

                    @Override // scala.math.Ordering
                    /* renamed from: on */
                    public <U> Ordering<U> mo49on(Function1<U, Enumeration.Value> function1) {
                        return Ordering.Cclass.m38on(this, function1);
                    }

                    @Override // scala.math.Ordering, scala.math.PartialOrdering
                    public Ordering<Enumeration.Value> reverse() {
                        return Ordering.Cclass.reverse(this);
                    }

                    @Override // scala.math.Ordering, scala.math.PartialOrdering
                    public Some tryCompare(Object obj, Object obj2) {
                        return Ordering.Cclass.tryCompare(this, obj, obj2);
                    }
                };
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.ValueOrdering$module;
    }

    private Enumeration$ValueSet$ ValueSet$lzycompute() {
        synchronized (this) {
            if (this.ValueSet$module == null) {
                this.ValueSet$module = new Enumeration$ValueSet$(this);
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.ValueSet$module;
    }

    private boolean scala$Enumeration$$vsetDefined() {
        return this.scala$Enumeration$$vsetDefined;
    }

    private ValueSet vset() {
        return this.vset;
    }

    private void vset_$eq(ValueSet valueSet) {
        this.vset = valueSet;
    }

    public final Value Value() {
        return Value(nextId());
    }

    public final Value Value(int i) {
        return Value(i, scala$Enumeration$$nextNameOrNull());
    }

    public final Value Value(int i, String str) {
        return new Val(this, i, str);
    }

    public final Value Value(String str) {
        return Value(nextId(), str);
    }

    public Enumeration$ValueOrdering$ ValueOrdering() {
        return this.ValueOrdering$module == null ? ValueOrdering$lzycompute() : this.ValueOrdering$module;
    }

    public Enumeration$ValueSet$ ValueSet() {
        return this.ValueSet$module == null ? ValueSet$lzycompute() : this.ValueSet$module;
    }

    public final Value apply(int i) {
        return scala$Enumeration$$vmap().apply(BoxesRunTime.boxToInteger(i));
    }

    public final int maxId() {
        return scala$Enumeration$$topId();
    }

    public int nextId() {
        return this.nextId;
    }

    public void nextId_$eq(int i) {
        this.nextId = i;
    }

    public Iterator<String> nextName() {
        return this.nextName;
    }

    public void nextName_$eq(Iterator<String> iterator) {
        this.nextName = iterator;
    }

    public Object readResolve() {
        return getClass().getField(NameTransformer$.MODULE$.MODULE_INSTANCE_NAME()).get(null);
    }

    public int scala$Enumeration$$bottomId() {
        return this.scala$Enumeration$$bottomId;
    }

    public void scala$Enumeration$$bottomId_$eq(int i) {
        this.scala$Enumeration$$bottomId = i;
    }

    public final boolean scala$Enumeration$$isValDef$1(Method method, Field[] fieldArr) {
        return Predef$.MODULE$.refArrayOps(fieldArr).exists(new Enumeration$$anonfun$scala$Enumeration$$isValDef$1$1(this, method));
    }

    public String scala$Enumeration$$nameOf(int i) {
        String str;
        synchronized (this) {
            str = (String) scala$Enumeration$$nmap().getOrElse(BoxesRunTime.boxToInteger(i), new Enumeration$$anonfun$scala$Enumeration$$nameOf$1(this, i));
        }
        return str;
    }

    public String scala$Enumeration$$nextNameOrNull() {
        return (nextName() == null || !nextName().hasNext()) ? null : nextName().next();
    }

    public Map<Object, String> scala$Enumeration$$nmap() {
        return this.scala$Enumeration$$nmap;
    }

    public void scala$Enumeration$$populateNameMap() {
        Predef$.MODULE$.refArrayOps((Method[]) Predef$.MODULE$.refArrayOps(getClass().getMethods()).filter(new Enumeration$$anonfun$1(this, getClass().getDeclaredFields()))).foreach(new Enumeration$$anonfun$scala$Enumeration$$populateNameMap$1(this));
    }

    public int scala$Enumeration$$topId() {
        return this.scala$Enumeration$$topId;
    }

    public void scala$Enumeration$$topId_$eq(int i) {
        this.scala$Enumeration$$topId = i;
    }

    public Map<Object, Value> scala$Enumeration$$vmap() {
        return this.scala$Enumeration$$vmap;
    }

    public void scala$Enumeration$$vsetDefined_$eq(boolean z) {
        this.scala$Enumeration$$vsetDefined = z;
    }

    public String toString() {
        Predef$ predef$ = Predef$.MODULE$;
        Predef$ predef$2 = Predef$.MODULE$;
        Predef$ predef$3 = Predef$.MODULE$;
        Predef$ predef$4 = Predef$.MODULE$;
        return (String) predef$.refArrayOps(((String) predef$2.refArrayOps(new StringOps(new StringOps(getClass().getName()).stripSuffix(NameTransformer$.MODULE$.MODULE_SUFFIX_STRING())).split('.')).last()).split(Regex$.MODULE$.quote(NameTransformer$.MODULE$.NAME_JOIN_STRING()))).last();
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [scala.collection.Iterable, scala.collection.TraversableOnce] */
    public ValueSet values() {
        if (!scala$Enumeration$$vsetDefined()) {
            vset_$eq((ValueSet) ((Builder) ValueSet().newBuilder().$plus$plus$eq(scala$Enumeration$$vmap().values())).result());
            scala$Enumeration$$vsetDefined_$eq(true);
        }
        return vset();
    }

    public final Value withName(String str) {
        Option<Value> find = values().find(new Enumeration$$anonfun$withName$1(this, str));
        Enumeration$$anonfun$withName$2 enumeration$$anonfun$withName$2 = new Enumeration$$anonfun$withName$2(this, str);
        if (!find.isEmpty()) {
            return find.get();
        }
        throw new NoSuchElementException(new StringContext(Predef$.MODULE$.wrapRefArray(new String[]{"No value found for '", "'"})).m361s(Predef$.MODULE$.genericWrapArray(new Object[]{enumeration$$anonfun$withName$2.s$1})));
    }
}
