package scala;

import scala.Product;
import scala.Product5;
import scala.collection.Iterator;
import scala.collection.mutable.StringBuilder;
import scala.reflect.ScalaSignature;
import scala.runtime.ScalaRunTime$;
@ScalaSignature(bytes = "\u0006\u0001\t\u001da\u0001B\u0001\u0003\u0001\u0016\u0011a\u0001V;qY\u0016,$\"A\u0002\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U1a\u0001\u0005\u000e\u001eA\r\u001aR\u0001A\u0004\fK!\u0002\"\u0001C\u0005\u000e\u0003\tI!A\u0003\u0002\u0003\r\u0005s\u0017PU3g!\u001dAABD\r\u001d?\tJ!!\u0004\u0002\u0003\u0011A\u0013x\u000eZ;diV\u0002\"a\u0004\t\r\u0001\u00111\u0011\u0003\u0001CC\u0002I\u0011!\u0001V\u0019\u0012\u0005M1\u0002C\u0001\u0005\u0015\u0013\t)\"AA\u0004O_RD\u0017N\\4\u0011\u0005!9\u0012B\u0001\r\u0003\u0005\r\te.\u001f\t\u0003\u001fi!aa\u0007\u0001\u0005\u0006\u0004\u0011\"A\u0001+3!\tyQ\u0004\u0002\u0004\u001f\u0001\u0011\u0015\rA\u0005\u0002\u0003)N\u0002\"a\u0004\u0011\u0005\r\u0005\u0002AQ1\u0001\u0013\u0005\t!F\u0007\u0005\u0002\u0010G\u00111A\u0005\u0001CC\u0002I\u0011!\u0001V\u001b\u0011\u0005!1\u0013BA\u0014\u0003\u0005\u001d\u0001&o\u001c3vGR\u0004\"\u0001C\u0015\n\u0005)\u0012!\u0001D*fe&\fG.\u001b>bE2,\u0007\u0002\u0003\u0017\u0001\u0005+\u0007I\u0011A\u0017\u0002\u0005}\u000bT#\u0001\b\t\u0011=\u0002!\u0011#Q\u0001\n9\t1aX\u0019!\u0011!\t\u0004A!f\u0001\n\u0003\u0011\u0014AA03+\u0005I\u0002\u0002\u0003\u001b\u0001\u0005#\u0005\u000b\u0011B\r\u0002\u0007}\u0013\u0004\u0005\u0003\u00057\u0001\tU\r\u0011\"\u00018\u0003\ty6'F\u0001\u001d\u0011!I\u0004A!E!\u0002\u0013a\u0012aA04A!A1\b\u0001BK\u0002\u0013\u0005A(\u0001\u0002`iU\tq\u0004\u0003\u0005?\u0001\tE\t\u0015!\u0003 \u0003\ryF\u0007\t\u0005\t\u0001\u0002\u0011)\u001a!C\u0001\u0003\u0006\u0011q,N\u000b\u0002E!A1\t\u0001B\tB\u0003%!%A\u0002`k\u0001BQ!\u0012\u0001\u0005\u0002\u0019\u000ba\u0001P5oSRtDCB$I\u0013*[E\nE\u0004\t\u00019IBd\b\u0012\t\u000b1\"\u0005\u0019\u0001\b\t\u000bE\"\u0005\u0019A\r\t\u000bY\"\u0005\u0019\u0001\u000f\t\u000bm\"\u0005\u0019A\u0010\t\u000b\u0001#\u0005\u0019\u0001\u0012\t\u000b9\u0003A\u0011I(\u0002\u0011Q|7\u000b\u001e:j]\u001e$\u0012\u0001\u0015\t\u0003#Zk\u0011A\u0015\u0006\u0003'R\u000bA\u0001\\1oO*\tQ+\u0001\u0003kCZ\f\u0017BA,S\u0005\u0019\u0019FO]5oO\"9\u0011\fAA\u0001\n\u0003Q\u0016\u0001B2paf,ba\u00170aE\u00124GC\u0002/hQ&T7\u000eE\u0004\t\u0001u{\u0016mY3\u0011\u0005=qF!B\tY\u0005\u0004\u0011\u0002CA\ba\t\u0015Y\u0002L1\u0001\u0013!\ty!\rB\u0003\u001f1\n\u0007!\u0003\u0005\u0002\u0010I\u0012)\u0011\u0005\u0017b\u0001%A\u0011qB\u001a\u0003\u0006Ia\u0013\rA\u0005\u0005\bYa\u0003\n\u00111\u0001^\u0011\u001d\t\u0004\f%AA\u0002}CqA\u000e-\u0011\u0002\u0003\u0007\u0011\rC\u0004<1B\u0005\t\u0019A2\t\u000f\u0001C\u0006\u0013!a\u0001K\"9Q\u000eAI\u0001\n\u0003q\u0017AD2paf$C-\u001a4bk2$H%M\u000b\u0007_j\\H0 @\u0016\u0003AT#AD9,\u0003I\u0004\"a\u001d=\u000e\u0003QT!!\u001e<\u0002\u0013Ut7\r[3dW\u0016$'BA<\u0003\u0003)\tgN\\8uCRLwN\\\u0005\u0003sR\u0014\u0011#\u001e8dQ\u0016\u001c7.\u001a3WCJL\u0017M\\2f\t\u0015\tBN1\u0001\u0013\t\u0015YBN1\u0001\u0013\t\u0015qBN1\u0001\u0013\t\u0015\tCN1\u0001\u0013\t\u0015!CN1\u0001\u0013\u0011%\t\t\u0001AI\u0001\n\u0003\t\u0019!\u0001\bd_BLH\u0005Z3gCVdG\u000f\n\u001a\u0016\u0019\u0005\u0015\u0011\u0011BA\u0006\u0003\u001b\ty!!\u0005\u0016\u0005\u0005\u001d!FA\rr\t\u0015\trP1\u0001\u0013\t\u0015YrP1\u0001\u0013\t\u0015qrP1\u0001\u0013\t\u0015\tsP1\u0001\u0013\t\u0015!sP1\u0001\u0013\u0011%\t)\u0002AI\u0001\n\u0003\t9\"\u0001\bd_BLH\u0005Z3gCVdG\u000fJ\u001a\u0016\u0019\u0005e\u0011QDA\u0010\u0003C\t\u0019#!\n\u0016\u0005\u0005m!F\u0001\u000fr\t\u0019\t\u00121\u0003b\u0001%\u001111$a\u0005C\u0002I!aAHA\n\u0005\u0004\u0011BAB\u0011\u0002\u0014\t\u0007!\u0003\u0002\u0004%\u0003'\u0011\rA\u0005\u0005\n\u0003S\u0001\u0011\u0013!C\u0001\u0003W\tabY8qs\u0012\"WMZ1vYR$C'\u0006\u0007\u0002.\u0005E\u00121GA\u001b\u0003o\tI$\u0006\u0002\u00020)\u0012q$\u001d\u0003\u0007#\u0005\u001d\"\u0019\u0001\n\u0005\rm\t9C1\u0001\u0013\t\u0019q\u0012q\u0005b\u0001%\u00111\u0011%a\nC\u0002I!a\u0001JA\u0014\u0005\u0004\u0011\u0002\"CA\u001f\u0001E\u0005I\u0011AA \u00039\u0019w\u000e]=%I\u00164\u0017-\u001e7uIU*B\"!\u0011\u0002F\u0005\u001d\u0013\u0011JA&\u0003\u001b*\"!a\u0011+\u0005\t\nHAB\t\u0002<\t\u0007!\u0003\u0002\u0004\u001c\u0003w\u0011\rA\u0005\u0003\u0007=\u0005m\"\u0019\u0001\n\u0005\r\u0005\nYD1\u0001\u0013\t\u0019!\u00131\bb\u0001%!I\u0011\u0011\u000b\u0001\u0002\u0002\u0013\u0005\u00131K\u0001\u000eaJ|G-^2u!J,g-\u001b=\u0016\u0003AC\u0011\"a\u0016\u0001\u0003\u0003%\t%!\u0017\u0002\u001fA\u0014x\u000eZ;di&#XM]1u_J,\"!a\u0017\u0011\u000b\u0005u\u00131\r\f\u000e\u0005\u0005}#bAA1\u0005\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\n\t\u0005\u0015\u0014q\f\u0002\t\u0013R,'/\u0019;pe\"I\u0011\u0011\u000e\u0001\u0002\u0002\u0013\u0005\u00111N\u0001\tG\u0006tW)];bYR!\u0011QNA:!\rA\u0011qN\u0005\u0004\u0003c\u0012!a\u0002\"p_2,\u0017M\u001c\u0005\n\u0003k\n9'!AA\u0002Y\t1\u0001\u001f\u00132\u0011%\tI\bAA\u0001\n\u0003\nY(\u0001\u0005iCND7i\u001c3f)\t\ti\bE\u0002\t\u0003\u007fJ1!!!\u0003\u0005\rIe\u000e\u001e\u0005\n\u0003\u000b\u0003\u0011\u0011!C!\u0003\u000f\u000ba!Z9vC2\u001cH\u0003BA7\u0003\u0013C\u0011\"!\u001e\u0002\u0004\u0006\u0005\t\u0019\u0001\f)\u000f\u0001\ti)a%\u0002\u0018B\u0019\u0001\"a$\n\u0007\u0005E%AA\u000beKB\u0014XmY1uK\u0012Le\u000e[3sSR\fgnY3\"\u0005\u0005U\u0015A\f+va2,7\u000fI<jY2\u0004#-\u001a\u0011nC\u0012,\u0007EZ5oC2\u0004\u0013N\u001c\u0011bA\u0019,H/\u001e:fAY,'o]5p]:\n#!!'\u0002\rIr\u0013'\r\u00181\u000f%\tiJAA\u0001\u0012\u0003\ty*\u0001\u0004UkBdW-\u000e\t\u0004\u0011\u0005\u0005f\u0001C\u0001\u0003\u0003\u0003E\t!a)\u0014\t\u0005\u0005v\u0001\u000b\u0005\b\u000b\u0006\u0005F\u0011AAT)\t\ty\n\u0003\u0005O\u0003C\u000b\t\u0011\"\u0012P\u0011)\ti+!)\u0002\u0002\u0013\u0005\u0015qV\u0001\u0006CB\u0004H._\u000b\r\u0003c\u000b9,a/\u0002@\u0006\r\u0017q\u0019\u000b\r\u0003g\u000bI-a3\u0002N\u0006=\u0017\u0011\u001b\t\r\u0011\u0001\t),!/\u0002>\u0006\u0005\u0017Q\u0019\t\u0004\u001f\u0005]FAB\t\u0002,\n\u0007!\u0003E\u0002\u0010\u0003w#aaGAV\u0005\u0004\u0011\u0002cA\b\u0002@\u00121a$a+C\u0002I\u00012aDAb\t\u0019\t\u00131\u0016b\u0001%A\u0019q\"a2\u0005\r\u0011\nYK1\u0001\u0013\u0011\u001da\u00131\u0016a\u0001\u0003kCq!MAV\u0001\u0004\tI\fC\u00047\u0003W\u0003\r!!0\t\u000fm\nY\u000b1\u0001\u0002B\"9\u0001)a+A\u0002\u0005\u0015\u0007BCAk\u0003C\u000b\t\u0011\"!\u0002X\u00069QO\\1qa2LX\u0003DAm\u0003K\fI/!<\u0002r\u0006UH\u0003BAn\u0003o\u0004R\u0001CAo\u0003CL1!a8\u0003\u0005\u0019y\u0005\u000f^5p]Ba\u0001\u0002AAr\u0003O\fY/a<\u0002tB\u0019q\"!:\u0005\rE\t\u0019N1\u0001\u0013!\ry\u0011\u0011\u001e\u0003\u00077\u0005M'\u0019\u0001\n\u0011\u0007=\ti\u000f\u0002\u0004\u001f\u0003'\u0014\rA\u0005\t\u0004\u001f\u0005EHAB\u0011\u0002T\n\u0007!\u0003E\u0002\u0010\u0003k$a\u0001JAj\u0005\u0004\u0011\u0002BCA}\u0003'\f\t\u00111\u0001\u0002b\u0006\u0019\u0001\u0010\n\u0019\t\u0015\u0005u\u0018\u0011UA\u0001\n\u0013\ty0A\u0006sK\u0006$'+Z:pYZ,GC\u0001B\u0001!\r\t&1A\u0005\u0004\u0005\u000b\u0011&AB(cU\u0016\u001cG\u000f")
/* loaded from: classes3-dex2jar.jar:scala/Tuple5.class */
public class Tuple5<T1, T2, T3, T4, T5> implements Product5<T1, T2, T3, T4, T5>, Serializable {

