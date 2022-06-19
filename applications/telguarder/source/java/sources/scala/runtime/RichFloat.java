package scala.runtime;

import scala.Proxy;
import scala.collection.immutable.NumericRange;
import scala.collection.immutable.Range;
import scala.math.Integral;
import scala.math.Numeric$FloatIsFractional$;
import scala.math.Ordered;
import scala.math.Ordering$Float$;
import scala.math.ScalaNumericAnyConversions;
import scala.reflect.ScalaSignature;
import scala.runtime.FractionalProxy;
import scala.runtime.OrderedProxy;
import scala.runtime.ScalaNumberProxy;
@ScalaSignature(bytes = "\u0006\u0001\t}b\u0001B\u0001\u0003\u0005\u001d\u0011\u0011BU5dQ\u001acw.\u0019;\u000b\u0005\r!\u0011a\u0002:v]RLW.\u001a\u0006\u0002\u000b\u0005)1oY1mC\u000e\u00011c\u0001\u0001\t\u0019A\u0011\u0011BC\u0007\u0002\t%\u00111\u0002\u0002\u0002\u0007\u0003:Lh+\u00197\u0011\u00075q\u0001#D\u0001\u0003\u0013\ty!AA\bGe\u0006\u001cG/[8oC2\u0004&o\u001c=z!\tI\u0011#\u0003\u0002\u0013\t\t)a\t\\8bi\"AA\u0003\u0001BC\u0002\u0013\u0005Q#\u0001\u0003tK24W#\u0001\t\t\u0011]\u0001!\u0011!Q\u0001\nA\tQa]3mM\u0002BQ!\u0007\u0001\u0005\u0002i\ta\u0001P5oSRtDCA\u000e\u001d!\ti\u0001\u0001C\u0003\u00151\u0001\u0007\u0001\u0003C\u0003\u001f\u0001\u0011Eq$A\u0002ok6,\u0012\u0001\t\b\u0003C5r!A\t\u0016\u000f\u0005\rBcB\u0001\u0013(\u001b\u0005)#B\u0001\u0014\u0007\u0003\u0019a$o\\8u}%\tQ!\u0003\u0002*\t\u0005!Q.\u0019;i\u0013\tYC&A\u0004Ok6,'/[2\u000b\u0005%\"\u0011B\u0001\u00180\u0003E1En\\1u\u0013N4%/Y2uS>t\u0017\r\u001c\u0006\u0003W1BQ!\r\u0001\u0005\u0012I\n1a\u001c:e+\u0005\u0019dB\u0001\u001b8\u001d\t\u0011S'\u0003\u00027Y\u0005AqJ\u001d3fe&tw-\u0003\u00029s\u0005)a\t\\8bi*\u0011a\u0007\f\u0005\u0006w\u0001!\t\u0002P\u0001\fS:$Xm\u001a:bY:+X.F\u0001>\u001d\t\tc(\u0003\u0002@_\u0005\tb\t\\8bi\u0006\u001b\u0018JZ%oi\u0016<'/\u00197\t\u000b\u0005\u0003A\u0011\t\"\u0002\u0017\u0011|WO\u00197f-\u0006dW/\u001a\u000b\u0002\u0007B\u0011\u0011\u0002R\u0005\u0003\u000b\u0012\u0011a\u0001R8vE2,\u0007\"B$\u0001\t\u0003B\u0015A\u00034m_\u0006$h+\u00197vKR\t\u0001\u0003C\u0003K\u0001\u0011\u00053*A\u0005m_:<g+\u00197vKR\tA\n\u0005\u0002\n\u001b&\u0011a\n\u0002\u0002\u0005\u0019>tw\rC\u0003Q\u0001\u0011\u0005\u0013+\u0001\u0005j]R4\u0016\r\\;f)\u0005\u0011\u0006CA\u0005T\u0013\t!FAA\u0002J]RDQA\u0016\u0001\u0005B]\u000b\u0011BY=uKZ\u000bG.^3\u0015\u0003a\u0003\"!C-\n\u0005i#!\u0001\u0002\"zi\u0016DQ\u0001\u0018\u0001\u0005Bu\u000b!b\u001d5peR4\u0016\r\\;f)\u0005q\u0006CA\u0005`\u0013\t\u0001GAA\u0003TQ>\u0014H\u000fC\u0003c\u0001\u0011\u00053-A\u0004jg^Cw\u000e\\3\u0015\u0003\u0011\u0004\"!C3\n\u0005\u0019$!a\u0002\"p_2,\u0017M\u001c\u0005\u0006Q\u0002!\t%[\u0001\fSN4\u0016\r\\5e\u0005f$X-F\u0001e\u0011\u0015Y\u0007\u0001\"\u0011j\u00031I7OV1mS\u0012\u001c\u0006n\u001c:u\u0011\u0015i\u0007\u0001\"\u0011j\u0003-I7OV1mS\u0012\u001c\u0005.\u0019:\t\u000b=\u0004A\u0011I5\u0002\u0015%\u001ch+\u00197jI&sG\u000fC\u0003r\u0001\u0011\u0005\u0011.A\u0003jg:\u000bg\nC\u0003t\u0001\u0011\u0005\u0011.\u0001\u0006jg&sg-\u001b8jifDQ!\u001e\u0001\u0005\u0002%\fQ\"[:Q_NLeNZ5oSRL\b\"B<\u0001\t\u0003I\u0017!D5t\u001d\u0016<\u0017J\u001c4j]&$\u0018\u0010C\u0003z\u0001\u0011\u0005S#A\u0002bENDQa\u001f\u0001\u0005Bq\f1!\\1y)\t\u0001R\u0010C\u0003\u007fu\u0002\u0007\u0001#\u0001\u0003uQ\u0006$\bbBA\u0001\u0001\u0011\u0005\u00131A\u0001\u0004[&tGc\u0001\t\u0002\u0006!)ap a\u0001!!9\u0011\u0011\u0002\u0001\u0005B\u0005-\u0011AB:jO:,X.F\u0001S\u0011\u001d\ty\u0001\u0001C\u0001\u0003\u0017\tQA]8v]\u0012Da!a\u0005\u0001\t\u0003)\u0012\u0001B2fS2Da!a\u0006\u0001\t\u0003)\u0012!\u00024m_>\u0014\bBBA\u000e\u0001\u0011\u0005Q#A\u0005u_J\u000bG-[1og\"1\u0011q\u0004\u0001\u0005\u0002U\t\u0011\u0002^8EK\u001e\u0014X-Z:\t\u0011\u0005\r\u0002!!A\u0005BE\u000b\u0001\u0002[1tQ\u000e{G-\u001a\u0005\n\u0003O\u0001\u0011\u0011!C!\u0003S\ta!Z9vC2\u001cHc\u00013\u0002,!Q\u0011QFA\u0013\u0003\u0003\u0005\r!a\f\u0002\u0007a$\u0013\u0007E\u0002\n\u0003cI1!a\r\u0005\u0005\r\te._\u0004\n\u0003o\u0011\u0011\u0011!E\u0001\u0003s\t\u0011BU5dQ\u001acw.\u0019;\u0011\u00075\tYD\u0002\u0005\u0002\u0005\u0005\u0005\t\u0012AA\u001f'\u0011\tY$a\u0010\u0011\u0007%\t\t%C\u0002\u0002D\u0011\u0011a!\u00118z%\u00164\u0007bB\r\u0002<\u0011\u0005\u0011q\t\u000b\u0003\u0003sA\u0001\"a\u0013\u0002<\u0011\u0015\u0011QJ\u0001\u000e]VlG%\u001a=uK:\u001c\u0018n\u001c8\u0015\u0007\u0001\ny\u0005C\u0004\u0002R\u0005%\u0003\u0019A\u000e\u0002\u000b\u0011\"\b.[:\t\u0011\u0005U\u00131\bC\u0003\u0003/\nQb\u001c:eI\u0015DH/\u001a8tS>tGcA\u001a\u0002Z!9\u0011\u0011KA*\u0001\u0004Y\u0002\u0002CA/\u0003w!)!a\u0018\u0002+%tG/Z4sC2tU/\u001c\u0013fqR,gn]5p]R\u0019Q(!\u0019\t\u000f\u0005E\u00131\fa\u00017!A\u0011QMA\u001e\t\u000b\t9'A\u000be_V\u0014G.\u001a,bYV,G%\u001a=uK:\u001c\u0018n\u001c8\u0015\u0007\t\u000bI\u0007C\u0004\u0002R\u0005\r\u0004\u0019A\u000e\t\u0011\u00055\u00141\bC\u0003\u0003_\nAC\u001a7pCR4\u0016\r\\;fI\u0015DH/\u001a8tS>tGc\u0001%\u0002r!9\u0011\u0011KA6\u0001\u0004Y\u0002\u0002CA;\u0003w!)!a\u001e\u0002'1|gn\u001a,bYV,G%\u001a=uK:\u001c\u0018n\u001c8\u0015\u0007-\u000bI\bC\u0004\u0002R\u0005M\u0004\u0019A\u000e\t\u0011\u0005u\u00141\bC\u0003\u0003\u007f\n!#\u001b8u-\u0006dW/\u001a\u0013fqR,gn]5p]R\u0019\u0011+!!\t\u000f\u0005E\u00131\u0010a\u00017!A\u0011QQA\u001e\t\u000b\t9)A\ncsR,g+\u00197vK\u0012*\u0007\u0010^3og&|g\u000eF\u0002X\u0003\u0013Cq!!\u0015\u0002\u0004\u0002\u00071\u0004\u0003\u0005\u0002\u000e\u0006mBQAAH\u0003Q\u0019\bn\u001c:u-\u0006dW/\u001a\u0013fqR,gn]5p]R\u0019Q,!%\t\u000f\u0005E\u00131\u0012a\u00017!A\u0011QSA\u001e\t\u000b\t9*A\tjg^Cw\u000e\\3%Kb$XM\\:j_:$2aYAM\u0011\u001d\t\t&a%A\u0002mA\u0001\"!(\u0002<\u0011\u0015\u0011qT\u0001\u0016SN4\u0016\r\\5e\u0005f$X\rJ3yi\u0016t7/[8o)\r!\u0017\u0011\u0015\u0005\b\u0003#\nY\n1\u0001\u001c\u0011!\t)+a\u000f\u0005\u0006\u0005\u001d\u0016AF5t-\u0006d\u0017\u000eZ*i_J$H%\u001a=uK:\u001c\u0018n\u001c8\u0015\u0007\u0011\fI\u000bC\u0004\u0002R\u0005\r\u0006\u0019A\u000e\t\u0011\u00055\u00161\bC\u0003\u0003_\u000bQ#[:WC2LGm\u00115be\u0012*\u0007\u0010^3og&|g\u000eF\u0002e\u0003cCq!!\u0015\u0002,\u0002\u00071\u0004\u0003\u0005\u00026\u0006mBQAA\\\u0003QI7OV1mS\u0012Le\u000e\u001e\u0013fqR,gn]5p]R\u0019A-!/\t\u000f\u0005E\u00131\u0017a\u00017!A\u0011QXA\u001e\t\u000b\ty,A\bjg:\u000bg\nJ3yi\u0016t7/[8o)\r!\u0017\u0011\u0019\u0005\b\u0003#\nY\f1\u0001\u001c\u0011!\t)-a\u000f\u0005\u0006\u0005\u001d\u0017\u0001F5t\u0013:4\u0017N\\5us\u0012*\u0007\u0010^3og&|g\u000eF\u0002e\u0003\u0013Dq!!\u0015\u0002D\u0002\u00071\u0004\u0003\u0005\u0002N\u0006mBQAAh\u0003]I7\u000fU8t\u0013:4\u0017N\\5us\u0012*\u0007\u0010^3og&|g\u000eF\u0002e\u0003#Dq!!\u0015\u0002L\u0002\u00071\u0004\u0003\u0005\u0002V\u0006mBQAAl\u0003]I7OT3h\u0013:4\u0017N\\5us\u0012*\u0007\u0010^3og&|g\u000eF\u0002e\u00033Dq!!\u0015\u0002T\u0002\u00071\u0004\u0003\u0005\u0002^\u0006mBQAAp\u00035\t'm\u001d\u0013fqR,gn]5p]R\u0019\u0001#!9\t\u000f\u0005E\u00131\u001ca\u00017!A\u0011Q]A\u001e\t\u000b\t9/A\u0007nCb$S\r\u001f;f]NLwN\u001c\u000b\u0005\u0003S\fi\u000fF\u0002\u0011\u0003WDaA`Ar\u0001\u0004\u0001\u0002bBA)\u0003G\u0004\ra\u0007\u0005\t\u0003c\fY\u0004\"\u0002\u0002t\u0006iQ.\u001b8%Kb$XM\\:j_:$B!!>\u0002zR\u0019\u0001#a>\t\ry\fy\u000f1\u0001\u0011\u0011\u001d\t\t&a<A\u0002mA\u0001\"!@\u0002<\u0011\u0015\u0011q`\u0001\u0011g&<g.^7%Kb$XM\\:j_:$2A\u0015B\u0001\u0011\u001d\t\t&a?A\u0002mA\u0001B!\u0002\u0002<\u0011\u0015!qA\u0001\u0010e>,h\u000e\u001a\u0013fqR,gn]5p]R\u0019!K!\u0003\t\u000f\u0005E#1\u0001a\u00017!A!QBA\u001e\t\u000b\u0011y!\u0001\bdK&dG%\u001a=uK:\u001c\u0018n\u001c8\u0015\u0007A\u0011\t\u0002C\u0004\u0002R\t-\u0001\u0019A\u000e\t\u0011\tU\u00111\bC\u0003\u0005/\tqB\u001a7p_J$S\r\u001f;f]NLwN\u001c\u000b\u0004!\te\u0001bBA)\u0005'\u0001\ra\u0007\u0005\t\u0005;\tY\u0004\"\u0002\u0003 \u0005\u0019Bo\u001c*bI&\fgn\u001d\u0013fqR,gn]5p]R\u0019\u0001C!\t\t\u000f\u0005E#1\u0004a\u00017!A!QEA\u001e\t\u000b\u00119#A\nu_\u0012+wM]3fg\u0012*\u0007\u0010^3og&|g\u000eF\u0002\u0011\u0005SAq!!\u0015\u0003$\u0001\u00071\u0004\u0003\u0006\u0003.\u0005m\u0012\u0011!C\u0003\u0005_\t!\u0003[1tQ\u000e{G-\u001a\u0013fqR,gn]5p]R\u0019\u0011K!\r\t\u000f\u0005E#1\u0006a\u00017!Q!QGA\u001e\u0003\u0003%)Aa\u000e\u0002!\u0015\fX/\u00197tI\u0015DH/\u001a8tS>tG\u0003\u0002B\u001d\u0005{!2\u0001\u001aB\u001e\u0011)\tiCa\r\u0002\u0002\u0003\u0007\u0011q\u0006\u0005\b\u0003#\u0012\u0019\u00041\u0001\u001c\u0001")
/* loaded from: classes3-dex2jar.jar:scala/runtime/RichFloat.class */
public final class RichFloat implements FractionalProxy<Object> {
    private final float self;

