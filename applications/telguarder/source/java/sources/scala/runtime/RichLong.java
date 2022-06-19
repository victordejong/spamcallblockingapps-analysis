package scala.runtime;

import scala.Proxy;
import scala.collection.immutable.NumericRange;
import scala.math.Numeric$LongIsIntegral$;
import scala.math.Ordered;
import scala.math.Ordering$Long$;
import scala.math.ScalaNumericAnyConversions;
import scala.reflect.ScalaSignature;
import scala.runtime.IntegralProxy;
import scala.runtime.OrderedProxy;
import scala.runtime.ScalaNumberProxy;
import scala.runtime.ScalaWholeNumberProxy;
@ScalaSignature(bytes = "\u0006\u0001\t=a\u0001B\u0001\u0003\u0005\u001d\u0011\u0001BU5dQ2{gn\u001a\u0006\u0003\u0007\u0011\tqA];oi&lWMC\u0001\u0006\u0003\u0015\u00198-\u00197b\u0007\u0001\u00192\u0001\u0001\u0005\r!\tI!\"D\u0001\u0005\u0013\tYAA\u0001\u0004B]f4\u0016\r\u001c\t\u0004\u001b9\u0001R\"\u0001\u0002\n\u0005=\u0011!!D%oi\u0016<'/\u00197Qe>D\u0018\u0010\u0005\u0002\n#%\u0011!\u0003\u0002\u0002\u0005\u0019>tw\r\u0003\u0005\u0015\u0001\t\u0015\r\u0011\"\u0001\u0016\u0003\u0011\u0019X\r\u001c4\u0016\u0003AA\u0001b\u0006\u0001\u0003\u0002\u0003\u0006I\u0001E\u0001\u0006g\u0016dg\r\t\u0005\u00063\u0001!\tAG\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0005ma\u0002CA\u0007\u0001\u0011\u0015!\u0002\u00041\u0001\u0011\u0011\u0015q\u0002\u0001\"\u0005 \u0003\rqW/\\\u000b\u0002A9\u0011\u0011%\f\b\u0003E)r!a\t\u0015\u000f\u0005\u0011:S\"A\u0013\u000b\u0005\u00192\u0011A\u0002\u001fs_>$h(C\u0001\u0006\u0013\tIC!\u0001\u0003nCRD\u0017BA\u0016-\u0003\u001dqU/\\3sS\u000eT!!\u000b\u0003\n\u00059z\u0013A\u0004'p]\u001eL5/\u00138uK\u001e\u0014\u0018\r\u001c\u0006\u0003W1BQ!\r\u0001\u0005\u0012I\n1a\u001c:e+\u0005\u0019dB\u0001\u001b8\u001d\t\u0011S'\u0003\u00027Y\u0005AqJ\u001d3fe&tw-\u0003\u00029s\u0005!Aj\u001c8h\u0015\t1D\u0006C\u0003<\u0001\u0011\u0005C(A\u0006e_V\u0014G.\u001a,bYV,G#A\u001f\u0011\u0005%q\u0014BA \u0005\u0005\u0019!u.\u001e2mK\")\u0011\t\u0001C!\u0005\u0006Qa\r\\8biZ\u000bG.^3\u0015\u0003\r\u0003\"!\u0003#\n\u0005\u0015#!!\u0002$m_\u0006$\b\"B$\u0001\t\u0003B\u0015!\u00037p]\u001e4\u0016\r\\;f)\u0005\u0001\u0002\"\u0002&\u0001\t\u0003Z\u0015\u0001C5oiZ\u000bG.^3\u0015\u00031\u0003\"!C'\n\u00059#!aA%oi\")\u0001\u000b\u0001C!#\u0006I!-\u001f;f-\u0006dW/\u001a\u000b\u0002%B\u0011\u0011bU\u0005\u0003)\u0012\u0011AAQ=uK\")a\u000b\u0001C!/\u0006Q1\u000f[8siZ\u000bG.^3\u0015\u0003a\u0003\"!C-\n\u0005i#!!B*i_J$\b\"\u0002/\u0001\t\u0003j\u0016aC5t-\u0006d\u0017\u000e\u001a\"zi\u0016,\u0012A\u0018\t\u0003\u0013}K!\u0001\u0019\u0003\u0003\u000f\t{w\u000e\\3b]\")!\r\u0001C!;\u0006a\u0011n\u001d,bY&$7\u000b[8si\")A\r\u0001C!;\u0006Y\u0011n\u001d,bY&$7\t[1s\u0011\u00151\u0007\u0001\"\u0011^\u0003)I7OV1mS\u0012Le\u000e\u001e\u0005\u0006Q\u0002!\t!X\u0001\fSN4\u0016\r\\5e\u0019>tw\rC\u0003k\u0001\u0011\u0005S#A\u0002bENDQ\u0001\u001c\u0001\u0005B5\f1!\\1y)\t\u0001b\u000eC\u0003pW\u0002\u0007\u0001#\u0001\u0003uQ\u0006$\b\"B9\u0001\t\u0003\u0012\u0018aA7j]R\u0011\u0001c\u001d\u0005\u0006_B\u0004\r\u0001\u0005\u0005\u0006k\u0002!\tE^\u0001\u0007g&<g.^7\u0016\u00031CQ\u0001\u001f\u0001\u0005\u0002U\tQA]8v]\u0012DCa\u001e>~\u007fB\u0011\u0011b_\u0005\u0003y\u0012\u0011!\u0002Z3qe\u0016\u001c\u0017\r^3eC\u0005q\u0018a\u001d+iSN\u0004\u0013n\u001d\u0011b]\u0002Jg\u000e^3hKJ\u0004C/\u001f9fw\u0001\"\b.\u001a:fA%\u001c\bE\\8!e\u0016\f7o\u001c8!i>\u0004#o\\;oI\u0002JGO\f\u0011!!\u0016\u0014\b.\u00199tAe|W\u000fI7fC:$\b\u0005^8!G\u0006dG\u000e\t;iSN\u0004sN\u001c\u0011bA\u0019dw.\u0019;j]\u001el\u0003o\\5oi\u00022\u0018\r\\;f\u007f\u0005\u0012\u0011\u0011A\u0001\u0007e9\n\u0014G\f\u0019\t\u000f\u0005\u0015\u0001\u0001\"\u0001\u0002\b\u0005qAo\u001c\"j]\u0006\u0014\u0018p\u0015;sS:<WCAA\u0005!\u0011\tY!!\u0005\u000f\u0007%\ti!C\u0002\u0002\u0010\u0011\ta\u0001\u0015:fI\u00164\u0017\u0002BA\n\u0003+\u0011aa\u0015;sS:<'bAA\b\t!9\u0011\u0011\u0004\u0001\u0005\u0002\u0005\u001d\u0011a\u0003;p\u0011\u0016D8\u000b\u001e:j]\u001eDq!!\b\u0001\t\u0003\t9!A\u0007u_>\u001bG/\u00197TiJLgn\u001a\u0005\t\u0003C\u0001\u0011\u0011!C!\u0017\u0006A\u0001.Y:i\u0007>$W\rC\u0005\u0002&\u0001\t\t\u0011\"\u0011\u0002(\u00051Q-];bYN$2AXA\u0015\u0011)\tY#a\t\u0002\u0002\u0003\u0007\u0011QF\u0001\u0004q\u0012\n\u0004cA\u0005\u00020%\u0019\u0011\u0011\u0007\u0003\u0003\u0007\u0005s\u0017pB\u0005\u00026\t\t\t\u0011#\u0001\u00028\u0005A!+[2i\u0019>tw\rE\u0002\u000e\u0003s1\u0001\"\u0001\u0002\u0002\u0002#\u0005\u00111H\n\u0005\u0003s\ti\u0004E\u0002\n\u0003\u007fI1!!\u0011\u0005\u0005\u0019\te.\u001f*fM\"9\u0011$!\u000f\u0005\u0002\u0005\u0015CCAA\u001c\u0011!\tI%!\u000f\u0005\u0006\u0005-\u0013!\u00048v[\u0012*\u0007\u0010^3og&|g\u000eF\u0002!\u0003\u001bBq!a\u0014\u0002H\u0001\u00071$A\u0003%i\"L7\u000f\u0003\u0005\u0002T\u0005eBQAA+\u00035y'\u000f\u001a\u0013fqR,gn]5p]R\u00191'a\u0016\t\u000f\u0005=\u0013\u0011\u000ba\u00017!A\u00111LA\u001d\t\u000b\ti&A\u000be_V\u0014G.\u001a,bYV,G%\u001a=uK:\u001c\u0018n\u001c8\u0015\u0007q\ny\u0006C\u0004\u0002P\u0005e\u0003\u0019A\u000e\t\u0011\u0005\r\u0014\u0011\bC\u0003\u0003K\nAC\u001a7pCR4\u0016\r\\;fI\u0015DH/\u001a8tS>tGc\u0001\"\u0002h!9\u0011qJA1\u0001\u0004Y\u0002\u0002CA6\u0003s!)!!\u001c\u0002'1|gn\u001a,bYV,G%\u001a=uK:\u001c\u0018n\u001c8\u0015\u0007!\u000by\u0007C\u0004\u0002P\u0005%\u0004\u0019A\u000e\t\u0011\u0005M\u0014\u0011\bC\u0003\u0003k\n!#\u001b8u-\u0006dW/\u001a\u0013fqR,gn]5p]R\u00191*a\u001e\t\u000f\u0005=\u0013\u0011\u000fa\u00017!A\u00111PA\u001d\t\u000b\ti(A\ncsR,g+\u00197vK\u0012*\u0007\u0010^3og&|g\u000eF\u0002R\u0003\u007fBq!a\u0014\u0002z\u0001\u00071\u0004\u0003\u0005\u0002\u0004\u0006eBQAAC\u0003Q\u0019\bn\u001c:u-\u0006dW/\u001a\u0013fqR,gn]5p]R\u0019q+a\"\t\u000f\u0005=\u0013\u0011\u0011a\u00017!A\u00111RA\u001d\t\u000b\ti)A\u000bjgZ\u000bG.\u001b3CsR,G%\u001a=uK:\u001c\u0018n\u001c8\u0015\u0007y\u000by\tC\u0004\u0002P\u0005%\u0005\u0019A\u000e\t\u0011\u0005M\u0015\u0011\bC\u0003\u0003+\u000ba#[:WC2LGm\u00155peR$S\r\u001f;f]NLwN\u001c\u000b\u0004=\u0006]\u0005bBA(\u0003#\u0003\ra\u0007\u0005\t\u00037\u000bI\u0004\"\u0002\u0002\u001e\u0006)\u0012n\u001d,bY&$7\t[1sI\u0015DH/\u001a8tS>tGc\u00010\u0002 \"9\u0011qJAM\u0001\u0004Y\u0002\u0002CAR\u0003s!)!!*\u0002)%\u001ch+\u00197jI&sG\u000fJ3yi\u0016t7/[8o)\rq\u0016q\u0015\u0005\b\u0003\u001f\n\t\u000b1\u0001\u001c\u0011!\tY+!\u000f\u0005\u0006\u00055\u0016!F5t-\u0006d\u0017\u000e\u001a'p]\u001e$S\r\u001f;f]NLwN\u001c\u000b\u0004=\u0006=\u0006bBA(\u0003S\u0003\ra\u0007\u0005\t\u0003g\u000bI\u0004\"\u0002\u00026\u0006i\u0011MY:%Kb$XM\\:j_:$2\u0001EA\\\u0011\u001d\ty%!-A\u0002mA\u0001\"a/\u0002:\u0011\u0015\u0011QX\u0001\u000e[\u0006DH%\u001a=uK:\u001c\u0018n\u001c8\u0015\t\u0005}\u00161\u0019\u000b\u0004!\u0005\u0005\u0007BB8\u0002:\u0002\u0007\u0001\u0003C\u0004\u0002P\u0005e\u0006\u0019A\u000e\t\u0011\u0005\u001d\u0017\u0011\bC\u0003\u0003\u0013\fQ\"\\5oI\u0015DH/\u001a8tS>tG\u0003BAf\u0003\u001f$2\u0001EAg\u0011\u0019y\u0017Q\u0019a\u0001!!9\u0011qJAc\u0001\u0004Y\u0002\u0002CAj\u0003s!)!!6\u0002!MLwM\\;nI\u0015DH/\u001a8tS>tGc\u0001'\u0002X\"9\u0011qJAi\u0001\u0004Y\u0002\u0002CAn\u0003s!)!!8\u0002\u001fI|WO\u001c3%Kb$XM\\:j_:$2\u0001EAp\u0011\u001d\ty%!7A\u0002mAS!!7{{~D\u0001\"!:\u0002:\u0011\u0015\u0011q]\u0001\u0019i>\u0014\u0015N\\1ssN#(/\u001b8hI\u0015DH/\u001a8tS>tG\u0003BA\u0005\u0003SDq!a\u0014\u0002d\u0002\u00071\u0004\u0003\u0005\u0002n\u0006eBQAAx\u0003U!x\u000eS3y'R\u0014\u0018N\\4%Kb$XM\\:j_:$B!!\u0003\u0002r\"9\u0011qJAv\u0001\u0004Y\u0002\u0002CA{\u0003s!)!a>\u0002/Q|wj\u0019;bYN#(/\u001b8hI\u0015DH/\u001a8tS>tG\u0003BA\u0005\u0003sDq!a\u0014\u0002t\u0002\u00071\u0004\u0003\u0006\u0002~\u0006e\u0012\u0011!C\u0003\u0003\u007f\f!\u0003[1tQ\u000e{G-\u001a\u0013fqR,gn]5p]R\u00191J!\u0001\t\u000f\u0005=\u00131 a\u00017!Q!QAA\u001d\u0003\u0003%)Aa\u0002\u0002!\u0015\fX/\u00197tI\u0015DH/\u001a8tS>tG\u0003\u0002B\u0005\u0005\u001b!2A\u0018B\u0006\u0011)\tYCa\u0001\u0002\u0002\u0003\u0007\u0011Q\u0006\u0005\b\u0003\u001f\u0012\u0019\u00011\u0001\u001c\u0001")
/* loaded from: classes3-dex2jar.jar:scala/runtime/RichLong.class */
public final class RichLong implements IntegralProxy<Object> {
    private final long self;

