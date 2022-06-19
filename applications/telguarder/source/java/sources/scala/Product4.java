package scala;

import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u0001\u0015<Q!\u0001\u0002\t\u0002\u0015\t\u0001\u0002\u0015:pIV\u001cG\u000f\u000e\u0006\u0002\u0007\u0005)1oY1mC\u000e\u0001\u0001C\u0001\u0004\b\u001b\u0005\u0011a!\u0002\u0005\u0003\u0011\u0003I!\u0001\u0003)s_\u0012,8\r\u001e\u001b\u0014\u0005\u001dQ\u0001C\u0001\u0004\f\u0013\ta!A\u0001\u0004B]f\u0014VM\u001a\u0005\u0006\u001d\u001d!\taD\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003\u0015AQ!E\u0004\u0005\u0002I\tq!\u001e8baBd\u00170F\u0003\u00149z\u0003'\r\u0006\u0002\u0015GB\u0019a!F\f\n\u0005Y\u0011!AB(qi&|g\u000e\u0005\u0004\u00071mkv,\u0019\u0004\b\u0011\t\u0001\n1!\u0001\u001a+\u0015Q2)T*Z'\rA2D\b\t\u0003\rqI!!\b\u0002\u0003\u0007\u0005s\u0017\u0010\u0005\u0002\u0007?%\u0011\u0001E\u0001\u0002\b!J|G-^2u\u0011\u0015\u0011\u0003\u0004\"\u0001$\u0003\u0019!\u0013N\\5uIQ\tA\u0005\u0005\u0002\u0007K%\u0011aE\u0001\u0002\u0005+:LG\u000fC\u0003)1\u0011\u0005\u0013&\u0001\u0007qe>$Wo\u0019;Be&$\u00180F\u0001+!\t11&\u0003\u0002-\u0005\t\u0019\u0011J\u001c;\t\u000b9BB\u0011I\u0018\u0002\u001dA\u0014x\u000eZ;di\u0016cW-\\3oiR\u00111\u0004\r\u0005\u0006c5\u0002\rAK\u0001\u0002]\"\u001aQfM\u001f\u0011\u0007\u0019!d'\u0003\u00026\u0005\t1A\u000f\u001b:poN\u0004\"a\u000e\u001e\u000f\u0005\u0019A\u0014BA\u001d\u0003\u0003\u001d\u0001\u0018mY6bO\u0016L!a\u000f\u001f\u00033%sG-\u001a=PkR|eMQ8v]\u0012\u001cX\t_2faRLwN\u001c\u0006\u0003s\t\u0019\u0013A\u000e\u0005\u0006\u007fa1\t\u0001Q\u0001\u0003?F*\u0012!\u0011\t\u0003\u0005\u000ec\u0001\u0001\u0002\u0004E1\u0011\u0015\r!\u0012\u0002\u0003)F\n\"AR\u000e\u0011\u0005\u00199\u0015B\u0001%\u0003\u0005\u001dqu\u000e\u001e5j]\u001eDQA\u0013\r\u0007\u0002-\u000b!a\u0018\u001a\u0016\u00031\u0003\"AQ'\u0005\r9CBQ1\u0001F\u0005\t!&\u0007C\u0003Q1\u0019\u0005\u0011+\u0001\u0002`gU\t!\u000b\u0005\u0002C'\u00121A\u000b\u0007CC\u0002\u0015\u0013!\u0001V\u001a\t\u000bYCb\u0011A,\u0002\u0005}#T#\u0001-\u0011\u0005\tKFA\u0002.\u0019\t\u000b\u0007QI\u0001\u0002UiA\u0011!\t\u0018\u0003\u0006\tB\u0011\r!\u0012\t\u0003\u0005z#QA\u0014\tC\u0002\u0015\u0003\"A\u00111\u0005\u000bQ\u0003\"\u0019A#\u0011\u0005\t\u0013G!\u0002.\u0011\u0005\u0004)\u0005\"\u00023\u0011\u0001\u00049\u0012!\u0001=")
/* loaded from: classes3-dex2jar.jar:scala/Product4.class */
public interface Product4<T1, T2, T3, T4> extends Product {

    /* renamed from: scala.Product4$class */
    /* loaded from: classes3-dex2jar.jar:scala/Product4$class.class */
    public abstract class Cclass {
        public static void $init$(Product4 product4) {
        }

        public static int productArity(Product4 product4) {
            return 4;
        }

        public static Object productElement(Product4 product4, int i) throws IndexOutOfBoundsException {
            Object obj;
            if (i == 0) {
                obj = product4.mo237_1();
            } else if (i == 1) {
                obj = product4.mo236_2();
            } else if (i == 2) {
                obj = product4.mo235_3();
            } else if (i != 3) {
                throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
            } else {
                obj = product4.mo234_4();
            }
            return obj;
        }
    }

    /* renamed from: _1 */
    T1 mo237_1();

    /* renamed from: _2 */
    T2 mo236_2();

    /* renamed from: _3 */
    T3 mo235_3();

    /* renamed from: _4 */
    T4 mo234_4();

    @Override // scala.Product
    int productArity();

    @Override // scala.Product
    Object productElement(int i) throws IndexOutOfBoundsException;
}
