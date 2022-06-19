package scala;

import scala.Product;
import scala.Product6;
import scala.collection.Iterator;
import scala.collection.mutable.StringBuilder;
import scala.reflect.ScalaSignature;
import scala.runtime.ScalaRunTime$;
@ScalaSignature(bytes = "\u0006\u0001\t%c\u0001B\u0001\u0003\u0001\u0016\u0011a\u0001V;qY\u00164$\"A\u0002\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U9a\u0001\u0005\u000e\u001eA\r23#\u0002\u0001\b\u0017!Z\u0003C\u0001\u0005\n\u001b\u0005\u0011\u0011B\u0001\u0006\u0003\u0005\u0019\te.\u001f*fMBA\u0001\u0002\u0004\b\u001a9}\u0011S%\u0003\u0002\u000e\u0005\tA\u0001K]8ek\u000e$h\u0007\u0005\u0002\u0010!1\u0001AAB\t\u0001\t\u000b\u0007!C\u0001\u0002UcE\u00111C\u0006\t\u0003\u0011QI!!\u0006\u0002\u0003\u000f9{G\u000f[5oOB\u0011\u0001bF\u0005\u00031\t\u00111!\u00118z!\ty!\u0004\u0002\u0004\u001c\u0001\u0011\u0015\rA\u0005\u0002\u0003)J\u0002\"aD\u000f\u0005\ry\u0001AQ1\u0001\u0013\u0005\t!6\u0007\u0005\u0002\u0010A\u00111\u0011\u0005\u0001CC\u0002I\u0011!\u0001\u0016\u001b\u0011\u0005=\u0019CA\u0002\u0013\u0001\t\u000b\u0007!C\u0001\u0002UkA\u0011qB\n\u0003\u0007O\u0001!)\u0019\u0001\n\u0003\u0005Q3\u0004C\u0001\u0005*\u0013\tQ#AA\u0004Qe>$Wo\u0019;\u0011\u0005!a\u0013BA\u0017\u0003\u00051\u0019VM]5bY&T\u0018M\u00197f\u0011!y\u0003A!f\u0001\n\u0003\u0001\u0014AA02+\u0005q\u0001\u0002\u0003\u001a\u0001\u0005#\u0005\u000b\u0011\u0002\b\u0002\u0007}\u000b\u0004\u0005\u0003\u00055\u0001\tU\r\u0011\"\u00016\u0003\ty&'F\u0001\u001a\u0011!9\u0004A!E!\u0002\u0013I\u0012aA03A!A\u0011\b\u0001BK\u0002\u0013\u0005!(\u0001\u0002`gU\tA\u0004\u0003\u0005=\u0001\tE\t\u0015!\u0003\u001d\u0003\ry6\u0007\t\u0005\t}\u0001\u0011)\u001a!C\u0001\u007f\u0005\u0011q\fN\u000b\u0002?!A\u0011\t\u0001B\tB\u0003%q$A\u0002`i\u0001B\u0001b\u0011\u0001\u0003\u0016\u0004%\t\u0001R\u0001\u0003?V*\u0012A\t\u0005\t\r\u0002\u0011\t\u0012)A\u0005E\u0005\u0019q,\u000e\u0011\t\u0011!\u0003!Q3A\u0005\u0002%\u000b!a\u0018\u001c\u0016\u0003\u0015B\u0001b\u0013\u0001\u0003\u0012\u0003\u0006I!J\u0001\u0004?Z\u0002\u0003\"B'\u0001\t\u0003q\u0015A\u0002\u001fj]&$h\bF\u0004P!F\u00136\u000bV+\u0011\u0011!\u0001a\"\u0007\u000f E\u0015BQa\f'A\u00029AQ\u0001\u000e'A\u0002eAQ!\u000f'A\u0002qAQA\u0010'A\u0002}AQa\u0011'A\u0002\tBQ\u0001\u0013'A\u0002\u0015BQa\u0016\u0001\u0005Ba\u000b\u0001\u0002^8TiJLgn\u001a\u000b\u00023B\u0011!lX\u0007\u00027*\u0011A,X\u0001\u0005Y\u0006twMC\u0001_\u0003\u0011Q\u0017M^1\n\u0005\u0001\\&AB*ue&tw\rC\u0004c\u0001\u0005\u0005I\u0011A2\u0002\t\r|\u0007/_\u000b\bI\u001eL7.\\8r)\u001d)'o\u001d;vm^\u0004\u0002\u0002\u0003\u0001gQ*dg\u000e\u001d\t\u0003\u001f\u001d$Q!E1C\u0002I\u0001\"aD5\u0005\u000bm\t'\u0019\u0001\n\u0011\u0005=YG!\u0002\u0010b\u0005\u0004\u0011\u0002CA\bn\t\u0015\t\u0013M1\u0001\u0013!\tyq\u000eB\u0003%C\n\u0007!\u0003\u0005\u0002\u0010c\u0012)q%\u0019b\u0001%!9q&\u0019I\u0001\u0002\u00041\u0007b\u0002\u001bb!\u0003\u0005\r\u0001\u001b\u0005\bs\u0005\u0004\n\u00111\u0001k\u0011\u001dq\u0014\r%AA\u00021DqaQ1\u0011\u0002\u0003\u0007a\u000eC\u0004ICB\u0005\t\u0019\u00019\t\u000fe\u0004\u0011\u0013!C\u0001u\u0006q1m\u001c9zI\u0011,g-Y;mi\u0012\nT#D>\u0002\u000e\u0005=\u0011\u0011CA\n\u0003+\t9\"F\u0001}U\tqQpK\u0001\u007f!\ry\u0018\u0011B\u0007\u0003\u0003\u0003QA!a\u0001\u0002\u0006\u0005IQO\\2iK\u000e\\W\r\u001a\u0006\u0004\u0003\u000f\u0011\u0011AC1o]>$\u0018\r^5p]&!\u00111BA\u0001\u0005E)hn\u00195fG.,GMV1sS\u0006t7-\u001a\u0003\u0006#a\u0014\rA\u0005\u0003\u00067a\u0014\rA\u0005\u0003\u0006=a\u0014\rA\u0005\u0003\u0006Ca\u0014\rA\u0005\u0003\u0006Ia\u0014\rA\u0005\u0003\u0006Oa\u0014\rA\u0005\u0005\n\u00037\u0001\u0011\u0013!C\u0001\u0003;\tabY8qs\u0012\"WMZ1vYR$#'\u0006\b\u0002 \u0005\r\u0012QEA\u0014\u0003S\tY#!\f\u0016\u0005\u0005\u0005\"FA\r~\t\u0019\t\u0012\u0011\u0004b\u0001%\u001111$!\u0007C\u0002I!aAHA\r\u0005\u0004\u0011BAB\u0011\u0002\u001a\t\u0007!\u0003\u0002\u0004%\u00033\u0011\rA\u0005\u0003\u0007O\u0005e!\u0019\u0001\n\t\u0013\u0005E\u0002!%A\u0005\u0002\u0005M\u0012AD2paf$C-\u001a4bk2$HeM\u000b\u000f\u0003k\tI$a\u000f\u0002>\u0005}\u0012\u0011IA\"+\t\t9D\u000b\u0002\u001d{\u00121\u0011#a\fC\u0002I!aaGA\u0018\u0005\u0004\u0011BA\u0002\u0010\u00020\t\u0007!\u0003\u0002\u0004\"\u0003_\u0011\rA\u0005\u0003\u0007I\u0005=\"\u0019\u0001\n\u0005\r\u001d\nyC1\u0001\u0013\u0011%\t9\u0005AI\u0001\n\u0003\tI%\u0001\bd_BLH\u0005Z3gCVdG\u000f\n\u001b\u0016\u001d\u0005-\u0013qJA)\u0003'\n)&a\u0016\u0002ZU\u0011\u0011Q\n\u0016\u0003?u$a!EA#\u0005\u0004\u0011BAB\u000e\u0002F\t\u0007!\u0003\u0002\u0004\u001f\u0003\u000b\u0012\rA\u0005\u0003\u0007C\u0005\u0015#\u0019\u0001\n\u0005\r\u0011\n)E1\u0001\u0013\t\u00199\u0013Q\tb\u0001%!I\u0011Q\f\u0001\u0012\u0002\u0013\u0005\u0011qL\u0001\u000fG>\u0004\u0018\u0010\n3fM\u0006,H\u000e\u001e\u00136+9\t\t'!\u001a\u0002h\u0005%\u00141NA7\u0003_*\"!a\u0019+\u0005\tjHAB\t\u0002\\\t\u0007!\u0003\u0002\u0004\u001c\u00037\u0012\rA\u0005\u0003\u0007=\u0005m#\u0019\u0001\n\u0005\r\u0005\nYF1\u0001\u0013\t\u0019!\u00131\fb\u0001%\u00111q%a\u0017C\u0002IA\u0011\"a\u001d\u0001#\u0003%\t!!\u001e\u0002\u001d\r|\u0007/\u001f\u0013eK\u001a\fW\u000f\u001c;%mUq\u0011qOA>\u0003{\ny(!!\u0002\u0004\u0006\u0015UCAA=U\t)S\u0010\u0002\u0004\u0012\u0003c\u0012\rA\u0005\u0003\u00077\u0005E$\u0019\u0001\n\u0005\ry\t\tH1\u0001\u0013\t\u0019\t\u0013\u0011\u000fb\u0001%\u00111A%!\u001dC\u0002I!aaJA9\u0005\u0004\u0011\u0002\"CAE\u0001\u0005\u0005I\u0011IAF\u00035\u0001(o\u001c3vGR\u0004&/\u001a4jqV\t\u0011\fC\u0005\u0002\u0010\u0002\t\t\u0011\"\u0011\u0002\u0012\u0006y\u0001O]8ek\u000e$\u0018\n^3sCR|'/\u0006\u0002\u0002\u0014B)\u0011QSAN-5\u0011\u0011q\u0013\u0006\u0004\u00033\u0013\u0011AC2pY2,7\r^5p]&!\u0011QTAL\u0005!IE/\u001a:bi>\u0014\b\"CAQ\u0001\u0005\u0005I\u0011AAR\u0003!\u0019\u0017M\\#rk\u0006dG\u0003BAS\u0003W\u00032\u0001CAT\u0013\r\tIK\u0001\u0002\b\u0005>|G.Z1o\u0011%\ti+a(\u0002\u0002\u0003\u0007a#A\u0002yIEB\u0011\"!-\u0001\u0003\u0003%\t%a-\u0002\u0011!\f7\u000f[\"pI\u0016$\"!!.\u0011\u0007!\t9,C\u0002\u0002:\n\u00111!\u00138u\u0011%\ti\fAA\u0001\n\u0003\ny,\u0001\u0004fcV\fGn\u001d\u000b\u0005\u0003K\u000b\t\rC\u0005\u0002.\u0006m\u0016\u0011!a\u0001-!:\u0001!!2\u0002L\u0006=\u0007c\u0001\u0005\u0002H&\u0019\u0011\u0011\u001a\u0002\u0003+\u0011,\u0007O]3dCR,G-\u00138iKJLG/\u00198dK\u0006\u0012\u0011QZ\u0001/)V\u0004H.Z:!o&dG\u000e\t2fA5\fG-\u001a\u0011gS:\fG\u000eI5oA\u0005\u0004c-\u001e;ve\u0016\u0004c/\u001a:tS>tg&\t\u0002\u0002R\u00061!GL\u00192]A:\u0011\"!6\u0003\u0003\u0003E\t!a6\u0002\rQ+\b\u000f\\37!\rA\u0011\u0011\u001c\u0004\t\u0003\t\t\t\u0011#\u0001\u0002\\N!\u0011\u0011\\\u0004,\u0011\u001di\u0015\u0011\u001cC\u0001\u0003?$\"!a6\t\u0011]\u000bI.!A\u0005FaC!\"!:\u0002Z\u0006\u0005I\u0011QAt\u0003\u0015\t\u0007\u000f\u001d7z+9\tI/a<\u0002t\u0006]\u00181`A��\u0005\u0007!b\"a;\u0003\u0006\t\u001d!\u0011\u0002B\u0006\u0005\u001b\u0011y\u0001\u0005\b\t\u0001\u00055\u0018\u0011_A{\u0003s\fiP!\u0001\u0011\u0007=\ty\u000f\u0002\u0004\u0012\u0003G\u0014\rA\u0005\t\u0004\u001f\u0005MHAB\u000e\u0002d\n\u0007!\u0003E\u0002\u0010\u0003o$aAHAr\u0005\u0004\u0011\u0002cA\b\u0002|\u00121\u0011%a9C\u0002I\u00012aDA��\t\u0019!\u00131\u001db\u0001%A\u0019qBa\u0001\u0005\r\u001d\n\u0019O1\u0001\u0013\u0011\u001dy\u00131\u001da\u0001\u0003[Dq\u0001NAr\u0001\u0004\t\t\u0010C\u0004:\u0003G\u0004\r!!>\t\u000fy\n\u0019\u000f1\u0001\u0002z\"91)a9A\u0002\u0005u\bb\u0002%\u0002d\u0002\u0007!\u0011\u0001\u0005\u000b\u0005'\tI.!A\u0005\u0002\nU\u0011aB;oCB\u0004H._\u000b\u000f\u0005/\u0011\u0019Ca\n\u0003,\t=\"1\u0007B\u001c)\u0011\u0011IB!\u000f\u0011\u000b!\u0011YBa\b\n\u0007\tu!A\u0001\u0004PaRLwN\u001c\t\u000f\u0011\u0001\u0011\tC!\n\u0003*\t5\"\u0011\u0007B\u001b!\ry!1\u0005\u0003\u0007#\tE!\u0019\u0001\n\u0011\u0007=\u00119\u0003\u0002\u0004\u001c\u0005#\u0011\rA\u0005\t\u0004\u001f\t-BA\u0002\u0010\u0003\u0012\t\u0007!\u0003E\u0002\u0010\u0005_!a!\tB\t\u0005\u0004\u0011\u0002cA\b\u00034\u00111AE!\u0005C\u0002I\u00012a\u0004B\u001c\t\u00199#\u0011\u0003b\u0001%!Q!1\bB\t\u0003\u0003\u0005\rAa\b\u0002\u0007a$\u0003\u0007\u0003\u0006\u0003@\u0005e\u0017\u0011!C\u0005\u0005\u0003\n1B]3bIJ+7o\u001c7wKR\u0011!1\t\t\u00045\n\u0015\u0013b\u0001B$7\n1qJ\u00196fGR\u0004")
/* loaded from: classes3-dex2jar.jar:scala/Tuple6.class */
public class Tuple6<T1, T2, T3, T4, T5, T6> implements Product6<T1, T2, T3, T4, T5, T6>, Serializable {

