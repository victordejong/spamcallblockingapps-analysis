package scala.runtime;

import scala.Proxy;
import scala.math.Numeric$ByteIsIntegral$;
import scala.math.Ordered;
import scala.math.Ordering$Byte$;
import scala.math.ScalaNumericAnyConversions;
import scala.reflect.ScalaSignature;
import scala.runtime.OrderedProxy;
import scala.runtime.ScalaNumberProxy;
import scala.runtime.ScalaWholeNumberProxy;
@ScalaSignature(bytes = "\u0006\u0001\u00055e\u0001B\u0001\u0003\u0005\u001d\u0011\u0001BU5dQ\nKH/\u001a\u0006\u0003\u0007\u0011\tqA];oi&lWMC\u0001\u0006\u0003\u0015\u00198-\u00197b\u0007\u0001\u00192\u0001\u0001\u0005\r!\tI!\"D\u0001\u0005\u0013\tYAA\u0001\u0004B]f4\u0016\r\u001c\t\u0004\u001b9\u0001R\"\u0001\u0002\n\u0005=\u0011!!F*dC2\fw\u000b[8mK:+XNY3s!J|\u00070\u001f\t\u0003\u0013EI!A\u0005\u0003\u0003\t\tKH/\u001a\u0005\t)\u0001\u0011)\u0019!C\u0001+\u0005!1/\u001a7g+\u0005\u0001\u0002\u0002C\f\u0001\u0005\u0003\u0005\u000b\u0011\u0002\t\u0002\u000bM,GN\u001a\u0011\t\u000be\u0001A\u0011\u0001\u000e\u0002\rqJg.\u001b;?)\tYB\u0004\u0005\u0002\u000e\u0001!)A\u0003\u0007a\u0001!!)a\u0004\u0001C\t?\u0005\u0019a.^7\u0016\u0003\u0001r!!I\u0017\u000f\u0005\tRcBA\u0012)\u001d\t!s%D\u0001&\u0015\t1c!\u0001\u0004=e>|GOP\u0005\u0002\u000b%\u0011\u0011\u0006B\u0001\u0005[\u0006$\b.\u0003\u0002,Y\u00059a*^7fe&\u001c'BA\u0015\u0005\u0013\tqs&\u0001\bCsR,\u0017j]%oi\u0016<'/\u00197\u000b\u0005-b\u0003\"B\u0019\u0001\t#\u0011\u0014aA8sIV\t1G\u0004\u00025o9\u0011!%N\u0005\u0003m1\n\u0001b\u0014:eKJLgnZ\u0005\u0003qe\nAAQ=uK*\u0011a\u0007\f\u0005\u0006w\u0001!\t\u0005P\u0001\fI>,(\r\\3WC2,X\rF\u0001>!\tIa(\u0003\u0002@\t\t1Ai\\;cY\u0016DQ!\u0011\u0001\u0005B\t\u000b!B\u001a7pCR4\u0016\r\\;f)\u0005\u0019\u0005CA\u0005E\u0013\t)EAA\u0003GY>\fG\u000fC\u0003H\u0001\u0011\u0005\u0003*A\u0005m_:<g+\u00197vKR\t\u0011\n\u0005\u0002\n\u0015&\u00111\n\u0002\u0002\u0005\u0019>tw\rC\u0003N\u0001\u0011\u0005c*\u0001\u0005j]R4\u0016\r\\;f)\u0005y\u0005CA\u0005Q\u0013\t\tFAA\u0002J]RDQa\u0015\u0001\u0005BQ\u000b\u0011BY=uKZ\u000bG.^3\u0015\u0003AAQA\u0016\u0001\u0005B]\u000b!b\u001d5peR4\u0016\r\\;f)\u0005A\u0006CA\u0005Z\u0013\tQFAA\u0003TQ>\u0014H\u000fC\u0003]\u0001\u0011\u0005S,A\u0006jgZ\u000bG.\u001b3CsR,W#\u00010\u0011\u0005%y\u0016B\u00011\u0005\u0005\u001d\u0011un\u001c7fC:DQA\u0019\u0001\u0005BU\t1!\u00192t\u0011\u0015!\u0007\u0001\"\u0011f\u0003\ri\u0017\r\u001f\u000b\u0003!\u0019DQaZ2A\u0002A\tA\u0001\u001e5bi\")\u0011\u000e\u0001C!U\u0006\u0019Q.\u001b8\u0015\u0005AY\u0007\"B4i\u0001\u0004\u0001\u0002\"B7\u0001\t\u0003r\u0017AB:jO:,X.F\u0001P\u0011\u001d\u0001\b!!A\u0005B9\u000b\u0001\u0002[1tQ\u000e{G-\u001a\u0005\be\u0002\t\t\u0011\"\u0011t\u0003\u0019)\u0017/^1mgR\u0011a\f\u001e\u0005\bkF\f\t\u00111\u0001w\u0003\rAH%\r\t\u0003\u0013]L!\u0001\u001f\u0003\u0003\u0007\u0005s\u0017pB\u0004{\u0005\u0005\u0005\t\u0012A>\u0002\u0011IK7\r\u001b\"zi\u0016\u0004\"!\u0004?\u0007\u000f\u0005\u0011\u0011\u0011!E\u0001{N\u0011AP \t\u0003\u0013}L1!!\u0001\u0005\u0005\u0019\te.\u001f*fM\"1\u0011\u0004 C\u0001\u0003\u000b!\u0012a\u001f\u0005\b\u0003\u0013aHQAA\u0006\u00035qW/\u001c\u0013fqR,gn]5p]R\u0019\u0001%!\u0004\t\u000f\u0005=\u0011q\u0001a\u00017\u0005)A\u0005\u001e5jg\"9\u00111\u0003?\u0005\u0006\u0005U\u0011!D8sI\u0012*\u0007\u0010^3og&|g\u000eF\u00024\u0003/Aq!a\u0004\u0002\u0012\u0001\u00071\u0004C\u0004\u0002\u001cq$)!!\b\u0002+\u0011|WO\u00197f-\u0006dW/\u001a\u0013fqR,gn]5p]R\u0019A(a\b\t\u000f\u0005=\u0011\u0011\u0004a\u00017!9\u00111\u0005?\u0005\u0006\u0005\u0015\u0012\u0001\u00064m_\u0006$h+\u00197vK\u0012*\u0007\u0010^3og&|g\u000eF\u0002C\u0003OAq!a\u0004\u0002\"\u0001\u00071\u0004C\u0004\u0002,q$)!!\f\u0002'1|gn\u001a,bYV,G%\u001a=uK:\u001c\u0018n\u001c8\u0015\u0007!\u000by\u0003C\u0004\u0002\u0010\u0005%\u0002\u0019A\u000e\t\u000f\u0005MB\u0010\"\u0002\u00026\u0005\u0011\u0012N\u001c;WC2,X\rJ3yi\u0016t7/[8o)\rq\u0015q\u0007\u0005\b\u0003\u001f\t\t\u00041\u0001\u001c\u0011\u001d\tY\u0004 C\u0003\u0003{\t1CY=uKZ\u000bG.^3%Kb$XM\\:j_:$2\u0001VA \u0011\u001d\ty!!\u000fA\u0002mAq!a\u0011}\t\u000b\t)%\u0001\u000btQ>\u0014HOV1mk\u0016$S\r\u001f;f]NLwN\u001c\u000b\u0004/\u0006\u001d\u0003bBA\b\u0003\u0003\u0002\ra\u0007\u0005\b\u0003\u0017bHQAA'\u0003UI7OV1mS\u0012\u0014\u0015\u0010^3%Kb$XM\\:j_:$2AXA(\u0011\u001d\ty!!\u0013A\u0002mAq!a\u0015}\t\u000b\t)&A\u0007bEN$S\r\u001f;f]NLwN\u001c\u000b\u0004!\u0005]\u0003bBA\b\u0003#\u0002\ra\u0007\u0005\b\u00037bHQAA/\u00035i\u0017\r\u001f\u0013fqR,gn]5p]R!\u0011qLA2)\r\u0001\u0012\u0011\r\u0005\u0007O\u0006e\u0003\u0019\u0001\t\t\u000f\u0005=\u0011\u0011\fa\u00017!9\u0011q\r?\u0005\u0006\u0005%\u0014!D7j]\u0012*\u0007\u0010^3og&|g\u000e\u0006\u0003\u0002l\u0005=Dc\u0001\t\u0002n!1q-!\u001aA\u0002AAq!a\u0004\u0002f\u0001\u00071\u0004C\u0004\u0002tq$)!!\u001e\u0002!MLwM\\;nI\u0015DH/\u001a8tS>tGcA(\u0002x!9\u0011qBA9\u0001\u0004Y\u0002\"CA>y\u0006\u0005IQAA?\u0003IA\u0017m\u001d5D_\u0012,G%\u001a=uK:\u001c\u0018n\u001c8\u0015\u00079\u000by\bC\u0004\u0002\u0010\u0005e\u0004\u0019A\u000e\t\u0013\u0005\rE0!A\u0005\u0006\u0005\u0015\u0015\u0001E3rk\u0006d7\u000fJ3yi\u0016t7/[8o)\u0011\t9)a#\u0015\u0007y\u000bI\t\u0003\u0005v\u0003\u0003\u000b\t\u00111\u0001w\u0011\u001d\ty!!!A\u0002m\u0001")
/* loaded from: classes3-dex2jar.jar:scala/runtime/RichByte.class */
public final class RichByte implements ScalaWholeNumberProxy<Object> {
    private final byte self;

