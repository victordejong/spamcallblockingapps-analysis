package scala;

import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u0001u;Q!\u0001\u0002\t\u0002\u0015\t\u0001\u0002\u0015:pIV\u001cGo\r\u0006\u0002\u0007\u0005)1oY1mC\u000e\u0001\u0001C\u0001\u0004\b\u001b\u0005\u0011a!\u0002\u0005\u0003\u0011\u0003I!\u0001\u0003)s_\u0012,8\r^\u001a\u0014\u0005\u001dQ\u0001C\u0001\u0004\f\u0013\ta!A\u0001\u0004B]f\u0014VM\u001a\u0005\u0006\u001d\u001d!\taD\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003\u0015AQ!E\u0004\u0005\u0002I\tq!\u001e8baBd\u00170\u0006\u0003\u0014-bSFC\u0001\u000b\\!\r1QcF\u0005\u0003-\t\u0011aa\u00149uS>t\u0007#\u0002\u0004\u0019+^Kfa\u0002\u0005\u0003!\u0003\r\t!G\u000b\u00055\rk5kE\u0002\u00197y\u0001\"A\u0002\u000f\n\u0005u\u0011!aA!osB\u0011aaH\u0005\u0003A\t\u0011q\u0001\u0015:pIV\u001cG\u000fC\u0003#1\u0011\u00051%\u0001\u0004%S:LG\u000f\n\u000b\u0002IA\u0011a!J\u0005\u0003M\t\u0011A!\u00168ji\")\u0001\u0006\u0007C!S\u0005a\u0001O]8ek\u000e$\u0018I]5usV\t!\u0006\u0005\u0002\u0007W%\u0011AF\u0001\u0002\u0004\u0013:$\b\"\u0002\u0018\u0019\t\u0003z\u0013A\u00049s_\u0012,8\r^#mK6,g\u000e\u001e\u000b\u00037ABQ!M\u0017A\u0002)\n\u0011A\u001c\u0015\u0004[Mj\u0004c\u0001\u00045m%\u0011QG\u0001\u0002\u0007i\"\u0014xn^:\u0011\u0005]RdB\u0001\u00049\u0013\tI$!A\u0004qC\u000e\\\u0017mZ3\n\u0005mb$!G%oI\u0016Dx*\u001e;PM\n{WO\u001c3t\u000bb\u001cW\r\u001d;j_:T!!\u000f\u0002$\u0003YBQa\u0010\r\u0007\u0002\u0001\u000b!aX\u0019\u0016\u0003\u0005\u0003\"AQ\"\r\u0001\u00111A\t\u0007CC\u0002\u0015\u0013!\u0001V\u0019\u0012\u0005\u0019[\u0002C\u0001\u0004H\u0013\tA%AA\u0004O_RD\u0017N\\4\t\u000b)Cb\u0011A&\u0002\u0005}\u0013T#\u0001'\u0011\u0005\tkEA\u0002(\u0019\t\u000b\u0007QI\u0001\u0002Ue!)\u0001\u000b\u0007D\u0001#\u0006\u0011qlM\u000b\u0002%B\u0011!i\u0015\u0003\u0007)b!)\u0019A#\u0003\u0005Q\u001b\u0004C\u0001\"W\t\u0015!\u0005C1\u0001F!\t\u0011\u0005\fB\u0003O!\t\u0007Q\t\u0005\u0002C5\u0012)A\u000b\u0005b\u0001\u000b\")A\f\u0005a\u0001/\u0005\t\u0001\u0010")
/* loaded from: classes3-dex2jar.jar:scala/Product3.class */
public interface Product3<T1, T2, T3> extends Product {

    /* renamed from: scala.Product3$class */
    /* loaded from: classes3-dex2jar.jar:scala/Product3$class.class */
    public abstract class Cclass {
        public static void $init$(Product3 product3) {
        }

        public static int productArity(Product3 product3) {
            return 3;
        }

        public static Object productElement(Product3 product3, int i) throws IndexOutOfBoundsException {
            Object obj;
            if (i == 0) {
                obj = product3.mo240_1();
            } else if (i == 1) {
                obj = product3.mo239_2();
            } else if (i != 2) {
                throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
            } else {
                obj = product3.mo238_3();
            }
            return obj;
        }
    }

    /* renamed from: _1 */
    T1 mo240_1();

    /* renamed from: _2 */
    T2 mo239_2();

    /* renamed from: _3 */
    T3 mo238_3();

    @Override // scala.Product
    int productArity();

    @Override // scala.Product
    Object productElement(int i) throws IndexOutOfBoundsException;
}
