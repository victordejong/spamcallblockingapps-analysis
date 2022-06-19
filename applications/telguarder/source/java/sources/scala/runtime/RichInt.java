package scala.runtime;

import scala.Proxy;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.Range;
import scala.math.Numeric;
import scala.math.Ordered;
import scala.math.Ordering$Int$;
import scala.math.ScalaNumericAnyConversions;
import scala.reflect.ScalaSignature;
import scala.runtime.OrderedProxy;
import scala.runtime.ScalaNumberProxy;
@ScalaSignature(bytes = "\u0006\u0001\t]d\u0001B\u0001\u0003\u0005\u001d\u0011qAU5dQ&sGO\u0003\u0002\u0004\t\u00059!/\u001e8uS6,'\"A\u0003\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001M!\u0001\u0001\u0003\u0007\u0014!\tI!\"D\u0001\u0005\u0013\tYAA\u0001\u0004B]f4\u0016\r\u001c\t\u0004\u001b9\u0001R\"\u0001\u0002\n\u0005=\u0011!\u0001E*dC2\fg*^7cKJ\u0004&o\u001c=z!\tI\u0011#\u0003\u0002\u0013\t\t\u0019\u0011J\u001c;\u0011\u00075!\u0002#\u0003\u0002\u0016\u0005\tY!+\u00198hK\u0012\u0004&o\u001c=z\u0011!9\u0002A!b\u0001\n\u0003A\u0012\u0001B:fY\u001a,\u0012\u0001\u0005\u0005\t5\u0001\u0011\t\u0011)A\u0005!\u0005)1/\u001a7gA!)A\u0004\u0001C\u0001;\u00051A(\u001b8jiz\"\"AH\u0010\u0011\u00055\u0001\u0001\"B\f\u001c\u0001\u0004\u0001\u0002\"B\u0011\u0001\t#\u0011\u0013a\u00018v[V\t1E\u0004\u0002%a9\u0011Q%\f\b\u0003M-r!a\n\u0016\u000e\u0003!R!!\u000b\u0004\u0002\rq\u0012xn\u001c;?\u0013\u0005)\u0011B\u0001\u0017\u0005\u0003\u0011i\u0017\r\u001e5\n\u00059z\u0013a\u0002(v[\u0016\u0014\u0018n\u0019\u0006\u0003Y\u0011I!!\r\u001a\u0002\u001b%sG/S:J]R,wM]1m\u0015\tqs\u0006C\u00035\u0001\u0011EQ'A\u0002pe\u0012,\u0012A\u000e\b\u0003oir!!\n\u001d\n\u0005ez\u0013\u0001C(sI\u0016\u0014\u0018N\\4\n\u0005mb\u0014aA%oi*\u0011\u0011h\f\u0005\u0006}\u0001!\teP\u0001\fI>,(\r\\3WC2,X\rF\u0001A!\tI\u0011)\u0003\u0002C\t\t1Ai\\;cY\u0016DQ\u0001\u0012\u0001\u0005B\u0015\u000b!B\u001a7pCR4\u0016\r\\;f)\u00051\u0005CA\u0005H\u0013\tAEAA\u0003GY>\fG\u000fC\u0003K\u0001\u0011\u00053*A\u0005m_:<g+\u00197vKR\tA\n\u0005\u0002\n\u001b&\u0011a\n\u0002\u0002\u0005\u0019>tw\rC\u0003Q\u0001\u0011\u0005\u0013+\u0001\u0005j]R4\u0016\r\\;f)\u0005\u0001\u0002\"B*\u0001\t\u0003\"\u0016!\u00032zi\u00164\u0016\r\\;f)\u0005)\u0006CA\u0005W\u0013\t9FA\u0001\u0003CsR,\u0007\"B-\u0001\t\u0003R\u0016AC:i_J$h+\u00197vKR\t1\f\u0005\u0002\n9&\u0011Q\f\u0002\u0002\u0006'\"|'\u000f\u001e\u0005\u0006?\u0002!\t\u0001Y\u0001\bSN<\u0006n\u001c7f)\u0005\t\u0007CA\u0005c\u0013\t\u0019GAA\u0004C_>dW-\u00198\t\u000b\u0015\u0004A\u0011\t4\u0002\u0015%\u001ch+\u00197jI&sG/F\u0001b\u0011\u0015A\u0007\u0001\"\u0001g\u0003-I7OV1mS\u0012duN\\4\t\u000b)\u0004A\u0011\t\r\u0002\u0007\u0005\u00147\u000fC\u0003m\u0001\u0011\u0005S.A\u0002nCb$\"\u0001\u00058\t\u000b=\\\u0007\u0019\u0001\t\u0002\tQD\u0017\r\u001e\u0005\u0006c\u0002!\tE]\u0001\u0004[&tGC\u0001\tt\u0011\u0015y\u0007\u000f1\u0001\u0011\u0011\u0015)\b\u0001\"\u0011\u0019\u0003\u0019\u0019\u0018n\u001a8v[\")q\u000f\u0001C\u00011\u0005)!o\\;oI\"\"a/\u001f?\u007f!\tI!0\u0003\u0002|\t\tQA-\u001a9sK\u000e\fG/\u001a3\"\u0003u\f1\u000f\u00165jg\u0002J7\u000fI1oA%tG/Z4fe\u0002\"\u0018\u0010]3<AQDWM]3!SN\u0004cn\u001c\u0011sK\u0006\u001cxN\u001c\u0011u_\u0002\u0012x.\u001e8eA%$h\u0006\t\u0011QKJD\u0017\r]:!s>,\b%\\3b]R\u0004Co\u001c\u0011dC2d\u0007\u0005\u001e5jg\u0002zg\u000eI1!M2|\u0017\r^5oO6\u0002x.\u001b8uAY\fG.^3@C\u0005y\u0018A\u0002\u001a/cEr\u0003\u0007C\u0004\u0002\u0004\u0001!\t!!\u0002\u0002\u001dQ|')\u001b8bef\u001cFO]5oOV\u0011\u0011q\u0001\t\u0005\u0003\u0013\tyAD\u0002\n\u0003\u0017I1!!\u0004\u0005\u0003\u0019\u0001&/\u001a3fM&!\u0011\u0011CA\n\u0005\u0019\u0019FO]5oO*\u0019\u0011Q\u0002\u0003\t\u000f\u0005]\u0001\u0001\"\u0001\u0002\u0006\u0005YAo\u001c%fqN#(/\u001b8h\u0011\u001d\tY\u0002\u0001C\u0001\u0003\u000b\tQ\u0002^8PGR\fGn\u0015;sS:<WABA\u0010\u0001\u0001\t\tCA\tSKN,H\u000e^,ji\"|W\u000f^*uKB\u0004B!a\t\u0002.5\u0011\u0011Q\u0005\u0006\u0005\u0003O\tI#A\u0005j[6,H/\u00192mK*\u0019\u00111\u0006\u0003\u0002\u0015\r|G\u000e\\3di&|g.\u0003\u0003\u00020\u0005\u0015\"!\u0002*b]\u001e,\u0007bBA\u001a\u0001\u0011\u0005\u0011QG\u0001\u0006k:$\u0018\u000e\u001c\u000b\u0005\u0003C\t9\u0004C\u0004\u0002:\u0005E\u0002\u0019\u0001\t\u0002\u0007\u0015tG\rC\u0004\u00024\u0001!\t!!\u0010\u0015\r\u0005\u0005\u0012qHA!\u0011\u001d\tI$a\u000fA\u0002AAq!a\u0011\u0002<\u0001\u0007\u0001#\u0001\u0003ti\u0016\u0004\bbBA$\u0001\u0011\u0005\u0011\u0011J\u0001\u0003i>$B!a\u0013\u0002ZA!\u0011QJA*\u001d\u0011\t\u0019#a\u0014\n\t\u0005E\u0013QE\u0001\u0006%\u0006tw-Z\u0005\u0005\u0003+\n9FA\u0005J]\u000edWo]5wK*!\u0011\u0011KA\u0013\u0011\u001d\tI$!\u0012A\u0002AAq!a\u0012\u0001\t\u0003\ti\u0006\u0006\u0004\u0002L\u0005}\u0013\u0011\r\u0005\b\u0003s\tY\u00061\u0001\u0011\u0011\u001d\t\u0019%a\u0017A\u0002AA\u0001\"!\u001a\u0001\u0003\u0003%\t%U\u0001\tQ\u0006\u001c\bnQ8eK\"I\u0011\u0011\u000e\u0001\u0002\u0002\u0013\u0005\u00131N\u0001\u0007KF,\u0018\r\\:\u0015\u0007\u0005\fi\u0007\u0003\u0006\u0002p\u0005\u001d\u0014\u0011!a\u0001\u0003c\n1\u0001\u001f\u00132!\rI\u00111O\u0005\u0004\u0003k\"!aA!os\u001eI\u0011\u0011\u0010\u0002\u0002\u0002#\u0005\u00111P\u0001\b%&\u001c\u0007.\u00138u!\ri\u0011Q\u0010\u0004\t\u0003\t\t\t\u0011#\u0001\u0002��M!\u0011QPAA!\rI\u00111Q\u0005\u0004\u0003\u000b#!AB!osJ+g\rC\u0004\u001d\u0003{\"\t!!#\u0015\u0005\u0005m\u0004\u0002CAG\u0003{\")!a$\u0002\u001b9,X\u000eJ3yi\u0016t7/[8o)\r\u0019\u0013\u0011\u0013\u0005\b\u0003'\u000bY\t1\u0001\u001f\u0003\u0015!C\u000f[5t\u0011!\t9*! \u0005\u0006\u0005e\u0015!D8sI\u0012*\u0007\u0010^3og&|g\u000eF\u00027\u00037Cq!a%\u0002\u0016\u0002\u0007a\u0004\u0003\u0005\u0002 \u0006uDQAAQ\u0003U!w.\u001e2mKZ\u000bG.^3%Kb$XM\\:j_:$2aPAR\u0011\u001d\t\u0019*!(A\u0002yA\u0001\"a*\u0002~\u0011\u0015\u0011\u0011V\u0001\u0015M2|\u0017\r\u001e,bYV,G%\u001a=uK:\u001c\u0018n\u001c8\u0015\u0007\u0015\u000bY\u000bC\u0004\u0002\u0014\u0006\u0015\u0006\u0019\u0001\u0010\t\u0011\u0005=\u0016Q\u0010C\u0003\u0003c\u000b1\u0003\\8oOZ\u000bG.^3%Kb$XM\\:j_:$2aSAZ\u0011\u001d\t\u0019*!,A\u0002yA\u0001\"a.\u0002~\u0011\u0015\u0011\u0011X\u0001\u0013S:$h+\u00197vK\u0012*\u0007\u0010^3og&|g\u000eF\u0002R\u0003wCq!a%\u00026\u0002\u0007a\u0004\u0003\u0005\u0002@\u0006uDQAAa\u0003M\u0011\u0017\u0010^3WC2,X\rJ3yi\u0016t7/[8o)\r!\u00161\u0019\u0005\b\u0003'\u000bi\f1\u0001\u001f\u0011!\t9-! \u0005\u0006\u0005%\u0017\u0001F:i_J$h+\u00197vK\u0012*\u0007\u0010^3og&|g\u000eF\u0002[\u0003\u0017Dq!a%\u0002F\u0002\u0007a\u0004\u0003\u0005\u0002P\u0006uDQAAi\u0003EI7o\u00165pY\u0016$S\r\u001f;f]NLwN\u001c\u000b\u0004A\u0006M\u0007bBAJ\u0003\u001b\u0004\rA\b\u0005\t\u0003/\fi\b\"\u0002\u0002Z\u0006!\u0012n\u001d,bY&$\u0017J\u001c;%Kb$XM\\:j_:$2!YAn\u0011\u001d\t\u0019*!6A\u0002yA\u0001\"a8\u0002~\u0011\u0015\u0011\u0011]\u0001\u0016SN4\u0016\r\\5e\u0019>tw\rJ3yi\u0016t7/[8o)\r\t\u00171\u001d\u0005\b\u0003'\u000bi\u000e1\u0001\u001f\u0011!\t9/! \u0005\u0006\u0005%\u0018!D1cg\u0012*\u0007\u0010^3og&|g\u000eF\u0002\u0011\u0003WDq!a%\u0002f\u0002\u0007a\u0004\u0003\u0005\u0002p\u0006uDQAAy\u00035i\u0017\r\u001f\u0013fqR,gn]5p]R!\u00111_A|)\r\u0001\u0012Q\u001f\u0005\u0007_\u00065\b\u0019\u0001\t\t\u000f\u0005M\u0015Q\u001ea\u0001=!A\u00111`A?\t\u000b\ti0A\u0007nS:$S\r\u001f;f]NLwN\u001c\u000b\u0005\u0003\u007f\u0014\u0019\u0001F\u0002\u0011\u0005\u0003Aaa\\A}\u0001\u0004\u0001\u0002bBAJ\u0003s\u0004\rA\b\u0005\t\u0005\u000f\ti\b\"\u0002\u0003\n\u0005\u00012/[4ok6$S\r\u001f;f]NLwN\u001c\u000b\u0004!\t-\u0001bBAJ\u0005\u000b\u0001\rA\b\u0005\t\u0005\u001f\ti\b\"\u0002\u0003\u0012\u0005y!o\\;oI\u0012*\u0007\u0010^3og&|g\u000eF\u0002\u0011\u0005'Aq!a%\u0003\u000e\u0001\u0007a\u0004K\u0003\u0003\u000eedh\u0010\u0003\u0005\u0003\u001a\u0005uDQ\u0001B\u000e\u0003a!xNQ5oCJL8\u000b\u001e:j]\u001e$S\r\u001f;f]NLwN\u001c\u000b\u0005\u0003\u000f\u0011i\u0002C\u0004\u0002\u0014\n]\u0001\u0019\u0001\u0010\t\u0011\t\u0005\u0012Q\u0010C\u0003\u0005G\tQ\u0003^8IKb\u001cFO]5oO\u0012*\u0007\u0010^3og&|g\u000e\u0006\u0003\u0002\b\t\u0015\u0002bBAJ\u0005?\u0001\rA\b\u0005\t\u0005S\ti\b\"\u0002\u0003,\u00059Bo\\(di\u0006d7\u000b\u001e:j]\u001e$S\r\u001f;f]NLwN\u001c\u000b\u0005\u0003\u000f\u0011i\u0003C\u0004\u0002\u0014\n\u001d\u0002\u0019\u0001\u0010\t\u0011\tE\u0012Q\u0010C\u0003\u0005g\t\u0001#\u001e8uS2$S\r\u001f;f]NLwN\u001c\u0019\u0015\t\tU\"\u0011\b\u000b\u0005\u0003C\u00119\u0004C\u0004\u0002:\t=\u0002\u0019\u0001\t\t\u000f\u0005M%q\u0006a\u0001=!A!QHA?\t\u000b\u0011y$\u0001\tv]RLG\u000eJ3yi\u0016t7/[8ocQ!!\u0011\tB$)\u0019\t\tCa\u0011\u0003F!9\u0011\u0011\bB\u001e\u0001\u0004\u0001\u0002bBA\"\u0005w\u0001\r\u0001\u0005\u0005\b\u0003'\u0013Y\u00041\u0001\u001f\u0011!\u0011Y%! \u0005\u0006\t5\u0013!\u0004;pI\u0015DH/\u001a8tS>t\u0007\u0007\u0006\u0003\u0003P\tMC\u0003BA&\u0005#Bq!!\u000f\u0003J\u0001\u0007\u0001\u0003C\u0004\u0002\u0014\n%\u0003\u0019\u0001\u0010\t\u0011\t]\u0013Q\u0010C\u0003\u00053\nQ\u0002^8%Kb$XM\\:j_:\fD\u0003\u0002B.\u0005C\"b!a\u0013\u0003^\t}\u0003bBA\u001d\u0005+\u0002\r\u0001\u0005\u0005\b\u0003\u0007\u0012)\u00061\u0001\u0011\u0011\u001d\t\u0019J!\u0016A\u0002yA!B!\u001a\u0002~\u0005\u0005IQ\u0001B4\u0003IA\u0017m\u001d5D_\u0012,G%\u001a=uK:\u001c\u0018n\u001c8\u0015\u0007E\u0013I\u0007C\u0004\u0002\u0014\n\r\u0004\u0019\u0001\u0010\t\u0015\t5\u0014QPA\u0001\n\u000b\u0011y'\u0001\tfcV\fGn\u001d\u0013fqR,gn]5p]R!!\u0011\u000fB;)\r\t'1\u000f\u0005\u000b\u0003_\u0012Y'!AA\u0002\u0005E\u0004bBAJ\u0005W\u0002\rA\b")
/* loaded from: classes3-dex2jar.jar:scala/runtime/RichInt.class */
public final class RichInt implements ScalaNumberProxy<Object>, RangedProxy<Object> {
    private final int self;

