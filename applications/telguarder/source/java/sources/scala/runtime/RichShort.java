package scala.runtime;

import scala.Proxy;
import scala.math.Numeric$ShortIsIntegral$;
import scala.math.Ordered;
import scala.math.Ordering$Short$;
import scala.math.ScalaNumericAnyConversions;
import scala.reflect.ScalaSignature;
import scala.runtime.OrderedProxy;
import scala.runtime.ScalaNumberProxy;
import scala.runtime.ScalaWholeNumberProxy;
@ScalaSignature(bytes = "\u0006\u0001\u00055e\u0001B\u0001\u0003\u0005\u001d\u0011\u0011BU5dQNCwN\u001d;\u000b\u0005\r!\u0011a\u0002:v]RLW.\u001a\u0006\u0002\u000b\u0005)1oY1mC\u000e\u00011c\u0001\u0001\t\u0019A\u0011\u0011BC\u0007\u0002\t%\u00111\u0002\u0002\u0002\u0007\u0003:Lh+\u00197\u0011\u00075q\u0001#D\u0001\u0003\u0013\ty!AA\u000bTG\u0006d\u0017m\u00165pY\u0016tU/\u001c2feB\u0013x\u000e_=\u0011\u0005%\t\u0012B\u0001\n\u0005\u0005\u0015\u0019\u0006n\u001c:u\u0011!!\u0002A!b\u0001\n\u0003)\u0012\u0001B:fY\u001a,\u0012\u0001\u0005\u0005\t/\u0001\u0011\t\u0011)A\u0005!\u0005)1/\u001a7gA!)\u0011\u0004\u0001C\u00015\u00051A(\u001b8jiz\"\"a\u0007\u000f\u0011\u00055\u0001\u0001\"\u0002\u000b\u0019\u0001\u0004\u0001\u0002\"\u0002\u0010\u0001\t#y\u0012a\u00018v[V\t\u0001E\u0004\u0002\"[9\u0011!E\u000b\b\u0003G!r!\u0001J\u0014\u000e\u0003\u0015R!A\n\u0004\u0002\rq\u0012xn\u001c;?\u0013\u0005)\u0011BA\u0015\u0005\u0003\u0011i\u0017\r\u001e5\n\u0005-b\u0013a\u0002(v[\u0016\u0014\u0018n\u0019\u0006\u0003S\u0011I!AL\u0018\u0002\u001fMCwN\u001d;Jg&sG/Z4sC2T!a\u000b\u0017\t\u000bE\u0002A\u0011\u0003\u001a\u0002\u0007=\u0014H-F\u00014\u001d\t!tG\u0004\u0002#k%\u0011a\u0007L\u0001\t\u001fJ$WM]5oO&\u0011\u0001(O\u0001\u0006'\"|'\u000f\u001e\u0006\u0003m1BQa\u000f\u0001\u0005Bq\n1\u0002Z8vE2,g+\u00197vKR\tQ\b\u0005\u0002\n}%\u0011q\b\u0002\u0002\u0007\t>,(\r\\3\t\u000b\u0005\u0003A\u0011\t\"\u0002\u0015\u0019dw.\u0019;WC2,X\rF\u0001D!\tIA)\u0003\u0002F\t\t)a\t\\8bi\")q\t\u0001C!\u0011\u0006IAn\u001c8h-\u0006dW/\u001a\u000b\u0002\u0013B\u0011\u0011BS\u0005\u0003\u0017\u0012\u0011A\u0001T8oO\")Q\n\u0001C!\u001d\u0006A\u0011N\u001c;WC2,X\rF\u0001P!\tI\u0001+\u0003\u0002R\t\t\u0019\u0011J\u001c;\t\u000bM\u0003A\u0011\t+\u0002\u0013\tLH/\u001a,bYV,G#A+\u0011\u0005%1\u0016BA,\u0005\u0005\u0011\u0011\u0015\u0010^3\t\u000be\u0003A\u0011\t.\u0002\u0015MDwN\u001d;WC2,X\rF\u0001\u0011\u0011\u0015a\u0006\u0001\"\u0011^\u00031I7OV1mS\u0012\u001c\u0006n\u001c:u+\u0005q\u0006CA\u0005`\u0013\t\u0001GAA\u0004C_>dW-\u00198\t\u000b\t\u0004A\u0011I\u000b\u0002\u0007\u0005\u00147\u000fC\u0003e\u0001\u0011\u0005S-A\u0002nCb$\"\u0001\u00054\t\u000b\u001d\u001c\u0007\u0019\u0001\t\u0002\tQD\u0017\r\u001e\u0005\u0006S\u0002!\tE[\u0001\u0004[&tGC\u0001\tl\u0011\u00159\u0007\u000e1\u0001\u0011\u0011\u0015i\u0007\u0001\"\u0011o\u0003\u0019\u0019\u0018n\u001a8v[V\tq\nC\u0004q\u0001\u0005\u0005I\u0011\t(\u0002\u0011!\f7\u000f[\"pI\u0016DqA\u001d\u0001\u0002\u0002\u0013\u00053/\u0001\u0004fcV\fGn\u001d\u000b\u0003=RDq!^9\u0002\u0002\u0003\u0007a/A\u0002yIE\u0002\"!C<\n\u0005a$!aA!os\u001e9!PAA\u0001\u0012\u0003Y\u0018!\u0003*jG\"\u001c\u0006n\u001c:u!\tiAPB\u0004\u0002\u0005\u0005\u0005\t\u0012A?\u0014\u0005qt\bCA\u0005��\u0013\r\t\t\u0001\u0002\u0002\u0007\u0003:L(+\u001a4\t\reaH\u0011AA\u0003)\u0005Y\bbBA\u0005y\u0012\u0015\u00111B\u0001\u000e]VlG%\u001a=uK:\u001c\u0018n\u001c8\u0015\u0007\u0001\ni\u0001C\u0004\u0002\u0010\u0005\u001d\u0001\u0019A\u000e\u0002\u000b\u0011\"\b.[:\t\u000f\u0005MA\u0010\"\u0002\u0002\u0016\u0005iqN\u001d3%Kb$XM\\:j_:$2aMA\f\u0011\u001d\ty!!\u0005A\u0002mAq!a\u0007}\t\u000b\ti\"A\u000be_V\u0014G.\u001a,bYV,G%\u001a=uK:\u001c\u0018n\u001c8\u0015\u0007q\ny\u0002C\u0004\u0002\u0010\u0005e\u0001\u0019A\u000e\t\u000f\u0005\rB\u0010\"\u0002\u0002&\u0005!b\r\\8biZ\u000bG.^3%Kb$XM\\:j_:$2AQA\u0014\u0011\u001d\ty!!\tA\u0002mAq!a\u000b}\t\u000b\ti#A\nm_:<g+\u00197vK\u0012*\u0007\u0010^3og&|g\u000eF\u0002I\u0003_Aq!a\u0004\u0002*\u0001\u00071\u0004C\u0004\u00024q$)!!\u000e\u0002%%tGOV1mk\u0016$S\r\u001f;f]NLwN\u001c\u000b\u0004\u001d\u0006]\u0002bBA\b\u0003c\u0001\ra\u0007\u0005\b\u0003waHQAA\u001f\u0003M\u0011\u0017\u0010^3WC2,X\rJ3yi\u0016t7/[8o)\r!\u0016q\b\u0005\b\u0003\u001f\tI\u00041\u0001\u001c\u0011\u001d\t\u0019\u0005 C\u0003\u0003\u000b\nAc\u001d5peR4\u0016\r\\;fI\u0015DH/\u001a8tS>tGc\u0001.\u0002H!9\u0011qBA!\u0001\u0004Y\u0002bBA&y\u0012\u0015\u0011QJ\u0001\u0017SN4\u0016\r\\5e'\"|'\u000f\u001e\u0013fqR,gn]5p]R\u0019a,a\u0014\t\u000f\u0005=\u0011\u0011\na\u00017!9\u00111\u000b?\u0005\u0006\u0005U\u0013!D1cg\u0012*\u0007\u0010^3og&|g\u000eF\u0002\u0011\u0003/Bq!a\u0004\u0002R\u0001\u00071\u0004C\u0004\u0002\\q$)!!\u0018\u0002\u001b5\f\u0007\u0010J3yi\u0016t7/[8o)\u0011\ty&a\u0019\u0015\u0007A\t\t\u0007\u0003\u0004h\u00033\u0002\r\u0001\u0005\u0005\b\u0003\u001f\tI\u00061\u0001\u001c\u0011\u001d\t9\u0007 C\u0003\u0003S\nQ\"\\5oI\u0015DH/\u001a8tS>tG\u0003BA6\u0003_\"2\u0001EA7\u0011\u00199\u0017Q\ra\u0001!!9\u0011qBA3\u0001\u0004Y\u0002bBA:y\u0012\u0015\u0011QO\u0001\u0011g&<g.^7%Kb$XM\\:j_:$2aTA<\u0011\u001d\ty!!\u001dA\u0002mA\u0011\"a\u001f}\u0003\u0003%)!! \u0002%!\f7\u000f[\"pI\u0016$S\r\u001f;f]NLwN\u001c\u000b\u0004\u001d\u0006}\u0004bBA\b\u0003s\u0002\ra\u0007\u0005\n\u0003\u0007c\u0018\u0011!C\u0003\u0003\u000b\u000b\u0001#Z9vC2\u001cH%\u001a=uK:\u001c\u0018n\u001c8\u0015\t\u0005\u001d\u00151\u0012\u000b\u0004=\u0006%\u0005\u0002C;\u0002\u0002\u0006\u0005\t\u0019\u0001<\t\u000f\u0005=\u0011\u0011\u0011a\u00017\u0001")
/* loaded from: classes3-dex2jar.jar:scala/runtime/RichShort.class */
public final class RichShort implements ScalaWholeNumberProxy<Object> {
    private final short self;

