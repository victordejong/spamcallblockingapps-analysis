package scala;

import scala.Product;
import scala.Product3;
import scala.collection.Iterator;
import scala.collection.mutable.StringBuilder;
import scala.reflect.ScalaSignature;
import scala.runtime.ScalaRunTime$;
@ScalaSignature(bytes = "\u0006\u0001\u0005=e\u0001B\u0001\u0003\u0001\u0016\u0011a\u0001V;qY\u0016\u001c$\"A\u0002\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U!a\u0001\u0005\u000e\u001e'\u0015\u0001qaC\u0010#!\tA\u0011\"D\u0001\u0003\u0013\tQ!A\u0001\u0004B]f\u0014VM\u001a\t\u0006\u00111q\u0011\u0004H\u0005\u0003\u001b\t\u0011\u0001\u0002\u0015:pIV\u001cGo\r\t\u0003\u001fAa\u0001\u0001\u0002\u0004\u0012\u0001\u0011\u0015\rA\u0005\u0002\u0003)F\n\"a\u0005\f\u0011\u0005!!\u0012BA\u000b\u0003\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"\u0001C\f\n\u0005a\u0011!aA!osB\u0011qB\u0007\u0003\u00077\u0001!)\u0019\u0001\n\u0003\u0005Q\u0013\u0004CA\b\u001e\t\u0019q\u0002\u0001\"b\u0001%\t\u0011Ak\r\t\u0003\u0011\u0001J!!\t\u0002\u0003\u000fA\u0013x\u000eZ;diB\u0011\u0001bI\u0005\u0003I\t\u0011AbU3sS\u0006d\u0017N_1cY\u0016D\u0001B\n\u0001\u0003\u0016\u0004%\taJ\u0001\u0003?F*\u0012A\u0004\u0005\tS\u0001\u0011\t\u0012)A\u0005\u001d\u0005\u0019q,\r\u0011\t\u0011-\u0002!Q3A\u0005\u00021\n!a\u0018\u001a\u0016\u0003eA\u0001B\f\u0001\u0003\u0012\u0003\u0006I!G\u0001\u0004?J\u0002\u0003\u0002\u0003\u0019\u0001\u0005+\u0007I\u0011A\u0019\u0002\u0005}\u001bT#\u0001\u000f\t\u0011M\u0002!\u0011#Q\u0001\nq\t1aX\u001a!\u0011\u0015)\u0004\u0001\"\u00017\u0003\u0019a\u0014N\\5u}Q!q\u0007O\u001d;!\u0015A\u0001AD\r\u001d\u0011\u00151C\u00071\u0001\u000f\u0011\u0015YC\u00071\u0001\u001a\u0011\u0015\u0001D\u00071\u0001\u001d\u0011\u0015a\u0004\u0001\"\u0011>\u0003!!xn\u0015;sS:<G#\u0001 \u0011\u0005}\"U\"\u0001!\u000b\u0005\u0005\u0013\u0015\u0001\u00027b]\u001eT\u0011aQ\u0001\u0005U\u00064\u0018-\u0003\u0002F\u0001\n11\u000b\u001e:j]\u001eDqa\u0012\u0001\u0002\u0002\u0013\u0005\u0001*\u0001\u0003d_BLX\u0003B%M\u001dB#BAS)S'B)\u0001\u0002A&N\u001fB\u0011q\u0002\u0014\u0003\u0006#\u0019\u0013\rA\u0005\t\u0003\u001f9#Qa\u0007$C\u0002I\u0001\"a\u0004)\u0005\u000by1%\u0019\u0001\n\t\u000f\u00192\u0005\u0013!a\u0001\u0017\"91F\u0012I\u0001\u0002\u0004i\u0005b\u0002\u0019G!\u0003\u0005\ra\u0014\u0005\b+\u0002\t\n\u0011\"\u0001W\u00039\u0019w\u000e]=%I\u00164\u0017-\u001e7uIE*Ba\u00162dIV\t\u0001L\u000b\u0002\u000f3.\n!\f\u0005\u0002\\A6\tAL\u0003\u0002^=\u0006IQO\\2iK\u000e\\W\r\u001a\u0006\u0003?\n\t!\"\u00198o_R\fG/[8o\u0013\t\tGLA\tv]\u000eDWmY6fIZ\u000b'/[1oG\u0016$Q!\u0005+C\u0002I!Qa\u0007+C\u0002I!QA\b+C\u0002IAqA\u001a\u0001\u0012\u0002\u0013\u0005q-\u0001\bd_BLH\u0005Z3gCVdG\u000f\n\u001a\u0016\t!T7\u000e\\\u000b\u0002S*\u0012\u0011$\u0017\u0003\u0006#\u0015\u0014\rA\u0005\u0003\u00067\u0015\u0014\rA\u0005\u0003\u0006=\u0015\u0014\rA\u0005\u0005\b]\u0002\t\n\u0011\"\u0001p\u00039\u0019w\u000e]=%I\u00164\u0017-\u001e7uIM*B\u0001\u001d:tiV\t\u0011O\u000b\u0002\u001d3\u0012)\u0011#\u001cb\u0001%\u0011)1$\u001cb\u0001%\u0011)a$\u001cb\u0001%!9a\u000fAA\u0001\n\u0003:\u0018!\u00049s_\u0012,8\r\u001e)sK\u001aL\u00070F\u0001?\u0011\u001dI\b!!A\u0005Bi\fq\u0002\u001d:pIV\u001cG/\u0013;fe\u0006$xN]\u000b\u0002wB\u0019Ap \f\u000e\u0003uT!A \u0002\u0002\u0015\r|G\u000e\\3di&|g.C\u0002\u0002\u0002u\u0014\u0001\"\u0013;fe\u0006$xN\u001d\u0005\n\u0003\u000b\u0001\u0011\u0011!C\u0001\u0003\u000f\t\u0001bY1o\u000bF,\u0018\r\u001c\u000b\u0005\u0003\u0013\ty\u0001E\u0002\t\u0003\u0017I1!!\u0004\u0003\u0005\u001d\u0011un\u001c7fC:D\u0011\"!\u0005\u0002\u0004\u0005\u0005\t\u0019\u0001\f\u0002\u0007a$\u0013\u0007C\u0005\u0002\u0016\u0001\t\t\u0011\"\u0011\u0002\u0018\u0005A\u0001.Y:i\u0007>$W\r\u0006\u0002\u0002\u001aA\u0019\u0001\"a\u0007\n\u0007\u0005u!AA\u0002J]RD\u0011\"!\t\u0001\u0003\u0003%\t%a\t\u0002\r\u0015\fX/\u00197t)\u0011\tI!!\n\t\u0013\u0005E\u0011qDA\u0001\u0002\u00041\u0002f\u0002\u0001\u0002*\u0005=\u00121\u0007\t\u0004\u0011\u0005-\u0012bAA\u0017\u0005\t)B-\u001a9sK\u000e\fG/\u001a3J]\",'/\u001b;b]\u000e,\u0017EAA\u0019\u00039\"V\u000f\u001d7fg\u0002:\u0018\u000e\u001c7!E\u0016\u0004S.\u00193fA\u0019Lg.\u00197!S:\u0004\u0013\r\t4viV\u0014X\r\t<feNLwN\u001c\u0018\"\u0005\u0005U\u0012A\u0002\u001a/cEr\u0003gB\u0005\u0002:\t\t\t\u0011#\u0001\u0002<\u00051A+\u001e9mKN\u00022\u0001CA\u001f\r!\t!!!A\t\u0002\u0005}2\u0003BA\u001f\u000f\tBq!NA\u001f\t\u0003\t\u0019\u0005\u0006\u0002\u0002<!AA(!\u0010\u0002\u0002\u0013\u0015S\b\u0003\u0006\u0002J\u0005u\u0012\u0011!CA\u0003\u0017\nQ!\u00199qYf,\u0002\"!\u0014\u0002T\u0005]\u00131\f\u000b\t\u0003\u001f\ni&a\u0018\u0002bAA\u0001\u0002AA)\u0003+\nI\u0006E\u0002\u0010\u0003'\"a!EA$\u0005\u0004\u0011\u0002cA\b\u0002X\u001111$a\u0012C\u0002I\u00012aDA.\t\u0019q\u0012q\tb\u0001%!9a%a\u0012A\u0002\u0005E\u0003bB\u0016\u0002H\u0001\u0007\u0011Q\u000b\u0005\ba\u0005\u001d\u0003\u0019AA-\u0011)\t)'!\u0010\u0002\u0002\u0013\u0005\u0015qM\u0001\bk:\f\u0007\u000f\u001d7z+!\tI'!\u001e\u0002z\u0005uD\u0003BA6\u0003\u007f\u0002R\u0001CA7\u0003cJ1!a\u001c\u0003\u0005\u0019y\u0005\u000f^5p]BA\u0001\u0002AA:\u0003o\nY\bE\u0002\u0010\u0003k\"a!EA2\u0005\u0004\u0011\u0002cA\b\u0002z\u001111$a\u0019C\u0002I\u00012aDA?\t\u0019q\u00121\rb\u0001%!Q\u0011\u0011QA2\u0003\u0003\u0005\r!!\u001d\u0002\u0007a$\u0003\u0007\u0003\u0006\u0002\u0006\u0006u\u0012\u0011!C\u0005\u0003\u000f\u000b1B]3bIJ+7o\u001c7wKR\u0011\u0011\u0011\u0012\t\u0004\u007f\u0005-\u0015bAAG\u0001\n1qJ\u00196fGR\u0004")
/* loaded from: classes3-dex2jar.jar:scala/Tuple3.class */
public class Tuple3<T1, T2, T3> implements Product3<T1, T2, T3>, Serializable {

