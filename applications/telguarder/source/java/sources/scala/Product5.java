package scala;

import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u00015<Q!\u0001\u0002\t\u0002\u0015\t\u0001\u0002\u0015:pIV\u001cG/\u000e\u0006\u0002\u0007\u0005)1oY1mC\u000e\u0001\u0001C\u0001\u0004\b\u001b\u0005\u0011a!\u0002\u0005\u0003\u0011\u0003I!\u0001\u0003)s_\u0012,8\r^\u001b\u0014\u0005\u001dQ\u0001C\u0001\u0004\f\u0013\ta!A\u0001\u0004B]f\u0014VM\u001a\u0005\u0006\u001d\u001d!\taD\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003\u0015AQ!E\u0004\u0005\u0002I\tq!\u001e8baBd\u00170\u0006\u0004\u0014E\u00124\u0007N\u001b\u000b\u0003)-\u00042AB\u000b\u0018\u0013\t1\"A\u0001\u0004PaRLwN\u001c\t\b\ra\t7-Z4j\r\u001dA!\u0001%A\u0002\u0002e)bAG\"N'f{6c\u0001\r\u001c=A\u0011a\u0001H\u0005\u0003;\t\u00111!\u00118z!\t1q$\u0003\u0002!\u0005\t9\u0001K]8ek\u000e$\b\"\u0002\u0012\u0019\t\u0003\u0019\u0013A\u0002\u0013j]&$H\u0005F\u0001%!\t1Q%\u0003\u0002'\u0005\t!QK\\5u\u0011\u0015A\u0003\u0004\"\u0011*\u00031\u0001(o\u001c3vGR\f%/\u001b;z+\u0005Q\u0003C\u0001\u0004,\u0013\ta#AA\u0002J]RDQA\f\r\u0005B=\na\u0002\u001d:pIV\u001cG/\u00127f[\u0016tG\u000f\u0006\u0002\u001ca!)\u0011'\fa\u0001U\u0005\ta\u000eK\u0002.gu\u00022A\u0002\u001b7\u0013\t)$A\u0001\u0004uQJ|wo\u001d\t\u0003oir!A\u0002\u001d\n\u0005e\u0012\u0011a\u00029bG.\fw-Z\u0005\u0003wq\u0012\u0011$\u00138eKb|U\u000f^(g\u0005>,h\u000eZ:Fq\u000e,\u0007\u000f^5p]*\u0011\u0011HA\u0012\u0002m!)q\b\u0007D\u0001\u0001\u0006\u0011q,M\u000b\u0002\u0003B\u0011!i\u0011\u0007\u0001\t\u0019!\u0005\u0004\"b\u0001\u000b\n\u0011A+M\t\u0003\rn\u0001\"AB$\n\u0005!\u0013!a\u0002(pi\"Lgn\u001a\u0005\u0006\u0015b1\taS\u0001\u0003?J*\u0012\u0001\u0014\t\u0003\u00056#aA\u0014\r\u0005\u0006\u0004)%A\u0001+3\u0011\u0015\u0001\u0006D\"\u0001R\u0003\ty6'F\u0001S!\t\u00115\u000b\u0002\u0004U1\u0011\u0015\r!\u0012\u0002\u0003)NBQA\u0016\r\u0007\u0002]\u000b!a\u0018\u001b\u0016\u0003a\u0003\"AQ-\u0005\riCBQ1\u0001F\u0005\t!F\u0007C\u0003]1\u0019\u0005Q,\u0001\u0002`kU\ta\f\u0005\u0002C?\u00121\u0001\r\u0007CC\u0002\u0015\u0013!\u0001V\u001b\u0011\u0005\t\u0013G!\u0002#\u0011\u0005\u0004)\u0005C\u0001\"e\t\u0015q\u0005C1\u0001F!\t\u0011e\rB\u0003U!\t\u0007Q\t\u0005\u0002CQ\u0012)!\f\u0005b\u0001\u000bB\u0011!I\u001b\u0003\u0006AB\u0011\r!\u0012\u0005\u0006YB\u0001\raF\u0001\u0002q\u0002")
/* loaded from: classes3-dex2jar.jar:scala/Product5.class */
public interface Product5<T1, T2, T3, T4, T5> extends Product {

    /* renamed from: scala.Product5$class */
    /* loaded from: classes3-dex2jar.jar:scala/Product5$class.class */
    public abstract class Cclass {
        public static void $init$(Product5 product5) {
        }

        public static int productArity(Product5 product5) {
            return 5;
        }

        public static Object productElement(Product5 product5, int i) throws IndexOutOfBoundsException {
            Object obj;
            if (i == 0) {
                obj = product5.mo233_1();
            } else if (i == 1) {
                obj = product5.mo232_2();
            } else if (i == 2) {
                obj = product5.mo231_3();
            } else if (i == 3) {
                obj = product5.mo230_4();
            } else if (i != 4) {
                throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
            } else {
                obj = product5.mo229_5();
            }
            return obj;
        }
    }

    /* renamed from: _1 */
    T1 mo233_1();

    /* renamed from: _2 */
    T2 mo232_2();

    /* renamed from: _3 */
    T3 mo231_3();

    /* renamed from: _4 */
    T4 mo230_4();

    /* renamed from: _5 */
    T5 mo229_5();

    @Override // scala.Product
    int productArity();

    @Override // scala.Product
    Object productElement(int i) throws IndexOutOfBoundsException;
}