    public RichFloat(float f) {
        this.self = f;
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
    public float abs() {
        return RichFloat$.MODULE$.abs$extension(self());
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public byte byteValue() {
        return RichFloat$.MODULE$.byteValue$extension(self());
    }

    public float ceil() {
        return RichFloat$.MODULE$.ceil$extension(self());
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
        return RichFloat$.MODULE$.doubleValue$extension(self());
    }

    @Override // scala.Proxy
    public boolean equals(Object obj) {
        return RichFloat$.MODULE$.equals$extension(self(), obj);
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public float floatValue() {
        return RichFloat$.MODULE$.floatValue$extension(self());
    }

    public float floor() {
        return RichFloat$.MODULE$.floor$extension(self());
    }

    @Override // scala.Proxy
    public int hashCode() {
        return RichFloat$.MODULE$.hashCode$extension(self());
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public int intValue() {
        return RichFloat$.MODULE$.intValue$extension(self());
    }

    @Override // scala.runtime.FractionalProxy
    /* renamed from: integralNum */
    public Integral<Object> integralNum2() {
        return RichFloat$.MODULE$.integralNum$extension(self());
    }

    public boolean isInfinity() {
        return RichFloat$.MODULE$.isInfinity$extension(self());
    }

    public boolean isNaN() {
        return RichFloat$.MODULE$.isNaN$extension(self());
    }

    public boolean isNegInfinity() {
        return RichFloat$.MODULE$.isNegInfinity$extension(self());
    }

    public boolean isPosInfinity() {
        return RichFloat$.MODULE$.isPosInfinity$extension(self());
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean isValidByte() {
        return RichFloat$.MODULE$.isValidByte$extension(self());
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean isValidChar() {
        return RichFloat$.MODULE$.isValidChar$extension(self());
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean isValidInt() {
        return RichFloat$.MODULE$.isValidInt$extension(self());
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean isValidShort() {
        return RichFloat$.MODULE$.isValidShort$extension(self());
    }

    @Override // scala.runtime.FractionalProxy, scala.math.ScalaNumericAnyConversions
    public boolean isWhole() {
        return RichFloat$.MODULE$.isWhole$extension(self());
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public long longValue() {
        return RichFloat$.MODULE$.longValue$extension(self());
    }

    public float max(float f) {
        return RichFloat$.MODULE$.max$extension(self(), f);
    }

    @Override // scala.runtime.ScalaNumberProxy
    public /* bridge */ /* synthetic */ Object max(Object obj) {
        return BoxesRunTime.boxToFloat(RichFloat$.MODULE$.max$extension(self(), BoxesRunTime.unboxToFloat(obj)));
    }

    public float min(float f) {
        return RichFloat$.MODULE$.min$extension(self(), f);
    }

    @Override // scala.runtime.ScalaNumberProxy
    public /* bridge */ /* synthetic */ Object min(Object obj) {
        return BoxesRunTime.boxToFloat(RichFloat$.MODULE$.min$extension(self(), BoxesRunTime.unboxToFloat(obj)));
    }

    @Override // scala.runtime.FractionalProxy, scala.runtime.ScalaNumberProxy
    public Numeric$FloatIsFractional$ num() {
        return RichFloat$.MODULE$.num$extension(self());
    }

    @Override // scala.runtime.OrderedProxy
    public Ordering$Float$ ord() {
        return RichFloat$.MODULE$.ord$extension(self());
    }

    public int round() {
        return RichFloat$.MODULE$.round$extension(self());
    }

    @Override // scala.Proxy.Typed, scala.Proxy
    public float self() {
        return this.self;
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public short shortValue() {
        return RichFloat$.MODULE$.shortValue$extension(self());
    }

    @Override // scala.runtime.ScalaNumberProxy
    public int signum() {
        return RichFloat$.MODULE$.signum$extension(self());
    }

    @Override // scala.runtime.FractionalProxy, scala.runtime.RangedProxy
    /* renamed from: to */
    public NumericRange.Inclusive mo20to(Object obj, Object obj2) {
        return FractionalProxy.Cclass.m26to(this, obj, obj2);
    }

    @Override // scala.runtime.FractionalProxy, scala.runtime.RangedProxy
    /* renamed from: to */
    public Range.Partial mo21to(Object obj) {
        return FractionalProxy.Cclass.m27to(this, obj);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public byte toByte() {
        return ScalaNumericAnyConversions.Cclass.toByte(this);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public char toChar() {
        return ScalaNumericAnyConversions.Cclass.toChar(this);
    }

    public float toDegrees() {
        return RichFloat$.MODULE$.toDegrees$extension(self());
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public double toDouble() {
        return ScalaNumericAnyConversions.Cclass.toDouble(this);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public float toFloat() {
        return ScalaNumericAnyConversions.Cclass.toFloat(this);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public int toInt() {
        return ScalaNumericAnyConversions.Cclass.toInt(this);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public long toLong() {
        return ScalaNumericAnyConversions.Cclass.toLong(this);
    }

    public float toRadians() {
        return RichFloat$.MODULE$.toRadians$extension(self());
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

    @Override // scala.runtime.FractionalProxy, scala.runtime.RangedProxy
    public NumericRange.Exclusive until(Object obj, Object obj2) {
        return FractionalProxy.Cclass.until(this, obj, obj2);
    }

    @Override // scala.runtime.FractionalProxy, scala.runtime.RangedProxy
    public Range.Partial until(Object obj) {
        return FractionalProxy.Cclass.until(this, obj);
    }
}