    /* renamed from: _1 */
    private final T1 f1479_1;

    /* renamed from: _2 */
    private final T2 f1480_2;

    /* renamed from: _3 */
    private final T3 f1481_3;

    /* renamed from: _4 */
    private final T4 f1482_4;

    /* renamed from: _5 */
    private final T5 f1483_5;

    /* renamed from: _6 */
    private final T6 f1484_6;

    public Tuple6(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6) {
        this.f1479_1 = t1;
        this.f1480_2 = t2;
        this.f1481_3 = t3;
        this.f1482_4 = t4;
        this.f1483_5 = t5;
        this.f1484_6 = t6;
        Product.Cclass.$init$(this);
        Product6.Cclass.$init$(this);
    }

    public static <T1, T2, T3, T4, T5, T6> Tuple6<T1, T2, T3, T4, T5, T6> apply(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6) {
        return Tuple6$.MODULE$.apply(t1, t2, t3, t4, t5, t6);
    }

    public static <T1, T2, T3, T4, T5, T6> Option<Tuple6<T1, T2, T3, T4, T5, T6>> unapply(Tuple6<T1, T2, T3, T4, T5, T6> tuple6) {
        return Tuple6$.MODULE$.unapply(tuple6);
    }

    @Override // scala.Product6
    /* renamed from: _1 */
    public T1 mo228_1() {
        return this.f1479_1;
    }

