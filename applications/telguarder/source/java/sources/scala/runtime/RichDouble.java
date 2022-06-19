package scala.runtime;

import scala.Proxy;
import scala.collection.immutable.NumericRange;
import scala.collection.immutable.Range;
import scala.math.Integral;
import scala.math.Numeric$DoubleIsFractional$;
import scala.math.Ordered;
import scala.math.Ordering$Double$;
import scala.math.ScalaNumericAnyConversions;
import scala.reflect.ScalaSignature;
import scala.runtime.FractionalProxy;
import scala.runtime.OrderedProxy;
import scala.runtime.ScalaNumberProxy;
@ScalaSignature(bytes = "\u0006\u0001\t\u0005c\u0001B\u0001\u0003\u0005\u001d\u0011!BU5dQ\u0012{WO\u00197f\u0015\t\u0019A!A\u0004sk:$\u0018.\\3\u000b\u0003\u0015\tQa]2bY\u0006\u001c\u0001aE\u0002\u0001\u00111\u0001\"!\u0003\u0006\u000e\u0003\u0011I!a\u0003\u0003\u0003\r\u0005s\u0017PV1m!\ria\u0002E\u0007\u0002\u0005%\u0011qB\u0001\u0002\u0010\rJ\f7\r^5p]\u0006d\u0007K]8ysB\u0011\u0011\"E\u0005\u0003%\u0011\u0011a\u0001R8vE2,\u0007\u0002\u0003\u000b\u0001\u0005\u000b\u0007I\u0011A\u000b\u0002\tM,GNZ\u000b\u0002!!Aq\u0003\u0001B\u0001B\u0003%\u0001#A\u0003tK24\u0007\u0005C\u0003\u001a\u0001\u0011\u0005!$\u0001\u0004=S:LGO\u0010\u000b\u00037q\u0001\"!\u0004\u0001\t\u000bQA\u0002\u0019\u0001\t\t\u000by\u0001A\u0011C\u0010\u0002\u00079,X.F\u0001!\u001d\t\tSF\u0004\u0002#U9\u00111\u0005\u000b\b\u0003I\u001dj\u0011!\n\u0006\u0003M\u0019\ta\u0001\u0010:p_Rt\u0014\"A\u0003\n\u0005%\"\u0011\u0001B7bi\"L!a\u000b\u0017\u0002\u000f9+X.\u001a:jG*\u0011\u0011\u0006B\u0005\u0003]=\n!\u0003R8vE2,\u0017j\u001d$sC\u000e$\u0018n\u001c8bY*\u00111\u0006\f\u0005\u0006c\u0001!\tBM\u0001\u0004_J$W#A\u001a\u000f\u0005Q:dB\u0001\u00126\u0013\t1D&\u0001\u0005Pe\u0012,'/\u001b8h\u0013\tA\u0014(\u0001\u0004E_V\u0014G.\u001a\u0006\u0003m1BQa\u000f\u0001\u0005\u0012q\n1\"\u001b8uK\u001e\u0014\u0018\r\u001c(v[V\tQH\u0004\u0002\"}%\u0011qhL\u0001\u0013\t>,(\r\\3Bg&3\u0017J\u001c;fOJ\fG\u000eC\u0003B\u0001\u0011\u0005#)A\u0006e_V\u0014G.\u001a,bYV,G#\u0001\t\t\u000b\u0011\u0003A\u0011I#\u0002\u0015\u0019dw.\u0019;WC2,X\rF\u0001G!\tIq)\u0003\u0002I\t\t)a\t\\8bi\")!\n\u0001C!\u0017\u0006IAn\u001c8h-\u0006dW/\u001a\u000b\u0002\u0019B\u0011\u0011\"T\u0005\u0003\u001d\u0012\u0011A\u0001T8oO\")\u0001\u000b\u0001C!#\u0006A\u0011N\u001c;WC2,X\rF\u0001S!\tI1+\u0003\u0002U\t\t\u0019\u0011J\u001c;\t\u000bY\u0003A\u0011I,\u0002\u0013\tLH/\u001a,bYV,G#\u0001-\u0011\u0005%I\u0016B\u0001.\u0005\u0005\u0011\u0011\u0015\u0010^3\t\u000bq\u0003A\u0011I/\u0002\u0015MDwN\u001d;WC2,X\rF\u0001_!\tIq,\u0003\u0002a\t\t)1\u000b[8si\")!\r\u0001C!G\u00069\u0011n],i_2,G#\u00013\u0011\u0005%)\u0017B\u00014\u0005\u0005\u001d\u0011un\u001c7fC:DQ\u0001\u001b\u0001\u0005B%\f1\"[:WC2LGMQ=uKV\tA\rC\u0003l\u0001\u0011\u0005\u0013.\u0001\u0007jgZ\u000bG.\u001b3TQ>\u0014H\u000fC\u0003n\u0001\u0011\u0005\u0013.A\u0006jgZ\u000bG.\u001b3DQ\u0006\u0014\b\"B8\u0001\t\u0003J\u0017AC5t-\u0006d\u0017\u000eZ%oi\")\u0011\u000f\u0001C\u0001S\u0006)\u0011n\u001d(b\u001d\")1\u000f\u0001C\u0001S\u0006Q\u0011n]%oM&t\u0017\u000e^=\t\u000bU\u0004A\u0011A5\u0002\u001b%\u001c\bk\\:J]\u001aLg.\u001b;z\u0011\u00159\b\u0001\"\u0001j\u00035I7OT3h\u0013:4\u0017N\\5us\")\u0011\u0010\u0001C!+\u0005\u0019\u0011MY:\t\u000bm\u0004A\u0011\t?\u0002\u00075\f\u0007\u0010\u0006\u0002\u0011{\")aP\u001fa\u0001!\u0005!A\u000f[1u\u0011\u001d\t\t\u0001\u0001C!\u0003\u0007\t1!\\5o)\r\u0001\u0012Q\u0001\u0005\u0006}~\u0004\r\u0001\u0005\u0005\b\u0003\u0013\u0001A\u0011IA\u0006\u0003\u0019\u0019\u0018n\u001a8v[V\t!\u000bC\u0004\u0002\u0010\u0001!\t!!\u0005\u0002\u000bI|WO\u001c3\u0016\u00031Ca!!\u0006\u0001\t\u0003)\u0012\u0001B2fS2Da!!\u0007\u0001\t\u0003)\u0012!\u00024m_>\u0014\bBBA\u000f\u0001\u0011\u0005Q#A\u0005u_J\u000bG-[1og\"1\u0011\u0011\u0005\u0001\u0005\u0002U\t\u0011\u0002^8EK\u001e\u0014X-Z:\t\u0011\u0005\u0015\u0002!!A\u0005BE\u000b\u0001\u0002[1tQ\u000e{G-\u001a\u0005\n\u0003S\u0001\u0011\u0011!C!\u0003W\ta!Z9vC2\u001cHc\u00013\u0002.!Q\u0011qFA\u0014\u0003\u0003\u0005\r!!\r\u0002\u0007a$\u0013\u0007E\u0002\n\u0003gI1!!\u000e\u0005\u0005\r\te._\u0004\n\u0003s\u0011\u0011\u0011!E\u0001\u0003w\t!BU5dQ\u0012{WO\u00197f!\ri\u0011Q\b\u0004\t\u0003\t\t\t\u0011#\u0001\u0002@M!\u0011QHA!!\rI\u00111I\u0005\u0004\u0003\u000b\"!AB!osJ+g\rC\u0004\u001a\u0003{!\t!!\u0013\u0015\u0005\u0005m\u0002\u0002CA'\u0003{!)!a\u0014\u0002\u001b9,X\u000eJ3yi\u0016t7/[8o)\r\u0001\u0013\u0011\u000b\u0005\b\u0003'\nY\u00051\u0001\u001c\u0003\u0015!C\u000f[5t\u0011!\t9&!\u0010\u0005\u0006\u0005e\u0013!D8sI\u0012*\u0007\u0010^3og&|g\u000eF\u00024\u00037Bq!a\u0015\u0002V\u0001\u00071\u0004\u0003\u0005\u0002`\u0005uBQAA1\u0003UIg\u000e^3he\u0006dg*^7%Kb$XM\\:j_:$2!PA2\u0011\u001d\t\u0019&!\u0018A\u0002mA\u0001\"a\u001a\u0002>\u0011\u0015\u0011\u0011N\u0001\u0016I>,(\r\\3WC2,X\rJ3yi\u0016t7/[8o)\r\u0011\u00151\u000e\u0005\b\u0003'\n)\u00071\u0001\u001c\u0011!\ty'!\u0010\u0005\u0006\u0005E\u0014\u0001\u00064m_\u0006$h+\u00197vK\u0012*\u0007\u0010^3og&|g\u000eF\u0002F\u0003gBq!a\u0015\u0002n\u0001\u00071\u0004\u0003\u0005\u0002x\u0005uBQAA=\u0003MawN\\4WC2,X\rJ3yi\u0016t7/[8o)\rY\u00151\u0010\u0005\b\u0003'\n)\b1\u0001\u001c\u0011!\ty(!\u0010\u0005\u0006\u0005\u0005\u0015AE5oiZ\u000bG.^3%Kb$XM\\:j_:$2!UAB\u0011\u001d\t\u0019&! A\u0002mA\u0001\"a\"\u0002>\u0011\u0015\u0011\u0011R\u0001\u0014Ef$XMV1mk\u0016$S\r\u001f;f]NLwN\u001c\u000b\u0004/\u0006-\u0005bBA*\u0003\u000b\u0003\ra\u0007\u0005\t\u0003\u001f\u000bi\u0004\"\u0002\u0002\u0012\u0006!2\u000f[8siZ\u000bG.^3%Kb$XM\\:j_:$2!XAJ\u0011\u001d\t\u0019&!$A\u0002mA\u0001\"a&\u0002>\u0011\u0015\u0011\u0011T\u0001\u0012SN<\u0006n\u001c7fI\u0015DH/\u001a8tS>tGcA2\u0002\u001c\"9\u00111KAK\u0001\u0004Y\u0002\u0002CAP\u0003{!)!!)\u0002+%\u001ch+\u00197jI\nKH/\u001a\u0013fqR,gn]5p]R\u0019A-a)\t\u000f\u0005M\u0013Q\u0014a\u00017!A\u0011qUA\u001f\t\u000b\tI+\u0001\fjgZ\u000bG.\u001b3TQ>\u0014H\u000fJ3yi\u0016t7/[8o)\r!\u00171\u0016\u0005\b\u0003'\n)\u000b1\u0001\u001c\u0011!\ty+!\u0010\u0005\u0006\u0005E\u0016!F5t-\u0006d\u0017\u000eZ\"iCJ$S\r\u001f;f]NLwN\u001c\u000b\u0004I\u0006M\u0006bBA*\u0003[\u0003\ra\u0007\u0005\t\u0003o\u000bi\u0004\"\u0002\u0002:\u0006!\u0012n\u001d,bY&$\u0017J\u001c;%Kb$XM\\:j_:$2\u0001ZA^\u0011\u001d\t\u0019&!.A\u0002mA\u0001\"a0\u0002>\u0011\u0015\u0011\u0011Y\u0001\u0010SNt\u0015M\u0014\u0013fqR,gn]5p]R\u0019A-a1\t\u000f\u0005M\u0013Q\u0018a\u00017!A\u0011qYA\u001f\t\u000b\tI-\u0001\u000bjg&sg-\u001b8jif$S\r\u001f;f]NLwN\u001c\u000b\u0004I\u0006-\u0007bBA*\u0003\u000b\u0004\ra\u0007\u0005\t\u0003\u001f\fi\u0004\"\u0002\u0002R\u00069\u0012n\u001d)pg&sg-\u001b8jif$S\r\u001f;f]NLwN\u001c\u000b\u0004I\u0006M\u0007bBA*\u0003\u001b\u0004\ra\u0007\u0005\t\u0003/\fi\u0004\"\u0002\u0002Z\u00069\u0012n\u001d(fO&sg-\u001b8jif$S\r\u001f;f]NLwN\u001c\u000b\u0004I\u0006m\u0007bBA*\u0003+\u0004\ra\u0007\u0005\t\u0003?\fi\u0004\"\u0002\u0002b\u0006i\u0011MY:%Kb$XM\\:j_:$2\u0001EAr\u0011\u001d\t\u0019&!8A\u0002mA\u0001\"a:\u0002>\u0011\u0015\u0011\u0011^\u0001\u000e[\u0006DH%\u001a=uK:\u001c\u0018n\u001c8\u0015\t\u0005-\u0018q\u001e\u000b\u0004!\u00055\bB\u0002@\u0002f\u0002\u0007\u0001\u0003C\u0004\u0002T\u0005\u0015\b\u0019A\u000e\t\u0011\u0005M\u0018Q\bC\u0003\u0003k\fQ\"\\5oI\u0015DH/\u001a8tS>tG\u0003BA|\u0003w$2\u0001EA}\u0011\u0019q\u0018\u0011\u001fa\u0001!!9\u00111KAy\u0001\u0004Y\u0002\u0002CA��\u0003{!)A!\u0001\u0002!MLwM\\;nI\u0015DH/\u001a8tS>tGc\u0001*\u0003\u0004!9\u00111KA\u007f\u0001\u0004Y\u0002\u0002\u0003B\u0004\u0003{!)A!\u0003\u0002\u001fI|WO\u001c3%Kb$XM\\:j_:$2\u0001\u0014B\u0006\u0011\u001d\t\u0019F!\u0002A\u0002mA\u0001Ba\u0004\u0002>\u0011\u0015!\u0011C\u0001\u000fG\u0016LG\u000eJ3yi\u0016t7/[8o)\r\u0001\"1\u0003\u0005\b\u0003'\u0012i\u00011\u0001\u001c\u0011!\u00119\"!\u0010\u0005\u0006\te\u0011a\u00044m_>\u0014H%\u001a=uK:\u001c\u0018n\u001c8\u0015\u0007A\u0011Y\u0002C\u0004\u0002T\tU\u0001\u0019A\u000e\t\u0011\t}\u0011Q\bC\u0003\u0005C\t1\u0003^8SC\u0012L\u0017M\\:%Kb$XM\\:j_:$2\u0001\u0005B\u0012\u0011\u001d\t\u0019F!\bA\u0002mA\u0001Ba\n\u0002>\u0011\u0015!\u0011F\u0001\u0014i>$Um\u001a:fKN$S\r\u001f;f]NLwN\u001c\u000b\u0004!\t-\u0002bBA*\u0005K\u0001\ra\u0007\u0005\u000b\u0005_\ti$!A\u0005\u0006\tE\u0012A\u00055bg\"\u001cu\u000eZ3%Kb$XM\\:j_:$2!\u0015B\u001a\u0011\u001d\t\u0019F!\fA\u0002mA!Ba\u000e\u0002>\u0005\u0005IQ\u0001B\u001d\u0003A)\u0017/^1mg\u0012*\u0007\u0010^3og&|g\u000e\u0006\u0003\u0003<\t}Bc\u00013\u0003>!Q\u0011q\u0006B\u001b\u0003\u0003\u0005\r!!\r\t\u000f\u0005M#Q\u0007a\u00017\u0001")
/* loaded from: classes3-dex2jar.jar:scala/runtime/RichDouble.class */
public final class RichDouble implements FractionalProxy<Object> {
    private final double self;