    /* renamed from: _1 */
    private final T1 f1467_1;

    /* renamed from: _2 */
    private final T2 f1468_2;

    /* renamed from: _3 */
    private final T3 f1469_3;

    public Tuple3(T1 t1, T2 t2, T3 t3) {
        this.f1467_1 = t1;
        this.f1468_2 = t2;
        this.f1469_3 = t3;
        Product.Cclass.$init$(this);
        Product3.Cclass.$init$(this);
    }

    public static <T1, T2, T3> Tuple3<T1, T2, T3> apply(T1 t1, T2 t2, T3 t3) {
        return Tuple3$.MODULE$.apply(t1, t2, t3);
    }

    public static <T1, T2, T3> Option<Tuple3<T1, T2, T3>> unapply(Tuple3<T1, T2, T3> tuple3) {
        return Tuple3$.MODULE$.unapply(tuple3);
    }

    @Override // scala.Product3
    /* renamed from: _1 */
    public T1 mo240_1() {
        return this.f1467_1;
    }

    @Override // scala.Product3
    /* renamed from: _2 */
    public T2 mo239_2() {
        return this.f1468_2;
    }

    @Override // scala.Product3
    /* renamed from: _3 */
    public T3 mo238_3() {
        return this.f1469_3;
    }

    @Override // scala.Equals
    public boolean canEqual(Object obj) {
        return obj instanceof Tuple3;
    }