    @Override // scala.Product6
    /* renamed from: _2 */
    public T2 mo227_2() {
        return this.f1480_2;
    }

    @Override // scala.Product6
    /* renamed from: _3 */
    public T3 mo226_3() {
        return this.f1481_3;
    }

    @Override // scala.Product6
    /* renamed from: _4 */
    public T4 mo225_4() {
        return this.f1482_4;
    }

    @Override // scala.Product6
    /* renamed from: _5 */
    public T5 mo224_5() {
        return this.f1483_5;
    }

    @Override // scala.Product6
    /* renamed from: _6 */
    public T6 mo223_6() {
        return this.f1484_6;
    }

    @Override // scala.Equals
    public boolean canEqual(Object obj) {
        return obj instanceof Tuple6;
    }

    public <T1, T2, T3, T4, T5, T6> Tuple6<T1, T2, T3, T4, T5, T6> copy(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6) {
        return new Tuple6<>(t1, t2, t3, t4, t5, t6);
    }

    public <T1, T2, T3, T4, T5, T6> T1 copy$default$1() {
        return mo228_1();
    }

    public <T1, T2, T3, T4, T5, T6> T2 copy$default$2() {
        return mo227_2();
    }

    public <T1, T2, T3, T4, T5, T6> T3 copy$default$3() {
        return mo226_3();
    }