    public RichDouble(double d) {
        this.self = d;
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
    public double abs() {
        return RichDouble$.MODULE$.abs$extension(self());
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public byte byteValue() {
        return RichDouble$.MODULE$.byteValue$extension(self());
    }

    public double ceil() {
        return RichDouble$.MODULE$.ceil$extension(self());
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
        return RichDouble$.MODULE$.doubleValue$extension(self());
    }

    @Override // scala.Proxy
    public boolean equals(Object obj) {
        return RichDouble$.MODULE$.equals$extension(self(), obj);
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public float floatValue() {
        return RichDouble$.MODULE$.floatValue$extension(self());
    }

    public double floor() {
        return RichDouble$.MODULE$.floor$extension(self());
    }

    @Override // scala.Proxy
    public int hashCode() {
        return RichDouble$.MODULE$.hashCode$extension(self());
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public int intValue() {
        return RichDouble$.MODULE$.intValue$extension(self());
    }

    @Override // scala.runtime.FractionalProxy
    /* renamed from: integralNum */
    public Integral<Object> integralNum2() {
        return RichDouble$.MODULE$.integralNum$extension(self());
    }

    public boolean isInfinity() {
        return RichDouble$.MODULE$.isInfinity$extension(self());
    }

    public boolean isNaN() {
        return RichDouble$.MODULE$.isNaN$extension(self());
    }

    public boolean isNegInfinity() {
        return RichDouble$.MODULE$.isNegInfinity$extension(self());
    }

    public boolean isPosInfinity() {
        return RichDouble$.MODULE$.isPosInfinity$extension(self());
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean isValidByte() {
        return RichDouble$.MODULE$.isValidByte$extension(self());
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean isValidChar() {
        return RichDouble$.MODULE$.isValidChar$extension(self());
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean isValidInt() {
        return RichDouble$.MODULE$.isValidInt$extension(self());
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean isValidShort() {
        return RichDouble$.MODULE$.isValidShort$extension(self());
    }

    @Override // scala.runtime.FractionalProxy, scala.math.ScalaNumericAnyConversions
    public boolean isWhole() {
        return RichDouble$.MODULE$.isWhole$extension(self());
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public long longValue() {
        return RichDouble$.MODULE$.longValue$extension(self());
    }

    public double max(double d) {
        return RichDouble$.MODULE$.max$extension(self(), d);
    }

    @Override // scala.runtime.ScalaNumberProxy
    public /* bridge */ /* synthetic */ Object max(Object obj) {
        return BoxesRunTime.boxToDouble(RichDouble$.MODULE$.max$extension(self(), BoxesRunTime.unboxToDouble(obj)));
    }

    public double min(double d) {
        return RichDouble$.MODULE$.min$extension(self(), d);
    }

    @Override // scala.runtime.ScalaNumberProxy
    public /* bridge */ /* synthetic */ Object min(Object obj) {
        return BoxesRunTime.boxToDouble(RichDouble$.MODULE$.min$extension(self(), BoxesRunTime.unboxToDouble(obj)));
    }

    @Override // scala.runtime.FractionalProxy, scala.runtime.ScalaNumberProxy
    public Numeric$DoubleIsFractional$ num() {
        return RichDouble$.MODULE$.num$extension(self());
    }

    @Override // scala.runtime.OrderedProxy
    public Ordering$Double$ ord() {
        return RichDouble$.MODULE$.ord$extension(self());
    }

    public long round() {
        return RichDouble$.MODULE$.round$extension(self());
    }

    @Override // scala.Proxy.Typed, scala.Proxy
    public double self() {
        return this.self;
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public short shortValue() {
        return RichDouble$.MODULE$.shortValue$extension(self());
    }

    @Override // scala.runtime.ScalaNumberProxy
    public int signum() {
        return RichDouble$.MODULE$.signum$extension(self());
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

    public double toDegrees() {
        return RichDouble$.MODULE$.toDegrees$extension(self());
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

    public double toRadians() {
        return RichDouble$.MODULE$.toRadians$extension(self());
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