    public RichByte(byte b) {
        this.self = b;
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
    public byte abs() {
        return RichByte$.MODULE$.abs$extension(self());
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public byte byteValue() {
        return RichByte$.MODULE$.byteValue$extension(self());
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
        return RichByte$.MODULE$.doubleValue$extension(self());
    }

    @Override // scala.Proxy
    public boolean equals(Object obj) {
        return RichByte$.MODULE$.equals$extension(self(), obj);
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public float floatValue() {
        return RichByte$.MODULE$.floatValue$extension(self());
    }

    @Override // scala.Proxy
    public int hashCode() {
        return RichByte$.MODULE$.hashCode$extension(self());
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public int intValue() {
        return RichByte$.MODULE$.intValue$extension(self());
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean isValidByte() {
        return RichByte$.MODULE$.isValidByte$extension(self());
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean isValidChar() {
        return ScalaNumericAnyConversions.Cclass.isValidChar(this);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean isValidInt() {
        return ScalaNumericAnyConversions.Cclass.isValidInt(this);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean isValidShort() {
        return ScalaNumericAnyConversions.Cclass.isValidShort(this);
    }

    @Override // scala.runtime.ScalaWholeNumberProxy, scala.math.ScalaNumericAnyConversions
    public boolean isWhole() {
        return ScalaWholeNumberProxy.Cclass.isWhole(this);
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public long longValue() {
        return RichByte$.MODULE$.longValue$extension(self());
    }

    public byte max(byte b) {
        return RichByte$.MODULE$.max$extension(self(), b);
    }

    @Override // scala.runtime.ScalaNumberProxy
    public /* bridge */ /* synthetic */ Object max(Object obj) {
        return BoxesRunTime.boxToByte(RichByte$.MODULE$.max$extension(self(), BoxesRunTime.unboxToByte(obj)));
    }

    public byte min(byte b) {
        return RichByte$.MODULE$.min$extension(self(), b);
    }

    @Override // scala.runtime.ScalaNumberProxy
    public /* bridge */ /* synthetic */ Object min(Object obj) {
        return BoxesRunTime.boxToByte(RichByte$.MODULE$.min$extension(self(), BoxesRunTime.unboxToByte(obj)));
    }

    @Override // scala.runtime.ScalaNumberProxy
    public Numeric$ByteIsIntegral$ num() {
        return RichByte$.MODULE$.num$extension(self());
    }

    @Override // scala.runtime.OrderedProxy
    public Ordering$Byte$ ord() {
        return RichByte$.MODULE$.ord$extension(self());
    }

    @Override // scala.Proxy.Typed, scala.Proxy
    public byte self() {
        return this.self;
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public short shortValue() {
        return RichByte$.MODULE$.shortValue$extension(self());
    }

    @Override // scala.runtime.ScalaNumberProxy
    public int signum() {
        return RichByte$.MODULE$.signum$extension(self());
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

    @Override // scala.math.ScalaNumericAnyConversions
    public int toInt() {
        return ScalaNumericAnyConversions.Cclass.toInt(this);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public long toLong() {
        return ScalaNumericAnyConversions.Cclass.toLong(this);
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
}