    public RichLong(long j) {
        this.self = j;
        ScalaNumericAnyConversions.Cclass.$init$(this);
        Proxy.Cclass.$init$(this);
        Ordered.Cclass.$init$(this);
    }

    @Override // scala.math.Ordered
    public boolean $greater(Object obj) {
        return Ordered.Cclass.$greater(this, obj);
    }

    @Override // scala.math.Ordered
    public boolean $greater$eq(Object obj) {
        return Ordered.Cclass.$greater$eq(this, obj);
    }

    @Override // scala.math.Ordered
    public boolean $less(Object obj) {
        return Ordered.Cclass.$less(this, obj);
    }

    @Override // scala.math.Ordered
    public boolean $less$eq(Object obj) {
        return Ordered.Cclass.$less$eq(this, obj);
    }

    @Override // scala.runtime.ScalaNumberProxy
    public long abs() {
        return RichLong$.MODULE$.abs$extension(self());
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public byte byteValue() {
        return RichLong$.MODULE$.byteValue$extension(self());
    }

    @Override // scala.runtime.OrderedProxy, scala.math.Ordered
    public int compare(Object obj) {
        return OrderedProxy.Cclass.compare(this, obj);
    }

    @Override // scala.math.Ordered, java.lang.Comparable
    public int compareTo(Object obj) {
        return Ordered.Cclass.compareTo(this, obj);
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public double doubleValue() {
        return RichLong$.MODULE$.doubleValue$extension(self());
    }

    @Override // scala.Proxy
    public boolean equals(Object obj) {
        return RichLong$.MODULE$.equals$extension(self(), obj);
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public float floatValue() {
        return RichLong$.MODULE$.floatValue$extension(self());
    }

    @Override // scala.Proxy
    public int hashCode() {
        return RichLong$.MODULE$.hashCode$extension(self());
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public int intValue() {
        return RichLong$.MODULE$.intValue$extension(self());
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean isValidByte() {
        return RichLong$.MODULE$.isValidByte$extension(self());
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean isValidChar() {
        return RichLong$.MODULE$.isValidChar$extension(self());
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean isValidInt() {
        return RichLong$.MODULE$.isValidInt$extension(self());
    }

    public boolean isValidLong() {
        return RichLong$.MODULE$.isValidLong$extension(self());
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean isValidShort() {
        return RichLong$.MODULE$.isValidShort$extension(self());
    }

    @Override // scala.runtime.ScalaWholeNumberProxy, scala.math.ScalaNumericAnyConversions
    public boolean isWhole() {
        return ScalaWholeNumberProxy.Cclass.isWhole(this);
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public long longValue() {
        return RichLong$.MODULE$.longValue$extension(self());
    }

    public long max(long j) {
        return RichLong$.MODULE$.max$extension(self(), j);
    }

    @Override // scala.runtime.ScalaNumberProxy
    public /* bridge */ /* synthetic */ Object max(Object obj) {
        return BoxesRunTime.boxToLong(RichLong$.MODULE$.max$extension(self(), BoxesRunTime.unboxToLong(obj)));
    }

    public long min(long j) {
        return RichLong$.MODULE$.min$extension(self(), j);
    }

    @Override // scala.runtime.ScalaNumberProxy
    public /* bridge */ /* synthetic */ Object min(Object obj) {
        return BoxesRunTime.boxToLong(RichLong$.MODULE$.min$extension(self(), BoxesRunTime.unboxToLong(obj)));
    }

    @Override // scala.runtime.IntegralProxy, scala.runtime.ScalaNumberProxy
    public Numeric$LongIsIntegral$ num() {
        return RichLong$.MODULE$.num$extension(self());
    }

    @Override // scala.runtime.OrderedProxy
    public Ordering$Long$ ord() {
        return RichLong$.MODULE$.ord$extension(self());
    }

    public long round() {
        return RichLong$.MODULE$.round$extension(self());
    }

    @Override // scala.Proxy.Typed, scala.Proxy
    public long self() {
        return this.self;
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public short shortValue() {
        return RichLong$.MODULE$.shortValue$extension(self());
    }

    @Override // scala.runtime.ScalaNumberProxy
    public int signum() {
        return RichLong$.MODULE$.signum$extension(self());
    }

    @Override // scala.runtime.IntegralProxy, scala.runtime.RangedProxy
    /* renamed from: to */
    public NumericRange.Inclusive mo21to(Object obj) {
        return IntegralProxy.Cclass.m25to(this, obj);
    }

    @Override // scala.runtime.IntegralProxy, scala.runtime.RangedProxy
    /* renamed from: to */
    public NumericRange.Inclusive mo20to(Object obj, Object obj2) {
        return IntegralProxy.Cclass.m24to(this, obj, obj2);
    }

    public String toBinaryString() {
        return RichLong$.MODULE$.toBinaryString$extension(self());
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public byte toByte() {
        return ScalaNumericAnyConversions.Cclass.toByte(this);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public char toChar() {
        return ScalaNumericAnyConversions.Cclass.toChar(this);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public double toDouble() {
        return ScalaNumericAnyConversions.Cclass.toDouble(this);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public float toFloat() {
        return ScalaNumericAnyConversions.Cclass.toFloat(this);
    }

    public String toHexString() {
        return RichLong$.MODULE$.toHexString$extension(self());
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public int toInt() {
        return ScalaNumericAnyConversions.Cclass.toInt(this);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public long toLong() {
        return ScalaNumericAnyConversions.Cclass.toLong(this);
    }

    public String toOctalString() {
        return RichLong$.MODULE$.toOctalString$extension(self());
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public short toShort() {
        return ScalaNumericAnyConversions.Cclass.toShort(this);
    }

    @Override // scala.Proxy
    public String toString() {
        return Proxy.Cclass.toString(this);
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public Object underlying() {
        return ScalaNumberProxy.Cclass.underlying(this);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean unifiedPrimitiveEquals(Object obj) {
        return ScalaNumericAnyConversions.Cclass.unifiedPrimitiveEquals(this, obj);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public int unifiedPrimitiveHashcode() {
        return ScalaNumericAnyConversions.Cclass.unifiedPrimitiveHashcode(this);
    }

    @Override // scala.runtime.IntegralProxy, scala.runtime.RangedProxy
    public NumericRange.Exclusive until(Object obj) {
        return IntegralProxy.Cclass.until(this, obj);
    }

    @Override // scala.runtime.IntegralProxy, scala.runtime.RangedProxy
    public NumericRange.Exclusive until(Object obj, Object obj2) {
        return IntegralProxy.Cclass.until(this, obj, obj2);
    }
}
