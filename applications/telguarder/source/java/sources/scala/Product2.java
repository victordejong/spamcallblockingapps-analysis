package scala;

import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u0001%<Q!\u0001\u0002\t\u0002\u0015\t\u0001\u0002\u0015:pIV\u001cGO\r\u0006\u0002\u0007\u0005)1oY1mC\u000e\u0001\u0001C\u0001\u0004\b\u001b\u0005\u0011a!\u0002\u0005\u0003\u0011\u0003I!\u0001\u0003)s_\u0012,8\r\u001e\u001a\u0014\u0005\u001dQ\u0001C\u0001\u0004\f\u0013\ta!A\u0001\u0004B]f\u0014VM\u001a\u0005\u0006\u001d\u001d!\taD\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003\u0015AQ!E\u0004\u0005\u0002I\tq!\u001e8baBd\u00170F\u0002\u0014I\u001a$\"\u0001F4\u0011\u0007\u0019)r#\u0003\u0002\u0017\u0005\t1q\n\u001d;j_:\u0004BA\u0002\rdK\u001a9\u0001B\u0001I\u0001\u0004\u0003IRc\u0001\u000eD;N\u0019\u0001d\u0007\u0010\u0011\u0005\u0019a\u0012BA\u000f\u0003\u0005\r\te.\u001f\t\u0003\r}I!\u0001\t\u0002\u0003\u000fA\u0013x\u000eZ;di\")!\u0005\u0007C\u0001G\u00051A%\u001b8ji\u0012\"\u0012\u0001\n\t\u0003\r\u0015J!A\n\u0002\u0003\tUs\u0017\u000e\u001e\u0005\u0006Qa!\t%K\u0001\raJ|G-^2u\u0003JLG/_\u000b\u0002UA\u0011aaK\u0005\u0003Y\t\u00111!\u00138u\u0011\u0015q\u0003\u0004\"\u00110\u00039\u0001(o\u001c3vGR,E.Z7f]R$\"a\u0007\u0019\t\u000bEj\u0003\u0019\u0001\u0016\u0002\u00039D3!L\u001a>!\r1AGN\u0005\u0003k\t\u0011a\u0001\u001e5s_^\u001c\bCA\u001c;\u001d\t1\u0001(\u0003\u0002:\u0005\u00059\u0001/Y2lC\u001e,\u0017BA\u001e=\u0005eIe\u000eZ3y\u001fV$xJ\u001a\"pk:$7/\u0012=dKB$\u0018n\u001c8\u000b\u0005e\u00121%\u0001\u001c\t\u000b}Bb\u0011\u0001!\u0002\u0005}\u000bT#A!\u0011\u0005\t\u001bE\u0002\u0001\u0003\n\tb\u0001\u000b\u0011!CC\u0002\u0015\u0013!\u0001V\u0019\u0012\u0005\u0019[\u0002C\u0001\u0004H\u0013\tA%AA\u0004O_RD\u0017N\\4)\u000b\rSU*U+\u0011\u0005\u0019Y\u0015B\u0001'\u0003\u0005-\u0019\b/Z2jC2L'0\u001a32\t\u0011ru\n\u0015\b\u0003\r=K!\u0001\u0015\u0002\u0002\u0007%sG/\r\u0003%%N#fB\u0001\u0004T\u0013\t!&!\u0001\u0003M_:<\u0017\u0007\u0002\u0013W/bs!AB,\n\u0005a\u0013\u0011A\u0002#pk\ndW\rC\u0003[1\u0019\u00051,\u0001\u0002`eU\tA\f\u0005\u0002C;\u0012Ia\f\u0007Q\u0001\u0002\u0013\u0015\r!\u0012\u0002\u0003)JBS!\u0018&aC\n\fD\u0001\n(P!F\"AEU*Uc\u0011!ck\u0016-\u0011\u0005\t#G!\u0002#\u0011\u0005\u0004)\u0005C\u0001\"g\t\u0015q\u0006C1\u0001F\u0011\u0015A\u0007\u00031\u0001\u0018\u0003\u0005A\b")
/* loaded from: classes3-dex2jar.jar:scala/Product2.class */
public interface Product2<T1, T2> extends Product {

    /* renamed from: scala.Product2$class */
    /* loaded from: classes3-dex2jar.jar:scala/Product2$class.class */
    public abstract class Cclass {
        public static void $init$(Product2 product2) {
        }

        public static int productArity(Product2 product2) {
            return 2;
        }

        public static Object productElement(Product2 product2, int i) throws IndexOutOfBoundsException {
            Object obj;
            if (i == 0) {
                obj = product2.mo269_1();
            } else if (i != 1) {
                throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
            } else {
                obj = product2.mo268_2();
            }
            return obj;
        }
    }

    /* renamed from: _1 */
    T1 mo269_1();

    double _1$mcD$sp();

    int _1$mcI$sp();

    long _1$mcJ$sp();

    /* renamed from: _2 */
    T2 mo268_2();

    double _2$mcD$sp();

    int _2$mcI$sp();

    long _2$mcJ$sp();

    @Override // scala.Product
    int productArity();

    @Override // scala.Product
    Object productElement(int i) throws IndexOutOfBoundsException;
}