    /* renamed from: _1 */
    private final T1 f1474_1;

    /* renamed from: _2 */
    private final T2 f1475_2;

    /* renamed from: _3 */
    private final T3 f1476_3;

    /* renamed from: _4 */
    private final T4 f1477_4;

    /* renamed from: _5 */
    private final T5 f1478_5;

    public Tuple5(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5) {
        this.f1474_1 = t1;
        this.f1475_2 = t2;
        this.f1476_3 = t3;
        this.f1477_4 = t4;
        this.f1478_5 = t5;
        Product.Cclass.$init$(this);
        Product5.Cclass.$init$(this);
    }

    public static <T1, T2, T3, T4, T5> Tuple5<T1, T2, T3, T4, T5> apply(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5) {
        return Tuple5$.MODULE$.apply(t1, t2, t3, t4, t5);
    }

    public static <T1, T2, T3, T4, T5> Option<Tuple5<T1, T2, T3, T4, T5>> unapply(Tuple5<T1, T2, T3, T4, T5> tuple5) {
        return Tuple5$.MODULE$.unapply(tuple5);
    }

    @Override // scala.Product5
    /* renamed from: _1 */
    public T1 mo233_1() {
        return this.f1474_1;
    }

    @Override // scala.Product5
    /* renamed from: _2 */
    public T2 mo232_2() {
        return this.f1475_2;
    }