    public RichShort(short s) {
        this.self = s;
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
    public short abs() {
        return RichShort$.MODULE$.abs$extension(self());
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public byte byteValue() {
        return RichShort$.MODULE$.byteValue$extension(self());
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
        return RichShort$.MODULE$.doubleValue$extension(self());
    }

    @Override // scala.Proxy
    public boolean equals(Object obj) {
        return RichShort$.MODULE$.equals$extension(self(), obj);
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public float floatValue() {
        return RichShort$.MODULE$.floatValue$extension(self());
    }

    @Override // scala.Proxy
    public int hashCode() {
        return RichShort$.MODULE$.hashCode$extension(self());
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public int intValue() {
        return RichShort$.MODULE$.intValue$extension(self());
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean isValidByte() {
        return ScalaNumericAnyConversions.Cclass.isValidByte(this);
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
        return RichShort$.MODULE$.isValidShort$extension(self());
    }

    @Override // scala.runtime.ScalaWholeNumberProxy, scala.math.ScalaNumericAnyConversions
    public boolean isWhole() {
        return ScalaWholeNumberProxy.Cclass.isWhole(this);
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public long longValue() {
        return RichShort$.MODULE$.longValue$extension(self());
    }

    @Override // scala.runtime.ScalaNumberProxy
    public /* bridge */ /* synthetic */ Object max(Object obj) {
        return BoxesRunTime.boxToShort(RichShort$.MODULE$.max$extension(self(), BoxesRunTime.unboxToShort(obj)));
    }

    public short max(short s) {
        return RichShort$.MODULE$.max$extension(self(), s);
    }

    @Override // scala.runtime.ScalaNumberProxy
    public /* bridge */ /* synthetic */ Object min(Object obj) {
        return BoxesRunTime.boxToShort(RichShort$.MODULE$.min$extension(self(), BoxesRunTime.unboxToShort(obj)));
    }

    public short min(short s) {
        return RichShort$.MODULE$.min$extension(self(), s);
    }

    @Override // scala.runtime.ScalaNumberProxy
    public Numeric$ShortIsIntegral$ num() {
        return RichShort$.MODULE$.num$extension(self());
    }

    @Override // scala.runtime.OrderedProxy
    public Ordering$Short$ ord() {
        return RichShort$.MODULE$.ord$extension(self());
    }

    @Override // scala.Proxy.Typed, scala.Proxy
    public short self() {
        return this.self;
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public short shortValue() {
        return RichShort$.MODULE$.shortValue$extension(self());
    }

    @Override // scala.runtime.ScalaNumberProxy
    public int signum() {
        return RichShort$.MODULE$.signum$extension(self());
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
