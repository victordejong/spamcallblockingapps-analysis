package scala.collection.mutable;

import java.util.Locale;
import java.util.regex.PatternSyntaxException;
import scala.Function1;
import scala.Function2;
import scala.Option;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.GenIterable;
import scala.collection.GenSeq;
import scala.collection.IndexedSeq;
import scala.collection.IndexedSeqLike;
import scala.collection.IndexedSeqOptimized;
import scala.collection.IterableLike;
import scala.collection.Iterator;
import scala.collection.Seq;
import scala.collection.SeqLike;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.Growable;
import scala.collection.immutable.StringLike;
import scala.collection.mutable.Builder;
import scala.collection.mutable.IndexedSeq;
import scala.collection.mutable.IndexedSeqLike;
import scala.math.Ordered;
import scala.reflect.ClassTag;
import scala.reflect.ClassTag$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.util.matching.Regex;
@ScalaSignature(bytes = "\u0006\u0001\rEa\u0001B\u0001\u0003\u0005%\u0011Qb\u0015;sS:<')^5mI\u0016\u0014(BA\u0002\u0005\u0003\u001diW\u000f^1cY\u0016T!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\b\u0003\u0015\u00198-\u00197b\u0007\u0001\u0019r\u0001\u0001\u0006\u00135u!c\u0006E\u0002\f\u00199i\u0011AA\u0005\u0003\u001b\t\u00111\"\u00112tiJ\f7\r^*fcB\u0011q\u0002E\u0007\u0002\r%\u0011\u0011C\u0002\u0002\u0005\u0007\"\f'\u000f\u0005\u0002\u001415\tAC\u0003\u0002\u0016-\u0005!A.\u00198h\u0015\u00059\u0012\u0001\u00026bm\u0006L!!\u0007\u000b\u0003\u0019\rC\u0017M]*fcV,gnY3\u0011\u0007-Yb\"\u0003\u0002\u001d\u0005\tQ\u0011J\u001c3fq\u0016$7+Z9\u0011\u0007y\t3%D\u0001 \u0015\t\u0001C!A\u0005j[6,H/\u00192mK&\u0011!e\b\u0002\u000b'R\u0014\u0018N\\4MS.,\u0007CA\u0006\u0001!\u0011YQED\u0014\n\u0005\u0019\u0012!a\u0002\"vS2$WM\u001d\t\u0003Q-r!aD\u0015\n\u0005)2\u0011A\u0002)sK\u0012,g-\u0003\u0002-[\t11\u000b\u001e:j]\u001eT!A\u000b\u0004\u0011\u0005=y\u0013B\u0001\u0019\u0007\u00051\u0019VM]5bY&T\u0018M\u00197f\u0011!\u0011\u0004A!b\u0001\n\u0013\u0019\u0014AC;oI\u0016\u0014H._5oOV\tA\u0007\u0005\u0002\u0014k%\u0011\u0011\u0001\u0006\u0005\to\u0001\u0011\t\u0011)A\u0005i\u0005YQO\u001c3fe2L\u0018N\\4!\u0011\u0015I\u0004\u0001\"\u0001;\u0003\u0019a\u0014N\\5u}Q\u00111e\u000f\u0005\u0006ea\u0002\r\u0001\u000e\u0005\u0007{\u0001\u0001K\u0011\u000b \u0002\u001dQD\u0017n]\"pY2,7\r^5p]V\t1\u0005\u0003\u0004A\u0001\u0001&\t&Q\u0001\ri>\u001cu\u000e\u001c7fGRLwN\u001c\u000b\u0003G\tCQaQ A\u0002\r\nAA]3qe\"1Q\t\u0001Q\u0005R\u0019\u000b!B\\3x\u0005VLG\u000eZ3s+\u00059\u0005\u0003B\u0006I\u001d\rJ!!\u0013\u0002\u0003\u001d\u001d\u0013xn^5oO\n+\u0018\u000e\u001c3fe\")\u0011\b\u0001C\u0001\u0017R\u00191\u0005T)\t\u000b5S\u0005\u0019\u0001(\u0002\u0019%t\u0017\u000e^\"ba\u0006\u001c\u0017\u000e^=\u0011\u0005=y\u0015B\u0001)\u0007\u0005\rIe\u000e\u001e\u0005\u0006%*\u0003\raJ\u0001\nS:LGOV1mk\u0016DQ!\u000f\u0001\u0005\u0002Q#\u0012a\t\u0005\u0006s\u0001!\tA\u0016\u000b\u0003G]CQ\u0001W+A\u00029\u000b\u0001bY1qC\u000eLG/\u001f\u0005\u0006s\u0001!\tA\u0017\u000b\u0003GmCQ\u0001X-A\u0002\u001d\n1a\u001d;s\u0011\u0015q\u0006\u0001\"\u0001`\u0003\u001d!x.\u0011:sCf,\u0012\u0001\u0019\t\u0004\u001f\u0005t\u0011B\u00012\u0007\u0005\u0015\t%O]1z\u0011\u0015!\u0007\u0001\"\u0011f\u0003\u0019aWM\\4uQV\ta\nC\u0003h\u0001\u0011\u0005\u0001.\u0001\u0006mK:<G\u000f[0%KF$\"!\u001b7\u0011\u0005=Q\u0017BA6\u0007\u0005\u0011)f.\u001b;\t\u000b54\u0007\u0019\u0001(\u0002\u00039DQa\u001c\u0001\u0005\u0002A\fQa\u00197fCJ$\u0012!\u001b\u0005\u0006e\u0002!\ta]\u0001\ng\u0016$H*\u001a8hi\"$\"!\u001b;\t\u000bU\f\b\u0019\u0001(\u0002\u00071,g\u000eC\u0003Y\u0001\u0011\u0005Q\rC\u0003y\u0001\u0011\u0005\u00110\u0001\bf]N,(/Z\"ba\u0006\u001c\u0017\u000e^=\u0015\u0005%T\b\"B>x\u0001\u0004q\u0015a\u00038fo\u000e\u000b\u0007/Y2jifDQ! \u0001\u0005\u0002y\faa\u00195be\u0006#HC\u0001\b��\u0011\u0019\t\t\u0001 a\u0001\u001d\u0006)\u0011N\u001c3fq\"9\u0011Q\u0001\u0001\u0005B\u0005\u001d\u0011!B1qa2LHc\u0001\b\u0002\n!9\u0011\u0011AA\u0002\u0001\u0004q\u0005bBA\u0007\u0001\u0011\u0005\u0011qB\u0001\rI\u0016dW\r^3DQ\u0006\u0014\u0018\t\u001e\u000b\u0004G\u0005E\u0001bBA\u0001\u0003\u0017\u0001\rA\u0014\u0005\b\u0003+\u0001A\u0011AA\f\u0003%\u0019X\r^\"iCJ\fE\u000fF\u0003j\u00033\tY\u0002C\u0004\u0002\u0002\u0005M\u0001\u0019\u0001(\t\u000f\u0005u\u00111\u0003a\u0001\u001d\u0005\u00111\r\u001b\u0005\b\u0003C\u0001A\u0011AA\u0012\u0003\u0019)\b\u000fZ1uKR)\u0011.!\n\u0002*!9\u0011qEA\u0010\u0001\u0004q\u0015!A5\t\u000f\u0005-\u0012q\u0004a\u0001\u001d\u0005\t1\rC\u0004\u00020\u0001!\t!!\r\u0002\u0013M,(m\u001d;sS:<GcA\u0014\u00024!9\u0011QGA\u0017\u0001\u0004q\u0015!B:uCJ$\bbBA\u0018\u0001\u0011\u0005\u0011\u0011\b\u000b\u0006O\u0005m\u0012Q\b\u0005\b\u0003k\t9\u00041\u0001O\u0011\u001d\ty$a\u000eA\u00029\u000b1!\u001a8e\u0011\u001d\t\u0019\u0005\u0001C\u0001\u0003\u000b\n1b];c'\u0016\fX/\u001a8dKR)!#a\u0012\u0002J!9\u0011QGA!\u0001\u0004q\u0005bBA \u0003\u0003\u0002\rA\u0014\u0005\b\u0003\u001b\u0002A\u0011AA(\u0003!!\u0003\u000f\\;tI\u0015\fH\u0003BA)\u0003'j\u0011\u0001\u0001\u0005\b\u0003+\nY\u00051\u0001\u000f\u0003\u0005A\bbBA-\u0001\u0011\u0005\u00111L\u0001\u000eIAdWo\u001d\u0013qYV\u001cH%Z9\u0015\t\u0005E\u0013Q\f\u0005\b\u0003?\n9\u00061\u0001(\u0003\u0005\u0019\bbBA2\u0001\u0011\u0005\u0011QM\u0001\nCB\u0004XM\u001c3BY2$2aIA4\u0011\u001d\tI'!\u0019A\u0002\u001d\n!\u0001_:\t\u000f\u00055\u0004\u0001\"\u0001\u0002p\u0005)A\u0005\u001d7vgR!\u0011\u0011KA9\u0011\u001d\t)&a\u001bA\u00029Aq!!\u001e\u0001\t\u0003\t9(\u0001\u0004baB,g\u000e\u001a\u000b\u0004G\u0005e\u0004\u0002CA+\u0003g\u0002\r!a\u001f\u0011\u0007=\ti(C\u0002\u0002��\u0019\u00111!\u00118z\u0011\u001d\t)\b\u0001C\u0001\u0003\u0007#2aIAC\u0011\u001d\ty&!!A\u0002\u001dBq!!\u001e\u0001\t\u0003\tI\tF\u0002$\u0003\u0017Cq!!$\u0002\b\u0002\u00071%\u0001\u0002tE\"9\u00111\r\u0001\u0005\u0002\u0005EEcA\u0012\u0002\u0014\"A\u0011\u0011NAH\u0001\u0004\t)\nE\u0003\u0002\u0018\u0006ee\"D\u0001\u0005\u0013\r\tY\n\u0002\u0002\u0010)J\fg/\u001a:tC\ndWm\u00148dK\"9\u00111\r\u0001\u0005\u0002\u0005}EcA\u0012\u0002\"\"9\u0011\u0011NAO\u0001\u0004\u0001\u0007bBA2\u0001\u0011\u0005\u0011Q\u0015\u000b\bG\u0005\u001d\u0016\u0011VAW\u0011\u001d\tI'a)A\u0002\u0001Dq!a+\u0002$\u0002\u0007a*\u0001\u0004pM\u001a\u001cX\r\u001e\u0005\u0007k\u0006\r\u0006\u0019\u0001(\t\u000f\u0005U\u0004\u0001\"\u0001\u00022R\u00191%a-\t\u0011\u0005U\u0013q\u0016a\u0001\u0003k\u00032aDA\\\u0013\r\tIL\u0002\u0002\b\u0005>|G.Z1o\u0011\u001d\t)\b\u0001C\u0001\u0003{#2aIA`\u0011!\t)&a/A\u0002\u0005\u0005\u0007cA\b\u0002D&\u0019\u0011Q\u0019\u0004\u0003\t\tKH/\u001a\u0005\b\u0003k\u0002A\u0011AAe)\r\u0019\u00131\u001a\u0005\t\u0003+\n9\r1\u0001\u0002NB\u0019q\"a4\n\u0007\u0005EgAA\u0003TQ>\u0014H\u000fC\u0004\u0002v\u0001!\t!!6\u0015\u0007\r\n9\u000eC\u0004\u0002V\u0005M\u0007\u0019\u0001(\t\u000f\u0005U\u0004\u0001\"\u0001\u0002\\R\u00191%!8\t\u0011\u0005U\u0013\u0011\u001ca\u0001\u0003?\u00042aDAq\u0013\r\t\u0019O\u0002\u0002\u0005\u0019>tw\rC\u0004\u0002v\u0001!\t!a:\u0015\u0007\r\nI\u000f\u0003\u0005\u0002V\u0005\u0015\b\u0019AAv!\ry\u0011Q^\u0005\u0004\u0003_4!!\u0002$m_\u0006$\bbBA;\u0001\u0011\u0005\u00111\u001f\u000b\u0004G\u0005U\b\u0002CA+\u0003c\u0004\r!a>\u0011\u0007=\tI0C\u0002\u0002|\u001a\u0011a\u0001R8vE2,\u0007bBA;\u0001\u0011\u0005\u0011q \u000b\u0004G\t\u0005\u0001bBA+\u0003{\u0004\rA\u0004\u0005\b\u0005\u000b\u0001A\u0011\u0001B\u0004\u0003\u0019!W\r\\3uKR)1E!\u0003\u0003\f!9\u0011Q\u0007B\u0002\u0001\u0004q\u0005bBA \u0005\u0007\u0001\rA\u0014\u0005\b\u0005\u001f\u0001A\u0011\u0001B\t\u0003\u001d\u0011X\r\u001d7bG\u0016$ra\tB\n\u0005+\u00119\u0002C\u0004\u00026\t5\u0001\u0019\u0001(\t\u000f\u0005}\"Q\u0002a\u0001\u001d\"1AL!\u0004A\u0002\u001dBqAa\u0007\u0001\t\u0003\u0011i\"A\u0005j]N,'\u000f^!mYRI1Ea\b\u0003\"\t\r\"Q\u0005\u0005\b\u0003\u0003\u0011I\u00021\u0001O\u0011\u0019a&\u0011\u0004a\u0001A\"9\u00111\u0016B\r\u0001\u0004q\u0005BB;\u0003\u001a\u0001\u0007a\nC\u0004\u0003*\u0001!\tAa\u000b\u0002\r%t7/\u001a:u)\u0015\u0019#Q\u0006B\u0018\u0011\u001d\t\tAa\nA\u00029C\u0001\"!\u0016\u0003(\u0001\u0007\u00111\u0010\u0005\b\u0005S\u0001A\u0011\u0001B\u001a)\u0015\u0019#Q\u0007B\u001c\u0011\u001d\t\tA!\rA\u00029Cq!!\u0016\u00032\u0001\u0007q\u0005C\u0004\u0003\u001c\u0001!\tAa\u000f\u0015\u000b\r\u0012iDa\u0010\t\u000f\u0005\u0005!\u0011\ba\u0001\u001d\"A\u0011\u0011\u000eB\u001d\u0001\u0004\t)\nC\u0004\u0003\u001c\u0001!\tAa\u0011\u0015\u000b\r\u0012)Ea\u0012\t\u000f\u0005\u0005!\u0011\ta\u0001\u001d\"9\u0011\u0011\u000eB!\u0001\u0004\u0001\u0007b\u0002B\u0015\u0001\u0011\u0005!1\n\u000b\u0006G\t5#q\n\u0005\b\u0003\u0003\u0011I\u00051\u0001O\u0011!\t)F!\u0013A\u0002\u0005U\u0006b\u0002B\u0015\u0001\u0011\u0005!1\u000b\u000b\u0006G\tU#q\u000b\u0005\b\u0003\u0003\u0011\t\u00061\u0001O\u0011!\t)F!\u0015A\u0002\u0005\u0005\u0007b\u0002B\u0015\u0001\u0011\u0005!1\f\u000b\u0006G\tu#q\f\u0005\b\u0003\u0003\u0011I\u00061\u0001O\u0011!\t)F!\u0017A\u0002\u00055\u0007b\u0002B\u0015\u0001\u0011\u0005!1\r\u000b\u0006G\t\u0015$q\r\u0005\b\u0003\u0003\u0011\t\u00071\u0001O\u0011\u001d\t)F!\u0019A\u00029CqA!\u000b\u0001\t\u0003\u0011Y\u0007F\u0003$\u0005[\u0012y\u0007C\u0004\u0002\u0002\t%\u0004\u0019\u0001(\t\u0011\u0005U#\u0011\u000ea\u0001\u0003?DqA!\u000b\u0001\t\u0003\u0011\u0019\bF\u0003$\u0005k\u00129\bC\u0004\u0002\u0002\tE\u0004\u0019\u0001(\t\u0011\u0005U#\u0011\u000fa\u0001\u0003WDqA!\u000b\u0001\t\u0003\u0011Y\bF\u0003$\u0005{\u0012y\bC\u0004\u0002\u0002\te\u0004\u0019\u0001(\t\u0011\u0005U#\u0011\u0010a\u0001\u0003oDqA!\u000b\u0001\t\u0003\u0011\u0019\tF\u0003$\u0005\u000b\u00139\tC\u0004\u0002\u0002\t\u0005\u0005\u0019\u0001(\t\u000f\u0005U#\u0011\u0011a\u0001\u001d!9!1\u0012\u0001\u0005\u0002\t5\u0015aB5oI\u0016DxJ\u001a\u000b\u0004\u001d\n=\u0005B\u0002/\u0003\n\u0002\u0007q\u0005C\u0004\u0003\f\u0002!\tAa%\u0015\u000b9\u0013)Ja&\t\rq\u0013\t\n1\u0001(\u0011\u001d\u0011IJ!%A\u00029\u000b\u0011B\u001a:p[&sG-\u001a=\t\u000f\tu\u0005\u0001\"\u0001\u0003 \u0006YA.Y:u\u0013:$W\r_(g)\rq%\u0011\u0015\u0005\u00079\nm\u0005\u0019A\u0014\t\u000f\tu\u0005\u0001\"\u0001\u0003&R)aJa*\u0003*\"1ALa)A\u0002\u001dBqA!'\u0003$\u0002\u0007a\n\u0003\u0004\u0003.\u0002!\tEP\u0001\be\u00164XM]:fQ!\u0011YK!-\u0003>\n\u0005\u0007\u0003\u0002BZ\u0005sk!A!.\u000b\u0007\t]f!\u0001\u0006b]:|G/\u0019;j_:LAAa/\u00036\nIQ.[4sCRLwN\\\u0011\u0003\u0005\u007f\u000b\u0011\u000f\u0019:fm\u0016\u00148/\u001a1!e\u0016$XO\u001d8tA\u0005\u0004c.Z<!S:\u001cH/\u00198dK:\u0002\u0003%V:fA\u0001\u0014XM^3sg\u0016\u001cuN\u001c;f]R\u001c\b\r\t;pAU\u0004H-\u0019;fA%t\u0007\u0005\u001d7bG\u0016\u0004\u0013M\u001c3!e\u0016$XO\u001d8!i\"\fG\u000fI*ue&twMQ;jY\u0012,'\u000fI5ug\u0016dgML\u0011\u0003\u0005\u0007\fQA\r\u00189]ABaAa2\u0001\t\u0003\"\u0016!B2m_:,\u0007B\u0002Bf\u0001\u0011\u0005A+A\bsKZ,'o]3D_:$XM\u001c;t\u0011\u001d\u0011y\r\u0001C!\u0005#\f\u0001\u0002^8TiJLgn\u001a\u000b\u0003\u0005'\u00042a\u0005Bk\u0013\taC\u0003C\u0004\u0003Z\u0002!\tEa7\u0002\u00115\\7\u000b\u001e:j]\u001e,\"Aa5\t\u000f\t}\u0007\u0001\"\u0001\u0003b\u00061!/Z:vYR$\u0012a\n\u0015\b\u0001\t\u0015(1\u001eBw!\ry!q]\u0005\u0004\u0005S4!\u0001E*fe&\fGNV3sg&|g.V%E\u0003\u00151\u0018\r\\;f=!IyVk\u00010.T\u000f��a\u0002By\u0005!\u0005!1_\u0001\u000e'R\u0014\u0018N\\4Ck&dG-\u001a:\u0011\u0007-\u0011)P\u0002\u0004\u0002\u0005!\u0005!q_\n\u0006\u0005k\u0014IP\f\t\u0004\u001f\tm\u0018b\u0001B\u007f\r\t1\u0011I\\=SK\u001aDq!\u000fB{\t\u0003\u0019\t\u0001\u0006\u0002\u0003t\"1QI!>\u0005\u0002yB!ba\u0002\u0003v\u0006\u0005I\u0011BB\u0005\u0003-\u0011X-\u00193SKN|GN^3\u0015\u0005\r-\u0001cA\n\u0004\u000e%\u00191q\u0002\u000b\u0003\r=\u0013'.Z2u\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/StringBuilder.class */
public final class StringBuilder extends AbstractSeq<Object> implements CharSequence, IndexedSeq<Object>, StringLike<StringBuilder>, Builder<Object, String>, Serializable {
    public static final long serialVersionUID = -8525408645367278351L;
    private final StringBuilder underlying;

    public StringBuilder() {
        this(16, "");
    }

    public StringBuilder(int i) {
        this(i, "");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public StringBuilder(int r6, java.lang.String r7) {
        /*
            r5 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = r7
            int r2 = r2.length()
            r3 = r6
            int r2 = r2 + r3
            r1.<init>(r2)
            r8 = r0
            r0 = r8
            r1 = r7
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r8
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.collection.mutable.StringBuilder.<init>(int, java.lang.String):void");
    }

    public StringBuilder(String str) {
        this(16, str);
    }

    public StringBuilder(StringBuilder sb) {
        this.underlying = sb;
        IndexedSeqLike.Cclass.$init$(this);
        IndexedSeq.Cclass.$init$(this);
        IndexedSeqLike.Cclass.$init$(this);
        IndexedSeq.Cclass.$init$(this);
        IndexedSeqOptimized.Cclass.$init$(this);
        Ordered.Cclass.$init$(this);
        StringLike.Cclass.$init$(this);
        Growable.Cclass.$init$(this);
        Builder.Cclass.$init$(this);
    }

    private StringBuilder underlying() {
        return this.underlying;
    }

    @Override // scala.math.Ordered
    public boolean $greater(String str) {
        return Ordered.Cclass.$greater(this, str);
    }

    @Override // scala.math.Ordered
    public boolean $greater$eq(String str) {
        return Ordered.Cclass.$greater$eq(this, str);
    }

    @Override // scala.math.Ordered
    public boolean $less(String str) {
        return Ordered.Cclass.$less(this, str);
    }

    @Override // scala.math.Ordered
    public boolean $less$eq(String str) {
        return Ordered.Cclass.$less$eq(this, str);
    }

    public StringBuilder $plus(char c) {
        $plus$eq(c);
        return this;
    }

    @Override // scala.collection.generic.Growable
    public Growable $plus$eq(Object obj, Object obj2, Seq seq) {
        Growable $plus$plus$eq;
        $plus$plus$eq = $plus$eq((StringBuilder) obj).$plus$eq(obj2).$plus$plus$eq(seq);
        return $plus$plus$eq;
    }

    public StringBuilder $plus$eq(char c) {
        append(c);
        return this;
    }

    @Override // scala.collection.generic.Growable
    public Growable<Object> $plus$plus$eq(TraversableOnce<Object> traversableOnce) {
        return Growable.Cclass.$plus$plus$eq(this, traversableOnce);
    }

    public StringBuilder $plus$plus$eq(String str) {
        underlying().append(str);
        return this;
    }

    @Override // scala.collection.immutable.StringLike
    public String $times(int i) {
        return StringLike.Cclass.$times(this, i);
    }

    public StringBuilder append(byte b) {
        return append((int) b);
    }

    public StringBuilder append(char c) {
        underlying().append(c);
        return this;
    }

    public StringBuilder append(double d) {
        underlying().append(d);
        return this;
    }

    public StringBuilder append(float f) {
        underlying().append(f);
        return this;
    }

    public StringBuilder append(int i) {
        underlying().append(i);
        return this;
    }

    public StringBuilder append(long j) {
        underlying().append(j);
        return this;
    }

    public StringBuilder append(Object obj) {
        underlying().append(String.valueOf(obj));
        return this;
    }

    public StringBuilder append(String str) {
        underlying().append(str);
        return this;
    }

    public StringBuilder append(StringBuilder stringBuilder) {
        underlying().append((CharSequence) stringBuilder);
        return this;
    }

    public StringBuilder append(short s) {
        return append((int) s);
    }

    public StringBuilder append(boolean z) {
        underlying().append(z);
        return this;
    }

    public StringBuilder appendAll(String str) {
        underlying().append(str);
        return this;
    }

    public StringBuilder appendAll(TraversableOnce<Object> traversableOnce) {
        return appendAll((char[]) traversableOnce.toArray(ClassTag$.MODULE$.Char()));
    }

    public StringBuilder appendAll(char[] cArr) {
        underlying().append(cArr);
        return this;
    }

    public StringBuilder appendAll(char[] cArr, int i, int i2) {
        underlying().append(cArr, i, i2);
        return this;
    }

    @Override // scala.collection.GenSeqLike
    public char apply(int i) {
        return underlying().charAt(i);
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToCharacter(apply(BoxesRunTime.unboxToInt(obj)));
    }

    public int capacity() {
        return underlying().capacity();
    }

    @Override // scala.collection.immutable.StringLike
    public String capitalize() {
        return StringLike.Cclass.capitalize(this);
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return underlying().charAt(i);
    }

    @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
    public void clear() {
        setLength(0);
    }

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.mutable.Cloneable
    public StringBuilder clone() {
        return new StringBuilder(new StringBuilder(underlying()));
    }

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<IndexedSeq> companion() {
        return IndexedSeq.Cclass.companion(this);
    }

    @Override // scala.collection.immutable.StringLike
    public int compare(String str) {
        return StringLike.Cclass.compare(this, str);
    }

    @Override // scala.math.Ordered, java.lang.Comparable
    public int compareTo(Object obj) {
        return Ordered.Cclass.compareTo(this, obj);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> void copyToArray(Object obj, int i, int i2) {
        IndexedSeqOptimized.Cclass.copyToArray(this, obj, i, i2);
    }

    public StringBuilder delete(int i, int i2) {
        underlying().delete(i, i2);
        return this;
    }

    public StringBuilder deleteCharAt(int i) {
        underlying().deleteCharAt(i);
        return this;
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public Object drop(int i) {
        return IndexedSeqOptimized.Cclass.drop(this, i);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.IterableLike
    public Object dropRight(int i) {
        return IndexedSeqOptimized.Cclass.dropRight(this, i);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Object dropWhile(Function1 function1) {
        return IndexedSeqOptimized.Cclass.dropWhile(this, function1);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public <B> boolean endsWith(GenSeq<B> genSeq) {
        return IndexedSeqOptimized.Cclass.endsWith(this, genSeq);
    }

    public void ensureCapacity(int i) {
        underlying().ensureCapacity(i);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean exists(Function1<Object, Object> function1) {
        return IndexedSeqOptimized.Cclass.exists(this, function1);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Option<Object> find(Function1<Object, Object> function1) {
        return IndexedSeqOptimized.Cclass.find(this, function1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B foldLeft(B b, Function2<B, Object, B> function2) {
        return (B) IndexedSeqOptimized.Cclass.foldLeft(this, b, function2);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> B foldRight(B b, Function2<Object, B, B> function2) {
        return (B) IndexedSeqOptimized.Cclass.foldRight(this, b, function2);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean forall(Function1<Object, Object> function1) {
        return IndexedSeqOptimized.Cclass.forall(this, function1);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<Object, U> function1) {
        IndexedSeqOptimized.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.immutable.StringLike
    public String format(Seq<Object> seq) {
        return StringLike.Cclass.format(this, seq);
    }

    @Override // scala.collection.immutable.StringLike
    public String formatLocal(Locale locale, Seq<Object> seq) {
        return StringLike.Cclass.formatLocal(this, locale, seq);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike
    public int hashCode() {
        return IndexedSeqLike.Cclass.hashCode(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public Object head() {
        return IndexedSeqOptimized.Cclass.head(this);
    }

    public int indexOf(String str) {
        return underlying().indexOf(str);
    }

    public int indexOf(String str, int i) {
        return underlying().indexOf(str, i);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public int indexWhere(Function1<Object, Object> function1, int i) {
        return IndexedSeqOptimized.Cclass.indexWhere(this, function1, i);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Object init() {
        return IndexedSeqOptimized.Cclass.init(this);
    }

    public StringBuilder insert(int i, byte b) {
        return insert(i, (int) b);
    }

    public StringBuilder insert(int i, char c) {
        return insert(i, String.valueOf(c));
    }

    public StringBuilder insert(int i, double d) {
        return insert(i, String.valueOf(d));
    }

    public StringBuilder insert(int i, float f) {
        return insert(i, String.valueOf(f));
    }

    public StringBuilder insert(int i, int i2) {
        return insert(i, String.valueOf(i2));
    }

    public StringBuilder insert(int i, long j) {
        return insert(i, String.valueOf(j));
    }

    public StringBuilder insert(int i, Object obj) {
        return insert(i, String.valueOf(obj));
    }

    public StringBuilder insert(int i, String str) {
        underlying().insert(i, str);
        return this;
    }

    public StringBuilder insert(int i, short s) {
        return insert(i, (int) s);
    }

    public StringBuilder insert(int i, boolean z) {
        return insert(i, String.valueOf(z));
    }

    public StringBuilder insertAll(int i, TraversableOnce<Object> traversableOnce) {
        return insertAll(i, (char[]) traversableOnce.toArray(ClassTag$.MODULE$.Char()));
    }

    public StringBuilder insertAll(int i, char[] cArr) {
        underlying().insert(i, cArr);
        return this;
    }

    public StringBuilder insertAll(int i, char[] cArr, int i2, int i3) {
        underlying().insert(i, cArr, i2, i3);
        return this;
    }

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.PartialFunction
    public /* bridge */ /* synthetic */ boolean isDefinedAt(Object obj) {
        return isDefinedAt(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return IndexedSeqOptimized.Cclass.isEmpty(this);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Object> iterator() {
        return IndexedSeqLike.Cclass.iterator(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Object last() {
        return IndexedSeqOptimized.Cclass.last(this);
    }

    public int lastIndexOf(String str) {
        return underlying().lastIndexOf(str);
    }

    public int lastIndexOf(String str, int i) {
        return underlying().lastIndexOf(str, i);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public int lastIndexWhere(Function1<Object, Object> function1, int i) {
        return IndexedSeqOptimized.Cclass.lastIndexWhere(this, function1, i);
    }

    @Override // scala.collection.GenSeqLike
    public int length() {
        return underlying().length();
    }

    @Override // scala.collection.AbstractSeq, scala.collection.SeqLike
    public int lengthCompare(int i) {
        return IndexedSeqOptimized.Cclass.lengthCompare(this, i);
    }

    public void length_$eq(int i) {
        underlying().setLength(i);
    }

    @Override // scala.collection.immutable.StringLike
    public Iterator<String> lines() {
        return StringLike.Cclass.lines(this);
    }

    @Override // scala.collection.immutable.StringLike
    public Iterator<String> linesIterator() {
        return StringLike.Cclass.linesIterator(this);
    }

    @Override // scala.collection.immutable.StringLike
    public Iterator<String> linesWithSeparators() {
        return StringLike.Cclass.linesWithSeparators(this);
    }

    @Override // scala.collection.mutable.Builder
    public <NewTo> Builder<Object, NewTo> mapResult(Function1<String, NewTo> function1) {
        return Builder.Cclass.mapResult(this, function1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public String mkString() {
        return toString();
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.generic.HasNewBuilder, scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
    public GrowingBuilder<Object, StringBuilder> newBuilder() {
        return new GrowingBuilder<>(new StringBuilder());
    }

    @Override // scala.collection.immutable.StringLike
    /* renamed from: r */
    public Regex mo128r() {
        return StringLike.Cclass.m141r(this);
    }

    @Override // scala.collection.immutable.StringLike
    /* renamed from: r */
    public Regex mo127r(Seq<String> seq) {
        return StringLike.Cclass.m140r(this, seq);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce
    public <B> B reduceLeft(Function2<B, Object, B> function2) {
        return (B) IndexedSeqOptimized.Cclass.reduceLeft(this, function2);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> B reduceRight(Function2<Object, B, B> function2) {
        return (B) IndexedSeqOptimized.Cclass.reduceRight(this, function2);
    }

    public StringBuilder replace(int i, int i2, String str) {
        underlying().replace(i, i2, str);
        return this;
    }

    @Override // scala.collection.immutable.StringLike
    public String replaceAllLiterally(String str, String str2) {
        return StringLike.Cclass.replaceAllLiterally(this, str, str2);
    }

    @Override // scala.collection.mutable.Builder
    public String result() {
        return toString();
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public StringBuilder reverse() {
        return new StringBuilder(new StringBuilder(underlying()).reverse());
    }

    public StringBuilder reverseContents() {
        underlying().reverse();
        return this;
    }

    @Override // scala.collection.AbstractSeq, scala.collection.SeqLike
    public Iterator<Object> reverseIterator() {
        return IndexedSeqOptimized.Cclass.reverseIterator(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.GenIterableLike, scala.collection.IterableLike
    public <B> boolean sameElements(GenIterable<B> genIterable) {
        return IndexedSeqOptimized.Cclass.sameElements(this, genIterable);
    }

    @Override // scala.collection.IndexedSeqOptimized
    public /* synthetic */ boolean scala$collection$IndexedSeqOptimized$$super$endsWith(GenSeq genSeq) {
        return SeqLike.Cclass.endsWith(this, genSeq);
    }

    @Override // scala.collection.IndexedSeqOptimized
    public /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$head() {
        return IterableLike.Cclass.head(this);
    }

    @Override // scala.collection.IndexedSeqOptimized
    public /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$init() {
        return TraversableLike.Cclass.init(this);
    }

    @Override // scala.collection.IndexedSeqOptimized
    public /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$last() {
        return TraversableLike.Cclass.last(this);
    }

    @Override // scala.collection.IndexedSeqOptimized
    public /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$reduceLeft(Function2 function2) {
        return TraversableOnce.Cclass.reduceLeft(this, function2);
    }

    @Override // scala.collection.IndexedSeqOptimized
    public /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$reduceRight(Function2 function2) {
        return IterableLike.Cclass.reduceRight(this, function2);
    }

    @Override // scala.collection.IndexedSeqOptimized
    public /* synthetic */ boolean scala$collection$IndexedSeqOptimized$$super$sameElements(GenIterable genIterable) {
        return IterableLike.Cclass.sameElements(this, genIterable);
    }

    @Override // scala.collection.IndexedSeqOptimized
    public /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$tail() {
        return TraversableLike.Cclass.tail(this);
    }

    @Override // scala.collection.IndexedSeqOptimized
    public /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$zip(GenIterable genIterable, CanBuildFrom canBuildFrom) {
        return IterableLike.Cclass.zip(this, genIterable, canBuildFrom);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public int segmentLength(Function1<Object, Object> function1, int i) {
        return IndexedSeqOptimized.Cclass.segmentLength(this, function1, i);
    }

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public IndexedSeq<Object> seq() {
        return IndexedSeq.Cclass.seq(this);
    }

    public void setCharAt(int i, char c) {
        underlying().setCharAt(i, c);
    }

    public void setLength(int i) {
        underlying().setLength(i);
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHint(int i) {
        Builder.Cclass.sizeHint(this, i);
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHint(TraversableLike<?, ?> traversableLike) {
        Builder.Cclass.sizeHint(this, traversableLike);
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHint(TraversableLike<?, ?> traversableLike, int i) {
        Builder.Cclass.sizeHint(this, traversableLike, i);
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHintBounded(int i, TraversableLike<?, ?> traversableLike) {
        Builder.Cclass.sizeHintBounded(this, i, traversableLike);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public Object slice(int i, int i2) {
        return StringLike.Cclass.slice(this, i, i2);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<StringBuilder, StringBuilder> span(Function1<Object, Object> function1) {
        return IndexedSeqOptimized.Cclass.span(this, function1);
    }

    @Override // scala.collection.immutable.StringLike
    public String[] split(char c) {
        return StringLike.Cclass.split(this, c);
    }

    @Override // scala.collection.immutable.StringLike
    public String[] split(char[] cArr) throws PatternSyntaxException {
        return StringLike.Cclass.split(this, cArr);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<StringBuilder, StringBuilder> splitAt(int i) {
        return IndexedSeqOptimized.Cclass.splitAt(this, i);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public <B> boolean startsWith(GenSeq<B> genSeq, int i) {
        return IndexedSeqOptimized.Cclass.startsWith(this, genSeq, i);
    }

    @Override // scala.collection.immutable.StringLike
    public String stripLineEnd() {
        return StringLike.Cclass.stripLineEnd(this);
    }

    @Override // scala.collection.immutable.StringLike
    public String stripMargin() {
        return StringLike.Cclass.stripMargin(this);
    }

    @Override // scala.collection.immutable.StringLike
    public String stripMargin(char c) {
        return StringLike.Cclass.stripMargin(this, c);
    }

    @Override // scala.collection.immutable.StringLike
    public String stripPrefix(String str) {
        return StringLike.Cclass.stripPrefix(this, str);
    }

    @Override // scala.collection.immutable.StringLike
    public String stripSuffix(String str) {
        return StringLike.Cclass.stripSuffix(this, str);
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return substring(i, i2);
    }

    public String substring(int i) {
        return substring(i, length());
    }

    public String substring(int i, int i2) {
        return underlying().substring(i, i2);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Object tail() {
        return IndexedSeqOptimized.Cclass.tail(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public Object take(int i) {
        return IndexedSeqOptimized.Cclass.take(this, i);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.IterableLike
    public Object takeRight(int i) {
        return IndexedSeqOptimized.Cclass.takeRight(this, i);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public Object takeWhile(Function1 function1) {
        return IndexedSeqOptimized.Cclass.takeWhile(this, function1);
    }

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public StringBuilder thisCollection() {
        return this;
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> Object toArray(ClassTag<B> classTag) {
        return StringLike.Cclass.toArray(this, classTag);
    }

    public char[] toArray() {
        char[] cArr = new char[length()];
        underlying().getChars(0, length(), cArr, 0);
        return cArr;
    }

    @Override // scala.collection.immutable.StringLike
    public boolean toBoolean() {
        return StringLike.Cclass.toBoolean(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <A1> Buffer<A1> toBuffer() {
        return IndexedSeqLike.Cclass.toBuffer(this);
    }

    @Override // scala.collection.immutable.StringLike
    public byte toByte() {
        return StringLike.Cclass.toByte(this);
    }

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public IndexedSeq toCollection(Object obj) {
        return IndexedSeqLike.Cclass.toCollection(this, obj);
    }

    public StringBuilder toCollection(StringBuilder stringBuilder) {
        return stringBuilder;
    }

    @Override // scala.collection.immutable.StringLike
    public double toDouble() {
        return StringLike.Cclass.toDouble(this);
    }

    @Override // scala.collection.immutable.StringLike
    public float toFloat() {
        return StringLike.Cclass.toFloat(this);
    }

    @Override // scala.collection.immutable.StringLike
    public int toInt() {
        return StringLike.Cclass.toInt(this);
    }

    @Override // scala.collection.immutable.StringLike
    public long toLong() {
        return StringLike.Cclass.toLong(this);
    }

    @Override // scala.collection.immutable.StringLike
    public short toShort() {
        return StringLike.Cclass.toShort(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
    public String toString() {
        return underlying().toString();
    }

    public void update(int i, char c) {
        setCharAt(i, c);
    }

    @Override // scala.collection.mutable.SeqLike, scala.collection.mutable.BufferLike
    public /* bridge */ /* synthetic */ void update(int i, Object obj) {
        update(i, BoxesRunTime.unboxToChar(obj));
    }

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public Object view() {
        return IndexedSeqLike.Cclass.view(this);
    }

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public IndexedSeqView<Object, IndexedSeq<Object>> view(int i, int i2) {
        return IndexedSeqLike.Cclass.view(this, i, i2);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.GenIterableLike, scala.collection.IterableLike
    public <A1, B, That> That zip(GenIterable<B> genIterable, CanBuildFrom<StringBuilder, Tuple2<A1, B>, That> canBuildFrom) {
        return (That) IndexedSeqOptimized.Cclass.zip(this, genIterable, canBuildFrom);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.GenIterableLike, scala.collection.IterableLike
    public <A1, That> That zipWithIndex(CanBuildFrom<StringBuilder, Tuple2<A1, Object>, That> canBuildFrom) {
        return (That) IndexedSeqOptimized.Cclass.zipWithIndex(this, canBuildFrom);
    }
}