    public RichInt(int i) {
        this.self = i;
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

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, int] */
    @Override // scala.runtime.ScalaNumberProxy
    public Object abs() {
        return RichInt$.MODULE$.abs$extension(self());
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public byte byteValue() {
        return RichInt$.MODULE$.byteValue$extension(self());
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
        return RichInt$.MODULE$.doubleValue$extension(self());
    }

    @Override // scala.Proxy
    public boolean equals(Object obj) {
        return RichInt$.MODULE$.equals$extension(self(), obj);
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public float floatValue() {
        return RichInt$.MODULE$.floatValue$extension(self());
    }

    @Override // scala.Proxy
    public int hashCode() {
        return RichInt$.MODULE$.hashCode$extension(self());
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public int intValue() {
        return RichInt$.MODULE$.intValue$extension(self());
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
        return RichInt$.MODULE$.isValidInt$extension(self());
    }

    public boolean isValidLong() {
        return RichInt$.MODULE$.isValidLong$extension(self());
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean isValidShort() {
        return ScalaNumericAnyConversions.Cclass.isValidShort(this);
    }

    @Override // scala.math.ScalaNumericAnyConversions
    public boolean isWhole() {
        return RichInt$.MODULE$.isWhole$extension(self());
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public long longValue() {
        return RichInt$.MODULE$.longValue$extension(self());
    }

    public int max(int i) {
        return RichInt$.MODULE$.max$extension(self(), i);
    }

    @Override // scala.runtime.ScalaNumberProxy
    public /* bridge */ /* synthetic */ Object max(Object obj) {
        return BoxesRunTime.boxToInteger(RichInt$.MODULE$.max$extension(self(), BoxesRunTime.unboxToInt(obj)));
    }

    public int min(int i) {
        return RichInt$.MODULE$.min$extension(self(), i);
    }

    @Override // scala.runtime.ScalaNumberProxy
    public /* bridge */ /* synthetic */ Object min(Object obj) {
        return BoxesRunTime.boxToInteger(RichInt$.MODULE$.min$extension(self(), BoxesRunTime.unboxToInt(obj)));
    }

    @Override // scala.runtime.ScalaNumberProxy
    public Numeric<Object> num() {
        return RichInt$.MODULE$.num$extension(self());
    }

    @Override // scala.runtime.OrderedProxy
    public Ordering$Int$ ord() {
        return RichInt$.MODULE$.ord$extension(self());
    }

    public int round() {
        return RichInt$.MODULE$.round$extension(self());
    }

    @Override // scala.Proxy.Typed, scala.Proxy
    public int self() {
        return this.self;
    }

    @Override // scala.runtime.ScalaNumberProxy, scala.math.ScalaNumericAnyConversions
    public short shortValue() {
        return RichInt$.MODULE$.shortValue$extension(self());
    }

    @Override // scala.runtime.ScalaNumberProxy
    public int signum() {
        return RichInt$.MODULE$.signum$extension(self());
    }

    @Override // scala.runtime.RangedProxy
    /* renamed from: to */
    public /* bridge */ /* synthetic */ Object mo21to(Object obj) {
        return RichInt$.MODULE$.to$extension0(self(), BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.runtime.RangedProxy
    /* renamed from: to */
    public /* bridge */ /* synthetic */ IndexedSeq<Object> mo20to(Object obj, Object obj2) {
        return RichInt$.MODULE$.to$extension1(self(), BoxesRunTime.unboxToInt(obj), BoxesRunTime.unboxToInt(obj2));
    }

    /* renamed from: to */
    public Range.Inclusive m23to(int i) {
        return RichInt$.MODULE$.to$extension0(self(), i);
    }

    /* renamed from: to */
    public Range.Inclusive m22to(int i, int i2) {
        return RichInt$.MODULE$.to$extension1(self(), i, i2);
    }

    public String toBinaryString() {
        return RichInt$.MODULE$.toBinaryString$extension(self());
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
        return RichInt$.MODULE$.toHexString$extension(self());
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
        return RichInt$.MODULE$.toOctalString$extension(self());
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

    @Override // scala.runtime.RangedProxy
    public /* bridge */ /* synthetic */ Object until(Object obj) {
        return RichInt$.MODULE$.until$extension0(self(), BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.runtime.RangedProxy
    public /* bridge */ /* synthetic */ IndexedSeq<Object> until(Object obj, Object obj2) {
        return RichInt$.MODULE$.until$extension1(self(), BoxesRunTime.unboxToInt(obj), BoxesRunTime.unboxToInt(obj2));
    }

    public Range until(int i) {
        return RichInt$.MODULE$.until$extension0(self(), i);
    }

    public Range until(int i, int i2) {
        return RichInt$.MODULE$.until$extension1(self(), i, i2);
    }
}