    public <T1, T2, T3, T4, T5, T6> T4 copy$default$4() {
        return mo225_4();
    }

    public <T1, T2, T3, T4, T5, T6> T5 copy$default$5() {
        return mo224_5();
    }

    public <T1, T2, T3, T4, T5, T6> T6 copy$default$6() {
        return mo223_6();
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x0246, code lost:
        if (r9 == false) goto L103;
     */
    @Override // scala.Equals
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            Method dump skipped, instructions count: 589
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.Tuple6.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        return ScalaRunTime$.MODULE$._hashCode(this);
    }

    @Override // scala.Product6, scala.Product
    public int productArity() {
        return Product6.Cclass.productArity(this);
    }

    @Override // scala.Product6, scala.Product
    public Object productElement(int i) throws IndexOutOfBoundsException {
        return Product6.Cclass.productElement(this, i);
    }

    @Override // scala.Product
    public Iterator<Object> productIterator() {
        return ScalaRunTime$.MODULE$.typedProductIterator(this);
    }

    @Override // scala.Product
    public String productPrefix() {
        return "Tuple6";
    }

    public String toString() {
        return new StringBuilder().append((Object) "(").append(mo228_1()).append((Object) ",").append(mo227_2()).append((Object) ",").append(mo226_3()).append((Object) ",").append(mo225_4()).append((Object) ",").append(mo224_5()).append((Object) ",").append(mo223_6()).append((Object) ")").toString();
    }
}
