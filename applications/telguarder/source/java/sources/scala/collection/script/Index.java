package scala.collection.script;

import scala.Function1;
import scala.Option;
import scala.Product;
import scala.Serializable;
import scala.collection.Iterator;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.ScalaRunTime$;
import scala.runtime.Statics;
@ScalaSignature(bytes = "\u0006\u0001\u0005Ma\u0001B\u0001\u0003\u0001&\u0011Q!\u00138eKbT!a\u0001\u0003\u0002\rM\u001c'/\u001b9u\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\fG.Y\u0002\u0001'\u0011\u0001!B\u0004\n\u0011\u0005-aQ\"\u0001\u0002\n\u00055\u0011!\u0001\u0003'pG\u0006$\u0018n\u001c8\u0011\u0005=\u0001R\"\u0001\u0004\n\u0005E1!a\u0002)s_\u0012,8\r\u001e\t\u0003\u001fMI!\u0001\u0006\u0004\u0003\u0019M+'/[1mSj\f'\r\\3\t\u0011Y\u0001!Q3A\u0005\u0002]\t\u0011A\\\u000b\u00021A\u0011q\"G\u0005\u00035\u0019\u00111!\u00138u\u0011!a\u0002A!E!\u0002\u0013A\u0012A\u00018!\u0011\u0015q\u0002\u0001\"\u0001 \u0003\u0019a\u0014N\\5u}Q\u0011\u0001%\t\t\u0003\u0017\u0001AQAF\u000fA\u0002aAqa\t\u0001\u0002\u0002\u0013\u0005A%\u0001\u0003d_BLHC\u0001\u0011&\u0011\u001d1\"\u0005%AA\u0002aAqa\n\u0001\u0012\u0002\u0013\u0005\u0001&\u0001\bd_BLH\u0005Z3gCVdG\u000fJ\u0019\u0016\u0003%R#\u0001\u0007\u0016,\u0003-\u0002\"\u0001L\u0019\u000e\u00035R!AL\u0018\u0002\u0013Ut7\r[3dW\u0016$'B\u0001\u0019\u0007\u0003)\tgN\\8uCRLwN\\\u0005\u0003e5\u0012\u0011#\u001e8dQ\u0016\u001c7.\u001a3WCJL\u0017M\\2f\u0011\u001d!\u0004!!A\u0005BU\nQ\u0002\u001d:pIV\u001cG\u000f\u0015:fM&DX#\u0001\u001c\u0011\u0005]bT\"\u0001\u001d\u000b\u0005eR\u0014\u0001\u00027b]\u001eT\u0011aO\u0001\u0005U\u00064\u0018-\u0003\u0002>q\t11\u000b\u001e:j]\u001eDqa\u0010\u0001\u0002\u0002\u0013\u0005q#\u0001\u0007qe>$Wo\u0019;Be&$\u0018\u0010C\u0004B\u0001\u0005\u0005I\u0011\u0001\"\u0002\u001dA\u0014x\u000eZ;di\u0016cW-\\3oiR\u00111I\u0012\t\u0003\u001f\u0011K!!\u0012\u0004\u0003\u0007\u0005s\u0017\u0010C\u0004H\u0001\u0006\u0005\t\u0019\u0001\r\u0002\u0007a$\u0013\u0007C\u0004J\u0001\u0005\u0005I\u0011\t&\u0002\u001fA\u0014x\u000eZ;di&#XM]1u_J,\u0012a\u0013\t\u0004\u00196\u001bU\"\u0001\u0003\n\u00059#!\u0001C%uKJ\fGo\u001c:\t\u000fA\u0003\u0011\u0011!C\u0001#\u0006A1-\u00198FcV\fG\u000e\u0006\u0002S+B\u0011qbU\u0005\u0003)\u001a\u0011qAQ8pY\u0016\fg\u000eC\u0004H\u001f\u0006\u0005\t\u0019A\"\t\u000f]\u0003\u0011\u0011!C!1\u0006A\u0001.Y:i\u0007>$W\rF\u0001\u0019\u0011\u001dQ\u0006!!A\u0005Bm\u000b\u0001\u0002^8TiJLgn\u001a\u000b\u0002m!9Q\fAA\u0001\n\u0003r\u0016AB3rk\u0006d7\u000f\u0006\u0002S?\"9q\tXA\u0001\u0002\u0004\u0019\u0005\u0006\u0002\u0001bI\u001a\u0004\"a\u00042\n\u0005\r4!A\u00033faJ,7-\u0019;fI\u0006\nQ-\u0001\rTGJL\u0007\u000f^5oO\u0002J7\u000f\t3faJ,7-\u0019;fI:\n\u0013aZ\u0001\u0007e9\n\u0014G\f\u0019\b\u000f%\u0014\u0011\u0011!E\u0001U\u0006)\u0011J\u001c3fqB\u00111b\u001b\u0004\b\u0003\t\t\t\u0011#\u0001m'\rYWN\u0005\t\u0005]FD\u0002%D\u0001p\u0015\t\u0001h!A\u0004sk:$\u0018.\\3\n\u0005I|'!E!cgR\u0014\u0018m\u0019;Gk:\u001cG/[8oc!)ad\u001bC\u0001iR\t!\u000eC\u0004[W\u0006\u0005IQI.\t\u000f]\\\u0017\u0011!CAq\u0006)\u0011\r\u001d9msR\u0011\u0001%\u001f\u0005\u0006-Y\u0004\r\u0001\u0007\u0005\bw.\f\t\u0011\"!}\u0003\u001d)h.\u00199qYf$2!`A\u0001!\rya\u0010G\u0005\u0003\u007f\u001a\u0011aa\u00149uS>t\u0007\u0002CA\u0002u\u0006\u0005\t\u0019\u0001\u0011\u0002\u0007a$\u0003\u0007C\u0005\u0002\b-\f\t\u0011\"\u0003\u0002\n\u0005Y!/Z1e%\u0016\u001cx\u000e\u001c<f)\t\tY\u0001E\u00028\u0003\u001bI1!a\u00049\u0005\u0019y%M[3di\"\"1.\u00193g\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/script/Index.class */
public class Index extends Location implements Product, Serializable {

    /* renamed from: n */
    private final int f1613n;

    public Index(int i) {
        this.f1613n = i;
        Product.Cclass.$init$(this);
    }

    public static <A> Function1<Object, A> andThen(Function1<Index, A> function1) {
        return Index$.MODULE$.andThen(function1);
    }

    public static Index apply(int i) {
        return Index$.MODULE$.apply(i);
    }

    public static <A> Function1<A, Index> compose(Function1<A, Object> function1) {
        return Index$.MODULE$.compose(function1);
    }

    public static Option<Object> unapply(Index index) {
        return Index$.MODULE$.unapply(index);
    }

    @Override // scala.Equals
    public boolean canEqual(Object obj) {
        return obj instanceof Index;
    }

    public Index copy(int i) {
        return new Index(i);
    }

    public int copy$default$1() {
        return m64n();
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0035, code lost:
        if ((m64n() == r0.m64n() && r0.canEqual(r3)) != false) goto L14;
     */
    @Override // scala.Equals
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 0
            r5 = r0
            r0 = r3
            r1 = r4
            if (r0 == r1) goto L38
            r0 = r5
            r6 = r0
            r0 = r4
            boolean r0 = r0 instanceof scala.collection.script.Index
            if (r0 == 0) goto L3a
            r0 = r4
            scala.collection.script.Index r0 = (scala.collection.script.Index) r0
            r4 = r0
            r0 = r3
            int r0 = r0.m64n()
            r1 = r4
            int r1 = r1.m64n()
            if (r0 != r1) goto L2e
            r0 = r4
            r1 = r3
            boolean r0 = r0.canEqual(r1)
            if (r0 == 0) goto L2e
            r0 = 1
            r7 = r0
            goto L31
        L2e:
            r0 = 0
            r7 = r0
        L31:
            r0 = r5
            r6 = r0
            r0 = r7
            if (r0 == 0) goto L3a
        L38:
            r0 = 1
            r6 = r0
        L3a:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.collection.script.Index.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        return Statics.finalizeHash(Statics.mix(-889275714, m64n()), 1);
    }

    /* renamed from: n */
    public int m64n() {
        return this.f1613n;
    }

    @Override // scala.Product
    public int productArity() {
        return 1;
    }

    @Override // scala.Product
    public Object productElement(int i) {
        if (i == 0) {
            return BoxesRunTime.boxToInteger(m64n());
        }
        throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
    }

    @Override // scala.Product
    public Iterator<Object> productIterator() {
        return ScalaRunTime$.MODULE$.typedProductIterator(this);
    }

    @Override // scala.Product
    public String productPrefix() {
        return "Index";
    }

    public String toString() {
        return ScalaRunTime$.MODULE$._toString(this);
    }
}