    public <T1, T2, T3> Tuple3<T1, T2, T3> copy(T1 t1, T2 t2, T3 t3) {
        return new Tuple3<>(t1, t2, t3);
    }

    public <T1, T2, T3> T1 copy$default$1() {
        return mo240_1();
    }

    public <T1, T2, T3> T2 copy$default$2() {
        return mo239_2();
    }

    public <T1, T2, T3> T3 copy$default$3() {
        return mo238_3();
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x0138, code lost:
        if (r9 == false) goto L58;
     */
    @Override // scala.Equals
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            Method dump skipped, instructions count: 319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.Tuple3.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        return ScalaRunTime$.MODULE$._hashCode(this);
    }

    @Override // scala.Product3, scala.Product
    public int productArity() {
        return Product3.Cclass.productArity(this);
    }

    @Override // scala.Product3, scala.Product
    public Object productElement(int i) throws IndexOutOfBoundsException {
        return Product3.Cclass.productElement(this, i);
    }

    @Override // scala.Product
    public Iterator<Object> productIterator() {
        return ScalaRunTime$.MODULE$.typedProductIterator(this);
    }

    @Override // scala.Product
    public String productPrefix() {
        return "Tuple3";
    }

    public String toString() {
        return new StringBuilder().append((Object) "(").append(mo240_1()).append((Object) ",").append(mo239_2()).append((Object) ",").append(mo238_3()).append((Object) ")").toString();
    }
}