    @Override // scala.Product5
    /* renamed from: _3 */
    public T3 mo231_3() {
        return this.f1476_3;
    }

    @Override // scala.Product5
    /* renamed from: _4 */
    public T4 mo230_4() {
        return this.f1477_4;
    }

    @Override // scala.Product5
    /* renamed from: _5 */
    public T5 mo229_5() {
        return this.f1478_5;
    }

    @Override // scala.Equals
    public boolean canEqual(Object obj) {
        return obj instanceof Tuple5;
    }

    public <T1, T2, T3, T4, T5> Tuple5<T1, T2, T3, T4, T5> copy(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5) {
        return new Tuple5<>(t1, t2, t3, t4, t5);
    }

    public <T1, T2, T3, T4, T5> T1 copy$default$1() {
        return mo233_1();
    }

    public <T1, T2, T3, T4, T5> T2 copy$default$2() {
        return mo232_2();
    }

    public <T1, T2, T3, T4, T5> T3 copy$default$3() {
        return mo231_3();
    }

    public <T1, T2, T3, T4, T5> T4 copy$default$4() {
        return mo230_4();
    }

    public <T1, T2, T3, T4, T5> T5 copy$default$5() {
        return mo229_5();
    }

    /* JADX WARN: Code restructure failed: missing block: B:86:0x01ec, code lost:
        if (r9 == false) goto L88;
     */
    @Override // scala.Equals
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            Method dump skipped, instructions count: 499
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.Tuple5.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        return ScalaRunTime$.MODULE$._hashCode(this);
    }

    @Override // scala.Product5, scala.Product
    public int productArity() {
        return Product5.Cclass.productArity(this);
    }

    @Override // scala.Product5, scala.Product
    public Object productElement(int i) throws IndexOutOfBoundsException {
        return Product5.Cclass.productElement(this, i);
    }

    @Override // scala.Product
    public Iterator<Object> productIterator() {
        return ScalaRunTime$.MODULE$.typedProductIterator(this);
    }

    @Override // scala.Product
    public String productPrefix() {
        return "Tuple5";
    }

    public String toString() {
        return new StringBuilder().append((Object) "(").append(mo233_1()).append((Object) ",").append(mo232_2()).append((Object) ",").append(mo231_3()).append((Object) ",").append(mo230_4()).append((Object) ",").append(mo229_5()).append((Object) ")").toString();
    }
}
